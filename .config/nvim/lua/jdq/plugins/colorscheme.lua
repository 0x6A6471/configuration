function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
	vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
end

return {
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			styles = {
	-- 				transparency = true,
	-- 				italic = false,
	-- 			},
	-- 		})
	--
	-- 		ColorMyPencils()
	-- 	end,
	-- },

	-- {
	-- 	"tjdevries/colorbuddy.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		local colorbuddy = require("colorbuddy")
	-- 		local Color = colorbuddy.Color
	-- 		local colors = colorbuddy.colors
	-- 		local Group = colorbuddy.Group
	-- 		-- local groups = colorbuddy.groups
	-- 		local styles = colorbuddy.styles
	--
	-- 		Color.new("qwhite", "#ffffff")
	--
	-- 		Group.new("htmlTag", colors.yellow:light())
	-- 		Group.new("htmlTagName", colors.violet)
	-- 		Group.new("typescriptbraces", colors.qwhite)
	-- 		Group.new("typescriptEndColons", colors.qwhite)
	-- 		Group.new("typescriptCall", colors.qwhite)
	-- 		Group.new("typescriptStatementKeyword", colors.violet)
	-- 		Group.new("WinSeparator", nil, nil)
	--
	-- 		vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
	-- 		vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
	-- 		vim.cmd.colorscheme("gruvbuddy")
	-- 	end,
	-- },

	{
		"ramojus/mellifluous.nvim",
		name = "mellifluous",
		config = function()
			require("mellifluous").setup({})
			vim.cmd("colorscheme mellifluous")
			vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
			vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
		end,
	},
}
