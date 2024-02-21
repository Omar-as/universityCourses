# COMP201

## Class #1 Notes

### Notes

No lab this week.

## Class #2 Notes

### Binary Integer Representations In Computer Memory

#### Unsigned

Normal binary representation

#### Signed

- Sign-Magnitude Method
- Ones' Complement Method
- Two's Complement Method

Note: Single byte can hold from 0 to 255.

### Research

I did some research on the Two's Complement and binary integer representations in
general and found the following:

#### What Does The MSB (Most Significant Bit) in two's complement mean?

> A two's-complement number system encodes positive and negative numbers in a binary
> number representation. The weight of each bit is a power of two, except for the
> most significant bit, whose weight is the negative of the corresponding power of
> two.

Source: [Wikipedia](https://en.wikipedia.org/wiki/Two%27s_complement)

Knowing this means:

- A better understanding of the Two's Complement.
- The ability to convert negative numbers between decimal and binary in Two's
Complement and vice-versa, without the need to convert to positive first.

#### There Are Other Representations

There are other representations than Sign-Magnitude and Two's Complement for numbers
in computer memory. The most notable one of them is Ones' Complement.

Numbers in Ones' Complement are inverses of the original number.

1001 becomes 0110.

One's Complement shares the property that addition and subtraction work out of
the box with the Two's Complement.

Also, like the Sign-Magnitude, it has two representations of zero.

1001 + 0110 = 1111 (a number added to its complement is zero, so zero is both
1111 and 0000).

More on this on [Wikipedia](https://en.wikipedia.org/wiki/Signed_number_representations).

#### Comparing Signed Integers With Unsigned Integers

When comparing signed integers with unsigned integers, C implicitly casts the
signed integer into an unsigned integer for the comparison. This might lead to
wrong results.

But there is a compiler flag, `-Wsign-compare`, that warns about such cases.

More info on type casting: [Comparison operation on unsigned and signed integers](https://stackoverflow.com/questions/2084949/comparison-operation-on-unsigned-and-signed-integers)
More info on compiler warnings: [Flags to enable thorough and verbose g++ warnings](https://stackoverflow.com/questions/5088460/flags-to-enable-thorough-and-verbose-g-warnings)

Links:

- [Signed number representations](https://en.wikipedia.org/wiki/Signed_number_representations)
- [Ones' complement](https://en.wikipedia.org/wiki/Ones%27_complement)
- [Two's complement](https://en.wikipedia.org/wiki/Two%27s_complement)
- [Sign-Magnitude, One's Complement, Two's Complement](https://stackoverflow.com/questions/35278819/sign-magnitude-ones-complement-twos-complement)
- [Difference between "int main()" and "int main(void)" in C/C++](https://www.geeksforgeeks.org/difference-int-main-int-mainvoid/)
- [Word (in Computer Architecture)](https://en.wikipedia.org/wiki/Word_(computer_architecture))
- [Why are both little- and big-endian in use?](https://stackoverflow.com/questions/4752715/why-are-both-little-and-big-endian-in-use)
- [Print 64-bit integer in C](https://stackoverflow.com/questions/10222899/how-to-print-64-bit-integer-in-gcc-4-4-1)
- [C - <inttypes.h>](https://www.alphacodingskills.com/c/c-inttypes-h.php)

### Why Does Two's Complement Work

Because the MSB represents -2^(n-1). No negative value can collide with a
positive one.

### Truncation Is Mod Operation

When an unsigned integer i, stored in x bits gets truncated to y bits, where y is
smaller than  x, the operation that happens is i mod 2^y.

Bits at index equal to or larger than y represent multiples of 2^y, so they are
not included in the result. Bits in indexes less than y remain.

## Class #3 Notes

### Why There Is No `Logical XOR` Operator?

Logical XOR is the same as logical "Not Equal To", or `!=`.

### Check If Integer (N) Is A Power Of Two

#### My Solution

```c
int is_power_of_two(int n) {
    if(n <= 0) return 0;

    /*
    If n is a power of two, then it has one bit with value 1.
    All other bits are of value 0.
    
    Assume this bit with value 1 is on index i.
    y will have all bits between index 0 and index (i - 1) with value 1.
    The remaining bits in y are 0.
    
    z will have all bits from index 0 to index i with value 1.
    Other bits will have value 0.
    z is larger than n, or equal when n is 1.
    
    If n is not a power of two, then it has more than bit with value 1.
    The most significant bit with value 1 in n, has index i.
    
    Because there are more than one bit with value 1, when we do subtraction,
    the bit at index i will stay there, and subtraction will affect the bits to
    its right.
    
    Since the bit at index i is 1 in both n and y, it's 0 in z.
    z is smaller than n.
    */
    int y = n - 1;
    int z = n ^ y;

    return z >= n;
}
```

#### Professor's Solution

```c
bool is_power_of_2(unsigned int value) {
    return value != 0 && (value & (value - 1)) == 0;
}
```

Q/A \w Professor Session #1:

Q: Can quantum computers represent all real numbers?
A: Learn more about quantum computers:
[Quantum Computing for Computer Scientists](https://youtu.be/F_Riqjdh2oM).
[Slides of the previous video](https://www.microsoft.com/en-us/research/video/quantum-computing-computer-scientists/##!related_info).
[Quantum Computing Expert Explains One Concept in 5 Levels of Difficulty](https://youtu.be/OWJCfOvochA).
[A Beginner’s Guide To Quantum Computing](https://youtu.be/JRIPV0dPAd4).
[Google has achieved quantum supremacy](https://www.newscientist.com/article/2220968-its-official-google-has-achieved-quantum-supremacy/).
[Google and NASA Achieve Quantum Supremacy](https://www.nasa.gov/feature/ames/quantum-supremacy).
[Quantum supremacy has been achieved by a more complex quantum computer](https://www.newscientist.com/article/2290832-quantum-supremacy-has-been-achieved-by-a-more-complex-quantum-computer/).
[The new light-based quantum computer Jiuzhang has achieved quantum supremacy](https://www.sciencenews.org/article/new-light-based-quantum-computer-jiuzhang-supremacy).
[Scott Aaronson on Complexity, Computation, and Quantum Gravity](https://podcasts.google.com/feed/aHR0cHM6Ly9yc3MuYXJ0MTkuY29tL3NlYW4tY2Fycm9sbHMtbWluZHNjYXBl/episode/Z2lkOi8vYXJ0MTktZXBpc29kZS1sb2NhdG9yL1YwL2ppV3RoOWZoSjJoWnFqanl2YzFZR0NZLUZTcHVJRkxibGxtZ0xPX2R3QnM?sa=X&ved=0CA0QkfYCahcKEwjQ5OOBkM_zAhUAAAAAHQAAAAAQAQ).

Q: Why don't we have unsigned floats?
A: There are not many useful applications for that in real life.
[Unsigned Floats - Stack Overflow thread](https://stackoverflow.com/questions/512022/why-doesnt-c-have-unsigned-floats)

## Class #4 Notes

By definition, will not be able to represent all the numbers.

Floating-point numbers have two special reserved values for the exponent.

- All zeroes
- All ones

Denormalized Mode: Enables us to represent small numbers accurately.

How to calculate the bias in Floating-Point numbers:
bias = 2 ^ (number_of_bits_in_exponent - 1) - 1

Floating-point arithmetic is not associative.

"Go" uses arbitrary-precision for constant expressions, including floats.

Links:

- [Decimal to IEEE 754 Floating Point Representation](https://youtu.be/8afbTaA-gOQ)
- [Converting floating point decimal to binary](https://youtu.be/ruEuNEEb8Dk)

Q/A \w Professor Session #1:

Q: Is adding and subtracting floating point numbers natural like integers?
A: No, it's not. We have to align the decimal point first.
Old computer had a processing unit just for performing float operations, called
FPU.

## Class #5 Notes

[Course C style guide](https://aykuterdem.github.io/classes/comp201/code-style/html/index.html).

Lower-case chars are 32 more than the upper-case ones.
To convert from upper-case char to a lower-case char, flip the bit with value
32, from 0 to 1.
To convert from lower-case char to a upper-case char, flip the bit with value
32, from 1 to 0.

[Different UTF formats](https://stackoverflow.com/questions/496321/utf-8-utf-16-and-utf-32).

We can compare, manipulate, and even loop over characters with integer operators.

C functions have man (manual) pages.

It is possible to call C functions from shell scripts, but it is very
complicated.

[Representing strings in memory in C](https://stackoverflow.com/questions/14709323/does-c-have-a-string-type).
[Representing strings in memory in Java](https://stackoverflow.com/questions/31206851/how-much-memory-does-a-string-use-in-java-8).
Basically C is a very low level language, it just stores the string as a char
array. However, this may cause some security problems. Other higher level
languages, like Java, represent a string as an Object, that contains the char
array, but also other properties.

If we omit the null-terminating character, the program will not know where does
the string end, and errors will probably happen.
Strings literals (between double quotes), have the null-terminating character
automatically inserted by the compiler.

We can declare variable size arrays in C, and we can check their size at
runtime. However, a string might not use the whole length of the array it's
stored in, so we use the null-terminating character.

C passes parameters by value, but we can pass pointers to locations in memory as
a sort of pass-by-reference.
[More about this topic](https://stackoverflow.com/questions/17168623/does-c-even-have-pass-by-reference).

We can use pointers (access by index) as if they were arrays.

[Default value of uninitialized array values in c](https://stackoverflow.com/questions/24797860/what-is-the-default-value-of-a-char-in-an-uninitialized-array-in-c).

C does not have a garbage collector.
Memory allocation, deallocation, and management are done by the programmer.
[More info about this topic](https://www.geeksforgeeks.org/dynamic-memory-allocation-in-c-using-malloc-calloc-free-and-realloc/).

Q/A \w Professor Session #1:

Q: Why do C functions have man pages?
A: Unix was developed by, and alongside the C programming language.

Q: Why does the C standard library have really bad function names?
A: To make the source code shorter, because at the time it was created,
computers did not have a lot of memory.

## Class #6 Notes

Two stars (\*\*) is a pointer to a pointer.

In C, we can achieve higher order functions with pointers.

We use the `%p` formatter to print pointer in `printf()`.

We cannot re-assign arrays in C, even to arrays of the same size.

If we take a pointer to an array / string literal directly, it will be
read-only.

## Class #7 Notes

We can modify the parameter of the function directly.

### Segmentation Fault and Compilation Error

[What is the difference between crash at compile time and segmentation fault?](https://www.quora.com/What-is-the-difference-between-crash-at-compile-time-and-segmentation-fault?share=1)
[What is a segmentation fault?](https://stackoverflow.com/questions/2346806/what-is-a-segmentation-fault)
[What is the difference between a segmentation fault and a stack overflow?](https://stackoverflow.com/questions/2685413/what-is-the-difference-between-a-segmentation-fault-and-a-stack-overflow)

### Double / Triple / (Length N) Pointers

[Triple pointers in C: is it a matter of style?](https://stackoverflow.com/questions/21488544/triple-pointers-in-c-is-it-a-matter-of-style)
[Correctly allocating multi-dimensional arrays](https://stackoverflow.com/questions/42094465/correctly-allocating-multi-dimensional-arrays)

## Class #8 Notes

Assertions should be used only as a debugging tool, not to validate input.

### Did Not Understand

- Can we read/change the value of the function stack at runtime?
- Does the memory get cleared after a program finishes running? If not, can't
  other programs running on the same memory later see data that they should not
  see?
- Can we make custom-length integers (or other types) with dynamic memory
  allocation?
- Why is using global variables in C not safe if the project contains multiple
  C files? Is it namespace pollution?
- Global variables are allocated in a different place in memory depending on
  how we compile the project?
- How memory allocation functions are implemented.

## Class #9 Notes

We can get the size of a datetype by dereferencing its pointer.

[Difference between malloc() and calloc()?](https://stackoverflow.com/questions/1538420/difference-between-malloc-and-calloc)

## Class #10 Notes

[A Guide to Tesla’s Configurable Floating Point Formats & Arithmetic](https://www.reddit.com/r/MachineLearning/comments/qghljd/d_a_guide_to_teslas_configurable_floating_point/)
[Tesla Dojo Technology](https://tesla-cdn.thron.com/static/SBY4B9_tesla-dojo-technology_OPNZ0M.pdf)
[Tesla Floating Point Explanation](https://twitter.com/jamesdouma/status/1453029128932773910)

C does not hava a `byte` type, but it can be implemented using `typedef`.
[C - typedef](https://www.tutorialspoint.com/cprogramming/c_typedef.htm).

When using `memcpy()`, copying half integers differs in result based on the use
of little or big endian.

## DONE

- Check: C is an imperative programming language - DONE.
- Assignment ##0 - Due October 7th - DONE.
- C Bootcamp discussion instead of lab this week - DONE.
- Tell the professor about having to miss my lab - DONE.
- Assignment ##1 will be out on the 7th of October, and due to the 21st of
October - DONE.

## TODO

- December 5, Sunday 3 pm: Midterm

## Ask Mehmet

- Program execution pointer.
- Buffer overflow vulnerability.
