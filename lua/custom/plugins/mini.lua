return {
  {
    'echasnovski/mini.animate',
    version = '*',
    config = function()
      require('mini.animate').setup {
        open = {
          enable = false,
        },
        close = {
          enable = false,
        },
      }
    end,
  },
  {
    'echasnovski/mini.indentscope',
    version = '*',
    config = function()
      require('mini.indentscope').setup()
    end,
  },
  {
    'echasnovski/mini.move',
    version = '*',
    config = function()
      require('mini.move').setup()
    end,
  },
}
