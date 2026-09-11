%{
#include<stdio.h>
%}

%%
.*COM$ {printf("Line end with COM...\n");}
.*com$ {printf("Line end with COM...\n");}
.* {printf("Line does not end with COM...\n");}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Harsh Bhongade 24070521080\n");
    printf("Enter line: ");
    yylex();
    return 0;
}
