# nvchad_config

This is a user configuration for Neovim based on [NvChad](https://github.com/NvChad/starter). Plugins for Go, PHP, Ruby, Rust, Zig, JavaScript, TypeScript, Lua, HTML, CSS, JSON, YAML, Docker, Markdown are configured.

- The configured plugins:
  - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (syntax highlighting),
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) (autocompletion: LSP, Snippets ([LuaSnip](https://github.com/L3MON4D3/LuaSnip), [Friendly Snippets](https://github.com/rafamadriz/friendly-snippets)), AI ([Codeium](https://github.com/Exafunction/codeium.nvim))),
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (LSP servers: Go ([gopls](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/gopls.lua), [golangci-lint-langserver](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/golangci_lint_ls.lua)), PHP ([Intelephense](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/intelephense.lua)), Ruby ([ruby_lsp](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/ruby_lsp.lua), [rubocop](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/rubocop.lua)), Rust ([rust-analyzer](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/rust_analyzer.lua)), Zig ([zls](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/zls.lua)), JS/TS ([typescript-language-server](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/ts_ls.lua), [biomejs](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/biome.lua)), [Emmet](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/emmet_ls.lua), [Tailwind CSS](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/tailwindcss.lua), [Docker](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/dockerls.lua) and others),
  - [inlay-hints.nvim](https://github.com/simrat39/inlay-hints.nvim) (shows types, names of parameters etc for Go ([gopls](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/gopls.lua)), Rust ([rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)))
  - [conform.nvim](https://github.com/stevearc/conform.nvim) (automatic formatting of code ([golines](https://mason-registry.dev/registry/list?search=golines#golines), [PHP CS Fixer](https://mason-registry.dev/registry/list?search=php-cs-fixer#php-cs-fixer), [rufo](https://mason-registry.dev/registry/list?search=rufo#rufo), [rustfmt](https://github.com/rust-lang/rustfmt), [zls](https://github.com/zigtools/zls), [biomejs](https://mason-registry.dev/registry/list?search=biome#biome)), they need be installed using Mason or in another way, for JS/TS you need add the configuration file [biome.json](https://github.com/sk1t0n/nvchad_config/blob/master/biome.json) in the root folder, for YAML you need add the configuration file [yamlfmt.yml](https://github.com/sk1t0n/nvchad_config/blob/master/yamlfmt.yml) in the root folder, for PHP you may add the configuration file [.php-cs-fixer.dist.php](https://github.com/sk1t0n/nvchad_config/blob/master/.php-cs-fixer.dist.php) in the root folder),
  - [nvim-lint](https://github.com/mfussenegger/nvim-lint) (code check for compliance with standards for Go ([golangci-lint](https://mason-registry.dev/registry/list?search=golangci#golangci-lint)), PHP ([PHP CS Fixer](https://mason-registry.dev/registry/list?search=php-cs-fixer#php-cs-fixer), [phpstan](https://mason-registry.dev/registry/list?search=phpstan#phpstan)), Ruby ([rubocop](https://mason-registry.dev/registry/list?search=rubocop#rubocop)), JS/TS ([biomejs](https://mason-registry.dev/registry/list?search=biome#biome)), they need be installed using Mason or in another way),
  - [nvim-dap](https://github.com/mfussenegger/nvim-dap) (debugging for Go ([delve](https://github.com/go-delve/delve/tree/master/Documentation/installation)), PHP ([vscode-php-debug](https://mason-registry.dev/registry/list?search=php-debug-adapter#php-debug-adapter)) - it need be installed using Mason),
  - [neotest](https://github.com/nvim-neotest/neotest) (run tests for Go ([neotest-golang](https://github.com/fredrikaverpil/neotest-golang)), PHP ([neotest-pest](https://github.com/V13Axel/neotest-pest)), Rust ([neotest-rust](https://github.com/rouge8/neotest-rust), [Nextest](https://github.com/nextest-rs/nextest)))
  - others (Git ([lazygit.nvim](https://github.com/kdheepak/lazygit.nvim), [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)), [resession.nvim](https://github.com/stevearc/resession.nvim), [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim), [actions-preview.nvim](https://github.com/aznhe21/actions-preview.nvim), [TreeSJ](https://github.com/Wansmer/treesj), [Comment.nvim](https://github.com/numToStr/Comment.nvim), [Todo Comments](https://github.com/folke/todo-comments.nvim), [Zen Mode](https://github.com/folke/zen-mode.nvim), [project.nvim](https://github.com/ahmedkhalf/project.nvim), [glow.nvim](https://github.com/ellisonleao/glow.nvim), [garbage-day.nvim](https://github.com/Zeioth/garbage-day.nvim), [Neoscroll](https://github.com/karb94/neoscroll.nvim) etc)
- [Override mappings](#mappings).
- Change [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) to [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)  (file system management).

## ⚡ Requirements

- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) - for to support icons in fonts

  Example configuration file for [Alacritty](https://alacritty.org/index.html)

  ```toml
  # https://github.com/alacritty/alacritty/tree/master#configuration

  [window]

  padding.x = 5
  padding.y = 5

  opacity = 0.92
  blur = true

  decorations = "Full"
  decorations_theme_variant = "Dark" # "Light"

  [font]

  size = 15.0
  normal.family = "JetBrainsMono Nerd Font"
  ```

- [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)

## 🛠️ Installation

### Linux/Mac OS (Unix)

**Make a backup of your current nvim and shared folder**.

```sh
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

**Clone the repository**.

```sh
git clone --depth=1 https://github.com/sk1t0n/nvchad_config ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

**Install Mason packages**.

```sh
nvim
```

- `:MasonInstallAll` - install all required packages (LSP, Linters, Formatters)
- `:MasonInstall js-debug-adapter`, `:MasonInstall php-debug-adapter` - install debug adapters for JS/TS, PHP
- `go install github.com/nametake/golangci-lint-langserver@latest` and `:MasonInstall golangcilint` - install lint server and client for Go

### Windows (Powershell)

**Make a backup of your current nvim and nvim-data folder**.

```pwsh
Rename-Item -Path $env:LOCALAPPDATA\nvim -NewName $env:LOCALAPPDATA\nvim.bak
Rename-Item -Path $env:LOCALAPPDATA\nvim-data -NewName $env:LOCALAPPDATA\nvim-data.bak
```

**Clone the repository**.

```pwsh
git clone --depth=1 https://github.com/sk1t0n/nvchad_config $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

**Install Mason packages**.

```sh
nvim
```

- `:MasonInstallAll` - install all required packages (LSP, Linters, Formatters)
- `:MasonInstall js-debug-adapter`, `:MasonInstall php-debug-adapter` - install debug adapters for JS/TS, PHP
- `go install github.com/nametake/golangci-lint-langserver@latest` and `:MasonInstall golangcilint` - install lint server and client for Go

## Mappings

| mode | key                             | description                                                                                                                                                                                               |
| ---- | ------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| n, v | \<Space>h                       | mappings                                                                                                                                                                                                  |
| n    | \<Space>wK                      | WhichKey all keymaps                                                                                                                                                                                      |
| n    | \<Space>wk                      | WhichKey query lookup (for example `<leader>w`)                                                                                                                                                           |
| n, v | \<Space>/                       | toggle comment                                                                                                                                                                                            |
| n    | gc                              | different options for creating comments                                                                                                                                                                   |
| n    | \[t                             | previous todo comment                                                                                                                                                                                     |
| n    | \]t                             | next todo comment                                                                                                                                                                                         |
| n    | \<Ctrl> + \\                    | format file if automatic formatting is disabled                                                                                                                                                           |
| i    | jj                              | \<Esc>                                                                                                                                                                                                    |
| i    | \<Ctrl> + b                     | move beginning of line                                                                                                                                                                                    |
| i    | \<Ctrl> + e                     | move end of line                                                                                                                                                                                          |
| n    | \<Ctrl> + y/u/b                 | Neoscroll back 2/11/23 lines                                                                                                                                                                              |
| n    | \<Ctrl> + e/d/f                 | Neoscroll forward 2/11/23 lines                                                                                                                                                                           |
| n    | zt/zz/zb                        | Neoscroll top/center/bottom this line                                                                                                                                                                     |
| n    | s                               | Leap forward to                                                                                                                                                                                           |
| n    | S                               | Leap backward to                                                                                                                                                                                          |
| i    | \<Ctrl> + h or \<Left>          | move left                                                                                                                                                                                                 |
| i    | \<Ctrl> + l or \<Right>         | move right                                                                                                                                                                                                |
| i    | \<Ctrl> + j or \<Down>          | move down                                                                                                                                                                                                 |
| i    | \<Ctrl> + k or \<Up>            | move up                                                                                                                                                                                                   |
| n    | \<Ctrl> + \<Up>                 | decrease window height                                                                                                                                                                                    |
| n    | \<Ctrl> + \<Down>               | increase window height                                                                                                                                                                                    |
| n    | \<Ctrl> + \<Left>               | decrease window width                                                                                                                                                                                     |
| n    | \<Ctrl> + \<Right>              | increase window width                                                                                                                                                                                     |
| n    | \<Ctrl> + h                     | switch window left                                                                                                                                                                                        |
| n    | \<Ctrl> + l                     | switch window right                                                                                                                                                                                       |
| n    | \<Ctrl> + j                     | switch window down                                                                                                                                                                                        |
| n    | \<Ctrl> + k                     | switch window up                                                                                                                                                                                          |
| n    | \|                              | add horizontal window (split)                                                                                                                                                                             |
| n    | \                               | add vertical window (vsplit)                                                                                                                                                                              |
| n    | \<Space>e                       | toggle Neotree (? - Neotree Help)                                                                                                                                                                         |
| n    | \<Ctrl> + \<Shift> + \<Up/Down> | switch tabs (`:tabnew file.txt` - open file.txt in a new tab or Neotree `t` (`S` - split, `s` - vsplit), tabs and window splits are saved in the session, but buffers are not (only 1 buffer per window)) |
| n    | \<Space>ss                      | session save                                                                                                                                                                                              |
| n    | \<Space>sl                      | session load                                                                                                                                                                                              |
| n    | \<Space>sd                      | session delete                                                                                                                                                                                            |
| n    | \<Space>q (alternative `:q`)    | quit window (closing all windows will close the tab)                                                                                                                                                      |
| n    | \<Space>Q                       | exit Neovim                                                                                                                                                                                               |
| n    | \<Tab>                          | go to the next buffer in the window                                                                                                                                                                       |
| n    | \<Shift> + \<Tab>               | go to the previous buffer in the window                                                                                                                                                                   |
| n    | \<Space>c                       | buffer close                                                                                                                                                                                              |
| n    | \<Space>bc                      | close all buffers except current                                                                                                                                                                          |
| n    | \<Space>bC                      | close all buffers (closing all buffers will close the window, but not the tab)                                                                                                                            |
| n    | \<Space>n                       | buffer new                                                                                                                                                                                                |
| n    | \<Ctrl> + s                     | save file                                                                                                                                                                                                 |
| n    | \<Ctrl> + c                     | copy whole file                                                                                                                                                                                           |
| n, t | \<Alt> + v                      | toggle vertical terminal                                                                                                                                                                                  |
| n, t | \<Alt> + h                      | toggle horizontal terminal                                                                                                                                                                                |
| n, t | \<Alt> + i                      | toggle floating terminal                                                                                                                                                                                  |
| t    | \<Ctrl> + x                     | escape terminal mode                                                                                                                                                                                      |
| i    | \<Alt> + \[                     | Codeium previous completion                                                                                                                                                                               |
| i    | \<Alt> + \]                     | Codeium next completion                                                                                                                                                                                   |
| i    | \<Tab>                          | Codeium accept completion                                                                                                                                                                                 |
| n    | \<Space>p                       | Mason                                                                                                                                                                                                     |
| n    | \<Space>pm                      | preview markdown in current buffer                                                                                                                                                                        |
| n    | \<Space>z                       | Zen Mode                                                                                                                                                                                                  |
| n    | \<Space>g                       | LazyGit                                                                                                                                                                                                   |
| n    | \<Space>fp                      | Telescope find recent projects                                                                                                                                                                            |
| n    | \<Space>ff                      | Telescope find files                                                                                                                                                                                      |
| n    | \<Space>fa                      | Telescope find all files                                                                                                                                                                                  |
| n    | \<Space>fw                      | Telescope find files by word                                                                                                                                                                              |
| n    | \<Space>fb                      | Telescope find buffers                                                                                                                                                                                    |
| n    | \<Space>fh                      | Telescope help page                                                                                                                                                                                       |
| n    | \<Space>fm                      | Telescope find marks                                                                                                                                                                                      |
| n    | \<Space>fo                      | Telescope find old files                                                                                                                                                                                  |
| n    | \<Space>fz                      | Telescope find in current buffer                                                                                                                                                                          |
| n    | \<Space>fc                      | Telescope git commits                                                                                                                                                                                     |
| n    | \<Space>fs                      | Telescope git status                                                                                                                                                                                      |
| n    | \<Space>ft                      | Telescope NvChad themes                                                                                                                                                                                   |
| n    | \<Space>du                      | toggle debug ui                                                                                                                                                                                           |
| n    | \<Space>db                      | toggle debug breakpoint                                                                                                                                                                                   |
| n    | \<Space>ds                      | start/stop debug                                                                                                                                                                                          |
| n    | \<Space>dd                      | disconnect debug                                                                                                                                                                                          |
| n    | \<Space>di                      | debug step into                                                                                                                                                                                           |
| n    | \<Space>do                      | debug step over                                                                                                                                                                                           |
| n    | \<Space>dp                      | debug step out                                                                                                                                                                                            |
| n    | gd                              | go to definition                                                                                                                                                                                          |
| n    | gD                              | go to declaration                                                                                                                                                                                         |
| n    | gi                              | go to implementation                                                                                                                                                                                      |
| n    | \<Space>xs                      | Trouble toggle symbols                                                                                                                                                                                    |
| n    | \<Space>xl                      | Trouble toggle LSP definitions, references                                                                                                                                                                |
| n    | \<Space>xd                      | Trouble toggle diagnostics                                                                                                                                                                                |
| n    | \[d                             | previous diagnostic                                                                                                                                                                                       |
| n    | \]d                             | next diagnostic                                                                                                                                                                                           |
| n    | \<Space>ld                      | LSP/Linter diagnostic loclist                                                                                                                                                                             |
| n    | \<Space>ldf                     | LSP/Linter diagnostic float                                                                                                                                                                               |
| n, v | \<Space>la                      | LSP code action                                                                                                                                                                                           |
| n    | \<Space>lr                      | LSP references                                                                                                                                                                                            |
| n    | \<Space>lR                      | LSP rename in buffer                                                                                                                                                                                      |
| n    | \<Space>lh                      | LSP hover                                                                                                                                                                                                 |
| n    | \<Space>ls                      | LSP signature help                                                                                                                                                                                        |
| n    | \<Space>lws                     | LSP workspace symbol                                                                                                                                                                                      |
| n    | \<Space>rb                      | splitting/joining blocks of code                                                                                                                                                                          |
| n, v | \<Space>rr                      | select Refactor                                                                                                                                                                                           |
| n    | \<Space>tt                      | run the nearest test                                                                                                                                                                                      |
| n    | \<Space>to                      | displays output of test                                                                                                                                                                                   |
| n    | \<Space>tf                      | run the current file                                                                                                                                                                                      |
| n    | \<Space>td                      | run the directory test                                                                                                                                                                                    |
| n    | \<Space>ts                      | displays test suite structure from project root (r - run test)                                                                                                                                            |
