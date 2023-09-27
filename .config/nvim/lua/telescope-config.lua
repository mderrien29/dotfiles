local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<ESC>"] = actions.close,
      }
    }
  }
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>e', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
