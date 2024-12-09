local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

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
      t({ "", "" }),
      t(")["),
      i(0),
      t("]")
    }
  ),
  s({
      trig = "pagebreak",
      snippetType = "snippet",
      desc = "A manual page break.",
      wordTrig = true
    },
    {
      t("#pagebreak("),
      t({ "", "\t" }),
      t("weak: false,"),
      t({ "", "\t" }),
      t("to: \"${0:odd}\","),
      t({ "", "" }),
      t(")"),
    }
  ),
  s({
      trig = "box",
      snippetType = "snippet",
      desc = "An inline-level container that sizes content.",
      wordTrig = true
    },
    {
      t("#box("),
      t({ "", "\t" }),
      t("inset: 4pt,"),
      t({ "", "" }),
      t(")["),
      i(0),
      t("]")
    }
  ),
}

return layout_snippets
