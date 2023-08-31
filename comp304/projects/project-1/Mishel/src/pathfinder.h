#ifndef PATHFNDR_H
#define PATHFNDR_H

char* find_file(const char* pathname) {
    char command[256];
    snprintf(command, sizeof(command), "find %s -path \"*/project-1---shell-future-gadget-lab/%s\"",getenv("HOME"),pathname);

    FILE* fp = popen(command, "r");
    if (fp == NULL) {
        perror("Failed to run find command");
        return NULL;
    }

    static char path[256];
    if (fgets(path, sizeof(path), fp) == NULL) {
        fprintf(stderr, "Path not found\n");
        pclose(fp);
        return NULL;
    }

    size_t len = strlen(path);
    if (path[len - 1] == '\n') {
        path[len - 1] = 0; // Remove newline character
    }

    pclose(fp);
    return path;
}

#endif