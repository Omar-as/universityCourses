#include <stdbool.h>

typedef struct Generation {
	bool** grid;	
	int cells_born;
	int cells_dead;
} Generation;
