SRC_FILES=$(wildcard *.c)
OBJ_FILES=$(SRC_FILES:.c=.o)
GCC_FLAGS=-Wall -g -std=c99
ALL_TESTS=almosymmetric diamond double-barrelled glider spaceship squaredance
TEST_NAME=diamond

run: build execute

build: game

execute: game
	./game ./examples/$(TEST_NAME)/$(TEST_NAME).txt out/
	diff ./examples/$(TEST_NAME)/output out

clean:
	rm -rf game *.o ./out/*

game: $(OBJ_FILES)
	gcc $(GCC_FLAGS) -o game $^

%.o: %.c
	gcc $(GCC_FLAGS) -o $@ -c $<
