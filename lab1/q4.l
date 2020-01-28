%{
#include<stdio.h>
#include<string.h>
%}

TYPE auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned

%%
{TYPE}				{printf("\n%s is a Keyword",yytext);}
[a-zA-Z][a-zA-Z0-9]*	{printf("\n%s is a Identifier",yytext);}
(.)				{;}
%%

int yywrap(){}
int main(){
	yyin=fopen("file2.txt","r");
	yylex();
}
