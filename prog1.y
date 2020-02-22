%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}
%%
S:A B
;
A:'a'A'b'
|
;
B:'b'B'c'
|
;
%%
int main()
{
   yyparse();
   printf(" Valid String ");
}
int yyerror()
{
   printf(" Error ");
   exit(0);
}
