%{
#include<stdio.h>
%}
%%
[\t" "] {fprintf(yyout," ");}
.|\n {fprintf(yyout,"%s",yytext);}
%%
int yywrap(void) {}
int main(){
    extern FILE *yyin, *yyout;
    yyin = fopen("input2.txt","r");
    yyout = fopen("output.txt","w");
    yylex(); 
    return 0;
}
