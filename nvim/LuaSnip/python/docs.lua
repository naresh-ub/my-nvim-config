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
  -- FUNCTION PARAMETERS for use in docstrings, with heading
  s(
    { trig = "PP", snippetType = "autosnippet" },
    fmta(
      [[
      Parameters
      ----------
      <> : <>
          <>
      ]],
      {
        i(1),
        i(2),
        i(3),
      }
    ),
    { condition = line_begin }
  ),
  -- FUNCTION RETURNS for use in docstrings, with heading
  s(
    { trig = "RR", snippetType = "autosnippet" },
    fmta(
      [[
          Returns
          -------
          <> : <>
              <>
        ]],
      {
        i(1),
        i(2),
        i(3),
      }
    ),
    { condition = line_begin }
  ),
  -- NOTES docstring section
  s(
    { trig = "NN", snippetType = "autosnippet" },
    fmta(
      [[
          NOTES
          -----
        ]],
      {}
    ),
    { condition = line_begin }
  ),
  -- PRE-CONDITION docstring section
  s(
    { trig = "prr", snippetType = "autosnippet" },
    fmta(
      [[
          Pre-Conditions
          --------------
        ]],
      {}
    ),
    { condition = line_begin }
  ),
  -- -- POST-CONDITION docstring section
  -- s({trig="pss", snippetType="autosnippet"},
  --   fmta(
  --     [[
  --       Post-Conditions
  --       ---------------
  --     ]],
  --     { }
  --   ),
  --   {condition = line_begin}
  -- ),
  -- FUNCTION PARAMETER for use in docstrings
  s(
    { trig = "::", snippetType = "autosnippet" },
    fmta(
      [[
      <> : <>
          <>
      ]],
      {
        i(1),
        i(2),
        i(3),
      }
    ),
    { condition = line_begin }
  ),
  -- LONG STRING OF DASHES FOR COMMENTS
  s(
    { trig = "--", snippetType = "autosnippet" },
    { t("# -------------------------------------------------------------------- #") },
    { condition = line_begin }
  ),
  -- MULTILINE COMMENT
  s(
    { trig = "cc", snippetType = "autosnippet" },
    fmta(
      [[
      """
      <>
      """
      ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
}
