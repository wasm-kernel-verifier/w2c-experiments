
#define N 32
#define V 2
static int A[N][N];
static int B[N][N];

void populate(void) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            A[i][j] = V;
            B[i][j] = V;
        }
    }
}

int matmul(void) {
    int result = 0;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                result += A[i][k] * B[k][j];
            }
        }
    }
    return result;
}
