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

return {
  -- PRINT
  s(
    { trig = "pp", snippetType = "autosnippet" },
    fmta(
      [[
        print(<>)
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
  -- DO RETURN END
  s(
    { trig = "XX", snippetType = "autosnippet" },
    fmta(
      [[
        do return end
        ]],
      {}
    ),
    { condition = line_begin }
  ),
}
