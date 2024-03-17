return {
  'neanias/everforest-nvim',
  'catppuccin/nvim',
  'rose-pine/neovim',
  'folke/tokyonight.nvim',
  'rebelot/kanagawa.nvim',
  'nyoom-engineering/oxocarbon.nvim/',
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
}
