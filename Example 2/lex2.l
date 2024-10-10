%{
	#include "y.tab.h"
	#include<stdio.h>
	extern int yylval;
%}
%%
[0-9]+ {yylval=atoi(yytext);
printf(yylval);
return num;}
[a-zA-Z][a-zA-Z0-9]* {return id;}
. {return yytext[0];}
\n {return 0;}
%%
int yywrap(){
return 0;
}
