vim.g.mapleader = ","

vim.cmd.set('undofile')
vim.cmd.set('undodir=$HOME/.vim/undo')

vim.cmd.set('autoread')
vim.cmd.set('cursorline')
vim.cmd.set('mouse=a')
vim.cmd.set('noshowmode')
vim.cmd.set('noshowcmd')
vim.cmd.set('shortmess+=F')
vim.cmd.set('nrformats=hex')
vim.cmd.set('re=0') -- disable regex
vim.cmd.set('updatetime=300')
vim.cmd.set('encoding=utf-8')

-- hybrid line number
vim.wo.relativenumber = true
vim.wo.number = true

-- tabs
vim.cmd.set('expandtab')
vim.cmd.set('tabstop=2')
vim.cmd.set('shiftwidth=2')
vim.cmd.filetype('plugin indent on')

-- maintain visual mode after shifting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
-- move visual blocks
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- center on search
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- copy and paste
vim.keymap.set('x', 'p', '"_dP')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('x', '<leader>y', '"+y')
vim.keymap.set('x', '<leader>p', '"+p')

-- remove highlight
vim.keymap.set('', '<leader><space>', ':noh<cr>')

-- alias wq
vim.cmd([[
  cnoreabbrev W! w!
  cnoreabbrev W1 w!
  cnoreabbrev w1 w!
  cnoreabbrev Q! q!
  cnoreabbrev Q1 q!
  cnoreabbrev q1 q!
  cnoreabbrev Qa! qa!
  cnoreabbrev Qall! qall!
  cnoreabbrev Wa wa
  cnoreabbrev Wq wq
  cnoreabbrev wQ wq
  cnoreabbrev WQ wq
  cnoreabbrev wq1 wq!
  cnoreabbrev Wq1 wq!
  cnoreabbrev wQ1 wq!
  cnoreabbrev WQ1 wq!
  cnoreabbrev W w
  cnoreabbrev Q q
  cnoreabbrev Qa qa
  cnoreabbrev Qall qall
]])
