/**
 * This program computes the product of the first n
 * prime numbers. Optionally, it allows the user
 * to provide n as a command line argument, but
 * defaults to the first n = 10 primes
 */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

// Prototypes for fixing the implicit declaration warnings
int isPrime(int x);
int* getPrimes(int n);
long product(int *arr, int n); // Fix return type

/**
 * In debugging always make sure that you start with checking
 * input values
 **/
int main(int argc, char **argv) {
	char msg[25]; // Fix overflow
	int n = 10;
 
	strcpy(msg, "The product of the first");
	
	// Getting the n as a command line argument
	if(argc == 2) { // Fix assignment instead of equality check
		n = atoi(argv[1]); // Fix not using return value
	}

	int* primes = getPrimes(n);
	// Use the product instead of returning it as an exit code
	long p = product(primes, n);
	// Free the allocated memory after usage is done
	free(primes);
	
	// Fix print statement format to work with long
	printf("%s %d primes is %ld\n", msg, n, p);

	return 0;
}

/**
 * This function takes an integer array (of size n) and
 * returns the product of its elements.	It returns 0 if the
 * array is NULL or if its size is <= 0
 */
long product(int *arr, int n) {
	int i;
	// Use long to prevent overflow
	// Initial value 1 for product to preserve following values
	long total = 1;

	for(i = 0; i < n; i++) {
		// Multiply instead of adding
		total *= (long) arr[i];
	}

	return total;
}

/**
 * This function returns an array containing the first
 * n prime numbers
 */
int* getPrimes(int n) {
	// Allocate memory on the heap
	// Instead of returning a pointer to a local variable
	int* result = (int*) malloc(n * sizeof(int));
	int i = 0;
	int x = 2;

	while(i < n) {
		if(isPrime(x)) {
			result[i] = x;
			i++;
		}
		// Update x correctly
		x++;
	}

	return result;
}

/**
 * This function determines returns true if the give
 * integer is prime and false otherwise.
 */
int isPrime(int x) {
	// Fix wrong initial return condition
	if(x < 2) return 0;

	// Fix not checking half the values
	int i;
	for(i = 2; i < x; i++) {
		if(x % i == 0) return 0;
	}

	return 1;
}
