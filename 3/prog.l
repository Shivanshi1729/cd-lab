%{
    // c code
    #include <stdio.h>
%}

%%
[0-9]*"."[0-9]* printf("Float value: %s\n", yytext);
[0-9]+ printf("Integer Value: %s\n", yytext);
.|\n {/* Ignore all other characters. */}
%%

int main(){
    yylex();
    return 0;
}