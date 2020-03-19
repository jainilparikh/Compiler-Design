%{
#include "y.tab.h"
%}
%%
"if" return IF;
[(] {return '(';}
[{] {return '{';}
[}] {return '}';}
[=] {return '=';}
[)] {return ')';}
[;] {return ';';}
[a-zA-Z]+ {return EXP;}
[0-9]+ {return NUM;}
"\n" {return 0;}
%%

