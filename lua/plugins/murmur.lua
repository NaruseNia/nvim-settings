require('murmur').setup {
  max_len = 80, -- maximum word-length to highlight
  exclude_filetypes = {},
  callbacks = {
    function ()
      vim.cmd('doautocmd InsertEnter')
      vim.w.diag_shown = false
    end,
  }
}
