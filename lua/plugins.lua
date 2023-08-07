return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'   
        use 'williamboman/mason-lspconfig.nvim'
        use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
    	use 'hrsh7th/cmp-nvim-lua'
    	use 'hrsh7th/cmp-nvim-lsp-signature-help'
    	use 'hrsh7th/cmp-vsnip'                          
    	use 'hrsh7th/cmp-path'                           
    	use 'hrsh7th/cmp-buffer'      
    	use 'hrsh7th/vim-vsnip'
	use {
  		'nvim-tree/nvim-tree.lua',
		requires = {
		      'nvim-tree/nvim-web-devicons', -- optional, for file icons
	    },
	 }
	use 'mfussenegger/nvim-dap' 
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	use 'Mofiqul/dracula.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	 }
	 use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	 }
	 use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	use "lukas-reineke/indent-blankline.nvim"
	use {
		"folke/todo-comments.nvim",
		requires = { "nvim-lua/plenary.nvim"},
		config = function() require("todo-comments").setup {} end
	}
	use ({
		'nvimdev/lspsaga.nvim',
		after = 'nvim-lspconfig',
		config = function()
			require('lspsaga').setup({})
		end,
	})
	use {
		'folke/trouble.nvim',
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	use 'hoffs/omnisharp-extended-lsp.nvim'
	use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
	use {
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out" 
	}
end)
