return {
  "easymotion/vim-easymotion",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<leader>s", "<Plug>(easymotion-s)")
  end
}
