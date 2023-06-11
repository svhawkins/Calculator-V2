%{
  #include <iostream>
  #include <sstream>
  #include "token.hpp"
  using namespace std; // to make the scanner happy

  /*
  TO DO:

  1. add rules for operators
  2. test
  3. enumerated list for scanner errors
  4. additional function prototypes for token formatting/checking
  5. addtional helper functions for error message formatting
  */

// %option noinput nounput nodefault
%}
DIGIT	[[:digit:]]
SIGN	[-+]
INTEGER	{SIGN}?{DIGIT}+
FLOAT	(({INTEGER)\.?)|({SIGN}?{DIGIT}*\.))([eE]{INTEGER})?
REAL	{INTEGER}|{FLOAT}
IMAGINARY	{REAL}[iIjJ]$
COMPLEX		{REAL}[+-]{IMAGINARY}
IDENT	[_[:alpha:]][_[:alnum:]]*
%option yylineno
%%

[ \t\n]+ BEGIN(INITIAL); // skip whitespace

boolean { return TOKEN_BOOLEAN; } // reserved words
integer { return TOKEN_INTEGER; }
real	{ return TOKEN_REAL; }
imaginary { return TOKEN_IMAGINARY; }
complex { return TOKEN_COMPLEX; }
true|false { return TOKEN_BOOL; }
%%
int yywrap() { return 1; }
