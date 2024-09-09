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
  -- sys
  s({ trig = "isss", snippetType = "autosnippet" }, { t("import sys") }, { condition = line_begin }),
  -- Local constants file
  s({ trig = "icc", snippetType = "autosnippet" }, { t("import constants") }, { condition = line_begin }),
  -- Numpy
  s({ trig = "inpp", snippetType = "autosnippet" }, { t("import numpy as np") }, { condition = line_begin }),
  -- Matplotlib
  s(
    { trig = "impl", snippetType = "autosnippet" },
    { t("import matplotlib.pyplot as plt") },
    { condition = line_begin }
  ),
  -- Pandas
  s({ trig = "ipdd", snippetType = "autosnippet" }, { t("import pandas as pd") }, { condition = line_begin }),
  -- sounddevice
  s({ trig = "isdd", snippetType = "autosnippet" }, { t("import sounddevice as sd") }, { condition = line_begin }),
  -- pathlib
  s({ trig = "ipll", snippetType = "autosnippet" }, { t("from pathlib import Path") }, { condition = line_begin }),
}
