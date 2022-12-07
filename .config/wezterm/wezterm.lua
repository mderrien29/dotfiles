local wezterm = require 'wezterm';

return {
  default_prog = {"/usr/bin/tmux"},
  font_size = 14.0,
  font = wezterm.font("Fira Code"),
  color_scheme = "shades-of-purple",
  hide_tab_bar_if_only_one_tab = true,
  scrollback_lines = 10000,
  enable_scrollbar = true,
}
