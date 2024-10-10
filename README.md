# Yacc-Codes
Yacc (Yet Another Compiler Compiler) is a computer program that generates a parser for a given grammar.

## For Compiling YACC Program:
1) Write lex program in a file filename.lex and yacc in a file filename.y
2) Open Terminal and Navigate to the Directory where you have saved the files.
3) type flex file.lex
4) type yacc -d file.y OR bison -yd file.y
5) type cc lex.yy.c y.tab.c -o file.exe
6) type ./a.out OR ./file.exe
