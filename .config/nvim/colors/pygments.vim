" Vim color file - pygments
" Generated by http://bytefluent.com/vivify 2017-12-24
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

" set t_Co=256
let g:colors_name = "pygments"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#202020 guibg=#f0f0f0 guisp=#f0f0f0 gui=NONE ctermfg=234 ctermbg=255 cterm=NONE
"hi CTagsImport -- no settings --
"hi Search -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi Visual -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi clear -- no settings --
"hi user1 -- no settings --
"hi default -- no settings --
hi SpecialComment guifg=#70a0d0 guibg=NONE guisp=NONE gui=italic ctermfg=110 ctermbg=NONE cterm=NONE
hi Typedef guifg=#e5a00d guibg=NONE guisp=NONE gui=italic ctermfg=172 ctermbg=NONE cterm=NONE
hi Title guifg=#202020 guibg=NONE guisp=NONE gui=bold ctermfg=234 ctermbg=NONE cterm=bold
hi Folded guifg=#708090 guibg=#c0d0e0 guisp=#c0d0e0 gui=NONE ctermfg=60 ctermbg=146 cterm=NONE
hi PreCondit guifg=#1060a0 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi Include guifg=#1060a0 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#000000 guibg=#f0f0f0 guisp=#f0f0f0 gui=bold,italic ctermfg=NONE ctermbg=255 cterm=bold
hi StatusLineNC guifg=#506070 guibg=#a0b0c0 guisp=#a0b0c0 gui=italic ctermfg=60 ctermbg=103 cterm=NONE
hi NonText guifg=#c0c0c0 guibg=#e0e0e0 guisp=#e0e0e0 gui=NONE ctermfg=7 ctermbg=254 cterm=NONE
hi DiffText guifg=NONE guibg=#f0c8c8 guisp=#f0c8c8 gui=bold,italic ctermfg=NONE ctermbg=224 cterm=bold
hi Debug guifg=#70a0d0 guibg=NONE guisp=NONE gui=italic ctermfg=110 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#c0d0e0 guisp=#c0d0e0 gui=NONE ctermfg=NONE ctermbg=146 cterm=NONE
hi Identifier guifg=#5b3674 guibg=NONE guisp=NONE gui=italic ctermfg=96 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#70a0d0 guibg=NONE guisp=NONE gui=italic ctermfg=110 ctermbg=NONE cterm=NONE
hi Conditional guifg=#4c8f2f guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi StorageClass guifg=#e5a00d guibg=NONE guisp=NONE gui=italic ctermfg=172 ctermbg=NONE cterm=NONE
hi Todo guifg=#a0b0c0 guibg=NONE guisp=NONE gui=bold,italic,underline ctermfg=103 ctermbg=NONE cterm=bold,underline
hi Special guifg=#70a0d0 guibg=NONE guisp=NONE gui=italic ctermfg=110 ctermbg=NONE cterm=NONE
hi LineNr guifg=#ffffff guibg=#c0d0e0 guisp=#c0d0e0 gui=NONE ctermfg=15 ctermbg=146 cterm=NONE
hi StatusLine guifg=#ffffff guibg=#8090a0 guisp=#8090a0 gui=bold,italic ctermfg=15 ctermbg=103 cterm=bold
hi Label guifg=#e5a00d guibg=NONE guisp=NONE gui=italic ctermfg=172 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#ffffff guibg=#8090a0 guisp=#8090a0 gui=NONE ctermfg=15 ctermbg=103 cterm=NONE
hi Delimiter guifg=#70a0d0 guibg=NONE guisp=NONE gui=italic ctermfg=110 ctermbg=NONE cterm=NONE
hi Statement guifg=#007020 guibg=NONE guisp=NONE gui=bold ctermfg=2 ctermbg=NONE cterm=bold
hi Comment guifg=#a0b0c0 guibg=NONE guisp=NONE gui=italic ctermfg=103 ctermbg=NONE cterm=NONE
hi Character guifg=#a07040 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi Float guifg=#70a040 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi Number guifg=#40a070 guibg=NONE guisp=NONE gui=NONE ctermfg=72 ctermbg=NONE cterm=NONE
hi Boolean guifg=#007020 guibg=NONE guisp=NONE gui=bold ctermfg=2 ctermbg=NONE cterm=bold
hi Operator guifg=#408010 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#f6f6f6 guisp=#f6f6f6 gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi TabLineFill guifg=#9098a0 guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=NONE guibg=#f0e0b0 guisp=#f0e0b0 gui=bold,italic ctermfg=NONE ctermbg=223 cterm=bold
hi CursorColumn guifg=NONE guibg=#eaeaea guisp=#eaeaea gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi Define guifg=#1060a0 guibg=NONE guisp=NONE gui=bold ctermfg=25 ctermbg=NONE cterm=bold
hi Function guifg=#06287e guibg=NONE guisp=NONE gui=NONE ctermfg=6 ctermbg=NONE cterm=NONE
hi PreProc guifg=#1060a0 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#a0b0c0 guibg=#a0b0c0 guisp=#a0b0c0 gui=NONE ctermfg=103 ctermbg=103 cterm=NONE
hi Exception guifg=#e5a00d guibg=NONE guisp=NONE gui=italic ctermfg=172 ctermbg=NONE cterm=NONE
hi Keyword guifg=#e5a00d guibg=NONE guisp=NONE gui=italic ctermfg=172 ctermbg=NONE cterm=NONE
hi Type guifg=#e5a00d guibg=NONE guisp=NONE gui=italic ctermfg=172 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#e0e0e0 guisp=#e0e0e0 gui=bold,italic ctermfg=NONE ctermbg=254 cterm=bold
hi Cursor guifg=#000000 guibg=#b0b4b8 guisp=#b0b4b8 gui=NONE ctermfg=NONE ctermbg=250 cterm=NONE
hi Error guifg=#ff0000 guibg=#ffffff guisp=#ffffff gui=bold,underline ctermfg=196 ctermbg=15 cterm=bold,underline
hi PMenu guifg=#ffffff guibg=#808080 guisp=#808080 gui=NONE ctermfg=15 ctermbg=8 cterm=NONE
hi SpecialKey guifg=#d8a080 guibg=#e8e8e8 guisp=#e8e8e8 gui=italic ctermfg=180 ctermbg=254 cterm=NONE
hi Constant guifg=#a07040 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi Tag guifg=#70a0d0 guibg=NONE guisp=NONE gui=italic ctermfg=110 ctermbg=NONE cterm=NONE
hi String guifg=#4070a0 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi MatchParen guifg=#ffffff guibg=#80a090 guisp=#80a090 gui=bold ctermfg=15 ctermbg=108 cterm=bold
hi Repeat guifg=#7fbf58 guibg=NONE guisp=NONE gui=bold ctermfg=107 ctermbg=NONE cterm=bold
hi Structure guifg=#007020 guibg=NONE guisp=NONE gui=italic ctermfg=2 ctermbg=NONE cterm=NONE
hi Macro guifg=#1060a0 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi Underlined guifg=#202020 guibg=NONE guisp=NONE gui=underline ctermfg=234 ctermbg=NONE cterm=underline
hi DiffAdd guifg=NONE guibg=#c0e0d0 guisp=#c0e0d0 gui=bold,italic ctermfg=NONE ctermbg=151 cterm=bold
hi TabLine guifg=#000000 guibg=#b0b8c0 guisp=#b0b8c0 gui=italic ctermfg=NONE ctermbg=7 cterm=NONE
hi cursorim guifg=#f8f8f8 guibg=#8000ff guisp=#8000ff gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
hi gutter guifg=#000000 guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=NONE ctermbg=7 cterm=NONE
hi pythonbuiltin guifg=#657b83 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi phpstringdouble guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi javascriptstrings guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi phpstringsingle guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi lcursor guifg=#000000 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#87cefa guibg=#021a39 guisp=#021a39 gui=NONE ctermfg=117 ctermbg=17 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi menu guifg=#000000 guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi scrollbar guifg=#008b8b guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=30 ctermbg=14 cterm=NONE
hi char guifg=#9090f0 guibg=#101520 guisp=#101520 gui=NONE ctermfg=105 ctermbg=234 cterm=NONE
hi rubyconstant guifg=#5894d2 guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi rubylocalvariableormethod guifg=#D0D0FF guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi xmltagname guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi rubyblockparameter guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi rubyclass guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi xmlendtag guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi rubypseudovariable guifg=#9bda8b guibg=NONE guisp=NONE gui=NONE ctermfg=114 ctermbg=NONE cterm=NONE
hi rubyinstancevariable guifg=#c2eaf4 guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi xmltag guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi rubystringdelimiter guifg=#dd7700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi rubyinterpolation guifg=#ddf2a4 guibg=NONE guisp=NONE gui=NONE ctermfg=193 ctermbg=NONE cterm=NONE
hi rubypredefinedconstant guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi cursor guifg=#000000 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi tagname guifg=#a7a7a7 guibg=#660000 guisp=#660000 gui=NONE ctermfg=248 ctermbg=52 cterm=NONE
hi foldecolumn guifg=#535353 guibg=#202020 guisp=#202020 gui=NONE ctermfg=239 ctermbg=234 cterm=NONE
hi special guifg=#e9b96e guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi statement guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi cppstltype guifg=#729fcf guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi identifier guifg=#c9ceff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi function guifg=#ad7fa8 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi vimfold guifg=#FFFFFF guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi htmltag guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi underlined guifg=#ad7fa8 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi number guifg=#fce94f guibg=NONE guisp=NONE gui=NONE ctermfg=227 ctermbg=NONE cterm=NONE
hi rubyescape guifg=#ddf2a4 guibg=NONE guisp=NONE gui=NONE ctermfg=193 ctermbg=NONE cterm=NONE
hi mytaglistfilename guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi rubyclassvariable guifg=#c2eaf4 guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#aa6600 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi rubyoperator guifg=#00cbcd guibg=NONE guisp=NONE gui=NONE ctermfg=44 ctermbg=NONE cterm=NONE
hi method guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi cdefine guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi cinclude guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
hi htmlboldunderlineitalic guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
hi htmlbolditalic guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
hi htmlunderlineitalic guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
hi htmlbold guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
hi htmlboldunderline guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
hi htmlunderline guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
hi comment guifg=#8A9184 guibg=NONE guisp=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
hi rubypredefinedvariable guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi string guifg=#cae682 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi normal guifg=#4d4d4d guibg=#d8d4d4 guisp=#d8d4d4 gui=NONE ctermfg=239 ctermbg=188 cterm=NONE
hi rubyexception guifg=#8C4D38 guibg=NONE guisp=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
hi repeat guifg=#480000 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi type guifg=#907800 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#555555 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi rubyaccess guifg=#939264 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
hi vcursor guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi ncursor guifg=#000000 guibg=#FFFFFF guisp=#FFFFFF gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi icursor guifg=#000000 guibg=#FFEE00 guisp=#FFEE00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi otltab1 guifg=#3377ee guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi otltab9 guifg=#99ddee guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi otltab8 guifg=#1166ee guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
hi otltab3 guifg=#9966ff guibg=NONE guisp=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi otltab2 guifg=#22cae2 guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
hi otltab0 guifg=#eeeeff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi otltab7 guifg=#22bae2 guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
hi otltab6 guifg=#8866ee guibg=NONE guisp=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi otltab5 guifg=#22aae2 guibg=NONE guisp=NONE gui=NONE ctermfg=32 ctermbg=NONE cterm=NONE
hi otltab4 guifg=#92caf2 guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi otltodo guifg=#ffffff guibg=#00a0d0 guisp=#00a0d0 gui=NONE ctermfg=15 ctermbg=38 cterm=NONE
hi otltagdef guifg=#ffffff guibg=#005090 guisp=#005090 gui=NONE ctermfg=15 ctermbg=24 cterm=NONE
hi rcursor guifg=#000000 guibg=#00CCFF guisp=#00CCFF gui=NONE ctermfg=NONE ctermbg=45 cterm=NONE
hi otltagref guifg=#ffffff guibg=#8070a0 guisp=#8070a0 gui=NONE ctermfg=15 ctermbg=103 cterm=NONE
hi javascriptconditional guifg=#ff0007 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi xmlattribpunct guifg=#cccaa9 guibg=NONE guisp=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
hi javascriptfunction guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi javascriptregexpstring guifg=#aa6600 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi pythondoctest2 guifg=#3b916a guibg=NONE guisp=NONE gui=NONE ctermfg=72 ctermbg=NONE cterm=NONE
hi rubystring guifg=#0086d2 guibg=NONE guisp=NONE gui=NONE ctermfg=32 ctermbg=NONE cterm=NONE
hi rubyindentifier guifg=#008aff guibg=NONE guisp=NONE gui=NONE ctermfg=33 ctermbg=NONE cterm=NONE
hi rubydata guifg=#555555 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi jinjaraw guifg=#aaaaaa guibg=#200000 guisp=#200000 gui=NONE ctermfg=248 ctermbg=52 cterm=NONE
hi rubyspaceerror guifg=NONE guibg=#270000 guisp=#270000 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi javascriptdomelemfuncs guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi erubyrubydelim guifg=#2c8a16 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi erubycomment guifg=#4d9b3a guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi htmltagn guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#ee0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi djangostatement guifg=#fb660a guibg=#200000 guisp=#200000 gui=NONE ctermfg=202 ctermbg=52 cterm=NONE
hi javascriptlabel guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi jinjaoperator guifg=#ffffff guibg=#200000 guisp=#200000 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
hi rubykeyword guifg=#008800 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi jinjavarblock guifg=#ff0007 guibg=#200000 guisp=#200000 gui=NONE ctermfg=196 ctermbg=52 cterm=NONE
hi rubyfunction guifg=#0066bb guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi cssbraces guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi javascripthtmlelemfuncs guifg=#dd7700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi jinjaattribute guifg=#dd7700 guibg=#200000 guisp=#200000 gui=NONE ctermfg=172 ctermbg=52 cterm=NONE
hi rubyglobalvariable guifg=#dd7700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi pythondoctest guifg=#2f5f49 guibg=NONE guisp=NONE gui=NONE ctermfg=23 ctermbg=NONE cterm=NONE
hi javascript guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi djangovarblock guifg=#ff0007 guibg=#200000 guisp=#200000 gui=NONE ctermfg=196 ctermbg=52 cterm=NONE
hi javascriptcssstyles guifg=#dd7700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi jinjastring guifg=#0086d2 guibg=#200000 guisp=#200000 gui=NONE ctermfg=32 ctermbg=52 cterm=NONE
hi javascriptrepeat guifg=#ff0007 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi htmlspecialtagname guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi pythonfunction guifg=#ee0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi pythonspaceerror guifg=NONE guibg=#270000 guisp=#270000 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi djangoargument guifg=#0086d2 guibg=#200000 guisp=#200000 gui=NONE ctermfg=32 ctermbg=52 cterm=NONE
hi jinjanumber guifg=#bf0945 guibg=#200000 guisp=#200000 gui=NONE ctermfg=1 ctermbg=52 cterm=NONE
hi djangocomment guifg=#008800 guibg=#002300 guisp=#002300 gui=NONE ctermfg=28 ctermbg=22 cterm=NONE
hi jinjacomment guifg=#008800 guibg=#002300 guisp=#002300 gui=NONE ctermfg=28 ctermbg=22 cterm=NONE
hi pythoncoding guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi javascriptdoccomment guifg=#aaaaaa guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi xmlnamespace guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi htmlevent guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi jinjastatement guifg=#fb660a guibg=#200000 guisp=#200000 gui=NONE ctermfg=202 ctermbg=52 cterm=NONE
hi xmlcdataend guifg=#bf0945 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunc guifg=#2b6ba2 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi xmlequal guifg=#cccaa9 guibg=NONE guisp=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
hi rubymodule guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi jinjafilter guifg=#ff0086 guibg=#200000 guisp=#200000 gui=NONE ctermfg=198 ctermbg=52 cterm=NONE
hi pythonrun guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi cssidentifier guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi javascriptprototype guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi pythonclass guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi xmlcdata guifg=#bf0945 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi jinjatagblock guifg=#ff0007 guibg=#200000 guisp=#200000 gui=NONE ctermfg=196 ctermbg=52 cterm=NONE
hi pythonbuiltinobj guifg=#2b6ba2 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi djangotagblock guifg=#ff0007 guibg=#200000 guisp=#200000 gui=NONE ctermfg=196 ctermbg=52 cterm=NONE
hi jinjaspecial guifg=#008ffd guibg=#200000 guisp=#200000 gui=NONE ctermfg=33 ctermbg=52 cterm=NONE
hi xmlcdatacdata guifg=#ac1446 guibg=#23010c guisp=#23010c gui=NONE ctermfg=125 ctermbg=52 cterm=NONE
hi xmlcdatastart guifg=#bf0945 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi rubydocumentation guifg=#aaaaaa guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi djangofilter guifg=#ff0086 guibg=#200000 guisp=#200000 gui=NONE ctermfg=198 ctermbg=52 cterm=NONE
hi htmlendtag guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi jinjavariable guifg=#92cd35 guibg=#200000 guisp=#200000 gui=NONE ctermfg=149 ctermbg=52 cterm=NONE