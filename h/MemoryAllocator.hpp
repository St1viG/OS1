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

    static void *mem_alloc(size_t size);

    static int mem_free(void *ptr);


};


