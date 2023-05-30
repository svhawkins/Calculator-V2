Calculator-Interpreter Version 2
05.29.2023
*****************************************

This is a completely redone version of the original calculator-interpreter that now uses
flex++ and bisonc++ for scanning and parsing. There will also be more rigorous testing.
There will be multiple test suites per branch.

Redoing this project will help alleviate the current bugs of the original and make it much more capable
than before.


*****************
Branches

1. getting everything set up
	DONE- README
	DONE- git repository
	- makefile
	- main program
	DONE- directories (src, bin, test)

2. lexical analysis - scanner
3. semantic analysis - parser (validator)
4. semantic analysis - pretty printing
5. semantic analysis - typechecking/error handling
6. interpreter (doing the actual operations)

*************************

Data Types:

Boolean : consisting only of [true] and [false]
Integer
Float : contains a floating point
Imaginary: Integer or Float (real) values followed by either [i] or [j]
Complex: Real or Imaginary


**************************

Operators:

***************************


Statements:

***************************
