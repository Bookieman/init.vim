return {
  "junegunn/vim-easy-align",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("v", "ga", "<Plug>(EasyAlign)")
  end,
}
