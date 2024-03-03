# 🏔️ Mountain.nvim

A Lua port of the [Mountaineer](https://github.com/TheNiteCoder/mountaineer.vim)
colour scheme.

## Fuji

![Fuji Style](./assets/fuji.png)

### 🍭 Extras

- [Alacritty](https://github.com/alacritty/alacritty) ([alacritty](extras/alacritty))

## 📦 Installation

Install the theme with your preferred package manager, such as
[folke/lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "daannte/mountain.nvim",
  lazy = false,
  priority = 999,
  config = function()
    require("mountain").setup({
      -- Your config here
    })
  end,
}
```

## 🚀 Usage

### Vim Script

```vim
colorscheme mountain
```

### [Lua](https://www.lua.org)

```lua
vim.cmd[[colorscheme tokyonight]]

-- Alternatively
require("mountain").load()
```

## ⚙️ Configuration

Working on it!

## Inspiration

- [Mountaineer](https://github.com/TheNiteCoder/mountaineer.vim)
- [Everforest](https://github.com/neanias/everforest-nvim)
- [Solarized Osaka](https://github.com/craftzdog/solarized-osaka.nvim)
