//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
#include "../test/buffer.hpp"


extern void userMain();
_sem* waitUsr = nullptr;

void userWrapper(void* arg){
    printString("user main start\n");
    userMain();
    printString("user main end\n");
    sem_signal(waitUsr);
}
int main()
{

    MemoryAllocator::initialise();

//    TCB::init();
//    Riscv::init();
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    Riscv::ms_sie(Riscv::SIE_SEIE);
    sem_open(&waitUsr,0);
    thread_t* user= nullptr;

    TCB::createThread(user, reinterpret_cast<void (*)()>(userWrapper), nullptr,
                      (uint64*)(DEFAULT_STACK_SIZE / MEM_BLOCK_SIZE));
    TCB::dispatch();

    sem_wait(waitUsr);

//    while(Buffer::getCnt()>0) { TCB::dispatch(); }
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
//    stop_emulator();

    return 0;
}
