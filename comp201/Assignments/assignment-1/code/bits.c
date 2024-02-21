/* 
 * CS:APP Data Lab 
 * 
 * Ameer Taweel - ataweel20 - 0077340
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
	/*
	 * x ^ y == ~(~x | ~y)
	 * Confirmed by truth table (not included here to for briefness)
	 */
	return ~(~x | ~y);
}

/* 
 * isEqual - return 1 if x == y, and 0 otherwise 
 *   Examples: isEqual(5,5) = 1, isEqual(4,5) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int isEqual(int x, int y) {
	/*
	 * x ^ y will return 0 (falsy value) if x == y.
	 * x ^ y will return some non-zero value (truthy value) if x != y.
	 * !(x ^ y) will return 1 when x ^ y is 0 (equal).
	 * !(x ^ y) will return 0 when x ^ y is non-zero (equal).
	 */
	return !(x ^ y);
}

/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x) {
	/*
	 * 0x30 <= x <= 0x39
	 * Is equivalent to:
 	 * 0x2F < x <= 0x39
	 */
	int c = (~x) + 1; // Two's complement of x
	int lbc = ~((0x2F + c) >> 31); // Lower Bound Check: Equals 0 if x satisfies the lower bound
	int ubc = (0x39 + c) >> 31; // Upper Bound Check: Equals 0 if x satisfies the upper bound
	int bbc = lbc | ubc; // Both Bounds Check: Will be 0 if x is in the correct range
	
	return !bbc;
}

/* 
 * logicalNeg - implement the ! operator, using all of 
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int logicalNeg(int x) {
	/*
	 * MSB of the two's complement of 0 is still 0.
	 * For other numbers MSB is opposite for complement.
	 * Special check for the case of the most negative value.
	 */
	int c = (~x) + 1; // Two's complement of x
	int sgnx = x >> 31;
	int sgnc = c >> 31;
	return (~((sgnx ^ sgnc) | (sgnx & sgnc))) & 1;
}

/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
	return (1 << 31);
}

/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
	// Two's complement of x
	return (~x) + 1;
}

/* 
 * isGreater - if x > y  then return 1, else return 0 
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y) {
	/*
	 * The key idea is mimicking an if statement with bitwise operators.
	 * a ? b : c is equivalent to ((((b * size(int)) << 1 | c) >> a) & 1).
	 * Assuming each of a, b, and c in {0, 1}.
	 * Also, the notation x * y means the binary digit x, repeated y times.
	 */
	int sgnx = x >> 31; // Sign of x
	int sgny = y >> 31; // Sign of y

	int df = sgnx ^ sgny; // Are the signs different?

	int xpos = ~sgnx; // Is x positive?

	int cx = (~x) + 1; // Two's complement of x

	int min = 1 << 31; // Minimum integer value

	int mx = !(x ^ min); // Is x the minimum integer value?
	int my = !(y ^ min); // Is y the minimum integer value?

	int co = (y + cx) >> 31; // If all ones, x larger than y

	int fc = ((0 | ((my | co) & 1)) >> (mx & 1)) & 1; // Nested if statement
	int rf = (((xpos << 1) | fc) >> (df & 1)) & 1; // Root if statement

	return rf;
}

/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_abs(unsigned uf) {
	unsigned max_number = 0x7F800000; // Maximum legal positive number
	unsigned abs_uf = uf & 0x7FFFFFFF; // Turn off sign bit
	return abs_uf > max_number ? uf : abs_uf;
}

/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
	unsigned sign = uf & 0x80000000; // Fraction
	unsigned bexp = uf & 0x7F800000; // Biased exponent
	unsigned frac = uf & 0x007FFFFF; // Fraction

	// Case 0: uf is 0
	if (!bexp && !frac) return sign;

	// Case 1: Denormalized Mode
	if(!bexp){
		unsigned tfrac = frac << 1; // Twice the fraction
		unsigned norml = tfrac & (1 << 23); // Has the fraction became normalized or not?
		unsigned nfrac = tfrac & (~(1 << 23)); // New fraction
		unsigned nbexp = norml ? 1 << 23 : 0; // New biased exponent
		return sign | nbexp | nfrac;
	}

	// Case 2: Normalized Mode
	if(bexp < (~0)){
		unsigned aexp = (bexp >> 23) - 127; // Actual exponent
		unsigned nexp = aexp + 128; // New biased exponent
		unsigned inft = nexp > 0xFE; // Is infinite?
		unsigned nbexp = inft ? 0xFF << 23 : nexp << 23; // New biased exponent
		return sign | nbexp | frac;
	}

	// Case 3: Infinite or NaN
	return uf;
}
