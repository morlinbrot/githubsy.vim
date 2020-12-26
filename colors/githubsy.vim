" Author:     synul (synul@mailbox.org)
" URL:        https://github.com/synul/githubsy.vim
" License:    MIT
" Copyright (c) 2020 synul

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "githubsy"


hi Boolean guifg=#5fafff ctermfg=75
hi Comment guifg=#545c8c ctermfg=60 gui=NONE cterm=NONE
hi Constant guifg=#5fafff ctermfg=75
hi Delimiter guifg=#f5f5f5 ctermfg=203
hi Float guifg=#5fafff ctermfg=75
hi Function guifg=#af87d7 ctermfg=140 gui=NONE cterm=NONE
hi Identifier guifg=#af87d7 ctermfg=140
hi Include guifg=#afd7d7 ctermfg=189
hi Keyword guifg=#f5f5f5 ctermfg=203
hi Macro guifg=#5fafff ctermfg=75
hi Normal guifg=#d7d7d7 ctermfg=188 guibg=#1c1c1c ctermbg=233
hi Number guifg=#5fafff ctermfg=75
hi PreCondit guifg=#5fafff ctermfg=75
hi Search guifg=#121212 ctermfg=233 guibg=#5fafff ctermbg=75
hi IncSearch guifg=#7bcc72 ctermfg=113 guibg=#121212 ctermbg=233
hi PreProc guifg=#d7d7ff ctermfg=189
hi Statement guifg=#f5f5f5 ctermfg=203
hi StorageClass guifg=#f5f5f5 ctermfg=203
hi String guifg=#87d7ff ctermfg=117
hi Todo guifg=#5fafff ctermfg=75 guibg=#545c8c ctermbg=60 gui=bold cterm=bold
hi Type guifg=#ff5f5f ctermfg=203
hi TypeDef guifg=#a8a384 ctermfg=144 gui=NONE cterm=NONE
hi Variable guifg=#fb8532 ctermfg=208
hi Visual guibg=#363e7f ctermbg=61 gui=NONE cterm=NONE

hi vimCommand guifg=#f5f5f5 ctermfg=203
hi vimIsCommand guifg=#5fafff ctermfg=75
hi vimNotation guifg=#87d7ff ctermfg=117
hi vimBracket guifg=#d7d7d7 ctermfg=189

hi rustQuestionMark guifg=#f5f5f5 ctermfg=203

hi htmlTag guifg=#d7d7d7 ctermfg=188
hi htmlTagName guifg=#7bcc72 ctermfg=113
hi htmlTitle guifg=#d7d7d7 ctermfg=188
hi htmlArg guifg=#af87d7 ctermfg=140
hi htmlSpecialTagName guifg=#f5f5f5 ctermfg=203

hi tsxTagName guifg=#7bcc72 ctermfg=113

hi typescriptExport guifg=#f5f5f5 ctermfg=203
hi typescriptFuncKeyword guifg=#f5f5f5 ctermfg=203
hi typescriptVariableDeclaration guifg=#fb8532 ctermfg=208
hi typescriptVariable guifg=#f5f5f5 ctermfg=203

if has("nvim")
  let g:terminal_color_0 = '#117219'
  let g:terminal_color_1 = '#f5f5f5'
  let g:terminal_color_2 = '#7bcc72'
  let g:terminal_color_3 = '#8e8a6f'
  let g:terminal_color_4 = '#87afd7'
  let g:terminal_color_5 = '#5fafff'
  let g:terminal_color_6 = '#afd7d7'
  let g:terminal_color_7 = '#9ea3c0'
  let g:terminal_color_8 = '#545c8c'
  let g:terminal_color_9 = '#af87d7'
  let g:terminal_color_10 = '#7cbe8c'
  let g:terminal_color_11 = '#a8a384'
  let g:terminal_color_12 = '#589ec6'
  let g:terminal_color_13 = '#8787d7'
  let g:terminal_color_14 = '#59b6b6'
  let g:terminal_color_15 = '#9ea3c0'
let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif

" ++++ Remnants of 'wadackel/vim-dogrun'

hi NonText guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE
hi VertSplit guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LineNr guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Cursor guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146
hi CursorIM guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146
hi SignColumn guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE
hi ColorColumn guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorColumn guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#535f98 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conceal guifg=#ac8b83 ctermfg=138 guibg=#222433 ctermbg=235 gui=NONE cterm=NONE
hi NormalFloat guifg=#9ea3c0 ctermfg=146 guibg=#32364c ctermbg=237 gui=NONE cterm=NONE
hi Folded guifg=#666c99 ctermfg=60 guibg=#32364c ctermbg=237 gui=NONE cterm=NONE
hi FoldColumn guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guibg=#2f3147 ctermbg=236
hi Directory guifg=#a8a384 ctermfg=144
hi Underlined gui=underline cterm=underline
hi Label guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Title guifg=#a8a384 ctermfg=144 gui=bold cterm=bold
hi Exception guifg=#a8a384 ctermfg=144
hi Special guifg=#b871b8 ctermfg=133
hi SpecialKey guifg=#b871b8 ctermfg=133
hi SpecialChar guifg=#b871b8 ctermfg=133
hi SpecialComment guifg=#b871b8 ctermfg=133
hi Error guifg=#ff5f5f ctermfg=203 guibg=#222433 ctermbg=235 gui=bold cterm=bold
hi ErrorMsg guifg=#ff5f5f ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi WarningMsg guifg=#ac8b83 ctermfg=138 gui=bold cterm=bold
hi MoreMsg guifg=#73c1a9 ctermfg=79
hi Pmenu guifg=#9ea3c0 ctermfg=146 guibg=#32364c ctermbg=237
hi PmenuSel guifg=#9ea3c0 ctermfg=146 guibg=#424865 ctermbg=60
hi PmenuSbar guibg=#292c3f ctermbg=236
hi PmenuThumb guibg=#464f7f ctermbg=60
hi Question guifg=#73c1a9 ctermfg=79 gui=bold cterm=bold
hi WildMenu guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104
hi SpellBad guifg=#ff5f5f ctermfg=203 gui=underline cterm=underline
hi SpellCap gui=underline cterm=underline
hi SpellLocal guifg=#ff5f5f ctermfg=203 gui=underline cterm=underline
hi SpellRare guifg=#a8a384 ctermfg=144 gui=underline cterm=underline
hi DiffAdd guibg=#1c394b ctermbg=237 gui=bold cterm=bold
hi DiffChange guibg=#26463b ctermbg=23 gui=bold cterm=bold
hi DiffDelete guifg=#d2d9ff ctermfg=189 guibg=#5e3e5e ctermbg=96 gui=bold cterm=bold
hi DiffText guibg=#28795c ctermbg=29 gui=NONE cterm=NONE
hi QuickFixLine guifg=#9ea3c0 ctermfg=146 guibg=#363e7f ctermbg=61

hi StatusLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=bold cterm=bold
hi StatusLineTerm guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=bold cterm=bold
hi StatusLineNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 gui=NONE cterm=NONE
hi TabLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi TabLineFill guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi TabLineSel guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104 gui=bold cterm=bold


let g:defx_icons_gui_colors = {
  \ 'brown': 'a9323d',
  \ 'aqua': '5b9c9c',
  \ 'blue': '5d8fac',
  \ 'darkBlue': '557486',
  \ 'purple': '6f78be',
  \ 'lightPurple': '959acb',
  \ 'red': 'c2616b',
  \ 'beige': '686765',
  \ 'yellow': '8e8a6f',
  \ 'orange': 'c59f96',
  \ 'darkOrange': '79564f',
  \ 'pink': '9e619e',
  \ 'salmon': 'ab57ab',
  \ 'green': '63976f',
  \ 'lightGreen': '5aa46c',
  \ 'white': '898da6',
  \ }
let g:defx_icons_term_colors = {
  \ 'brown': 131,
  \ 'aqua': 73,
  \ 'blue': 67,
  \ 'darkBlue': 67,
  \ 'purple': 104,
  \ 'lightPurple': 103,
  \ 'red': 131,
  \ 'beige': 242,
  \ 'yellow': 101,
  \ 'orange': 181,
  \ 'darkOrange': 95,
  \ 'pink': 133,
  \ 'salmon': 133,
  \ 'green': 65,
  \ 'lightGreen': 71,
  \ 'white': 103,
  \ }
let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine'],
  \ 'bg+':     ['bg', 'CursorLine'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Comment'],
  \ 'gutter':  ['bg', 'Normal'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Label'],
  \ 'pointer': ['fg', 'Boolean'],
  \ 'marker':  ['fg', 'Boolean'],
  \ 'spinner': ['fg', 'Title'],
  \ 'header':  ['fg', 'Comment'],
  \ }
