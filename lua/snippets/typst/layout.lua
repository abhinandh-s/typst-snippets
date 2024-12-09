local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep

local layout_snippets = {}

layout_snippets.snippets = {
  s({
      trig = "alignc",
      snippetType = "snippet",
      desc = "Align contents center.",
      wordTrig = true
    },
    {
      t("#align(center)["),
      i(0),
      t("]")
    }
  ),
  s({
      trig = "alignrb",
      snippetType = "snippet",
      desc = "Align contents towards right bottom.",
      wordTrig = true
    },
    {
      t("#align(right + bottom)["),
      i(0),
      t("]")
    }
  ),
  s({
      trig = "block",
      snippetType = "snippet",
      desc = "A block-level container.",
      wordTrig = true
    },
    {
      t("#block("),
      t({ "", "\t" }),
      t("fill: luma(230),"),
      t({ "", "\t" }),
      t("inset: 8pt,"),
      t({ "", "\t" }),
      t("radius: 4pt,"),
      t({ "", "\t" }),
      t(")["),
      i(0),
      t("]")
    }
  ),
}

return layout_snippets
