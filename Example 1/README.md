# Example: Check if an expression is valid or not.
### Ambiguous grammar for expression validation:
E -> E + E\
E -> E * E\
E -> id

This grammar is highly ambiguous and may cause Shift-Reduce conflicts and Reduce-Reduce conflicts.\
For Shift-Reduce conflicts, YACC will choose to shift.\
But Reduce-Reduce conflicts will occur.

### Converting into an unambiguous grammar:

E -> E + T\
   | E - T\
   | T

T -> T * F\
   | T / F\
   | F

F -> ( E )\
   | num


## Steps For Running The Files:
1) Open Terminal and Navigate to the Directory where you have saved the files.
3) type flex lex1.l
4) type yacc -d ex.y OR bison -yd ex.y  (install bison or yacc if you dont already have them)
5) type cc lex.yy.c y.tab.c -o first.exe
6) type ./first.exe
