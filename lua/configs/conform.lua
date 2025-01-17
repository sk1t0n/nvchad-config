local options = {
  formatters_by_ft = {
    php = { "php_cs_fixer" },
    go = { "golines" },
    yaml = { "yamlfmt" },
  },

  format_on_save = {
    lsp_fallback = true,
  },
}

return options
