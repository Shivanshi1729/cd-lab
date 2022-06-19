%{
%}

%%
[+-]?[0-9]+	{printf("Integer Constant\n");}
[+-]?[0-9]+"."[0-9]+	{printf("Float Constant\n");}
^[a-zA-Z_][a-zA-Z_0-9]*	{printf("Identifier\n");}
.*	{printf("Neither Identifier nor Constant\n");}
%%

int yywrap(){}

int main()
{
yylex();
return 0;
}
