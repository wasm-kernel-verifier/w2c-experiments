#include <stdint.h>

int main(volatile int n) {
    if (n <= 1) {
        return n;
    }
    return main(n - 1) + main(n - 2);
}