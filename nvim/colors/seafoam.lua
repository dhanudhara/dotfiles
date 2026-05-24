vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "seafoam"

local theme
---@diagnostic disable: undefined-global
if vim.o.background == "dark" then
    -- terminal colors
    vim.g.terminal_color_0 = "#000000"
    vim.g.terminal_color_1 = "#c04242"
    vim.g.terminal_color_2 = "#93e9be"
    vim.g.terminal_color_3 = "#e0b040"
    vim.g.terminal_color_4 = "#5b8fd4"
    vim.g.terminal_color_5 = "#a060c0"
    vim.g.terminal_color_6 = "#44b8b8"
    vim.g.terminal_color_7 = "#d0d0d0"
    vim.g.terminal_color_8 = "#383838"
    vim.g.terminal_color_9 = "#d86060"
    vim.g.terminal_color_10 = "#b8eccf"
    vim.g.terminal_color_11 = "#e8c860"
    vim.g.terminal_color_12 = "#70a8e8"
    vim.g.terminal_color_13 = "#b078d0"
    vim.g.terminal_color_14 = "#58d0d0"
    vim.g.terminal_color_15 = "#f0f0f0"

    -- colors
    local bg = "#000000"
    local fg = "#d0d0d0"
    local punct_fg = "#707070"
    local def_fg = "#70a8e8"
    local const_fg = "#b078d0"
    local active = "#e8c860"
    local string_fg = "#b8eccf"
    local darker_fg = "#707070"
    local diffadd = "#93e9be"
    local diffdelete = "#c04242"
    local diffchange = "#e0b040"
    local statusline = "#0f0f0f"
    local comment = "#e8c860"
    local dim_comment = "#5c5018"
    local mistake = {
        fg = "#d86060",
        bg = "#2b1d1e",
    }
    local error = "#d86060"
    local warn = "#e8c860"
    local hint = "#70a8e8"
    local info = "#b8eccf"
    local ansi = {
        black = "#383838",
        blue = "#70a8e8",
        brightyellow = "#e8c860",
        cyan = "#58d0d0",
        green = "#b8eccf",
        magenta = "#b078d0",
        red = "#d86060",
        white = "#d0d0d0",
        yellow = "#e0b040",
    }
    local comment_fg = vim.g.seafoam_dim_comments and dim_comment or comment
    local pmenu_bg = "#121212"
    local float_bg = vim.g.seafoam_floatborder and bg or pmenu_bg
    local floatborder = vim.g.seafoam_floatborder and { bg = bg, fg = "#333333" }
        or {
            bg = float_bg,
            fg = float_bg,
        }
    theme = {
        Comment = { fg = comment_fg },
        ColorColumn = { bg = "#121212" },
        Conceal = { fg = "#b0b0b0" },
        Cursor = { bg = active, fg = "#000000" },
        CursorColumn = { bg = "#121212" },
        CursorLine = { bg = "#121212" },
        Directory = { fg = ansi.blue },
        DiffAdd = { bg = "#1a3028", fg = diffadd },
        DiffDelete = { bg = "#301e1e", fg = diffdelete },
        DiffText = { fg = "#341a00", bg = "#fff987" },
        DiffChange = { bg = "#342200", fg = diffchange },
        EndOfBuffer = { fg = "#242424" },
        TermCursorNC = { fg = bg, bg = fg },
        ErrorMsg = { fg = error, bg = mistake.bg },
        VertSplit = { fg = "#242424" },
        Folded = { bg = "#121212", fg = darker_fg },
        FoldColumn = { bg = bg, fg = "#4d4d4d" },
        SignColumn = {},
        IncSearch = { bg = ansi.yellow, fg = bg },
        LineNr = { fg = "#404040" },
        CursorLineNr = { fg = ansi.blue, bold = 1 },
        MatchParen = { underline = 1, sp = active },
        MoreMsg = { fg = ansi.green, bold = 1 },
        NonText = { fg = dim_comment },
        Normal = { bg = bg, fg = fg },
        NormalFloat = { bg = float_bg },
        FloatBorder = floatborder,
        Pmenu = { bg = pmenu_bg },
        PmenuSel = { bg = "#242424" },
        PmenuSbar = { bg = "#1a1a1a" },
        PmenuThumb = { bg = "#333333" },
        Question = { fg = ansi.green },
        QuickFixLine = { bg = "#121212" },
        Search = { bg = "#242424" },
        SpecialKey = { fg = ansi.cyan },
        SpellBad = { undercurl = 1, sp = ansi.red },
        SpellCap = { undercurl = 1, sp = ansi.blue },
        SpellLocal = { undercurl = 1, sp = ansi.cyan },
        SpellRare = { undercurl = 1, sp = ansi.magenta },
        StatusLine = { bg = statusline, fg = fg },
        StatusLineNC = { bg = statusline, fg = darker_fg },
        TabLine = { bg = statusline, fg = darker_fg },
        TabLineFill = { bg = statusline },
        TabLineSel = { bg = statusline, fg = ansi.blue },
        Title = { fg = const_fg },
        Visual = { bg = "#1a1a1a" },
        VisualNOS = { bg = "#1a1a1a" },
        WarningMsg = { fg = warn },
        WildMenu = { bg = "#242424" },
        WinBar = { bg = bg, fg = fg, bold = true },
        WinBarNC = { bg = bg, fg = darker_fg },

        --- SYNTAX I: TS groups link to these
        Constant = { fg = const_fg },
        String = { fg = string_fg },
        Character = { fg = const_fg },
        Number = { fg = const_fg },
        Boolean = { fg = const_fg },
        Float = { fg = const_fg },
        Operator = { fg = punct_fg },

        --- SYNTAX II: TS groups have their own definition
        Identifier = { fg = fg },
        Function = { fg = def_fg },
        Statement = { fg = fg },
        Conditional = { fg = fg },
        Repeat = { fg = fg },
        Label = { fg = def_fg },
        Keyword = { fg = fg },
        Exception = { fg = fg },
        PreProc = { fg = fg },
        Include = { fg = fg },
        Define = { fg = fg },
        Macro = { fg = fg },
        PreCondit = { fg = fg },
        Type = { fg = fg },
        StorageClass = { fg = fg },
        Structure = { fg = def_fg },
        Typedef = { fg = def_fg },

        Special = { fg = ansi.yellow },
        SpecialComment = { bg = "#1a1a1a", fg = ansi.blue },
        debugPc = { bg = "#0f2534" },
        debugBreakpoint = { bg = "#b33229" },
        helpHyperTextJump = { fg = ansi.magenta },
        helpSectionDelim = { fg = ansi.magenta },
        helpExample = { fg = ansi.cyan },
        helpCommand = { fg = ansi.cyan },
        helpHeadline = { fg = ansi.blue },
        helpHeader = { fg = ansi.magenta },

        Underlined = { underline = 1 },
        Italic = { italic = 1 },

        Error = { bg = mistake.bg, fg = mistake.fg },

        Todo = { bg = ansi.yellow, fg = bg },

        --- Diagnostic
        LspReferenceText = { bg = "#1a1a1a" },
        LspReferenceRead = { bg = "#1a1a1a" },
        LspReferenceWrite = { bg = "#1a1a1a", underline = 1, sp = active },
        LspCodeLens = { fg = dim_comment },
        LspCodeLensSeparator = { fg = dim_comment },

        --- Diagnostic
        DiagnosticError = { fg = error },
        DiagnosticWarn = { fg = warn },
        DiagnosticHint = { fg = hint },
        DiagnosticInfo = { fg = info },
        DiagnosticVirtualTextError = { bg = "#2b1d1e", fg = "#d86060" },
        DiagnosticVirtualTextWarn = { bg = "#2b2410", fg = "#e8c860" },
        DiagnosticVirtualTextHint = { bg = "#1a2230", fg = "#70a8e8" },
        DiagnosticVirtualTextInfo = { bg = "#1a2820", fg = "#b8eccf" },

        --- Treesitter
        TSAttribute = {},
        TSConstructor = { fg = fg },
        TSConditional = { fg = fg },
        TSConstBuiltin = { fg = const_fg },
        TSConstMacro = { fg = fg },
        TSError = { bg = mistake.bg, fg = mistake.fg },
        TSException = { fg = fg },
        TSField = { fg = fg },
        TSFunction = { fg = fg },
        TSFuncBuiltin = { fg = fg },
        TSFuncMacro = { fg = fg },
        TSKeyword = { fg = fg },
        TSKeywordFunction = { fg = fg },
        TSLabel = { fg = fg },
        TSMethod = { fg = fg },
        TSNamespace = { fg = fg },
        TSNone = { fg = const_fg },
        TSParameter = { fg = fg },
        TSParameterReference = { fg = fg },
        TSProperty = { fg = fg },
        TSPunctDelimiter = { fg = punct_fg },
        TSPunctBracket = { fg = punct_fg },
        TSPunctSpecial = { fg = punct_fg },
        TSRepeat = { fg = fg },
        TSString = { fg = string_fg },
        TSStringRegex = { bg = "#1a1a1a", fg = const_fg },
        TSStringEscape = { bg = "#1a1a1a", fg = const_fg },
        TSSymbol = {},
        TSType = { fg = fg },
        TSTypeBuiltin = { fg = fg },
        TSVariable = { fg = fg },
        TSVariableBuiltin = { fg = fg },
        TSTag = { fg = fg },
        TSTagDelimiter = { fg = punct_fg },
        TSText = { fg = fg },
        ["@attribute"] = {},
        ["@constructor"] = { fg = fg },
        ["@conditional"] = { fg = fg },
        ["@constant.builtin"] = { fg = const_fg },
        ["@constant.macro"] = { fg = fg },
        ["@error"] = { bg = mistake.bg, fg = mistake.fg },
        ["@exception"] = { fg = fg },
        ["@field"] = { fg = fg },
        ["@function"] = { fg = fg },
        ["@function.builtin"] = { fg = fg },
        ["@function.macro"] = { fg = fg },
        ["@keyword"] = { fg = fg },
        ["@keyword.function"] = { fg = fg },
        ["@keyword.operator"] = { fg = punct_fg },
        ["@label"] = { fg = fg },
        ["@method"] = { fg = fg },
        ["@module"] = { fg = fg },
        ["@namespace"] = { fg = fg },
        ["@none"] = { fg = const_fg },
        ["@parameter"] = { fg = fg },
        ["@parameter.reference"] = { fg = fg },
        ["@property"] = { fg = fg },
        ["@punctuation.delimiter"] = { fg = punct_fg },
        ["@punctuation.bracket"] = { fg = punct_fg },
        ["@punctuation.special"] = { fg = punct_fg },
        ["@repeat"] = { fg = fg },
        ["@string"] = { fg = string_fg },
        ["@string.regex"] = { bg = "#1a1a1a", fg = const_fg },
        ["@string.escape"] = { bg = "#1a1a1a", fg = const_fg },
        ["@symbol"] = {},
        ["@type"] = { fg = fg },
        ["@type.builtin"] = { fg = fg },
        ["@variable"] = { fg = fg },
        ["@variable.builtin"] = { fg = fg },
        ["@tag"] = { fg = fg },
        ["@tag.delimiter"] = { fg = punct_fg },
        ["@text"] = { fg = fg },
        ["@text.note"] = { bg = "#1a1a1a", fg = ansi.blue },
        ["@text.warning"] = { bg = "#2b2410", fg = warn },

        --- Theme specific
        ["@SeafoamBase"] = { fg = fg },
        ["@SeafoamConstant"] = { fg = const_fg },
        ["@SeafoamDefinition"] = { fg = def_fg },
        ["@SeafoamPunct"] = { fg = punct_fg },
        ["@SeafoamString"] = { fg = string_fg },
        ["@SeafoamHashbang"] = { fg = dim_comment },
        --- Gitsigns
        GitSignsAdd = { fg = diffadd },
        GitSignsChange = { fg = diffchange },
        GitSignsDelete = { fg = diffdelete },
        --- Telescope
        TelescopeBorder = { fg = "#242424" },
        TelescopeMatching = { fg = ansi.yellow },
        TelescopeMultiSelection = { fg = ansi.magenta },
        TelescopePromptPrefix = { fg = ansi.blue },
        TelescopeSelectionCaret = { fg = mistake.fg },
        TelescopeTitle = { fg = ansi.brightyellow },
        TelescopeResultsTitle = { fg = ansi.yellow },
        --- fzf-lua
        FzfLuaBorder = { fg = "#242424" },
        --- mini.nvim
        MiniPickMatchCurrent = { fg = ansi.yellow },
        --- Neogit
        NeogitPopupActionDisabled = { fg = darker_fg },
        NeogitPopupActionKey = { fg = ansi.magenta },
        NeogitPopupOptionDisabled = { fg = darker_fg },
        NeogitPopupOptionKey = { fg = ansi.blue },
        NeogitPopupSwitchDisabled = { fg = darker_fg },
        NeogitPopupSwitchEnabled = { fg = ansi.cyan },
        NeogitPopupSwitchKey = { fg = ansi.magenta },
        --- Fugitive
        diffAdded = { link = "DiffAdd" },
        diffRemoved = { link = "DiffDelete" },
        --- Startify
        StartifyBracket = { fg = darker_fg },
        StartifyFile = { fg = fg },
        StartifySection = { fg = ansi.green },
        StartifySlash = { fg = dim_comment },
        StartifyPath = { fg = dim_comment },
        --- Statusline
        StatuslineAdd = { fg = diffadd, bg = statusline },
        StatuslineErr = { fg = error, bg = statusline },
        StatuslineHint = { fg = hint, bg = statusline },
        StatuslineInfo = { fg = info, bg = statusline },
        StatuslineWarn = { fg = warn, bg = statusline },
        StatuslineBlue = { fg = ansi.blue, bg = statusline },
        StatuslineRed = { fg = ansi.red, bg = statusline },
        StatuslineGreen = { fg = ansi.green, bg = statusline },
        StatuslineCyan = { fg = ansi.cyan, bg = statusline },
        StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
        --- ALE
        ALEWarningSign = { fg = warn },
        --- vim-matchup
        MatchupVirtualText = { fg = ansi.yellow },
        --- For `highlight link`
        SeafoamBlack = { fg = ansi.black },
        SeafoamBlue = { fg = ansi.blue },
        SeafoamBrightYellow = { fg = ansi.brightyellow },
        SeafoamCyan = { fg = ansi.cyan },
        SeafoamGreen = { fg = ansi.green },
        SeafoamDarkGreen = { fg = "#93e9be" },
        SeafoamMagenta = { fg = ansi.magenta },
        SeafoamRed = { fg = ansi.red },
        SeafoamWhite = { fg = fg },
        SeafoamYellow = { fg = ansi.yellow },
        --- Hop
        HopNextKey = { fg = ansi.brightyellow },
        HopNextKey1 = { fg = ansi.cyan },
        HopNextKey2 = { fg = "#297567" },
        HopUnmatched = { fg = "#242424" },
        --- Lightspeed
        LightspeedGreyWash = { fg = "#242424" },
        --- checkhealth
        healthSuccess = { fg = ansi.green, bg = bg },
        --- cmp
        CmpItemMenuDefault = { fg = ansi.magenta },
        --- nvim-ts-rainbow
        rainbowcol1 = { fg = ansi.yellow },
        rainbowcol2 = { fg = ansi.magenta },
        rainbowcol3 = { fg = ansi.blue },
        rainbowcol4 = { fg = ansi.green },
        rainbowcol5 = { fg = ansi.brightyellow },
        rainbowcol6 = { fg = ansi.red },
        rainbowcol7 = { fg = ansi.cyan },
        --- Iswap
        ISwapSnipe = { bg = ansi.yellow, fg = bg },
        ISwapGrey = { fg = "#242424" },
        --- vim-dadbod-ui
        dbui_help = { fg = dim_comment },
        dbui_connection_source = { fg = dim_comment },
        --- nvim-dap-virtual-text
        NvimDapVirtualText = { bg = "#1a1a1a", fg = ansi.cyan },
        --- Noice
        NoiceCmdlineIcon = { link = "SeafoamDarkGreen" },
        NoiceCmdlinePopupBorder = { link = "SeafoamDarkGreen" },
        NoiceConfirmBorder = { link = "SeafoamDarkGreen" },
        NoiceCmdlinePopupBorderCmdline = { link = "SeafoamDarkGreen" },
        NoiceCmdlineIconCmdline = { link = "SeafoamDarkGreen" },
        NoiceCmdlinePopupBorderFilter = { link = "SeafoamDarkGreen" },
        NoiceCmdlineIconFilter = { link = "SeafoamDarkGreen" },
        NoiceCmdlinePopupBorderLua = { link = "SeafoamDarkGreen" },
        NoiceCmdlineIconLua = { link = "SeafoamDarkGreen" },
        NoiceCmdlinePopupBorderSearch = { link = "SeafoamYellow" },
        NoiceCmdlineIconSearch = { link = "SeafoamYellow" },
        --- Languages
        --- asm
        asmDirective = { fg = dim_comment },
        nasmLabel = { link = "@SeafoamDefinition" },

        ["@lsp.mod.declaration"] = { fg = fg },
        ["@lsp.type.enumMember"] = { fg = fg },
        ["@lsp.type.function"] = { fg = fg },
        ["@lsp.type.method"] = { fg = fg },
        ["@lsp.type.selfKeyword"] = { fg = fg },
        ["@lsp.typemod.class.declaration"] = { fg = def_fg },
        ["@lsp.typemod.class.definition"] = { fg = def_fg },
        ["@lsp.typemod.enum.declaration"] = { fg = def_fg },
        ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = fg },
        ["@lsp.typemod.function.declaration"] = { fg = def_fg },
        ["@lsp.typemod.function.definition"] = { fg = def_fg },
        ["@lsp.typemod.macro.declaration"] = { fg = def_fg },
        ["@lsp.typemod.method.declaration"] = { fg = def_fg },
        ["@lsp.typemod.selfKeyword"] = { fg = fg },
        ["@lsp.typemod.struct.declaration"] = { fg = def_fg },
        ["@lsp.typemod.type.declaration"] = { fg = def_fg },
    }
end

for group, hl in pairs(theme) do
    vim.api.nvim_set_hl(0, group, hl)
end
