vim.g.mapleader = " "

local map = vim.keymap

map.set("n", "<leader>pv", vim.cmd.Ex)

map.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
map.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
map.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
map.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")