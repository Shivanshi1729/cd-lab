%{
    #include <stdlib.h>
%}

%s A B C DEAD

%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN B;
<INITIAL>[^\n] BEGIN DEAD ;
<INITIAL>\n BEGIN INITIAL; {printf("Accepted!\n");}
<A>a BEGIN INITIAL;
<A>b BEGIN C;
<A>[^\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Not Accepted!\n");}

<B>a BEGIN C;
<B>b BEGIN INITIAL;
<B>[^\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("Not Accepted!\n");}

<C>a BEGIN B;
<C>b BEGIN A;
<C>[^\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; {printf("Not Accepted!\n");}

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid!\n");}
%%

int main(){
    yylex();
    return 0;
}