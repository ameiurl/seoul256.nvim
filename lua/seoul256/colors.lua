local colors = {
	black = "#dfe0e0",
	blue = "#93b2b2",
	cyan = "#c3a769",
	gray = "#dfe0e0",
	green = "#678568",
	orange = "#67a9aa",
	paleblue = "#c78a69",
	pink = "#d0a39f",
	purple = "#c66d86", --168
	red = "#a07474", --95
	white = "#dfe0e0",
	yellow = "#c3a769",

	accent = "#ce8f6b",
	active = "#545250",
	bg = "#4c4c4c",
	bg_alt = "#545454",
	border = "#414863",
	contrast = "#d4d4d4",
	cursor = "#d8d8d8",
	disabled = "#414863",
	fg = "#dfe0e0",
	highlight = "#347474",
	indentline = "#555555",
	line_numbers = "#8a896a",
	selection = "#347474",
	string = "#93b2b2",
	text = "#565656",

	error = "#a07474",
	link = "#67a9aa",

	-- none = "NONE",

    temp = "#95ff00", --to try out where colors show up


	c16 = "#000000",
	c22 = "#006F00", --DiffAdd [green] - original is worse
	c23 = "#007173", --Visual VisualNOS PmenuThumb [selection]
	c24 = "#007299", --Search
	c25 = "#0074BE",
	c30 = "#009799",
	c31 = "#0099BD",
	c38 = "#00BDDF",
	c52 = "#730B00", --Error ErrorMsg DiffText
	c58 = "#727100",
	c59 = "#727272", --NonText Special
	c65 = "#719872", --Comment PmenuSbar
	c66 = "#719899",
	c67 = "#7299BC",
	c68 = "#719CDF", --Repeat
	c73 = "#6FBCBD", --Constant
	c74 = "#70BDDF",
	c88 = "#9B1300",
	c89 = "#9B1D72",
	c94 = "#9A7200",
	c95 = "#9A7372", --DiffDelete PmenuSel StatusLine StatusLineTerm WildMenu [red] - original is worse not as bad as green
	c96 = "#9A7599",
	c101 = "#999872", --Folded LineNr -> fg = background+1 [line_numbers]
	c103 = "#999ABD", --Boolean
	c108 = "#98BC99", --Statement diffAdded [green(beatiful)]
	c109 = "#98BCBD", --String [string?]
	c110 = "#98BEDE", --Conditional SpellCap [blue*]
	c116 = "#97DDDF", --Structure
	c125 = "#BF2172",
	c131 = "#BE7572", --CursorLineNr
	c137 = "#BE9873", --Delimiter StringDelimiter
	c143 = "#BDBB72", --PreProc
	c144 = "#BDBC98", --FoldColumn
	c145 = "#BDBDBD",
	c151 = "#BCDDBD",
	c152 = "#BCDEDE",
	c153 = "#BCE0FF", --SpellLocal [cyan*]
	c161 = "#E12672", --Exception Todo -> bg = (dark_bg_2) aka background - 2
	c168 = "#E17899", --SpellBad [red*] gute red
	c173 = "#E19972", --Define Macro Include PreCondit ModeMsg MoreMsg [accent]
	c174 = "#E09B99", --Character diffRemoved [red(beatiful)] [pink]
	c179 = "#DFBC72", --Identifier Question WarningMsg SignColumn [yellow]
	c181 = "#E0BEBC", --Underlined Title
	c184 = "#DEDC00",
	c186 = "#DEDD99", --Operator Keyword [purple]
	c187 = "#DFDEBD", --Function Directory StatusLine StatusLineTerm StatusLineNc StatusLineTermNc TablineSel [blue]
	c189 = "#DFDFFF",
	c216 = "#FFBD98", --Special
	c217 = "#FFBFBD", --Identifier [pink]
	c218 = "#FFC0DE", --SpellRare [purple*]
	c220 = "#FFDD00", --IncSearch
	c222 = "#FFDE99", --Number Float [orange]
	c224 = "#FFDFDF",
	c230 = "#FFFFDF",
	c231 = "#FFFFFF",
	c232 = "#060606",
	c233 = "#171717", --background-darkest
	c234 = "#252525", --background
	c235 = "#333233", --background VertSplit (dark_bg_2)
	c236 = "#3F3F3F", --background ColumnColor CursorLine CursorColumn NormalFload Special [bg_alt?] [active]
	c237 = "#4B4B4B", --background default Ignore [bg] exp: fg most text
	c238 = "#565656", --background Folded FoldColumn Pmenu IncSearch [bg_alt?]
	c239 = "#616161", --background-lightest StatusLineNc StatusLineTermNc TabLineFill (light)
	c240 = "#6B6B6B", --DiffChange Matchparen Ignore -> (bg + 3)
	c241 = "#757575", --Tabline_bg
	c249 = "#BFBFBF", --Tabline
	c250 = "#C8C8C8",
	c251 = "#D1D0D1", --TablineFill_bg
	c252 = "#D9D9D9", --background-light-darkest Pmenu PmenuSel Error ErrorMsg Search (dark_fg) [fg] exp: Ministatusline-fg
	c253 = "#E1E1E1", --background-light default
	c254 = "#E9E9E9", --background-light Conceal
	c255 = "#F1F1F1", --background-light-lightest

	none = "NONE",
}

-- Optional colors

-- Enable contrast sidebars, cfloating windows and popup menus
if vim.g.seoul256_contrast == false then
	colors.sidebar = colors.c237
	colors.float = colors.c237
else
	--c238 is a guess for a lighter color idk what this even is tbh
	colors.sidebar = colors.c238
	colors.float = colors.c238
end

return colors
