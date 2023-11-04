vim.api.nvim_create_autocmd("FileType", {
  pattern = {"sh", "go", "rust"},
  command = "setlocal textwidth=80"
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
      -- vim.cmd("highlight BufDimText guibg='NONE' guifg=darkgrey guisp=darkgrey gui='NONE'")

      -- vim-illuminate (highlights every instance of word under the cursor)
      vim.api.nvim_set_hl(0, "illuminatedWord",
                          {fg = "#063970", bg = "#76b5c5"})
      vim.api.nvim_set_hl(0, "LspReferenceText",
                          {fg = "#063970", bg = "#76b5c5"})
      vim.api.nvim_set_hl(0, "LspReferenceWrite",
                          {fg = "#063970", bg = "#76b5c5"})
      vim.api.nvim_set_hl(0, "LspReferenceRead",
                          {fg = "#063970", bg = "#76b5c5"})

      -- eyeliner
      vim.api.nvim_set_hl(0, 'EyelinerPrimary',
                          {fg = "#FF0000", bold = true, underline = true})
      vim.api.nvim_set_hl(0, 'EyelinerSecondary',
                          {fg = "#FFFF00", underline = true})
  end
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("WrapLineInMarkdown", {clear = true}),
  pattern = {"markdown"},
  command = "setlocal wrap"
})
