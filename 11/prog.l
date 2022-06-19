%{
    #include <stdlib.h>
%}

%s A B C DEAD

%%
<INITIAL>[_A-Za-z] BEGIN A;
<INITIAL>[0-9] BEGIN B;
<INITIAL>[.] BEGIN C;
<INITIAL>[^\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Input something\n");}

<A>[_A-Za-z0-9] BEGIN A;
<A>[^\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Identifier\n");}

<B>[0-9] BEGIN B;
<B>[.] BEGIN C;
<B>[^\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; { printf("Integer\n"); }

<C>[0-9] BEGIN C;
<C>[^\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; { printf("Float\n"); }

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; { printf("Invalid!\n");}
%%

int main(){
    yylex();
    return 0;
}