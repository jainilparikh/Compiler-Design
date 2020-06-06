%{
#include"y.tab.h"
%}
%%
"if" {return IF;}
[a-z]([a-z][0-9])* {return identifier;}
">" {return '>';}
"<" { return '<';}
[0-9]* {return NUM;}
"=" { return '=';}
"(" { return '(';}
")" { return ')';}
"{" {return  '{';}
"}" { return '}';}
"[" { return '[';}
"]" { return ']';}
%%
