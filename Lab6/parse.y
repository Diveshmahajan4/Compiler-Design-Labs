%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void); // Declare yylex function

int yyerror(const char* s) {
    fprintf(stderr, "Error: %s\n", s);
    return 1;
}
%}

%token NUM
%left '+' '-'
%left '*' '/'

%%

E : E '+' T   { printf("E -> E + T\n"); $$ = $1 + $3; }
  | E '-' T   { printf("E -> E - T\n"); $$ = $1 - $3; }
  | T         { printf("E -> T\n"); $$ = $1; }
  ;

T : T '*' F   { printf("T -> T * F\n"); $$ = $1 * $3; }
  | T '/' F   { printf("T -> T / F\n"); $$ = $1 / $3; }
  | F         { printf("T -> F\n"); $$ = $1; }
  ;

F : NUM       { printf("F -> NUM\n"); $$ = $1; }
  | '(' E ')' { printf("F -> ( E )\n"); $$ = $2; }
  ;

%%

int main() {
    yyparse();
    return 0;
}

