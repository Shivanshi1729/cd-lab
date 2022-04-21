%{
    // c code
    #include <stdio.h>
    #include <stdlib.h>
%}

%%
int|float|if|else|while|main|return { printf("Keyword: %s\n", yytext); }
== |
\<= |
\>= |
-- |
\+\+ |
= |
\/ |
\* |
\+ |
- |
% |
\< |
\> |
! |
~ { printf("Operator: %s\n", yytext); }
[,;(){}] { printf("Separator: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }
.|\n {/* Ignore all other characters. */}
%%

int main(){
    extern FILE *yyin;
    yyin = fopen("in.c", "r");
    yylex();
    return 0;
}