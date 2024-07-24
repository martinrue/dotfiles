return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"onsails/lspkind.nvim",
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")

		cmp.setup({
			completion = {
				autocomplete = false,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			mapping = cmp.mapping.preset.insert({
				["<c-up>"] = cmp.mapping.select_prev_item(),
				["<c-down>"] = cmp.mapping.select_next_item(),
				["<c-space>"] = cmp.mapping.complete(),
				["<ESC>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
		})
	end,
}
