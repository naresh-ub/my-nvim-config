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
  -- File name for music metadata files
  s(
    { trig = "fll", snippetType = "autosnippet" },
    fmt(
      [[
          file: "{}"
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
  -- Title for music metadata files
  s(
    { trig = "tt", snippetType = "autosnippet" },
    fmt(
      [[
          title: "{}"
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
  -- Artist for music metadata files
  s(
    { trig = "aa", snippetType = "autosnippet" },
    fmt(
      [[
          artist: "{}"
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
  -- Album for music metadata files
  s(
    { trig = "all", snippetType = "autosnippet" },
    fmt(
      [[
          album: "{}"
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
  -- Year for music metadata files
  s(
    { trig = "yy", snippetType = "autosnippet" },
    fmt(
      [[
          year: {}
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
  -- Genre for music metadata files
  s(
    { trig = "gg", snippetType = "autosnippet" },
    fmt(
      [[
          genre: "{}"
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
  -- Featured artist for music metadata files
  s(
    { trig = "ftt", snippetType = "autosnippet" },
    fmt(
      [[
          featured_artist: "{}"
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
  -- URL for music metadata files
  s(
    { trig = "uu", snippetType = "autosnippet" },
    fmt(
      [[
          url: "{}"
        ]],
      {
        d(1, get_visual),
      }
    ),
    { condition = line_begin }
  ),
}
