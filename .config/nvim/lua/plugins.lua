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

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'preservim/nerdtree'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-sensible'
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-commentary'
  use 'sgur/vim-editorconfig'
  use 'christoomey/vim-tmux-navigator'
  use 'kshenoy/vim-signature'
  use 'nvim-lualine/lualine.nvim'

  use 'NLKNguyen/papercolor-theme'
  use 'Rigellute/shades-of-purple.vim'
  use 'xiyaowong/transparent.nvim'

  use { 'iamcco/markdown-preview.nvim', run='cd app && npx yarn install', cmd='MarkdownPreview' }

  use { 'nvim-telescope/telescope.nvim', requires={{'nvim-lua/plenary.nvim'}} }

  use { 'neoclide/coc.nvim', branch='release' }
  use { 'neoclide/coc-tsserver' }
  use { 'neoclide/coc-prettier' }
  use { 'neoclide/coc-eslint' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
