vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("snacks-lsp-attach", { clear = true }),
	callback = function(event)
		local function map(lhs, rhs, desc, mode, o)
			mode = mode or "n"
			o = o or { buffer = event.buf, desc = desc }
			vim.keymap.set(mode, lhs, rhs, o)
		end

		-- stylua: ignore start
		-- map("<leader>cl", "<cmd>LspInfo<cr>", "LSP Info")
		-- map("gd", function() Snacks.picker.lsp_definitions() end, "Goto Definition")
		-- map("gr", function() Snacks.picker.lsp_references() end, "References")
		-- map("gI", function() Snacks.picker.lsp_implementations() end, "Goto Implementation")
		-- map("gy", function() Snacks.picker.lsp_type_definitions() end, "Goto Type Definition")
		-- map("<leader>ss", function() Snacks.picker.lsp_symbols() end, "LSP Symbols")
		-- map("gD", vim.lsp.buf.declaration, "Goto Declaration")
		-- map("K", vim.lsp.buf.hover, "Hover")
		-- map("gK", vim.lsp.buf.signature_help, "Signature Help")
		-- map("<c-k>", vim.lsp.buf.signature_help, "Signature Help", "i")
		-- map("<leader>ca", vim.lsp.buf.code_action, "Code Action", { "n", "v" })
		-- map("<leader>cc", vim.lsp.codelens.run, "Run Codelens", { "n", "v" })
		-- map("<leader>cC", vim.lsp.codelens.refresh, "Refresh & Display Codelens", "n")
		-- map("<leader>cR", function() Snacks.rename.rename_file() end, "Rename File", "n")
		-- map("<leader>cr", vim.lsp.buf.rename, "Rename")
		-- map("]]", function() Snacks.words.jump(vim.v.count1) end, "Next Reference")
		-- map("[[", function() Snacks.words.jump(-vim.v.count1) end, "Prev Reference")
		-- stylua: ignore end
	end,
})
