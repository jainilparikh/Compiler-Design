%{
#include<stdio.h>
%}
%%
S :A B
A:'a' A 'b'
|
;
B :'b' B 'c'
|
;
%%
int main()
{
 printf("Enter the sentence");
 printf("\n");
 yyparse();
}
int yyerror()
{
 printf("Error");
 printf("\n");
 return 1;
}
