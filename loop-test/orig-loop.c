int main(void) {
    volatile int counter = 0;
    while (1) {
        counter++;
        if (counter >= 100) {
            break;
        }
    }
    return 0;
}