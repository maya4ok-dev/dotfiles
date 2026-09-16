local env = require("environment")

-- wm-wide
hl.bind(env.modkey .. " + SHIFT + Q", hl.dsp.exec_cmd(env.apps.power))
hl.bind(env.modkey .. " + SHIFT + C", hl.dsp.exec_cmd(env.terminal .. " -e " .. env.editor .. " .config/hypr"))

-- launch
hl.bind(env.modkey .. " + Return", hl.dsp.exec_cmd(env.terminal))
hl.bind(env.modkey .. " + R", hl.dsp.exec_cmd(env.menu))
hl.bind(env.modkey .. " + B", hl.dsp.exec_cmd(env.apps.browser))
hl.bind(env.modkey .. " + E", hl.dsp.exec_cmd(env.apps.fileManager))
hl.bind(env.modkey .. " + U", hl.dsp.exec_cmd(env.apps.emoji))

-- focus
hl.bind(env.modkey .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(env.modkey .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(env.modkey .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(env.modkey .. " + J",  hl.dsp.focus({ direction = "down" }))

hl.bind(env.modkey .. " + SHIFT + H",  hl.dsp.window.move({ direction = "left" }))
hl.bind(env.modkey .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(env.modkey .. " + SHIFT + K",    hl.dsp.window.move({ direction = "up" }))
hl.bind(env.modkey .. " + SHIFT + J",  hl.dsp.window.move({ direction = "down" }))

-- manipulate windows
hl.bind(env.modkey .. " + Q", hl.dsp.window.close())
hl.bind(env.modkey .. " + F", hl.dsp.window.float({ action = "toggle" }))

-- switch and move windows between workspaces

local ws = require("workspaces.api")

for local_id = 1, 10 do
    local key = (local_id == 10) and "0" or tostring(local_id)

    hl.bind(env.modkey .. " + " .. key, function()
        local monitor = hl.get_monitor_at_cursor()
        if not monitor then
            return
        end

        local global_id = ws.get_global_id(monitor.name, local_id)
        if not global_id then
            return
        end

        hl.dispatch(hl.dsp.focus({ workspace = tostring(global_id) }))
    end)

    hl.bind(env.modkey .. " + SHIFT + " .. key, function()
        local monitor = hl.get_monitor_at_cursor()
        if not monitor then
            return
        end

        local global_id = ws.get_global_id(monitor.name, local_id)
        if not global_id then
            return
        end

        hl.dispatch(hl.dsp.window.move({ workspace = tostring(global_id) }))
    end)
end

-- move and resize windows
hl.bind(env.modkey .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(env.modkey .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- multimedia keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m region -o ~/pics/screenshots"))
