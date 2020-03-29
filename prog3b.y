%{
#include<stdio.h>
%}
%token equal
%token NUM
%token INCREMENT	
%token ALPHA
%token FOR
%%
S:FOR '(' exp ';' exp ';' exp ')' '{'A'}';
A:FOR '(' exp ';' exp ';' exp ')' '{'B'}';
B:FOR '(' exp ';' exp ';' exp ')' '{'B'}'
|
;
exp:ALPHA '=' NUM
|
ALPHA RELOP NUM
|
ALPHA RELOP
|
;
RELOP:'<'|
'>'|
'='|
INCREMENT
|
;
%%
int main()
{
 yyparse();
 printf("The input is accepted");
 return 0;
}
int yyerror()
{
 printf("Error");
 exit(0);
 return 1;
}
