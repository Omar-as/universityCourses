#ifndef GLOBAL_H
#define GLOBAL_H

/*********************************************************************************/

#include <stdbool.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include <termios.h> // termios, TCSANOW, ECHO, ICANON
#include <unistd.h>
#include <sys/stat.h>
#include <time.h>
#include <limits.h>
#include <fcntl.h>
#include <sys/socket.h>
#include <linux/netlink.h>
#include <graphviz/cgraph.h>
#include <regex.h>
#include <dirent.h>

/*********************************************************************************/

// macros for cdh command
#define MAX_HISTORY 10
#define HISTORY_FILE ".cdh_history"

/*********************************************************************************/
	
// cdh command
char history[MAX_HISTORY][PATH_MAX];
int num_history = 0;

const char *sysname = "mishell";

enum return_codes {
	SUCCESS = 0,
	EXIT = 1,
	UNKNOWN = 2,
};

struct command_t {
	char *name;
	bool background;
	bool auto_complete;
	int arg_count;
	char **args;
	char *redirects[3]; // in/out redirection
	struct command_t *next; // for piping
};

/*********************************************************************************/

#endif
