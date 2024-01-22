local colors = require("seoul256/colors")

local M = {}

M.normal = {
    a = { fg = colors.c237, bg = colors.c173, gui = "bold" },
    b = { fg = colors.c95, bg = colors.c236 },
    c = { fg = colors.c252, bg = colors.selection },
}

M.insert = {
	a = { fg = colors.c237, bg = colors.c108, gui = "bold" },
	b = { fg = colors.c95, bg = colors.c236 },
}

M.visual = {
	a = { fg = colors.c237, bg = colors.purple, gui = "bold" },
	b = { fg = colors.c95, bg = colors.c236 },
}

M.replace = {
	a = { fg = colors.c237, bg = colors.c174, gui = "bold" },
	b = { fg = colors.c95, bg = colors.c236 },
}

M.command = {
    a = { fg = colors.c237, bg = colors.c179, gui = "bold" },
    b = { fg = colors.c95, bg = colors.c236 },
}

M.inactive = {
    a = { fg = colors.c240, bg = colors.c237, gui = "bold" },
    b = { fg = colors.c240, bg = colors.c237 },
    c = { fg = colors.c240, bg = colors.c23 },
}

return M
