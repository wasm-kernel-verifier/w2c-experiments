//#include <linux/types.h>
//#include <linux/printk.h>
//#include <linux/string.h>
//#include <linux/slab.h>
#include "wasm-rt-impl.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

typedef unsigned long u64;

static uint64_t wasm_rt_fuel = 0;

void wasm_rt_set_fuel(uint64_t fuel) {
    wasm_rt_fuel = fuel;
}

uint64_t wasm_rt_get_fuel(void) {
  	return wasm_rt_fuel;
}

void wasm_rt_consume_fuel(uint64_t n) {
	if (n > wasm_rt_fuel) {
		wasm_rt_trap(WASM_RT_TRAP_FUEL_EXHAUSTION);
		return;
	}
	wasm_rt_fuel -= n;
}

void wasm_rt_allocate_memory(wasm_rt_memory_t* mem,
                             uint32_t initial_pages,
                             uint32_t max_pages,
                             bool is64,
                             uint32_t page_size) {
	u64 initial_size = (u64)initial_pages * (u64)page_size;
	memset(mem, 0, sizeof(*mem));
	
	mem->page_size = page_size;
	mem->pages = initial_pages;
	mem->max_pages = max_pages;
	mem->is64 = is64;
	mem->size = initial_size;

	if (initial_size == 0) {
		mem->data = NULL;
		mem->data_end = NULL;
		return;
	}

	mem->data = malloc((size_t)initial_size);
	if (!mem->data) {
		printf("wasm_rt: failed to allocate linear memory (%llu bytes)\n", (unsigned long long)initial_size);
		mem->pages = 0;
		mem->size = 0;
		mem->data_end = NULL;
		return;
	}
	mem->data_end = mem->data + initial_size;
}

void wasm_rt_free_memory(wasm_rt_memory_t* mem) {
	if (!mem) {
		return;
	}
	if (mem->data) {
		free(mem->data);
		mem->data = NULL;
	}
	mem->data_end = NULL;
	mem->page_size = 0;
	mem->pages = 0;
	mem->max_pages = 0;
	mem->size = 0;
	mem->is64 = false;
}

void wasm_rt_allocate_funcref_table(wasm_rt_funcref_table_t* table,
                                    uint32_t elements,
                                    uint32_t max_elements) {
	if (!table) {
		return;
	}
	table->data = NULL;
	table->size = 0;
	table->max_size = max_elements;

	if (elements == 0) {
		return;
	}
	size_t bytes = (size_t)elements * sizeof(wasm_rt_funcref_t);
	table->data = malloc(bytes);
	if (!table->data) {
		printf("wasm_rt: failed to allocate funcref table (%zu bytes)\n", bytes);
		table->size = 0;
		table->max_size = max_elements;
		return;
	}
	table->size = elements;
}

void wasm_rt_free_funcref_table(wasm_rt_funcref_table_t* table) {
	if (!table) {
		return;
	}
	if (table->data) {
		free(table->data);
		table->data = NULL;
	}
	table->size = 0;
	table->max_size = 0;
}
