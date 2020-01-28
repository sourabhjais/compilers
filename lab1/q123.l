%{
#include<stdio.h> 
#include<string.h> 
int vowels=0;
int consonants=0;
int positive_integer=0;
int negative_integer=0;
int positive_fraction=0;
int negative_fraction=0;
int diff_character=-1;
%}
keyword  int|char|bool|float|void|for|do|while|if|else|return|void
%%
[aeiouAEIOU]	{vowels++;}
[a-zA-Z]	{consonants++;}
[0-9]+		{positive_integer++;}
-[0-9]+		{negative_integer++;}
[0-9]*\.[0-9]+	{positive_fraction++;}
-[0-9]*\.[0-9]+	{negative_fraction++;}
.		{diff_character++;}
%%

int yywrap(){}
int main(){
	yyin=fopen("file1.txt","r");
	yylex();
	printf("\nNumber of vowels:%d",vowels);
	printf("\nNumber of consonants:%d",consonants);
	printf("\nNumber of positive integer:%d",positive_integer);
	printf("\nnumber of negative integer:%d",negative_integer);
	printf("\nnumber of positive fraction:%d",positive_fraction);
	printf("\nnumber of negative fraction:%d",negative_fraction);	
	printf("\nNumber of different character:%d\n",diff_character);	
}
