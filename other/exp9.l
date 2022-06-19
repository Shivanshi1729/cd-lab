%{ 
%}

reg (aa|bb)*((ab|ba)(aa|bb)*(ab|ba)(aa|bb)*)*

%%
{reg}	{printf("Accepted");}
.*	{printf("Not Accepted");}
%%

int yywrap(){}

int main()
{
	yylex();
	return 0;
}
