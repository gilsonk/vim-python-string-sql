" Disable current syntax temporarily
let saved_syntax = b:current_syntax
silent unlet! b:current_syntax

" Load SQL syntax
syntax include @SQL syntax/sql.vim

" Python DocString region
syntax region sqlPythonString
    \ matchgroup=pythonTripleQuotes
    \ start=/f\?\z("""\|'''\)\%(\s\|\n\|\r\)*--begin-sql/
    \ end=/--end-sql\%(\s\|\n\|\r\)*\z1/
    \ contains=@SQL

" Restore original syntax
let b:current_syntax = saved_syntax
silent unlet! saved_syntax

