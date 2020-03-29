%{
#include<stdio.h>
%}
%token NUM
%%
S:A {printf("%d",$$);};
A:NUM '+' NUM {$$ = $1 + $3;}
| NUM '*' NUM {$$ = $1 * $3;}
| NUM '/' NUM {$$ = $1 / $3;};
%%
int main()
{
printf("Enter the Expression");
printf("\n");
 yyparse();
 return 1;
}
int error()
{
  printf("Error");
}

