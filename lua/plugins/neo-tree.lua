return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- image support window: See `# Preview Mode` for more information
		{
			"s1n7ax/nvim-window-picker",
			config = function()
				require("window-picker").setup({
          hint = "floating-big-letter",
					filter_rules = {
						include_current_win = false,
						autoselect_one = true,
						-- filter using buffer options
						bo = {
							-- if the file type is one of following, the window will be ignored
							filetype = { "neo-tree", "neo-tree-popup", "notify" },
							-- if the buffer type is one of following, the window will be ignored
							buftype = { "terminal", "quickfix" },
						},
					},
				})
			end,
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>;", ":Neotree toggle=true<CR>", { silent = true })
		vim.keymap.set("n", "<leader>,", ":Neotree focus<CR>", { silent = true })
    require('neo-tree').setup({
      close_if_last_window = false,
      popup_border_style = "rounded",
    })
	end,
	opts = {
		bind_to_cwd = true,
	},
}
