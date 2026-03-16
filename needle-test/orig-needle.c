#define NEEDLE_LEN 10
#define HAYSTACK_LEN 5000

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
    int found_outer = 1;
    for (int i = HAYSTACK_LEN - 1; i >= NEEDLE_LEN - 1; i--) {
        int found = 0;
        for (int j = 0; j < NEEDLE_LEN; j++) {
            found = found | (s->haystack[i - j] - s->needle[NEEDLE_LEN - j - 1]);
        }
        // found is 0 iff string was found at i
        found = found | ((found & 0x55555555) >> 1);
        found = found | ((found & 0x44444444) >> 2);
        found = found | ((found & 0x10101010) >> 4);
        found = found | ((found & 0x01000100) >> 8);
        found = found | ((found & 0x00010000) >> 16);
        // found has bit 0 set iff string was NOT found at i
        
        found_outer &= found;
    }
    return found_outer;
}
