%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<ctype.h>
int yylex();
int yyerror();
%}
%token NUM
%left '+''-'
%left '*''/'
%%
S:E {printf("The result =%d",$$);}
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|NUM
;
%%
int main()
{
	printf("Enter the expression:\n");
	yyparse();
	printf("\nValid\n");
	return 0;
}
int yyerror()
{
	printf("\nInvalid\n");
	exit(0);
}
