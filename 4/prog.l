%{
    // c code
    #include <stdio.h>
    #include <stdlib.h>
%}

KEYWORD int|float|if|else|while|main|return
SEPARATOR [,;(){}]
OPERATOR ==|<=|>=|--|"++"|[*+-/%=<>!~]
ID [a-zA-Z_][a-zA-Z0-9_]*

%%
{KEYWORD} { printf("Keyword: %s\n", yytext); }
{OPERATOR} { printf("Operator: %s\n", yytext); }
{SEPARATOR} { printf("Seperator: %s\n", yytext); }
{ID} { printf("Identifier: %s\n", yytext); }
.|\n {/* Ignore all other characters. */}
%%

int main(){
    extern FILE *yyin;
    yyin = fopen("in.c", "r");
    yylex();
    return 0;
}