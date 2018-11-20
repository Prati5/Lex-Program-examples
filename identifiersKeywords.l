/* Lex program to print whether the entered word is keyword or identifiers.
// Lex program includes  three sections :
// 1. definition section; which includes C header files and intialisation and declarition of variables.
// 2. Rule Section; includes the description of the tokens using regular language written in UNIX style. It consists of pattern and action. Action is enclosed in curly braces{}. 
// 3. User subroutine Section which includes normal C program statements and calling statements to action part of section two. yylex() initialises the Lexer.
 */

%{
#include<stdio.h>
int key_Count=0, id_count=0;
%}
%%
const |
final |
break |
else  |
while |
for   |
if    |
do    |
switch               {     printf(" %s is a keyword\n",yytext);
			   return(0); }
[a-zA-Z]+[a-zA-Z0-9]* {     printf(" %s is a identifier\n",yytext);
			   return(0); }
%%
int main(){
	printf("Enter a cahracter/word. \n");
	yylex();
} 
