#include <stdio.h>
#include "project.h"
#include "utils.h"

int main(void) {
    print_banner(PROJECT_NAME, PROJECT_VERSION);
    printf("%s - initial polished build\n", PROJECT_NAME);
    printf("Run `make` and `make test` to build and run examples.\n");
    return 0;
}
