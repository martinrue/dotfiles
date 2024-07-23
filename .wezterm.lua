local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Material Darker (base16)"
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.initial_rows = 28
config.initial_cols = 120
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.98

config.audible_bell = "Disabled"
config.enable_tab_bar = false

config.window_padding = {
	left = 15,
	right = 15,
	top = 25,
	bottom = 15,
}

config.keys = {
	{
		key = "s",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
	},
	{
		key = "k",
		mods = "SUPER",
		action = wezterm.action.SendKey({ key = "l", mods = "CTRL" }),
	},
	{
		key = "LeftArrow",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1bOH" }),
	},
	{
		key = "RightArrow",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1bOF" }),
	},
	{
		key = "LeftArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bb" }),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bf" }),
	},
}

return config
