vim.g.mapleader = " "

-- Insert UUID
vim.keymap.set("i", "<c-u>", "<c-r>=trim(system('uuidgen | tr A-Z a-z'))<cr>", { desc = "Insert UUID at cursor" })

-- Copy current file path
vim.api.nvim_set_keymap(
	"n",
	"<leader>cp",
	[[:lua vim.fn.setreg('+', vim.fn.expand('%:p'))<CR>]],
	{ noremap = true, silent = true }
)

-- Search
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Splits
vim.keymap.set("n", "<leader>sv", "<c-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<c-w>s", { desc = "Split window horizontally" })

-- Move lines
vim.keymap.set("n", "<a-down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<a-up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<a-down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<a-up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<a-down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<a-up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Multi line scrolling
vim.keymap.set("n", "<s-up>", "2k", { desc = "" })
vim.keymap.set("n", "<s-down>", "2j", { desc = "" })
vim.keymap.set("n", "<s-c-up>", "5k", { desc = "" })
vim.keymap.set("n", "<s-c-down>", "5j", { desc = "" })

-- Save file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
