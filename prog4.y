%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUM EXP IF ;
%% 
S:IF'('EXP'='NUM')''{'A'}'
;
A:IF'('EXP'='NUM')''{'B'}'
;
B:IF'('EXP'='NUM')''{'C'}'
;
C:IF'('EXP'='NUM')''{'C'}'
|
;
%%
int main()
{
  yyparse();
  printf(" Valid String ");
  return 1;
}
int yyerror()
{
  printf(" Invalid String ");
  exit(0);
}
