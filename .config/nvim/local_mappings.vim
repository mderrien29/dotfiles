" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" really, just don't
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <C-t> :tabnew<CR>
"nnoremap <C-w> :tabclose<CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Clap (fuzzy finder)
nnoremap <silent> <leader>e :Clap gfiles<CR>
nnoremap <silent> <leader>f :Clap grep<CR>
nnoremap <silent> <C-p> :Clap gfiles<CR>
nnoremap <silent> <C-o> :Clap grep<CR>

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

if has('unnamedplus')
" Copy/Paste/Cut
 set clipboard=unnamed,unnamedplus
endif

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

function! s:ToggleBlame()
  if &l:filetype ==# 'fugitiveblame'
    close
  else
    Gblame
  endif
endfunction

nnoremap <silent> <F1> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :Clap files<CR>
nnoremap <silent> <F3> :Clap grep<CR>
nnoremap <silent> <F4> :call <SID>ToggleBlame()<CR>

" pasting in visual mode will replace selection
xnoremap p "_dP

" indent file and keep cursor position
nnoremap <silent> <leader>i mzgg=G`z<CR>

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>

nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> ge <Plug>(coc-definition)
nmap <silent> gs :bel vsp<CR><Plug>(coc-definition)
