grammar Demo;

// parser
prog:	(expr NEWLINE)*
    | (expr)*
    ;
expr:	expr ('*'|'/') expr
    |	expr ('+'|'-') expr
    |	INT
    |	'(' expr ')'
    ;

// lexer
NEWLINE : [\r\n]+ ;
INT     : [0-9]+ ;
