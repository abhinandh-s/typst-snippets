local typst_snippets = {}

-- Import snippets from different files
typst_snippets.model = require("snippets.typst.model").snippets
typst_snippets.markup = require("snippets.typst.markup").snippets
typst_snippets.math = require("snippets.typst.layout").snippets

return typst_snippets
