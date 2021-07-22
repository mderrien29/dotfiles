"" Vim-Session
"" random
Plug 'preservim/nerdtree'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'sgur/vim-editorconfig'
Plug 'chrisbra/colorizer'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rickhowe/diffchar.vim'
" Plug 'terryma/vim-multiple-cursors'
Plug 'kshenoy/vim-signature'
" Plug 'triglav/vim-visual-increment'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'whiteinge/diffconflicts'

" lightline
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" visual 
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'

"" LANGUAGE SUPPORT
Plug 'leafgarland/typescript-vim'

" doc etc
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" OPS
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'hashivim/vim-terraform'
