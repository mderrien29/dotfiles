if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif
Plug 'Shougo/vimproc.vim', {'do': g:make}

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

Plug 'tpope/vim-sensible'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/grep.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'chrisbra/colorizer'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'bling/vim-bufferline'
Plug 'w0rp/ale'
Plug 'ycm-core/YouCompleteMe'

"" LANGUAGE SUPPORT
Plug 'sheerun/vim-polyglot'

