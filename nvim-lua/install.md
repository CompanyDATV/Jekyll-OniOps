---
layout: post
author: nulldoot2k
title: Install Nvim Lua
permalink: /nvim-lua/install-nvim-lua
---

After a long time in development neovim 0.5 was finally released as a stable version.
Among the new exciting features we have better lua support and the promise of a stable api to create our configuration using this language.
So today I'm going to share with you everything I learned while I was migrating my own configuration from vimscript to lua.

### `Step 1`: Download Neovim For Windows

Windows

> Click Here : **_[NEOVIM](https://github.com/neovim/neovim/wiki/Installing-Neovim)_** to download!

### `Step 2`: Download packer from us!!!

Windows

> git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

### `Step 3`: Download repo from us!!!

Windows

> git clone --branch master https://github.com/CompanyDATV/neovim "$env:LOCALAPPDATA\nvim"
> or
> git clone https://codeberg.org/nulldoot2k/Neovim-Lua.git ~/.config/nvim/.

### `Step 4`: Install packet

Windows

> nvim lua\datv\plugins\init.lua
>
> Type `:PackerSync`

## For Linux

### Download nvim for linux from Source

- curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
- chmod u+x nvim.appimage
- ./nvim.appimage

- ./nvim.appimage --appimage-extract
- ./squashfs-root/AppRun --version
- mv squashfs-root /
- ln -s /squashfs-root/AppRun /usr/bin/nvim
- nvim

### Install Packer from source

> git clone --depth 1 https://github.com/wbthomason/packer.nvim/ $(pwd)/site/pack/packer/start/packer.nvim

> git clone --branch master https://github.com/CompanyDATV/neovim ~\.config\nvim --depth 1

or

> git clone https://codeberg.org/nulldoot2k/Neovim-Lua.git ~/.config/nvim/.

After : nvim Type `:PackerSync`

## Donate me:

- ViettinBank: 103868801400

# END
