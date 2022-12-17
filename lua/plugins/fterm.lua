vim.api.nvim_create_user_command("FTermOpen", require("FTerm").open, {bang = true})
vim.api.nvim_create_user_command("FTermClose", require("FTerm").close, {bang = true})
vim.api.nvim_create_user_command("FTermToggle", require("FTerm").toggle, {bang = true})
vim.api.nvim_create_user_command("FTermExit", require("FTerm").exit, {bang = true})

require("FTerm").setup({
  blend = 10,
  on_exit = function ()
    require("notify")("Terminal Exited.")
  end
})

