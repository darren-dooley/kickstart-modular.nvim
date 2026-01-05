return {
  {
    'github/copilot.vim',
    -- Load the plugin only when you enter Insert mode or a buffer
    event = 'InsertEnter',
    config = function()
      -- Optional: Disable the default <Tab> mapping if it conflicts with other plugins
      -- vim.g.copilot_no_tab_map = true
      -- vim.g.copilot_assume_mapped = true
    end,
  },
}
