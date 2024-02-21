#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>
#include <string.h>
#include <stdbool.h>

/************  COMP201 ASSIGNMENT 2  ************/

// Ameer Taweel

/************  Type Aliases  ************/

/**
Line Operation
A function that takes a string and returns nothing.
**/
typedef void (*line_op)(char*, void**);

/************  Line Operations  ************/

// Convert all of the string to lowercase
void str_lower(char* s){
	while(s[0]){
		s[0] = tolower(s[0]);
		s++;
	}
}

// Replace non-alpha character delimiters with one space
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

// Gather information about word in an sms
void word_status(char* sms, void** closure){
	str_lower(sms);
	str_non_alpha_to_space(sms);
	char* keyword = (char*) closure[0];
	float* ham_sms = (float*) closure[1];
	float* spam_sms = (float*) closure[2];
	float* ham_keyword = (float*) closure[3];
	float* spam_keyword = (float*) closure[4];
	float* included_sms = (float*) closure[5];
	float* total_sms = (float*) closure[6];

	(*total_sms)++;
	int is_spam = sms[0] == 's';
	if(is_spam) (*spam_sms)++;
	else (*ham_sms)++;
	int is_included = 0;

	for (char *word = strtok(sms, " "); word != NULL; word = strtok(NULL, " ")){
		if(!strcmp(word, keyword)) {
			is_included = 1;
			if(is_spam) (*spam_keyword)++;
			else (*ham_keyword)++;
		}
	}
	*included_sms += is_included;
}

// Is a word a stop word?
void stop_word_status(char* stop_word, void** closure){
	str_lower(stop_word);
	char* keyword = (char*) closure[0];
	int* is_stop = (int*) closure[1];

	stop_word[strlen(stop_word) - 1] = '\0'; // Remove the new line character
	if(!strcmp(stop_word, keyword)) *is_stop = 1;
}


/************  Helper Functions  ************/


// Apply a function to every line in a file
void apply_to_file_lines(char* file_name, int max_line_len, line_op f, void** closure){
	char line[max_line_len];

	FILE* file = fopen(file_name, "r");

	// Call f(line) on each line of SMS dataset
	while (fgets(line, max_line_len, file) != NULL) f(line, closure);

	fclose(file);
}

void task1(char* file_name, int max_line_len, char* keyword){
	str_lower(keyword);
	float ham_sms = 0, spam_sms = 0, ham_keyword = 0, spam_keyword = 0, included_sms = 0, total_sms = 0;
	void* closure[] = {keyword, &ham_sms, &spam_sms, &ham_keyword, &spam_keyword, &included_sms, &total_sms};
	apply_to_file_lines(file_name, max_line_len, word_status, closure);
	if((ham_keyword + spam_keyword) == 0){
		printf("This word doesn't occur in the text!\n");
		return;
	}
	float tf_ham = ham_keyword / ham_sms;
	float tf_spam = spam_keyword / spam_sms;
	printf("Total Ham: %.0f\n", ham_sms);
	printf("Word in Ham: %.0f\n", ham_keyword);
	printf("Calculated tf value for this word: %.6f\n", tf_ham);
	printf("Total Spam: %.0f\n", spam_sms);
	printf("Word in Spam: %.0f\n", spam_keyword);
	printf("Calculated tf value for this word: %.6f\n", tf_spam);
	printf("This word is mostly used for%sspam messages\n", tf_ham > tf_spam ? " non " : " ");
}

void task2(char* file_name, int max_line_len, char* keywords[], int num_keywords){
	float total_ham_tf_idf = 0;
	float total_spam_tf_idf = 0;
	for(int i = 0; i < num_keywords; i++){
		char* keyword = keywords[i];
		str_lower(keyword);
		float ham_sms = 0, spam_sms = 0, ham_keyword = 0, spam_keyword = 0, included_sms = 0, total_sms = 0;
		void* closure[] = {keyword, &ham_sms, &spam_sms, &ham_keyword, &spam_keyword, &included_sms, &total_sms};
		apply_to_file_lines(file_name, max_line_len, word_status, closure);
		float tf_ham = ham_keyword / ham_sms;
		float tf_spam = spam_keyword / spam_sms;
		float idf = included_sms ? logf(total_sms / included_sms) : 0;
		total_ham_tf_idf += tf_ham * idf;
		total_spam_tf_idf += tf_spam * idf;
	}
	printf("Total tf-idf score from non spam messages for the sentence: %.6f\n", total_ham_tf_idf);
	printf("Total tf-idf score from spam messages for the sentence: %.6f\n", total_spam_tf_idf);
	if(total_ham_tf_idf || total_spam_tf_idf)
		printf("This sentence is%sspam.\n", total_ham_tf_idf > total_spam_tf_idf ? " not " : " ");
	else
		printf("Tf-idf scores are found to be 0, spam detection failed!\n");
}

void taskx(char* sms_file_name, char* stop_file_name, int max_line_len, char* keywords[]){
	char* non_stop_keywords[5];
	int new_keyword_index = 0;
	for(int i = 0; i < 5; i++){
		char* keyword = keywords[i];
		str_lower(keyword);
		int is_stop = 0;
		void* closure[] = { keyword, &is_stop };
		apply_to_file_lines(stop_file_name, max_line_len, stop_word_status, closure);
		if(!is_stop) non_stop_keywords[new_keyword_index++] = keyword;
		else printf("%s is a stop word, it is not used in tf-idf calculations.\n", keyword);
	}
	task2(sms_file_name, max_line_len, non_stop_keywords, new_keyword_index);
}

/************  Main Function  ************/

int main(int argc, char *argv[]) {
	// Constants
	int MAX_LINE_LEN = 1000;
	char* SMS_FILE_NAME = "SMSSpamCollection.txt";
	char* STOP_FILE_NAME = "99webtools.txt";

    if (!strcmp(argv[1], "calculate-tf")) task1(SMS_FILE_NAME, MAX_LINE_LEN, argv[2]);
	else if (!strcmp(argv[1], "predict")) task2(SMS_FILE_NAME, MAX_LINE_LEN, argv + 2, 5);
	else if (!strcmp(argv[1], "predict-wo-stopwords")) taskx(SMS_FILE_NAME, STOP_FILE_NAME, MAX_LINE_LEN, argv + 2);
    else printf("Wrong Function!\n");

    return 0;
}
