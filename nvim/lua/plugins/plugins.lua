-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Autocomplete
  use 'neovim/nvim-lspconfig'
  use {'neoclide/coc.nvim', branch = 'release'}

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {"akinsho/toggleterm.nvim", tag = '*' } 
  -- Status line, font I'm using Caskaydia Nerd Font
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { 'lukas-reineke/indent-blankline.nvim' } 

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  } 

  -- Theme
  -- If you are using Packer
  use 'arcticicestudio/nord-vim'
  use 'hashivim/vim-terraform'
  use 'f-person/git-blame.nvim'
end)
