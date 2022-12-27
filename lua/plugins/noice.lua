require("noice").setup({
  messages = {
    enabled = true, -- enables the Noice messages UI
    view = "messages", -- default view for messages
    view_error = "messages", -- view for errors
    view_warn = "messages", -- view for warnings
    view_history = "messages", -- view for :messages
    view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
  },
})
