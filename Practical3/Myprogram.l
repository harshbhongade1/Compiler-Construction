%{
#include<stdio.h>
int count=0;
%}
%%
[Aa][a-zA-z]* { count++; }

.|\n
%%
int main(){
printf("Enter a paragraph: ");
yylex();
printf("The number of words starting with A or a is: %d\n",count);
return 0;
}
int yywrap() {
return 1;
}
