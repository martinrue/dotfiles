return {
	{
		"saghen/blink.cmp",
		version = "v1.*",
		event = "InsertEnter",
		opts = {
			keymap = {
				preset = "enter",
				["<tab>"] = { "select_next", "fallback" },
				["<s-tab>"] = { "select_prev", "fallback" },
			},
			signature = { enabled = false },
			completion = {
				list = {
					selection = { preselect = false, auto_insert = true },
				},
			},
			cmdline = { enabled = false },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
}
