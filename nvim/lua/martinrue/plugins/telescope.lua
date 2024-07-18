return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				borderchars = { "", "", "", "", "", "", "", "" },
				path_display = { "smart" },
				mappings = {
					i = {
						["C-q"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })
		vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Fuzzy find files in cwd" })
	end,
}
