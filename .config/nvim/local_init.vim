syntax sync minlines=2000
autocmd BufEnter * :syntax sync fromstart

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif     

set mouse=a

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

set cursorline

""tabs
set expandtab
set tabstop=2
set shiftwidth=2
filetype plugin indent on

"" fold
setlocal foldmethod=syntax
set nofoldenable
set foldlevel=100 "weird behavior with first zc"

let g:loaded_matchparen=1

augroup jsFolds
    autocmd!
    autocmd FileType javascript,typescript,json syntax region braceFold start="{" end="}" transparent fold
    autocmd FileType javascript,typescript,json syntax region bracketFold start="\[" end="\]" transparent fold
    autocmd FileType javascript,typescript,json syntax sync fromstart
    autocmd FileType javascript,typescript,json set foldmethod=syntax
augroup end

"" Color
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
set termguicolors
syntax enable
set background=light
colorscheme gruvbox
let g:lightline = { 'colorscheme': 'gruvbox' }

"" Colorizer highlighting
let g:colorizer_auto_filetype='css,html,vue,ts,js,tsx,jsx,scss'

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

" quotes in json
let g:indentLine_setConceal = 0

" latex
let g:livepreview_previewer = 'firefox'

" `:Clap dotfiles` to open some dotfiles quickly.
let g:clap_provider_dotfiles = {
      \ 'source': ['~/.config/nvim/local_init.vim', '~/.config/nvim/local_bundles.vim', '~/.config/nvim/local_mappings.vim', '~/.zshrc', '~/.tmux.conf', '~/.config/i3/config'],
      \ 'sink': 'e',
      \ }


"*****************************************************************************
"" Commands
"*****************************************************************************
" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

function! s:ensure_closed() abort
  call clap#floating_win#close()
  silent! autocmd! ClapEnsureAllClosed
endfunction

function! MyClapOnEnter() abort
  augroup ClapEnsureAllClosed
    autocmd!
    autocmd BufEnter,WinEnter,WinLeave * call s:ensure_closed()
  augroup END
endfunction

autocmd User ClapOnEnter call MyClapOnEnter()
