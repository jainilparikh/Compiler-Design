%{
#include<stdio.h>
int pos=0,neg=0,zero=0,posf=0,negf=0;
%}
%%
[+][+|-]+.*
-[-|+]+.*
[+|-]?0[.]?[0]*		zero++;
[+|-]?0?[.][0]+		zero++;	
[+]?[0-9]+			pos++;
[-][0-9]+			neg++;	
[+]?[0-9]*[.|/][0-9]+	posf++;
[-][0-9]*[.|/][0-9]+	negf++;
%%
main()
{
yylex();
printf("\nPositive = %d\nNegative = %d\nZeroes = %d\nPositive fractions = %d\nNegative fractions = %d\n",pos,neg,zero,posf,negf);
}
