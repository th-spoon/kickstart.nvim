return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  -- opts = {
  --   signs = {
  --     add = { text = '+' },
  --     change = { text = '~' },
  --     delete = { text = '_' },
  --     topdelete = { text = '‾' },
  --     changedelete = { text = '~' },
  --   },
  -- },
  config = function()
    require('gitsigns').setup()
    vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', {})
    vim.keymap.set('n', '<leader>B', ':Gitsigns toggle_current_line_blame<CR>', {})
  end,
}
