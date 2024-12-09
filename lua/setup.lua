require("dressing").setup(require "configs.dressing_config")
require("gitsigns").setup(require "configs.gitsigns_config")
require("mason-lspconfig").setup()
require("nvim-ts-autotag").setup()
require("better_escape").setup()
require("ibl").setup()
require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}
require("configs.neo_tree").setup()
