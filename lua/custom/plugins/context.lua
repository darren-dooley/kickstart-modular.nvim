return {
  'ahkohd/context.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    local context = require 'context'
    context.setup {
      picker = context.pickers.telescope,
    }
  end,
  keys = {
    {
      '<leader>cc',
      function()
        require('context').pick()
      end,
      desc = '[C]ontext e[X]tract to clipboard',
      mode = { 'n', 'v' },
    },
  },
}
