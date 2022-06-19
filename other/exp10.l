%{
%}

reg (a|b)*a(aa|bb|ab|ba)

%%
{reg}	{printf("Accepted!");}
.*	{printf("Not Accepted!");}
%%

int yywrap(){}

int main(){
yylex();
return 0;
}
