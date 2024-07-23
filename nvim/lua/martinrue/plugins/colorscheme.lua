return {
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
	end,
}
