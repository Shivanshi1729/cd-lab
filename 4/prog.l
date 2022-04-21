%{ 
    #include<stdio.h> 
    int k=0, sp=0, op=0; 
%} 

%% 
    "auto"|"include"|"return"|"int" {k++;} 
    ";"|"," {sp++;} 
    "+"|"=" {op++;} 
%% 

int yywrap(){ 
    return 1; 
} 

int main(){ 
    extern FILE *yyin, *yyout; 
    yyin=fopen("input.txt","r"); 
    yyout=fopen("output.txt","w"); 
    yylex(); 
    fprintf(yyout, "\nno of keywords %d", k); 
    fprintf(yyout, "\nno of seperators %d", sp); 
    fprintf(yyout, "\nno of operators %d", op); 
    return 0; 
} 
