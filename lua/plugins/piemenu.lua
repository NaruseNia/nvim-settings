local pie = require("piemenu")

local group = vim.api.nvim_create_augroup("piemenu_setting", {})
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = group,
  pattern = { "piemenu" },
  callback = function()
    vim.o.mousemoveevent = true
    vim.keymap.set("n", "<MouseMove>", [[<Cmd>lua require("piemenu").highlight()<CR>]], { buffer = true })
    vim.keymap.set("n", "<LeftDrag>", [[<Cmd>lua require("piemenu").highlight()<CR>]], { buffer = true })
    vim.keymap.set("n", "<LeftRelease>", [[<Cmd>lua require("piemenu").finish()<CR>]], { buffer = true })
    vim.keymap.set("n", "<RightMouse>", [[<Cmd>lua require("piemenu").cancel()<CR>]], { buffer = true })
  end,
})

pie.register("default", {
  menus = {
    {
      text = "❌ Close",
      action = function()
        vim.cmd("BufferClose")
      end
    }
  }
})
