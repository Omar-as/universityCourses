/**
This is a simulator for phase_5.

I have a deep understanding of the function, so I wrote a simulator to find me the answer.
This is faster than tracing by hand. Also, it is less prone to error.
I used C++ because I wrote the simulator for func4 with C++ and I felt like staying consistent.

Compiling:
g++ phase_5.cpp -o phase_5 -Wall

Running:
./phase_5
**/

#include <stdio.h>

void phase_5(long* eax, long* ecx, long* edx, const long arr[]){
	while(*eax != 0xf){
		(*edx)++;
		*eax = (int) *eax;
		*eax = arr[*eax];
		*ecx += *eax;
	}
	printf("eax: %ld\n", *eax);
	printf("ecx: %ld\n", *ecx);
	printf("edx: %ld\n", *edx);
	printf("\n\n");
}

int main(int argc, char* argv[]){
	long arr[] = {0xa, 0x2, 0xe, 0x7, 0x8, 0xc, 0xf, 0xb, 0x0, 0x4, 0x1, 0xd, 0x3, 0x9, 0x6, 0x5};

	for(long i = 0x0; i < 0xf; i++){
		long eax = i;	
		long ecx = 0;
		long edx = 0;
		printf("## i: %ld\n\n", i);

		phase_5(&eax, &ecx, &edx, arr);
	}

	return 0;
}
