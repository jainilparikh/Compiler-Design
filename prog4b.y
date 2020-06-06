%{
 #include<stdio.h>
int c = 0;

#include<stdlib.h>

%}
%token identifier IF NUM;
%%
S:IF '(' identifier RELOP NUM ')' '{'A'}' {c++;}
|
;
A:IF '(' identifier RELOP NUM ')' '{'A'}' {c++;}
|
;
RELOP: '>' |
'<' |
;
%%
void main()
{
yyparse();
printf("The string is valid");
printf("The nubmer of if are %d",c);
}
int yyerror()
{
 printf("The string is invalid");
 exit(0);
}
