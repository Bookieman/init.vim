return {
  "voldikss/vim-floaterm",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<C-g>", ":FloatermToggle<CR>", {silent=true})
    vim.keymap.set("t", "<C-g>", "<C-\\><C-n>:FloatermToggle<CR>",{silent=true})
    vim.keymap.set("t", "<C-f>", "<C-f> <C-\\><C-N>", {silent=true})
    vim.cmd("let g:floaterm_width=0.8")
    vim.cmd("let g:floaterm_height=0.8")
  end,
}
