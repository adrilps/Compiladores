grammar rbtlang;		

prog
    : sentence EOF
    ;

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
    : 'move' '(' keywords comma (DIGIT+) ')'
    ;


keywords
    : 'up' 
    | 'down' 
    | 'left' 
    | 'right'
    ;

object
    : 'obst'
    | 'box'
    ;

funcGeneric
    : 'move'
    | 'collect'
    | 'push'
    ;

conditional
    : 'if'  object 'then' expression
    ;


comma
    : ','
    ;

DIGIT
    : [0-9]
    ;

WS 
    : [ \t\r\n]+ -> skip 
    ; // skip spaces, tabs, newlines
