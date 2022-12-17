local telescope_builtin = require("telescope.builtin")
local def_opt = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})

vim.keymap.set("n", "<leader>fe", ":RnvimrToggle<CR>", def_opt)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})

vim.keymap.set("n", "<leader>ot", ":FTermToggle<CR>", def_opt)
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-v>', '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>')

vim.keymap.set("n", "<leader>sf", ":HopChar1<CR>", def_opt)
vim.keymap.set("n", "<leader>ss", ":HopChar2<CR>", def_opt)
vim.keymap.set("n", "<leader>sl", ":HopLineStart<CR>", def_opt)

vim.keymap.set("n", "<leader>fr", "<CMD>lua vim.lsp.buf.format {async = true}<CR>", def_opt)

vim.keymap.set("n", "<leader>bc", '<CMD>lua require("toolwindow").close()<CR>', def_opt)
vim.keymap.set("n", "<leader>bt", '<CMD>lua require("toolwindow").open_window("term", nil)<CR>', def_opt)
