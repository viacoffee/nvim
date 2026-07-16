return {
  -- Colourscheme (onedark, matches your previous look)
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup { style = "darker" }
      require("onedark").load()
    end,
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    -- master (not the 0.1.x release) supports nvim-treesitter's main branch
    branch = "master",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    opts = {
      defaults = {
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        sorting_strategy = "ascending",
        file_ignore_patterns = { "%.git/" },
        layout_config = {
          preview_width = 0.55,
          width = 0.87,
          height = 0.50,
        },
      },
    },
  },

  -- Pin a few files, jump between them
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
    keys = {
      { "<leader>a", function() require("harpoon"):list():add() end, desc = "Harpoon add" },
      { "<leader>h", function() local h = require "harpoon" h.ui:toggle_quick_menu(h:list()) end, desc = "Harpoon menu" },
      { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "Harpoon 1" },
      { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "Harpoon 2" },
      { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "Harpoon 3" },
    },
  },

  -- LSP server default configs (cmd/root/filetypes); enabled in lua/lsp.lua
  { "neovim/nvim-lspconfig" },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter").install {
        "lua", "python", "ruby", "rust", "go", "templ", "bash", "css", "html", "json", "markdown", "vim", "vimdoc",
      }
      -- start highlighting when a parser is available for the buffer
      vim.api.nvim_create_autocmd("FileType", {
        callback = function() pcall(vim.treesitter.start) end,
      })
    end,
  },

  -- Formatting
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        ruby = { "rubyfmt" },
      },
    },
  },
}
