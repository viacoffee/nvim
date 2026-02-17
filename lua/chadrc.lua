---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = false,

  hl_override = {
  	Comment = { italic = true },
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
