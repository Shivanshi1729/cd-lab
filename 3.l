%{
    // c code
    #include <stdio.h>
    #include <stdlib.h>

    int noWords = 0;
    int noTabs = 0;
    int noLines = 0;
    int noSpace = 0;
%}

%%
\n noLines++;
\t noTabs++;
([ ])+ noSpace++;
([a-zA-Z0-9])* noWords++;
%%

int main(){
    extern FILE *yyin = fopen("input.txt", "r");
    FILE *fp = fopen("output.txt", "w");
    /* stdin = freopen("input.txt", "r", stdin); */
    yylex();
    fprintf(fp, "noWords: %d\n", noWords);
    fprintf(fp, "noSpaces: %d\n", noSpace);
    fprintf(fp, "noLines: %d\n", noLines);
    fprintf(fp, "noTabs: %d\n", noTabs);
    fclose(fp);
    return 0;
}