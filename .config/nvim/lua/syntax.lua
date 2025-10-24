require('mason').setup()
vim.api.nvim_create_user_command('Prettier', ':CocCommand prettier.forceFormatDocument', {})

vim.api.nvim_create_autocmd(
	{ 'BufEnter' },
	{ pattern='*', command='syntax sync fromstart' }
)

vim.api.nvim_create_autocmd(
  { 'CursorHold' },
  { pattern='*', command="silent call CocActionAsync('highlight')" }
)

-- Autocomplete with tab
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
vim.keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
vim.keymap.set('i', "<CR>", [[pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"]], opts)

vim.keymap.set('n', 'gs', ':vsplit<CR><Plug>(coc-definition)', { silent=true })
vim.keymap.set('n', 'gr', ':vsplit<CR><Plug>(coc-references)', { silent=true })
vim.keymap.set('n', '<leader>r', '<Plug>(coc-rename)', { silent=true })
vim.keymap.set('n', '<Esc>', ':call coc#float#close_all()<CR>', { silent=true })

-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
vim.keymap.set("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})
