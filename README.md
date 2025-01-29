# nvchad_config

This is a user configuration for Neovim based on [NvChad](https://github.com/NvChad/starter). Plugins for Go, PHP, JavaScript, Typescript, Lua, HTML, CSS, JSON, YAML, Docker are configured.

- The plugins are configured:
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) (code completion),
  - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (syntax highlighting),
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (LSP servers: Go, PHP, JS, TS, [Emmet](https://emmet.io), [Tailwind CSS](https://tailwindcss.com), [Docker](https://www.docker.com) and others),
  - [conform.nvim](https://github.com/stevearc/conform.nvim) (automatic formatting of code, for JS/TS you need add the configuration file [biome.json](https://github.com/sk1t0n/nvchad_config/blob/master/biome.json) in the root folder, for YAML you need add the configuration file [yamlfmt.yml](https://github.com/sk1t0n/nvchad_config/blob/master/yamlfmt.yml) in the root folder, for PHP you may add the configuration file [.php-cs-fixer.dist.php](https://github.com/sk1t0n/nvchad_config/blob/master/.php-cs-fixer.dist.php) in the root folder),
  - [nvim-dap](https://github.com/mfussenegger/nvim-dap) (debugging for Go, PHP),
  - [nvim-lint](https://github.com/mfussenegger/nvim-lint) (code check for compliance with standards),
  - others (Git, [Codeium (AI)](https://github.com/Exafunction/codeium.nvim), [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim), [actions-preview.nvim](https://github.com/aznhe21/actions-preview.nvim), [inlay-hints.nvim](https://github.com/simrat39/inlay-hints.nvim), [TreeSJ](https://github.com/Wansmer/treesj), [Todo Comments](https://github.com/folke/todo-comments.nvim) etc)
- [Override mappings](#mappings).
- Change [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) to [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim).

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
- `:MasonInstall js-debug-adapter`, `:MasonInstall php-debug-adapter` - install debug adapters for JS/TS and PHP

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
- `:MasonInstall js-debug-adapter`, `:MasonInstall php-debug-adapter` - install debug adapters for JS/TS and PHP

## Mappings

| mode | key                     | description                                     |
| ---- | ----------------------- | ----------------------------------------------- |
| n, v | \<Space>h               | mappings                                        |
| n, v | \<Space>/               | toggle comment                                  |
| n    | \<Ctrl> + \\            | format file if automatic formatting is disabled |
| i    | jj                      | \<Esc>                                          |
| i    | \<Ctrl> + b             | move beginning of line                          |
| i    | \<Ctrl> + e             | move end of line                                |
| i    | \<Ctrl> + h or \<Left>  | move left                                       |
| i    | \<Ctrl> + l or \<Right> | move right                                      |
| i    | \<Ctrl> + j or \<Down>  | move down                                       |
| i    | \<Ctrl> + k or \<Up>    | move up                                         |
| n    | \\                      | add vertical window                             |
| n    | \|                      | add horizontal window                           |
| n    | \<Ctrl> + \<Up>         | decrease window height                          |
| n    | \<Ctrl> + \<Down>       | increase window height                          |
| n    | \<Ctrl> + \<Left>       | decrease window width                           |
| n    | \<Ctrl> + \<Right>      | increase window width                           |
| n    | \<Ctrl> + h             | switch window left                              |
| n    | \<Ctrl> + l             | switch window right                             |
| n    | \<Ctrl> + j             | switch window down                              |
| n    | \<Ctrl> + k             | switch window up                                |
| n    | \<Space>n               | buffer new                                      |
| n    | \<Ctrl> + s             | save file                                       |
| n    | \<Ctrl> + c             | copy whole file                                 |
| n    | \<Tab>                  | buffer goto next                                |
| n    | \<Shift> + \<Tab>       | buffer goto previous                            |
| n    | \<Space>c               | buffer close                                    |
| n    | \<Space>bc              | close all buffers except current                |
| n    | \<Space>bC              | close all buffers                               |
| n, t | \<Alt> + v              | toggle vertical terminal                        |
| n, t | \<Alt> + h              | toggle horizontal terminal                      |
| n, t | \<Alt> + i              | toggle floating terminal                        |
| t    | \<Ctrl> + x             | escape terminal mode                            |
| n    | \<Space>q               | quit window                                     |
| n    | \<Space>Q               | exit Neovim                                     |
| n    | \<Space>p               | Mason                                           |
| n    | \<Space>e               | toggle Neotree (? - Neotree Help)               |
| n    | \<Space>ff              | Telescope find files                            |
| n    | \<Space>fa              | Telescope find all files                        |
| n    | \<Space>fw              | Telescope find files by word                    |
| n    | \<Space>fb              | Telescope find buffers                          |
| n    | \<Space>fh              | Telescope help page                             |
| n    | \<Space>fm              | Telescope find marks                            |
| n    | \<Space>fo              | Telescope find old files                        |
| n    | \<Space>fz              | Telescope find in current buffer                |
| n    | \<Space>fc              | Telescope git commits                           |
| n    | \<Space>fs              | Telescope git status                            |
| n    | \<Space>ft              | Telescope NvChad themes                         |
| n    | \<Space>du              | toggle debug ui                                 |
| n    | \<Space>db              | toggle debug breakpoint                         |
| n    | \<Space>ds              | start/stop debug                                |
| n    | \<Space>dd              | disconnect debug                                |
| n    | \<Space>do              | debug step over                                 |
| n    | \<Space>di              | debug step into                                 |
| n    | \<Space>dp              | debug step out                                  |
| n    | gD                      | go to declaration                               |
| n    | gd                      | go to definition                                |
| n    | gi                      | go to implementation                            |
| n    | \<Space>xd              | Trouble toggle diagnostics                      |
| n    | \<Space>xs              | Trouble toggle symbols                          |
| n    | \<Space>xl              | Trouble toggle LSP definitions, references      |
| n, v | \<Space>la              | LSP code action                                 |
| n    | \<Space>ld              | LSP diagnostic                                  |
| n    | \<Space>lr              | LSP references                                  |
| n    | \<Space>lR              | LSP rename in buffer                            |
| n    | \<Space>ls              | LSP signature help                              |
| n    | bt                      | splitting/joining blocks of code                |
| n, v | \<Space>rr              | select Refactor                                 |
| n    | \<Space>gd              | Git diff                                        |
| n    | \<Space>gl              | Git log                                         |
| n    | \<Space>gs              | Git status                                      |
| n    | [d                      | previous diagnostic                             |
| n    | ]d                      | next diagnostic                                 |
| n    | [t                      | previous todo comment                           |
| n    | ]t                      | next todo comment                               |
| n    | s                       | Leap forward to                                 |
| n    | S                       | Leap backward to                                |
| n    | \<Ctrl> + b             | CMP scroll screen back                          |
| n    | \<Ctrl> + f             | CMP scroll screen forward                       |
| n    | \<Space>wK              | WhichKey all keymaps                            |
| n    | \<Space>wk              | WhichKey query lookup                           |
