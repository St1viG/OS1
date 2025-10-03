//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"

TCB *TCB::idle = nullptr;
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;


TCB::TCB(Body body, void* a, uint64* stack):
    body(body),
    a(a),
    stack(stack),
    context({(uint64)&threadWrapper,stack!= nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0}),
    status(CREATED),
    timeSlice(DEFAULT_TIME_SLICE){
}

void TCB::thread_initialise() {
    running = new TCB(nullptr, nullptr, nullptr);
    running->status = RUNNING;
    uint64* idle_stack = (uint64*)MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    idle = new TCB(idleWrapper, nullptr, idle_stack);
    idle->status  = READY;
}

TCB* TCB::createThread(TCB::Body body, void* a) {
    uint64* stack = (uint64*)MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    if(!stack) return nullptr;
    TCB* thread = new TCB(body,a,stack);
    if(thread){
       return thread;
    }
    MemoryAllocator::mem_free(stack);
    return nullptr;
}


void TCB::idleWrapper(void* a){
    while(true)
        dispatch();
}


//void TCB::yield()
//{
//    __asm__ volatile ("ecall");
//}

void TCB::dispatch()
{
    TCB *old = running;
    if(old->status == RUNNING){
        old->status = READY;
        Scheduler::put(old);
    }
    running = Scheduler::get();
    if(running == nullptr)
        running = idle;

    running->status = RUNNING;
    timeSliceCounter = 0;
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->a);
    thread_exit();
}

int TCB::thread_exit(){
    if(running->status != RUNNING)
        return -1;
    running->status = FINISHED;
    dispatch();
    return 0;
}