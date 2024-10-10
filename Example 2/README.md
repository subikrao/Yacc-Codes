# Example: Check if an expression is valid or not.
### Ambiguous grammar for expression validation:
E -> E + E\
E -> E * E\
E -> E / E\
E -> E - E\
E -> E ^ E\
E -> ( E )\
E -> - E\
E -> id\
E -> num

## Steps For Running The Files:
1) Open Terminal and Navigate to the Directory where you have saved the files.
3) type flex lex2.l
4) type yacc -d ex.y OR bison -yd ex.y  (install bison or yacc if you dont already have them)
5) type cc lex.yy.c y.tab.c -o new.exe
6) type ./new.exe
