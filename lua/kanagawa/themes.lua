local c = require("kanagawa.lib.color")

--TODO:
--PreProc needs its own color
--parameter and field should be different
---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec

---@class DiagnosticsElements
---@field error ColorSpec
---@field ok ColorSpec
---@field warning ColorSpec
---@field info ColorSpec
---@field hint ColorSpec
--
---@class DiffElements
---@field add ColorSpec
---@field delete ColorSpec
---@field change ColorSpec
---@field text ColorSpec

---@class VCSElements
---@field added ColorSpec
---@field removed ColorSpec
---@field changed ColorSpec

---@class UiElements
---@field fg ColorSpec Default foreground
---@field fg_dim ColorSpec Dimmed foreground
---@field fg_reverse ColorSpec
---@field bg_dim ColorSpec Dimmed background
---@field bg_m3 ColorSpec
---@field bg_m2 ColorSpec
---@field bg_m1 ColorSpec
---@field bg ColorSpec Default background
---@field bg_p1 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_p2 ColorSpec Lighter background Cursor{Line,Column}, TabLineSel (Selected Items)
---@field bg_gutter ColorSpec {Sign,Fold}Column, LineNr
---@field special ColorSpec SpecialKey
---@field nontext ColorSpec LineNr, NonText
---@field whitespace ColorSpec Whitespace
---@field bg_search ColorSpec
---@field bg_visual ColorSpec
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg ColorSpec
---@field bg ColorSpec
---@field fg_border ColorSpec
---@field bg_border ColorSpec

---@class MenuElements
---@field bg ColorSpec
---@field fg ColorSpec
---@field fg_sel ColorSpec
---@field bg_sel ColorSpec
---@field bg_sbar ColorSpec
---@field bg_thumb ColorSpec

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field term ColorSpec[]

-- Всё нормально

return {
    ---@param palette PaletteColors
    ---@return ThemeColors
    wave = function(palette)
        return {
            ui = {
                fg         = palette.myTextForDarkTheme,
                fg_dim     = palette.oldWhite,
                fg_reverse = palette.waveBlue1,

                bg_dim     = palette.sumiInk1,
                bg_gutter  = palette.myBgDark,

                bg_m3      = palette.myBgDark,
                bg_m2      = palette.myBgDark,
                bg_m1      = palette.myBgDark,
                bg         = palette.myBgDark,
                bg_p1      = palette.myBgDark,
                bg_p2      = palette.myBgDark,

                special    = palette.springViolet1,
                nontext    = palette.sumiInk6,
                whitespace = palette.sumiInk6,

                bg_search  = palette.waveBlue2,
                bg_visual  = palette.waveBlue1,

                pmenu      = {
                    fg       = palette.fujiWhite,
                    fg_sel   = "none", -- This is important to make highlights pass-through
                    bg       = palette.waveBlue1,
                    bg_sel   = palette.waveBlue2,
                    bg_sbar  = palette.waveBlue1,
                    bg_thumb = palette.waveBlue2,
                },
                float      = {
                    fg        = palette.oldWhite,
                    bg        = palette.myBgVeryDark,
                    fg_border = palette.sumiInk6,
                    bg_border = palette.myBgVeryDark,
                },
            },
            syn = {
                string     = palette.myTextForDarkTheme,
                variable   = palette.myTextForDarkTheme,
                number     = palette.myTextForDarkTheme,
                constant   = palette.myTextForDarkTheme,
                identifier = palette.myTextForDarkTheme,
                -- parameter  = "#C3B1B1",
                -- parameter  = "#B1ADC8",
                -- parameter  = "#b8b4d0",
                parameter  = palette.myTextForDarkTheme,
                -- parameter = "#d5a4a6",
                -- parameter  = "#C8ADAD",
                -- parameter  = "#d7a8a8",
                fun        = palette.myTextForDarkTheme,
                statement  = palette.myTextForDarkTheme,
                keyword    = palette.myTextForDarkTheme,
                operator   = palette.myTextForDarkTheme,
                preproc    = palette.myTextForDarkTheme,
                type       = palette.myTextForDarkTheme,
                regex      = palette.myTextForDarkTheme,
                deprecated = palette.myTextForDarkTheme,
                comment    = palette.myCommentText,
                punct      = palette.myTextForDarkTheme,
                special1   = palette.myTextForDarkTheme,
                special2   = palette.myTextForDarkTheme,
                special3   = palette.myTextForDarkTheme,
            },
            vcs = {
                added   = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
            },
            diff = {
                add    = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text   = palette.winterYellow,
            },
            diag = {
                ok      = palette.springGreen,
                error   = palette.samuraiRed,
                warning = palette.roninYellow,
                info    = palette.dragonBlue,
                hint    = palette.waveAqua1,
            },
            term = {
                palette.myBgVeryDark, -- black
                palette.autumnRed, -- red
                palette.autumnGreen, -- green
                palette.boatYellow2, -- yellow
                palette.crystalBlue, -- blue
                palette.oniViolet, -- magenta
                palette.waveAqua1, -- cyan
                palette.oldWhite, -- white
                palette.fujiGray, -- bright black
                palette.samuraiRed, -- bright red
                palette.springGreen, -- bright green
                palette.carpYellow, -- bright yellow
                palette.springBlue, -- bright blue
                palette.springViolet1, -- bright magenta
                palette.waveAqua2, -- bright cyan
                palette.fujiWhite, -- bright white
                palette.surimiOrange, -- extended color 1
                palette.peachRed, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    dragon = function(palette)
        return {
            ui = {
                fg         = palette.dragonWhite,
                fg_dim     = palette.oldWhite,
                fg_reverse = palette.waveBlue1,

                bg_dim     = palette.dragonBlack1,
                bg_gutter  = palette.dragonBlack4,

                bg_m3      = palette.dragonBlack0,
                bg_m2      = palette.dragonBlack1,
                bg_m1      = palette.dragonBlack2,
                bg         = palette.dragonBlack3,
                bg_p1      = palette.dragonBlack4,
                bg_p2      = palette.dragonBlack5,

                special    = palette.dragonGray3,
                whitespace = palette.dragonBlack6,
                nontext    = palette.dragonBlack6,

                bg_visual  = palette.waveBlue1,
                bg_search  = palette.waveBlue2,

                pmenu      = {
                    fg       = palette.fujiWhite,
                    fg_sel   = "none",
                    bg       = palette.waveBlue1,
                    bg_sel   = palette.waveBlue2,
                    bg_thumb = palette.waveBlue2,
                    bg_sbar  = palette.waveBlue1,
                },

                float      = {
                    fg        = palette.oldWhite,
                    bg        = palette.dragonBlack0,
                    fg_border = palette.sumiInk6,
                    bg_border = palette.dragonBlack0,
                },
            },
            syn = {
                string     = palette.dragonGreen2,
                variable   = "none",
                number     = palette.dragonPink,
                constant   = palette.dragonOrange,
                identifier = palette.dragonYellow,
                parameter  = palette.dragonGray,
                fun        = palette.dragonBlue2,
                statement  = palette.dragonViolet,
                keyword    = palette.dragonViolet,
                operator   = palette.dragonRed,
                preproc    = palette.dragonRed,
                type       = palette.dragonAqua,
                regex      = palette.dragonRed,
                deprecated = palette.katanaGray,
                punct      = palette.dragonGray2,
                comment    = palette.dragonAsh,
                special1   = palette.dragonTeal,
                special2   = palette.dragonRed,
                special3   = palette.dragonRed,
            },
            diag = {
                error   = palette.samuraiRed,
                ok      = palette.springGreen,
                warning = palette.roninYellow,
                info    = palette.dragonBlue,
                hint    = palette.waveAqua1,
            },
            diff = {
                add    = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text   = palette.winterYellow,
            },
            vcs = {
                added   = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
            },
            term = {
                palette.dragonBlack0, -- black
                palette.dragonRed, -- red
                palette.dragonGreen2, -- green
                palette.dragonYellow, -- yellow
                palette.dragonBlue2, -- blue
                palette.dragonPink, -- magenta
                palette.dragonAqua, -- cyan
                palette.oldWhite, -- white
                palette.dragonGray, -- bright black
                palette.waveRed, -- bright red
                palette.dragonGreen, -- bright green
                palette.carpYellow, -- bright yellow
                palette.springBlue, -- bright blue
                palette.springViolet1, -- bright magenta
                palette.waveAqua2, -- bright cyan
                palette.dragonWhite, -- bright white
                palette.dragonOrange, -- extended color 1
                palette.dragonOrange2, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    lotus = function(palette)
        return {
            ui = {
                fg         = palette.myTextForLightTheme,
                fg_dim     = palette.lotusInk2,
                fg_reverse = palette.lotusGray,

                bg_dim     = palette.lotusWhite1,
                bg_gutter  = palette.myBgLight,

                bg_m3      = palette.myBgLight,
                bg_m2      = palette.myBgLight,
                bg_m1      = palette.myBgLight,
                bg         = palette.myBgLight,
                bg_p1      = palette.myBgLight,
                bg_p2      = palette.myBgLight,

                nontext    = palette.lotusViolet1,
                whitespace = palette.lotusViolet1,
                special    = palette.lotusViolet2,

                bg_visual  = palette.lotusViolet3,
                bg_search  = palette.lotusBlue2,

                pmenu      = {
                    fg       = palette.lotusInk2,
                    fg_sel   = "none", -- This is important to make highlights pass-through
                    bg       = palette.lotusBlue1,
                    bg_sel   = palette.lotusBlue3,
                    bg_sbar  = palette.lotusBlue1,
                    bg_thumb = palette.lotusBlue2,
                },
                float      = {
                    fg        = palette.lotusInk2,
                    bg        = palette.myBgNotLight,
                    fg_border = palette.lotusGray2,
                    bg_border = palette.myBgNotLight,
                },
            },
            syn = {
                string     = palette.myTextForLightTheme,
                variable   = "none",
                number     = palette.myTextForLightTheme,
                constant   = palette.myTextForLightTheme,
                identifier = palette.myTextForLightTheme,
                parameter  = palette.myTextForLightTheme,
                fun        = palette.myTextForLightTheme,
                statement  = palette.myTextForLightTheme,
                keyword    = palette.myTextForLightTheme,
                operator   = palette.myTextForLightTheme,
                preproc    = palette.myTextForLightTheme,
                type       = palette.myTextForLightTheme,
                regex      = palette.myTextForLightTheme,
                deprecated = palette.myTextForLightTheme,
                comment    = palette.myTextForLightTheme,
                punct      = palette.myTextForLightTheme,
                special1   = palette.myTextForLightTheme,
                special2   = palette.myTextForLightTheme,
                special3   = palette.myTextForLightTheme,
            },
            vcs = {
                added   = palette.lotusGreen2,
                removed = palette.lotusRed2,
                changed = palette.lotusYellow3,
            },
            diff = {
                add    = palette.lotusGreen3,
                delete = palette.lotusRed4,
                change = palette.lotusCyan,
                text   = palette.lotusYellow4,
            },
            diag = {
                error   = palette.lotusRed3,
                ok      = palette.lotusGreen,
                warning = palette.lotusOrange2,
                info    = palette.lotusTeal3,
                hint    = palette.lotusAqua2,
            },
            term = {
                palette.myBgNotLight, -- black
                palette.lotusRed, -- red
                palette.lotusGreen, -- green
                palette.lotusYellow, -- yellow
                palette.lotusBlue4, -- blue
                palette.lotusPink, -- magenta
                palette.lotusAqua, -- cyan
                palette.lotusInk1, -- white
                palette.lotusGray3 , -- bright black
                palette.lotusRed2, -- bright red
                palette.lotusGreen2, -- bright green
                palette.lotusYellow2, -- bright yellow
                palette.lotusTeal2, -- bright blue
                palette.lotusViolet4, -- bright magenta
                palette.lotusAqua2, -- bright cyan
                palette.lotusInk2, -- bright white
                palette.lotusOrange2, -- extended color 1
                palette.lotusRed3, -- extended color 2
            },
        }
    end,
}
