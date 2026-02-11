 /* == default == */
. printf("%s", yytext);
%%

// Auxiliary routines (optional)
int main(int argc, char **argv) {
  yylex();
  return 0;
}
