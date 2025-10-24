vim.cmd.set('termguicolors')
vim.cmd.colorscheme('shades_of_purple')

vim.cmd('set background=dark')
-- vim.cmd.colorscheme('PaperColor')

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '\\', right = '/' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' },
    lualine_c = { 'lsp_status', 'filename', },
    lualine_x = { 'searchcount', 'selectioncount' },
    lualine_y = { 'filetype' },
    lualine_z = { 'location' }
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
