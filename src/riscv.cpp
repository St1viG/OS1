//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

using Body=void(*)(void*);

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
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        uint64* volatile context;
        __asm__ volatile("mv %0, sp":"=r"(context));
        uint64 opcode = context[10];
        uint64 a1 = context[11];

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
                TCB** volatile h;
                uint64* volatile stack_space;
                Body volatile body;
                void* volatile arg;
                __asm__ volatile("ld %0, 88(s0)":"=r"(h));
                __asm__ volatile("mv %0, a2":"=r"(body));
                __asm__ volatile("mv %0, a6":"=r"(stack_space));
                __asm__ volatile("mv %0, a7":"=r"(arg));
                uint64 volatile r;
                r = TCB::createThread(*h, (void (*)()) body, arg, stack_space); // <--- proveriti
                __asm__ volatile("mv a0, %0"::"r"(r));
                break;
            }
            case THREAD_EXIT: {
                uint64 volatile ret;
                ret = TCB::exit();
                __asm__ volatile ("mv a0, %0"::"r"(ret));
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
        sepc += 4;
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


