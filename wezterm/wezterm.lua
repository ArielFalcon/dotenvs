-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {
	force_reverse_video_cursor = true,
	colors = {
		foreground = "#dcd7ba",
		background = "#181616",

		cursor_bg = "#c8c093",
		cursor_fg = "#c8c093",
		cursor_border = "#c8c093",

		selection_fg = "#c8c093",
		selection_bg = "#2d4f67",

		scrollbar_thumb = "#16161d",
		split = "#16161d",

		ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
		brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
		indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
	},
}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- This is where you actually apply your config choices
config.window_decorations = "RESIZE" -- removes window title bar
config.force_reverse_video_cursor = true
config.colors = {}
config.colors.foreground = "#dcd7ba"
config.colors.background = "#181616"
config.colors.cursor_bg = "#ffa011"
config.colors.cursor_fg = "#ffa011"
config.colors.cursor_border = "#c8c093"
config.colors.selection_fg = "#c8c093"
config.colors.selection_bg = "#2d4f67"
config.colors.scrollbar_thumb = "#16161d"
config.colors.split = "#16161d"
config.colors.ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" }
config.colors.brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" }
config.colors.indexed = { [16] = "#ffa066", [17] = "#ff5d62" }
--  change
config.window_background_opacity = 0.95
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 13.0
config.hide_tab_bar_if_only_one_tab = true

-- activate ONLY if windows --

-- config.default_domain = 'WSL:Ubuntu'
-- config.front_end = "OpenGL"

--Calculate window width to open
config.initial_cols = 180
config.initial_rows = 60

-- and finally, return the configuration to wezterm
return config
