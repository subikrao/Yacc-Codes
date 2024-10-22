%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<math.h>
    #include<string.h>
    extern char *yytext;
%}
%token num;
%%
S:num {
        int dec = 0;
        int i = 0, rem;
        int n = atoi(yytext);
        while (n != 0) {
            rem = n % 10;
            dec += rem * (int)pow(2, i);
            n /= 10;
            ++i;
        }
        printf("Decimal value: %d \n", dec);
    }
| '\n'
;
%%
int main(){
    printf("\nEnter binary number: ");
    yyparse();
    return 0;
}
yyerror(char *s){
    printf("Error");
    exit (0);
}