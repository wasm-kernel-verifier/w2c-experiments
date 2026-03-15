#define NEEDLE_LEN 30
#define HAYSTACK_LEN 2000

struct needle {
    int needle[NEEDLE_LEN];
    int haystack[HAYSTACK_LEN];
};

void populate(struct needle *s) {
    if (!s) return;
    for (int i = NEEDLE_LEN - 1; i >= 0; i--) {
        s->needle[i] = i;
    }
    for (int i = HAYSTACK_LEN - 1; i >= 0; i--) {
        s->haystack[i] = i;
    }
}

int search(struct needle *s) {
    if (!s) return 0;
    for (int i = HAYSTACK_LEN - 1; i >= NEEDLE_LEN - 1; i--) {
        volatile int found = 0;
        for (int j = 0; j < NEEDLE_LEN; j++) {
            found = s->haystack[i - j] - s->needle[NEEDLE_LEN - j - 1];
        }
        if (found == 0) {
            return found;
        }
    }
    return 123;
}
