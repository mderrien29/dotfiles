local wezterm = require 'wezterm';

return {
  default_prog = {"/usr/bin/tmux"},
  font_size = 15.0,
  font = wezterm.font("Fira Code"),
  color_scheme = "Shades of Purple (base16)",
  hide_tab_bar_if_only_one_tab = true,
  scrollback_lines = 10000,
  enable_scrollbar = true,
  window_background_opacity = 0.8,
  adjust_window_size_when_changing_font_size = false
}
