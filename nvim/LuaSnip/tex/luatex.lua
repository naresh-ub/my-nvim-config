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
  -- tex.sprint
  s(
    { trig = "tpp", snippetType = "autosnippet" },
    fmta(
      [[
        tex.sprint(<>)
      ]],
      {
        d(1, get_visual),
      }
    )
  ),
}
