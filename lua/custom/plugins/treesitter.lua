return {
  'nvim-treesitter/nvim-treesitter',
  run = function()
    local ts_update = require('nvim-treesitter.install').update { with_sync = true }
    ts_update()
  end,
  config = function()
    require('nvim-treesitter.configs').setup {
      build = ':TSUpdate',
      ensure_installed = { 'vimdoc', 'javascript', 'typescript', 'c', 'lua', 'rust', 'bash', 'markdown', 'html', 'dockerfile' },

      indent = { enable = true },
      sync_install = false,
      autotag = {
        enable = true,
      },
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      ignore_install = {},
      modules = {},
    }
  end,
}
