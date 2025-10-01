//
// Created by os on 9/30/25.
//

#ifndef OS_PROJ_CCB_HPP
#define OS_PROJ_CCB_HPP

#include "../lib/hw.h"

class CCB{
public:


    bool isFinished() const { return finished;}

    void setFinished(bool _finished) { CCB::finished = _finished;}

    using Body = void (*)();

    static void yield();

    static CCB *createCoroutine (Body body);
private:

    struct Context{

        uint ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    bool finished;


};


#endif //OS_PROJ_CCB_HPP
