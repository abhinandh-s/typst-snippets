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

### with native plugin manager (blink.cmp)

```lua 
vim.pack.add({
  { src = 'https://github.com/L3MON4D3/LuaSnip', version = 'v2.5.0' },
  'https://github.com/rafamadriz/friendly-snippets',
  'https://github.com/abhinandh-s/typst-snippets',
})

require("luasnip.loaders.from_vscode").load()

require('blink.cmp').setup({
  snippets = { preset = 'luasnip' },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
})
```

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


## Indentation in Snippets

This snippet collection uses **tab characters (`\t`)** for indentation, not spaces.

### Why Tabs?

Using tabs for indentation offers several key benefits:

1. **Personalization** – Every developer can configure their editor to display tabs at their preferred width (2, 4, 8 spaces, etc.) without changing the actual file. What you see as 2 spaces, another developer can see as 8 spaces — the same file works for everyone.
2. **Portability** – Tabs work consistently across different editors, operating systems, and team environments. Copy-pasting code between projects doesn't break indentation.
3. **Clean diffs** – Since the number of tab characters doesn't change when someone adjusts their display settings, version control diffs remain clean and readable.
4. **File size** – One tab character takes less space than 2-4 spaces, which adds up in large codebases.

### The Golden Rule

**Tabs for indentation, spaces for alignment**.

- Use **tabs** at the beginning of lines to indicate nesting levels.
- Use **spaces** to align elements within a line (e.g., continuing a statement, aligning comments).

This separation ensures that indentation adapts to individual preferences while alignment remains visually consistent for everyone.

## Thanks to all contributors

- [Nekketsu](https://github.com/Nekketsu) - [issue #1](https://github.com/abhinandh-s/typst-snippets/issues/1)
- [yorik1984](https://github.com/yorik1984) - [issue #2](https://github.com/abhinandh-s/typst-snippets/issues/2)
