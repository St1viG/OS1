//
// Created by os on 10/4/25.
//

#ifndef OS_PROJ__SEM_HPP
#define OS_PROJ__SEM_HPP

#include "tcb.hpp"
#include "list.hpp"

class _sem {
public:
    _sem(unsigned  init);


    int sem_open(_sem** h, unsigned int v);

    int sem_wait();

    int sem_close();

    int sem_signal();

private:
    bool closed;
    int val;

    List <TCB> blocked_threads;

};





#endif //OS_PROJ__SEM_HPP
