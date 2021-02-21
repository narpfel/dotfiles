" Inspired by the Pygments default colour scheme,
" Copyright 2006-2021 by the Pygments team, BSD license,
" https://github.com/pygments/pygments/blob/1dc90599e9b4a93d06365443ef6f7cc3b193108e/pygments/styles/default.py

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "PygmentsDefault"

hi Cursor guifg=#eeeeee guibg=#5e5e5e
hi Visual guibg=#adaeb8
hi CursorLine guibg=#d6d6d6
hi CursorColumn guibg=#d6d6d6
hi ColorColumn guibg=#d6d6d6
hi LineNr guifg=#777777 guibg=#d6d6d6
hi VertSplit guifg=#a9a9a9 guibg=#a9a9a9
hi MatchParen guifg=#008080 guibg=#ff6f00 gui=underline
hi StatusLine guifg=#000000 guibg=#a9a9a9 gui=bold
hi StatusLineNC guifg=#000000 guibg=#a9a9a9
hi Pmenu guibg=#dddddd
hi PmenuSel guibg=#adaeb8
hi IncSearch guifg=#eeeeee guibg=#ba2121
hi Search gui=underline
hi Constant guifg=#008000
hi Folded guifg=#408080 guibg=#eeeeee
hi SignColumn guibg=#d7d7d7
hi CocWarningFloat guifg=#d48100

hi Normal guifg=#000000 guibg=#eeeeee
hi Boolean guifg=#008000 guibg=#eeeeee gui=bold

hi Comment guifg=#408080 gui=italic
hi Conditional guifg=#008000 gui=bold

hi Define guifg=#008000 gui=bold
hi diffAdded guifg=#9ed459 gui=bold
hi diffRemoved guifg=#df5050 gui=bold
hi ErrorMsg guifg=#f8f8f0 guibg=#f92672
hi WarningMsg guifg=#f8f8f0 guibg=#f92672
hi Float guifg=#666666
hi Function guifg=#0000ff
hi Identifier guifg=NONE
hi Keyword guifg=#008000 gui=bold
hi Label guifg=#ba2121
hi NonText guifg=#3b3a32 guibg=#e2e2e2
hi Number guifg=#666666
hi Operator guifg=#aa22ff gui=bold
hi PreProc guifg=#008000 gui=bold
hi Special guifg=#008000
hi SpecialKey guifg=#3b3a32 guibg=#d6d6d6
hi Statement guifg=#008000 gui=bold
hi StorageClass guifg=#008000 gui=bold
hi String guifg=#ba2121
hi Tag guifg=#f92672
hi Title guifg=#000000 gui=bold
hi Todo guifg=#408080 gui=inverse,bold,italic
hi Type guifg=#0000ff gui=bold
hi TSTypeBuiltin guifg=#b00040
hi Underlined gui=underline

hi Delimiter guifg=NONE

hi haskellIdentifier guifg=#008000 gui=bold
