local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("JetBrainsMono NFM")
config.font_size = 14
config.color_scheme = "Dracula"
config.window_background_opacity = 0.9

config.default_prog = {
  'pwsh.exe',
  '-NoLogo',
}

config.initial_cols = 64
config.initial_rows = 16
config.window_padding = {
  left = 8,
  right = 8,
  top = 6,
  bottom = 6,
}

config.scrollback_lines = 10000

config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false

config.cursor_blink_rate = 0

config.keys = {
  -- Tabs
  {
    key = "t",
    mods = "CTRL",
    action = wezterm.action.SpawnTab("CurrentPaneDomain"),
  },

  {
    key = "w",
    mods = "CTRL",
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },

  {
    key = "w",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },

  {
    key = "Tab",
    mods = "CTRL",
    action = wezterm.action.ActivateTabRelative(1),
  },

  {
    key = "Tab",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateTabRelative(-1),
  },

  -- Panes
  {
    key = "D",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitHorizontal {
      domain = "CurrentPaneDomain",
    },
  },

  {
    key = "S",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitVertical {
      domain = "CurrentPaneDomain",
    },
  },

  {
    key = "LeftArrow",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection("Left"),
  },

  {
    key = "RightArrow",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection("Right"),
  },

  {
    key = "UpArrow",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection("Up"),
  },

  {
    key = "DownArrow",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection("Down"),
  },

  -- Copy
  {
    key = "c",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CopyTo("Clipboard"),
  },

  -- Search
  {
    key = "f",
    mods = "CTRL|SHIFT",
    action = wezterm.action.Search("CurrentSelectionOrEmptyString"),
  },

  -- Launcher
  {
    key = "p",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ShowLauncher,
  },
}

return config