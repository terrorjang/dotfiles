-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

--  Increment / decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

-- Delete a word backwards
keymaps.set("n", "dw", "vb_d")

-- Select all
keymaps.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymaps.set("n", "<C-m>", "C-i", opts)

-- New tap
keymaps.set("n", "te", ":tabedit", opts)
keymaps.set("n", "<tab>", ":BufferLineCycleNext<CR>", opts)
keymaps.set("n", "<s-tab>", ":BufferLineCyclePrev<CR>", opts)

-- split window
keymaps.set("n", "ss", ":split<Return>", opts)
keymaps.set("n", "sv", ":vsplit<Return>", opts)

-- move windows
keymaps.set("n", "sh", "<C-w>h")
keymaps.set("n", "sk", "<C-w>k")
keymaps.set("n", "sj", "<C-w>j")
keymaps.set("n", "sl", "<C-w>l")

-- resize window
keymaps.set("n", "<leader><left>", "<C-w><")
keymaps.set("n", "<leader><right>", "<C-w>>")
keymaps.set("n", "<leader><up>", "<C-w>+")
keymaps.set("n", "<leader><down>", "<C-w>-")

-- diagnosis
keymaps.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- rest client
keymaps.set("n", "<leader>rr", "<Plug>RestNvim")
keymaps.set("n", "<leader>rp", "<Plug>RestNvimPreview")
keymaps.set("n", "<leader>rl", "<Plug>RestNvimLast")
