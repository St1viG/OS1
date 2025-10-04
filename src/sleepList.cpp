//
// Created by os on 10/4/25.
//
#include "../h/sleepList.hpp"

SleepList* SleepList::head = nullptr;


void SleepList::tick() {
    if(SleepList::head){
        head->pauseLength--;
        while(head && head->pauseLength<=0){
            head->t->setStatus(TCB::READY);
            head = head->next;
        }
    }
}

void SleepList::insert(TCB *thread, time_t pauseLength) {
    SleepList* _new = (SleepList*)MemoryAllocator::mem_alloc(sizeof(SleepList)); //izmeni
    _new->t = thread;
    if(head == nullptr){
        head = _new;
        _new->pauseLength = pauseLength;
        _new->next = nullptr;
    }else{
        if(head->pauseLength <= pauseLength){
            time_t _newTime = pauseLength - head->pauseLength;
            SleepList* curr = head->next;
            SleepList* prev = head;
            while(curr && curr->pauseLength <= _newTime){
                prev = curr;
                _newTime -= curr->pauseLength;
                curr = curr->next;
            }
            prev->next = _new;
            _new->pauseLength = _newTime;
            _new->next = curr;
        }else{
            _new->next = head;
            _new->pauseLength = pauseLength;
            head->pauseLength -= pauseLength;
            head = _new;
        }
    }
}

SleepList *SleepList::peek() {
    return head;
}
