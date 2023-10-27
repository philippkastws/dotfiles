-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

-- config.font = wezterm.font('JetBrains Mono', { weight = 'Bold' })
config.font = wezterm.font('Hack Nerd Font Mono', { weight = 'Bold' })
config.font_size = 14

--config.color_scheme = 'Batman'
config.color_scheme = 'SpaceGray Eighties'


-- config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.macos_window_background_blur = 40
-- config.window_background_opacity = 0.90
-- config.window_close_confirmation = "NeverPrompt"

config.window_padding = {
	left = "24px",
	right = "24px",
	top = "1.5cell",
	bottom = "0.5cell",
}
-- 
-- config.keys = {
-- 	{
-- 		key = "Enter",
-- 		mods = "ALT",
-- 		action = wezterm.action.DisableDefaultAssignment,
-- 	},
-- }

config.initial_cols = 120
config.initial_rows = 50

-- and finally, return the configuration to wezterm
return config


-- local wezterm = require("wezterm")
-- 
-- local config = {}
-- 
-- if wezterm.config_builder then
-- 	config = wezterm.config_builder()
-- end
-- 
-- -- config.color_scheme = "tokyonight_moon"
-- config.color_scheme = "nord"
-- 
-- config.colors = {
-- 	background = "#232730",
-- 	cursor_bg = "#4C566A",
-- 	cursor_border = "#4C566A",
-- }
-- 
-- config.font = wezterm.font_with_fallback({
-- 	{ family = "Berkeley Mono", italic = false },
-- 	{ family = "Symbols Nerd Font Mono", scale = 0.75 },
-- })
-- config.font_size = 15.0
-- config.line_height = 1.15
-- config.font_rules = {
-- 	{
-- 		intensity = "Normal",
-- 		italic = true,
-- 		font = wezterm.font_with_fallback({
-- 			{ family = "Berkeley Mono", style = "Normal" },
-- 		}),
-- 	},
-- 	{
-- 		intensity = "Bold",
-- 		italic = true,
-- 		font = wezterm.font_with_fallback({
-- 			{ family = "Berkeley Mono", italic = false },
-- 		}),
-- 	},
-- }
-- 
-- config.use_fancy_tab_bar = false
-- config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.macos_window_background_blur = 40
-- config.window_background_opacity = 0.90
-- config.window_close_confirmation = "NeverPrompt"
-- 
-- config.window_padding = {
-- 	left = "24px",
-- 	right = "24px",
-- 	top = "1.5cell",
-- 	bottom = "0.5cell",
-- }
-- 
-- config.keys = {
-- 	{
-- 		key = "Enter",
-- 		mods = "ALT",
-- 		action = wezterm.action.DisableDefaultAssignment,
-- 	},
-- }
-- 
-- return config
-- 
