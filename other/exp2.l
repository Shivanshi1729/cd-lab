%{
#include <stdio.h>
%}

/*rule section*/

%%
^[a-zA-Z_][a-zA-Z0-9_]* printf("Valid Identifier\n");
^[^a-zA-Z_] printf("Invalid Identifier\n");
. ;
%%

int main()
{
	yylex();
}
