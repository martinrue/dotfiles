return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }

				opts.desc = "Show line diagnostics"
				vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
			end,
		})

		mason_lspconfig.setup_handlers({
			function(server_name)
				if server_name == "ts_ls" then
					lspconfig.ts_ls.setup({
						single_file_support = false,
						root_dir = lspconfig.util.root_pattern("package.json"),
						capabilities = capabilities,
					})
				elseif server_name == "denols" then
					lspconfig.denols.setup({
						root_dir = lspconfig.util.root_pattern("deno.json"),
						capabilities = capabilities,
					})
				else
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end
			end,
		})
	end,
}
