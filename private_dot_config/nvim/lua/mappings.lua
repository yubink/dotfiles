require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })

-- disable terminals
unmap("n", "<leader>h")
unmap("n", "<leader>v")
-- disable ctrl+c from copying the ENTIRE file into clipboard!!
unmap("n", "<C-c>")

local gitsigns = require('gitsigns')
map('n', '<leader>gd', gitsigns.diffthis, { desc = "git diff"})
map('n', '<leader>gD', function() gitsigns.diffthis('~') end, { desc = "git diff --staged"} )

vim.opt.foldmethod = "expr"
--vim.opt.foldlevelstart = 2
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
