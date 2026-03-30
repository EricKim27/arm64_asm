#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const char msg[] = "Apples are red, blueberries are blue, I am pretty good, and so are you.";
#define MAX_TOKENS 100
int main(void){
    //setting up
    char *string = (char *)malloc(100);
    if(string == NULL) {
        return EXIT_FAILURE;
    }
    memset(string, 0, 100);
    snprintf(string, 100, msg);
    printf("Original String: %s\n", string);
    
    //using strncmp and strncpy to change strings with certain value
    int i = 0;
    /*
    A loop made to practice how to use string functions in libc.
    do {
        if(strncmp(&string[i], "e", 1) == 0) {
            strncpy(&string[i], "a", 1);
        }
        i++;
    } while(string[i] != '\0');
    */
    for(; string[i] != '\0'; i++){
        if(string[i] == 'e'){
            string[i] = 'a';
        }
    }
    printf("Modified string: %s\n", string);
    char **split = malloc(MAX_TOKENS * sizeof(char *));
    //splitting strings by spacing
    printf("Splitting strings\n");
    char *res_str = strtok(string, " ");
    i = 0;

    while(res_str != NULL) {
        split[i] = (char *)malloc(strlen(res_str)+1);
        strcpy(split[i], res_str);
        res_str = strtok(NULL, " ");
        i++;
    }

    int count = i;
    for(i=0; i < count; i++) {
        printf("%s\n", split[i]);
    }

    //cleaning up
    free(string);
    return 0;
}