# Yacc-Codes
Yacc (Yet Another Compiler Compiler) is a computer program that generates a parser for a given grammar.

## For Compiling YACC Program:
Write lex program in a file filename.lex and yacc in a file filename.y
Open Terminal and Navigate to the Directory where you have saved the files.
type flex file.lex
type yacc -d file.y OR bison -yd file.y
type cc lex.yy.c y.tab.c -o file.exe
type ./a.out OR ./file.exe
