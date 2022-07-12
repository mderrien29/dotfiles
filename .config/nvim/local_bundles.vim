"" Vim-Session
"" random
Plug 'preservim/nerdtree'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'sgur/vim-editorconfig'
Plug 'chrisbra/colorizer'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kshenoy/vim-signature'

" lightline
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" visual 
Plug 'NLKNguyen/papercolor-theme'
Plug 'ntk148v/komau.vim'

"" LANGUAGE SUPPORT
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
\'coc-tsserver',
\'coc-eslint',
\'coc-json',
\'coc-html',
\'coc-css'
\]

Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'hashivim/vim-terraform'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
