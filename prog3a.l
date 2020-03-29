%{
#include<stdio.h>
int  c = 0;
int flag = 0;
%}
%%
"//".*\n {if(flag == 1){fprintf(yyout,"");}else{fprintf(yyout,"");c++;}}
"/*"\n {if(flag == 1){fprintf(yyout,"");}else{fprintf(yyout,"");flag ==1;c++;}}
\n.*"*/" {if(flag == 1){flag = 0;fprintf(yyout,"");}}
.* {}
"\n" {}
%%
int main()
{
yyin = fopen("test.txt","r");
yyout = fopen("test.txt","w");
printf("the value is %d",c);
  return 1;
}
int yywrap()
{
return 1;
}

