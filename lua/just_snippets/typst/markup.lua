local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Helper function to generate header snippets
local function generate_header_snippet(level)
  return s({
      trig = "h" .. level, -- Trigger: h1, h2, h3, etc.
      snippetType = "snippet",
      desc = "Add header level " .. level,
      wordTrig = true
    },
    {
      t(string.rep("=", level) .. " "), -- Repeat "=" `level` times
      i(1)  -- Insert node for the header text
    }
  )
end

-- Generate snippets for headers h1 to h7
local markup_snippets = {}
markup_snippets.snippets = {}

for level = 1, 7 do
  table.insert(markup_snippets.snippets, generate_header_snippet(level))
end

return markup_snippets
