# nvchad_config

This is user configuration for [NvChad](https://github.com/NvChad/starter).

## ⚡ Requirements

- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) - for to support icons in fonts
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
| n    | \<Space>e               | NvimTree focus window                           |
| n    | \<Ctrl> + n             | NvimTree toggle window                          |
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
| n    | \<Space>dn              | debug step over                                 |
| n    | gD                      | go to declaration                               |
| n    | gd                      | go to definition                                |
| n    | gi                      | go to implementation                            |
| n    | \<Space>xd              | Trouble toggle diagnostics                      |
| n    | \<Space>xs              | Trouble toggle symbols                          |
| n    | \<Space>xl              | Trouble toggle LSP definitions, references      |
| n, v | \<Space>la              | LSP code action                                 |
| n    | \<Space>ld              | LSP diagnostic                                  |
| n    | \<Space>lr              | LSP references                                  |
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
