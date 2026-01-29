vim.g.mapleader = "<Space>"
vim.g.maplocalleader = "<Space>"

vim.opt.termguicolors = true

-- Show line numbers etc
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.cursorline = true

require("config.lazy")
require("config.mappings")

require("bufferline").setup{}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()

    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    require("lint").try_lint()

    -- You can call `try_lint` with a linter name or a list of names to always
    -- run specific linters, independent of the `linters_by_ft` configuration
    -- require("lint").try_lint("cspell")
  end,
})

-- To move in the appropriate plugin
-- vim.diagnostic.config({ virtual_text = true })
vim.diagnostic.config({ virtual_lines = true })

vim.cmd("colorscheme gruvbox")
