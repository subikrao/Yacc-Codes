%{
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
%}
%token num
%left '+''-'
%left '*''/''%'
%right '^'
%left UMINUS
%%
S: e{printf("Result is %d\n", $$);};
e:'('e')' {$$=$2;}
|e'*'e {$$=$1*$3;}
|e'/'e {$$=$1/$3;}
|e'%'e{$$=$1%$3;}
|e'+'e{$$=$1+$3;}
|e'-'e{$$=$1-$3;}
|e'^'e{$$=pow($1,$3);}
|'-'e %prec UMINUS{$$=-$2;}
|num {$$=$1;}
;
%%
int main(){
printf("Enter an expression\n");
yyparse();
printf("Valid Expression\n");
return 0;
}
yyerror(){
printf("Invalid Expression\n");
return 0;
}
