-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "catppuccin-macchiato"

-- config.font = wezterm.font("Hack Nerd Font")
-- config.font = wezterm.font("FiraCode Nerd Font", { weight = "Regular" })
config.font = wezterm.font("FiraCode Nerd Font", { weight = "Medium" })
config.font_size = 23.0
config.line_height = 1.25

config.command_palette_font_size = 22.0

-- config.freetype_load_flags = "NO_HINTING"
config.window_decorations = "RESIZE"

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false

config.keys = {
	-- Turn off the default CMD-m Hide action, allowing CMD-m to
	-- be potentially recognized and handled by the tab
	{ key = "m", mods = "CMD", action = wezterm.action.DisableDefaultAssignment },
	{ key = "LeftArrow", mods = "CMD|OPT", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "RightArrow", mods = "CMD|OPT", action = wezterm.action.ActivateTabRelative(1) },
}

-- and finally, return the configuration to wezterm
return config
