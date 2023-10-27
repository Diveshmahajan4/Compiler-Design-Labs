%{
#include "parse.tab.h"

int yylex(void); // Declare yylex function
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUM; }
"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"("         { return '('; }
")"         { return ')'; }
[ \t\n]     ; // Skip whitespace


%%

int yywrap() {
    return 1;
}