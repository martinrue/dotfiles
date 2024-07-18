return {
	"folke/trouble.nvim",
	opts = {
		focus = true,
	},
	cmd = "Trouble",
	keys = {
		{ "<leader>xx", "<CMD>Trouble diagnostics toggle<CR>", desc = "Show diagnostics" },
	},
}
