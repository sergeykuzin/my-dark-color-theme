-- local c = require("kanagawa.color")
local M = {}

---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    local theme = colors.theme
    config = config or require("kanagawa").config

    return {
        -- *Comment	any comment
        Comment = vim.tbl_extend("force", { fg = theme.syn.comment, bold = false }, config.commentStyle),

        -- *Constant	any constant
        Constant = { fg = theme.syn.constant, bold = false, italic = false },
        --  String		a string constant: "this is a string"
        String = { fg = theme.syn.string, bold = false, italic = false },
        --  Character	a character constant: 'c', '\n'
        Character = { link = "String", bold = false, italic = false },
        --  Number		a number constant: 234, 0xff
        Number = { fg = theme.syn.number, bold = false, italic = false },
        --  Boolean	a boolean constant: TRUE, false
        Boolean = { fg = theme.syn.constant, bold = false, italic = false },
        --  Float		a floating point constant: 2.3e10
        Float = { link = "Number", bold = false, italic = false },

        -- *Identifier	any variable name
        Identifier = { fg = theme.syn.identifier, bold = false, italic = false },
        --  Function	function name (also: methods for classes)
        Function = vim.tbl_extend("force", { fg = theme.syn.fun, bold = false, italic = false }, config.functionStyle),

        -- *Statement	any statement
        Statement = vim.tbl_extend("force", { fg = theme.syn.statement, bold = false, italic = false }, config.statementStyle),
        --  Conditional	if, then, else, endif, switch, etc.
        --  Repeat		for, do, while, etc.
        --  Label		case, default, etc.
        --  Operator	"sizeof", "+", "*", etc.
        Operator = { fg = theme.syn.operator, bold = false, italic = false },
        --  Keyword	any other keyword
        Keyword = vim.tbl_extend("force", { fg = theme.syn.keyword, bold = false, italic = false }, { italic = false }),
        --  Exception	try, catch, throw
        Exception = { fg = theme.syn.special2, bold = false, italic = false },

        -- *PreProc	generic Preprocessor
        PreProc = { fg = theme.syn.preproc, bold = false, italic = false },
        --  Include	preprocessor #include
        --  Define		preprocessor #define
        --  Macro		same as Define
        --  PreCondit	preprocessor #if, #else, #endif, etc.

        -- *Type		int, long, char, etc.
        Type = vim.tbl_extend("force", { fg = theme.syn.type, bold = false, italic = false }, config.typeStyle),
        --  StorageClass	static, register, volatile, etc.
        --  Structure	struct, union, enum, etc.
        --  Typedef	A typedef

        -- *Special	any special symbol
        Special = { fg = theme.syn.special1, bold = false, italic = false },
        --  SpecialChar	special character in a constant
        --  Tag		you can use CTRL-] on this
        --  Delimiter	character that needs attention
        Delimiter = { fg = theme.syn.punct, bold = false, italic = false },
        --  SpecialComment	special things inside a comment
        --  Debug		debugging statements

        -- *Underlined	text that stands out, HTML links
        Underlined = { fg = theme.syn.special1, underline = true, bold = false, italic = false },
        Bold = { bold = true },
        Italic = { italic = true },

        -- *Ignore		left blank, hidden  |hl-Ignore|
        Ignore = { link = "NonText", bold = false, italic = false },

        -- *Error		any erroneous construct
        Error = { fg = theme.diag.error },

        -- *Todo		anything that needs extra attention; mostly the keywords TODO FIXME WARNING and XXX
        Todo = { fg = theme.ui.fg_reverse, bg = theme.diag.info, bold = true },

        qfLineNr = { link = "lineNr", bold = false, italic = false },
        qfFileName = { link = "Directory", bold = false, italic = false },

        -- htmlH1 = {},
        -- htmlH2 = {},

        -- mkdHeading = {},
        -- mkdCode = {},
        -- mkdCodeDelimiter = {},
        -- mkdCodeStart = {},
        -- mkdCodeEnd = {},
        -- mkdLink = {},

        -- markdownHeadingDelimiter = {},
        markdownCode = { fg = theme.syn.string },
        markdownCodeBlock = { fg = theme.syn.string },
        markdownEscape = { fg = "NONE" },
        -- markdownH1 = {},
        -- markdownH2 = {},
        -- markdownLinkText = {},
    }
end

return M
