#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    if (argc < 3) {
        syslog(LOG_ERR, "not enough arguments provided!");
        return 1;
    }
    const char* filename = argv[1];
    const char* value = argv[2];
    syslog(LOG_DEBUG, "Writing %s to %s", value, filename);
    
    FILE *fp = fopen(filename, "wab+");
    if (fp == NULL) {
        syslog(LOG_ERR, "could not make file");
        return 1;
    }
    fprintf(fp, "%s", value);
    fclose(fp);
    
}