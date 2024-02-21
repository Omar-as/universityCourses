#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>


/*******  COMP201 LAB3 ASSIGNMENT *******/


// Ameer Taweel


/*******  Helper Functions *******/


void str_lower(char* s){
	while(s[0]){
		s[0] = tolower(s[0]);
		s++;
	}
}


void str_non_alpha_to_space(char* s){
	char* override = s;
	int last_was_alpha = 1;
	while(*s){
		if(isalpha(*s)) {
			if(!last_was_alpha) *(override++) = ' ';
			last_was_alpha = 1;
			*(override++) = *s;
		} else {
			last_was_alpha = 0;
		}
		s++;
	}
	*override = '\0';
}


/*******  Assignment Functions *******/


/*
 * checks if the contents of string str1 and str2 are equal
 * Use strcmp() function to compare
 * return 1 if equal. Else 0.
 * YOU MAY USE ANY STRING FUNCTION
 */
int equalStr(char str1[], char str2[]){
	return !strcmp(str1, str2);
}


/*
 * DO NOT USE any string functions
 * You can only use strlen()
 * replace first n characters of str1[] with '*'
 * string length will be > n
 * Example: occludeStr("Efehan", 3) = "***han"
 */
char* occludeStr(char str1[], int n){
	for(int i = 0; i < n; i++){
		str1[i] = '*';
	}
    return str1;
}


/*
 * find the substring "key" in str
 * DO NOT USE any string functions 
 * You can only use strlen()
 * returns the index of "k" of substring "key"
 * returns -1 if not found
 * For example: findKey("this key") == 5;
 * For example: findKey("hello world") == -1;
 */
int findKey(char str[]){
	int len = strlen(str);

	for(int i = 0; i < (len - 2); i++){
		if(str[i] == 'k' && str[i + 1] == 'e' && str[i + 2] == 'y') return i;
	}

	return -1;
}


/* Find number of occurrences of word str1 in the sentence str2 (not case sensitive)
 * Returns 0 if not found
 * For Example: numOccur( "WE", "We few, we happy few, we band of brothers") = 3
 * YOU MAY USE ANY STRING FUNCTION
 */
int numOccur(char str1[], char str2[]) {
	str_lower(str1);
	str_lower(str2);
	str_non_alpha_to_space(str2);
	int count = 0;

	for (char *word = strtok(str2, " "); word != NULL; word = strtok(NULL, " ")){
		if(!strcmp(word, str1)) count++;
	}

	return count;
}


/* Find the max occuring char in str (case sensitive)
 * For Example: maxOccurChar("We few, we happy few, we band of brothers") = 'e'
 * Do not count whitespaces.
 * DO NOT USE any string functions
 * You can only use strlen()
 */
char maxOccurChar(char str[]){
	int counts[256];
	for(int i = 0; i < 256; i++) counts[i] = 0;
	for(int i = 0; i < strlen(str); i++) if(str[i] != ' ' && str[i] != '\t' && str[i] != '\n') counts[str[i]]++;
	int max = 1;
	char mac = str[0];
	for(int i = 0; i < 256; i++) if(counts[i] > max) {
		max = counts[i];
		mac = i;
	}
	
	return mac;
}

/* Implement the atoi function in the standart C library
 * Atoi Function: Given a string as an input it returns corresponding integer number
 * Note: Ignore whitespace characters.
 * Attention: Check sign bits, if the number starts with a '+' treat it as positive, if it is '-' treat it as negative. If there is no sign it is positive.
 * If the number starts with a char other then whitespace or a number return 0.
 * If a char other than a number or a whitespace is encountered end the algorithm and return the number you have found up to that point. 
 * Return 0 if a string representation cannot be formulated.
 * For Example: atoiF("+278") = 278
 * For Example: atoiF("   -15") = -15
 * For Example: atoiF("278 with words") = 278
 * For Example: atoiF("Words and -900") = 0
 * YOU MAY USE ANY STRING FUNCTION.
 * You cannot use atoi() from the standard library (You can use it for testing purposes)
 * Note: We will not test against overflows you can ignore them.
 */
int atoiF(char str1[]) {
	int sign = 1;
	int abs = 0;
	int num_started = 0;
	char strnum[strlen(str1) + 1];
	char* write_ptr = strnum;

	str1--;
	while(*(++str1)){
		if(!isdigit(*str1) && !isspace(*str1) && *str1 != '-' && *str1 != '+') break;

		if(!num_started){
			if(isspace(*str1)) continue;
			if(*str1 == '-') sign = -1;
			if(isdigit(*str1)) *(write_ptr++) = *str1;
			num_started = 1;
		} else {
			if(isdigit(*str1)) *(write_ptr++) = *str1;
			else break;
		}
	}
	*write_ptr = '\0';

	for(int i = strlen(strnum) - 1, tens = 1; i >= 0; i--, tens *= 10) abs += (strnum[i] - '0') * tens;

	return sign * abs;
}


int main(){
	// Tests

	// equalStr
	// int test_cases_count = 3;
	// char* input1[] = { "Love Dramatic", "Daddy Daddy Do", "She2sy No Kinjo No Onee-san" };
	// char* input2[] = { "Love Dramatic", "Love Dramatic", "She2sy no Kinjo No Onee-san" };
	// int output[] = { 1, 0, 0 };

	// for(int i = 0; i < test_cases_count; i++){
	// 	char* in1 = input1[i];
	// 	char* in2 = input2[i];
	// 	int out = output[i];
	// 	int res = equalStr(in1, in2);
	// 	printf("TEST #%d: %s.\n", i, out == res ? "Passed" : "Failed");
	// }

	// occludeStr
	// int test_cases_count = 3;
	// char str_in1[] = "Efehan";
	// char str_in2[] = "Ameer Chan";
	// char str_in3[] = "Zoro Chan";
	// char* input1[] = { str_in1, str_in2, str_in3 };
	// int input2[] = { 3, 5, 8 };
	// char* output[] = { "***han", "***** Chan", "********n" };

	// for(int i = 0; i < test_cases_count; i++){
	// 	char* in1 = input1[i];
	// 	int in2 = input2[i];
	// 	char* out = output[i];
	// 	char* res = occludeStr(in1, in2);
	// 	printf("TEST #%d: %s.\n", i, !strcmp(out, res) ? "Passed" : "Failed");
	// }

	// findKey
	// int test_cases_count = 3;
	// char* input1[] = { "you are the key of my toolbox", "no key for you", "no x for you" };
	// int output[] = { 12, 3, -1 };

	// for(int i = 0; i < test_cases_count; i++){
	// 	char* in1 = input1[i];
	// 	int out = output[i];
	// 	int res = findKey(in1);
	// 	printf("TEST #%d: %s.\n", i, res == out ? "Passed" : "Failed");
	// }

	// numOccurs
	// char str1[] = "WE";
	// char str2[] = "We few, we happy few, we band of brothers";
	// printf("TEST #0: %s\n", numOccur(str1, str2) == 3 ? "PASSED" : "FAILED");

	// maxOccurChar
	// char str[] = "We few, we happy few, we band of brothers";
	// printf("TEST #0: %s\n", maxOccurChar(str) == 'e' ? "PASSED" : "FAILED");

	// atoiF
	// printf("TEST #0: %s\n", atoiF("+278") == 278 ? "PASSED" : "FAILED");
	// printf("TEST #1: %s\n", atoiF("     -15") == -15 ? "PASSED" : "FAILED");
	// printf("TEST #2: %s\n", atoiF("278 with words") == 278 ? "PASSED" : "FAILED");
	// printf("TEST #3: %s\n", atoiF("Words and -900") == 0 ? "PASSED" : "FAILED");

	return 0;
}
