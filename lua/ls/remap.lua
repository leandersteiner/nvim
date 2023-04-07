vim.g.mapleader = " "

local map = vim.keymap

map.set("n", "<leader>pv", vim.cmd.Ex)

map.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
map.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
map.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
map.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
map.set("n", "<leader>fg", "<cmd>Telescope git_files<CR>")

map.set("n", "<leader>th", ":ToggleTerm size=20 direction=horizontal<CR>")
map.set("n", "<leader>tv", ":ToggleTerm size=50 direction=vertical<CR>")
map.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')