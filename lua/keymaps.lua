local map = vim.keymap.set

-- Save / quit
map("n", "<leader>s", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>bd<cr>", { desc = "Close buffer" })

-- File explorer (netrw)
map("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Explorer" })

-- Math - increment/decrement
map("n", "+", "<C-a>", { desc = "Increment number" })
map("n", "-", "<C-x>", { desc = "Decrement number" })

-- Select all
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

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

-- Telescope (fuzzy find)
local t = require "telescope.builtin"
map("n", "<leader>ff", t.find_files, { desc = "Find files" })
map("n", "<leader>fa", function() t.find_files { hidden = true, no_ignore = true } end, { desc = "Find all files" })
map("n", "<leader>fw", t.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", t.buffers, { desc = "Find buffers" })

-- Diagnostics
map("n", "[d", function() vim.diagnostic.jump { count = -1 } end, { desc = "Prev diagnostic" })
map("n", "]d", function() vim.diagnostic.jump { count = 1 } end, { desc = "Next diagnostic" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line diagnostics" })
