return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "VeryLazy",
  opts = function()
    local null_ls = require("null-ls")
    local opts = {
      sources = {
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.rustfmt,
      },
    }

    return opts
  end,
}
