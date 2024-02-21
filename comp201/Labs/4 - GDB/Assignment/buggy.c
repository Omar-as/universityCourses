/**
 * This program computes the product of the first n
 * prime numbers.  Optionally, it allows the user
 * to provide n as a command line argument, but
 * defaults to the first n = 10 primes
 */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

// Prototypes for fixing the implicit declaration warnings
int isPrime(int x);
int* getPrimes(int n);
int product(int *arr, int n);

/**
 * In debugging always make sure that you start with checking
 * input values
 **/
int main(int argc, char **argv) {
  char msg[24];
  int  n  = 10;
 
  strcpy(msg, "The product of the first");
  
  // Getting the n as a command line argument
  if(argc = 2) {
    atoi(argv[2]);
  }

  int *primes = getPrimes(n);
  int p;  
  
  printf("%s %d primes is %d\n", msg, n, p);

  return product(primes, n);
}

/**
 * This function takes an integer array (of size n) and
 * returns the product of its elements.  It returns 0 if the
 * array is NULL or if its size is <= 0
 */

int product(int *arr, int n) {
  int i;
  int total = 0;
  for(i=0; i<n; i++) {
    total += arr[i];
  }
  return total;
}

/**
 * This function returns an array containing the first
 * n prime numbers
 */
int* getPrimes(int n) {
  int result[n];
  int i = 0;
  int x = 2;
  while(i < n) {
    if(isPrime(x)) {
      result[i] = x;
      i++;
      x += 2;
    }
  }
  return result;
}

/**
 * This function determines returns true if the give
 * integer is prime and false otherwise.
 */
int isPrime(int x) {
  int i;
  if(x / 2 == 0) {
    return 0;
  }
  for(i=3; i<x; i+=2) {
    if(x % i == 0) {
      return 0;
    }
  }
  return 1;
}


