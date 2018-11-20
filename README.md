# Lex-Program-examples
Simple example on Lex programming.
What is lex?
Lex is a programming tool on UNIX platform,takes the tokens as a input in the form of regular expression and generates the c routine called as lexer.

● Lexer is also called as lexical analyser.

Tokens:

Tokens  are nothing but primitives of any programming language. It can be constants,keywords,expressions,identifiers etc. Tokens can be the combination of alphabets, digits or any metacharacters.
[Note: metacharacters are special symbols like *, $ etc]. 

Regular expression :
It is a powerful mechanism to describe the tokens.

 Lexical Analyser: 
 
 It is a initial program for the compiler, which reads theinput character by character and converts them into                                       meaningful sequence.

How To Execute Lex Program?

●  Open any text editor( Alternatively you can open it using terminal; type gedit filename.l ).

●  Type your program and save it using “.l” extension.

●  Open terminal(Ctrl+Alt+T).

●  Type    1. $   lex filename.l
                2. $  cc lex.yy.c -ll
                3. $  ./a.out
                
● It will dispaly the output. Press Ctrl+d  to see output[optional].
