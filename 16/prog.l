%{
    // design a DFA which accepts strings with odd 1s and even 0s.
    #include <stdio.h>
    #include <stdlib.h>
%}

%s A B C DEAD

%%
<INITIAL>1 BEGIN A;
<INITIAL>0 BEGIN C;
<INITIAL>[^\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<A>0 BEGIN B;
<A>1 BEGIN INITIAL;
<A>[^\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; { printf("Accepted\n"); }

<B>1 BEGIN C;
<B>0 BEGIN A;
<B>[^\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<C>0 BEGIN INITIAL;
<C>1 BEGIN B;
<C>[^\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; { printf("Not Accepted\n"); }

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; { printf("Invalid\n"); }
%%

int main(){
    yylex();
    return 0;
}