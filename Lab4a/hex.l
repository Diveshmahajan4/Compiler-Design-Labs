%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGIT [0-9]
HEX_DIGIT [0-9A-Fa-f]

%%
{DIGIT}+    {
                int decimal = atoi(yytext);
                printf("%d in hexadecimal is %X\n", decimal, decimal);
             }
"exit"      return 0;
.           printf("Invalid input: %s\n", yytext);
%%

int main() {
    yylex();
    return 0;
}
int yywrap(void) {}