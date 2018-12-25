" syn match haskellLambda '\\' conceal cchar=λ
syntax match hsNiceOperator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ
syn match haskellCompose /\s\.\(\s\|:\)/ms=s+1,me=e-1 conceal cchar=∘
syn match hsNiceOperator "\<mempty\>" conceal cchar=∅

hi clear Conceal
hi link haskellNiceOperator Conceal
hi link haskellCompose Conceal
hi link Conceal Operator
set concealcursor=nvi
set conceallevel=2

