//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

int TCB::createThread(thread_t *handle, Body body, void* arg, uint64* stack){
    handle = new TCB(body, arg, stack);
    if(handle){
        Scheduler::put(handle);
        return 0;
    }
    return -1;
}

TCB* TCB::createThread1(thread_t *handle, Body body, void* arg, uint64* stack){
    return new TCB(body, arg, stack);
}

void TCB::yield()
{
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();
}

int TCB::exit() {
    if(running->status){
        return -1;
    }else{
        running->status = FINISHED;
        dispatch();
        return 0;
    }
}
