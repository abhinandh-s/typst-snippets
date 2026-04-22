# Typst Snippets

Snippets collection for Typst.

## Install

Use your plugin manager of choice, e.g.

### With Lazy.nvim

```lua
{ "abhinandh-s/typst-snippets" }
```

> [!WARNING]
> If you're using LuaSnip make sure to use
> `require("luasnip.loaders.from_vscode").lazy_load()`, and add
> `typst-snippets` as a dependency for LuaSnip, otherwise snippets might not
> be detected. If you don't use `lazy_load()` you might notice a slower
> startup-time
>
> ```lua
> {
>   "L3MON4D3/LuaSnip",
>   dependencies = { "abhinandh-s/typst-snippets" },
> }
> ```

### With Packer

```lua
use "abhinandh-s/typst-snippets"
```

### With vim-plug

```vim
Plug "abhinandh-s/typst-snippets"
```

### With coc.nvim

```vim
:CocInstall https://github.com/abhinandh-s/typst-snippets@main
```

## Usage

This collection of snippets should work with any snippet engine that supports
loading vscode snippets. Like for example:

- [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [coc-snippets](https://github.com/neoclide/coc-snippets)

## Thanks to all contributors

<a href="https://github.com/abhinandh-s/typst-snippets/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=abhinandh-s/typst-snippets" />
</a>
