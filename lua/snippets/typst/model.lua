local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local model_snippets = {}

model_snippets.snippets = {
  s({
      trig = "table",
      snippetType = "snippet",
      desc = "A table of items.",
      wordTrig = true
    },
    {
      t("#table("),
      t({ "", "\t" }),
      t("columns: (1fr, 1fr, 1fr),"),
      t({ "", "\t" }),
      t("inset: 10pt,"),
      t({ "", "\t" }),
      t("align: horizon,"),
      t({ "", "\t" }),
      t("table.header("),
      t({ "", "\t\t" }),
      t("[*"), i(1), t("*], [*"), i(2), t("*], [*"), i(3), t("*],"),
      t({ "", "\t" }),
      t("),"),
      t({ "", "\t" }),
      t("["), i(4), t("], ["), i(5), t("], ["), i(6), t("],"),
      t({ "", "\t" }),
      t("["), i(7), t("], ["), i(8), t("], ["), i(9), t("]"),
      t({ "", "" }),
      t("),")
    }
  ),
  s({
      trig = "lorem",
      snippetType = "snippet",
      desc = "This function yields a Latin-like Lorem Ipsum blind text with the given number of words.",
      wordTrig = true
    },
    {
      t("#lorem("),
      i(0, "num"),
      t(")")
    }
  ),
  s({
      trig = "img",
      snippetType = "snippet",
      desc = "Add images",
      wordTrig = true
    },
    {
      t("#image(\""),
      i(0, "image.png"),
      t("\", width: 80%"),
      t(")")
    }
  ),
  s({
      trig = "img_figure",
      snippetType = "snippet",
      desc = "Add images as figure",
      wordTrig = true
    },
    {
      t("#figure("),
      t({ "", "\t" }),
      t("image(\""),
      i(1, "image.png"),
      t("\", width: 80%"),
      t("),"),
      t({ "", "\t" }),
      t("caption: ["),
      t({ "", "\t\t" }),
      i(0, "caption"),
      t({ "", "\t" }),
      t("]"),
      t({ "", "" }),
      t("),")
    }
  ),
  s({
      trig = "highlight",
      snippetType = "snippet",
      desc = "Add highlight",
      wordTrig = true
    },
    {
      t("#highlight["),
      i(0, "important test"),
      t("]")
    }
  ),
  s({
      trig = "highlight_extra",
      snippetType = "snippet",
      desc = "Add highlight with full options",
      wordTrig = true
    },
    {
      t("#highlight("),
      t({ "", "\t" }),
      t("fill: blue,"),
      t({ "", "\t" }),
      t("stroke: fuchsia,"),
      t({ "", "\t" }),
      t("extent: 4pt,"),
      t({ "", "\t" }),
      t("radius: 5pt,"),
      t({ "", "\t" }),
      t("top-edge: \"ascender\","),
      t({ "", "\t" }),
      t("bottom-edge: \"descender\","),
      t({ "", "" }),
      t(")"),
      t("["),
      i(0, "important test"),
      t("]")
    }
  ),
}

return model_snippets
