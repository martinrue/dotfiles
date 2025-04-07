local current = "nordic"

return {
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local palette = require("nordic.colors")

			require("nordic").setup({
				italic_comments = false,
				transparent_bg = true,
				telescope = { style = "classic" },
				override = {
					CursorLine = {
						bg = "#191919",
						bold = false,
					},
					Visual = {
						bg = "#151515",
					},
				},
			})

			vim.cmd("colorscheme nordic")
			vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#1e2022" })
			vim.cmd("highlight NvimTreeWinSeparator guifg=#222222")
			vim.cmd("highlight NvimTreeWinSeparator guifg=#222222")

			vim.api.nvim_create_user_command("ToggleTheme", function()
				if current == "nordic" then
					vim.cmd.colorscheme("solarized")
					vim.cmd("highlight NvimTreeWinSeparator guifg=#F4ECD5")
					vim.cmd("highlight NvimTreeWinSeparator guibg=#F4ECD5")
					require("lualine").setup({ options = { theme = "solarized" } })
					current = "solarized"
				else
					vim.cmd.colorscheme("nordic")
					vim.cmd("highlight NvimTreeWinSeparator guifg=#222222")
					vim.cmd("highlight NvimTreeWinSeparator guifg=#222222")
					require("lualine").setup({ options = { theme = "onedark" } })
					current = "nordic"
				end
			end, {})
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
