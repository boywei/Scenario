grammar AtomicScenario;

scenario
    : 'scenario' ':' '{' map ',' (weather ',')? actors ',' (behaviors)? '}'
    ;

map
    : 'map' ':' '{' 'source' ':' STRING '}'
    ;

weather
    : 'weather' ':'  STRING
    ;

actors
    : 'actors' ':' '[' actor (',' actor)* ']'
    ;

actor
    : '{' attribute (',' attribute)* '}'
    | '{' '}'
    ;

attribute
   : 'name' ':' STRING
   | attr_name ':' NUMBER
   ;

attr_name
    : 'x'
    | 'y'
    | 'speed'
    ;


behaviors
    : 'behaviors' ':' '{' behavior (',' behavior)* '}'
    ;

behavior
    : STRING ':' '{' transition (',' transition)* '}'
    ;

transition
    : '[' STRING ']' STRING '->' STRING
    ;

// lexer
LeftParen : '(';
RightParen : ')';
LeftBracket : '[';
RightBracket : ']';
LeftBrace : '{';
RightBrace : '}';

Question : '?';
Colon : ':';
Semi : ';';
Comma : ',';

Scenario: 'scenario';
Map: 'map';
Source: 'source';
Weather: 'weather';
Actors: 'actors';
Name: 'name';
Speed: 'speed';
X: 'x';
Y: 'y';
Behaviors: 'behaviors';
Transition: '->';



// Json Reference
obj
   : '{' pair (',' pair)* '}'
   | '{' '}'
   ;

pair
   : STRING ':' value
   ;

arr
   : '[' value (',' value)* ']'
   | '[' ']'
   ;

value
   : STRING
   | NUMBER
   | obj
   | arr
   | 'true'
   | 'false'
   | 'null'
   ;


STRING
   : '"' (ESC | SAFECODEPOINT)* '"'
   ;


fragment ESC
   : '\\' (["\\/bfnrt] | UNICODE)
   ;
fragment UNICODE
   : 'u' HEX HEX HEX HEX
   ;
fragment HEX
   : [0-9a-fA-F]
   ;
fragment SAFECODEPOINT
   : ~ ["\\\u0000-\u001F]
   ;


NUMBER
   : '-'? INT ('.' [0-9] +)? EXP?
   ;


fragment INT
   : '0' | [1-9] [0-9]*
   ;


fragment EXP
   : [Ee] [+\-]? INT
   ;

// \- since - means "range" inside [...]

WS
   : [ \t\n\r] + -> skip
   ;


