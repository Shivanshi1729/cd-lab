%{
    // c code
    #include <stdio.h>

    int noCharacters = 0;
    int noWords = 0;
    int noSpace = 0;
%}

%%
[ ] {noSpace++;}
[^ \n\t]+ {noWords++, noCharacters=noCharacters+yyleng;}
\n {noCharacters++;}
%%

int main(){
    extern FILE *yyin;
    yyin = fopen("input.txt", "r");
    FILE *fp = fopen("output.txt", "w");
    yylex();
    fprintf(fp, "noWords: %d\n", noWords);
    fprintf(fp, "noSpaces: %d\n", noSpace);
    fprintf(fp, "noCharacters: %d\n", noCharacters);
    fclose(fp);
    return 0;
}