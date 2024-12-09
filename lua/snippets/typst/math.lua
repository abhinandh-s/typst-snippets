local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep

local maths_snippets = {}

maths_snippets.snippets = {
  s({
      trig = "maths",
      snippetType = "snippet",
      desc = "maths block",
      wordTrig = true
    },
    {
      t("$ "),
      i(0),
      t(" $"),
    }
  ),
  s({
      trig = "maths.cases",
      snippetType = "snippet",
      desc = "A case distinction.\nContent across different branches can be aligned with the & symbol.",
      wordTrig = true
    },
    {
      t("$ f(x, y) := cases("),
      t({ "", "\t" }),
      t("1 \"if\" (x dot y)/2 <= 0,"),
      t({ "", "\t" }),
      t("2 \"if\" x \"is even\","),
      t({ "", "\t" }),
      t("3 \"if\" x in NN,"),
      t({ "", "\t" }),
      t("4 \"else\","),
      t({ "", "" }),
      t(") $")
    }
  ),
  s({
      trig = "maths.equation",
      snippetType = "snippet",
      desc = "A mathematical equation.\nCan be displayed inline with text or as a separate block.",
      wordTrig = true
    },
    {
      t("$ sum_(k=1)^n k = (n(n+1)) / 2 $"),
      i(0),
    }
  ),
  s({
      trig = "maths.frac",
      snippetType = "snippet",
      desc = "A mathematical fraction.",
      wordTrig = true
    },
    {
      t("$ frac(a, "),
      i(0),
      t("b) $"),
    }
  ),
}

return maths_snippets
