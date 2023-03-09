local cli = require("neogit.lib.git.cli")
local Path = require("plenary.path")

local M = {}

function M.relpath_from_repository(path)
  local result = cli["ls-files"].others.cached.modified.deleted.full_name
    .cwd("<current>")
    .args(path)
    .show_popup(false)
    .call()
  return result.stdout[1]
end

return M
