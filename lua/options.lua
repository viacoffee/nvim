local o = vim.opt

local undodir = vim.fn.expand "~/.vim/undodir/"

-- Line numbers
o.number = true
o.relativenumber = true

-- Width ruler
o.colorcolumn = "80"

o.cursorline = true
o.cursorlineopt = "both"
o.signcolumn = "yes"
o.termguicolors = true
o.mouse = "a"
o.clipboard = "unnamedplus"

-- Indent
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.smartindent = true

-- Search
o.smartcase = true
o.hlsearch = false
o.incsearch = true

-- File handling
o.undodir = undodir
o.undofile = true
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
o.shortmess:append("I")

-- undodir is not auto-created
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
