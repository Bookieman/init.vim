return {
  "miversen33/sunglasses.nvim",
  event = "UIEnter",
  config = function()
    require("sunglasses").setup({
      filter_type = "SHADE",
      filter_percent = .20
    })
  end
}
