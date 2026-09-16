hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@180",
    position = "auto",
    scale    = "auto",
    cm       = "hdr",
    bitdepth = 10,
    sdr_max_luminance = 300,
    sdr_min_luminance = 0.05,
})

hl.exec_cmd("xrandr --output DP-1 --primary")

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@74.97",
    position = "auto",
    scale    = "auto",
})
