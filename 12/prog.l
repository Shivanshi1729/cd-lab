%{
    // design a DFA which accepts strings ending with 00.
    #include <stdio.h>
    #include <stdlib.h>
%}

%s A B DEAD

%%
<INITIAL>0 BEGIN A;
<INITIAL>1 BEGIN INITIAL;
<INITIAL>[^\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<A>0 BEGIN B;
<A>1 BEGIN INITIAL;
<A>[^\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<B>0 BEGIN B;
<B>1 BEGIN INITIAL;
<B>[^\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; { printf("Accepted\n"); }

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; { printf("Invalid\n"); }
%%

int main(){
    yylex();
    return 0;
}