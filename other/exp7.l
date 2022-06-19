%{
%}

start \/\*
end \*\/

/*Rule Section*/
%%

\/\/(.*) ;

{start}.*{end} ;

%%
int main()
{
yyin=fopen(input.txt,"r");
yyout=fopen("out.txt","w");
yylex();
return 0;
}
