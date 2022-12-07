"" Color
set termguicolors
syntax enable
set background=light
colorscheme shades_of_purple
let g:shades_of_purple_lightline = 1
let g:lightline = {
  \ 'colorscheme': 'shades_of_purple',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'tabline': {
  \   'left': [ ['buffers'] ],
  \   'right': [ ['close'] ]
  \ },
  \ 'component_expand': {
  \   'buffers': 'lightline#bufferline#buffers'
  \ },
  \ 'component_type': {
  \   'buffers': 'tabsel'
  \ },
  \ 'component_function': {
  \   'cocstatus': 'coc#status'
  \ }
\ }
let g:clap_theme = 'onehalflight'

" undo
set undofile
set undodir=$HOME/.vim/undo

autocmd BufEnter * :syntax sync fromstart

set autoread
set cursorline
set mouse=a
set nu rnu " relative line numbers
set cmdheight=1
set laststatus=1
set noshowmode
set noshowcmd
set shortmess+=F
set nrformats=hex

set re=0 " remove old regex engine

set updatetime=300 " default was 4s ?

" tabs
set expandtab
set tabstop=2
set shiftwidth=2
filetype plugin indent on

augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

set foldlevel=100
setlocal foldmethod=syntax
augroup jsFolds
    autocmd!
    autocmd FileType javascript,typescript,json syntax region braceFold start="{" end="}" transparent fold
    autocmd FileType javascript,typescript,json syntax region bracketFold start="\[" end="\]" transparent fold
    autocmd FileType javascript,typescript,json syntax sync fromstart
    autocmd FileType javascript,typescript,json set foldmethod=syntax
augroup end

" quotes in json
let g:indentLine_setConceal = 0

" Coc Config

autocmd CursorHold * silent call CocActionAsync('highlight')

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

set clipboard=unnamedplus
