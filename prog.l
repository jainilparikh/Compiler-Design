%{
#include<stdio.h>
%}
%%
[a-z]* {return 0;}
%%
int main()
{
 yylex();
 printf("this si a");
}
int error()
{
 printf("Error");
}
int yywrap()
{
 return 1;
}
