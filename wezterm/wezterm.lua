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

--config.font = wezterm.font('JetBrains Mono', { weight = 'Bold' })
--config.font = wezterm.font('Hack Nerd Font', { weight = 'Bold' })
config.font = wezterm.font_with_fallback {
  { family = 'Hack Nerd Font', weight = 'Bold' },
  { family = 'Terminus', weight = 'Bold' },
  "JetBrains Mono",
  'Noto Color Emoji',
  'MesloLGS NF',
  'KanjiStrokeOrders'
}
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
config.check_for_updates = true

config.colors = {
  cursor_bg = "#eeeeee",
  cursor_fg = '#111111',
  cursor_border = "#4C566A",
  tab_bar = {
--     -- The color of the strip that goes along the top of the window
--     -- (does not apply when fancy tab bar is in use)
--     background = '#0b0022',

--     -- The active tab is the one that has focus in the window
    active_tab = {
--       -- The color of the background area for the tab
      bg_color = '#222222',
--       -- The color of the text for the tab
      fg_color = '#c0c0c0',

--       -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
--       -- label shown for this tab.
--       -- The default is "Normal"
--       intensity = 'Normal',

--       -- Specify whether you want "None", "Single" or "Double" underline for
--       -- label shown for this tab.
--       -- The default is "None"
--       underline = 'None',

--       -- Specify whether you want the text to be italic (true) or not (false)
--       -- for this tab.  The default is false.
--       italic = false,

--       -- Specify whether you want the text to be rendered with strikethrough (true)
--       -- or not for this tab.  The default is false.
--       strikethrough = false,
    },

--     -- Inactive tabs are the tabs that do not have focus
--     inactive_tab = {
--       bg_color = '#1b1032',
--       fg_color = '#808080',

--       -- The same options that were listed under the `active_tab` section above
--       -- can also be used for `inactive_tab`.
--     },

--     -- You can configure some alternate styling when the mouse pointer
--     -- moves over inactive tabs
--     inactive_tab_hover = {
--       bg_color = '#3b3052',
--       fg_color = '#909090',
--       italic = true,

--       -- The same options that were listed under the `active_tab` section above
--       -- can also be used for `inactive_tab_hover`.
--     },

--     -- The new tab button that let you create new tabs
--     new_tab = {
--       bg_color = '#1b1032',
--       fg_color = '#808080',

--       -- The same options that were listed under the `active_tab` section above
--       -- can also be used for `new_tab`.
--     },

--     -- You can configure some alternate styling when the mouse pointer
--     -- moves over the new tab button
--     new_tab_hover = {
--       bg_color = '#3b3052',
--       fg_color = '#909090',
--       italic = true,

--       -- The same options that were listed under the `active_tab` section above
--       -- can also be used for `new_tab_hover`.
--     },
  },
}

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
