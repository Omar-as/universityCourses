/**
This is a simulator for func4.

func4 is a recursive function, and it would take time to trace it by hand.
I have a deep understanding of the function, so I wrote a simulator to find me the answer.
I used C++ because it has a stack in its standard library, unlike C.
I did not want to write a stack implementation in C just for this.

Compiling:
g++ func4.cpp -o func4 -Wall

Running:
./func4
**/

#include <stdio.h>
#include <stack>

using namespace std;

void func4(stack<long int>* stack, long* eax, long* edx, long* esi, long* ebx, const long* edi){
	stack -> push(*ebx);
	*eax = *edx;
	*eax -= *esi;
	*ebx = *eax;
	unsigned long u_ebx = *ebx;
	u_ebx = u_ebx >> 0x1f;
	*ebx = u_ebx;
	*ebx += *eax;
	*ebx = *ebx >> 1;
	*ebx += *esi;
	if(*ebx > *edi){
		*edx = *ebx - 1;
		func4(stack, eax, edx, esi, ebx, edi);
		*ebx += *eax;
	} else if(*ebx < *edi){
		*esi = *ebx + 1;
		func4(stack, eax, edx, esi, ebx, edi);
		*ebx += *eax;
	}
	*eax = *ebx;
	*ebx = stack -> top();
	stack -> pop();
}

int main(int argc, char* argv[]){
	for(long i = 0; i <= 14; i++){
		stack<long int> stack;
		long eax = 0;
		long edx = 0xe;
		long esi = 0;
		long ebx = 0;
		long edi = i;
		func4(&stack, &eax, &edx, &esi, &ebx, &edi);
		printf("i is %ld: %ld\n", i, eax);
	}
	return 0;
}
