#include <stdlib.h>
#include <stdbool.h>
#include "world.h"

#define NEIGHBORS 8
#define ROW 0
#define COL 1

World create_world(int max_iterations, int rows, int columns){
	World warudo;
	warudo.max_iterations = max_iterations;
	warudo.current_generation = -1;
	warudo.rows = rows;
	warudo.columns = columns;
	warudo.generations = (Generation*) malloc(sizeof(Generation) * (max_iterations + 1));
	return warudo;
}

Generation create_generation(const World* warudo){
	Generation g;
	g.grid = (bool**) malloc(sizeof(bool*) * warudo -> rows);
	for(int i = 0; i < warudo -> rows; i++){
		g.grid[i] =  (bool*) malloc(sizeof(bool) * warudo -> columns);
	}
	g.cells_born = 0;
	g.cells_dead = 0;
	return g;
}

bool next_generation(World* warudo){
	if(warudo -> current_generation < 0 || warudo -> current_generation == warudo -> max_iterations) return false;

	int neighbors[NEIGHBORS][2] = {
		{ 0, -1 },
		{ 1, -1 },
		{ 1, 0 },
		{ 1, 1 },
		{ 0, 1 },
		{ -1, 1 },
		{ -1, 0 },
		{ -1, -1 }
	};

	Generation old_gen = warudo -> generations[warudo -> current_generation];
	Generation new_gen = create_generation(warudo);

	for(int i = 0; i < warudo -> rows; i++){
		for(int j = 0; j < warudo -> columns; j++){
			int alive_neighbors = 0;
			for(int n = 0; n < NEIGHBORS; n++){
				int row = i + neighbors[n][ROW];
				int col = j + neighbors[n][COL];
				if(row < 0 || col < 0 || row >= warudo -> rows || col >= warudo -> columns) continue;
				alive_neighbors += old_gen.grid[row][col] ? 1 : 0;
			}	
			bool was_alive = old_gen.grid[i][j];
			bool is_alive = (was_alive && (alive_neighbors == 2 || alive_neighbors == 3)) || (!was_alive && alive_neighbors == 3);
			new_gen.grid[i][j] = is_alive;
			if(was_alive && !is_alive) new_gen.cells_dead++;
			else if(!was_alive && is_alive) new_gen.cells_born++;
		}
	}

	warudo -> generations[++warudo -> current_generation] = new_gen;

	return true;
}

bool equals(Generation* a, Generation* b, int rows, int columns){
	for(int i = 0; i < rows; i++){
		for(int j = 0; j < columns; j++){
			if(a -> grid[i][j] != b -> grid[i][j]) return false;
		}
	}
	return true;
}

bool is_oscillating(World* warudo){
	while(next_generation(warudo)); // Make all the generations
	for(int i = 0; i < warudo -> max_iterations; i++){
		Generation a = warudo -> generations[i];
		for(int j = i + 1; j <= warudo -> max_iterations; j++){
			Generation b = warudo -> generations[j];
			if(equals(&a, &b, warudo -> rows, warudo -> columns)) return true;
		}
	}
	return false;
}

void free_world(World* warudo){
	for(int i = 0; i <= warudo -> current_generation; i++){
		for(int j = 0; j < warudo -> rows; j++){
			free(warudo -> generations[i].grid[j]);
		}
		free(warudo -> generations[i].grid);
	}
	free(warudo -> generations);
}
