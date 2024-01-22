local colors = require("seoul256/colors")

local M = {}

M.normal = {
    a = { fg = colors.c237, bg = colors.c173, gui = "bold" }, --orange
    b = { fg = colors.c187, bg = colors.c95 },
    c = { fg = colors.c95, bg = colors.c187, gui = "bold"},
}

M.insert = {
	a = { fg = colors.c237, bg = colors.c108, gui = "bold" }, --green
	b = { fg = colors.c187, bg = colors.c95 },
}

M.visual = {
	a = { fg = colors.c237, bg = colors.purple, gui = "bold" }, --red
	b = { fg = colors.c187, bg = colors.c95 },
}

M.replace = {
	a = { fg = colors.c237, bg = colors.c174, gui = "bold" }, --light red
	b = { fg = colors.c187, bg = colors.c95 },
}

M.command = {
	a = { fg = colors.c237, bg = colors.c179, gui = "bold" }, --yellow
	b = { fg = colors.c187, bg = colors.c95 },
}

M.inactive = {													--idk
	a = { fg = colors.c240, bg = colors.c237, gui = "bold" },
	b = { fg = colors.c240, bg = colors.c237 },
	c = { fg = colors.c187, bg = colors.c95, gui = "bold" },
}

return M
--red: c95
--yellow: c187
-- good fg grey: c252
