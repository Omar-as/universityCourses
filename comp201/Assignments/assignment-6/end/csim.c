#include <stdbool.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cachelab.h"
#define EXPECTED_CARGS 9
#define MAX_INSTRUCTION_SIZE 50
#define ADDRESS_OFFSET 3

// Virtual Block - No Data
typedef struct {
    long last_used;
    long tag;
} VBlock;

typedef struct {
    long last_used;
    VBlock* blocks;
} VSet;

typedef struct {
    VSet* sets;
    int hits;
    int misses;
    int evictions;
    long s;
    long S;
    long E;
    long b;
} VCache;

void init_cache(VCache* cache, long s, long E, long b);
void simulate_trace(VCache* cache, char* trace);
void operation(VCache* cache, long set_index, long tag);

int main(int cargs, char** vargs){
    if(cargs != EXPECTED_CARGS) return 1;

    long s = atol(vargs[2]);    
    long E = atol(vargs[4]);    
    long b = atol(vargs[6]);    
    char* trace = vargs[8];

    VCache cache;

    init_cache(&cache, s, E, b);

    simulate_trace(&cache, trace);

    printSummary(cache.hits, cache.misses, cache.evictions);

    return 0;
}

void init_cache(VCache* cache, long s, long E, long b){
    long S = pow(2, s);

    cache -> hits = 0;
    cache -> misses = 0;
    cache -> evictions = 0;
    cache -> sets = malloc(S * sizeof(VSet));
    cache -> s = s;
    cache -> S = S;
    cache -> E = E;
    cache -> b = b;

    for(long i = 0; i < S; i++){
        VSet* set = &cache -> sets[i];
        set -> last_used = 0;
        set -> blocks = malloc(E * sizeof(VBlock));
        for(long j = 0; j < E; j++) {
            VBlock* block = &set -> blocks[j];
            block -> last_used = 0;
        }
    }
}

void simulate_trace(VCache* cache, char* trace){
    // Bitmasks are used to extract the set index and the tag from the address
    long set_bit_mask = (1L << cache -> s) - 1;
    long t = 64L - cache -> s - cache -> b;
    long tag_bit_mask = (1L << t) - 1;

    FILE* trace_file = fopen (trace, "r");
    char instruction[MAX_INSTRUCTION_SIZE];

    while(fgets(instruction, MAX_INSTRUCTION_SIZE, trace_file)) {
        // Skip instruction-load operations
        if(instruction[0] == 'I') continue;

        char instruction_type = instruction[1];

        char* dummy;
        char* address_ptr = instruction + 3;
        *(strchr(address_ptr, ',')) = '\0';
        unsigned long address = strtoul(address_ptr, &dummy, 16);

        // extract set index and tag from address
        long set = (address >> cache -> b) & set_bit_mask;
        long tag = (address >> (cache -> b + cache -> s)) & tag_bit_mask;

        // Abstract load and store with one operation
        operation(cache, set, tag);

        // Modify causes two such operations to occur
        if(instruction_type == 'M') operation(cache, set, tag);
    }
}

void operation(VCache* cache, long set_index, long tag){
    VSet* set = &cache -> sets[set_index];

    unsigned long least_used = set -> blocks[0].last_used;
    long least_used_index = 0;

    // Try to hit
    for(long i = 0; i < cache -> E; i++){
        VBlock* block = &set -> blocks[i]; 
        if(block -> last_used && block -> tag == tag){
            block -> last_used = ++set -> last_used;
            cache -> hits++;
            return;
        }
        if(block -> last_used < least_used){
            least_used = block -> last_used;
            least_used_index = i;
        }
    }

    // Miss, evict if needed
    VBlock* block = &set -> blocks[least_used_index]; 
    bool is_evicted = block -> last_used;
    block -> last_used = ++set -> last_used;
    block -> tag = tag;
    cache -> misses++;
    cache -> evictions += is_evicted ? 1 : 0;
}
