return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable({ "ts_ls", "html", "cssls", "gopls", "eslint" })

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					local opts = { buffer = ev.buf, silent = true }

					opts.desc = "Show line diagnostics"
					vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
				end,
			})
		end,
	},
}
