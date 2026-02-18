---@type Base46Table
local M = {}

-- UI colors
M.base_30 = {
  white          = "#A7AFB9",
  black          = "#1e2229",
  darker_black   = "#191d23",
  black2         = "#24282f",
  one_bg         = "#2a2e36",
  one_bg2        = "#31353d", 
  one_bg3        = "#383c44", 
  grey           = "#5c6370",
  grey_fg        = "#6c7383",
  grey_fg2       = "#7c8493",
  light_grey     = "#c8ccd4",
  red            = "#e06c75",
  baby_pink      = "#ff7b91",
  pink           = "#c678dd",
  line           = "#2e333c",
  green          = "#98c379",
  vibrant_green  = "#9fdc7c",
  nord_blue      = "#61afef",
  blue           = "#61afef",
  seablue        = "#528bff",
  yellow         = "#e5c07b",
  sun            = "#f7ca88",
  purple         = "#a678dd",
  dark_purple    = "#8b5fbf",
  teal           = "#4db5bd",
  orange         = "#d19a66",
  cyan           = "#56b6c2",
  statusline_bg  = "#21252b",
  lightbg        = "#282c34",
  pmenu_bg       = "#3e4451",
  folder_bg      = "#61afef",
}

-- Base16 syntax mapping
M.base_16 = {
  base00 = "#1e2229",
  base01 = "#24282f",
  base02 = "#2a2e36",
  base03 = "#383c44",
  base04 = "#5c6370",
  base05 = "#A7AFB9",
  base06 = "#c8ccd4",
  base07 = "#ffffff",
  base08 = "#e06c75",
  base09 = "#d19a66",
  base0A = "#e5c07b",
  base0B = "#98c379",
  base0C = "#56b6c2",
  base0D = "#61afef",
  base0E = "#c678dd",
  base0F = "#be5046",
}

-- Optional highlight overrides
M.polish_hl = {
  defaults = {
    Comment = { fg = M.base_30.grey },
    Constant = { fg = M.base_30.orange },
    String   = { fg = M.base_30.green },
    Keyword  = { fg = M.base_30.purple },
    LineNr = { fg = "#3b3f47" },
  },
  treesitter = {
    ["@variable"] = { fg = M.base_30.white },
    ["@type"] = { fg = M.base_30.yellow },
    ["@function"] = { fg = M.base_30.nord_blue },
  },
}

-- Theme type
M.type = "dark"

-- Allow users to override via chadrc
M = require("base46").override_theme(M, "chalkboard")

return M
