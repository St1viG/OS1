#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"


FreeMemBlock *MemoryAllocator::head = nullptr;

static size_t blocksNeeded(size_t b){
    return (b + sizeof(FreeMemBlock) + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    if(!size)
        return nullptr;

    size_t needed = blocksNeeded(size);

    FreeMemBlock *curr = head, *prev = nullptr;

    if(head == nullptr){
        size_t NOBlocks = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE;

        if(needed > NOBlocks)
            return nullptr;
        else{
            head = (FreeMemBlock*)HEAP_START_ADDR;
            head->next = nullptr;
            head->size = NOBlocks;
        }
    }
    while(curr){
        if(curr->size >= needed){
            size_t remaining = curr->size - needed;

            if(blocksNeeded(1) <= remaining){
                FreeMemBlock *newBlock = (FreeMemBlock*)((char*)curr + needed * MEM_BLOCK_SIZE);
                newBlock->size = remaining;
                newBlock->next = curr->next;

                curr->size = needed;
                curr->next = newBlock;
            }
            if(prev)
                prev->next = curr->next;
            else
                head = curr->next;

            return (char*)curr + sizeof(FreeMemBlock);
        }
        prev = curr;
        curr = curr->next;
    }
    return nullptr;
}

int MemoryAllocator::mem_free(void *ptr) {
    if(ptr == nullptr)
        return -1;

    FreeMemBlock *block = (FreeMemBlock*) ((char*) ptr -sizeof(FreeMemBlock));
    FreeMemBlock* curr = head, *prev = nullptr;

    while(curr && curr < block){
        prev = curr;
        curr = curr->next;
    }
    if(prev == nullptr)
        head = block;
    else
        prev->next = block;

    block->next = curr;
    if(block->next && (char*)block + block->size * MEM_BLOCK_SIZE == (char*) block->next){
        block->size += block->next->size;
        block->next = block->next->next;
    }

    if(prev){
        if(prev->next && (char*)prev + prev->size * MEM_BLOCK_SIZE == (char*)prev->next){
            prev->size += prev->next->size;
            prev->next = prev->next->next;
        }
    }

    return 0;

}


size_t MemoryAllocator::mem_get_free_space() {
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    return 0;
}
