#ifndef COMMAND_H
#define COMMAND_H

#include "global.h"
#include "dice-roll.h"
#include "cdh-command.h"
/* #include "psvis.h" */
#include "pathfinder.h"
#include "cloc.h"

/**
 * Prints a command struct
 * @param struct command_t *
 */
void print_command(struct command_t *command) {
	int i = 0;
	printf("Command: <%s>\n", command->name);
	printf("\tIs Background: %s\n", command->background ? "yes" : "no");
	printf("\tNeeds Auto-complete: %s\n",
		   command->auto_complete ? "yes" : "no");
	printf("\tRedirects:\n");

	for (i = 0; i < 3; i++) {
		printf("\t\t%d: %s\n", i,
			   command->redirects[i] ? command->redirects[i] : "N/A");
	}

	printf("\tArguments (%d):\n", command->arg_count);

	for (i = 0; i < command->arg_count; ++i) {
		printf("\t\tArg %d: %s\n", i, command->args[i]);
	}

	if (command->next) {
		printf("\tPiped to:\n");
		print_command(command->next);
	}
}

/**
 * Release allocated memory of a command
 * @param  command [description]
 * @return         [description]
 */
int free_command(struct command_t *command) {
	if (command->arg_count) {
		for (int i = 0; i < command->arg_count; ++i)
			free(command->args[i]);
		free(command->args);
	}

	for (int i = 0; i < 3; ++i) {
		if (command->redirects[i])
			free(command->redirects[i]);
	}

	if (command->next) {
		free_command(command->next);
		command->next = NULL;
	}

	free(command->name);
	free(command);
	return 0;
}

/**
 * Parse a command string into a command struct
 * @param  buf     [description]
 * @param  command [description]
 * @return         0
 */
int parse_command(char *buf, struct command_t *command) {
	const char *splitters = " \t"; // split at whitespace
	int index, len;
	len = strlen(buf);

	// trim left whitespace
	while (len > 0 && strchr(splitters, buf[0]) != NULL) {
		buf++;
		len--;
	}

	while (len > 0 && strchr(splitters, buf[len - 1]) != NULL) {
		// trim right whitespace
		buf[--len] = 0;
	}

	// auto-complete
	if (len > 0 && buf[len - 1] == '?') {
		command->auto_complete = true;
	}

	// background
	if (len > 0 && buf[len - 1] == '&') {
		command->background = true;
	}

	char *pch = strtok(buf, splitters);
	if (pch == NULL) {
		command->name = (char *)malloc(1);
		command->name[0] = 0;
	} else {
		command->name = (char *)malloc(strlen(pch) + 1);
		strcpy(command->name, pch);
	}

	command->args = (char **)malloc(sizeof(char *));

	int redirect_index;
	int arg_index = 0;
	char temp_buf[1024], *arg;

	while (1) {
		// tokenize input on splitters
		pch = strtok(NULL, splitters);
		if (!pch)
			break;
		arg = temp_buf;
		strcpy(arg, pch);
		len = strlen(arg);

		// empty arg, go for next
		if (len == 0) {
			continue;
		}

		// trim left whitespace
		while (len > 0 && strchr(splitters, arg[0]) != NULL) {
			arg++;
			len--;
		}

		// trim right whitespace
		while (len > 0 && strchr(splitters, arg[len - 1]) != NULL) {
			arg[--len] = 0;
		}

		// empty arg, go for next
		if (len == 0) {
			continue;
		}

		// piping to another command
		if (strcmp(arg, "|") == 0) {
			struct command_t *c = (struct command_t*)malloc(sizeof(struct command_t));
			int l = strlen(pch);
			pch[l] = splitters[0]; // restore strtok termination
			index = 1;
			while (pch[index] == ' ' || pch[index] == '\t')
				index++; // skip whitespaces

			parse_command(pch + index, c);
			pch[l] = 0; // put back strtok termination
			command->next = c;
			continue;
		}

		// background process
		if (strcmp(arg, "&") == 0) {
			// handled before
			continue;
		}

		// handle input redirection
		redirect_index = -1;
		if (arg[0] == '<') {
			redirect_index = 0;
		}

		if (arg[0] == '>') {
			if (len > 1 && arg[1] == '>') {
				redirect_index = 2;
				arg++;
				len--;
			} else {
				redirect_index = 1;
			}
		}

		if (redirect_index != -1) {
			command->redirects[redirect_index] = (char*)malloc(len);
			strcpy(command->redirects[redirect_index], arg + 1);
			continue;
		}

		// normal arguments
		if (len > 2 &&
			((arg[0] == '"' && arg[len - 1] == '"') ||
			 (arg[0] == '\'' && arg[len - 1] == '\''))) // quote wrapped arg
		{
			arg[--len] = 0;
			arg++;
		}

		command->args =
			(char **)realloc(command->args, sizeof(char *) * (arg_index + 1));

		command->args[arg_index] = (char *)malloc(len + 1);
		strcpy(command->args[arg_index++], arg);
	}
	command->arg_count = arg_index;

	// increase args size by 2
	command->args = (char **)realloc(
		command->args, sizeof(char *) * (command->arg_count += 2));

	// shift everything forward by 1
	for (int i = command->arg_count - 2; i > 0; --i) {
		command->args[i] = command->args[i - 1];
	}

	// set args[0] as a copy of name
	command->args[0] = strdup(command->name);

	// set args[arg_count-1] (last) to NULL
	command->args[command->arg_count - 1] = NULL;

	return 0;
}

char* get_bin_path(char* command_name) {
	
	// return PATH using getenv() and split the path
	char* path = getenv("PATH");
	char* token = strtok(path, ":");

	struct stat st;
    
	// construct the path to the executable file
	while (token != NULL) {
		char* dir_path = (char*)malloc(strlen(token) + strlen(command_name) + 2);
		sprintf(dir_path, "%s/%s", token, command_name);

		// check whether the file exists and is a regular file
		if (stat(dir_path, &st) == 0 && S_ISREG(st.st_mode)) {

			// return the absolute path to the file
			return strdup(dir_path);

		}

		// free and move on to the next directory path
		free(dir_path);
		token = strtok(NULL, ":");
    }

	// if not found return null
	return NULL;
}

int process_command(struct command_t *command) {
	int r;

	if (strcmp(command->name, "") == 0) {
		return SUCCESS;
	}

	if (strcmp(command->name, "exit") == 0) {
		return EXIT;
	}

	if (strcmp(command->name, "cd") == 0) {
		if (command->arg_count > 0) {
			r = chdir(command->args[1]);
			if (r == -1) {
				printf("-%s: %s: %s\n", sysname, command->name,
					   strerror(errno));
			}

			char path[256];

			if (getcwd(path, sizeof(path)) == NULL) {
				perror("Error getting absolute path");
			}

			add_history(path);
			save_history();

			return SUCCESS;
		}
	}

	if (strcmp(command->name, "roll") == 0) {

		// TODO: fix program exits when writing "roll " or "roll" alone

		int code;
		if (command->arg_count > 2) {
		
			code = dice_roll(command);

			// invalid format printing
			if (code == EXIT) {
				printf("Invlaid format for roll command\n");
			}
			return SUCCESS;
		} else {
			printf("Invlaid format for roll command\n");
		}

	}

	if (!strcmp(command->name, "cloc")) {

        char buff[100];

        if (getcwd(buff, sizeof(buff)) == NULL){
            return SUCCESS;
        }

        char* arg = command->args[1];

        // if the argument is null then the directory 
        // is set to the current directory
        // this is different from the normal cloc but 
        // we wanted to add it as an additional feature
        // as it makes life easier
        if(!arg){
            arg = ".";
        }

        // memory for the path is allocated 
        char *path = (char* )malloc(strlen(buff) + strlen(arg) + 2);

        // path is concatinated
        sprintf(path, "%s/%s", buff, arg);

        // path is sent to the handleFiles function 
        // to handle the counting and the printing
        handleFiles(path);
        return SUCCESS;

    }

	if (strcmp(command->name, "cdh") == 0) {

		// TODO: ensure cdh doesn't throw error when chaning dir if i wrote b\
		// TODO: make the errors meaningful for cdh
		// TODO: duplicates when running cdh
		// TODO: fix it so that 10 works

		int code;
		code = cdh();

		if (code == EXIT) {
			printf("Error: Invalid Input for command cdh\n");
		}

	}

	if (strcmp(command->name, "zacalc") == 0) {

		const char* file_path = find_file("src/calc.py");
		
		char com[256];
    	snprintf(com, sizeof(com), "python %s", file_path);

		// Execute the Python script
		int result = system(com);

		// Check the return value of the system() function
		if (result == -1) {
			printf("Failed to execute ZaCalc.\n");
		} else {
			printf("May ZaCalc be with you.\n");
		}

	}
	

	/* if (!strcmp(command->name, "psvis")) { */

	/*         if(command->arg_count > 2) { */
	/*             int pid = atoi(command->args[1]); */
	/*             char* outputfile =command->args[2]; */
	/*             psvis(pid, outputfile); */
	/*         } else { */
	/*             printf("invalid number of arguments\n"); */
	/*         } */
	/*         return SUCCESS; */
	/*     } */

	// makes copy of stdout and stdin
	int fileDesc = -1;
    int stdoutCpy = dup(STDOUT_FILENO);
    int stdinCpy = dup(STDIN_FILENO);

	// creates flags
    FILE *file;
    char* flags[3] = {"r", "w", "a"};

	// redirects the files to correct outputs
    for ( int i = 0; i < 3; i++ ) {
        
		if ( command->redirects[i] ) {

            file = fopen(command->redirects[i], flags[i]);
            fileDesc = fileno(file);
            
			if(fileDesc < 0) printf("error opening the file\n");
            
			dup2(fileDesc, i == 0 ? STDIN_FILENO : STDOUT_FILENO);
        }
    }

	pid_t pid = fork();
	
	// child
	if (pid == 0) {

		// save /bin path given command name
		char* bin_path = get_bin_path(command->name);

		if (bin_path != NULL) {

			// create args array
			char* args[command->arg_count + 2];
			args[0] = bin_path;

			// add arguments to args
			for (int i = 1; i < command->arg_count; i++) args[i] = command->args[i];

			// make array null terminated
			args[command->arg_count + 2] = NULL;

			// execute the command and free
			execv(bin_path, args);
			free(bin_path);
			exit(0);
		}

		// ensuring the path if freed and exits
		free(bin_path);
		exit(0);

	} else {
		
		// checks if it is not background
		if ( !command->background ) {

			int status;
            waitpid(pid, &status, 0); // waits for child to finish
		
		}

		// closes the file and resets stdin and stdout
		if ( fileDesc > 0 ) {

			close(fileDesc); 
			dup2(stdoutCpy, 1);
			dup2(stdinCpy, 0);

		}

		return SUCCESS;
	}

	// TODO: your implementation here

	printf("-%s: %s: command not found\n", sysname, command->name);
	return UNKNOWN;
}

#endif
