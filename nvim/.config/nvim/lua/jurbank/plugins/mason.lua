return {
	-- Mason can be used for installing LSP's clangd for example
	-- Using msaon-lspconfig to specify them more concretely however
	{
		"mason-org/mason.nvim",
		opts = {},
		config = function()
			require("mason").setup() 
		end,
	},
	-- Specifying LSP's specifically using this, see the config portion
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = 
		{
			{ 
				"mason-org/mason.nvim", opts = {} 
			},
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
			ensure_installed = {
					"clangd"
				}
			})
		end
	},
	-- How we are enabling a specific LSP
	-- Check which one are instlaled using :checkhealth vim-lsp
	-- Was having some clangd issues.Specifically when using conan See these pages:
	-- https://releases.llvm.org/8.0.0/tools/clang/tools/extra/docs/clangd/Installation.html
	-- https://www.reddit.com/r/neovim/comments/r0ndez/clangd_conan/
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable('clangd')
			-- Looks like if we want specific functinoality we will have to
			-- set things like this
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		end
	}
}
