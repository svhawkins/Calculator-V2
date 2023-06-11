/*
06.10.2023
token.hpp

- header file containing an enumerated type for tokens
- includes vector to access token type name
*/

#pragma once
#include <iostream>
#include <vector>
#include <string>

typedef enum {

  // miscellaneous token kinds
  TOKEN_ERROR = 0,
  TOKEN_EOF,
  TOKEN_SEMI,

  // tokens for reserved words
  TOKEN_INTEGER,
  TOKEN_REAL,
  TOKEN_COMPLEX,
  TOKEN_BOOLEAN,
  TOKEN_IMAGINARY,

  // numeric type tokens
  TOKEN_INT,
  TOKEN_FLOAT, // floating point
  TOKEN_IMAG,
  TOKEN_CMPLX,
  TOKEN_BOOL,
  TOKEN_IDENTIFIER,

  // operators, grouped by highest precedence
  TOKEN_LPAR,
  TOKEN_RPAR,

  TOKEN_INC,
  TOKEN_DEC,
  TOKEN_EXCL, // !, factorial or logical not (next level below)

  TOKEN_PLUS, // +, unary or binary (level below MULT, above SHIFT)
  TOKEN_MINUS, // -, unary or binary (level below MULT, above SHIFT)
  TOKEN_BNOT,
  // logical not here too

  TOKEN_EXP,

  TOKEN_MULT,
  TOKEN_DIV,
  TOKEN_REM,
  TOKEN_FDIV,
  TOKEN_MOD,

  // binary addition/subtraction here

  TOKEN_LSHIFT,
  TOKEN_RSHIFT,

  TOKEN_LESS,
  TOKEN_LEQ,
  TOKEN_GREAT,
  TOKEN_GEQ,

  TOKEN_EQUAL,
  TOKEN_NEQUAL,

  TOKEN_BAND,
  TOKEN_BNAND,

  TOKEN_BXOR,
  TOKEN_BXNOR,

  TOKEN_BOR,
  TOKEN_BNOR,

  TOKEN_LAND,
  TOKEN_LNAND,

  TOKEN_LXOR,
  TOKEN_LXNOR,

  TOKEN_LOR,
  TOKEN_LNOR,

  TOKEN_ASSIGN,

  TOKEN_COMMA
} token_t;
const int TOKEN_KINDS = TOKEN_COMMA + 1;

std::vector<std::string> token_names = { "ERROR", "EOF", "SEMI", "INTEGER", "REAL", "COMPLEX", "BOOLEAN", "IMAGINARY",
					 "INT", "FLOAT", "IMAG", "CMPLX", "BOOL", "IDENTIFIER",
					 "LPAR", "RPAR", "INC", "DEC", "EXCL", "PLUS", "MINUS", "BNOT", "EXP", "MULT", "DIV", "REM", "FDIV", "MOD",
					 "LSHIFT", "RSHIFT", "LESS", "LEQ", "GREAT", "GEQ", "EQUAL", "NEQUAL", "BAND", "BNAND", "BXOR", "BXNOR",
					 "BOR", "BNOR", "LAND", "LNAND", "LXOR", "LXNOR", "LOR", "LNOR", "ASSIGN", "COMMA"
					};
