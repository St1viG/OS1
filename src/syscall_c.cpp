//
// Created by os on 10/4/25.
//
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"

inline uint64 returnValue(){
    uint64 volatile returnValue;
    __asm__ volatile("mv %0, a0":"=r"(returnValue));
    return returnValue;
}


void *mem_alloc(size_t size) {
    size_t blocks = size/MEM_BLOCK_SIZE + (size % MEM_BLOCK_SIZE ? 1:0);
    __asm__ volatile ("mv a1, %0" :: "r"(blocks));
    invoke(MEM_ALLOC);
    return (void*)returnValue();
}

int mem_free(void * ptr) {
    if(ptr == nullptr)
        return 0;
    __asm__ volatile( "mv a1, %0"::"r"(ptr));
    invoke(MEM_FREE);
    return 0;
}

size_t mem_get_free_space() {
    return 0;
}

size_t mem_get_largest_free_block() {
    return 0;
}

int sem_close(sem_t handle) {
    __asm__ volatile("mv a1, a0");
    invoke(SEM_CLOSE);
    return returnValue();
}

int sem_wait(sem_t id) {
    __asm__ volatile("mv a1, a0");
    invoke(SEM_WAIT);
    return returnValue();
}

int sem_signal(sem_t id) {
    __asm__ volatile("mv a1, a0");
    invoke(SEM_SIGNAL);
    return returnValue();
}

int thread_exit() {
    invoke(THREAD_EXIT);
    return returnValue();
}

void thread_dispatch() {
    invoke(THREAD_DISPATCH);
}

int sem_open(sem_t *handle, unsigned int init) {
    __asm__ volatile ("mv a2, a1");
    __asm__ volatile ("mv a1, a0");
    invoke(SEM_OPEN);
    return returnValue();
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {

    __asm__ volatile ("mv a3,a2");
    __asm__ volatile ("mv a2,a1");
    __asm__ volatile ("mv a1,a0");
    void* sp = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE/MEM_BLOCK_SIZE);
    __asm__ volatile ("mv a6, %0"::"r"(sp));
    __asm__ volatile ("mv a7, %0"::"r"((uint64 )arg));
    __asm__ volatile ("mv a2, %0"::"r"((uint64)start_routine));
    invoke(THREAD_CREATE);
    return 0;
}

int time_sleep(time_t) {
    __asm__ volatile ("mv a1, a0");
    invoke(TIME_SLEEP);
    return returnValue();
}

char getc() {
    invoke(GETC);
    return (char)returnValue();
}

void putc(char) {
    __asm__ volatile("mv a1, a0");
    invoke(PUTC);
}


