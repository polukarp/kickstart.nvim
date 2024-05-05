return {
  'github/copilot.vim',
  'eandrju/cellular-automaton.nvim',
  'windwp/nvim-ts-autotag',
  { 'wakatime/vim-wakatime', lazy = false },
  { 'akinsho/git-conflict.nvim', version = '*', config = true },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  'xiyaowong/transparent.nvim',
}
