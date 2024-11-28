require("lint").linters_by_ft = {
  javascript = { "biomejs" },
  typescript = { "biomejs" },
  typescriptreact = { "biomejs" },
  javascriptreact = { "biomejs" },
  php = { "phpstan" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
