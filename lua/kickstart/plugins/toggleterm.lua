return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        direction = 'float',
      }

      vim.keymap.set('t', '<C-q>', [[<C-\><C-n>]], {
        desc = 'Exit terminal mode',
      })
      vim.keymap.set('n', '<leader>tt', function()
        require('toggleterm').toggle()
      end, { desc = 'Toggle terminal' })
    end,
  },
}
