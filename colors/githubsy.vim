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
hi Conceal guifg=#af8787 ctermfg=138 guibg=#000000 ctermbg=16 gui=NONE cterm=NONE
hi Constant guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi Define guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi Delimiter guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi Error guifg=#d75f5f ctermfg=167 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi ErrorMsg guifg=#d75f5f ctermfg=167 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi Exception guifg=#d75f5f ctermfg=167 guibg=NONE ctermbg=NONE
hi FoldColumn guifg=#af87ff ctermfg=141 guibg=#303030 ctermbg=236
hi Folded guifg=#af87ff ctermfg=141 guibg=#303030 ctermbg=236
hi Function guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi Identifier guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi Include guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi Keyword guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi Label guifg=#af87ff ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi Cursor guifg=#000000 ctermfg=16 guibg=#d7d7d7 ctermbg=188 gui=NONE cterm=NONE
hi CursorIM guifg=#000000 ctermfg=16 guibg=#d7d7d7 ctermbg=188 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi DiffAdd guifg=#87ff00 ctermfg=118 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi DiffChange guifg=NONE ctermfg=NONE guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi DiffDelete guifg=#ff005f ctermfg=197 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi DiffText guifg=#ffffaf ctermfg=229 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi Directory guifg=#af8787 ctermfg=138 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi LineNr guifg=#8787af ctermfg=103 guibg=NONE ctermbg=NONE
hi Macro guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi MatchParen guifg=NONE ctermfg=NONE guibg=#8787af ctermbg=103
hi MoreMsg guifg=#d7afff ctermfg=183 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi NonText guifg=#af87ff ctermfg=141 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Normal guifg=#d7d7d7 ctermfg=188 guibg=#121212 ctermbg=233
hi NormalFloat guifg=#d7d7d7 ctermfg=188 guibg=#000000 ctermbg=16
hi Number guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi PreCondit guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi IncSearch guifg=#87ff00 ctermfg=118 guibg=#121212 ctermbg=233
hi PreProc guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi Search guifg=#121212 ctermfg=233 guibg=#5fafff ctermbg=75
hi SignColumn guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi Special guifg=#d75f5f ctermfg=167 guibg=NONE ctermbg=NONE
hi SpellBad guifg=#d75f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellLocal guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellRare guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Statement guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi StorageClass guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi String guifg=#afd7ff ctermfg=153 guibg=NONE ctermbg=NONE
hi Title guifg=#af8787 ctermfg=138 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Todo guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi Type guifg=#87d7ff ctermfg=117 guibg=NONE ctermbg=NONE
hi TypeDef guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi Underlined guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Variable guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#303030 ctermbg=236
hi Pmenu guifg=#8787d7 ctermfg=104 guibg=#303030 ctermbg=236
hi PmenuSel guifg=#d7d7d7 ctermfg=188 guibg=#8787d7 ctermbg=104
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#303030 ctermbg=236
hi Question guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi QuickFixLine guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi SpecialChar guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi SpecialComment guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi SpecialKey guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#8787af ctermbg=103
hi VertSplit guifg=#303030 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#d75f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi WildMenu guifg=#ff875f ctermfg=209 guibg=#8787af ctermbg=103
hi LspDiagnosticsDefaultError guifg=#ff005f ctermfg=197 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi LspDiagnosticsSignError guifg=#ff005f ctermfg=197 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi LspDiagnosticsDefaultWarning guifg=#ffffaf ctermfg=229 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi LspDiagnosticsSignWarning guifg=#ffffaf ctermfg=229 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi LspDiagnosticsDefaultHint guifg=#afd7ff ctermfg=153 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi LspDiagnosticsSignHint guifg=#afd7ff ctermfg=153 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi LspDiagnosticsDefaultInformation guifg=#d7ffff ctermfg=194 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi LspDiagnosticsSignInformation guifg=#d7ffff ctermfg=194 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi StatusLine guifg=#af87ff ctermfg=141 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi StatusLineTerm guifg=#af87ff ctermfg=141 guibg=#303030 ctermbg=236 gui=bold cterm=bold
hi StatusLineNC guifg=#8787af ctermfg=103 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#8787af ctermfg=103 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi TabLine guifg=#af87ff ctermfg=141 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi TabLineFill guifg=#af87ff ctermfg=141 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi TabLineSel guifg=#303030 ctermfg=236 guibg=#af87ff ctermbg=141 gui=bold cterm=bold
hi vimCommand guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi vimIsCommand guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi vimNotation guifg=#afd7ff ctermfg=153 guibg=NONE ctermbg=NONE
hi vimBracket guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi rustQuestionMark guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi htmlTag guifg=#d7d7d7 ctermfg=188 guibg=NONE ctermbg=NONE
hi htmlTagName guifg=#87ff00 ctermfg=118 guibg=NONE ctermbg=NONE
hi htmlTitle guifg=#d7d7d7 ctermfg=188 guibg=NONE ctermbg=NONE
hi htmlArg guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi htmlSpecialTagName guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi tsxTagName guifg=#87ff00 ctermfg=118 guibg=NONE ctermbg=NONE
hi typescriptBraces guifg=#d7d7d7 ctermfg=188 guibg=NONE ctermbg=NONE
hi typescriptExport guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi typescriptFuncKeyword guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
hi typescriptIdentifierName guifg=#d7afff ctermfg=183 guibg=NONE ctermbg=NONE
hi typescriptMember guifg=#d7d7ff ctermfg=189 guibg=NONE ctermbg=NONE
hi typescriptVariableDeclaration guifg=#5fafff ctermfg=75 guibg=NONE ctermbg=NONE
hi typescriptVariable guifg=#ff875f ctermfg=209 guibg=NONE ctermbg=NONE
