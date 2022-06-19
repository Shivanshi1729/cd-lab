/* Definition Section */
%{
#include<stdio.h>
int valid_int=0, valid_float=0;
%}

/* Rule Section */
%%

 /* Integer Number */
^[-+]?[0-9]*		{printf("Valid Integer Number\n");}
 /* Float Number */
^[-+]?[0-9]*[.][0-9]+$	{printf("Valid Float Number\n");}	
. ;			{printf("Not Valid Integer/Float Number\n");}
%%

int main()
{
	yylex();		
}
