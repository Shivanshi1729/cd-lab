%{
%}

%%
"<"[^>]*> {printf("%s\n", yytext); }
. ;
%%	

int yywrap(){}
	
int main(int argc, char*argv[])
{
	extern FILE *yyin = fopen("tags.txt","r");
	yylex();
	return 0;
}
