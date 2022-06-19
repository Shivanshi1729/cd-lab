/*Declaration Section*/

%{
#include<stdio.h>
int lineCount=0, spaceCount=0, tabCount=0, charCount=0;
%}

/*Rule Section*/

%%
\n lineCount++;
([ ])+ spaceCount++;
\t tabCount++;
. charCount++;
%%

//Subroutine Section

int main()
{
	yylex();	//subroutine
	printf("\nNo. of Lines: %d", lineCount);
	printf("\nNo. of Spaces: %d", spaceCount);
	printf("\nNo. of Tabs: %d", tabCount);
	printf("\nNo. of Characters: %d\n", charCount);
}



