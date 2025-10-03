////
//// Created by marko on 20.4.22..
////
//
//#include "../h/tcb.hpp"
//#include "../h/workers.hpp"
//#include "../h/print.hpp"
//#include "../h/riscv.hpp"
//#include "../h/MemoryAllocator.hpp"
//#include "../h/syscall_c.hpp"
//
//int main()
//{
//    MemoryAllocator::initialise();
//    TCB *threads[5];
//
//    threads[0] = TCB::createThread(nullptr);
//    TCB::running = threads[0];
//
//    threads[1] = TCB::createThread(workerBodyA);
//    printString("ThreadA created\n");
//    threads[2] = TCB::createThread(workerBodyB);
//    printString("ThreadB created\n");
//    threads[3] = TCB::createThread(workerBodyC);
//    printString("ThreadC created\n");
//    threads[4] = TCB::createThread(workerBodyD);
//    printString("ThreadD created\n");
//
//    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//
//    while (!(threads[1]->isFinished() &&
//             threads[2]->isFinished() &&
//             threads[3]->isFinished() &&
//             threads[4]->isFinished()))
//    {
////        TCB::yield();
//    thread_dispatch();
//    }
//
//    for (auto &thread: threads)
//    {
//        delete thread;
//    }
//    printString("Finished\n");
//
//    return 0;
//}
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp" // OBAVEZNO DODATI - zbog thread_dispatch()

int main()
{
    // Inicijalizacija sistema - OVO JE NEOPHODNO
    MemoryAllocator::initialise();
    TCB::thread_initialise(); // Kreira glavnu (running) i idle nit

    // Postavljanje prekidne rutine
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);

    // Kreiranje radnih niti, kao i pre
    TCB *threads[4]; // Smanjili smo niz, jer glavnu nit ne pravimo ručno

    // Potrebno je kastovati funkcije jer novi TCB::Body prima (void*), a naši workeri ne.
    threads[0] = TCB::createThread((TCB::Body)workerBodyA, nullptr);
    printString("ThreadA created\n");
    threads[1] = TCB::createThread((TCB::Body)workerBodyB, nullptr);
    printString("ThreadB created\n");
    threads[2] = TCB::createThread((TCB::Body)workerBodyC, nullptr);
    printString("ThreadC created\n");
    threads[3] = TCB::createThread((TCB::Body)workerBodyD, nullptr);
    printString("ThreadD created\n");

    // Omogućavanje prekida da bi multitasking radio
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Petlja koja čeka da se sve niti završe, kao i pre
    while (!(threads[0]->getStatus() == TCB::Status::FINISHED &&
             threads[1]->getStatus() == TCB::Status::FINISHED &&
             threads[2]->getStatus() == TCB::Status::FINISHED &&
             threads[3]->getStatus() == TCB::Status::FINISHED))
    {
        // Umesto TCB::yield(), koristimo sistemski poziv thread_dispatch()
        thread_dispatch();
    }

    // Brisanje niti se ne preporučuje na ovaj način, ali zadržavamo radi
    // konzistentnosti sa tvojim originalnim testom.
    for (auto &thread: threads)
    {
        // U realnom sistemu, dealokacija bi se radila drugačije
        delete thread;
    }
    printString("Finished\n");

    return 0;
}