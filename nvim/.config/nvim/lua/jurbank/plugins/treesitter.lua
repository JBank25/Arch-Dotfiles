-- github and docs here: https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- build config item tells lazy that when we update this plugin you should call ":TSUpdate"
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {"c","cpp", "lua", "vim", "vimdoc", "cmake"},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },  
			})
		end
	}
}
