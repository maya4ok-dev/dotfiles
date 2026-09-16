local env = {
    modkey = "SUPER",
    terminal = "kitty",
    menu = "fuzzel",
    editor = "nvim",
}

env.apps = {
    browser = "librewolf",
    fileManager = env.terminal .. " -e ranger",
    emoji = "fuzzel-emoji.sh",
    power = "fuzzel-power.sh",
}

return env
