return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = function(_, opts)
      opts.on_attach = function(bufnr)
        local api = require "nvim-tree.api"
        local map = vim.keymap.set

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        api.config.mappings.default_on_attach(bufnr)

        -- Splits
        map("n", "ss", api.node.open.horizontal, opts "open split h")
        map("n", "sv", api.node.open.vertical, opts "open split v")

        -- Toggle nvimtree
        map("n", "<leader>e", ":NvimTreeToggle<Return>")

        -- Window navigation
        map("n", "sh", function()
          vim.cmd "wincmd h"
        end, opts "Window Left")

        map("n", "sj", function()
          vim.cmd "wincmd j"
        end, opts "Window Down")

        map("n", "sk", function()
          vim.cmd "wincmd k"
        end, opts "Window Up")

        map("n", "sl", function()
          vim.cmd "wincmd l"
        end, opts "Window Right")
      end
    end,
  },
}
