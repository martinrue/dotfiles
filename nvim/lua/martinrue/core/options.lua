vim.cmd("let g:netrw_liststyle = 3")

-- Stop inserting comment on enter
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true
opt.cursorline = true

-- Disable backup and swap files
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- Setup tab settings
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

-- Disable highlighting search results
opt.hlsearch = false

-- statusline
opt.laststatus = 3

-- search
opt.ignorecase = true
opt.smartcase = true

-- colours
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true
