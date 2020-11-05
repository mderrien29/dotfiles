"" Vim-Session
"" random
Plug 'preservim/nerdtree'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'sgur/vim-editorconfig'
Plug 'chrisbra/colorizer'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rickhowe/diffchar.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'kshenoy/vim-signature'
Plug 'triglav/vim-visual-increment'

" visual 
Plug 'Rigellute/shades-of-purple.vim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'

"" LANGUAGE SUPPORT

" JS etc
Plug 'HerringtonDarkholme/yats.vim'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" doc etc
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" OPS
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'hashivim/vim-terraform'
