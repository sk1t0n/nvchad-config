local options = {
  formatters_by_ft = {
    php = { "pint", "php_cs_fixer", stop_after_first = true },
    blade = { "blade-formatter" },
    go = { "gofmt", "goimports", "golines" },
    rust = { "rustfmt" },
    lua = { "stylua" },
    yaml = { "yamlfmt" },
    sql = { "sqlfmt" },
  },

  format_on_save = {
    lsp_fallback = true,
  },
}

return options
