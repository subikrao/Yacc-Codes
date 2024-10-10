%{
	#include<stdio.h>
    #include<stdlib.h>
    #include<math.h>
%}
%token num
%token id 
%left '+''-'
%left '*''/''%'
%right '^'
%left UMINUS
%left '('')'
%%
E:'('E')'
|E'*'E
|E'/'E
|E'+'E
|E'-'E
|E'^'E
|'-'E%prec UMINUS
|num
|id
;
%%

int main()
{
    printf("Enter an expression: ");
    yyparse();
    printf("Valid Expression.");
    return 0;
}

yyerror(char *s)
{
    printf("Invalid expression");
    exit (0);
}
