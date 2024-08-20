local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
  automatically_reload_config = true,
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  color_scheme = "Dracula (Gogh)",
  font_size = 12.5,
  font = wezterm.font("JetBrains Mono"),
  background = {
    {
      source = {
        File = "/Users/moises/Documents/darkestfall.gif",
      },
      hsb = {
        hue = 1.0,
        saturation = 1.02,
        brightness = 0.85,
      },
    },
    {
      source = {
        Color = "#02182f",
      },
      width = "100%",
      height = "100%",
      opacity = 0.15,
    },
  },
  window_padding = {
    left = 3,
    right = 3,
    top = 0,
    bottom = 0,
  }
}

return config
