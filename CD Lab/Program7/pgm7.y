%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token NM KEY LB NUM
%%
E:KEY NM'('')''{'T'}'
;
T:S T
|Q T
|
;
S:KEY D
;
D:NM','D
|NM';'
;
Q:NM'='NM O NM';'
|NM'='NUM';'
|NM'='NM O NM O NUM';'
;
O:'+'
|'-'
|'*'
|'/'
;
%%
int yyerror()
{
	printf("Invalid!\n");
	exit(0);
}
int main()
{
	printf("Enter the function definition:\n");
	yyparse();
	printf("Valid\n");
	return 0;
}
