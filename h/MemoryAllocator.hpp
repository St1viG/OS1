#pragma once
#include "../lib/hw.h"

struct FreeMemBlock {
    FreeMemBlock* next;
    size_t size;
};

class MemoryAllocator {
private:

    static FreeMemBlock* head;

    MemoryAllocator() = default;


public:

    static void initialise();

    static void *mem_alloc(size_t size);

    static int mem_free(void *ptr);

    static size_t mem_get_free_space();

    static size_t mem_get_largest_free_block();

};


