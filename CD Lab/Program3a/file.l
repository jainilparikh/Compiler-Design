%{
#include<stdio.h>
int comment=0,mcomment=0,flag=0;
%}
%%
(\n)?"/*" {if(flag==0) flag=1;}
"*/"	{if(flag) {flag=0; mcomment++;}}
(\n)?"//".*(\n) {if(flag==0)comment++;}
.|\n	if(flag==0) fprintf(yyout,"%s",yytext);
%%
int yywrap(){}
main()
{
yyin = fopen("Pgm.c","r");
//yyout = fopen("Pgm.c","r+");
yyout = fopen("Cleaned.c","w");
yylex();
printf("\nComment lines: %d\nMultiline: %d\n",comment,mcomment);
}
