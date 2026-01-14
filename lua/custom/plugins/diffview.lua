return {
  'sindrets/diffview.nvim',
  keys = {
    { '<leader>gdo', '<cmd>DiffviewOpen<cr>', desc = 'Diffview: Open default' },
    { '<leader>gdc', '<cmd>DiffviewClose<cr>', desc = 'Diffview: Close' },
    { '<leader>gdm', '<cmd>DiffviewOpen origin/main<cr>', desc = 'Diffview: vs origin/main' },
  },
}
