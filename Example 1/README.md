# Example: Check if an expression is valid or not.
### Ambiguous grammar for expression validation:
E -> E + E

E -> E * E

E -> id

This grammar is highly ambiguous and may cause Shift-Reduce conflicts and Reduce-Reduce conflicts.

For Shift-Reduce conflicts, YACC will choose to shift.

But Reduce-Reduce conflicts will occur.

### Converting into an unambiguous grammar:

E -> E + T
  
   | E - T
  
   | T

T -> T * F
  
   | T / F
  
   | F

F -> ( E )
  
   | num
