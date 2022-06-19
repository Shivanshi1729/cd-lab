%{
	int n, w, c;
%}

%%
\n { n++; }
[^ \n\t]+	{w++; 
		c = c + yyleng;
		}
. c++;
%%

int yywrap(void)
{
	return 1;
}


main()
{
	extern FILE* yyin;
	yyin = fopen("input.txt", "r");
	yylex();
	printf("Line= %d word=%d total char=%d \n", n, w, c);
}

