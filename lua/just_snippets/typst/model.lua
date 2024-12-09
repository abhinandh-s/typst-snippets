local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep

local model_snippets = {}

-- Helper function to generate table snippets
local function generate_table_snippet(rows, cols)
  local columns = {}
  for c = 1, cols do
    table.insert(columns, "[* " .. i(c) .. " *]") -- Add insert node for each column
  end
  
  local rows_nodes = {}
  for r = 1, rows do
    table.insert(rows_nodes, t("{ " .. table.concat(columns, ", ") .. " },"))
  end
  
  return s({
      trig = "table" .. rows .. "x" .. cols,  -- Trigger like table2x1, table3x1, etc.
      snippetType = "snippet",
      desc = "A table with " .. rows .. " rows and " .. cols .. " columns",
      wordTrig = true
    },
    {
      t("#table("),
      t({ "", "\t" }),
      t("columns: (1fr, 1fr, 1fr),"),  -- You can customize the column widths here
      t({ "", "\t" }),
      t("inset: 10pt,"),
      t({ "", "\t" }),
      t("align: horizon,"),
      t({ "", "\t" }),
      t("table.header("),
      t({ "", "\t\t" }),
      t(table.concat(columns, ", ")),  -- First row with column names
      t({ "", "\t" }),
      t("),"),
      t({ "", "" }),
      table.unpack(rows_nodes)  -- Insert rows with data
    }
  )
end

-- Generate table snippets from 2x1 to 5x5
model_snippets.snippets = {}
for rows = 2, 5 do
  for cols = 1, 5 do
    table.insert(model_snippets.snippets, generate_table_snippet(rows, cols))
  end
end

-- model_snippets.snippets = {
--   s({
--     trig = "table",
--     snippetType = "snippet",
--     desc = "A table of items.",
--     wordTrig = true
--   },
--     {
--       t("#table("),
--       t({ "", "\t" }),
--       t("columns: (1fr, 1fr, 1fr),"),
--       t({ "", "\t" }),
--       t("inset: 10pt,"),
--       t({ "", "\t" }),
--       t("align: horizon,"),
--       t({ "", "\t" }),
--       t("table.header("),
--       t({ "", "\t\t" }),
--       t("[*"), i(1), t("*], [*"), i(2), t("*], [*"), i(3), t("*],"),
--       t({ "", "\t" }),
--       t("),"),
--       t({ "", "\t" }),
--       t("["), i(4), t("], ["), i(5), t("], ["), i(6), t("],"),
--       t({ "", "\t" }),
--       t("["), i(7), t("], ["), i(8), t("], ["), i(9), t("]"),
--       t({ "", "" }),
--       t("),")
--     }
--   ),
-- }

return model_snippets
