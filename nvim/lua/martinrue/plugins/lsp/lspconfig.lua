return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable({ "ts_ls", "html", "cssls", "gopls", "eslint" })
		end,
	},
}
