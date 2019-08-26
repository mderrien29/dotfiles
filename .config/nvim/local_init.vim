" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

let g:loaded_matchparen=1
set cursorline

""tabs
set sts=2
set ts=2
set sw=2

"" Color
Plug 'Rigellute/shades-of-purple.vim'
set termguicolors
syntax enable
colorscheme shades_of_purple
let g:shades_of_purple_lightline = 1
let g:lightline = { 'colorscheme': 'shades_of_purple' }

set omnifunc=syntaxcomplete#Complete

"" Colorizer highlighting 
let g:colorizer_auto_filetype='css,html,vue,ts,js,tsx,jsx,scss'

"" better comments
:hi! def link ErrorBetterComments Error
:hi! def link QuestionBetterComments Special
:hi! def link TodoBetterComments Todo
:hi! def link HighlightBetterComments Special

"" auto indent
set autoindent

"" folds
set foldlevel=99 "" no folds on open
inoremap <Leader>c <C-O>za
nnoremap <Leader>c za
onoremap <Leader>c <C-C>za
vnoremap <Leader>c zf

