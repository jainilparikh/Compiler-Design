%{
#include<stdio.h>
int positive = 0;
int negative = 0;
int zero = 0;
int positive_fraction = 0;
int negative_fraction = 0;
%}
%%
[+|-]?[0]*.[0]* {zero++;}
[+]?[0-9]+.[0-9]+ {positive_fraction++;}
[-]?[0-9]+.[0-9]+ {negative_fraction++;}
[+]?[0-9]+ {positive++;}
[-][0-9]+ {negative++;}
%%
int main()
{
 printf("Enter the number");
 yylex();
 printf("positive number: %d",positive);
 printf("\n");
 printf("negative number: %d",negative);
 printf("\n");
 printf("positive fractions: %d",positive_fraction);
 printf("\n");
 printf("negative fractons: %d",negative_fraction);
 printf("\n");
 return 1;
}
int yyerror()
{
printf("Error");
return 1;
}
int yywrap()
{
return 1;
}	
