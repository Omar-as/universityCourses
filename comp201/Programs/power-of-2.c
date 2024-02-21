#include <stdio.h>

// Function declarations

int is_power_of_two_net(int x);
int is_power_of_two_me(int x);

int main(){
	int correct = 0;
	int incorrect = 0;

	for(int i = 0; i < 5; i++){
		int net = is_power_of_two_net(i);
		int me = is_power_of_two_me(i);

		if(net == me) correct++;
		else incorrect++;
	}
	printf("Number of correct calculations: %d\n", correct);
	printf("Number of incorrect calculations: %d\n", incorrect);

	return 0;
}

// Function definitions

int is_power_of_two_net(int x){
	if (x == 0) return 0;

	while( x != 1){
		if(x % 2 != 0) return 0;
		x /= 2;
	}

	return 1;
}

int is_power_of_two_me(int x){
	if(x <= 0) return 0;

	int y = x - 1;
	int z = x ^ y;

	return z >= x;

	// Can also be written as a one-liner
	// return (x > 0) && (((x) ^ (x - 1)) >= x)
}

bool is_power_of_two_prof(unsigned int value) {
    return value != 0 && (value & (value - 1)) == 0;
}
