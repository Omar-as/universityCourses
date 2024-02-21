#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <string.h>
#include "world.h"

#define MAX_INT_DIGITS 12
#define METADATA_SIZE 3

// read the input from given filename and return a 2D dynamically allocated and populated array
// you can use char type for each cell value or bool from <stdbool.h>
World read_from_file(const char* filename) {
	FILE* file = fopen(filename, "r");

	char input_num[MAX_INT_DIGITS];
	int max_generations, rows, columns;
	int* metadata[METADATA_SIZE] = {&max_generations, &rows, &columns};

	for(int i = 0; i < METADATA_SIZE; i++) {
		fgets(input_num, MAX_INT_DIGITS, file);
		*metadata[i] = atoi(input_num);
	}

	// It's called Za Warudo because it's the world
	World za_warudo = create_world(max_generations, rows, columns);

	// It's called Adamu because it's the first generation
	Generation adamu = create_generation(&za_warudo);

	// The +2 accounts for the new line character and the null terminator
	char raw_row[za_warudo.columns + 2];
	int row = 0;
	while(fgets(raw_row, za_warudo.columns + 2, file)){
		for(int col = 0; col < za_warudo.columns; col++){
			adamu.grid[row][col] = raw_row[col] == 'X';
		}
		row++;
	}

	fclose(file);

	za_warudo.generations[++za_warudo.current_generation] = adamu;

	return za_warudo;
}

void clear_screen(){
	printf("\033[2J\033[1;1H");
}

// print the game state
// after each step you can call this function, add some delay and then clear screen to create a simple game simulation in terminal
void print_generation(const World* za_warudo, int zwi) {
	printf("ZA WARUDO!\n\n");

	Generation g = za_warudo -> generations[zwi];

	printf("Generation: %d\n", zwi);
	printf("Cells Born: %d\n", g.cells_born);
	printf("Cells Dead: %d\n\n", g.cells_dead);

	for(int i = 0; i < za_warudo -> rows; i++){
		for(int j = 0; j < za_warudo -> columns; j++){
			printf("%c", g.grid[i][j] ? 'X' : '-');
		}
		printf("\n");
	}
}

void run_through_world(World* za_warudo){
	while(next_generation(za_warudo)); // Make all the generations
	for(int i = 0; i <= za_warudo -> current_generation; i++) {
		clear_screen();
		print_generation(za_warudo, i);
		sleep(1);
	} 
}

void archive_generation(const World* za_warudo, int zwi, char* out_dir) {
	char out_filename[strlen(out_dir) + MAX_INT_DIGITS + 10];
	sprintf(out_filename, "%sout_%d.txt", out_dir, zwi);
	FILE* file = fopen(out_filename, "w");
	Generation g = za_warudo -> generations[zwi];

	char str_int[MAX_INT_DIGITS];
	sprintf(str_int, "%d\n", g.cells_dead);
	fputs (str_int, file);
	sprintf(str_int, "%d\n", g.cells_born);
	fputs (str_int, file);

	for(int i = 0; i < za_warudo -> rows; i++){
		for(int j = 0; j < za_warudo -> columns; j++){
			fputs (g.grid[i][j] ? "X" : "-", file);
		}
		fputs ("\n", file);
	}
	fclose(file);
}

void archive_world(World* za_warudo, char* out_dir){
	while(next_generation(za_warudo)); // Make all the generations
	for(int i = 1; i <= za_warudo -> current_generation; i++) {
		archive_generation(za_warudo, i, out_dir);
	} 
}

// bonus task
// return true if the given pattern is an oscillator
bool is_oscillator(World* za_warudo) {
	return is_oscillating(za_warudo);
}


int main(int argc, char **argv) {
	if(argc == 3){
		char* input_filename = argv[1];
		char* output_dirname = argv[2];
		World za_warudo = read_from_file(input_filename);
		run_through_world(&za_warudo);
		archive_world(&za_warudo, output_dirname);
		printf("Is Za Warudo Oscillatiing? %s\n", is_oscillator(&za_warudo) ? "YES YES YES YES" : "NO NO NO NO");
		free_world(&za_warudo);
		return 0;
	}
	return 1;
}
