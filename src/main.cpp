//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"



int main()
{

    MemoryAllocator::initialise();
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running = threads[0];

    void * StackA = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    threads[1] = TCB::createThread(workerBodyA, nullptr, (uint64*) StackA);
    printString("ThreadA created\n");
    void * StackB = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    threads[2] = TCB::createThread(workerBodyB, nullptr, (uint64*) StackB);
    printString("ThreadB created\n");
    void * StackC = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    threads[3] = TCB::createThread(workerBodyC, nullptr, (uint64*) StackC);
    printString("ThreadC created\n");
    void * StackD = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    threads[4] = TCB::createThread(workerBodyD, nullptr, (uint64*) StackD);
    printString("ThreadD created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }
    printString("Finished\n");

    return 0;
}
