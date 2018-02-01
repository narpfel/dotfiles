" Vim color file
" Converted from Textmate theme Pygments Default using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "PygmentsDefault"

hi Cursor ctermfg=231 ctermbg=241 cterm=NONE guifg=#eeeeee guibg=#5e5e5e gui=NONE
hi Visual ctermfg=NONE ctermbg=145 cterm=NONE guifg=NONE guibg=#adaeb8 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=253 cterm=NONE guifg=NONE guibg=#d6d6d6 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=253 cterm=NONE guifg=NONE guibg=#d6d6d6 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=253 cterm=NONE guifg=NONE guibg=#d6d6d6 gui=NONE
hi LineNr ctermfg=243 ctermbg=253 cterm=NONE guifg=#777777 guibg=#d6d6d6 gui=NONE
hi VertSplit ctermfg=248 ctermbg=248 cterm=NONE guifg=#a9a9a9 guibg=#a9a9a9 gui=NONE
hi MatchParen ctermfg=28 ctermbg=NONE cterm=underline guifg=#008000 guibg=NONE gui=underline
hi StatusLine ctermfg=0 ctermbg=248 cterm=bold guifg=#000000 guibg=#a9a9a9 gui=bold
hi StatusLineNC ctermfg=0 ctermbg=248 cterm=NONE guifg=#000000 guibg=#a9a9a9 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=145 cterm=NONE guifg=NONE guibg=#adaeb8 gui=NONE
hi IncSearch ctermfg=231 ctermbg=124 cterm=NONE guifg=#eeeeee guibg=#ba2121 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Folded ctermfg=66 ctermbg=231 cterm=NONE guifg=#408080 guibg=#eeeeee gui=NONE

hi Normal ctermfg=0 ctermbg=231 cterm=NONE guifg=#000000 guibg=#eeeeee gui=NONE
hi Boolean ctermfg=28 ctermbg=231 cterm=bold guifg=#008000 guibg=#eeeeee gui=bold
hi Character ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Comment ctermfg=66 ctermbg=NONE cterm=NONE guifg=#408080 guibg=NONE gui=italic
hi Conditional ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi DiffAdd ctermfg=0 ctermbg=149 cterm=bold guifg=#000000 guibg=#9ee459 gui=bold
hi DiffDelete ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ef5050 guibg=NONE gui=NONE
hi DiffChange ctermfg=0 ctermbg=152 cterm=NONE guifg=#000000 guibg=#b0c7df gui=NONE
hi DiffText ctermfg=0 ctermbg=74 cterm=bold guifg=#000000 guibg=#729fcf gui=bold
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Float ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE
hi Function ctermfg=21 ctermbg=NONE cterm=NONE guifg=#0000ff guibg=NONE gui=NONE
hi Identifier ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi Keyword ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi Label ctermfg=124 ctermbg=NONE cterm=NONE guifg=#ba2121 guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=254 cterm=NONE guifg=#3b3a32 guibg=#e2e2e2 gui=NONE
hi Number ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE
hi Operator ctermfg=129 ctermbg=NONE cterm=bold guifg=#aa22ff guibg=NONE gui=bold
hi PreProc ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi Special ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=253 cterm=NONE guifg=#3b3a32 guibg=#d6d6d6 gui=NONE
hi Statement ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi StorageClass ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi String ctermfg=124 ctermbg=NONE cterm=NONE guifg=#ba2121 guibg=NONE gui=NONE
hi Tag ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Title ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Todo ctermfg=66 ctermbg=NONE cterm=inverse,bold guifg=#408080 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi rubyFunction ctermfg=21 ctermbg=NONE cterm=NONE guifg=#0000ff guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyConstant ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=124 ctermbg=NONE cterm=NONE guifg=#ba2121 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyInclude ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=124 ctermbg=NONE cterm=NONE guifg=#ba2121 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=124 ctermbg=NONE cterm=NONE guifg=#ba2121 guibg=NONE gui=NONE
hi rubyEscape ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyControl ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi rubyClassVariable ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyOperator ctermfg=129 ctermbg=NONE cterm=bold guifg=#aa22ff guibg=NONE gui=bold
hi rubyException ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=66 ctermbg=NONE cterm=NONE guifg=#408080 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=28 ctermbg=NONE cterm=bold guifg=#008000 guibg=NONE gui=bold
hi javaScriptRailsFunction ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi yamlAlias ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=124 ctermbg=NONE cterm=NONE guifg=#ba2121 guibg=NONE gui=NONE
hi cssURL ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=28 ctermbg=NONE cterm=NONE guifg=#008000 guibg=NONE gui=NONE
hi cssColor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssValueLength ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
