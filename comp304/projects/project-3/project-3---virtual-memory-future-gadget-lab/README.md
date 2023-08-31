# Exploring Virtual Memory Management

## Table of Contents

- [Dependencies](#dependencies)
- [Compile and Run](#compile-and-run)
- [Overview](#overview)
- [Project Structure](#project-structure)
  - [Part I: Laying the Foundation](#part-i-laying-the-foundation)
  - [Part II: Real-world Challenges](#part-ii-real-world-challenges)

## Dependencies

- gcc 12.2.0

## Compile and Run

### To compile the code: 

```cd project-3---virtual-memory-future-gadget-lab```

- For Part 1: ```make part1```
- For Part 2: ```make part2```
- Or compile both parts by ```make```

### To Run the code: 

- for part 1
  - ```./part1 BACKING_STORE.bin addresses.txt```
- part 2:
  - Second Chance
    - ```./part2 BACKING_STORE.bin addresses.txt -p 0```
  - LRU
    - ```./part2 BACKING_STORE.bin addresses.txt -p 1```

## Overview

The project's primary objective is to design and implement a virtual memory manager, allowing us to delve into memory access simulation, page-table translation, and page-replacement policies.

## Project Structure

This project is divided into two distinct parts, each building on the previous one:

### Part I: Laying the Foundation

In this phase, we establish a solid foundation for our virtual memory manager. Taking inspiration from Programming Projects (9th edition, page 447) in the book, we begin by working with the provided `virtmem.c` base code.

**Key Focus Areas:**

- Implementation of a Translation Lookaside Buffer (TLB) and a page table for optimized memory management.
- Utilization of the Second Chance (Clock) replacement policy to enhance TLB translations.
- Addressing intricacies by splitting 20-bit addresses into 10-bit page numbers and 10-bit page offsets.
- Validation of our implementation using `addresses.txt` and `BACKING STORE.bin` files.

### Part II: Real-world Challenges

Building upon our foundational work, Part II introduces real-world complexities into the mix. Here, we tackle a scenario where virtual memory size exceeds physical memory size, mirroring practical memory management scenarios. Our focus extends to:

- Adapting the system to accommodate a larger virtual memory (VM) compared to physical memory (PM).
- Designing physical memory with 256 page frames, necessitating robust management of free page frames.
- Implementation of both Second Chance and LRU page-replacement policies, enabling the exploration of diverse replacement strategies via a command line argument.
- Practical insights gained by applying provided address streams to experiment with various replacement policies.


