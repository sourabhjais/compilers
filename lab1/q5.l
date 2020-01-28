%{
#include<stdio.h> 
#include<string.h> 
%}

%%
[a-zA-Z0-9]{3,5}	{printf("\n%s",yytext);}
.
%%

int yywrap(){}

int main(){
	yyin=fopen("file2.txt","r");
	printf("\n set of string having 3 to 5 alphabets:");
	yylex();
	
}
