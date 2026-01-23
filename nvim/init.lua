vim.g.mapleader = "<Space>"
vim.g.maplocalleader = "<Space>"

vim.opt.termguicolors = true
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

-- vim.diagnostic.config({ virtual_text = true })
vim.diagnostic.config({ virtual_lines = true })

-- C/C++ {{{
vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "-j=" .. 2,
    "--background-index",
    "--clang-tidy",
    "--inlay-hints",
    "--fallback-style=llvm",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--header-insertion-decorators",
    "--pch-storage=memory",
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_markers = {
    "CMakeLists.txt",
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git",
    vim.uv.cwd(),
  },
}
vim.lsp.enable("clangd")
-- }}}

