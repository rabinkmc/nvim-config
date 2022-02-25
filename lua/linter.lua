local null_ls = require("null-ls")

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

null_ls.setup({
    sources = {
        diagnostics.flake8,
        diagnostics.eslint,
        formatting.black
    },
})
