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
  -- np.loadtxt()
  s(
    { trig = "nplt", snippetType = "autosnippet" },
    fmta(
      [[
          np.loadtxt(<>, delimiter='<>')
        ]],
      {
        i(1, "fname"),
        i(2, ","),
      }
    )
  ),
  -- np.savetxt()
  s(
    { trig = "npst", snippetType = "autosnippet" },
    fmta(
      [[
          np.savetxt(<>, <>, delimiter='<>')
        ]],
      {
        i(1, "fname"),
        i(2, "ndarray"),
        i(3, ","),
      }
    )
  ),
}
