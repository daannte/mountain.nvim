# 🏔️ Mountain.nvim

A Lua port of the [Mountaineer](https://github.com/TheNiteCoder/mountaineer.vim)
colour scheme with my own modifications.

## Fuji

![Fuji Style](./assets/fuji.png)

### 🍭 Extras

- [Alacritty](https://github.com/alacritty/alacritty) ([alacritty](extras/alacritty))
- [Discord](https://discord.com/) ([discord](extras/discord))

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
vim.cmd[[colorscheme mountain]]

-- Alternatively
require("mountain").load()
```

## ⚙️ Configuration

>❗️ Set the configuration BEFORE loading the color scheme

[Mountain](https://github.com/daannte/mountain.nvim) uses the default options,
unless `setup` is explicitly called.

```lua
require("mountain").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
    
  --- The theme comes in 1 style right now.
  --- Default: fuji
  style = "fuji",
  --- If the background should be transparent.
  transparent = false,
  --- Whether italics should be used for keywords and more.
  italics = false,
  --- Disable italic fonts for comments.
  disable_italic_comments = false,
  --- By default, the sign column background is the same as the as normal text
  --- background, but you can use a grey background by setting this to `"grey"`.
  sign_column_background = "none",
  --- The contrast of line numbers, indent lines, etc. Options are `"high"` or
  --- `"low"`.
  --- Default: low
  ui_contrast = "low",
  --- Dim inactive windows.
  dim_inactive = false,
  --- style for floating windows. Options are `"bright"` or `"dim"`
  --- Default: bright
  float_style = "bright",
  --- You can override specific highlights to use other groups or a hex colour.
  --- This function will be called with the highlights and colour palette tables.
  --- @param highlight_groups Highlights
  --- @param palette Palette
  on_highlights = function(highlight_groups, palette) end,
  --- You can override colours in the palette to use different hex colours.
  --- This function will be called once the base and background colours have
  --- been mixed on the palette.
  --- @param palette Palette
  colours_override = function(palette) end,
})
```

## Inspiration

- [Mountaineer](https://github.com/TheNiteCoder/mountaineer.vim)
- [Everforest](https://github.com/neanias/everforest-nvim)
- [Solarized Osaka](https://github.com/craftzdog/solarized-osaka.nvim)
