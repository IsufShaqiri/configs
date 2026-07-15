local wezterm = require("wezterm")
local config = {}

config.window_background_opacity = 0.7
config.wayland_window_background_blur = true
config.font_size = 11
config.font = wezterm.font("FiraCode Nerd Font")
config.enable_wayland = false
config.color_scheme = "rose-pine"
config.use_fancy_tab_bar = false
config.hide_tab_if_only_one_tab = true
config.enable_tab_bar = false

return config
