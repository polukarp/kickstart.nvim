return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'marilari88/neotest-vitest',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-vitest',
      },
    }
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true, desc = 'Neotest' }

    map('n', '<leader>tt', "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", opts)
    map('n', '<leader>tT', "<cmd>lua require('neotest').run.run(vim.uv.cwd())<CR>", opts)
    map('n', '<leader>tr', "<cmd>lua require('neotest').run.run()<CR>", opts)
    map('n', '<leader>tl', "<cmd>lua require('neotest').run.run_last()<CR>", opts)
    map('n', '<leader>ts', "<cmd>lua require('neotest').summary.toggle()<CR>", opts)
    map('n', '<leader>to', "<cmd>lua require('neotest').output.open({ enter = true, auto_close = true })<CR>", opts)
    map('n', '<leader>tO', "<cmd>lua require('neotest').output_panel.toggle()<CR>", opts)
    map('n', '<leader>tS', "<cmd>lua require('neotest').run.stop()<CR>", opts)

    vim.api.nvim_set_keymap('n', '<leader>twr', "<cmd>lua require('neotest').run.run({ vitestCommand = 'vitest --watch' })<cr>", { desc = 'Run Watch' })
  end,
}
