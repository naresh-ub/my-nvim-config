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

return {
  -- Combining text and insert nodes to create basic LaTeX commands
  s({ trig = "td", dscr = "Expands 'tt' into '\texttt{}'" }, {
    t("--TODO:"), -- remember: backslashes need to be escaped
  }),
}
