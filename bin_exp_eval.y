%{
#include<stdio.h>
#include<stdlib.h>
%}
 
%token num
 
%%
 
// Unambiguous => no need to specify prec or assoc
 
S:E	{ printf("The result is: %d\n",$$); }
;
E:E'|'T	{ $$ = $1|$3; }
|T	{ $$ = $1; }
;
T:T'^'F { $$ = $1^$3; }
|F	{ $$ = $1; }
;
F:F'&'X	{ $$ = $1&$3; }
|X	{ $$ = $1; }
;
X:'!'X	{ $$ = !$2; }
|num	{ $$ = $1; }
;
 
%%
 
int main(){
printf("Enter an expression.\n");
yyparse();
printf("VALID.\n");
return 0;
}
 
yyerror(){
exit(0);
}
