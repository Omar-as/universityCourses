#include <stdio.h>

/* 
Draw the snapshots of the runtime stack at various points indicated by comments in the code.asm file
For the unknown variable names, you can use x, y, z etc. 

1) Draw the snapshot of the runtime stack before the call to f
ANSWER: BOTTOM | RBP1 | RSP (TOP)

2) Draw the snapshot of the runtime stack inside f function (when main initially calls it)
ANSWER: BOTTOM | RBP1 | RA1 | RBP2 | 1 | num (5) | RSP (TOP)

NOTE: RA1 is the return address to the next instruction in the main function.

NOTE: 1 is an immidiate value.

3) Draw the snapshot of the runtime stack after the call to f
ANSWER: BOTTOM | RBP1 | RSP (TOP)
*/

int f(int num) {
	return num > 1 ? num * f(num - 1) : 1;
}

int main(){
	int res = f(5);
	printf("f(5) = %d", res);
}
