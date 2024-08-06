; extends

((line_comment
   doc: (doc_comment) @injection.content)
 (#set! injection.language "markdown")
 (#set! injection.include-children))

((macro_invocation
   macro: ((scoped_identifier)) @macro_name
   (token_tree) @injection.content)
 (#any-of? @macro_name "ct_python::ct_python" "ct_python")
 (#set! injection.language "python")
 (#offset! @injection.content 0 1 0 -1)
 (#set! injection.include-children))
