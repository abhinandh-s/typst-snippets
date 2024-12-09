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
      i(1)                              -- Insert node for the header text
    }
  )
end

local function generate_bullet_list_snippet(level)
  -- Create a table to hold the list items
  local items = {}

  -- Add the first list item with only the bullet
  table.insert(items, t({ "", "- " }))
  table.insert(items, i(1)) -- Insert a placeholder for the first item
  -- Generate the rest of the list items based on the level
  for lev = 2, level do
    table.insert(items, t({ "", "- " }))
    table.insert(items, i(lev)) -- Insert a placeholder for each subsequent item
  end

  return s({
    trig = "ul" .. level, -- Trigger: ul1, ul2, ul3, etc.
    snippetType = "snippet",
    desc = "Unordered list with " .. level .. " items",
    wordTrig = true
  },
    items
  )
end

-- Generate snippets for headers h1 to h7
local markup_snippets = {}
markup_snippets.snippets = {}

for level = 1, 7 do
  table.insert(markup_snippets.snippets, generate_header_snippet(level))
end

for level = 1, 7 do
  table.insert(markup_snippets.snippets, generate_bullet_list_snippet(level))
end

return markup_snippets
