local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep

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
}

return model_snippets
