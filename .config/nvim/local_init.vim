" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

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
let g:lightline.colorscheme = 'palenight'

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

" switch cursor from block in insert mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This enables iterm cursor changes from vim. In .tmux.conf you'll need:
" set-option -g terminal-overrides '*88col*:colors=88,*256col*:colors=256,xterm*:XT:Ms=\E]52;%p1%s;%p2%s\007:Cc=\E]12;%p1%s\007:Cr=\E]112\007:Cs=\E]50;CursorShape=%?%p1%{3}%<%t%{0}%e%p1%{2}%-%;%d\007'
"
" Source: https://github.com/Casecommons/casecommons_workstation/blob/master/templates/default/dot_tmux.conf.erb
"         https://github.com/Casecommons/vim-config/blob/master/init/tmux.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif

