local M = {}

local data = require("workspaces.data")

function M.get_global_id(monitor_name, local_id)
    local offset = data.workspace_offset[monitor_name]
    if not offset then
        return nil
    end

    return offset + local_id
end

return M
