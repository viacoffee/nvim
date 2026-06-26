require("nvchad.configs.lspconfig").defaults()

local servers = {
  "jedi_language_server",
  "rubocop",
  "bashls",
  "rust-analyzer",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
