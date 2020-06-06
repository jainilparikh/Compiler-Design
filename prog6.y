%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void Quadruple();
char AddToTable(char, char, char);
int ind = 0;
char temp ='A';
struct incod {
char opd1, opd2, opr, result;
};
%}
// Types of variables is defined using union  You can define Multiple types here. As we are using only character in the table it is set to CHar sym.
%union
{
char sym;
}

%token LETTER NUMBER
%left '-' '+'
%right '*' '/'
%type<sym> LETTER NUMBER stmt expr   // Ask this

%%
stmt : LETTER '=' expr ';' { AddToTable((char)$1, (char)$3, '='); }   // if Z= b+c-d  step 1)A=B+C   step 2)temp_B = A-D Step 3)temp_c = Z = temp_B
     | expr';'
;
expr : expr '+' expr { $$ = AddToTable((char)$1, (char)$3, '+'); }
     | expr '-' expr { $$ = AddToTable((char)$1, (char)$3, '-'); }
| expr '*' expr { $$ = AddToTable((char)$1, (char)$3, '*'); }
| expr '/' expr { $$ = AddToTable((char)$1, (char)$3, '/'); }
| '(' expr ')' { $$ = (char)$2; }
| NUMBER {$$ = (char)$1; }
| LETTER {$$ = (char)$1; }
;
%%

yyerror(char *s) {
printf("%s\n",s);
exit(0);
}
struct incod code[20];
int id = 0;
char AddToTable(char opd1, char opd2, char opr)
{
code[ind].opd1 = opd1;
code[ind].opd2 = opd2;   // b+c goes in temp_A   temp_A -D goes in temp B 
code[ind].opr = opr;
code[ind].result = temp; // temporary variable Initially A 
ind++;
temp++;
return temp-1;  // returns to top of stack
}
void Quadruple()
{
int cnt = 0;
temp++;
printf("\n\n\tQUADRUPLE CODE\n\n");
int id = 0, i;
for(i=0; i<ind; i++)
{
printf("%d\t", id);
printf("%c\t",code[i].opr);
printf("%c\t",code[i].opd1);   //  Print the table
printf("%c\t",code[i].opd2);
printf("%c\n",code[i].result);
id++;
}
}
int main()
{
printf("\nEnter the expression: ");
yyparse();
Quadruple();
}
yywrap()
{ return 1;}
