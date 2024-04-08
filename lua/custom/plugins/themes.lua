return {
  'neanias/everforest-nvim',
  'catppuccin/nvim',
  'rose-pine/neovim',
  'folke/tokyonight.nvim',
  'rebelot/kanagawa.nvim',
  {
    'nmorhetz/gruvbox',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
      vim.opt.background = 'dark'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim/',
    config = function()
      vim.cmd.colorscheme 'oxocarbon'
      vim.opt.background = 'light'
    end,
  },
  {
    'NLKNguyen/papercolor-theme',
  },
}
