//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "syscall_c.hpp"

// Thread Control Block
class TCB
{
public:

    enum Status{
        CREATED,
        READY,
        RUNNING,
        BLOCKED,
        SLEEPING,
        FINISHED,
        WAITING
    };

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)();

    static int createThread(thread_t *handle, Body body, void* arg, uint64* stack);

    static void yield();

    static TCB *running;

    static TCB* createThread1(thread_t *handle, Body body, void* arg, uint64* stack);

    static int exit();

    void setStatus(Status s);

    static void dispatch();

    Status getStatus();

    static int threadSleep(time_t time);

private:
    TCB(Body body, uint64 timeSlice) :
            body(body),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    {
        if (body != nullptr) { Scheduler::put(this); }
    }


    TCB(Body body, void* arg, uint64* stack_space):
    body(body),
    stack(stack_space == nullptr ? new uint64[STACK_SIZE] : stack_space), //proveriti
    context{(uint64)&threadWrapper,stack == nullptr ? 0 : (uint64)stack + DEFAULT_STACK_SIZE},
    timeSlice(DEFAULT_TIME_SLICE),
    finished(false),
    status(CREATED){
        this->arg = arg;
        if(body!= nullptr)
            Scheduler::put(this);
    };


    Body body;
    uint64 *stack;
    struct Context
    {
        uint64 ra;
        uint64 sp;
    };


    void* arg;
    Context context;
    uint64 timeSlice;
    bool finished;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);



    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
    Status status;


};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
