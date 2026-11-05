return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	keys = {
		{ "<leader>hb", "<cmd>Gitsigns blame_line full=true<cr>", desc = "Blame line" },
		{ "<leader>hB", "<cmd>Gitsigns blame<cr>", desc = "Blame file" },
	},
}
