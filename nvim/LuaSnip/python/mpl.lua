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
  -- NEW FIGURE, AXES
  s(
    { trig = "faxx", snippetType = "autosnippet" },
    fmta([[fig, ax = plt.subplots(<>)]], {
      d(1, get_visual),
    }),
    { condition = line_begin }
  ),
  -- plt.
  s({ trig = ";p", snippetType = "autosnippet" }, { t("plt.") }),
  -- plt.show()
  s({ trig = "plss", snippetType = "autosnippet" }, fmt([[plt.show()]], {}), { condition = line_begin }),
  -- plt.savefig()
  s({ trig = "plsf", snippetType = "autosnippet" }, fmt([[plt.savefig({})]], { i(1) }), { condition = line_begin }),
  -- plt.tight_layout()
  s({ trig = "pltl", snippetType = "autosnippet" }, fmta([[plt.tight_layout()]], {}), { condition = line_begin }),
  -- AXIS PLOT
  s(
    { trig = "axpl", snippetType = "autosnippet" },
    fmta([[ax.plot(<>)]], {
      d(1, get_visual),
    }),
    { condition = line_begin }
  ),
  -- AXIS SET_XLABEL
  s(
    { trig = "axxl", snippetType = "autosnippet" },
    fmta([[ax.set_xlabel(<>)]], {
      d(1, get_visual),
    }),
    { condition = line_begin }
  ),
  -- AXIS SET_YLABEL
  s(
    { trig = "axyl", snippetType = "autosnippet" },
    fmta([[ax.set_ylabel(<>)]], {
      d(1, get_visual),
    }),
    { condition = line_begin }
  ),
  -- AXIS SET_TITLE
  s(
    { trig = "axst", snippetType = "autosnippet" },
    fmta([[ax.set_title(<>)]], {
      d(1, get_visual),
    }),
    { condition = line_begin }
  ),
  -- TIGHT LAYOUT
  s({ trig = "ttl", snippetType = "autosnippet" }, { t("plt.tight_layout()") }, { condition = line_begin }),
  -- STEM PLOT
  s(
    { trig = "stem", snippetType = "autosnippet" },
    fmta(
      [[
          (markers, stemlines, baseline) = ax.stem(<>)
          plt.setp(markers, marker='o', markerfacecolor=<>, markeredgecolor="none", markersize=6)
          plt.setp(baseline, color=<>, linestyle="-")
          plt.setp(stemlines, linestyle="--", color=<>, linewidth=2)
        ]],
      {
        i(1),
        i(2),
        i(3),
        i(4),
      }
    ),
    { condition = line_begin }
  ),
  -- REMOVE SPINE FUNCTION
  s(
    { trig = "spines" },
    fmta(
      [[
        def remove_spines(ax):
            """
            Removes top and right spines from the inputted Matplotlib axis. This is for
            aesthetic purposes only and has no practical function.
            """
            ax.spines['top'].set_visible(False)
            ax.spines['right'].set_visible(False)
            ax.get_xaxis().tick_bottom()
            ax.get_yaxis().tick_left()
        ]],
      {}
    ),
    { condition = line_begin }
  ),
}
