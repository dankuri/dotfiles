-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
---@type wezterm.Configuration
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- dankuri added
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono NL", weight = 500 },
	"Noto Color Emoji",
	"Symbols Nerd Font Mono",
})
config.warn_about_missing_glyphs = false
config.color_scheme = "Dracula (Official)"
config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 17.0
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

-- and finally, return the configuration to wezterm
return config
