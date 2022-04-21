%{
    #include<stdio.h> 
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
    extern FILE *yyin, *yyout; 
    yyin=fopen("input.txt","r"); 
    yyout=fopen("output.txt","w"); 
    yylex(); 
    fprintf(yyout, "\nno of keywords %d", k); 
    fprintf(yyout, "\nno of seperators %d", sp); 
    fprintf(yyout, "\nno of operators %d", op); 
    return 0; 
} 
