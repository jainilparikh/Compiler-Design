%{
#include<stdio.h>
int word = 0;
int new_line = 0;
int space = 0;
%}
%%
[a-z][a-z]* {word++;}
"\n" {new_line++;}
" " {space++;}
%%
int main()
{
  yyin = fopen("test.txt","r");
  printf("\n");
  yylex();
  printf("words: %d",word);
  printf("\n");
  printf("new_lines: %d",new_line);
  printf("\n");
  printf("space: %d",space);
  return 1;
}
int yyerror()
{
  printf("error");
}
int yywrap()
{
  return 1;
}
