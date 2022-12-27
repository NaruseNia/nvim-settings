local telescope_builtin = require("telescope.builtin")
local def_opt = { noremap = true, silent = true }
local notify = require("notify")

local apply_file = function()
  vim.cmd("luafile %")
  notify("Lua file Reloaded.")
end

local packer_sync = function()
  vim.cmd("luafile %")
  vim.cmd("PackerSync")
  notify("Plugin Synced.")
end

local format = function()
  vim.cmd "lua vim.lsp.buf.format {async = true}"
  notify("Formated.")
end

vim.g.mapleader = " "

vim.keymap.set("n", "<A-l>", apply_file, def_opt)
vim.keymap.set("n", "<A-s>", packer_sync, def_opt)

vim.keymap.set({"n", "t"}, "<esc><esc>", "<cmd>noh<cr>", def_opt)
vim.keymap.set("n", "hh", "<cmd>noh<cr>", def_opt)

vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, def_opt)
vim.keymap.set("n", "<leader>fc", "<cmd>lua require('telescope.builtin').find_files( { cwd = vim.fn.expand('%:p:h') })<cr>", def_opt)
vim.keymap.set("n", "<leader>fe", "<cmd>lua require('telescope').extensions.frecency.frecency()<cr>", def_opt)
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, def_opt)
vim.keymap.set("n", "<leader>fm", telescope_builtin.keymaps, def_opt)
vim.keymap.set({"n", "t"}, "<C-p>", telescope_builtin.find_files, def_opt)

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", {})

vim.keymap.set("n", "<leader>ot", ":FTermToggle<cr>", def_opt)
vim.keymap.set('n', '<A-i>', '<cmd>lua require("FTerm").toggle()<cr>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><cmd>lua require("FTerm").toggle()<cr>')
vim.keymap.set('t', '<A-v>', '<C-\\><C-n><cmd>lua require("FTerm").exit()<cr>')

vim.keymap.set("n", "<leader>sf", ":HopChar1<cr>", def_opt)
vim.keymap.set("n", "<leader>ss", ":HopChar2<cr>", def_opt)
vim.keymap.set("n", "<leader>sl", ":HopLineStart<cr>", def_opt)
vim.keymap.set("n", "<C-j>", "<Plug>(edgemotion-j)", def_opt)
vim.keymap.set("n", "<C-k>", "<Plug>(edgemotion-k)", def_opt)

vim.keymap.set("n", "<leader>fr", format, def_opt)

vim.keymap.set("n", "<leader>bc", '<cmd>lua require("toolwindow").close()<cr>', def_opt)
vim.keymap.set("n", "<leader>bt", '<cmd>lua require("toolwindow").open_window("term", nil)<cr>', def_opt)

vim.keymap.set("n", "<leader>dh", "<cmd>BDelete hidden<cr>", def_opt)
vim.keymap.set("n", "<leader>do", "<cmd>BDelete other<cr>", def_opt)

vim.keymap.set({ "n", "v" }, "<A-S-c>", "<plug>(CybuLastusedPrev)")
vim.keymap.set({ "n", "v" }, "<A-c>", "<plug>(CybuLastusedNext)")


