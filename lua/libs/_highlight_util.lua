local M = {}

function M.register(table)
  for key, value in pairs(table) do
    vim.apt.nvim_set_hl(0, key, value)
  end
end

