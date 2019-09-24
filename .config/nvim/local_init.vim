syntax sync minlines=2000
autocmd BufEnter * :syntax sync fromstart

" fzf ?
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

set autoread

" relative line numbers
set nu rnu

"let g:loaded_matchparen=1
set cursorline

""tabs
set sts=2
set ts=2
set sw=2
set expandtab
autocmd FileType make setlocal noexpandtab

"" fold
setlocal foldmethod=syntax
set nofoldenable
set foldlevel=100 "weird behavior with first zc"

"" Color
set termguicolors
syntax enable
let g:dracula_italic = 0
colorscheme dracula
let g:lightline = { 'colorscheme': 'dracula' }

"" Colorizer highlighting
let g:colorizer_auto_filetype='css,html,vue,ts,js,tsx,jsx,scss'

"" auto indent
set autoindent

"" switch cursor from block in insert mode (tmux fix)
if exists('$TMUX')
  let &t_SI = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[0 q"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" completion
" <TAB>: completion.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:coc_global_extensions = [
\'coc-tsserver',
\'coc-json',
\'coc-html',
\'coc-css',
\'coc-vetur'
\]

" fix files on save
let g:ale_fix_on_save = 1

" lint after 1000ms after changes are made both on insert mode and normal mode
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000

