%{
#include<stdio.h>
int words, spaces, lines, characters;
%}
%%
[\n]		lines++;
[\t ]		spaces++;
[^\t\n ]+	{printf("\nWord: %s",yytext); words++; characters+=yyleng;}
%%
main(){
	yyin = fopen("Text.txt","r");
	yylex();
	printf("\nNumber of words: %d\nNumber of spaces: %d\nNumber of characters: %d",words,spaces,characters);
}
