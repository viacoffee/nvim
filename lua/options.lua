require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both" -- cursor line

-- File handling
o.undofile = true -- Presistent undo
o.undodir = vim.fn.expand "~/.vim/undodir/" -- Undo directory
o.backup = false -- Don't create backup files
o.autowrite = false -- No auto saving
o.writebackup = false -- Don't create backup before writing
o.swapfile = false -- Who even uses these?

-- Encoding
vim.scriptencoding = "utf-8"
o.encoding = "utf-8"
o.fileencoding = "utf-8"

-- Misc
o.ignorecase = true
o.showcmd = false
o.cmdheight = 0
o.scrolloff = 10
o.sidescrolloff = 10
o.linebreak = true

-- Create undo directory
local undodir = vim.fn.expand "~/.vim/undodir/"
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
