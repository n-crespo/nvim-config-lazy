
# Neovim Configuration

My Neovim configuration based on [LazyVim](https://www.lazyvim.org), with added
plugins and LSPs to extend its functionality. Every configuration was done with
transparency in mind. 

  ![start screen](./assets/starter.png)

## Interesting Things

My favorite things about this configuration are (in no particular order):

* the 90% of [LazyVim](https://www.lazyvim.org) that I don't have disabled
* all my keymaps in `./lua/config/keymaps.lua`
* the ~25 ms startup time (more like 60ms in regular Windows)
  * see the last 2 auto commands in [here](./lua/config/autocmds.lua) to speed up WSL
* these plugins:
  * [spider](https://github.com/chrisgrieser/nvim-spider) (better `w`, `e`, and `b`)
  * [mini.files](https://github.com/echasnovski/mini.files) (less intrusive version of oil.nvim)
  * [mini.indentscope](https://github.com/echasnovski/mini.indentscope) (with an instant animation)
  * [mini.starter](https://github.com/echasnovski/mini.starter) (fast and minimal)
  * [mini.tabline](https://github.com/echasnovski/mini.tabline)(fast and minimal)
  * [highlight-undo](https://github.com/tzachar/highlight-undo.nvim) (surprisingly very useful)
  * [betterTerm](https://github.com/CRAG666/betterTerm.nvim) (better `:term`)
  * [flatten.nvim](https://github.com/willothy/flatten.nvim) (no more nested neovim instances)(used with autojump and betterTerm)
  * [onedarkpro](https://github.com/olimorris/onedarkpro.nvim) (transparent + super customizable)
    * transparent everything
* LSP and formatter support for R-markdown, C++, Java, and Python (mostly thanks to LazyVim)
  * see `./lua/plugins/markdown.lua` and `./lua/plugins/markdowntable.lua` for an amazing markdown editing experience (no LSP needed)

> [!Note]
> Many of the plugins I use are not visible in `lua/plugins/` because I use the
> lazyvim configuration which already comes with lots of plugins. You can see
> these in the [LazyVim repo](https://github.com/LazyVim/LazyVim). I also have
> disabled some plugins that come with LazyVim in the `overrides.lua` file.


## Structure

This configuration is structured so that:

1) Vim specific configurations are in the
  `./lua/config/` folder  in the same way preconfigured LazyVim is structured, and

2) All plugin configurations are in the `./lua/plugins/` folder, with each
plugin having its own file. This way, removing a plugin is as
simple as deleting its file. This also makes editing the configuration easier
because the LSP doesn't have to read a massive lua file whenever I want to edit
a plugin configuration. See below:

<details>
  <summary><b>File Structure</b></summary>

```
.
├── ftplugin
│  └── java.lua
├── lua
│  ├── config
│  │  ├── autocmds.lua
│  │  ├── keymaps.lua
│  │  ├── lazy.lua
│  │  └── options.lua
│  └── plugins
│     ├── {allplugins}.lua
│     └── ...
├── init.lua
├── lazyvim.json
└── README.md
```

</details>

## Usage

To use this configuration just clone the repo into your `~/.config/nvim` folder.
If you don't know how to do that, you shouldn't be using this in the first
place. Good place to start is kickstart.nvim.

If you're using Windows, stop. Use WSL.

## TODO

- [x] Fix transparent completion window
- [x] Edit Treesitter highlighting for markdown checkboxes
- [x] bordered floating window
- [x] bordered floating terminal
- [x] `require({})` less
- [x] transparent Lualine
- [x] transparent LSP dialogues
