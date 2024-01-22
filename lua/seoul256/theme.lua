local colors = require("seoul256/colors")

local M = {}

-- Syntax highlight groups
-- Type `:h syntax` for more informations
M.syntax = {
	Comment = { fg = colors.c65 },
	Number = { fg = colors.c222 },
	Float = { fg = colors.c222 },
	Boolean = { fg = colors.c103 },
	String = { fg = colors.c109, bg = colors.none, style = "italic" }, --TODO original: not italic
	Constant = { fg = colors.c73 },
	Character = { fg = colors.c174 },
	Delimiter = { fg = colors.c137 },
	StringDelimiter = { fg = colors.c137 }, --added, do we need it?
	Statement = { fg = colors.c108 }, --TODO original: bold

	Conditional = { fg = colors.c110 },

	Repeat = { fg = colors.c68 },
	Todo = { fg = colors.c161, bg = colors.c235, style = "bold,italic" }, --added bg original: not bold,italic
	Function = { fg = colors.c187 },

	Define = { fg = colors.c173 },
	Macro = { fg = colors.c173 },
	Include = { fg = colors.c173 },
	PreCondit = { fg = colors.c173 },

	PreProc = { fg = colors.c143 },

	Identifier = { fg = colors.c217 },

	Type = { fg = colors.c179 }, --TODO: original bold (probably messed up)

	Operator = { fg = colors.c186 },

	Keyword = { fg = colors.c186 },

	Exception = { fg = colors.c161 },

	Structure = { fg = colors.c116 }, --was cleared?

	--Error = { fg = colors.error, bg = colors.none, style = "underline,bold" }, --TODO: looks way better than original
	Error = { fg = colors.c252, bg = colors.C52 },
	Underlined = { fg = colors.c181, bg = colors.none, style = "underline" },

	Special = { fg = colors.c216, bg = colors.c236 },

	Ignore = { fg = colors.c240, bg = colors.c237 },

	Debug = { fg = colors.red },
	Label = { fg = colors.purple },
	SpecialChar = { fg = colors.pink },
	SpecialComment = { fg = colors.gray },
	StorageClass = { fg = colors.cyan },
	Tag = { fg = colors.red },
	Typedef = { fg = colors.red },
}

-- Editor highlight groups
-- Type `:h highlight-groups` for more informations
M.editor = {
	Normal = { fg = colors.c252, bg = colors.c237 },

	LineNr = { fg = colors.c101, bg = colors.c238 }, --bg added
	Visual = { fg = colors.none, bg = colors.c23 },
	VisualNOS = { fg = colors.none, bg = colors.c23 },

	--ErrorMsg = { fg = colors.none }, --TODO: looks way better than original
	ErrorMsg = { fg = colors.c252, bg = colors.c52 },

	ColorColumn = { fg = colors.none, bg = colors.c236 }, --was color.active TODO delete this note

	CursorLine = { fg = colors.none, bg = colors.c236 },
	CursorLineNr = { fg = colors.c131, bg = colors.c236 }, --TODO does this look good?
	CursorColumn = { fg = colors.none, bg = colors.c236 },
	NormalFloat = { fg = colors.none, bg = colors.c236 }, --TODO does this look good?

	Directory = { fg = colors.c187, bg = colors.none },

	-- DiffAdd = { fg = colors.green, bg = colors.none, style = "reverse" }, --TODO not original green looks way better
	DiffAdd = { fg = colors.none, bg = colors.c22 }, --TODO not original green looks way better
	-- DiffDelete = { fg = colors.red, bg = colors.none, style = "reverse" }, --TODO same as above - new green red just so much better
	DiffDelete = { fg = colors.none, bg = colors.c95 }, --TODO same as above - new green red just so much better
	-- DiffChange = { fg = colors.orange, bg = colors.none, style = "reverse" },
	DiffChange = { fg = colors.none, bg = colors.c240 },
	-- DiffText = { fg = colors.yellow, bg = colors.none, style = "reverse" },
	DiffText = { fg = colors.none, bg = colors.c52 },

	VertSplit = { fg = colors.c235, bg = colors.c235 }, --TODO does this look good?
	Folded = { fg = colors.c101, bg = colors.c238 },

	FoldColumn = { fg = colors.c144, bg = colors.c238 },

	MatchParen = { fg = colors.none, bg = colors.c240 }, --TODO does this look good? minor

	ModeMsg = { fg = colors.c173, bg = colors.none, style = "bold" }, --TODO does look good? bold works?

	NonText = { fg = colors.c59 }, --TODO check (was invisible before)

	MoreMsg = { fg = colors.c173, bg = colors.none, style = "bold" }, --TODO does look good? bold?

	Pmenu = { fg = colors.c252, bg = colors.c236 },
	PmenuSel = { fg = colors.c252, bg = colors.c95 },
	PmenuSbar = { fg = colors.none, bg = colors.c65 },
	PmenuThumb = { fg = colors.none, bg = colors.c23 },

	Search = { fg = colors.c252, bg = colors.c24 },
	IncSearch = { fg = colors.c220, bg = colors.c238 },

	SpecialKey = { fg = colors.c59 },

	--removed italic colors might be off: was [red] [blue] [cyan] [purple]
	SpellBad = { fg = colors.c168, bg = colors.none, style = "undercurl" },
	SpellCap = { fg = colors.c110, bg = colors.none, style = "undercurl" },
	SpellLocal = { fg = colors.c153, bg = colors.none, style = "undercurl" },
	SpellRare = { fg = colors.c218, bg = colors.none, style = "undercurl" },

	StatusLine = { fg = colors.c95, bg = colors.c187 },
	StatusLineNC = { fg = colors.c239, bg = colors.c187 },
	StatusLineTerm = { fg = colors.c95, bg = colors.c187 }, --was missing
	StatusLineTermNC = { fg = colors.c239, bg = colors.c187 }, --was missing

	TabLineFill = { fg = colors.c239, bg = colors.c251 }, --added bg
	TablineSel = { fg = colors.c187, bg = colors.c187 },
	Tabline = { fg = colors.c249, bg = colors.c241 },
	WildMenu = { fg = colors.c95, bg = colors.c95 }, --removed bold ?


	Title = { fg = colors.c181, bg = colors.none, style = "bold" },

	Question = { fg = colors.c179, bg = colors.none, style = "bold" }, --added bold

	WarningMsg = { fg = colors.c179 },

	SignColumn = { fg = colors.c173, bg = colors.c237 },

	Conceal = { fg = colors.c254 },

	Cursor = { fg = colors.cursor, bg = colors.none, style = "reverse" },
	lCursor = {}, -- TODO
	CursorIM = { fg = colors.cursor, bg = colors.none, style = "reverse" },
	EndOfBuffer = { fg = colors.disabled },
	MsgArea = {}, -- TODO
	MsgSeparator = {}, -- TODO
	NormalNC = {}, -- TODO
	QuickFixLine = { fg = colors.highlight, bg = colors.white, style = "reverse" },
	Substitute = {}, -- TODO
	TermCursor = {}, -- TODO
	TermCursorNC = {}, -- TODO
	Whitespace = { fg = colors.c59 }, -- default in original 

	-- GUI only
	Menu = {},
	Scrollbar = {},
	Tooltip = {},
}

-- TreeSitter highlight groups
-- Type `:h nvim-treesitter-highlights` for more informations
M.treesitter = {
	TSAttribute = { fg = colors.yellow },
	TSBoolean = { fg = colors.orange },
	TSCharacter = { fg = colors.orange },
	TSComment = { fg = colors.green },
	TSConditional = { fg = colors.purple },
	TSConstBuiltin = { fg = colors.blue },
	TSConstMacro = { fg = colors.blue },
	TSConstant = { fg = colors.yellow },
	TSConstructor = { fg = colors.purple },
	TSDanger = {}, -- TODO
	TSEmphasis = { fg = colors.paleblue },
	TSEnvironment = {}, -- TODO
	TSEnvironmentName = {}, -- TODO
	TSError = { fg = colors.error },
	TSException = { fg = colors.yellow },
	TSField = { fg = colors.gray },
	TSFloat = { fg = colors.red },
	TSFuncBuiltin = { fg = colors.cyan },
	TSFuncMacro = { fg = colors.blue },
	TSFunction = { fg = colors.blue },
	TSInclude = { fg = colors.cyan },
	TSKeyword = { fg = colors.purple },
	TSKeywordFunction = { fg = colors.purple },
	TSKeywordOperator = {}, -- TODO
	TSKeywordReturn = {}, -- TODO
	TSLabel = { fg = colors.red },
	TSLiteral = { fg = colors.fg },
	TSMath = {}, -- TODO
	TSMethod = { fg = colors.blue },
	TSNamespace = { fg = colors.yellow },
	TSNone = {}, -- TODO
	TSNote = {}, -- TODO
	TSNumber = { fg = colors.orange },
	TSOperator = { fg = colors.cyan },
	TSParameter = { fg = colors.paleblue },
	TSParameterReference = { fg = colors.paleblue },
	TSProperty = { fg = colors.paleblue },
	TSPunctBracket = { fg = colors.cyan },
	TSPunctDelimiter = { fg = colors.cyan },
	TSPunctSpecial = { fg = colors.cyan },
	TSRepeat = { fg = colors.purple },
	TSStrike = {}, -- TODO
	TSString = { fg = colors.string },
	TSStringEscape = { fg = colors.disabled },
	TSStringRegex = { fg = colors.blue },
	TSStringSpecial = {}, -- TODO
	TSStrong = {}, -- TODO
	TSSymbol = { fg = colors.yellow },
	TSTag = { fg = colors.red },
	TSTagAttribute = {}, -- TODO
	TSTagDelimiter = { fg = colors.yellow },
	TSText = { fg = colors.text },
	TSTextReference = { fg = colors.yellow }, -- FIXME ???
	TSTitle = { fg = colors.paleblue, bg = colors.none, style = "bold" },
	TSType = { fg = colors.purple },
	TSTypeBuiltin = { fg = colors.purple },
	TSURI = { fg = colors.link },
	TSUnderline = { fg = colors.fg, bg = colors.none, style = "underline" },
	TSVariable = { fg = colors.gray },
	TSVariableBuiltin = { fg = colors.gray },
	TSWarning = {}, -- TODO
}

-- Lsp highlight groups
-- Type `:h lsp-highlight` for more informations
M.lsp = {
	LspCodeLens = {}, -- TODO
	LspDiagnosticsDefaultError = { fg = colors.error },
	LspDiagnosticsDefaultHint = { fg = colors.purple },
	LspDiagnosticsDefaultInformation = { fg = colors.paleblue },
	LspDiagnosticsDefaultWarning = { fg = colors.yellow },
	LspDiagnosticsFloatingError = { fg = colors.error },
	LspDiagnosticsFloatingHint = { fg = colors.purple },
	LspDiagnosticsFloatingInformation = { fg = colors.paleblue },
	LspDiagnosticsFloatingWarning = { fg = colors.yellow },
	LspDiagnosticsSignError = { fg = colors.error },
	LspDiagnosticsSignHint = { fg = colors.purple },
	LspDiagnosticsSignInformation = { fg = colors.paleblue },
	LspDiagnosticsSignWarning = { fg = colors.yellow },
	LspDiagnosticsUnderlineError = { style = "undercurl", sp = colors.error },
	LspDiagnosticsUnderlineHint = { style = "undercurl", sp = colors.paleblue },
	LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = colors.paleblue },
	LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = colors.yellow },
	LspDiagnosticsVirtualTextError = { fg = colors.error },
	LspDiagnosticsVirtualTextHint = { fg = colors.purple },
	LspDiagnosticsVirtualTextInformation = { fg = colors.paleblue },
	LspDiagnosticsVirtualTextWarning = { fg = colors.yellow },
	LspReferenceRead = { fg = colors.accent, bg = colors.highlight },
	LspReferenceText = { fg = colors.accent, bg = colors.highlight },
	LspReferenceWrite = { fg = colors.accent, bg = colors.highlight },
}

-- Plugins highlight groups
M.plugins = {
	LspTrouble = {
		LspTroubleText = { fg = colors.text },
		LspTroubleCount = { fg = colors.purple, bg = colors.active },
		LspTroubleNormal = { fg = colors.fg, bg = colors.sidebar },
	},
	Diff = {
		diffAdded = { fg = colors.c108 }, --these two are
		diffRemoved = { fg = colors.c174 }, --the only two given in the original

		diffChanged = { fg = colors.yellow },
		diffOldFile = { fg = colors.yellow },
		diffNewFile = { fg = colors.orange },
		diffFile = { fg = colors.blue },
		diffLine = { fg = colors.green },
		diffIndexLine = { fg = colors.purple },
	},

	Neogit = {
		NeogitBranch = { fg = colors.paleblue },
		NeogitRemote = { fg = colors.purple },
		NeogitHunkHeader = { fg = colors.fg, bg = colors.highlight },
		NeogitHunkHeaderHighlight = { fg = colors.blue, bg = colors.contrast },
		NeogitDiffContextHighlight = { fg = colors.text, bg = colors.contrast },
		NeogitDiffDeleteHighlight = { fg = colors.red },
		NeogitDiffAddHighlight = { fg = colors.green },
	},

	GitGutter = {
		GitGutterAdd = { fg = colors.green },
		GitGutterChange = { fg = colors.yellow },
		GitGutterDelete = { fg = colors.red },
	},

	GitSigns = {
		GitSignsAdd = { fg = colors.green },
		GitSignsAddNr = { fg = colors.green },
		GitSignsAddLn = { fg = colors.green },
		GitSignsChange = { fg = colors.yellow },
		GitSignsChangeNr = { fg = colors.yellow },
		GitSignsChangeLn = { fg = colors.yellow },
		GitSignsDelete = { fg = colors.red },
		GitSignsDeleteNr = { fg = colors.red },
		GitSignsDeleteLn = { fg = colors.red },
	},

	Telescope = {
		TelescopePromptBorder = { fg = colors.cyan },
		TelescopeResultsBorder = { fg = colors.purple },
		TelescopePreviewBorder = { fg = colors.green },
		TelescopeSelectionCaret = { fg = colors.purple },
		TelescopeSelection = { fg = colors.purple },
		TelescopeMatching = { fg = colors.cyan },
		TelescopeNormal = { fg = colors.fg, bg = colors.float },
	},

	NvimTree = {
		NvimTreeNormal = { fg = colors.fg, bg = colors.sidebar },
		NvimTreeRootFolder = { fg = colors.blue, style = "bold" },
		NvimTreeGitDirty = { fg = colors.yellow },
		NvimTreeGitNew = { fg = colors.green },
		NvimTreeImageFile = { fg = colors.yellow },
		NvimTreeExecFile = { fg = colors.green },
		NvimTreeSpecialFile = { fg = colors.purple, style = "underline" },
		NvimTreeFolderName = { fg = colors.paleblue },
		NvimTreeEmptyFolderName = { fg = colors.disabled },
		NvimTreeFolderIcon = { fg = colors.accent },
		NvimTreeIndentMarker = { fg = colors.disabled },

		-- TODO not sure this goes here
		LspDiagnosticsError = { fg = colors.error },
		LspDiagnosticsWarning = { fg = colors.yellow },
		LspDiagnosticsInformation = { fg = colors.paleblue },
		LspDiagnosticsHint = { fg = colors.purple },
	},

	WhichKey = {
		WhichKey = { fg = colors.accent, style = "bold" },
		WhichKeyGroup = { fg = colors.text },
		WhichKeyDesc = { fg = colors.blue, style = "italic" },
		WhichKeySeperator = { fg = colors.fg },
		WhichKeyFloating = { bg = colors.float },
		WhichKeyFloat = { bg = colors.float },
	},

	LspSaga = {
		DiagnosticError = { fg = colors.error },
		DiagnosticWarning = { fg = colors.yellow },
		DiagnosticInformation = { fg = colors.paleblue },
		DiagnosticHint = { fg = colors.purple },
		DiagnosticTruncateLine = { fg = colors.fg },
		LspFloatWinNormal = { bg = colors.bg },
		LspFloatWinBorder = { fg = colors.purple },
		LspSagaBorderTitle = { fg = colors.cyan },
		LspSagaHoverBorder = { fg = colors.paleblue },
		LspSagaRenameBorder = { fg = colors.green },
		LspSagaDefPreviewBorder = { fg = colors.green },
		LspSagaCodeActionBorder = { fg = colors.blue },
		LspSagaFinderSelection = { fg = colors.green },
		LspSagaCodeActionTitle = { fg = colors.paleblue },
		LspSagaCodeActionContent = { fg = colors.purple },
		LspSagaSignatureHelpBorder = { fg = colors.pink },
		ReferencesCount = { fg = colors.purple },
		DefinitionCount = { fg = colors.purple },
		DefinitionIcon = { fg = colors.blue },
		ReferencesIcon = { fg = colors.blue },
		TargetWord = { fg = colors.cyan },
	},

	BufferLine = {
		BufferLineIndicatorSelected = { fg = colors.accent },
		BufferLineFill = { bg = colors.bg_alt },
	},

	Sneak = {
		Sneak = { fg = colors.bg, bg = colors.accent },
		SneakScope = { bg = colors.selection },
	},

--	IndentBlankline = {
--		IndentBlanklineChar = { fg = colors.indentline },
--		IndentBlanklineContextChar = { fg = colors.indentline },
--	},

	NvimDap = {
		DapBreakpoint = { fg = colors.red },
		DapStopped = { fg = colors.green },
	},

	DashboardNvim = {
		DashboardCenter = { fg = colors.cyan },
		DashboardFooter = { fg = colors.green, style = "italic" },
		DashboardHeader = { fg = colors.red },
		DashboardShortCut = { fg = colors.blue },
	},
}

-- Options:

if vim.g.seoul256_disable_background == true then
	M.editor.Normal = { fg = colors.fg, bg = colors.none }
	M.editor.SignColumn = { fg = colors.fg, bg = colors.none }
	M.editor.NormalFloat = { fg = colors.fg, bg = colors.none }
	M.editor.Pmenu = { fg = colors.text, bg = colors.none }
	M.plugins.Telescope.TelescopeNormal = { fg = colors.fg, bg = colors.none }
end

if vim.g.seoul256_italic_comments == true then
	M.syntax.Comment = { fg = colors.green, bg = colors.none, style = "italic" }
	M.treesitter.TSComment = { fg = colors.green, bg = colors.none, style = "italic" }
end

if vim.g.seoul256_italic_keywords == true then
	M.syntax.Conditional = { fg = colors.purple, bg = colors.none, style = "italic" }
	M.syntax.Keyword = { fg = colors.purple, bg = colors.none, style = "italic" }
	M.syntax.Repeat = { fg = colors.purple, bg = colors.none, style = "italic" }
	M.treesitter.TSConditional = { fg = colors.purple, style = "italic" }
	M.treesitter.TSKeyword = { fg = colors.purple, style = "italic" }
	M.treesitter.TSRepeat = { fg = colors.purple, style = "italic" }
	M.treesitter.TSKeywordFunction = { fg = colors.purple, style = "italic" }
end

if vim.g.seoul256_italic_functions == true then
	M.syntax.Function = { fg = colors.blue, bg = colors.none, style = "italic" }
	M.treesitter.TSFunction = { fg = colors.blue, style = "italic" }
	M.treesitter.TSMethod = { fg = colors.blue, style = "italic" }
	M.treesitter.TSFuncBuiltin = { fg = colors.cyan, style = "italic" }
end

if vim.g.seoul256_italic_variables == true then
	M.syntax.Identifier = { fg = colors.pink, bg = colors.none, style = "italic" }
	M.treesitter.TSVariable = { fg = colors.gray, style = "italic" }
	M.treesitter.TSVariableBuiltin = { fg = colors.gray, style = "italic" }
end

if vim.g.seoul256_borders == true then
	M.editor.VertSplit = { fg = colors.border }
end

if vim.g.seoul256_hl_current_line == true then
	M.editor.CursorLine = { fg = colors.none, bg = colors.active }
end

return M
