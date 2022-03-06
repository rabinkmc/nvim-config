-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

 -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Use specific branch, dependency and run lua file after load
  use { 'nvim-lua/plenary.nvim' } 
  use 'kyazdani42/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim' 

  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  -- use 'tpope/vim-commentary'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'dracula/vim'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- use {'neoclide/coc.nvim', branch = 'release'}
  use 'rbgrouleff/bclose.vim'
  use 'francoiscabrol/ranger.vim'
  use "nvim-lua/popup.nvim"
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
  use 'ryanoasis/vim-devicons'
  use 'preservim/nerdtree'
  use {
  "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  } 
  use {'junegunn/fzf', run= 'fzf#install()'}
-- Lua
  use 'tmhedberg/SimpylFold'
  use 'mattn/emmet-vim'
  use 'rking/ag.vim'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use { 'folke/which-key.nvim' }
  use { 'folke/tokyonight.nvim' }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'fannheyward/telescope-coc.nvim'
  use 'tpope/vim-dispatch'
  use 'vim-test/vim-test'
  --use 'vim-airline/vim-airline'
  use 'Olical/conjure'
  use 'Olical/aniseed'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
-- Lua snip
  --use 'L3MON4D3/LuaSnip'
  --use 'saadparwaiz1/cmp_luasnip'
end)

