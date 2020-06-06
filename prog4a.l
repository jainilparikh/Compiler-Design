%{
#include<stdio.h>
int a = 0;
int variable = 0;
int operator = 0;
%}
%%
int|double|float {a++;}
>|=|==|< {operator++;}
([a-z])([a-z]|[0-9])* {variable++;}
%%
void main()
{
yylex();
printf("identifiers %d",a);
printf("operator %d",operator);
printf("variable %d",variable);
}
int yywrap()
{
 return 1;
}
