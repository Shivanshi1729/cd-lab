%{
    // c code
    #include <stdio.h>
%}

%%
\<[^>]*\> fprintf(yyout, "%s\n", yytext);
.|\n {};
%%

int main(){
    extern FILE *yyin, *yyout;
    char in[100], out[100];
    printf("Enter the input filename: ");
    scanf("%s", in);
    printf("Enter the ouput filename: ");
    scanf("%s", out);
    yyin = fopen(in, "r");
    yyout = fopen(out, "w");
    yylex();
    return 0;
}