Calculator-Interpreter Version 2
05.29.2023
*****************************************

This is a completely redone version of the original calculator-interpreter that now uses
flex and bison for scanning and parsing. There will also be more rigorous testing.
There will be multiple test suites per branch.

Redoing this project will help alleviate the current bugs of the original and make it much more capable
than before.


*****************
Branches

DONE1. getting everything set up
2. lexical analysis - scanner
3. semantic analysis - parser (validator)
4. semantic analysis - pretty printing
5. semantic analysis - typechecking/error handling
6. interpreter (doing the actual operations)

*************************

Data Types:

Boolean : consisting only of [true] and [false] (case insensitive)
Integer : 64 bit signed integers
Float : 64 bit floating point numbers (double)
Imaginary: Integer or Float (real) values followed by either [i] or [j] (case insensitive)
Complex: Real or Imaginary
	 The complex type does NOT have its own token type.
	 It consists of 3 tokens:
		- a real component (either TOKEN_FLOAT or TOKEN_INT)
		- an addition or subtraction operator (TOKEN_PLUS or TOKEN_MINUS)
		- an imaginary component (TOKEN_IMAG_INT or TOKEN_IMAG_FLOAT)
	 It becomes a consolidated complex type once the syntax trees are formed from the grammar.


**************************

Operators:

***************************


Statements:

***************************
