-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- vim.lsp.inlay_hint.enable()
local wilder = require("wilder")
wilder.setup({ modes = { ":", "/", "?" } })
