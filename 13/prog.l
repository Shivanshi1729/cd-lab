%{
    // design a DFA which accepts even number of 1s.
    #include <stdio.h>
    #include <stdlib.h>
%}

%s A DEAD

%%
<INITIAL>0 BEGIN INITIAL;
<INITIAL>1 BEGIN A;
<INITIAL>[^\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; { printf("Accepted\n"); }

<A>0 BEGIN A;
<A>1 BEGIN INITIAL;
<A>[^\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; { printf("Invalid\n"); }
%%

int main(){
    yylex();
    return 0;
}