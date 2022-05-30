---
title: Setup NVim Lua
published: true
---

---

After a long time in development neovim 0.5 was finally released as a stable version.
Among the new exciting features we have better lua support and the promise of a stable api to create our configuration using this language.
So today I'm going to share with you everything I learned while I was migrating my own configuration from vimscript to lua.

# **_[[HOME]](https://datv.nulldoot2k.xyz/Setup-NVim-Lua)_** >< **_[[INSTALL]](https://datv.nulldoot2k.xyz/Install)_** >< **_[[SUPPORT]](https://codeberg.org/nulldoot2k/Neovim-Lua#gift_heart-support)_**

## Showcase

<img src="https://user-images.githubusercontent.com/83489434/164731385-aebc4779-6cae-4122-9bfd-455312895553.png">

## Theme Showcase

<img src="/assets/164732842-11bef763-9692-4d62-a059-c282cbc2c026.png">

## Very useful plugins used

<h3> Nvim-tree.lua </h3>

Fast file tree:

<kbd><img src="https://user-images.githubusercontent.com/83489434/164734450-d2c92ae0-18f3-4500-aec2-600f13c2b1d2.png"></kbd>

<h3> Telescope-nvim </h3>

A fuzzy file finder, picker, sorter, previewer and much more:

<kbd><img src="https://user-images.githubusercontent.com/83489434/164734044-b0ef2340-69cc-49b0-a025-2bae6d0329d1.png"></kbd>

<h3> LSP-nvim </h3>

Server LSP:

<kbd><img src="https://user-images.githubusercontent.com/83489434/164735483-c1fb8bce-9024-42eb-b0fb-f2c6aecf0c3e.png"></kbd>

<h3> LuaLine-nvim  </h3>

Highly configurable statusline plugin:

<kbd><img src="https://user-images.githubusercontent.com/83489434/164734797-e906f11e-0a43-4073-a230-2a7118152a9a.png"></kbd>

<h3> Nvim-bufferline.lua </h3>

Better tab implementation:

<kbd><img src="https://raw.githubusercontent.com/siduck/dotfiles/all/rice%20flex/bufferline.png"></kbd>

<h3> Nvim-web-devicons </h3>

Lua fork of Vim Devicons which offers more file icon customisability:

<kbd><img src="https://raw.githubusercontent.com/siduck/dotfiles/all/rice%20flex/image.png"></kbd>

<h3> Nvim-treesitter </h3>

Better syntax highlighting for programming languages (NvChad by default comes with Lua/bash treesitter parsers).

> Without/with Treesitter

<kbd><img src="https://raw.githubusercontent.com/siduck/dotfiles/all/rice%20flex/woTree.png"></kbd>

<h3> Nvim-LazyGit </h3>

Built-in Git for LazyGit besides telescope applied

> LazyGit Neovim

<kbd><img src="https://user-images.githubusercontent.com/83489434/165008439-5b876b69-fb72-4044-934d-1be39b8508c7.png"></kbd>

<h3> Toggleterm Nvim </h3>

A neovim plugin to persist and toggle multiple terminals during an editing session

> Without/with Toggleterm

<kbd><img src="https://user-images.githubusercontent.com/83489434/164736022-fe852db8-1a94-4084-88c6-900a6c4e93ff.png"></kbd>

<h3> Which-key </h3>

WhichKey is a lua plugin for Neovim 0.5 that displays a popup with possible key bindings of the command you started typing.

> Heavily inspired by the original emacs-which-key and vim-which-key.

<kbd><img src="https://user-images.githubusercontent.com/292349/116439438-669f8d00-a804-11eb-9b5b-c7122bd9acac.png"></kbd>

## Features

- Many beautiful themes to choose from.
- Fast plugin loading.
- File navigation with [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua).
- Managing tabs, buffers with [bufferline.nvim](https://github.com/akinsho/bufferline.nvim).
- Beautiful and configurable icons with [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons).
- Pretty and functional statusline with [feline.nvim](https://github.com/Famiu/feline.nvim).
- Git diffs and more with [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) .
- NeoVim Lsp configuration with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
- Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).
- File searching, previewing image and text files and more with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
- Autoclosing braces and html tags with [nvim-autopairs](https://github.com/windwp/nvim-autopairs).
- Indentlines with [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim).
- Useful snippets with [LuaSnip](https://github.com/L3MON4D3/LuaSnip).
- Write Markdown pretty style [Markdown](https://github.com/iamcco/markdown-preview.nvim)
- Solidity Contract Smart BlockChain [Solidity](https://github.com/ethereum/solidity)

## Bloat

To everyone who thinks that DATV-nulldoot2k is bloat: Bloat means different things to everyone.

NvChad has 29 plugins installed by default, yet it is still very fast because it uses the Packer plugin manager.
Packer.nvim allows you to lazy load plugins, meaning they only get loaded when absolutely required.
Furthermore, you can disable plugins you don't use in `chadrc.lua`.

<img src = "https://user-images.githubusercontent.com/83489434/164738303-c91eaa9d-9d89-4f54-a025-0fe4222e0c12.png">

## TODO

DATV is focusing more on improving its already existing plugins and features instead of adding more plugins.
Things you can do to help currently are:

- Improving base plugins configurations
- Debloating the config.
- Adding more themes.

## Warning

If you have an issue with a plugin in DATV, first you should report it to DATV to see if it's an issue with it.

## :gift_heart: Support

- ViettinBank: 103868801400 - SWIFT/BIC Code: ICBVVNVXDDD

## THANK FOR WATCHING MY repo

# LINK: (**[Tutorial](https://youtu.be/AghC8UdFjqQ)**) Youtube
