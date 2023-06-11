%{
  #include "token.h"
  using namespace std;

  /*
  TO DO:

  1. test
  3. enumerated list for scanner errors
  4. additional function prototypes for token formatting/checking
  5. addtional helper functions for error message formatting
  */

%}
DIGIT	[[:digit:]]
SIGN	[-+]
INTEGER	{DIGIT}+
POWER	([eE]{SIGN}?{INTEGER})
NUM1	{INTEGER}\.?{DIGIT}*{POWER}?
NUM2	{DIGIT}*\.{DIGIT}*{POWER}?
FLOAT	{NUM1}|{NUM2}
IMAG	[ij]
IDENT	[_[:alpha:]][_[:alnum:]]*
%option yylineno noinput nounput stdinit
%%

[ \t\n]+ BEGIN(INITIAL); // skip whitespace

boolean { return TOKEN_BOOLEAN; } // reserved words
integer { return TOKEN_INTEGER; }
real	{ return TOKEN_REAL; }
imaginary { return TOKEN_IMAGINARY; }
complex { return TOKEN_COMPLEX; }

true|false { return TOKEN_BOOL; }
{IMAG} { return TOKEN_IDENTIFIER; } // here and not with identifier to correctly match lone i, j
{INTEGER}{IMAG} { return TOKEN_IMAG_INT; }
{INTEGER} { return TOKEN_INT; }
{FLOAT}{IMAG} { return TOKEN_IMAG_FLOAT;}
{FLOAT} { return TOKEN_FLOAT;}
{IDENT} { return TOKEN_IDENTIFIER; }

\+\+	{ return TOKEN_INC; }
\+      { return TOKEN_PLUS; }
--	{ return TOKEN_DEC; }
-       { return TOKEN_MINUS; }
\*\*	{ return TOKEN_EXP; }
\*	{ return TOKEN_MULT; }
\/\/	{ return TOKEN_FDIV; }
\/	{ return TOKEN_DIV; }
"\%\%"	{ return TOKEN_MOD; }
"\%"	{ return TOKEN_REM; }
"<<"	{ return TOKEN_LSHIFT; }
"<="	{ return TOKEN_LEQ; }
"<"	{ return TOKEN_LESS; }
">>"	{ return TOKEN_RSHIFT; }
">="	{ return TOKEN_GEQ; }
">>"	{ return TOKEN_GREAT; }
==	{ return TOKEN_EQUAL; }
=	{ return TOKEN_ASSIGN; }
!=	{ return TOKEN_NEQUAL; }
!&	{ return TOKEN_LNAND; }
"!|"	{ return TOKEN_LNOR; }
!^	{ return TOKEN_LXNOR; }
!	{ return TOKEN_EXCL; }
~&	{ return TOKEN_BNAND; }
"~|"	{ return TOKEN_BNOR; }
~^	{ return TOKEN_BXNOR; }
~	{ return TOKEN_BNOT; }
&&	{ return TOKEN_LAND; }
&	{ return TOKEN_BAND; }
"^^"	{ return TOKEN_LXOR; }
"^"	{ return TOKEN_BXOR; }
"||"	{ return TOKEN_LOR; }
"|"	{ return TOKEN_BOR; }


"(" { return TOKEN_LPAR; }
")" { return TOKEN_RPAR; }
, { return TOKEN_COMMA; }
; { return TOKEN_SEMI; }
<<EOF>> { return TOKEN_EOF; }
. { return TOKEN_ERROR; }

%%
int yywrap() { return 1; }
