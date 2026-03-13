char memfunc(int n) {
    char src[500];
    char dst[500];
    __builtin_memset(src, 123, 500);
    __builtin_memcpy(dst, src, 500);
    return dst[n];
}