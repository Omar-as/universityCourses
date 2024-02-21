 #include <stdlib.h>


void f1()
{
	int x = 5;
	x = 10;

}

void f2()
{
	char *str;

	/* Stored in read only part of data segment */
	str = "COMP201";	

	/* Problem: trying to modify read only memory */
	*(str+1) = 'n';
}

// 2D dynamic array allocation
void _2D_dynamic_array(int N, int M) 
{
	
	
	int *_2d_array;   
	// a single NxM malloc: really this is a large 1-dim array of int values onto which we will map 2D accesses 
	_2d_array = malloc(sizeof(int) * N * M);

	// in memory: 
	//                   row 0       row 1     row 2 ...
	// 2d_array -----> [ 0, 0, ... , 0, 0, ... 0, 0, ... ] 

	// access using [] notation: 
	//    cannot use [i][j] syntax because the compiler has no idea where the 
	//    next row starts within this chunk of heap space, so must use single 
	//    index value that is calculated using row and column index values and 
	//    the column dimension
	for(int i=0; i < N; i++) {
		for(int j=0; j < M; j++) {
			_2d_array[i*M +j] = 0; // note that this is equivalent to 
		}
	}

	// access using pointer arithmetic (all N*M buckets are contiguous)
	int *ptr = _2d_array;
	for(int i=0; i < N; i++) {
		for(int j=0; j < M; j++) { 
			*ptr = 0; 
			ptr++;
		}
	}
}

void _2D_dynamic_array_2D_indexing(int N, int M) 
{
	// (2) N mallocs, one for each row, plus one malloc for array of row
	//     arrays.  The bucket locations in individual rows are contiguous, 
	//     but rows are not necessarily contiguous in heap space.
	// 
	int **_2d_array; // an array of int arrays (a pointer to pointers to ints)

	// declaration and allocation: 

	// allocate an array of N pointers to ints
	// malloc returns the address of this array (a pointer to (int *)'s)
	_2d_array = malloc(sizeof(int *)*N);

	// for each row, malloc space for its buckets and add it to 
	// the array of arrays
	for(int i=0; i < N; i++) {
		_2d_array[i] = malloc(sizeof(int)*M);
	}

	// in memory: 
	// 2d_array -----> | *-|-------> [ 0, 0, 0, ... , 0]  row 0
	//                 | *-|-------> [ 0, 0, 0, ... , 0]  row 1
	//                 |...|                               ...
	//                 | *-|-------> [ 0, 0, 0, ... , 0] 

	// access using [] notation:
	//  2d_array[i] is ith bucket in 2d_array, which is the address of 
	// a 1d array, on which you can use indexing to access its bucket value
	for(int i=0; i < N; i++) {
		for(int j=0; j < M; j++) {
			_2d_array[i][j] = 0;
		}
	}

}



int main()
{
	
	f1();
	f2();
	_2D_dynamic_array(10, 10);
	_2D_dynamic_array_2D_indexing(10, 10);
	
	return 0;
}

