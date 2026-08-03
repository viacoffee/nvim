return {
  -- Colourscheme (onedark's highlight groups, repainted with my color palette)
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "darker",
        colors = {
          black = "#12161c",
          bg0 = "#1b212a",
          bg1 = "#212831",
          bg2 = "#2c3540",
          bg3 = "#333d4a",
          bg_d = "#161a20",
          bg_blue = "#6e99c3",
          bg_yellow = "#d9a86c",
          fg = "#a1aab7",
          purple = "#b887c0",
          green = "#99bc76",
          orange = "#d9a86c",
          blue = "#6e99c3",
          yellow = "#eac390",
          cyan = "#70b6b9",
          red = "#d77c73",
          grey = "#79838f",
          light_grey = "#88929f",
          dark_cyan = "#5c9599",
          dark_red = "#ba5e56",
          dark_yellow = "#b39065",
          dark_purple = "#966f9e",
          diff_add = "#232b26",
          diff_delete = "#2d2325",
          diff_change = "#1f2733",
          diff_text = "#2c3b4d",
        },
      }
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

  -- LSP: mason installs the server binaries, mason-lspconfig auto-installs
  -- the list below and enables each one. Keymaps/on-attach live in lua/lsp.lua.
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "jedi_language_server", "rubocop", "bashls", "rust_analyzer",
        "gopls", "templ", "sqlls",
        "lua_ls", "cssls", "html", "jsonls",
      },
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter").install {
        "lua", "python", "ruby", "rust", "go", "templ", "bash", "css", "html", "json", "markdown", "sql", "vim", "vimdoc",
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
