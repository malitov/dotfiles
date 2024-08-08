local wezterm = require("wezterm")
local action = wezterm.action

local config = wezterm.config_builder()

config = {
  automatically_reload_config = true,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  adjust_window_size_when_changing_font_size = false,
  native_macos_fullscreen_mode = false,
  debug_key_events = false,

  color_scheme = 'Dracula (Gogh)',
  font = wezterm.font("GeistMono Nerd Font"),
  font_size = 16,
  line_height = 1.5,

  window_background_opacity = 0.9,
  macos_window_background_blur = 10,
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  window_padding = {
    left = 10,
		right = 10,
		top = 0,
		bottom = 0,
  },
  window_background_gradient = {
    orientation = {
      Radial = {
        radius = 1.1,
        cx = 0.5,
        cy = 0.5,
      },
    },
    colors = { "#223343", "#000000" },
    interpolation = "Linear",
    blend = "Rgb",
  },

  keys = {
    {
      key = "f",
      mods = "CMD",
      action = action.ToggleFullScreen,
    }
  }
}

return config
