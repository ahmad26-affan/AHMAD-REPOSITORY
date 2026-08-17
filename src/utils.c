#include <stdio.h>
#include "utils.h"

#define ESC "\x1b"

void print_banner(const char *title, const char *version) {
    printf(ESC "[1;34m");
    printf("***********************\n");
    printf("* %s v%s *\n", title, version);
    printf("***********************\n");
    printf(ESC "[0m\n");
}
