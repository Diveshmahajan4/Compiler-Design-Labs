%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
%}

%token DIGIT

%%

input: /* empty */
     | input line

line: DIGIT '\n' {
    int num = atoi(yytext);
    int r, digit = 0, count = 0, pcount = 0, i;
    char a[20];

    while (num != 0) {
        r = num % 16;
        digit = '0' + r;
        if (digit > '9')
            digit += 7;
        a[count++] = digit;
        num = num / 16;
    }

    for (i = count - 1; i >= pcount; --i)
        printf("%c", a[i]);
    pcount = count;

    printf("\n");
}

%%

int main() {
    yyparse();
    return 0;
}
