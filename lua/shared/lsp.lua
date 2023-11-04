return function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      group = vim.api.nvim_create_augroup("SharedLspFormatting",
        { clear = true }),
      pattern = "*",
      command = "lua vim.lsp.buf.format()"
    })
  end
end
