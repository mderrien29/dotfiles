let g:loaded_matchparen=1
set cursorline

""tabs
set sts=2
set ts=2
set sw=2

"" Color
set termguicolors
syntax enable
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }

set omnifunc=syntaxcomplete#Complete

"" Colorizer highlighting 
let g:colorizer_auto_filetype='css,html,vue,ts,js,tsx,jsx,scss'

"" auto indent
set autoindent

"" folds
set foldlevel=99 "" no folds on open
inoremap <Leader>c <C-O>za
nnoremap <Leader>c za
onoremap <Leader>c <C-C>za
vnoremap <Leader>c zf

"" switch cursor from block in insert mode (tmux fix)
if exists('$TMUX')
  let &t_SI = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[0 q"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

