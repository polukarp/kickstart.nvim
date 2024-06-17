return {
  'github/copilot.vim',
  'eandrju/cellular-automaton.nvim',
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup {
        opts = {
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
      }
    end,
  },
  { 'wakatime/vim-wakatime', lazy = false },
  { 'akinsho/git-conflict.nvim', version = '*', config = true },
  'nvim-neotest/nvim-nio',
  {
    'morhetz/gruvbox',
  },
  { 'akinsho/git-conflict.nvim', version = '*', config = true },
  'yorickpeterse/nvim-pqf',
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },
  {
    'sainnhe/gruvbox-material',
    priority = 1000,
  },
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  'ThePrimeagen/vim-be-good',
  { 'artemave/workspace-diagnostics.nvim' },
}
