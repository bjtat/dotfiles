-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Color scheme
config.color_scheme = "catppuccin-macchiato"

-- Font
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 22.0
config.line_height = 1
config.command_palette_font_size = 22.0

-- Terminal rendering
-- config.freetype_load_flags = "NO_HINTING"
config.window_decorations = "RESIZE"

config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}

-- Tab
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false

-- Keys
config.keys = {
	{ key = "m", mods = "CMD", action = wezterm.action.DisableDefaultAssignment },
	{ key = "h", mods = "CMD", action = wezterm.action.DisableDefaultAssignment },
	{ key = "LeftArrow", mods = "OPT|CMD", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "RightArrow", mods = "OPT|CMD", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "o", mods = "OPT|CMD", action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|TABS" }) },
	{ key = "n", mods = "CTRL|SHIFT", action = wezterm.action.ToggleFullScreen },
	{
		key = "i",
		mods = "OPT|CMD",
		action = wezterm.action.PromptInputLine({
			description = "Tab name:",
			action = wezterm.action_callback(function(window, _, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
