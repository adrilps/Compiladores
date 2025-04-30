grammar rbtlang;		

sentence
    : 
    (expression) (comma expression)*
    ;

expression
    : func
    | conditional
    ;

func
    : funcMove
    | funcGeneric
    ;

funcMove
    : 'move' '(' keywords comma (Digit+) ')'
    ;


keywords
    : 'up' 
    | 'down' 
    | 'left' 
    | 'right'
    ; 

funcGeneric
    : 'move'
    | 'collect'
    | 'push'
    ;

conditional
    : 'if' '(' expression ')' 'then' (expression)
    ;


comma
    : ','
    ;

fragment Digit
    : [0-9]
    ;
fragment UpperID
    : [A-Z]
    ;

fragment ID 
    : [a-z]
    ;             // match lower-case identifiers
WS 
    : [ \t\r\n]+ -> skip 
    ; // skip spaces, tabs, newlines
