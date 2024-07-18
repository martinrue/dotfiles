return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")

		lualine.setup({
			options = {
				theme = "onedark",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
