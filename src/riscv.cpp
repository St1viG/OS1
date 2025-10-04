//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/_sem.hpp"

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

        uint64 opcode;
        __asm__ volatile("mv %0, a0" : "=r"(opcode));

        void* ptr;
        switch(opcode){
            case MEM_ALLOC: {
                size_t size;
                __asm__ volatile ("mv %0, a1": "=r" (size));
                ptr = MemoryAllocator::mem_alloc(size);
                __asm__ volatile ("mv a0, %0" : : "r"(ptr));
                break;
            }
            case MEM_FREE:{
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
                int res = MemoryAllocator::mem_free(ptr);
                __asm volatile("mv a0, %0" : : "r" (res));
                break;
            }
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
                __asm__ volatile ("mv a0, %0"::"r"(ret)); // potencijalno ne vracati nista
                break;
            }
            case THREAD_DISPATCH: {
                TCB::timeSliceCounter = 0;
                TCB::dispatch();
                break;
            }
            case SEM_OPEN: {
                sem_t* handle;
                unsigned init;
                __asm__ volatile("mv %0, a1" : "=r" (handle));
                __asm__ volatile("mv %0, a2" : "=r" (init));
                _sem* new_sem = new _sem(init);
                if(new_sem){
                    *handle = new_sem;
                    __asm__ volatile("li a0, 0");
                }else{
                    __asm__ volatile("li a0, -1");
                }
                break;
            }
            case SEM_CLOSE: {
                sem_t ID;
                __asm__ volatile("mv %0, a1":"=r"(ID));
                int res = ID->sem_close();
                __asm__ volatile ("mv a0, %0": : "r"(res));
                break;
            }
            case SEM_WAIT: {
                sem_t handle;
                __asm__ volatile ("mv %0, a1":"=r"(handle));
                int res = handle->sem_wait();
                __asm__ volatile ("mv a0, %0": : "r" (res));
                break;
            }
            case SEM_SIGNAL: {
                sem_t volatile handle;
                __asm__ volatile ("mv %0, a1": "=r"(handle));
                int ret = handle->sem_signal();
                __asm__ volatile ("mv a0, %0": :"r"(ret));
                break;
            }
            case TIME_SLEEP: {
                uint64 volatile time;
                __asm__ volatile ("mv %0, a1":"=r"(time));
                int ret = TCB::threadSleep(time);
                __asm__ volatile ("mv a0, %0" :: "r"(ret));
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
        int irq = plic_claim();
        if(irq == CONSOLE_IRQ)
            console_handler();
        plic_complete(irq);
    }

}


