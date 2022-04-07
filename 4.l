%{
    // c code
    #include <stdio.h>
    #include <stdlib.h>
%}

%%
/* rules section */

%%

int main(){
    yylex();
    return 0;
}