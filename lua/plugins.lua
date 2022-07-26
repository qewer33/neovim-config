return require('packer').startup(function()
    use 'wbthomason/packer.nvim'                -- Package manager

    -- Themes
    use 'navarasu/onedark.nvim'                 -- One Dark theme
    use "ellisonleao/gruvbox.nvim"              -- Gruvbox theme

    -- Appereance
    use 'nvim-treesitter/nvim-treesitter'       -- Treesitter for better syntax hi
    use "lukas-reineke/indent-blankline.nvim"   -- Indent guides
    use {                                       -- Lualine for the statusline
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Editing & Features
    use 'neovim/nvim-lspconfig'                 -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp'                      -- Autocompletion
    use 'hrsh7th/cmp-nvim-lsp'                  -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip'              -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip'                      -- Snippets plugin
    use 'hrsh7th/vim-vsnip'                     -- Snippets plugin (needed for nvim.cmp)
    use 'hrsh8th/vim-vsnip-integ'               -- Snippets plugin integ (needed for nvim.cmp)
    use 'mhartington/formatter.nvim'            -- Autoformatter
	use "windwp/nvim-autopairs"                 -- Bracket auto close
    use 'cappyzawa/trim.nvim'                   -- Trim whitespaces on save
    use 'mfussenegger/nvim-dap'

    -- Interface Features
    use 'nvim-lua/plenary.nvim'
    use 'wfxr/minimap.vim'                      -- Minimap
    use {                                       -- Telescope for file navigation and other stuff
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {                                       -- Tab support
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {                                       -- File tree
      'kyazdani42/nvim-tree.lua',
      requires = { 'kyazdani42/nvim-web-devicons'},
      tag = 'nightly'
    }

    -- Language Specific
    use 'simrat39/rust-tools.nvim'              -- Rust
    use 'rust-lang/rust.vim'
end)
