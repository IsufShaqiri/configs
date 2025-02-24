-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- Use this for a zero with a line through it rather than a dot
-- when using the Fira Code font
config.harfbuzz_features = { "zero" }
-- config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

config.color_scheme = "rose-pine"
config.font = wezterm.font_with_fallback({
	"VictorMono Nerd Font",
	"FiraCode Nerd Font",
})

config.automatically_reload_config = true
config.window_background_opacity = 0.97
config.enable_tab_bar = false
config.font = wezterm.font("JetBrains Mono", { weight = "Regular" })
config.font_size = 11.0
-- and finally, return the configuration to wezterm
return config
