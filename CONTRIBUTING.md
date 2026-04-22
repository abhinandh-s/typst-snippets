# Contributing to Typst Snippets

Thank you for helping improve Typst snippets!

## Snippet Locations
Please add your snippets to the appropriate file in the `snippets/` directory:
- `layout.json`: Page rules, headings, and structure.
- `visualize.json`: Tables, images, and shapes.
- `markup.json`: Text formatting and lists.
- `maths.json`: Math mode symbols and functions.

> [!NOTE]
> create new directory if necessary

## How to Add a Snippet
1. Open the relevant `.json` file.
2. Add your snippet using the standard VS Code format:

```json
   "Snippet Name": {
     "prefix": "trigger",
     "body": ["#function(${1:placeholder})$0"],
     "description": "What it does"
   }
```

## Guides

- [creating a snippet](https://code.visualstudio.com/docs/editing/userdefinedsnippets#_creating-your-own-snippets)
- [snippets guide](https://code.visualstudio.com/api/language-extensions/snippet-guide)
