%{
    #include<stdio.h>
%}

%%
int|float|if|else|while|main|return { fprintf(yyout, "Keyword: %s\n", yytext); }
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
~ { fprintf(yyout, "Operator: %s\n", yytext); }
[,;(){}] { fprintf(yyout, "Separator: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { fprintf(yyout, "Identifier: %s\n", yytext); }
.|\n {/* Ignore all other characters. */}
%%

int main(){ 
    extern FILE *yyin, *yyout;
    yyin = fopen("in.c","r");
    yyout = fopen("out.txt","w");
    yylex();
    return 0;
} 
