%{
    // c code
    #include <stdio.h>
    #include <stdlib.h>
%}

%%
[0-9]+"."[0-9]+ {
    printf("Saw an float: %s\n", yytext);
}
[0-9]+ {
    printf("Saw an integer: %s\n", yytext);
}
%%

int main(){
    yylex();
    return 0;
}