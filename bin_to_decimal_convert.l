%{
    #include "y.tab.h"
    #include<stdio.h>
    extern int yylval;
%}
%%
[01]+ { yylval = atoi(yytext);
        return num;
    }
. {return yytext[0];}
\n {return 0;}
%%
yywrap(){
    return 1;
}