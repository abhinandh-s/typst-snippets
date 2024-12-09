local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Helper function to generate header snippets
local function generate_headings(level)
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

local function generate_bullet_lists(level)
  local items = {}

  table.insert(items, t("- "))
  table.insert(items, i(0))
  for lev = 2, level do
    table.insert(items, t({ "", "- " }))
    table.insert(items, i(lev - 1)) -- TEST: should be $0 $1 $2 $3
  end

  return s({
      trig = "list.b" .. level, -- Trigger: ul1, ul2, ul3, etc.
      snippetType = "snippet",
      desc = "Unordered list with " .. level .. " items",
      wordTrig = true
    },
    items
  )
end

local function generate_numbered_lists(level)
  local items = {}

  table.insert(items, t("+ "))
  table.insert(items, i(0))
  for lev = 2, level do
    table.insert(items, t({ "", "+ " }))
    table.insert(items, i(lev)) -- TEST: this is like $0 $2 $3 $4
  end

  return s({
      trig = "list.n" .. level, -- Trigger: ul1, ul2, ul3, etc.
      snippetType = "snippet",
      desc = "Unordered list with " .. level .. " items",
      wordTrig = true
    },
    items
  )
end

local function generate_strong_emphasis()
  local items = {}
  table.insert(items, t("*"))
  table.insert(items, i(0))
  table.insert(items, t("*"))
  return s({
      trig = "emp.s",
      snippetType = "snippet",
      desc = "Strong emphasis",
      wordTrig = true
    },
    items
  )
end

local function generate_emphasis()
  local items = {}
  table.insert(items, t("_"))
  table.insert(items, i(0))
  table.insert(items, t("_"))
  return s({
      trig = "emp",
      snippetType = "snippet",
      desc = "Emphasis",
      wordTrig = true
    },
    items
  )
end

local function generate_raw_text()
  local items = {}
  table.insert(items, t("`"))
  table.insert(items, i(0))
  table.insert(items, t("`"))
  return s({
      trig = "raw",
      snippetType = "snippet",
      desc = "Raw text",
      wordTrig = true
    },
    items
  )
end

local function generate_lable()
  local items = {}
  table.insert(items, t("<"))
  table.insert(items, i(0))
  table.insert(items, t(">"))
  return s({
      trig = "lable",
      snippetType = "snippet",
      desc = "Label",
      wordTrig = true
    },
    items
  )
end

local function generate_reference()
  local items = {}
  table.insert(items, t("@"))
  table.insert(items, i(0))
  return s({
      trig = "reference",
      snippetType = "snippet",
      desc = "Reference",
      wordTrig = true
    },
    items
  )
end

local function generate_link()
  local items = {}
  table.insert(items, t("#link("))
  table.insert(items, i(0))
  table.insert(items, t(")["))
  table.insert(items, i(1))
  table.insert(items, t("]"))
  return s({
      trig = "link",
      snippetType = "snippet",
      desc = "Add links",
      wordTrig = true
    },
    items
  )
end

local function generate_internal_link()
  local items = {}
  table.insert(items, t("#link(("))
  table.insert(items, i(0))
  table.insert(items, t("page: 1, x: 0pt, y: 0pt))["))
  table.insert(items, i(1))
  table.insert(items, t("]"))
  return s({
      trig = "link_internal",
      snippetType = "snippet",
      desc = "Add internal links",
      wordTrig = true
    },
    items
  )
end

local function generate_lable_links()
  local items = {}
  table.insert(items, t("#link(<"))
  table.insert(items, i(0))
  table.insert(items, t(">)["))
  table.insert(items, i(1))
  table.insert(items, t("]"))
  return s({
      trig = "link_label",
      snippetType = "snippet",
      desc = "Add lable links",
      wordTrig = true
    },
    items
  )
end

local function generate_term_list()
  local items = {}
  table.insert(items, t("/ Term: "))
  table.insert(items, i(0))
  return s({
      trig = "termlist",
      snippetType = "snippet",
      desc = "Add Term list",
      wordTrig = true
    },
    items
  )
end

local function generate_comment_line()
  local items = {}
  table.insert(items, t("// "))
  table.insert(items, i(0))
  return s({
      trig = "commentl",
      snippetType = "snippet",
      desc = "Add Line Comment",
      wordTrig = true
    },
    items
  )
end

local function generate_comment_block()
  local items = {}
  table.insert(items, t("/* "))
  table.insert(items, i(0))
  table.insert(items, t(" */"))
  return s({
      trig = "commentb",
      snippetType = "snippet",
      desc = "Add Comment Block",
      wordTrig = true
    },
    items
  )
end

local markup_snippets = {}
markup_snippets.snippets = {}

for level = 1, 7 do
  table.insert(markup_snippets.snippets, generate_headings(level))
end

for level = 1, 7 do
  table.insert(markup_snippets.snippets, generate_bullet_lists(level))
end

for level = 1, 7 do
  table.insert(markup_snippets.snippets, generate_numbered_lists(level))
end

table.insert(markup_snippets.snippets, generate_strong_emphasis())
table.insert(markup_snippets.snippets, generate_emphasis())
table.insert(markup_snippets.snippets, generate_raw_text())
table.insert(markup_snippets.snippets, generate_lable())
table.insert(markup_snippets.snippets, generate_reference())
table.insert(markup_snippets.snippets, generate_link())
table.insert(markup_snippets.snippets, generate_internal_link())
table.insert(markup_snippets.snippets, generate_lable_links())
table.insert(markup_snippets.snippets, generate_term_list())
table.insert(markup_snippets.snippets, generate_comment_line())
table.insert(markup_snippets.snippets, generate_comment_block())

return markup_snippets
