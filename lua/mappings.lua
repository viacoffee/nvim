require "nvchad.mappings"

local map = vim.keymap.set
local mapdel = vim.keymap.del
local opts = { noremap = true, silent = true }

-- remove some nvchad defaults
mapdel("n", "<leader>x")

-- Save file
map("n", "<leader>s", "<cmd> w <cr>", { desc = "General Save file" })

-- Close buffer
map("n", "<leader>q", function()
  --require("bufdelete").bufdelete(0, true)
  --vim.cmd("bd")
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer close" })

-- Math - Increment/decrement
map("n", "+", "<C-a>", { desc = "Math Increment number" })
map("n", "-", "<C-x>", { desc = "Math Decrement number" })

-- General - Select all
map("n", "<C-a>", "gg<S-v>G", { desc = "General Select all" })

-- Window movement
map("n", "sk", "<C-w>k", { desc = "Window Left" })
map("n", "sj", "<C-w>j", { desc = "Window Down" })
map("n", "sh", "<C-w>h", { desc = "Window Up" })
map("n", "sl", "<C-w>l", { desc = "Window Right" })

-- Split window
map("n", "ss", ":split<Return>", vim.tbl_extend("force", opts, { desc = "Window Split" }))
map("n", "sv", ":vsplit<Return>", vim.tbl_extend("force", opts, { desc = "Window Split vertically" }))

-- Close window(s)
map("n", "sc", ":close<Return>", vim.tbl_extend("force", opts, { desc = "Window Close current" }))
map("n", "so", ":only<Return>", vim.tbl_extend("force", opts, { desc = "Window Close others" }))

-- Resize window
map({ "n", "v" }, "<C-h>", "<C-w>>", { desc = "Window Resize left" })
map({ "n", "v" }, "<C-l>", "<C-w><", { desc = "Window Resize right" })
map({ "n", "v" }, "<C-j>", "<C-w>-", { desc = "Window Resize up" })
map({ "n", "v" }, "<C-k>", "<C-w>+", { desc = "Window Resize down" })
