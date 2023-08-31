#ifndef CDH_H
#define CDH_H

#include "global.h"

void load_history() {

    // opening the file saved at the home directory
    char cdh[100];
    sprintf(cdh, "%s/%s", getenv("HOME"), HISTORY_FILE);
    FILE *file = fopen(cdh, "r");

    if (file == NULL) {
        return;
    }

    char line[PATH_MAX];

    // clearing the old history
    num_history = 0;

    // saving the file information
    while (fgets(line, PATH_MAX, file) != NULL) {

        if (line[strlen(line) - 1] == '\n') {
            line[strlen(line) - 1] = '\0';
        }

        if (num_history < MAX_HISTORY && line[0] != '\0') {
            strcpy(history[num_history], line);
            num_history++;
        }
    }
    
    // closing the file
    fclose(file);
}

void save_history() {

    // opening or creating the file saved at the home directory
    char cdh[100];
    sprintf(cdh, "%s/%s", getenv("HOME"),HISTORY_FILE);
    FILE *file = fopen(cdh, "w");

    if (file == NULL) {
        return;
    }

    // saving the history to the file
    for (int i = 0; i < num_history; i++) {
        fprintf(file, "%s\n", history[i]);
    }
    
    // closing the file
    fclose(file);
}

void add_history(char *dir) {

    // check if dir is already in history
    for (int i = 0; i < num_history; i++) {

        if (strcmp(dir, history[i]) == 0) {
            
            // Move dir to front of history
            for (int j = i; j > 0; j--) {
                strcpy(history[j], history[j - 1]);
            }
            
            strcpy(history[0], dir);
            return;
        }
    }

    // move existing entries to make space for new entry
    if (num_history >= MAX_HISTORY) {
        
        for (int i = MAX_HISTORY - 1; i > 0; i--) {
            strcpy(history[i], history[i - 1]);
        }
    
    } else {
        
        for (int i = num_history; i > 0; i--) {
            strcpy(history[i], history[i - 1]);
        }
        
        num_history++;
    }

    // add dir to front of history
    strcpy(history[0], dir);
}

void print_history() {
    
    printf("cdh history:\n");
    
    char *home = getenv("HOME");
    char path[256];

    // prints history and changes the home path to ~
    for (int i = 0; i < num_history; i++) {
        strcpy(path, history[i]);

        if (strstr(path, home) == path) {
            memmove(path, "~", 1);
            memmove(path+1, path+strlen(home), strlen(path)-strlen(home)+1);
        }

        printf("%d) %c) %s\n", i + 1, 'a' + i, path);
    }
}

int cdh() {
    
    // load and print the history
    load_history();
    print_history();
    
    // taking input from user
    printf("Enter a number or letter to cd to: ");
    char input[10];
    fgets(input, 10, stdin);
    int index;
    
    // saves the letter or digit from user
    if (input[0] >= '1' && input[0] <= '9') {
    
        index = input[0] - '0';
    
    } else if (input[0] >= 'a' && input[0] <= 'j') {
    
        index = input[0] - 'a' + 1;
    
    } else {
        return EXIT;
    }

    // if index outside the given indices exit
    if (index <= 0 || index > num_history) {
        return EXIT;
    }
    
    // cd to that path
    char *dir = history[index - 1];
    printf("cd to %s\n", dir);
    
    // save the new cd'ed path
    if (chdir(dir) == 0) {
    
        add_history(dir);
        save_history();
    
    } else {
        perror("cd");
        return EXIT;
    }

    return SUCCESS;
}

#endif