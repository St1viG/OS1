//
// Created by os on 10/4/25.
//

#ifndef OS_PROJ_SLEEPLIST_HPP
#define OS_PROJ_SLEEPLIST_HPP

#include "tcb.hpp"
#include "MemoryAllocator.hpp"

class TCB;

class SleepList{
public:
    static void tick();
    static void insert(TCB* thread, time_t pauseLength);
    static SleepList* peek();

private:
    static SleepList *head;
    SleepList* next;
    TCB* t;
    time_t pauseLength;
};



#endif //OS_PROJ_SLEEPLIST_HPP
