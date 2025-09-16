vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("snacks-lsp-attach", { clear = true }),
	callback = function(event)
		local function map(lhs, rhs, desc, mode, o)
			mode = mode or "n"
			o = o or { buffer = event.buf, desc = desc }
			vim.keymap.set(mode, lhs, rhs, o)
		end

		-- stylua: ignore start
		map("gd", function() Snacks.picker.lsp_definitions() end, "Goto Definition")
		map("gr", function() Snacks.picker.lsp_references() end, "References")
		map("gI", function() Snacks.picker.lsp_implementations() end, "Goto Implementation")
		map("gy", function() Snacks.picker.lsp_type_definitions() end, "Goto Type Definition")
		map("<leader>ss", function() Snacks.picker.lsp_symbols() end, "LSP Symbols")
		map("gD", vim.lsp.buf.declaration, "Goto Declaration")
		map("K", vim.lsp.buf.hover, "Hover")
		map("<leader>ca", vim.lsp.buf.code_action, "Code Action", { "n", "v" })
		map("<leader>r", vim.lsp.buf.rename, "Rename")
		-- stylua: ignore end
	end,
})
