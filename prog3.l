%{
#include"y.tab.h"
%}
%%
"for" {return FOR;}
[(] {return '(';}
[)] {return ')';}
[{] { return '{';}
[}] {return '}';}
[=] {return '=';}
[>] {return '>';}
[<] {return '<';}
[a-zA-Z]+ {return EXP;}
[0-9]+ {return NUM;}
. {return yytext[0];}
'\n' {return 0;}
%%

