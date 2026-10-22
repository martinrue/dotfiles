return {
	"fabridamicelli/cronex.nvim",
	opts = {
		file_patterns = { "*.yaml", "*.yml", "*.tf", "*.cfg", "*.config", "*.conf", "*.ts", "*.tsx" },
	},
	config = function(_, opts)
		require("cronex").setup(opts)
		local ns = vim.api.nvim_create_namespace("plugin-cronex.nvim")
		vim.diagnostic.config({ virtual_text = true, signs = false }, ns)
	end,
}
