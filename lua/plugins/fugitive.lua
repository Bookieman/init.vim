return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gdm", ":Gvdiffsplit master<CR>")
  end
}
