use std::collections::HashMap;
use std::fs::File;
use std::io::prelude::*;
use std::path::Path;

type ColorName = Option<&'static str>;
type Palette = HashMap<&'static str, Color>;

#[derive(Debug, PartialEq)]
struct Color {
    gui: String,
    cterm: String,
}

impl Color {
    fn new(hex: String, cterm: String) -> Self {
        Self { gui: hex, cterm }
    }
}

#[derive(Debug)]
pub enum HighlightAttr {
    Nothing,
    None,
    Bold,
    Italic,
    Underline,
    Reverse,
}

#[derive(Debug)]
struct Highlight {
    name: &'static str,
    fg: ColorName,
    bg: ColorName,
    attr: HighlightAttr,
}

macro_rules! highlight {
    ($name: ident, $fg: expr, $bg: expr, $attr: ident) => {
        Highlight {
            name: stringify!($name),
            fg: $fg,
            bg: $bg,
            attr: HighlightAttr::$attr,
        }
    };
}

macro_rules! hi {
    ($name: ident, $fg: ident, -, -) => {
        highlight!($name, Some(stringify!($fg)), None, Nothing)
    };
    ($name: ident, $fg: ident, $bg: ident, -) => {
        highlight!($name, Some(stringify!($fg)), Some(stringify!($bg)), Nothing)
    };
    ($name: ident, $fg: ident, $bg: ident, $attr: ident) => {
        highlight!($name, Some(stringify!($fg)), Some(stringify!($bg)), $attr)
    };
    ($name: ident, $fg: ident, -, $attr: ident) => {
        highlight!($name, Some(stringify!($fg)), None, $attr)
    };

    ($name: ident, -, $bg: ident, -) => {
        highlight!($name, None, Some(stringify!($bg)), Nothing)
    };
    ($name: ident, -, $bg: ident, $attr: ident) => {
        highlight!($name, None, Some(stringify!($bg)), $attr)
    };

    ($name: ident, -, -, $attr: ident) => {
        highlight!($name, None, None, $attr)
    };
}

fn main() -> std::io::Result<()> {
    let path = Path::new("colors/githubsy.vim");
    let mut buf = File::create(&path)?;

    let header = r#"" A githubsy color scheme for vim

" Author:     synul (synul@mailbox.org)
" URL:        https://github.com/synul/githubsy.vim
" License:    MIT
" Copyright (c) 2020 synul

if &background !=# 'dark'
  set background=dark
endif

if exists('g:colors_name')
  hi clear
endif

if exists('g:syntax_on')
  syntax reset
endif

let g:colors_name = 'githubsy'

"#;

    buf.write_all(header.as_bytes())?;

    let palette = get_palette();
    let highlights = get_highlights();

    for hl in highlights {
        let mut args = vec![hl.name.to_string()];

        let variants = &[(&hl.fg, "guifg", "ctermfg"), (&hl.bg, "guibg", "ctermbg")];

        for (color_name, gui, cterm) in variants {
            match color_name {
                Some(name) => {
                    let color = palette.get(name).unwrap();
                    args.push(format!("{}={}", gui, color.gui));
                    args.push(format!("{}={}", cterm, color.cterm));
                }
                None => {
                    args.push(format!("{}=NONE", gui));
                    args.push(format!("{}=NONE", cterm));
                }
            }
        }

        let attr = match hl.attr {
            HighlightAttr::Nothing => "",
            HighlightAttr::None => "gui=NONE cterm=NONE",
            HighlightAttr::Bold => "gui=bold cterm=bold",
            HighlightAttr::Italic => "gui=italic cterm=italic",
            HighlightAttr::Underline => "gui=underline cterm=underline",
            HighlightAttr::Reverse => "gui=reverse cterm=reverse",
        };

        if attr != "" {
            args.push(attr.to_string());
        }

        let line = format!("hi {}\n", args.join(" "));

        buf.write_all(line.as_bytes())?;
    }

    Ok(())
}

fn get_palette() -> Palette {
    let mut palette = HashMap::new();

    macro_rules! def {
        ($name: ident, $hex: expr, $cterm: expr) => {
            let name = stringify!($name);
            let color = Color::new(String::from($hex), $cterm.to_string());
            assert_eq!(palette.insert(name, color), None);
        };
    }

    def!(AllBlack, "#000000", 16);
    def!(AlmostBlack, "#121212", 234);
    def!(AlmostNotGray, "#303030", 236);
    def!(SteelGray, "#8787af", 103);
    def!(NormieWhitey, "#d7d7d7", 188);

    def!(PurpleGray, "#8787d7", 104);
    def!(BlueGray, "#5f87af", 67);
    def!(GreenGray, "#87afaf", 109);

    def!(RedAlert, "#ff005f", 197);
    def!(WeetyWarning, "#ffffaf", 229);

    def!(EminentRed, "#d75f5f", 167);
    def!(RustyRed, "#ff875f", 209);
    def!(JazzyOrange, "#ffaf5f", 215);

    def!(RosieBrown, "#af8787", 138);
    def!(PleasingPurple, "#af87ff", 141);
    def!(PillsyPurple, "#d7afff", 183);
    def!(MistyPurple, "#d7d7ff", 189);

    def!(BasicBlue, "#005fd7", 26);
    def!(CandyMethBlue, "#5fafff", 75);
    def!(TrueBlue, "#87afff", 111);
    def!(PoppinBlue, "#87d7ff", 117);
    def!(MistyBlue, "#afd7ff", 153);

    def!(AcidGreen, "#87ff00", 118);
    def!(LizardGreen, "#87d787", 114);
    def!(MistyGreen, "#d7ffff", 194);

    palette
}

fn get_highlights() -> Vec<Highlight> {
    vec![
        hi!(Boolean, CandyMethBlue, -, -),
        hi!(Comment, SteelGray, -, -),
        hi!(Conceal, RosieBrown, AllBlack, None),
        hi!(Constant, CandyMethBlue, -, -),
        hi!(Define, MistyPurple, -, -),
        hi!(Delimiter, RustyRed, -, -),
        hi!(Error, EminentRed, AllBlack, Bold),
        hi!(ErrorMsg, EminentRed, AllBlack, Bold),
        hi!(Exception, EminentRed, -, -),
        hi!(FoldColumn, PleasingPurple, AlmostNotGray, -),
        hi!(Folded, PleasingPurple, AlmostNotGray, -),
        hi!(Function, PillsyPurple, -, -),
        hi!(Identifier, PillsyPurple, -, -),
        hi!(Include, MistyPurple, -, -),
        hi!(Keyword, RustyRed, -, -),
        hi!(Label, PleasingPurple, -, None),
        hi!(ColorColumn, -, AlmostNotGray, None),
        hi!(Cursor, AllBlack, NormieWhitey, None),
        hi!(CursorIM, AllBlack, NormieWhitey, None),
        hi!(CursorColumn, -, AlmostNotGray, None),
        hi!(CursorLine, -, AlmostNotGray, None),
        hi!(CursorLineNr, PillsyPurple, -, -),
        hi!(DiffAdd, AcidGreen, AlmostNotGray, Bold),
        hi!(DiffChange, -, AlmostNotGray, Bold),
        hi!(DiffDelete, RedAlert, AlmostNotGray, Bold),
        hi!(DiffText, WeetyWarning, AlmostNotGray, Bold),
        hi!(Directory, RosieBrown, -, Bold),
        hi!(LineNr, SteelGray, -, -),
        hi!(Macro, CandyMethBlue, -, -),
        hi!(MatchParen, -, SteelGray, -),
        hi!(MoreMsg, PillsyPurple, AlmostNotGray, Bold),
        hi!(NonText, PleasingPurple, -, Bold),
        hi!(Normal, NormieWhitey, AllBlack, -),
        hi!(NormalFloat, NormieWhitey, AllBlack, -),
        hi!(Number, CandyMethBlue, -, -),
        hi!(PreCondit, CandyMethBlue, -, -),
        hi!(IncSearch, AcidGreen, AlmostBlack, -),
        hi!(PreProc, MistyPurple, -, -),
        hi!(Search, AlmostBlack, CandyMethBlue, -),
        hi!(SignColumn, PillsyPurple, -, -),
        hi!(Special, EminentRed, -, -),
        hi!(SpellBad, EminentRed, -, Underline),
        hi!(SpellCap, WeetyWarning, -, Underline),
        hi!(SpellLocal, WeetyWarning, -, Underline),
        hi!(SpellRare, WeetyWarning, -, Underline),
        hi!(Statement, RustyRed, -, -),
        hi!(StorageClass, RustyRed, -, -),
        hi!(String, MistyBlue, -, -),
        hi!(Title, RosieBrown, -, Bold),
        hi!(Todo, CandyMethBlue, -, -),
        hi!(Type, PoppinBlue, -, -),
        hi!(TypeDef, PillsyPurple, -, -),
        hi!(Underlined, -, -, Underline),
        hi!(Variable, CandyMethBlue, -, -),
        hi!(Visual, -, AlmostNotGray, -),
        hi!(Pmenu, PurpleGray, AlmostNotGray, -),
        hi!(PmenuSel, NormieWhitey, PurpleGray, -),
        hi!(PmenuSbar, -, AlmostNotGray, -),
        hi!(Question, PillsyPurple, -, Bold),
        hi!(QuickFixLine, PillsyPurple, -, Bold),
        hi!(SpecialChar, PillsyPurple, -, -),
        hi!(SpecialComment, PillsyPurple, -, -),
        hi!(SpecialKey, PillsyPurple, -, -),
        hi!(PmenuThumb, -, SteelGray, -),
        hi!(VertSplit, AlmostNotGray, -, None),
        hi!(WarningMsg, EminentRed, -, Bold),
        hi!(WildMenu, RustyRed, SteelGray, -),
        hi!(LspDiagnosticsDefaultError, RedAlert, AlmostNotGray, Bold),
        // hi!(LspDiagnosticsFloatingError, EminentRed, -, Bold),
        hi!(LspDiagnosticsSignError, RedAlert, AllBlack, Bold),
        hi!(
            LspDiagnosticsDefaultWarning,
            WeetyWarning,
            AlmostNotGray,
            Bold
        ),
        hi!(LspDiagnosticsSignWarning, WeetyWarning, AllBlack, Bold),
        hi!(LspDiagnosticsDefaultHint, MistyBlue, AlmostNotGray, Bold),
        hi!(LspDiagnosticsSignHint, MistyBlue, AllBlack, Bold),
        hi!(
            LspDiagnosticsDefaultInformation,
            MistyGreen,
            AlmostNotGray,
            Bold
        ),
        hi!(LspDiagnosticsSignInformation, MistyGreen, AllBlack, Bold),
        hi!(StatusLine, PleasingPurple, AlmostNotGray, Bold),
        hi!(StatusLineTerm, PleasingPurple, AlmostNotGray, Bold),
        hi!(StatusLineNC, SteelGray, AlmostNotGray, None),
        hi!(StatusLineTermNC, SteelGray, AlmostNotGray, None),
        hi!(TabLine, PleasingPurple, AlmostNotGray, None),
        hi!(TabLineFill, PleasingPurple, AlmostNotGray, None),
        hi!(TabLineSel, AlmostNotGray, PleasingPurple, Bold),
        hi!(vimCommand, RustyRed, -, -),
        hi!(vimIsCommand, CandyMethBlue, -, -),
        hi!(vimNotation, MistyBlue, -, -),
        hi!(vimBracket, MistyPurple, -, -),
        hi!(rustQuestionMark, RustyRed, -, -),
        hi!(htmlTag, NormieWhitey, -, -),
        hi!(htmlTagName, AcidGreen, -, -),
        hi!(htmlTitle, NormieWhitey, -, -),
        hi!(htmlArg, PillsyPurple, -, -),
        hi!(htmlSpecialTagName, RustyRed, -, -),
        hi!(tsxTagName, AcidGreen, -, -),
        hi!(typescriptExport, RustyRed, -, -),
        hi!(typescriptFuncKeyword, RustyRed, -, -),
        hi!(typescriptVariableDeclaration, BasicBlue, -, -),
        hi!(typescriptVariable, RustyRed, -, -),
    ]
}
