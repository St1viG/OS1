//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"

List<CCB> Scheduler::readyCoroutineQueue;

CCB *Scheduler::get()
{
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
}