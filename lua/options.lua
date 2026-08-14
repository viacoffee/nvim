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

-- Completion menu
o.completeopt = { "menuone", "noselect", "popup" }
o.pumheight = 15

-- Search
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.incsearch = true

-- File handling
o.undodir = undodir
o.undofile = true
o.backup = false
o.writebackup = false
o.swapfile = false

-- auto reload on focus/enter/idle
o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
  command = "checktime",
})

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
