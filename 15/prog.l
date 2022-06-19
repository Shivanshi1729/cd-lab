%{
    // design a DFA which accepts strings starting with 11.
    #include <stdio.h>
    #include <stdlib.h>
%}

%s A B C DEAD

%%
<INITIAL>1 BEGIN A;
<INITIAL>0 BEGIN C;
<INITIAL>[^\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<A>1 BEGIN B;
<A>0 BEGIN C;
<A>[^\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<B>0 BEGIN B;
<B>1 BEGIN B;
<B>[^\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; { printf("Accepted\n"); }

<C>0 BEGIN C;
<C>1 BEGIN C;
<C>[^\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; { printf("Invalid\n"); }
%%

int main(){
    yylex();
    return 0;
}