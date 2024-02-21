#include <stdio.h>


// Name: Ameer Taweel
// Student Id: 0077340
// Date: 28/11/2021



// Please provide your answers here:
// 1.3.1

//a

/**
  The compiler evaluates the constant expression 2 + 3 and puts the literal
  value in the generated assembly code.

  We could use add or addl but they are not necessary, so this is a code optimization
  done by the compiler.
**/

//b

/**
  They are not used in the first place, so they should not be in the Assembly
  code (or even the C code). So it does not make so much sense.

  However, my answer would be:

  The stack frame of the function is removed from the stack, and all the
  variables go out of scope and are lost.
**/

int sumAndProd(int x, int y) {
	// Write your code here
	int sum = x + y;
	int product = x * y;
	
	if(sum <= product) return product;
	return sum;
}

int first10() {
	// Write your code here
	int a = 0;
	int b = 0;
	// The condition of the loop represents line 7 in the assembly code
	// The cmpl instruction
	while(b <= 9){
		a += b;
		b += 2;
	}
	// The return represents line 8 in the assembly code
	return a;
}

int main(){
   if (sumAndProd(2,2) == 4 && sumAndProd(6,10) == 60 && sumAndProd(1,2) == 3){
	   printf("sumAndProd test passed! \n");
   }
   else{
     printf("sumAndProd test failed:( \n");
   }
   
   if (first10() == 20){
	   printf("first10 test passed! \n");
   }
   else{
     printf("first10 test failed:( \n");
   }
   return 0;
}
