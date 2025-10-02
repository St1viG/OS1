//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();
    if (scause == ECALL_USER || scause == ECALL_SUPER)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        uint64* volatile context;
        __asm__ volatile("mv %0, sp":"=r"(context));
        uint64 opcode = context[10];
        uint64 a1 = context[11];
//        uint64 a2 = context[12];
//        uint64 a3 = context[13];
        void* ptr;
        switch(opcode){
            case MEM_ALLOC: {
                size_t size = (size_t) a1;
                ptr = MemoryAllocator::mem_alloc(size);
                context[10] = (uint64) ptr;
                break;
            }
            case MEM_FREE:{
                ptr = (void*)a1;
                int res = MemoryAllocator::mem_free(ptr);
                context[10] = res;
                break;}
            case MEM_GET_FREE_SPACE: {

                break;
            }
            case MEM_GET_LARGEST_BLOCK_SIZE: {

                break;
            }
            case THREAD_CREATE: {

                break;
            }
            case THREAD_EXIT: {

                break;
            }
            case THREAD_DISPATCH: {
                TCB::timeSliceCounter = 0;
                TCB::dispatch();
                break;
            }
            case SEM_OPEN: {

                break;
            }
            case SEM_CLOSE: {

                break;
            }
            case SEM_WAIT: {

                break;
            }
            case SEM_SIGNAL: {

                break;
            }
            case TIME_SLEEP: {

                break;
            }
            case GETC: {

                break;
            }
            case PUTC: {

                break;
            }
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == SOFTWARE)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == EXTERNAL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {

        // unexpected trap cause
    }
}


