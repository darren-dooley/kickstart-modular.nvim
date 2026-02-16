return {
  {
    'epwalsh/obsidian.nvim',
    version = '*',
    lazy = true,
    ft = 'markdown',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    opts = {
      workspaces = {
        {
          name = 'personal',
          path = '~/Documents/Obsidian',
        },
      },
      notes_subdir = 'notes',
      daily_notes = {
        folder = 'notes/dailies',
        date_format = '%Y-%m-%d',
        alias_format = '%B %-d, %Y',
        default_tags = { 'daily-notes' },
      },
      picker = {
        name = 'telescope.nvim',
      },
      preferred_link_style = 'wiki',
      ui = { enable = false },
    },
  },
}
