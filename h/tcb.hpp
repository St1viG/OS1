//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "../h/scheduler.hpp"


class Riscv;


// Thread Control Block
class TCB
{
public:
    enum Status {CREATED, READY, RUNNING, FINISHED, SLEEPING};

    using Body = void (*)(void*);

    static void thread_initialise();

    static TCB* createThread(Body body, void* a);

    static int thread_exit();

    static void dispatch();

    static TCB* running;

    Status getStatus() const {return status;}

    uint64 getTimeSlice() const {return timeSlice;}

private:

    TCB(Body body, void* a, uint64* stack);

    struct Context{
        uint64 ra;
        uint64 sp;
        uint64 s[12];
    };

    Body body;
    void* a;
    uint64* stack;
    Context context;
    Status status;
    uint64 timeSlice;

    friend class Riscv;
    friend class timeSlice;

    static void contextSwitch(Context *oldC, Context *newC);
    static TCB* idle;
    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;

    static void idleWrapper(void *a);

    static void threadWrapper();


};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
