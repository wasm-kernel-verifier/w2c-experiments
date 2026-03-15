#define N 32
#define V 2

struct mats {
    int A[N][N];
    int B[N][N];
};

static void populate(struct mats *m) {
    if (!m) return;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            m->A[i][j] = V;
            m->B[i][j] = V;
        }
    }
}

int matmul(struct mats *m) {
    if (!m) return 0;
    int result = 0;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                result += m->A[i][k] * m->B[k][j];
            }
        }
    }
    return result;
}
