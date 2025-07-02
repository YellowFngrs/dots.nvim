return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 0.9,
      open_mapping = [[<c-g>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
        winblend = 10,
      },
    }

    -- LazyGit terminal
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new {
      cmd = 'lazygit',
      hidden = true,
      direction = 'float',
      float_opts = { border = 'double' },
    }

    vim.keymap.set('n', '<leader>gg', function()
      lazygit:toggle()
    end, { desc = 'Abrir LazyGit' })
  end,
}
