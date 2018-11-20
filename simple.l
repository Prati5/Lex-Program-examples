// progarm to check whether the given sentence is compound or simple. 
/*// Lex program includes  three sections :
// 1. definition section; which includes C header files and intialisation and declarition of variables.
// 2. Rule Section; includes the description of the tokens using regular language written in UNIX style. It consists of pattern and action. Action is enclosed in curly braces{}. 
// 3. User subroutine Section which includes normal C program statements and calling statements to action part of section two. yylex() initialises the Lexer.
// v_count is used hold the count of vowels and c_count is used to hold the count of consonant.
*/
%{
#include<stdio.h>
int flag=0;
%}
%%
(""[nN][oO][rR]"")|(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[sS][oO]"")|(""[bB][uU][tT]"") { printf("The compound word used  is %s",yytext); flag=1;}
%%
int main()
{
	printf("Enter the sentence\n");
	yylex();
	if(flag==1) 
		printf("\nCompound sentence\n");
	else 
		printf("\nSimple sentence\n");
	return 0;
}
