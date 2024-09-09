require("luasnip").filetype_extend("markdown", { "hugo" })

-- local helpers = require('personal.luasnip-helper-funcs')
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local helpers = require("josean.helpers-vimtex")
local get_visual = helpers.get_visual

local line_begin = require("luasnip.extras.expand_conditions").line_begin

-- Return snippet tables
return {
  -- TODO NOTE
  s({ trig = "-td", snippetType = "autosnippet" }, {
    t("**TODO:** "),
  }),
  -- LINK; CAPTURE TEXT IN VISUAL
  s(
    { trig = "LL", wordTrig = true, snippetType = "autosnippet" },
    fmta([[[<>](<>)]], {
      d(1, get_visual),
      i(2),
    })
  ),
  -- LINK; CAPTURE URL IN VISUAL
  s(
    { trig = "LU", wordTrig = true, snippetType = "autosnippet" },
    fmta([[[<>](<>)]], {
      i(1),
      d(2, get_visual),
    })
  ),
  -- BOLDFACE TEXT
  s(
    { trig = "tbb", snippetType = "autosnippet" },
    fmta([[**<>**]], {
      d(1, get_visual),
    })
  ),
  -- ITALIC TEXT
  s(
    { trig = "tii", snippetType = "autosnippet" },
    fmta([[*<>*]], {
      d(1, get_visual),
    })
  ),
  -- UNDERLINED TEXT
  s(
    { trig = "uu", snippetType = "autosnippet" },
    fmt([[<u>{}</u>]], {
      d(1, get_visual),
    })
  ),
  -- Hack to remove indentation in bulleted lists
  s({ trig = "  --", snippetType = "autosnippet" }, { t("- ") }, { condition = line_begin }),
}
