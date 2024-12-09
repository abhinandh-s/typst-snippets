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

local function generate_bullet_list_snippet()
  return s({
      trig = "ul", -- Trigger for unordered list
      snippetType = "snippet",
      desc = "Unordered list",
      wordTrig = true
    },
    {
      t("- "), i(1), -- List item 1
      t({ "", "- " }), i(2), -- List item 2
      t({ "", "- " }), i(3)  -- List item 3
    }
  )
end

-- Generate snippets for headers h1 to h7
local markup_snippets = {}
markup_snippets.snippets = {}

for level = 1, 7 do
  table.insert(markup_snippets.snippets, generate_header_snippet(level))
end

table.insert(markup_snippets.snippets, generate_bullet_list_snippet())

return markup_snippets
