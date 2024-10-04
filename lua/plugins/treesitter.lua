return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSupdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "python",
        "javascript",
        "yaml",
        "luadoc",
        "vimdoc",
        "vim",
        "markdown"
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
