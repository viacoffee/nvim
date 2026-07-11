local o = vim.o

-- Line numbers
o.number = true
o.relativenumber = true

-- Width ruler (tune to taste)
o.colorcolumn = "80"

o.cursorline = true
o.cursorlineopt = "both"
o.signcolumn = "yes"
o.termguicolors = true
o.mouse = "a"
o.clipboard = "unnamedplus"

-- Indent
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.smartindent = true

-- Search
o.ignorecase = true
o.smartcase = true

-- File handling
o.undofile = true
o.undodir = vim.fn.expand "~/.vim/undodir/"
o.backup = false
o.writebackup = false
o.swapfile = false

-- Encoding
vim.scriptencoding = "utf-8"
o.encoding = "utf-8"
o.fileencoding = "utf-8"

-- Misc
o.showcmd = false
o.cmdheight = 0
o.scrolloff = 10
o.sidescrolloff = 10
o.linebreak = true
o.splitright = true
o.splitbelow = true

-- undodir is not auto-created
local undodir = vim.fn.expand "~/.vim/undodir/"
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
