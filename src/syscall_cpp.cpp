//
// Created by marko on 20.4.22..
//

#include "../lib/mem.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_cpp.hpp"


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
//    return __mem_alloc(n);
    return MemoryAllocator::mem_alloc(n);
}

void *operator new[](size_t n)
{

//    return __mem_alloc(n);
    return MemoryAllocator::mem_alloc(n);

}

void operator delete(void *p) noexcept
{
MemoryAllocator::mem_free(p);
}

void operator delete[](void *p) noexcept
{
MemoryAllocator::mem_free(p);
}

void PeriodicThread::terminate() {
    thread_exit();
}

PeriodicThread::PeriodicThread(time_t period) {
    this->period = period;
}

char Console::getc() {
//    return ::getc();
    return 0;
}

void Console::putc(char c) {
//    putc(c);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}


Thread::~Thread() {}

int Thread::start() {
    return thread_create(&myHandle, body, arg);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    time_sleep(time); //<---
    //implementirati
    return 0;
}

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg){}




