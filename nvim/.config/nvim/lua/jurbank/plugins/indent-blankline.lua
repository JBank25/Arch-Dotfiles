-- https://github.com/lukas-reineke/indent-blankline.nvim
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	config = function()
		require("ibl").setup()
	end,
	opts = {},
}
