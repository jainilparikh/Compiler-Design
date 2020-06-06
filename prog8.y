%{
#include<ctype.h>
extern char *yytext;
char st[100][10];
int top=0;
char i_[2]="0";
char temp[2]="t";
%}
%token ID NUM
%right '='
%left '+''-'
%left '*''/'  //  Second Highest precedence
%left UMINUS  // Unary Minus  Highest precendence
%%
S:ID{push();}'='{push();}E{codegen_assign();}  //   Let us assume the expression z = b*c - d
;
E:E '+'{push();}T{codegen();}
|E'-' {push();}T{codegen();}
|T
;
T:T'*'{push();} F{codegen();}
|T'/'{push();} F{codegen();}
|F
;
F:'('E')'
|'-'{push();}F{codegen_umin();}%prec UMINUS
|ID {push();}
|NUM {push();}
;
%%
int main(){
	printf("Enter the expression:");
	yyparse();
        return 0;
}

void push(){
	strcpy(st[++top],yytext);
}

void codegen(){
	strcpy(temp,"t");
	strcat(temp,i_);
	printf("%s=%s%s%s\n",temp,st[top-2],st[top-1],st[top]); // prints t0 = B *C
	top-=2;
	strcpy(st[top],temp); // the third element on the top of the stack is replaced by temp variable
	i_[0]++;
}

void codegen_umin(){
	strcpy(temp,"t");
	strcat(temp,i_);
	printf("%s=-%s\n",temp,st[top]);
	top--;
	strcpy(st[top],temp);
	i_[0]++;
}

void codegen_assign(){
	printf("%s=%ss\n",st[top-2],st[top]);
	top-=2;
}
