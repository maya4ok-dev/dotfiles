local WORKSPACES_PER_MONITOR = 10
local data = require("workspaces.data")
local offset = 0

function setup_monitor(monitor)
    data.workspace_offset[monitor.name] = offset

    for local_id = 1, WORKSPACES_PER_MONITOR do
        local global_id = offset + local_id

        hl.workspace_rule({
            default = local_id == 1,
            workspace = tostring(global_id),
            monitor = monitor.name,
            persistent = true
        })
    end

    offset = offset + WORKSPACES_PER_MONITOR
end

if #hl.get_monitors() > 0 then
    for _, monitor in ipairs(hl.get_monitors()) do
        setup_monitor(monitor)
    end
end

hl.on("monitor.added", function(monitor)
    setup_monitor(monitor)
end)
