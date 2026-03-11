return {
  'sindrets/diffview.nvim',
  keys = {
    { '<leader>gdo', '<cmd>DiffviewOpen<cr>', desc = 'Diffview: Open default' },
    { '<leader>gdc', '<cmd>DiffviewClose<cr>', desc = 'Diffview: Close' },
    { '<leader>gdm', function()
      vim.fn.system('git fetch origin main')
      vim.cmd('DiffviewOpen origin/main')
    end, desc = 'Diffview: vs origin/main' },
    {
      '<leader>gdb',
      function()
        require('telescope.builtin').git_branches({
          attach_mappings = function(_, map)
            map('i', '<CR>', function(prompt_bufnr)
              local selection = require('telescope.actions.state').get_selected_entry(prompt_bufnr)
              require('telescope.actions').close(prompt_bufnr)
              vim.cmd('DiffviewOpen ' .. selection.value)
            end)
            return true
          end,
        })
      end,
      desc = 'Diffview: Open vs branch',
    },
  },
}
