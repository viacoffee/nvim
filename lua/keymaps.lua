local map = vim.keymap.set

-- Save / quit
map("n", "<leader>s", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>bd<cr>", { desc = "Close buffer" })

-- Comment toggle
map("n", "<leader>/", "gcc", { remap = true, desc = "Toggle comment" })
map("x", "<leader>/", "gc", { remap = true, desc = "Toggle comment" })

-- File explorer (netrw)
map("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Explorer" })

-- Math - increment/decrement
map("n", "+", "<C-a>", { desc = "Increment number" })
map("n", "-", "<C-x>", { desc = "Decrement number" })

-- Select all
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Page movement
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Search movement
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Window movement
map("n", "sh", "<C-w>h", { desc = "Window left" })
map("n", "sj", "<C-w>j", { desc = "Window down" })
map("n", "sk", "<C-w>k", { desc = "Window up" })
map("n", "sl", "<C-w>l", { desc = "Window right" })

-- Split / close windows
map("n", "ss", "<cmd>split<cr>", { desc = "Split horizontal" })
map("n", "sv", "<cmd>vsplit<cr>", { desc = "Split vertical" })
map("n", "sc", "<cmd>close<cr>", { desc = "Close window" })
map("n", "so", "<cmd>only<cr>", { desc = "Close other windows" })

-- Resize windows
map({ "n", "v" }, "<C-h>", "<C-w>>", { desc = "Resize left" })
map({ "n", "v" }, "<C-l>", "<C-w><", { desc = "Resize right" })
map({ "n", "v" }, "<C-j>", "<C-w>-", { desc = "Resize up" })
map({ "n", "v" }, "<C-k>", "<C-w>+", { desc = "Resize down" })

-- Move selected lines up/down (re-indented)
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- tmux-sessionizer
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<cr>", { desc = "Tmux sessionizer" })

-- Telescope (fuzzy find)
local t = require "telescope.builtin"
map("n", "<leader>ff", t.find_files, { desc = "Find files" })
map("n", "<leader>fa", function() t.find_files { hidden = true, no_ignore = true } end, { desc = "Find all files" })
map("n", "<leader>fw", t.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", t.buffers, { desc = "Find buffers" })

-- Completion menu
map("i", "<C-Space>", function() vim.lsp.completion.get() end, { desc = "Trigger completion" })
map("i", "<Tab>", function() return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>" end, { expr = true })
map("i", "<S-Tab>", function() return vim.fn.pumvisible() == 1 and "<C-p>" or "<S-Tab>" end, { expr = true })
