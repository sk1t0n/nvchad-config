local nvim_data = vim.fn.stdpath "data"

if os.getenv "OS" == "Windows_NT" then
  nvim_data = nvim_data:gsub("\\", "/")
end

require("dap-vscode-js").setup {
  debugger_path = nvim_data .. "/lazy/vscode-js-debug",
  adapters = { "node" },
}
require("resession").setup()
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
require("actions-preview").setup {
  telescope = {
    sorting_strategy = "ascending",
    layout_strategy = "vertical",
    layout_config = {
      width = 0.8,
      height = 0.9,
      prompt_position = "top",
      preview_cutoff = 20,
      preview_height = function(_, _, max_lines)
        return max_lines - 15
      end,
    },
  },
}
require("treesj").setup()
require("codeium").setup()
require("inlay-hints").setup()
require("refactoring").setup {
  prompt_func_return_type = {
    go = true,
  },
  prompt_func_param_type = {
    go = true,
  },
}
