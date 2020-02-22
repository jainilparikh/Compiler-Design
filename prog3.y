%{
#include<stdio.h>
#include<stdlib.h>
%}
%token FOR NUM EXP SPACE;
%%
S:FOR'('EXP'='NUM')''{'A'}'
;
A:FOR'('EXP'='NUM')''{'B'}'
;
B:FOR'('EXP'='NUM')''{'C'}'
;
C:FOR'('EXP'='NUM')''{'C'}'
|
;
%%
int main()
{
  yyparse();
  printf(" Correct String ");
  return 1;
}
int yyerror()
{
  printf(" Invalid String ");
  exit(0);
}
