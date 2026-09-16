hl.curve("easeOut", {
    type = "bezier",
    points = {
        {0.16, 1.0},
        {0.3, 1.0}
    }
})

hl.curve("easeInOut", {
    type = "bezier",
    points = {
        {0.65, 0.0},
        {0.35, 1.0}
    }
})

hl.curve("fastOut", {
    type = "bezier",
    points = {
        {0.4, 0.0},
        {0.9, 1.0}
    }
})

hl.curve("fastIn", {
    type = "bezier",
    points = {
        {1.0, 0.9},
        {0.0, 0.4}
    }
})

hl.curve("linearish", {
    type = "bezier",
    points = {
        {0.25, 0.25},
        {0.75, 0.75}
    }
})


-- Windows

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 3,
    bezier = "easeOut",
    style = "popin 90%"
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 3,
    bezier = "fastIn",
    style = "popin 90%"
})

hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 4,
    bezier = "easeOut"
})


-- Layers

hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 4,
    bezier = "easeOut",
    style = "slide"
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 4,
    bezier = "fastOut",
    style = "slide"
})


-- Fade

hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 3,
    bezier = "easeOut"
})

hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 4,
    bezier = "fastOut"
})

hl.animation({
    leaf = "fadeSwitch",
    enabled = true,
    speed = 4,
    bezier = "easeInOut"
})

hl.animation({
    leaf = "fadeShadow",
    enabled = true,
    speed = 5,
    bezier = "fastOut"
})

hl.animation({
    leaf = "fadeGlow",
    enabled = true,
    speed = 5,
    bezier = "fastOut"
})

hl.animation({
    leaf = "fadeDim",
    enabled = true,
    speed = 4,
    bezier = "easeInOut"
})

hl.animation({
    leaf = "fadeLayers",
    enabled = true,
    speed = 3,
    bezier = "easeOut"
})

hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 3,
    bezier = "easeOut"
})

hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 4,
    bezier = "fastOut"
})

hl.animation({
    leaf = "fadePopups",
    enabled = true,
    speed = 3,
    bezier = "easeOut"
})

hl.animation({
    leaf = "fadePopupsIn",
    enabled = true,
    speed = 3,
    bezier = "easeOut"
})

hl.animation({
    leaf = "fadePopupsOut",
    enabled = true,
    speed = 4,
    bezier = "fastOut"
})


-- Borders / angles

hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5,
    bezier = "fastOut"
})

hl.animation({
    leaf = "borderangle",
    enabled = true,
    speed = 6,
    bezier = "linearish",
    style = "once"
})

hl.animation({
    leaf = "shadowangle",
    enabled = true,
    speed = 6,
    bezier = "linearish",
    style = "once"
})

hl.animation({
    leaf = "glowangle",
    enabled = true,
    speed = 6,
    bezier = "linearish",
    style = "once"
})


-- Workspaces
-- Единственная "большая" анимация

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 3,
    bezier = "easeInOut",
    style = "slide"
})

hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 3,
    bezier = "easeInOut",
    style = "slide"
})

hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 3,
    bezier = "easeInOut",
    style = "slide"
})

hl.animation({
    leaf = "specialWorkspace",
    enabled = true,
    speed = 3,
    bezier = "easeInOut",
    style = "slide"
})

hl.animation({
    leaf = "specialWorkspaceIn",
    enabled = true,
    speed = 3,
    bezier = "easeInOut",
    style = "slide"
})

hl.animation({
    leaf = "specialWorkspaceOut",
    enabled = true,
    speed = 3,
    bezier = "easeInOut",
    style = "slide"
})


-- Zoom

hl.animation({
    leaf = "zoomFactor",
    enabled = true,
    speed = 4,
    bezier = "easeOut"
})

hl.animation({
    leaf = "monitorAdded",
    enabled = true,
    speed = 4,
    bezier = "easeOut"
})

