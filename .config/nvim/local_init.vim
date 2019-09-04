" javascript
let g:javascript_enable_domhtmlcss = 1

" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" ale
:call extend(g:ale_linters, {
    \'python': ['flake8'], })

" Syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1

" typescript
let g:yats_host_keyword = 1

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

