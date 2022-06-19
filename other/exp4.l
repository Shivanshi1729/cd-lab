%{
#include<stdio.h>
%}
%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|printf     {ECHO; printf("\tKEYWORD\n");}
[{};,()]   {ECHO; printf("\tSEPERATOR\n");}
[+-/=*%]   {ECHO; printf("\tOPERATOR\n");}
([a-zA-Z][0-9])+|[a-zA-Z]* {ECHO; printf("\tIdentifier\n");}
.|\n ;
%%
int yywrap(void){}
int main(void)
{
yylex();
return 0;
}
