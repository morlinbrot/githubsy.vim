" A githubsy color scheme for vim

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

hi Boolean guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi Comment guifg=#8787af ctermfg=103 guibg=NONE ctermbg=NONE
hi Constant guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi Define guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi Delimiter guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi Error guifg=#d75f5f ctermfg=167 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi ErrorMsg guifg=#d75f5f ctermfg=167 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi Function guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi Identifier guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi Include guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi Keyword guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi CursorLineNr guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi LineNr guifg=#8787af ctermfg=103 guibg=NONE ctermbg=NONE
hi Macro guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi MatchParen guifg=NONE ctermfg=NONE guibg=#8787af ctermbg=103
hi Normal guifg=#d7d7d7 ctermfg=188 guibg=#000000 ctermbg=16
hi NormalFloat guifg=#d7d7d7 ctermfg=188 guibg=#000000 ctermbg=16
hi Number guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi PreCondit guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi IncSearch guifg=#87d75f ctermfg=113 guibg=#121212 ctermbg=234
hi PreProc guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi Search guifg=#121212 ctermfg=234 guibg=#5fafff ctermbg=75
hi SignColumn guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi Special guifg=#d75f5f ctermfg=167 guibg=NONE ctermbg=NONE
hi Statement guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi StorageClass guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi String guifg=#afd7ff ctermfg=153 guibg=NONE ctermbg=NONE
hi Todo guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi Type guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi TypeDef guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi Underlined guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Variable guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#121212 ctermbg=236
hi Pmenu guifg=#8787d7 ctermfg=104 guibg=#121212 ctermbg=236
hi PmenuSel guifg=#d7d7d7 ctermfg=188 guibg=#8787d7 ctermbg=104
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#121212 ctermbg=236
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#8787af ctermbg=103
hi WildMenu guifg=#ff875f ctermfg=209 guibg=#8787af ctermbg=103
hi LspDiagnosticsDefaultError guifg=#ff005f ctermfg=197 guibg=#121212 ctermbg=236 gui=bold cterm=bold
hi LspDiagnosticsSignError guifg=#ff005f ctermfg=197 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi LspDiagnosticsDefaultWarning guifg=#ffffaf ctermfg=229 guibg=#121212 ctermbg=236 gui=bold cterm=bold
hi LspDiagnosticsSignWarning guifg=#ffffaf ctermfg=229 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi LspDiagnosticsDefaultHint guifg=#afd7ff ctermfg=153 guibg=#121212 ctermbg=236 gui=bold cterm=bold
hi LspDiagnosticsSignHint guifg=#afd7ff ctermfg=153 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi LspDiagnosticsDefaultInformation guifg=#afd7d7 ctermfg=152 guibg=#121212 ctermbg=236 gui=bold cterm=bold
hi LspDiagnosticsSignInformation guifg=#afd7d7 ctermfg=152 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi vimCommand guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi vimIsCommand guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi vimNotation guifg=#afd7ff ctermfg=153 guibg=NONE ctermbg=NONE
hi vimBracket guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi rustQuestionMark guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi htmlTag guifg=#d7d7d7 ctermfg=188 guibg=NONE ctermbg=NONE
hi htmlTagName guifg=#87d75f ctermfg=113 guibg=NONE ctermbg=NONE
hi htmlTitle guifg=#d7d7d7 ctermfg=188 guibg=NONE ctermbg=NONE
hi htmlArg guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi htmlSpecialTagName guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi tsxTagName guifg=#87d75f ctermfg=113 guibg=NONE ctermbg=NONE
hi typescriptExport guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi typescriptFuncKeyword guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi typescriptVariableDeclaration guifg=#005fd7 ctermfg=26 guibg=NONE ctermbg=NONE
hi typescriptVariable guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi ColorColumn guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi Conceal guifg=#ac8b83 ctermfg=138 guibg=#222433 ctermbg=235 gui=NONE cterm=NONE
hi Cursor guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146
hi CursorColumn guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorIM guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146
hi CursorLine guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi DiffAdd guibg=#1c394b ctermbg=237 gui=bold cterm=bold
hi DiffChange guibg=#26463b ctermbg=23 gui=bold cterm=bold
hi DiffDelete guifg=#d2d9ff ctermfg=189 guibg=#5e3e5e ctermbg=96 gui=bold cterm=bold
hi DiffText guibg=#28795c ctermbg=29 gui=NONE cterm=NONE
hi Directory guifg=#a8a384 ctermfg=144
hi EndOfBuffer guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#a8a384 ctermfg=144
hi FoldColumn guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#666c99 ctermfg=60 guibg=#32364c ctermbg=237 gui=NONE cterm=NONE
hi Label guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi MoreMsg guifg=#73c1a9 ctermfg=79
hi NonText guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE
hi Question guifg=#73c1a9 ctermfg=79 gui=bold cterm=bold
hi QuickFixLine guifg=#9ea3c0 ctermfg=146 guibg=#363e7f ctermbg=61
hi SpecialChar guifg=#b871b8 ctermfg=133
hi SpecialComment guifg=#b871b8 ctermfg=133
hi SpecialKey guifg=#b871b8 ctermfg=133
hi SpellBad guifg=#ff5f5f ctermfg=209 gui=underline cterm=underline
hi SpellCap gui=underline cterm=underline
hi SpellLocal guifg=#ff5f5f ctermfg=209 gui=underline cterm=underline
hi SpellRare guifg=#a8a384 ctermfg=144 gui=underline cterm=underline
hi Title guifg=#a8a384 ctermfg=144 gui=bold cterm=bold
hi VertSplit guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#ac8b83 ctermfg=138 gui=bold cterm=bold

hi StatusLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=bold cterm=bold
hi StatusLineTerm guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=bold cterm=bold
hi StatusLineNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 gui=NONE cterm=NONE
hi TabLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi TabLineFill guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi TabLineSel guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104 gui=bold cterm=bold

