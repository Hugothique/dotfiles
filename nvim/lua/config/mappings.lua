-- mappings, including plugins

local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Buffers
vim.keymap.set("n", "bh", ":bprev<cr>", {desc = "Go to left buffer"})
vim.keymap.set("n", "bl", ":bnext<cr>", {desc = "Go to right buffer"})
vim.keymap.set("n", "<leader>bd", ":bd<cr>", {desc = "Delete buffer"})
vim.keymap.set("n", "<leader>e", ":NnnPicker<cr>")

-- Diagnostics
vim.keymap.set("n", "<leader>dd", 
	function() vim.diagnostic.open_float() end, 
	{desc = "Show diagnostic in floating window"}
)
vim.keymap.set("n", "<leader>dn", function() vim.diagnostic.goto_next() end, {desc = "Show next diagnostic"})
vim.keymap.set("n", "<leader>dp", function() vim.diagnostic.goto_prev() end, {desc = "Show previous diagnostic"})
vim.keymap.set('n', '<leader>ds', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })

-- Terminal
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm direction=float<cr>")
vim.keymap.set("t", "<C-t>", "<cmd>ToggleTerm direction=float<cr>")
