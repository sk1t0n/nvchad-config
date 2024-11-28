local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "biomejs" },
    php = { "php_cs_fixer" },
    html = { "biomejs" },
    css = { "biomejs" },
  },

  format_on_save = {
    lsp_fallback = true,
  },
}

return options
