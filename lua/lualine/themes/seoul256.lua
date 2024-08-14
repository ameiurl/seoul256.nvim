--local colors = require("seoul256/colors")
--
--local M = {}
--
--M.normal = {
--    a = { fg = colors.c237, bg = colors.c173, gui = "bold" }, --orange
--    b = { fg = colors.c95, bg = colors.c187 },
--    c = { fg = colors.c187, bg = colors.c95, gui = "bold"},
--}
--
--M.insert = {
--	a = { fg = colors.c237, bg = colors.c108, gui = "bold" }, --green
--	b = { fg = colors.c95, bg = colors.c187 },
--}
--
--M.visual = {
--	a = { fg = colors.c237, bg = colors.purple, gui = "bold" }, --red
--	b = { fg = colors.c95, bg = colors.c187 },
--}
--
--M.replace = {
--	a = { fg = colors.c237, bg = colors.c174, gui = "bold" }, --light red
--	b = { fg = colors.c95, bg = colors.c187 },
--}
--
--M.command = {
--	a = { fg = colors.c237, bg = colors.c179, gui = "bold" }, --yellow
--    b = { fg = colors.c95, bg = colors.c187 },
--}
--
--M.inactive = {													--idk
--	a = { fg = colors.c240, bg = colors.c237, gui = "bold" },
--	b = { fg = colors.c240, bg = colors.c237 },
--	c = { fg = colors.c187, bg = colors.c95, gui = "bold" },
--}
--
--return M

local colors = {
  color5   = '#d7afaf',
  color6   = '#666656',
  color7   = '#808070',
  color10  = '#87af87',
  color13  = '#df5f87',
  color14  = '#87afaf',
  color0   = '#e8e8d3',
  color1   = '#4e4e43',
  color4   = '#30302c',
}

return {
  visual = {
    b = { fg = colors.color0, bg = colors.color1 },
    a = { fg = colors.color4, bg = colors.color5, gui = 'bold' },
  },
  inactive = {
    b = { fg = colors.color6, bg = colors.color4 },
    c = { fg = colors.color6, bg = colors.color4 },
    a = { fg = colors.color7, bg = colors.color4, gui = 'bold' },
  },
  insert = {
    b = { fg = colors.color0, bg = colors.color1 },
    a = { fg = colors.color4, bg = colors.color10, gui = 'bold' },
  },
  replace = {
    b = { fg = colors.color0, bg = colors.color1 },
    a = { fg = colors.color4, bg = colors.color13, gui = 'bold' },
  },
  normal = {
    b = { fg = colors.color0, bg = colors.color1 },
    c = { fg = colors.color7, bg = colors.color4 },
    a = { fg = colors.color4, bg = colors.color14, gui = 'bold' },
  },
}
--red: c95
--yellow: c187
-- good fg grey: c252
