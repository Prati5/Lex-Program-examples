/* Program to count number of vowels and consonant in the entered string.
// Lex program includes  three sections :
// 1. definition section; which includes C header files and intialisation and declarition of variables.
// 2. Rule Section; includes the description of the tokens using regular language written in UNIX style. It consists of pattern and action. Action is enclosed in curly braces{}. 
// 3. User subroutine Section which includes normal C program statements and calling statements to action part of section two. yylex() initialises the Lexer.
// v_count is used hold the count of vowels and c_count is used to hold the count of consonant.
*/
%{
#include<stdio.h>
int v_count=0, c_count=0;
%}

%%
[ \t\n] {;}
[aAeEiIoOuU] { v_count++; }
[a-zA-Z] {c_count++;  }
%%

int main(){
	printf("Enter a sentence \n");
	yylex();
	printf("The number of vowels =%d \n",v_count);
	printf("The number of consonants=%d \n", c_count);
}
