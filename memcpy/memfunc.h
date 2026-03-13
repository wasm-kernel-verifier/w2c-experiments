void helper(char* src, char*dst) {
    __builtin_memset(src, 123, 20000);
    __builtin_memcpy(dst, src, 20000);
}

