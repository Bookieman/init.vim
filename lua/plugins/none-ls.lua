return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black.with({
          -- These arguments will be run with black when formatting
          extra_args = { "--line-length", "79", "--preview", "--enable-unstable-feature string_processing" },
        }),
        null_ls.builtins.formatting.isort,
      },
    })
    vim.keymap.set("n", "<leader>xf", vim.lsp.buf.format, {})
  end,
}
