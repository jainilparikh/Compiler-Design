%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
"(" {return '(';}
"for" {return FOR;}
")" {return ')';}
[0-9]* {return NUM;}
";" {return ';';}
"<" {return '<';}
"{" {return '{';}
"}" {return '}';}
">" {return '>';}
"++" {return INCREMENT;}
[a-z]* {return ALPHA;}
"=" {return '=';}
" " {}
\n {}
%%
