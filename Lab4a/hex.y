%{
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern void yyerror(const char *msg);

int decimal;

%}

%token DIGIT

%%

input: expression '\n'     { }
     | "exit" '\n'         { exit(0); }
     ;

expression: DIGIT         {
                            decimal = $1;
                            printf("%d in hexadecimal is %X\n", decimal, decimal);
                          }
          ;

%%

void yyerror(const char *msg) {
    fprintf(stderr, "Error: %s\n", msg);
}

int main() {
    yyparse();
    return 0;
}