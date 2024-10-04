return {
  "nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim", -- image support window: See `# Preview Mode` for more information
  },
  event = "VeryLazy",
  config = function()
    vim.keymap.set('n', "<leader>;", ':Neotree toggle=true<CR>', {silent=true})
  end
}
