local M = {}
local fmt = string.format

function M.load_conf(name)
  return require(fmt("plugins.%s", name))
end

return M
