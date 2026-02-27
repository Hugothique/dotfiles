-- mappings, including plugins

local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
-- map("n", "<S>bh", ":bprev<cr>")
-- map("n", "<S>bl", ":bnext<cr>")
map("n", "<leader>e", ":NnnPicker<cr>")

-- map("n", "<leader>dd", vim.diagnostic.open_float())
-- map("n", "<leader>dn", vim.diagnostic.goto_next())
-- map("n", "<leader>dn", vim.diagnostic.goto_prev())
