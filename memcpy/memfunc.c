char memfunc(int n) {
    char src[20000];
    char dst[20000];
    __builtin_memset(src, 123, 20000);
    __builtin_memcpy(dst, src, 20000);
    return dst[n];
}
