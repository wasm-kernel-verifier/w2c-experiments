void read_str(char *dst, int size, char* unsafe_ptr) {
    for (int i = 0; i < size; i++) {
        *dst = *(unsafe_ptr + i);
    }
}

int save_str_to_buffer(volatile int* off) {
    char* static_data = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
    int MAX_BUFFER_SIZE = 10;
    char buf[MAX_BUFFER_SIZE];
    int type_pos = *off;
    if(MAX_BUFFER_SIZE - type_pos < (1 + sizeof(int) + 1)) {
        return 0;
    }
    /* at least six bytes are available */ 
    int size_pos = type_pos + 1; 
    int str_pos = size_pos + sizeof(int);
    int read_size = (MAX_BUFFER_SIZE - str_pos);
    read_str(&buf[str_pos], read_size, static_data);
    return 0;
}