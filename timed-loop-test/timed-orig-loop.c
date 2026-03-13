int main(void) {
    volatile int counter = 0;
    while (1) {
        counter++;
        if (counter >= 1000000) {
            break;
        }
    }
    return 0;
}