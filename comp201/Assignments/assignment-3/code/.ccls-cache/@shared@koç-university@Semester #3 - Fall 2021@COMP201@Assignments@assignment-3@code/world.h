#include <stdbool.h>
#include "generation.h"

typedef struct World {
	int max_iterations;
	int current_generation;
	int rows;
	int columns;
	Generation* generations;
} World;

World create_world(int max_generations, int rows, int columns);
Generation create_generation(const World* warudo);
bool next_generation(World* warudo);
bool equals(Generation* a, Generation* b, int rows, int columns);
bool is_oscillating(World* warudo);
void free_world(World* warudo);
