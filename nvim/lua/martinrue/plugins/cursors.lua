return {
	"brenton-leighton/multiple-cursors.nvim",
	version = "*",
	opts = {},
	keys = {
		{ "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "x" }, desc = "Add cursor and move down" },
		{ "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "x" }, desc = "Add cursor and move up" },

		{ "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
		{ "<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "i", "x" }, desc = "Add cursor and move down" },

		{
			"<C-LeftMouse>",
			"<Cmd>MultipleCursorsMouseAddDelete<CR>",
			mode = { "n", "i" },
			desc = "Add or remove cursor",
		},

		{ "<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = { "n", "x" }, desc = "Add cursors to cword" },
		{
			"<Leader>A",
			"<Cmd>MultipleCursorsAddMatchesV<CR>",
			mode = { "n", "x" },
			desc = "Add cursors to cword in previous area",
		},

		{
			"<Leader>d",
			"<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
			mode = { "n", "x" },
			desc = "Add cursor and jump to next cword",
		},
		{ "<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = { "n", "x" }, desc = "Jump to next cword" },
	},
}
