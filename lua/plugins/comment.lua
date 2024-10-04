return {
	"numToStr/Comment.nvim",
	event = "VeryLazy",
	config = function()
    require("Comment").setup()
    local api = require('Comment.api')
    vim.keymap.set("n", "<leader>ci", api.toggle.linewise.current)
    vim.keymap.set("v", "<leader>ci", "<Plug>(comment_toggle_linewise_visual)")
  end,
}
