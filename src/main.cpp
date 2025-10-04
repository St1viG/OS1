//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
#include "../test/buffer.hpp"


extern void userMain();
_sem* waitUsr = nullptr;
Buffer* buffer;

void userWrapper(void* arg){
    printString("user main start\n");
    userMain();
    printString("user main end\n");
    sem_signal(waitUsr);
}
int main()
{

    MemoryAllocator::initialise();
    buffer = new Buffer(300);

    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    sem_open(&waitUsr,0);
    thread_t* user= nullptr;

    TCB::createThread(user, reinterpret_cast<void (*)()>(userWrapper), nullptr,
                      (uint64*)(DEFAULT_STACK_SIZE / MEM_BLOCK_SIZE));
    TCB::dispatch();

    sem_wait(waitUsr);

    while(buffer->getCnt()>0) { TCB::dispatch(); }
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    return 0;
}
