#include "mylibrary.h"

// Returns the sum of the first n natural numbers
int sum(int n) {
	// Uses the sum of a geometric series
	return (n * (n + 1)) / 2;
}

// Returns the product of the even numbers in the array
int product_of_even_numbers(int *array, int count) {
	int product = 1;
	for (int i = 0; i < count; i++) if(array[i] % 2 == 0) product *= array[i];
	return product;
}

// Returns the maximum number in the array
int max_of_numbers(int *array, int count) {
	int max = array[0];
	for(int i = 0; i < count; i++) if(array[i] > max) max = array[i];
	return max;
}

// Reverses the digits of a number
int reversed_number(int number) {
	int reversed = 0;

	while(number > 0){
		// Add number's rightmost digit as reversed's leftmost digit
		reversed += number % 10;
		// Make place for the next digit
		reversed *= 10;
		// Remove the added digit from number
		number /= 10;
	}
	reversed /= 10; // Remove the extra zero

	return reversed;
}


// Returns the character corresponding to the given character index
char alphabet_index(int index) {
	if(index < 0 || index > 25) return ' ';
	// Uses the fact that characters are represented as integers
	return index + 65;
}


