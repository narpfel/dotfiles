augroup LoxSyntax
    autocmd!

    autocmd FileType lox setlocal commentstring=//\ %s
    autocmd FileType lox setlocal autoindent
    autocmd FileType lox setlocal cindent
    autocmd FileType lox setlocal cinoptions=L0,(s,Ws,J1,j1,m1
    autocmd FileType lox setlocal cinkeys=0{,0},!^F,o,O,0[,0],0(,0)
augroup END
