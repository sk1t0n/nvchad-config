-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "emmet_ls",
  "cssls",
  "css_variables",
  "cssmodules_ls",
  "tailwindcss",
  "jsonls",
  "biome",
  "ts_ls",
  "intelephense",
  "lua_ls",
  "sqls",
  "marksman",
  "dockerls",
  "docker_compose_language_service",
  "yamlls",
}

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
