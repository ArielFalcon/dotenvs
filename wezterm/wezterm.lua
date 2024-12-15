-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {
	force_reverse_video_cursor = true,
	colors = {
		foreground = "#ebdbb2",
		background = "#282828",

		cursor_bg = "#fe8019",
		cursor_fg = "#282828",
		cursor_border = "#fe8019",

		selection_fg = "#ebdbb2",
		selection_bg = "#458588",

		scrollbar_thumb = "#504945",
		split = "#504945",

		ansi = { "#282828", "#cc241d", "#98971a", "#d79921", "#458588", "#b16286", "#689d6a", "#a89984" },
		brights = { "#928374", "#fb4934", "#b8bb26", "#fabd2f", "#83a598", "#d3869b", "#8ec07c", "#ebdbb2" },
		indexed = { [16] = "#d65d0e", [17] = "#d3869b" },
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
}

-- This is where you actually apply your config choices
config.window_decorations = "RESIZE" -- removes window title bar
config.colors = {}
config.colors.foreground = "#ebdbb2"
config.colors.background = "#282828"
config.colors.cursor_bg = "#fe8019"
config.colors.cursor_fg = "#282828"
config.colors.cursor_border = "#fe8019"
config.colors.selection_fg = "#ebdbb2"
config.colors.selection_bg = "#458588"
config.colors.scrollbar_thumb = "#504945"
config.colors.split = "#504945"
config.colors.ansi = { "#282828", "#cc241d", "#98971a", "#d79921", "#458588", "#b16286", "#689d6a", "#a89984" }
config.colors.brights = { "#928374", "#fb4934", "#b8bb26", "#fabd2f", "#83a598", "#d3869b", "#8ec07c", "#ebdbb2" }
config.colors.indexed = { [16] = "#d65d0e", [17] = "#d3869b" }
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
