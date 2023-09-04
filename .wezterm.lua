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
config.color_scheme = "Dracula (Official)"
config.window_background_opacity = 0.8
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 17.0
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono", weight = "Medium" },
	"Nerd Font Symbols",
	"Noto Emoji",
	-- "Apple Color Emoji",
	-- { family = "JetBrainsMono Nerd Font Mono", weight = "Medium" },
})
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config