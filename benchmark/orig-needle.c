static char needle[5];
static char haystack[10];

void populate() {
    for (int i = 0; i < 5; i++) {
        needle[i] = 1;
    }
    needle[4] = 0;
    for (int i = 0; i < 10; i++) {
        haystack[i] = 1;
    }
}

int search() {
    for (int i = 0; i < (10 - 5); i++) {
        int found = 1;
        for (int j = 0; j < 5; j++) {
            if (needle[j] != haystack[i+j]) {
                found = 0;
                break;
            }
        }
        if (found == 1) {
            return 1;
        }
    }
    return 0;
}
