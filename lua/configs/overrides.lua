local M = {}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "eslint_d",
    "prettier",
    "node-debug2-adapter",
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "luadoc",
    "html",
    "css",
    "scss",
    "json",
    "jsonc",
    "jsdoc",
    "javascript",
    "typescript",
    "tsx",
    "vue",
    "markdown",
    "markdown_inline",
    "sql",
    "php",
    "phpdoc",
    "twig",
    "c",
    "dockerfile",
    "editorconfig",
    "git_config",
    "gitattributes",
    "gitignore",
    "toml",
    "yaml",
    "xml",
    "nginx",
    "proto",
    "thrift",
    "robots",
  },
  indent = {
    enable = true,
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
