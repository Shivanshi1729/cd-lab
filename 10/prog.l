%{
    #include <stdlib.h>
%}

%s A B C D E F G DEAD

%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN INITIAL;
<INITIAL>[^\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; { printf("Not Accepted\n");}

<A>a BEGIN B;
<A>b BEGIN F;
<A>[^\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; { printf("Not Accepted\n");}

<B>a BEGIN C;
<B>b BEGIN D;
<B>[^\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; { printf("Not Accepted\n");}

<C>a BEGIN C;
<C>b BEGIN D;
<C>[^\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; { printf("Accepted\n");}

<D>a BEGIN E;
<D>b BEGIN G;
<D>[^\n] BEGIN DEAD;
<D>\n BEGIN INITIAL; { printf("Accepted\n");}

<E>a BEGIN B;
<E>b BEGIN F;
<E>[^\n] BEGIN DEAD;
<E>\n BEGIN INITIAL; { printf("Accepted\n");}

<F>a BEGIN E;
<F>b BEGIN G;
<F>[^\n] BEGIN DEAD;
<F>\n BEGIN INITIAL; { printf("Not Accepted\n");}

<G>a BEGIN A;
<G>b BEGIN INITIAL;
<G>[^\n] BEGIN DEAD;
<G>\n BEGIN INITIAL; { printf("Accepted!\n");}

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; { printf("Invalid!\n");}
%%

int main(){
    yylex();
    return 0;
}