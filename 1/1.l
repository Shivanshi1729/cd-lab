%{
    // c code
    #include <stdio.h>
    #include <stdlib.h>

    int noLines = 0;
    int noSpace = 0;
    int noTabs = 0;
    int noCharacter = 0;
%}

%%
\n noLines++;
\t noTabs++;
([ ])+ noSpace++;
[a-zA-Z0-9] noCharacter++;
%%

int main(){
    yylex();
    printf("noLines: %d\n", noLines);
    printf("noTabs: %d\n", noTabs);
    printf("noSpaces: %d\n", noSpace);
    printf("noWords: %d\n", noCharacter);
    return 0;
}