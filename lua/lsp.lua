-- Servers (install the binaries yourself, e.g. via your package manager)
vim.lsp.enable {
  "jedi_language_server",
  "rubocop",
  "bashls",
  "rust_analyzer",
}

-- LSP navigation + native completion, set per buffer on attach
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local map = function(keys, fn, desc)
      vim.keymap.set("n", keys, fn, { buffer = ev.buf, desc = "LSP " .. desc })
    end

    map("gd", vim.lsp.buf.definition, "Go to definition")
    map("gD", vim.lsp.buf.declaration, "Go to declaration")
    map("gi", vim.lsp.buf.implementation, "Go to implementation")
    map("gr", vim.lsp.buf.references, "References")
    map("K", vim.lsp.buf.hover, "Hover")
    map("<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("<leader>ra", vim.lsp.buf.rename, "Rename")

    -- native autocompletion (no cmp plugin needed on 0.11+)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method "textDocument/completion" then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})
