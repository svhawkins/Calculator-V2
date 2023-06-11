#include <iostream>
#include <vector>
#include <string>
#include "token.h"

extern FILE *yyin, *yyout;
extern int yylex();
extern int yyleng, yylineno;
extern char* yytext;

// here insted of token.h due to linker+loader problems
std::vector<std::string> token_str = { "EOF", "ERROR", "SEMI", "INTEGER", "REAL", "COMPLEX", "BOOLEAN", "IMAGINARY",
                                       "INT", "FLOAT", "IMAG_INT", "IMAG_FLOAT", "BOOL", "IDENTIFIER",
                                       "LPAR", "RPAR", "INC", "DEC", "EXCL", "PLUS", "MINUS", "BNOT", "EXP", "MULT", "DIV", "REM", "FDIV", "MOD",
                                       "LSHIFT", "RSHIFT", "LESS", "LEQ", "GREAT", "GEQ", "EQUAL", "NEQUAL", "BAND", "BNAND", "BXOR", "BXNOR",
                                       "BOR", "BNOR", "LAND", "LNAND", "LXOR", "LXNOR", "LOR", "LNOR", "ASSIGN", "COMMA"
                                        };
int main() {
  std::cout << "hello world! :)\n";

  while(1) {
    token_t t = (token_t)yylex();
    std::cout << token_str[t] << "\t" << yytext << "\n";
    if (t == TOKEN_EOF) break;
  }
  return 0;
}
