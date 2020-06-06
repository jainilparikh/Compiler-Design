%{
#include"y.tab.h"
%}
%%
[\t\n]
for return FOR;
[0-9]+ return NUM;
[a-zA-Z][a-zA-Z0-9]* return ID;
"<="  return LE;
">="  return GE;
"=="  return EQ;
"!="  return NE;
"||"  return OR;
"&&"  return AND;
.     return yytext[0];
%%
