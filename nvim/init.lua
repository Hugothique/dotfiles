vim.g.mapleader = "<Space>"
vim.g.maplocalleader = "<Space>"

vim.opt.termguicolors = true
require("config.lazy")
require("config.mappings")

require("bufferline").setup{}
