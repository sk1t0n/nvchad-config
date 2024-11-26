# nvchad_config

This is user configuration for [NvChad](https://github.com/NvChad/starter).

## ⚡ Requirements

- [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
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
nvim
```

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
nvim
```
