-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed


-- Autocomand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- import packer, protective call, safly handle case when packer is not installed, I guess...
local status, packer = pcall(require, "packer")
if not status then
	return
end



return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- lua functions that many plugins use
  use 'nvim-lua/plenary.nvim'

  use 'bluz71/vim-nightfly-guicolors'

  -- tmux & split window navigator (ctrl + h,j,k,l)
  use 'christoomey/vim-tmux-navigator'

  -- maximizes and restores current window
  use 'szw/vim-maximizer'

  -- f.e. ysw" puts word in "", ds" delets "", cs"' changes " to '
  use 'tpope/vim-surround'

  -- replace word with copied word (yw) by grw
  -- use 'vim-scripts/ReplaceWithRegister'

  -- commenting with gc, f.e. gc3j commnets 4 lines
  use 'numToStr/Comment.nvim'


  -- file explorer
  -- use 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons'
  -- requires Nerd Fonts in your terminal emulator (f.e. HackNerdFont-Regular)
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
  }


  -- statusline
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }


  -- fuzzy finding
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- sudo apt-get install ripgrep
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- suggested dependency


  -- autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer' -- from buffer
  use 'hrsh7th/cmp-path' -- from file path, I guess...


  -- snippets
  use 'L3MON4D3/LuaSnip' -- snippets engine
  use 'saadparwaiz1/cmp_luasnip' -- show snippets in autocompletion
  use 'rafamadriz/friendly-snippets' -- collection of a lot of snippets from different languages


  -- managing & installing lsp servers (& formatters & linters)
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- configuring lsp servers
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp' -- allow to configure lsp servers, so they will appear in autocompletion
  use ({ 'glepnir/lspsaga.nvim', branch = 'main' }) -- enchanced UI
  -- use 'jose-elias-alvares/typescript.nvim' -- better typescript...
  use 'onsails/lspkind.nvim' -- vscode-like icons for autocompletion window


  -- formatting & linting
  -- use 'jose-elias-alvares/null-ls.nvim'
  -- use 'jayp0521/mason-null-ls.nvim' -- mason for formaters and linters


  -- treesitter
  use ( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })


  -- auto closing
  use 'windwp/nvim-autopairs'
  -- use 'windwp/nvim-ts-autotag'


  -- git signs plugin
  -- use 'lewis6991/gitsigns.nvim'


  -- undotree
  use 'mbbill/undotree'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
