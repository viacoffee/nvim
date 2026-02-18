---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chalkboard",
  transparency = false,

  hl_override = {
    Comment = { italic = true },
    -- Function = { bold = true },
    Function = { fg = "#c5c8c6" },
    Keyword  = { bold = true },
  	["@comment"] = { italic = true },

    -- CursorLine = { bg = "black" }
  },
}

M.ui = {
  cmp = {
    icons = false,
  },
  tabufline = {
    lazyload = false,
    order = { "treeOffset", "buffers" },
    buf_close_btn = false,
  },
  statusline = {
    theme = "default",
  },
}

return M
