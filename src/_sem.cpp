#include "../h/_sem.hpp"

//
// Created by os on 10/4/25.
//
_sem::_sem(unsigned v): val(v),closed(false){}

int _sem::sem_open(_sem **h, unsigned int v) {
    *h = new _sem(v);
    return 0;
}

int _sem::sem_wait() {
    if(closed)
        return -1;
    val--;
    if(val<0){}
    {
        TCB::running->setStatus(TCB::WAITING);
        blocked_threads.addLast(TCB::running);
        TCB::dispatch();
    }
    return 0;
}


int _sem::sem_close(){
    if(closed)
        return -1;
    else{
        closed = true;
        val = 0;
        for(int i=0;i<blocked_threads.Size();i++){
            TCB* temp = blocked_threads.removeFirst();
            if(temp->getStatus() != TCB::WAITING)
                return -1;
            Scheduler::put(temp);
        }
        return 0;
    }
}


int _sem::sem_signal(){
    val++;
    if(val<=0){
        TCB* thread = blocked_threads.removeFirst();
        if(!thread)
            return -1;
        thread->setStatus(TCB::READY);
        Scheduler::put(thread);
    }
    return 0;
}