setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2


" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
