return {
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local palette = require("nordic.colors")

			require("nordic").setup({
				italic_comments = false,
				transparent = {
					bg = true,
				},
			})

			vim.cmd.colorscheme("nordic")
		end,
	},
	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1001,
		opts = {},
		config = function(_, opts)
			vim.o.termguicolors = true
			vim.o.background = "light"
			require("solarized").setup(opts)
			vim.cmd.colorscheme("solarized")
		end,
	},
}
