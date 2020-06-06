%{
#include"y.tab.h"
extern int yylval;
%}
%%
int|float|void|char|double|return {return KEY;}
[a-zA-Z_][a-zA-Z0-9_]* {return NM;}
[0-9]+ {yylval=atoi(yytext);return NUM;}
\n
" " 
. return yytext[0];
%%
