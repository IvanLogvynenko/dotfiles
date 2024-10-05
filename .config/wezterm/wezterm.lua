local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.color_scheme = "Decaf (base16)"

config.font = wezterm.font {
	family = 'Cascadia Code NF',
	harfbuzz_features = {"ss01", "ss02", "ss03", "ss19", "ss20", "calt"},
}
config.font_size = 14

config.hide_tab_bar_if_only_one_tab = true

return config
