#include <stdio.h>

/* 
Draw the snapshots of the runtime stack at various points indicated by comments in the code.asm file
For the unknown variable names, you can use x, y, z etc. 

1) Draw the snapshot of the runtime stack before the call to f (10 pts)
ANSWER: BOTTOM | ... | RA  | res | TOP

2) Draw the snapshot of the runtime stack inside f function (when main initially calls it) (20 pts)
ANSWER: BOTTOM | ... | RA  | res | RA | num (5) | x (1) | TOP

3) Draw the snapshot of the runtime stack after the call to f (20 pts)
ANSWER: BOTTOM | ... | RA  | res (120) |  TOP
*/

/*Code: 50 pts.*/
int f(int num) {
    int x = 1;
    if (num < 2){ /*num <= 1 is also valid. */
        return x;
    }
    return num * f(num-1);
/* Different ordering of "if - else" condition blocks are also valid. */
}

int main(){
	    int res = f(5);
		    printf("f(5) = %d", res);
}

