-- MISC UTILITIES

-- Set system clipboard
vim.cmd("set clipboard+=unnamedplus")

-- Update time
vim.cmd("set updatetime=750")

-- Set tab length
vim.cmd("set tabstop=2")
vim.cmd("set expandtab")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Split preferences
vim.cmd("set splitbelow")
vim.cmd("set splitright")

-- Search & case
vim.cmd("set wildignorecase")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set incsearch")

-- Disable legacy keybindings
vim.cmd("set nocp")

-- Cursor following
vim.cmd("set scrolloff=10")

-- Word wrap
vim.cmd("set linebreak")

-- Set number
vim.cmd("set number")

-- Set mouse
vim.cmd("set mouse=a")

-- Cursor line
vim.cmd("set cursorline")

vim.api.nvim_create_augroup("BgHighlight", { clear = true })

vim.api.nvim_create_autocmd("WinEnter", {
  group = "BgHighlight",
  pattern = "*",
  command = "set number",
})

vim.api.nvim_create_autocmd("WinLeave", {
  group = "BgHighlight",
  pattern = "*",
  command = "set nonumber",
})
