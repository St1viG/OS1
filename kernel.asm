
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	60013103          	ld	sp,1536(sp) # 80004600 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	27d010ef          	jal	ra,80001a98 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	578000ef          	jal	ra,800016fc <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    sret
    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <main>:
#include "../lib/console.h"


void main(){
    80001224:	ff010113          	addi	sp,sp,-16
    80001228:	00113423          	sd	ra,8(sp)
    8000122c:	00813023          	sd	s0,0(sp)
    80001230:	01010413          	addi	s0,sp,16
    __putc('O');
    80001234:	04f00513          	li	a0,79
    80001238:	00003097          	auipc	ra,0x3
    8000123c:	b48080e7          	jalr	-1208(ra) # 80003d80 <__putc>
    __putc('S');
    80001240:	05300513          	li	a0,83
    80001244:	00003097          	auipc	ra,0x3
    80001248:	b3c080e7          	jalr	-1220(ra) # 80003d80 <__putc>
    __putc('1');
    8000124c:	03100513          	li	a0,49
    80001250:	00003097          	auipc	ra,0x3
    80001254:	b30080e7          	jalr	-1232(ra) # 80003d80 <__putc>
    __putc('\n');
    80001258:	00a00513          	li	a0,10
    8000125c:	00003097          	auipc	ra,0x3
    80001260:	b24080e7          	jalr	-1244(ra) # 80003d80 <__putc>
    __putc('\n');
    80001264:	00a00513          	li	a0,10
    80001268:	00003097          	auipc	ra,0x3
    8000126c:	b18080e7          	jalr	-1256(ra) # 80003d80 <__putc>

    while(1){
        char character = __getc();
    80001270:	00003097          	auipc	ra,0x3
    80001274:	b4c080e7          	jalr	-1204(ra) # 80003dbc <__getc>
        __putc(character + 30);
    80001278:	01e5051b          	addiw	a0,a0,30
    8000127c:	0ff57513          	andi	a0,a0,255
    80001280:	00003097          	auipc	ra,0x3
    80001284:	b00080e7          	jalr	-1280(ra) # 80003d80 <__putc>
    while(1){
    80001288:	fe9ff06f          	j	80001270 <main+0x4c>

000000008000128c <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    8000128c:	fe010113          	addi	sp,sp,-32
    80001290:	00113c23          	sd	ra,24(sp)
    80001294:	00813823          	sd	s0,16(sp)
    80001298:	00913423          	sd	s1,8(sp)
    8000129c:	01213023          	sd	s2,0(sp)
    800012a0:	02010413          	addi	s0,sp,32
    800012a4:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800012a8:	03000513          	li	a0,48
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	390080e7          	jalr	912(ra) # 8000163c <_Znwm>
    800012b4:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800012b8:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800012bc:	00090a63          	beqz	s2,800012d0 <_ZN3TCB12createThreadEPFvvE+0x44>
    800012c0:	00002537          	lui	a0,0x2
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	3a0080e7          	jalr	928(ra) # 80001664 <_Znam>
    800012cc:	0080006f          	j	800012d4 <_ZN3TCB12createThreadEPFvvE+0x48>
    800012d0:	00000513          	li	a0,0
            finished(false)
    800012d4:	00a4b423          	sd	a0,8(s1)
    800012d8:	00000797          	auipc	a5,0x0
    800012dc:	09878793          	addi	a5,a5,152 # 80001370 <_ZN3TCB13threadWrapperEv>
    800012e0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800012e4:	02050863          	beqz	a0,80001314 <_ZN3TCB12createThreadEPFvvE+0x88>
    800012e8:	000027b7          	lui	a5,0x2
    800012ec:	00f507b3          	add	a5,a0,a5
            finished(false)
    800012f0:	00f4bc23          	sd	a5,24(s1)
    800012f4:	00200793          	li	a5,2
    800012f8:	02f4b023          	sd	a5,32(s1)
    800012fc:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001300:	02090c63          	beqz	s2,80001338 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001304:	00048513          	mv	a0,s1
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	5c4080e7          	jalr	1476(ra) # 800018cc <_ZN9Scheduler3putEP3TCB>
    80001310:	0280006f          	j	80001338 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001314:	00000793          	li	a5,0
    80001318:	fd9ff06f          	j	800012f0 <_ZN3TCB12createThreadEPFvvE+0x64>
    8000131c:	00050913          	mv	s2,a0
    80001320:	00048513          	mv	a0,s1
    80001324:	00000097          	auipc	ra,0x0
    80001328:	368080e7          	jalr	872(ra) # 8000168c <_ZdlPv>
    8000132c:	00090513          	mv	a0,s2
    80001330:	00004097          	auipc	ra,0x4
    80001334:	428080e7          	jalr	1064(ra) # 80005758 <_Unwind_Resume>
}
    80001338:	00048513          	mv	a0,s1
    8000133c:	01813083          	ld	ra,24(sp)
    80001340:	01013403          	ld	s0,16(sp)
    80001344:	00813483          	ld	s1,8(sp)
    80001348:	00013903          	ld	s2,0(sp)
    8000134c:	02010113          	addi	sp,sp,32
    80001350:	00008067          	ret

0000000080001354 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813423          	sd	s0,8(sp)
    8000135c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001360:	00000073          	ecall
}
    80001364:	00813403          	ld	s0,8(sp)
    80001368:	01010113          	addi	sp,sp,16
    8000136c:	00008067          	ret

0000000080001370 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001370:	fe010113          	addi	sp,sp,-32
    80001374:	00113c23          	sd	ra,24(sp)
    80001378:	00813823          	sd	s0,16(sp)
    8000137c:	00913423          	sd	s1,8(sp)
    80001380:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001384:	00000097          	auipc	ra,0x0
    80001388:	358080e7          	jalr	856(ra) # 800016dc <_ZN5Riscv10popSppSpieEv>
    running->body();
    8000138c:	00003497          	auipc	s1,0x3
    80001390:	2d448493          	addi	s1,s1,724 # 80004660 <_ZN3TCB7runningE>
    80001394:	0004b783          	ld	a5,0(s1)
    80001398:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    8000139c:	000780e7          	jalr	a5
    running->setFinished(true);
    800013a0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800013a4:	00100713          	li	a4,1
    800013a8:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	fa8080e7          	jalr	-88(ra) # 80001354 <_ZN3TCB5yieldEv>
}
    800013b4:	01813083          	ld	ra,24(sp)
    800013b8:	01013403          	ld	s0,16(sp)
    800013bc:	00813483          	ld	s1,8(sp)
    800013c0:	02010113          	addi	sp,sp,32
    800013c4:	00008067          	ret

00000000800013c8 <_ZN3TCB8dispatchEv>:
{
    800013c8:	fe010113          	addi	sp,sp,-32
    800013cc:	00113c23          	sd	ra,24(sp)
    800013d0:	00813823          	sd	s0,16(sp)
    800013d4:	00913423          	sd	s1,8(sp)
    800013d8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800013dc:	00003497          	auipc	s1,0x3
    800013e0:	2844b483          	ld	s1,644(s1) # 80004660 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800013e4:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800013e8:	02078c63          	beqz	a5,80001420 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	478080e7          	jalr	1144(ra) # 80001864 <_ZN9Scheduler3getEv>
    800013f4:	00003797          	auipc	a5,0x3
    800013f8:	26a7b623          	sd	a0,620(a5) # 80004660 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800013fc:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001400:	01048513          	addi	a0,s1,16
    80001404:	00000097          	auipc	ra,0x0
    80001408:	e0c080e7          	jalr	-500(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001420:	00048513          	mv	a0,s1
    80001424:	00000097          	auipc	ra,0x0
    80001428:	4a8080e7          	jalr	1192(ra) # 800018cc <_ZN9Scheduler3putEP3TCB>
    8000142c:	fc1ff06f          	j	800013ec <_ZN3TCB8dispatchEv+0x24>

0000000080001430 <_ZL12blocksNeededm>:
#include "../lib/hw.h"


FreeMemBlock *MemoryAllocator::head = nullptr;

static size_t blocksNeeded(size_t b){
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    return (b + sizeof(FreeMemBlock) + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE;
    8000143c:	04f50513          	addi	a0,a0,79
}
    80001440:	00655513          	srli	a0,a0,0x6
    80001444:	00813403          	ld	s0,8(sp)
    80001448:	01010113          	addi	sp,sp,16
    8000144c:	00008067          	ret

0000000080001450 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size) {
    80001450:	fd010113          	addi	sp,sp,-48
    80001454:	02113423          	sd	ra,40(sp)
    80001458:	02813023          	sd	s0,32(sp)
    8000145c:	00913c23          	sd	s1,24(sp)
    80001460:	01213823          	sd	s2,16(sp)
    80001464:	01313423          	sd	s3,8(sp)
    80001468:	01413023          	sd	s4,0(sp)
    8000146c:	03010413          	addi	s0,sp,48
    if(!size)
    80001470:	0e050663          	beqz	a0,8000155c <_ZN15MemoryAllocator9mem_allocEm+0x10c>
        return nullptr;

    size_t needed = blocksNeeded(size);
    80001474:	00000097          	auipc	ra,0x0
    80001478:	fbc080e7          	jalr	-68(ra) # 80001430 <_ZL12blocksNeededm>
    8000147c:	00050993          	mv	s3,a0

    FreeMemBlock *curr = head, *prev = nullptr;
    80001480:	00003497          	auipc	s1,0x3
    80001484:	1f04b483          	ld	s1,496(s1) # 80004670 <_ZN15MemoryAllocator4headE>

    if(head == nullptr){
    80001488:	02048063          	beqz	s1,800014a8 <_ZN15MemoryAllocator9mem_allocEm+0x58>
void* MemoryAllocator::mem_alloc(size_t size) {
    8000148c:	00000a13          	li	s4,0
            head = (FreeMemBlock*)HEAP_START_ADDR;
            head->next = nullptr;
            head->size = NOBlocks;
        }
    }
    while(curr){
    80001490:	08048c63          	beqz	s1,80001528 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        if(curr->size >= needed){
    80001494:	0084b783          	ld	a5,8(s1)
    80001498:	0537f863          	bgeu	a5,s3,800014e8 <_ZN15MemoryAllocator9mem_allocEm+0x98>
            else
                head = curr->next;

            return (char*)curr + sizeof(FreeMemBlock);
        }
        prev = curr;
    8000149c:	00048a13          	mv	s4,s1
        curr = curr->next;
    800014a0:	0004b483          	ld	s1,0(s1)
    while(curr){
    800014a4:	fedff06f          	j	80001490 <_ZN15MemoryAllocator9mem_allocEm+0x40>
        size_t NOBlocks = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    800014a8:	00003797          	auipc	a5,0x3
    800014ac:	1487b783          	ld	a5,328(a5) # 800045f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800014b0:	0007b703          	ld	a4,0(a5)
    800014b4:	00003797          	auipc	a5,0x3
    800014b8:	15c7b783          	ld	a5,348(a5) # 80004610 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014bc:	0007b783          	ld	a5,0(a5)
    800014c0:	40e787b3          	sub	a5,a5,a4
    800014c4:	0067d793          	srli	a5,a5,0x6
        if(needed > NOBlocks)
    800014c8:	06a7e063          	bltu	a5,a0,80001528 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            head = (FreeMemBlock*)HEAP_START_ADDR;
    800014cc:	00003697          	auipc	a3,0x3
    800014d0:	1a468693          	addi	a3,a3,420 # 80004670 <_ZN15MemoryAllocator4headE>
    800014d4:	00e6b023          	sd	a4,0(a3)
            head->next = nullptr;
    800014d8:	00073023          	sd	zero,0(a4)
            head->size = NOBlocks;
    800014dc:	0006b703          	ld	a4,0(a3)
    800014e0:	00f73423          	sd	a5,8(a4)
    800014e4:	fa9ff06f          	j	8000148c <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            size_t remaining = curr->size - needed;
    800014e8:	41378933          	sub	s2,a5,s3
            if(blocksNeeded(1) <= remaining){
    800014ec:	00100513          	li	a0,1
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	f40080e7          	jalr	-192(ra) # 80001430 <_ZL12blocksNeededm>
    800014f8:	02a96063          	bltu	s2,a0,80001518 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
                FreeMemBlock *newBlock = (FreeMemBlock*)((char*)curr + needed * MEM_BLOCK_SIZE);
    800014fc:	00699793          	slli	a5,s3,0x6
    80001500:	00f487b3          	add	a5,s1,a5
                newBlock->size = remaining;
    80001504:	0127b423          	sd	s2,8(a5)
                newBlock->next = curr->next;
    80001508:	0004b703          	ld	a4,0(s1)
    8000150c:	00e7b023          	sd	a4,0(a5)
                curr->size = needed;
    80001510:	0134b423          	sd	s3,8(s1)
                curr->next = newBlock;
    80001514:	00f4b023          	sd	a5,0(s1)
            if(prev)
    80001518:	020a0a63          	beqz	s4,8000154c <_ZN15MemoryAllocator9mem_allocEm+0xfc>
                prev->next = curr->next;
    8000151c:	0004b783          	ld	a5,0(s1)
    80001520:	00fa3023          	sd	a5,0(s4)
            return (char*)curr + sizeof(FreeMemBlock);
    80001524:	01048493          	addi	s1,s1,16
    }
    return nullptr;
}
    80001528:	00048513          	mv	a0,s1
    8000152c:	02813083          	ld	ra,40(sp)
    80001530:	02013403          	ld	s0,32(sp)
    80001534:	01813483          	ld	s1,24(sp)
    80001538:	01013903          	ld	s2,16(sp)
    8000153c:	00813983          	ld	s3,8(sp)
    80001540:	00013a03          	ld	s4,0(sp)
    80001544:	03010113          	addi	sp,sp,48
    80001548:	00008067          	ret
                head = curr->next;
    8000154c:	0004b783          	ld	a5,0(s1)
    80001550:	00003717          	auipc	a4,0x3
    80001554:	12f73023          	sd	a5,288(a4) # 80004670 <_ZN15MemoryAllocator4headE>
    80001558:	fcdff06f          	j	80001524 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
        return nullptr;
    8000155c:	00000493          	li	s1,0
    80001560:	fc9ff06f          	j	80001528 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080001564 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *ptr) {
    80001564:	ff010113          	addi	sp,sp,-16
    80001568:	00813423          	sd	s0,8(sp)
    8000156c:	01010413          	addi	s0,sp,16
    if(ptr == nullptr)
    80001570:	0a050a63          	beqz	a0,80001624 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
        return -1;

    FreeMemBlock *block = (FreeMemBlock*) ((char*) ptr -sizeof(FreeMemBlock));
    80001574:	ff050693          	addi	a3,a0,-16
    FreeMemBlock* curr = head, *prev = nullptr;
    80001578:	00003797          	auipc	a5,0x3
    8000157c:	0f87b783          	ld	a5,248(a5) # 80004670 <_ZN15MemoryAllocator4headE>
    80001580:	00000713          	li	a4,0

    while(curr && curr < block){
    80001584:	00078a63          	beqz	a5,80001598 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
    80001588:	00d7f863          	bgeu	a5,a3,80001598 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        prev = curr;
    8000158c:	00078713          	mv	a4,a5
        curr = curr->next;
    80001590:	0007b783          	ld	a5,0(a5)
    while(curr && curr < block){
    80001594:	ff1ff06f          	j	80001584 <_ZN15MemoryAllocator8mem_freeEPv+0x20>
    }
    if(prev == nullptr)
    80001598:	04070663          	beqz	a4,800015e4 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        head = block;
    else
        prev->next = block;
    8000159c:	00d73023          	sd	a3,0(a4)

    block->next = curr;
    800015a0:	fef53823          	sd	a5,-16(a0)
    if(block->next && (char*)block + block->size * MEM_BLOCK_SIZE == (char*) block->next){
    800015a4:	00078a63          	beqz	a5,800015b8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    800015a8:	ff853603          	ld	a2,-8(a0)
    800015ac:	00661593          	slli	a1,a2,0x6
    800015b0:	00b686b3          	add	a3,a3,a1
    800015b4:	02f68e63          	beq	a3,a5,800015f0 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
        block->size += block->next->size;
        block->next = block->next->next;
    }

    if(prev){
    800015b8:	06070a63          	beqz	a4,8000162c <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
        if(prev->next && (char*)prev + prev->size * MEM_BLOCK_SIZE == (char*)prev->next){
    800015bc:	00073783          	ld	a5,0(a4)
    800015c0:	06078a63          	beqz	a5,80001634 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    800015c4:	00873603          	ld	a2,8(a4)
    800015c8:	00661693          	slli	a3,a2,0x6
    800015cc:	00d706b3          	add	a3,a4,a3
    800015d0:	02d78c63          	beq	a5,a3,80001608 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
            prev->size += prev->next->size;
            prev->next = prev->next->next;
        }
    }

    return 0;
    800015d4:	00000513          	li	a0,0

}
    800015d8:	00813403          	ld	s0,8(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret
        head = block;
    800015e4:	00003617          	auipc	a2,0x3
    800015e8:	08d63623          	sd	a3,140(a2) # 80004670 <_ZN15MemoryAllocator4headE>
    800015ec:	fb5ff06f          	j	800015a0 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
        block->size += block->next->size;
    800015f0:	0087b683          	ld	a3,8(a5)
    800015f4:	00d60633          	add	a2,a2,a3
    800015f8:	fec53c23          	sd	a2,-8(a0)
        block->next = block->next->next;
    800015fc:	0007b783          	ld	a5,0(a5)
    80001600:	fef53823          	sd	a5,-16(a0)
    80001604:	fb5ff06f          	j	800015b8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
            prev->size += prev->next->size;
    80001608:	0087b683          	ld	a3,8(a5)
    8000160c:	00d60633          	add	a2,a2,a3
    80001610:	00c73423          	sd	a2,8(a4)
            prev->next = prev->next->next;
    80001614:	0007b783          	ld	a5,0(a5)
    80001618:	00f73023          	sd	a5,0(a4)
    return 0;
    8000161c:	00000513          	li	a0,0
    80001620:	fb9ff06f          	j	800015d8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
        return -1;
    80001624:	fff00513          	li	a0,-1
    80001628:	fb1ff06f          	j	800015d8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    return 0;
    8000162c:	00000513          	li	a0,0
    80001630:	fa9ff06f          	j	800015d8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    80001634:	00000513          	li	a0,0
    80001638:	fa1ff06f          	j	800015d8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>

000000008000163c <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    8000163c:	ff010113          	addi	sp,sp,-16
    80001640:	00113423          	sd	ra,8(sp)
    80001644:	00813023          	sd	s0,0(sp)
    80001648:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	5dc080e7          	jalr	1500(ra) # 80003c28 <__mem_alloc>
}
    80001654:	00813083          	ld	ra,8(sp)
    80001658:	00013403          	ld	s0,0(sp)
    8000165c:	01010113          	addi	sp,sp,16
    80001660:	00008067          	ret

0000000080001664 <_Znam>:

void *operator new[](size_t n)
{
    80001664:	ff010113          	addi	sp,sp,-16
    80001668:	00113423          	sd	ra,8(sp)
    8000166c:	00813023          	sd	s0,0(sp)
    80001670:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001674:	00002097          	auipc	ra,0x2
    80001678:	5b4080e7          	jalr	1460(ra) # 80003c28 <__mem_alloc>
}
    8000167c:	00813083          	ld	ra,8(sp)
    80001680:	00013403          	ld	s0,0(sp)
    80001684:	01010113          	addi	sp,sp,16
    80001688:	00008067          	ret

000000008000168c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00113423          	sd	ra,8(sp)
    80001694:	00813023          	sd	s0,0(sp)
    80001698:	01010413          	addi	s0,sp,16
    __mem_free(p);
    8000169c:	00002097          	auipc	ra,0x2
    800016a0:	4c0080e7          	jalr	1216(ra) # 80003b5c <__mem_free>
}
    800016a4:	00813083          	ld	ra,8(sp)
    800016a8:	00013403          	ld	s0,0(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00113423          	sd	ra,8(sp)
    800016bc:	00813023          	sd	s0,0(sp)
    800016c0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800016c4:	00002097          	auipc	ra,0x2
    800016c8:	498080e7          	jalr	1176(ra) # 80003b5c <__mem_free>
    800016cc:	00813083          	ld	ra,8(sp)
    800016d0:	00013403          	ld	s0,0(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800016dc:	ff010113          	addi	sp,sp,-16
    800016e0:	00813423          	sd	s0,8(sp)
    800016e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800016e8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800016ec:	10200073          	sret
}
    800016f0:	00813403          	ld	s0,8(sp)
    800016f4:	01010113          	addi	sp,sp,16
    800016f8:	00008067          	ret

00000000800016fc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800016fc:	fa010113          	addi	sp,sp,-96
    80001700:	04113c23          	sd	ra,88(sp)
    80001704:	04813823          	sd	s0,80(sp)
    80001708:	06010413          	addi	s0,sp,96
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000170c:	142027f3          	csrr	a5,scause
    80001710:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001714:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001718:	ff870693          	addi	a3,a4,-8
    8000171c:	00100793          	li	a5,1
    80001720:	02d7fa63          	bgeu	a5,a3,80001754 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001724:	fff00793          	li	a5,-1
    80001728:	03f79793          	slli	a5,a5,0x3f
    8000172c:	00178793          	addi	a5,a5,1
    80001730:	06f70863          	beq	a4,a5,800017a0 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001734:	fff00793          	li	a5,-1
    80001738:	03f79793          	slli	a5,a5,0x3f
    8000173c:	00978793          	addi	a5,a5,9
    80001740:	0cf70c63          	beq	a4,a5,80001818 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80001744:	05813083          	ld	ra,88(sp)
    80001748:	05013403          	ld	s0,80(sp)
    8000174c:	06010113          	addi	sp,sp,96
    80001750:	00008067          	ret
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001754:	141027f3          	csrr	a5,sepc
    80001758:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000175c:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001760:	00478793          	addi	a5,a5,4
    80001764:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001768:	100027f3          	csrr	a5,sstatus
    8000176c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001770:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001774:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80001778:	00003797          	auipc	a5,0x3
    8000177c:	e807b783          	ld	a5,-384(a5) # 800045f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001780:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80001784:	00000097          	auipc	ra,0x0
    80001788:	c44080e7          	jalr	-956(ra) # 800013c8 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    8000178c:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001790:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001794:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001798:	14179073          	csrw	sepc,a5
}
    8000179c:	fa9ff06f          	j	80001744 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800017a0:	00200793          	li	a5,2
    800017a4:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800017a8:	00003717          	auipc	a4,0x3
    800017ac:	e5073703          	ld	a4,-432(a4) # 800045f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017b0:	00073783          	ld	a5,0(a4)
    800017b4:	00178793          	addi	a5,a5,1
    800017b8:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800017bc:	00003717          	auipc	a4,0x3
    800017c0:	e4c73703          	ld	a4,-436(a4) # 80004608 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017c4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800017c8:	02073703          	ld	a4,32(a4)
    800017cc:	f6e7ece3          	bltu	a5,a4,80001744 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800017d0:	141027f3          	csrr	a5,sepc
    800017d4:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800017d8:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    800017dc:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800017e0:	100027f3          	csrr	a5,sstatus
    800017e4:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800017e8:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    800017ec:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    800017f0:	00003797          	auipc	a5,0x3
    800017f4:	e087b783          	ld	a5,-504(a5) # 800045f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017f8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	bcc080e7          	jalr	-1076(ra) # 800013c8 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001804:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001808:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000180c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001810:	14179073          	csrw	sepc,a5
}
    80001814:	f31ff06f          	j	80001744 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	5dc080e7          	jalr	1500(ra) # 80003df4 <console_handler>
    80001820:	f25ff06f          	j	80001744 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080001824 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001824:	ff010113          	addi	sp,sp,-16
    80001828:	00813423          	sd	s0,8(sp)
    8000182c:	01010413          	addi	s0,sp,16
    80001830:	00100793          	li	a5,1
    80001834:	00f50863          	beq	a0,a5,80001844 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001838:	00813403          	ld	s0,8(sp)
    8000183c:	01010113          	addi	sp,sp,16
    80001840:	00008067          	ret
    80001844:	000107b7          	lui	a5,0x10
    80001848:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000184c:	fef596e3          	bne	a1,a5,80001838 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001850:	00003797          	auipc	a5,0x3
    80001854:	e2878793          	addi	a5,a5,-472 # 80004678 <_ZN9Scheduler16readyThreadQueueE>
    80001858:	0007b023          	sd	zero,0(a5)
    8000185c:	0007b423          	sd	zero,8(a5)
    80001860:	fd9ff06f          	j	80001838 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001864 <_ZN9Scheduler3getEv>:
{
    80001864:	fe010113          	addi	sp,sp,-32
    80001868:	00113c23          	sd	ra,24(sp)
    8000186c:	00813823          	sd	s0,16(sp)
    80001870:	00913423          	sd	s1,8(sp)
    80001874:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001878:	00003517          	auipc	a0,0x3
    8000187c:	e0053503          	ld	a0,-512(a0) # 80004678 <_ZN9Scheduler16readyThreadQueueE>
    80001880:	04050263          	beqz	a0,800018c4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001884:	00853783          	ld	a5,8(a0)
    80001888:	00003717          	auipc	a4,0x3
    8000188c:	def73823          	sd	a5,-528(a4) # 80004678 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001890:	02078463          	beqz	a5,800018b8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001894:	00053483          	ld	s1,0(a0)
        delete elem;
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	df4080e7          	jalr	-524(ra) # 8000168c <_ZdlPv>
}
    800018a0:	00048513          	mv	a0,s1
    800018a4:	01813083          	ld	ra,24(sp)
    800018a8:	01013403          	ld	s0,16(sp)
    800018ac:	00813483          	ld	s1,8(sp)
    800018b0:	02010113          	addi	sp,sp,32
    800018b4:	00008067          	ret
        if (!head) { tail = 0; }
    800018b8:	00003797          	auipc	a5,0x3
    800018bc:	dc07b423          	sd	zero,-568(a5) # 80004680 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800018c0:	fd5ff06f          	j	80001894 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800018c4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800018c8:	fd9ff06f          	j	800018a0 <_ZN9Scheduler3getEv+0x3c>

00000000800018cc <_ZN9Scheduler3putEP3TCB>:
{
    800018cc:	fe010113          	addi	sp,sp,-32
    800018d0:	00113c23          	sd	ra,24(sp)
    800018d4:	00813823          	sd	s0,16(sp)
    800018d8:	00913423          	sd	s1,8(sp)
    800018dc:	02010413          	addi	s0,sp,32
    800018e0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800018e4:	01000513          	li	a0,16
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	d54080e7          	jalr	-684(ra) # 8000163c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800018f0:	00953023          	sd	s1,0(a0)
    800018f4:	00053423          	sd	zero,8(a0)
        if (tail)
    800018f8:	00003797          	auipc	a5,0x3
    800018fc:	d887b783          	ld	a5,-632(a5) # 80004680 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001900:	02078263          	beqz	a5,80001924 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001904:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001908:	00003797          	auipc	a5,0x3
    8000190c:	d6a7bc23          	sd	a0,-648(a5) # 80004680 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001910:	01813083          	ld	ra,24(sp)
    80001914:	01013403          	ld	s0,16(sp)
    80001918:	00813483          	ld	s1,8(sp)
    8000191c:	02010113          	addi	sp,sp,32
    80001920:	00008067          	ret
            head = tail = elem;
    80001924:	00003797          	auipc	a5,0x3
    80001928:	d5478793          	addi	a5,a5,-684 # 80004678 <_ZN9Scheduler16readyThreadQueueE>
    8000192c:	00a7b423          	sd	a0,8(a5)
    80001930:	00a7b023          	sd	a0,0(a5)
    80001934:	fddff06f          	j	80001910 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001938 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00113423          	sd	ra,8(sp)
    80001940:	00813023          	sd	s0,0(sp)
    80001944:	01010413          	addi	s0,sp,16
    80001948:	000105b7          	lui	a1,0x10
    8000194c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001950:	00100513          	li	a0,1
    80001954:	00000097          	auipc	ra,0x0
    80001958:	ed0080e7          	jalr	-304(ra) # 80001824 <_Z41__static_initialization_and_destruction_0ii>
    8000195c:	00813083          	ld	ra,8(sp)
    80001960:	00013403          	ld	s0,0(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    8000196c:	fd010113          	addi	sp,sp,-48
    80001970:	02113423          	sd	ra,40(sp)
    80001974:	02813023          	sd	s0,32(sp)
    80001978:	00913c23          	sd	s1,24(sp)
    8000197c:	01213823          	sd	s2,16(sp)
    80001980:	03010413          	addi	s0,sp,48
    80001984:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001988:	100027f3          	csrr	a5,sstatus
    8000198c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001990:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001994:	00200793          	li	a5,2
    80001998:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    8000199c:	0004c503          	lbu	a0,0(s1)
    800019a0:	00050a63          	beqz	a0,800019b4 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	3dc080e7          	jalr	988(ra) # 80003d80 <__putc>
        string++;
    800019ac:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800019b0:	fedff06f          	j	8000199c <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800019b4:	0009091b          	sext.w	s2,s2
    800019b8:	00297913          	andi	s2,s2,2
    800019bc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800019c0:	10092073          	csrs	sstatus,s2
}
    800019c4:	02813083          	ld	ra,40(sp)
    800019c8:	02013403          	ld	s0,32(sp)
    800019cc:	01813483          	ld	s1,24(sp)
    800019d0:	01013903          	ld	s2,16(sp)
    800019d4:	03010113          	addi	sp,sp,48
    800019d8:	00008067          	ret

00000000800019dc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800019dc:	fc010113          	addi	sp,sp,-64
    800019e0:	02113c23          	sd	ra,56(sp)
    800019e4:	02813823          	sd	s0,48(sp)
    800019e8:	02913423          	sd	s1,40(sp)
    800019ec:	03213023          	sd	s2,32(sp)
    800019f0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800019f4:	100027f3          	csrr	a5,sstatus
    800019f8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800019fc:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001a00:	00200793          	li	a5,2
    80001a04:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001a08:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001a0c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001a10:	00a00613          	li	a2,10
    80001a14:	02c5773b          	remuw	a4,a0,a2
    80001a18:	02071693          	slli	a3,a4,0x20
    80001a1c:	0206d693          	srli	a3,a3,0x20
    80001a20:	00002717          	auipc	a4,0x2
    80001a24:	60070713          	addi	a4,a4,1536 # 80004020 <_ZZ12printIntegermE6digits>
    80001a28:	00d70733          	add	a4,a4,a3
    80001a2c:	00074703          	lbu	a4,0(a4)
    80001a30:	fe040693          	addi	a3,s0,-32
    80001a34:	009687b3          	add	a5,a3,s1
    80001a38:	0014849b          	addiw	s1,s1,1
    80001a3c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001a40:	0005071b          	sext.w	a4,a0
    80001a44:	02c5553b          	divuw	a0,a0,a2
    80001a48:	00900793          	li	a5,9
    80001a4c:	fce7e2e3          	bltu	a5,a4,80001a10 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001a50:	fff4849b          	addiw	s1,s1,-1
    80001a54:	0004ce63          	bltz	s1,80001a70 <_Z12printIntegerm+0x94>
    80001a58:	fe040793          	addi	a5,s0,-32
    80001a5c:	009787b3          	add	a5,a5,s1
    80001a60:	ff07c503          	lbu	a0,-16(a5)
    80001a64:	00002097          	auipc	ra,0x2
    80001a68:	31c080e7          	jalr	796(ra) # 80003d80 <__putc>
    80001a6c:	fe5ff06f          	j	80001a50 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001a70:	0009091b          	sext.w	s2,s2
    80001a74:	00297913          	andi	s2,s2,2
    80001a78:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001a7c:	10092073          	csrs	sstatus,s2
    80001a80:	03813083          	ld	ra,56(sp)
    80001a84:	03013403          	ld	s0,48(sp)
    80001a88:	02813483          	ld	s1,40(sp)
    80001a8c:	02013903          	ld	s2,32(sp)
    80001a90:	04010113          	addi	sp,sp,64
    80001a94:	00008067          	ret

0000000080001a98 <start>:
    80001a98:	ff010113          	addi	sp,sp,-16
    80001a9c:	00813423          	sd	s0,8(sp)
    80001aa0:	01010413          	addi	s0,sp,16
    80001aa4:	300027f3          	csrr	a5,mstatus
    80001aa8:	ffffe737          	lui	a4,0xffffe
    80001aac:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8eff>
    80001ab0:	00e7f7b3          	and	a5,a5,a4
    80001ab4:	00001737          	lui	a4,0x1
    80001ab8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001abc:	00e7e7b3          	or	a5,a5,a4
    80001ac0:	30079073          	csrw	mstatus,a5
    80001ac4:	00000797          	auipc	a5,0x0
    80001ac8:	16078793          	addi	a5,a5,352 # 80001c24 <system_main>
    80001acc:	34179073          	csrw	mepc,a5
    80001ad0:	00000793          	li	a5,0
    80001ad4:	18079073          	csrw	satp,a5
    80001ad8:	000107b7          	lui	a5,0x10
    80001adc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ae0:	30279073          	csrw	medeleg,a5
    80001ae4:	30379073          	csrw	mideleg,a5
    80001ae8:	104027f3          	csrr	a5,sie
    80001aec:	2227e793          	ori	a5,a5,546
    80001af0:	10479073          	csrw	sie,a5
    80001af4:	fff00793          	li	a5,-1
    80001af8:	00a7d793          	srli	a5,a5,0xa
    80001afc:	3b079073          	csrw	pmpaddr0,a5
    80001b00:	00f00793          	li	a5,15
    80001b04:	3a079073          	csrw	pmpcfg0,a5
    80001b08:	f14027f3          	csrr	a5,mhartid
    80001b0c:	0200c737          	lui	a4,0x200c
    80001b10:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001b14:	0007869b          	sext.w	a3,a5
    80001b18:	00269713          	slli	a4,a3,0x2
    80001b1c:	000f4637          	lui	a2,0xf4
    80001b20:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001b24:	00d70733          	add	a4,a4,a3
    80001b28:	0037979b          	slliw	a5,a5,0x3
    80001b2c:	020046b7          	lui	a3,0x2004
    80001b30:	00d787b3          	add	a5,a5,a3
    80001b34:	00c585b3          	add	a1,a1,a2
    80001b38:	00371693          	slli	a3,a4,0x3
    80001b3c:	00003717          	auipc	a4,0x3
    80001b40:	b5470713          	addi	a4,a4,-1196 # 80004690 <timer_scratch>
    80001b44:	00b7b023          	sd	a1,0(a5)
    80001b48:	00d70733          	add	a4,a4,a3
    80001b4c:	00f73c23          	sd	a5,24(a4)
    80001b50:	02c73023          	sd	a2,32(a4)
    80001b54:	34071073          	csrw	mscratch,a4
    80001b58:	00000797          	auipc	a5,0x0
    80001b5c:	6e878793          	addi	a5,a5,1768 # 80002240 <timervec>
    80001b60:	30579073          	csrw	mtvec,a5
    80001b64:	300027f3          	csrr	a5,mstatus
    80001b68:	0087e793          	ori	a5,a5,8
    80001b6c:	30079073          	csrw	mstatus,a5
    80001b70:	304027f3          	csrr	a5,mie
    80001b74:	0807e793          	ori	a5,a5,128
    80001b78:	30479073          	csrw	mie,a5
    80001b7c:	f14027f3          	csrr	a5,mhartid
    80001b80:	0007879b          	sext.w	a5,a5
    80001b84:	00078213          	mv	tp,a5
    80001b88:	30200073          	mret
    80001b8c:	00813403          	ld	s0,8(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <timerinit>:
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00813423          	sd	s0,8(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    80001ba4:	f14027f3          	csrr	a5,mhartid
    80001ba8:	0200c737          	lui	a4,0x200c
    80001bac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001bb0:	0007869b          	sext.w	a3,a5
    80001bb4:	00269713          	slli	a4,a3,0x2
    80001bb8:	000f4637          	lui	a2,0xf4
    80001bbc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001bc0:	00d70733          	add	a4,a4,a3
    80001bc4:	0037979b          	slliw	a5,a5,0x3
    80001bc8:	020046b7          	lui	a3,0x2004
    80001bcc:	00d787b3          	add	a5,a5,a3
    80001bd0:	00c585b3          	add	a1,a1,a2
    80001bd4:	00371693          	slli	a3,a4,0x3
    80001bd8:	00003717          	auipc	a4,0x3
    80001bdc:	ab870713          	addi	a4,a4,-1352 # 80004690 <timer_scratch>
    80001be0:	00b7b023          	sd	a1,0(a5)
    80001be4:	00d70733          	add	a4,a4,a3
    80001be8:	00f73c23          	sd	a5,24(a4)
    80001bec:	02c73023          	sd	a2,32(a4)
    80001bf0:	34071073          	csrw	mscratch,a4
    80001bf4:	00000797          	auipc	a5,0x0
    80001bf8:	64c78793          	addi	a5,a5,1612 # 80002240 <timervec>
    80001bfc:	30579073          	csrw	mtvec,a5
    80001c00:	300027f3          	csrr	a5,mstatus
    80001c04:	0087e793          	ori	a5,a5,8
    80001c08:	30079073          	csrw	mstatus,a5
    80001c0c:	304027f3          	csrr	a5,mie
    80001c10:	0807e793          	ori	a5,a5,128
    80001c14:	30479073          	csrw	mie,a5
    80001c18:	00813403          	ld	s0,8(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret

0000000080001c24 <system_main>:
    80001c24:	fe010113          	addi	sp,sp,-32
    80001c28:	00813823          	sd	s0,16(sp)
    80001c2c:	00913423          	sd	s1,8(sp)
    80001c30:	00113c23          	sd	ra,24(sp)
    80001c34:	02010413          	addi	s0,sp,32
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	0c4080e7          	jalr	196(ra) # 80001cfc <cpuid>
    80001c40:	00003497          	auipc	s1,0x3
    80001c44:	9f048493          	addi	s1,s1,-1552 # 80004630 <started>
    80001c48:	02050263          	beqz	a0,80001c6c <system_main+0x48>
    80001c4c:	0004a783          	lw	a5,0(s1)
    80001c50:	0007879b          	sext.w	a5,a5
    80001c54:	fe078ce3          	beqz	a5,80001c4c <system_main+0x28>
    80001c58:	0ff0000f          	fence
    80001c5c:	00002517          	auipc	a0,0x2
    80001c60:	40450513          	addi	a0,a0,1028 # 80004060 <_ZZ12printIntegermE6digits+0x40>
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	a78080e7          	jalr	-1416(ra) # 800026dc <panic>
    80001c6c:	00001097          	auipc	ra,0x1
    80001c70:	9cc080e7          	jalr	-1588(ra) # 80002638 <consoleinit>
    80001c74:	00001097          	auipc	ra,0x1
    80001c78:	158080e7          	jalr	344(ra) # 80002dcc <printfinit>
    80001c7c:	00002517          	auipc	a0,0x2
    80001c80:	4c450513          	addi	a0,a0,1220 # 80004140 <_ZZ12printIntegermE6digits+0x120>
    80001c84:	00001097          	auipc	ra,0x1
    80001c88:	ab4080e7          	jalr	-1356(ra) # 80002738 <__printf>
    80001c8c:	00002517          	auipc	a0,0x2
    80001c90:	3a450513          	addi	a0,a0,932 # 80004030 <_ZZ12printIntegermE6digits+0x10>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	aa4080e7          	jalr	-1372(ra) # 80002738 <__printf>
    80001c9c:	00002517          	auipc	a0,0x2
    80001ca0:	4a450513          	addi	a0,a0,1188 # 80004140 <_ZZ12printIntegermE6digits+0x120>
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	a94080e7          	jalr	-1388(ra) # 80002738 <__printf>
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	4ac080e7          	jalr	1196(ra) # 80003158 <kinit>
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	148080e7          	jalr	328(ra) # 80001dfc <trapinit>
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	16c080e7          	jalr	364(ra) # 80001e28 <trapinithart>
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	5bc080e7          	jalr	1468(ra) # 80002280 <plicinit>
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	5dc080e7          	jalr	1500(ra) # 800022a8 <plicinithart>
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	078080e7          	jalr	120(ra) # 80001d4c <userinit>
    80001cdc:	0ff0000f          	fence
    80001ce0:	00100793          	li	a5,1
    80001ce4:	00002517          	auipc	a0,0x2
    80001ce8:	36450513          	addi	a0,a0,868 # 80004048 <_ZZ12printIntegermE6digits+0x28>
    80001cec:	00f4a023          	sw	a5,0(s1)
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	a48080e7          	jalr	-1464(ra) # 80002738 <__printf>
    80001cf8:	0000006f          	j	80001cf8 <system_main+0xd4>

0000000080001cfc <cpuid>:
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16
    80001d08:	00020513          	mv	a0,tp
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	0005051b          	sext.w	a0,a0
    80001d14:	01010113          	addi	sp,sp,16
    80001d18:	00008067          	ret

0000000080001d1c <mycpu>:
    80001d1c:	ff010113          	addi	sp,sp,-16
    80001d20:	00813423          	sd	s0,8(sp)
    80001d24:	01010413          	addi	s0,sp,16
    80001d28:	00020793          	mv	a5,tp
    80001d2c:	00813403          	ld	s0,8(sp)
    80001d30:	0007879b          	sext.w	a5,a5
    80001d34:	00779793          	slli	a5,a5,0x7
    80001d38:	00004517          	auipc	a0,0x4
    80001d3c:	98850513          	addi	a0,a0,-1656 # 800056c0 <cpus>
    80001d40:	00f50533          	add	a0,a0,a5
    80001d44:	01010113          	addi	sp,sp,16
    80001d48:	00008067          	ret

0000000080001d4c <userinit>:
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00813423          	sd	s0,8(sp)
    80001d54:	01010413          	addi	s0,sp,16
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	fffff317          	auipc	t1,0xfffff
    80001d64:	4c430067          	jr	1220(t1) # 80001224 <main>

0000000080001d68 <either_copyout>:
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	00113423          	sd	ra,8(sp)
    80001d74:	01010413          	addi	s0,sp,16
    80001d78:	02051663          	bnez	a0,80001da4 <either_copyout+0x3c>
    80001d7c:	00058513          	mv	a0,a1
    80001d80:	00060593          	mv	a1,a2
    80001d84:	0006861b          	sext.w	a2,a3
    80001d88:	00002097          	auipc	ra,0x2
    80001d8c:	c5c080e7          	jalr	-932(ra) # 800039e4 <__memmove>
    80001d90:	00813083          	ld	ra,8(sp)
    80001d94:	00013403          	ld	s0,0(sp)
    80001d98:	00000513          	li	a0,0
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret
    80001da4:	00002517          	auipc	a0,0x2
    80001da8:	2e450513          	addi	a0,a0,740 # 80004088 <_ZZ12printIntegermE6digits+0x68>
    80001dac:	00001097          	auipc	ra,0x1
    80001db0:	930080e7          	jalr	-1744(ra) # 800026dc <panic>

0000000080001db4 <either_copyin>:
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00813023          	sd	s0,0(sp)
    80001dbc:	00113423          	sd	ra,8(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    80001dc4:	02059463          	bnez	a1,80001dec <either_copyin+0x38>
    80001dc8:	00060593          	mv	a1,a2
    80001dcc:	0006861b          	sext.w	a2,a3
    80001dd0:	00002097          	auipc	ra,0x2
    80001dd4:	c14080e7          	jalr	-1004(ra) # 800039e4 <__memmove>
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	00000513          	li	a0,0
    80001de4:	01010113          	addi	sp,sp,16
    80001de8:	00008067          	ret
    80001dec:	00002517          	auipc	a0,0x2
    80001df0:	2c450513          	addi	a0,a0,708 # 800040b0 <_ZZ12printIntegermE6digits+0x90>
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	8e8080e7          	jalr	-1816(ra) # 800026dc <panic>

0000000080001dfc <trapinit>:
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00813423          	sd	s0,8(sp)
    80001e04:	01010413          	addi	s0,sp,16
    80001e08:	00813403          	ld	s0,8(sp)
    80001e0c:	00002597          	auipc	a1,0x2
    80001e10:	2cc58593          	addi	a1,a1,716 # 800040d8 <_ZZ12printIntegermE6digits+0xb8>
    80001e14:	00004517          	auipc	a0,0x4
    80001e18:	92c50513          	addi	a0,a0,-1748 # 80005740 <tickslock>
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00001317          	auipc	t1,0x1
    80001e24:	5c830067          	jr	1480(t1) # 800033e8 <initlock>

0000000080001e28 <trapinithart>:
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00813423          	sd	s0,8(sp)
    80001e30:	01010413          	addi	s0,sp,16
    80001e34:	00000797          	auipc	a5,0x0
    80001e38:	2fc78793          	addi	a5,a5,764 # 80002130 <kernelvec>
    80001e3c:	10579073          	csrw	stvec,a5
    80001e40:	00813403          	ld	s0,8(sp)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <usertrap>:
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00813423          	sd	s0,8(sp)
    80001e54:	01010413          	addi	s0,sp,16
    80001e58:	00813403          	ld	s0,8(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <usertrapret>:
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00813423          	sd	s0,8(sp)
    80001e6c:	01010413          	addi	s0,sp,16
    80001e70:	00813403          	ld	s0,8(sp)
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	00008067          	ret

0000000080001e7c <kerneltrap>:
    80001e7c:	fe010113          	addi	sp,sp,-32
    80001e80:	00813823          	sd	s0,16(sp)
    80001e84:	00113c23          	sd	ra,24(sp)
    80001e88:	00913423          	sd	s1,8(sp)
    80001e8c:	02010413          	addi	s0,sp,32
    80001e90:	142025f3          	csrr	a1,scause
    80001e94:	100027f3          	csrr	a5,sstatus
    80001e98:	0027f793          	andi	a5,a5,2
    80001e9c:	10079c63          	bnez	a5,80001fb4 <kerneltrap+0x138>
    80001ea0:	142027f3          	csrr	a5,scause
    80001ea4:	0207ce63          	bltz	a5,80001ee0 <kerneltrap+0x64>
    80001ea8:	00002517          	auipc	a0,0x2
    80001eac:	27850513          	addi	a0,a0,632 # 80004120 <_ZZ12printIntegermE6digits+0x100>
    80001eb0:	00001097          	auipc	ra,0x1
    80001eb4:	888080e7          	jalr	-1912(ra) # 80002738 <__printf>
    80001eb8:	141025f3          	csrr	a1,sepc
    80001ebc:	14302673          	csrr	a2,stval
    80001ec0:	00002517          	auipc	a0,0x2
    80001ec4:	27050513          	addi	a0,a0,624 # 80004130 <_ZZ12printIntegermE6digits+0x110>
    80001ec8:	00001097          	auipc	ra,0x1
    80001ecc:	870080e7          	jalr	-1936(ra) # 80002738 <__printf>
    80001ed0:	00002517          	auipc	a0,0x2
    80001ed4:	27850513          	addi	a0,a0,632 # 80004148 <_ZZ12printIntegermE6digits+0x128>
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	804080e7          	jalr	-2044(ra) # 800026dc <panic>
    80001ee0:	0ff7f713          	andi	a4,a5,255
    80001ee4:	00900693          	li	a3,9
    80001ee8:	04d70063          	beq	a4,a3,80001f28 <kerneltrap+0xac>
    80001eec:	fff00713          	li	a4,-1
    80001ef0:	03f71713          	slli	a4,a4,0x3f
    80001ef4:	00170713          	addi	a4,a4,1
    80001ef8:	fae798e3          	bne	a5,a4,80001ea8 <kerneltrap+0x2c>
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	e00080e7          	jalr	-512(ra) # 80001cfc <cpuid>
    80001f04:	06050663          	beqz	a0,80001f70 <kerneltrap+0xf4>
    80001f08:	144027f3          	csrr	a5,sip
    80001f0c:	ffd7f793          	andi	a5,a5,-3
    80001f10:	14479073          	csrw	sip,a5
    80001f14:	01813083          	ld	ra,24(sp)
    80001f18:	01013403          	ld	s0,16(sp)
    80001f1c:	00813483          	ld	s1,8(sp)
    80001f20:	02010113          	addi	sp,sp,32
    80001f24:	00008067          	ret
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	3cc080e7          	jalr	972(ra) # 800022f4 <plic_claim>
    80001f30:	00a00793          	li	a5,10
    80001f34:	00050493          	mv	s1,a0
    80001f38:	06f50863          	beq	a0,a5,80001fa8 <kerneltrap+0x12c>
    80001f3c:	fc050ce3          	beqz	a0,80001f14 <kerneltrap+0x98>
    80001f40:	00050593          	mv	a1,a0
    80001f44:	00002517          	auipc	a0,0x2
    80001f48:	1bc50513          	addi	a0,a0,444 # 80004100 <_ZZ12printIntegermE6digits+0xe0>
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	7ec080e7          	jalr	2028(ra) # 80002738 <__printf>
    80001f54:	01013403          	ld	s0,16(sp)
    80001f58:	01813083          	ld	ra,24(sp)
    80001f5c:	00048513          	mv	a0,s1
    80001f60:	00813483          	ld	s1,8(sp)
    80001f64:	02010113          	addi	sp,sp,32
    80001f68:	00000317          	auipc	t1,0x0
    80001f6c:	3c430067          	jr	964(t1) # 8000232c <plic_complete>
    80001f70:	00003517          	auipc	a0,0x3
    80001f74:	7d050513          	addi	a0,a0,2000 # 80005740 <tickslock>
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	494080e7          	jalr	1172(ra) # 8000340c <acquire>
    80001f80:	00002717          	auipc	a4,0x2
    80001f84:	6b470713          	addi	a4,a4,1716 # 80004634 <ticks>
    80001f88:	00072783          	lw	a5,0(a4)
    80001f8c:	00003517          	auipc	a0,0x3
    80001f90:	7b450513          	addi	a0,a0,1972 # 80005740 <tickslock>
    80001f94:	0017879b          	addiw	a5,a5,1
    80001f98:	00f72023          	sw	a5,0(a4)
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	53c080e7          	jalr	1340(ra) # 800034d8 <release>
    80001fa4:	f65ff06f          	j	80001f08 <kerneltrap+0x8c>
    80001fa8:	00001097          	auipc	ra,0x1
    80001fac:	098080e7          	jalr	152(ra) # 80003040 <uartintr>
    80001fb0:	fa5ff06f          	j	80001f54 <kerneltrap+0xd8>
    80001fb4:	00002517          	auipc	a0,0x2
    80001fb8:	12c50513          	addi	a0,a0,300 # 800040e0 <_ZZ12printIntegermE6digits+0xc0>
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	720080e7          	jalr	1824(ra) # 800026dc <panic>

0000000080001fc4 <clockintr>:
    80001fc4:	fe010113          	addi	sp,sp,-32
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	00113c23          	sd	ra,24(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    80001fd8:	00003497          	auipc	s1,0x3
    80001fdc:	76848493          	addi	s1,s1,1896 # 80005740 <tickslock>
    80001fe0:	00048513          	mv	a0,s1
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	428080e7          	jalr	1064(ra) # 8000340c <acquire>
    80001fec:	00002717          	auipc	a4,0x2
    80001ff0:	64870713          	addi	a4,a4,1608 # 80004634 <ticks>
    80001ff4:	00072783          	lw	a5,0(a4)
    80001ff8:	01013403          	ld	s0,16(sp)
    80001ffc:	01813083          	ld	ra,24(sp)
    80002000:	00048513          	mv	a0,s1
    80002004:	0017879b          	addiw	a5,a5,1
    80002008:	00813483          	ld	s1,8(sp)
    8000200c:	00f72023          	sw	a5,0(a4)
    80002010:	02010113          	addi	sp,sp,32
    80002014:	00001317          	auipc	t1,0x1
    80002018:	4c430067          	jr	1220(t1) # 800034d8 <release>

000000008000201c <devintr>:
    8000201c:	142027f3          	csrr	a5,scause
    80002020:	00000513          	li	a0,0
    80002024:	0007c463          	bltz	a5,8000202c <devintr+0x10>
    80002028:	00008067          	ret
    8000202c:	fe010113          	addi	sp,sp,-32
    80002030:	00813823          	sd	s0,16(sp)
    80002034:	00113c23          	sd	ra,24(sp)
    80002038:	00913423          	sd	s1,8(sp)
    8000203c:	02010413          	addi	s0,sp,32
    80002040:	0ff7f713          	andi	a4,a5,255
    80002044:	00900693          	li	a3,9
    80002048:	04d70c63          	beq	a4,a3,800020a0 <devintr+0x84>
    8000204c:	fff00713          	li	a4,-1
    80002050:	03f71713          	slli	a4,a4,0x3f
    80002054:	00170713          	addi	a4,a4,1
    80002058:	00e78c63          	beq	a5,a4,80002070 <devintr+0x54>
    8000205c:	01813083          	ld	ra,24(sp)
    80002060:	01013403          	ld	s0,16(sp)
    80002064:	00813483          	ld	s1,8(sp)
    80002068:	02010113          	addi	sp,sp,32
    8000206c:	00008067          	ret
    80002070:	00000097          	auipc	ra,0x0
    80002074:	c8c080e7          	jalr	-884(ra) # 80001cfc <cpuid>
    80002078:	06050663          	beqz	a0,800020e4 <devintr+0xc8>
    8000207c:	144027f3          	csrr	a5,sip
    80002080:	ffd7f793          	andi	a5,a5,-3
    80002084:	14479073          	csrw	sip,a5
    80002088:	01813083          	ld	ra,24(sp)
    8000208c:	01013403          	ld	s0,16(sp)
    80002090:	00813483          	ld	s1,8(sp)
    80002094:	00200513          	li	a0,2
    80002098:	02010113          	addi	sp,sp,32
    8000209c:	00008067          	ret
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	254080e7          	jalr	596(ra) # 800022f4 <plic_claim>
    800020a8:	00a00793          	li	a5,10
    800020ac:	00050493          	mv	s1,a0
    800020b0:	06f50663          	beq	a0,a5,8000211c <devintr+0x100>
    800020b4:	00100513          	li	a0,1
    800020b8:	fa0482e3          	beqz	s1,8000205c <devintr+0x40>
    800020bc:	00048593          	mv	a1,s1
    800020c0:	00002517          	auipc	a0,0x2
    800020c4:	04050513          	addi	a0,a0,64 # 80004100 <_ZZ12printIntegermE6digits+0xe0>
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	670080e7          	jalr	1648(ra) # 80002738 <__printf>
    800020d0:	00048513          	mv	a0,s1
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	258080e7          	jalr	600(ra) # 8000232c <plic_complete>
    800020dc:	00100513          	li	a0,1
    800020e0:	f7dff06f          	j	8000205c <devintr+0x40>
    800020e4:	00003517          	auipc	a0,0x3
    800020e8:	65c50513          	addi	a0,a0,1628 # 80005740 <tickslock>
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	320080e7          	jalr	800(ra) # 8000340c <acquire>
    800020f4:	00002717          	auipc	a4,0x2
    800020f8:	54070713          	addi	a4,a4,1344 # 80004634 <ticks>
    800020fc:	00072783          	lw	a5,0(a4)
    80002100:	00003517          	auipc	a0,0x3
    80002104:	64050513          	addi	a0,a0,1600 # 80005740 <tickslock>
    80002108:	0017879b          	addiw	a5,a5,1
    8000210c:	00f72023          	sw	a5,0(a4)
    80002110:	00001097          	auipc	ra,0x1
    80002114:	3c8080e7          	jalr	968(ra) # 800034d8 <release>
    80002118:	f65ff06f          	j	8000207c <devintr+0x60>
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	f24080e7          	jalr	-220(ra) # 80003040 <uartintr>
    80002124:	fadff06f          	j	800020d0 <devintr+0xb4>
	...

0000000080002130 <kernelvec>:
    80002130:	f0010113          	addi	sp,sp,-256
    80002134:	00113023          	sd	ra,0(sp)
    80002138:	00213423          	sd	sp,8(sp)
    8000213c:	00313823          	sd	gp,16(sp)
    80002140:	00413c23          	sd	tp,24(sp)
    80002144:	02513023          	sd	t0,32(sp)
    80002148:	02613423          	sd	t1,40(sp)
    8000214c:	02713823          	sd	t2,48(sp)
    80002150:	02813c23          	sd	s0,56(sp)
    80002154:	04913023          	sd	s1,64(sp)
    80002158:	04a13423          	sd	a0,72(sp)
    8000215c:	04b13823          	sd	a1,80(sp)
    80002160:	04c13c23          	sd	a2,88(sp)
    80002164:	06d13023          	sd	a3,96(sp)
    80002168:	06e13423          	sd	a4,104(sp)
    8000216c:	06f13823          	sd	a5,112(sp)
    80002170:	07013c23          	sd	a6,120(sp)
    80002174:	09113023          	sd	a7,128(sp)
    80002178:	09213423          	sd	s2,136(sp)
    8000217c:	09313823          	sd	s3,144(sp)
    80002180:	09413c23          	sd	s4,152(sp)
    80002184:	0b513023          	sd	s5,160(sp)
    80002188:	0b613423          	sd	s6,168(sp)
    8000218c:	0b713823          	sd	s7,176(sp)
    80002190:	0b813c23          	sd	s8,184(sp)
    80002194:	0d913023          	sd	s9,192(sp)
    80002198:	0da13423          	sd	s10,200(sp)
    8000219c:	0db13823          	sd	s11,208(sp)
    800021a0:	0dc13c23          	sd	t3,216(sp)
    800021a4:	0fd13023          	sd	t4,224(sp)
    800021a8:	0fe13423          	sd	t5,232(sp)
    800021ac:	0ff13823          	sd	t6,240(sp)
    800021b0:	ccdff0ef          	jal	ra,80001e7c <kerneltrap>
    800021b4:	00013083          	ld	ra,0(sp)
    800021b8:	00813103          	ld	sp,8(sp)
    800021bc:	01013183          	ld	gp,16(sp)
    800021c0:	02013283          	ld	t0,32(sp)
    800021c4:	02813303          	ld	t1,40(sp)
    800021c8:	03013383          	ld	t2,48(sp)
    800021cc:	03813403          	ld	s0,56(sp)
    800021d0:	04013483          	ld	s1,64(sp)
    800021d4:	04813503          	ld	a0,72(sp)
    800021d8:	05013583          	ld	a1,80(sp)
    800021dc:	05813603          	ld	a2,88(sp)
    800021e0:	06013683          	ld	a3,96(sp)
    800021e4:	06813703          	ld	a4,104(sp)
    800021e8:	07013783          	ld	a5,112(sp)
    800021ec:	07813803          	ld	a6,120(sp)
    800021f0:	08013883          	ld	a7,128(sp)
    800021f4:	08813903          	ld	s2,136(sp)
    800021f8:	09013983          	ld	s3,144(sp)
    800021fc:	09813a03          	ld	s4,152(sp)
    80002200:	0a013a83          	ld	s5,160(sp)
    80002204:	0a813b03          	ld	s6,168(sp)
    80002208:	0b013b83          	ld	s7,176(sp)
    8000220c:	0b813c03          	ld	s8,184(sp)
    80002210:	0c013c83          	ld	s9,192(sp)
    80002214:	0c813d03          	ld	s10,200(sp)
    80002218:	0d013d83          	ld	s11,208(sp)
    8000221c:	0d813e03          	ld	t3,216(sp)
    80002220:	0e013e83          	ld	t4,224(sp)
    80002224:	0e813f03          	ld	t5,232(sp)
    80002228:	0f013f83          	ld	t6,240(sp)
    8000222c:	10010113          	addi	sp,sp,256
    80002230:	10200073          	sret
    80002234:	00000013          	nop
    80002238:	00000013          	nop
    8000223c:	00000013          	nop

0000000080002240 <timervec>:
    80002240:	34051573          	csrrw	a0,mscratch,a0
    80002244:	00b53023          	sd	a1,0(a0)
    80002248:	00c53423          	sd	a2,8(a0)
    8000224c:	00d53823          	sd	a3,16(a0)
    80002250:	01853583          	ld	a1,24(a0)
    80002254:	02053603          	ld	a2,32(a0)
    80002258:	0005b683          	ld	a3,0(a1)
    8000225c:	00c686b3          	add	a3,a3,a2
    80002260:	00d5b023          	sd	a3,0(a1)
    80002264:	00200593          	li	a1,2
    80002268:	14459073          	csrw	sip,a1
    8000226c:	01053683          	ld	a3,16(a0)
    80002270:	00853603          	ld	a2,8(a0)
    80002274:	00053583          	ld	a1,0(a0)
    80002278:	34051573          	csrrw	a0,mscratch,a0
    8000227c:	30200073          	mret

0000000080002280 <plicinit>:
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00813423          	sd	s0,8(sp)
    80002288:	01010413          	addi	s0,sp,16
    8000228c:	00813403          	ld	s0,8(sp)
    80002290:	0c0007b7          	lui	a5,0xc000
    80002294:	00100713          	li	a4,1
    80002298:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000229c:	00e7a223          	sw	a4,4(a5)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret

00000000800022a8 <plicinithart>:
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00813023          	sd	s0,0(sp)
    800022b0:	00113423          	sd	ra,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	a44080e7          	jalr	-1468(ra) # 80001cfc <cpuid>
    800022c0:	0085171b          	slliw	a4,a0,0x8
    800022c4:	0c0027b7          	lui	a5,0xc002
    800022c8:	00e787b3          	add	a5,a5,a4
    800022cc:	40200713          	li	a4,1026
    800022d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800022d4:	00813083          	ld	ra,8(sp)
    800022d8:	00013403          	ld	s0,0(sp)
    800022dc:	00d5151b          	slliw	a0,a0,0xd
    800022e0:	0c2017b7          	lui	a5,0xc201
    800022e4:	00a78533          	add	a0,a5,a0
    800022e8:	00052023          	sw	zero,0(a0)
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret

00000000800022f4 <plic_claim>:
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00813023          	sd	s0,0(sp)
    800022fc:	00113423          	sd	ra,8(sp)
    80002300:	01010413          	addi	s0,sp,16
    80002304:	00000097          	auipc	ra,0x0
    80002308:	9f8080e7          	jalr	-1544(ra) # 80001cfc <cpuid>
    8000230c:	00813083          	ld	ra,8(sp)
    80002310:	00013403          	ld	s0,0(sp)
    80002314:	00d5151b          	slliw	a0,a0,0xd
    80002318:	0c2017b7          	lui	a5,0xc201
    8000231c:	00a78533          	add	a0,a5,a0
    80002320:	00452503          	lw	a0,4(a0)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <plic_complete>:
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00813823          	sd	s0,16(sp)
    80002334:	00913423          	sd	s1,8(sp)
    80002338:	00113c23          	sd	ra,24(sp)
    8000233c:	02010413          	addi	s0,sp,32
    80002340:	00050493          	mv	s1,a0
    80002344:	00000097          	auipc	ra,0x0
    80002348:	9b8080e7          	jalr	-1608(ra) # 80001cfc <cpuid>
    8000234c:	01813083          	ld	ra,24(sp)
    80002350:	01013403          	ld	s0,16(sp)
    80002354:	00d5179b          	slliw	a5,a0,0xd
    80002358:	0c201737          	lui	a4,0xc201
    8000235c:	00f707b3          	add	a5,a4,a5
    80002360:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002364:	00813483          	ld	s1,8(sp)
    80002368:	02010113          	addi	sp,sp,32
    8000236c:	00008067          	ret

0000000080002370 <consolewrite>:
    80002370:	fb010113          	addi	sp,sp,-80
    80002374:	04813023          	sd	s0,64(sp)
    80002378:	04113423          	sd	ra,72(sp)
    8000237c:	02913c23          	sd	s1,56(sp)
    80002380:	03213823          	sd	s2,48(sp)
    80002384:	03313423          	sd	s3,40(sp)
    80002388:	03413023          	sd	s4,32(sp)
    8000238c:	01513c23          	sd	s5,24(sp)
    80002390:	05010413          	addi	s0,sp,80
    80002394:	06c05c63          	blez	a2,8000240c <consolewrite+0x9c>
    80002398:	00060993          	mv	s3,a2
    8000239c:	00050a13          	mv	s4,a0
    800023a0:	00058493          	mv	s1,a1
    800023a4:	00000913          	li	s2,0
    800023a8:	fff00a93          	li	s5,-1
    800023ac:	01c0006f          	j	800023c8 <consolewrite+0x58>
    800023b0:	fbf44503          	lbu	a0,-65(s0)
    800023b4:	0019091b          	addiw	s2,s2,1
    800023b8:	00148493          	addi	s1,s1,1
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	a9c080e7          	jalr	-1380(ra) # 80002e58 <uartputc>
    800023c4:	03298063          	beq	s3,s2,800023e4 <consolewrite+0x74>
    800023c8:	00048613          	mv	a2,s1
    800023cc:	00100693          	li	a3,1
    800023d0:	000a0593          	mv	a1,s4
    800023d4:	fbf40513          	addi	a0,s0,-65
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	9dc080e7          	jalr	-1572(ra) # 80001db4 <either_copyin>
    800023e0:	fd5518e3          	bne	a0,s5,800023b0 <consolewrite+0x40>
    800023e4:	04813083          	ld	ra,72(sp)
    800023e8:	04013403          	ld	s0,64(sp)
    800023ec:	03813483          	ld	s1,56(sp)
    800023f0:	02813983          	ld	s3,40(sp)
    800023f4:	02013a03          	ld	s4,32(sp)
    800023f8:	01813a83          	ld	s5,24(sp)
    800023fc:	00090513          	mv	a0,s2
    80002400:	03013903          	ld	s2,48(sp)
    80002404:	05010113          	addi	sp,sp,80
    80002408:	00008067          	ret
    8000240c:	00000913          	li	s2,0
    80002410:	fd5ff06f          	j	800023e4 <consolewrite+0x74>

0000000080002414 <consoleread>:
    80002414:	f9010113          	addi	sp,sp,-112
    80002418:	06813023          	sd	s0,96(sp)
    8000241c:	04913c23          	sd	s1,88(sp)
    80002420:	05213823          	sd	s2,80(sp)
    80002424:	05313423          	sd	s3,72(sp)
    80002428:	05413023          	sd	s4,64(sp)
    8000242c:	03513c23          	sd	s5,56(sp)
    80002430:	03613823          	sd	s6,48(sp)
    80002434:	03713423          	sd	s7,40(sp)
    80002438:	03813023          	sd	s8,32(sp)
    8000243c:	06113423          	sd	ra,104(sp)
    80002440:	01913c23          	sd	s9,24(sp)
    80002444:	07010413          	addi	s0,sp,112
    80002448:	00060b93          	mv	s7,a2
    8000244c:	00050913          	mv	s2,a0
    80002450:	00058c13          	mv	s8,a1
    80002454:	00060b1b          	sext.w	s6,a2
    80002458:	00003497          	auipc	s1,0x3
    8000245c:	31048493          	addi	s1,s1,784 # 80005768 <cons>
    80002460:	00400993          	li	s3,4
    80002464:	fff00a13          	li	s4,-1
    80002468:	00a00a93          	li	s5,10
    8000246c:	05705e63          	blez	s7,800024c8 <consoleread+0xb4>
    80002470:	09c4a703          	lw	a4,156(s1)
    80002474:	0984a783          	lw	a5,152(s1)
    80002478:	0007071b          	sext.w	a4,a4
    8000247c:	08e78463          	beq	a5,a4,80002504 <consoleread+0xf0>
    80002480:	07f7f713          	andi	a4,a5,127
    80002484:	00e48733          	add	a4,s1,a4
    80002488:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000248c:	0017869b          	addiw	a3,a5,1
    80002490:	08d4ac23          	sw	a3,152(s1)
    80002494:	00070c9b          	sext.w	s9,a4
    80002498:	0b370663          	beq	a4,s3,80002544 <consoleread+0x130>
    8000249c:	00100693          	li	a3,1
    800024a0:	f9f40613          	addi	a2,s0,-97
    800024a4:	000c0593          	mv	a1,s8
    800024a8:	00090513          	mv	a0,s2
    800024ac:	f8e40fa3          	sb	a4,-97(s0)
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	8b8080e7          	jalr	-1864(ra) # 80001d68 <either_copyout>
    800024b8:	01450863          	beq	a0,s4,800024c8 <consoleread+0xb4>
    800024bc:	001c0c13          	addi	s8,s8,1
    800024c0:	fffb8b9b          	addiw	s7,s7,-1
    800024c4:	fb5c94e3          	bne	s9,s5,8000246c <consoleread+0x58>
    800024c8:	000b851b          	sext.w	a0,s7
    800024cc:	06813083          	ld	ra,104(sp)
    800024d0:	06013403          	ld	s0,96(sp)
    800024d4:	05813483          	ld	s1,88(sp)
    800024d8:	05013903          	ld	s2,80(sp)
    800024dc:	04813983          	ld	s3,72(sp)
    800024e0:	04013a03          	ld	s4,64(sp)
    800024e4:	03813a83          	ld	s5,56(sp)
    800024e8:	02813b83          	ld	s7,40(sp)
    800024ec:	02013c03          	ld	s8,32(sp)
    800024f0:	01813c83          	ld	s9,24(sp)
    800024f4:	40ab053b          	subw	a0,s6,a0
    800024f8:	03013b03          	ld	s6,48(sp)
    800024fc:	07010113          	addi	sp,sp,112
    80002500:	00008067          	ret
    80002504:	00001097          	auipc	ra,0x1
    80002508:	1d8080e7          	jalr	472(ra) # 800036dc <push_on>
    8000250c:	0984a703          	lw	a4,152(s1)
    80002510:	09c4a783          	lw	a5,156(s1)
    80002514:	0007879b          	sext.w	a5,a5
    80002518:	fef70ce3          	beq	a4,a5,80002510 <consoleread+0xfc>
    8000251c:	00001097          	auipc	ra,0x1
    80002520:	234080e7          	jalr	564(ra) # 80003750 <pop_on>
    80002524:	0984a783          	lw	a5,152(s1)
    80002528:	07f7f713          	andi	a4,a5,127
    8000252c:	00e48733          	add	a4,s1,a4
    80002530:	01874703          	lbu	a4,24(a4)
    80002534:	0017869b          	addiw	a3,a5,1
    80002538:	08d4ac23          	sw	a3,152(s1)
    8000253c:	00070c9b          	sext.w	s9,a4
    80002540:	f5371ee3          	bne	a4,s3,8000249c <consoleread+0x88>
    80002544:	000b851b          	sext.w	a0,s7
    80002548:	f96bf2e3          	bgeu	s7,s6,800024cc <consoleread+0xb8>
    8000254c:	08f4ac23          	sw	a5,152(s1)
    80002550:	f7dff06f          	j	800024cc <consoleread+0xb8>

0000000080002554 <consputc>:
    80002554:	10000793          	li	a5,256
    80002558:	00f50663          	beq	a0,a5,80002564 <consputc+0x10>
    8000255c:	00001317          	auipc	t1,0x1
    80002560:	9f430067          	jr	-1548(t1) # 80002f50 <uartputc_sync>
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00113423          	sd	ra,8(sp)
    8000256c:	00813023          	sd	s0,0(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	00800513          	li	a0,8
    80002578:	00001097          	auipc	ra,0x1
    8000257c:	9d8080e7          	jalr	-1576(ra) # 80002f50 <uartputc_sync>
    80002580:	02000513          	li	a0,32
    80002584:	00001097          	auipc	ra,0x1
    80002588:	9cc080e7          	jalr	-1588(ra) # 80002f50 <uartputc_sync>
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00800513          	li	a0,8
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00001317          	auipc	t1,0x1
    800025a0:	9b430067          	jr	-1612(t1) # 80002f50 <uartputc_sync>

00000000800025a4 <consoleintr>:
    800025a4:	fe010113          	addi	sp,sp,-32
    800025a8:	00813823          	sd	s0,16(sp)
    800025ac:	00913423          	sd	s1,8(sp)
    800025b0:	01213023          	sd	s2,0(sp)
    800025b4:	00113c23          	sd	ra,24(sp)
    800025b8:	02010413          	addi	s0,sp,32
    800025bc:	00003917          	auipc	s2,0x3
    800025c0:	1ac90913          	addi	s2,s2,428 # 80005768 <cons>
    800025c4:	00050493          	mv	s1,a0
    800025c8:	00090513          	mv	a0,s2
    800025cc:	00001097          	auipc	ra,0x1
    800025d0:	e40080e7          	jalr	-448(ra) # 8000340c <acquire>
    800025d4:	02048c63          	beqz	s1,8000260c <consoleintr+0x68>
    800025d8:	0a092783          	lw	a5,160(s2)
    800025dc:	09892703          	lw	a4,152(s2)
    800025e0:	07f00693          	li	a3,127
    800025e4:	40e7873b          	subw	a4,a5,a4
    800025e8:	02e6e263          	bltu	a3,a4,8000260c <consoleintr+0x68>
    800025ec:	00d00713          	li	a4,13
    800025f0:	04e48063          	beq	s1,a4,80002630 <consoleintr+0x8c>
    800025f4:	07f7f713          	andi	a4,a5,127
    800025f8:	00e90733          	add	a4,s2,a4
    800025fc:	0017879b          	addiw	a5,a5,1
    80002600:	0af92023          	sw	a5,160(s2)
    80002604:	00970c23          	sb	s1,24(a4)
    80002608:	08f92e23          	sw	a5,156(s2)
    8000260c:	01013403          	ld	s0,16(sp)
    80002610:	01813083          	ld	ra,24(sp)
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	00013903          	ld	s2,0(sp)
    8000261c:	00003517          	auipc	a0,0x3
    80002620:	14c50513          	addi	a0,a0,332 # 80005768 <cons>
    80002624:	02010113          	addi	sp,sp,32
    80002628:	00001317          	auipc	t1,0x1
    8000262c:	eb030067          	jr	-336(t1) # 800034d8 <release>
    80002630:	00a00493          	li	s1,10
    80002634:	fc1ff06f          	j	800025f4 <consoleintr+0x50>

0000000080002638 <consoleinit>:
    80002638:	fe010113          	addi	sp,sp,-32
    8000263c:	00113c23          	sd	ra,24(sp)
    80002640:	00813823          	sd	s0,16(sp)
    80002644:	00913423          	sd	s1,8(sp)
    80002648:	02010413          	addi	s0,sp,32
    8000264c:	00003497          	auipc	s1,0x3
    80002650:	11c48493          	addi	s1,s1,284 # 80005768 <cons>
    80002654:	00048513          	mv	a0,s1
    80002658:	00002597          	auipc	a1,0x2
    8000265c:	b0058593          	addi	a1,a1,-1280 # 80004158 <_ZZ12printIntegermE6digits+0x138>
    80002660:	00001097          	auipc	ra,0x1
    80002664:	d88080e7          	jalr	-632(ra) # 800033e8 <initlock>
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	7ac080e7          	jalr	1964(ra) # 80002e14 <uartinit>
    80002670:	01813083          	ld	ra,24(sp)
    80002674:	01013403          	ld	s0,16(sp)
    80002678:	00000797          	auipc	a5,0x0
    8000267c:	d9c78793          	addi	a5,a5,-612 # 80002414 <consoleread>
    80002680:	0af4bc23          	sd	a5,184(s1)
    80002684:	00000797          	auipc	a5,0x0
    80002688:	cec78793          	addi	a5,a5,-788 # 80002370 <consolewrite>
    8000268c:	0cf4b023          	sd	a5,192(s1)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret

000000008000269c <console_read>:
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00813423          	sd	s0,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    800026a8:	00813403          	ld	s0,8(sp)
    800026ac:	00003317          	auipc	t1,0x3
    800026b0:	17433303          	ld	t1,372(t1) # 80005820 <devsw+0x10>
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00030067          	jr	t1

00000000800026bc <console_write>:
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00813423          	sd	s0,8(sp)
    800026c4:	01010413          	addi	s0,sp,16
    800026c8:	00813403          	ld	s0,8(sp)
    800026cc:	00003317          	auipc	t1,0x3
    800026d0:	15c33303          	ld	t1,348(t1) # 80005828 <devsw+0x18>
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00030067          	jr	t1

00000000800026dc <panic>:
    800026dc:	fe010113          	addi	sp,sp,-32
    800026e0:	00113c23          	sd	ra,24(sp)
    800026e4:	00813823          	sd	s0,16(sp)
    800026e8:	00913423          	sd	s1,8(sp)
    800026ec:	02010413          	addi	s0,sp,32
    800026f0:	00050493          	mv	s1,a0
    800026f4:	00002517          	auipc	a0,0x2
    800026f8:	a6c50513          	addi	a0,a0,-1428 # 80004160 <_ZZ12printIntegermE6digits+0x140>
    800026fc:	00003797          	auipc	a5,0x3
    80002700:	1c07a623          	sw	zero,460(a5) # 800058c8 <pr+0x18>
    80002704:	00000097          	auipc	ra,0x0
    80002708:	034080e7          	jalr	52(ra) # 80002738 <__printf>
    8000270c:	00048513          	mv	a0,s1
    80002710:	00000097          	auipc	ra,0x0
    80002714:	028080e7          	jalr	40(ra) # 80002738 <__printf>
    80002718:	00002517          	auipc	a0,0x2
    8000271c:	a2850513          	addi	a0,a0,-1496 # 80004140 <_ZZ12printIntegermE6digits+0x120>
    80002720:	00000097          	auipc	ra,0x0
    80002724:	018080e7          	jalr	24(ra) # 80002738 <__printf>
    80002728:	00100793          	li	a5,1
    8000272c:	00002717          	auipc	a4,0x2
    80002730:	f0f72623          	sw	a5,-244(a4) # 80004638 <panicked>
    80002734:	0000006f          	j	80002734 <panic+0x58>

0000000080002738 <__printf>:
    80002738:	f3010113          	addi	sp,sp,-208
    8000273c:	08813023          	sd	s0,128(sp)
    80002740:	07313423          	sd	s3,104(sp)
    80002744:	09010413          	addi	s0,sp,144
    80002748:	05813023          	sd	s8,64(sp)
    8000274c:	08113423          	sd	ra,136(sp)
    80002750:	06913c23          	sd	s1,120(sp)
    80002754:	07213823          	sd	s2,112(sp)
    80002758:	07413023          	sd	s4,96(sp)
    8000275c:	05513c23          	sd	s5,88(sp)
    80002760:	05613823          	sd	s6,80(sp)
    80002764:	05713423          	sd	s7,72(sp)
    80002768:	03913c23          	sd	s9,56(sp)
    8000276c:	03a13823          	sd	s10,48(sp)
    80002770:	03b13423          	sd	s11,40(sp)
    80002774:	00003317          	auipc	t1,0x3
    80002778:	13c30313          	addi	t1,t1,316 # 800058b0 <pr>
    8000277c:	01832c03          	lw	s8,24(t1)
    80002780:	00b43423          	sd	a1,8(s0)
    80002784:	00c43823          	sd	a2,16(s0)
    80002788:	00d43c23          	sd	a3,24(s0)
    8000278c:	02e43023          	sd	a4,32(s0)
    80002790:	02f43423          	sd	a5,40(s0)
    80002794:	03043823          	sd	a6,48(s0)
    80002798:	03143c23          	sd	a7,56(s0)
    8000279c:	00050993          	mv	s3,a0
    800027a0:	4a0c1663          	bnez	s8,80002c4c <__printf+0x514>
    800027a4:	60098c63          	beqz	s3,80002dbc <__printf+0x684>
    800027a8:	0009c503          	lbu	a0,0(s3)
    800027ac:	00840793          	addi	a5,s0,8
    800027b0:	f6f43c23          	sd	a5,-136(s0)
    800027b4:	00000493          	li	s1,0
    800027b8:	22050063          	beqz	a0,800029d8 <__printf+0x2a0>
    800027bc:	00002a37          	lui	s4,0x2
    800027c0:	00018ab7          	lui	s5,0x18
    800027c4:	000f4b37          	lui	s6,0xf4
    800027c8:	00989bb7          	lui	s7,0x989
    800027cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800027d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800027d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800027d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800027dc:	00148c9b          	addiw	s9,s1,1
    800027e0:	02500793          	li	a5,37
    800027e4:	01998933          	add	s2,s3,s9
    800027e8:	38f51263          	bne	a0,a5,80002b6c <__printf+0x434>
    800027ec:	00094783          	lbu	a5,0(s2)
    800027f0:	00078c9b          	sext.w	s9,a5
    800027f4:	1e078263          	beqz	a5,800029d8 <__printf+0x2a0>
    800027f8:	0024849b          	addiw	s1,s1,2
    800027fc:	07000713          	li	a4,112
    80002800:	00998933          	add	s2,s3,s1
    80002804:	38e78a63          	beq	a5,a4,80002b98 <__printf+0x460>
    80002808:	20f76863          	bltu	a4,a5,80002a18 <__printf+0x2e0>
    8000280c:	42a78863          	beq	a5,a0,80002c3c <__printf+0x504>
    80002810:	06400713          	li	a4,100
    80002814:	40e79663          	bne	a5,a4,80002c20 <__printf+0x4e8>
    80002818:	f7843783          	ld	a5,-136(s0)
    8000281c:	0007a603          	lw	a2,0(a5)
    80002820:	00878793          	addi	a5,a5,8
    80002824:	f6f43c23          	sd	a5,-136(s0)
    80002828:	42064a63          	bltz	a2,80002c5c <__printf+0x524>
    8000282c:	00a00713          	li	a4,10
    80002830:	02e677bb          	remuw	a5,a2,a4
    80002834:	00002d97          	auipc	s11,0x2
    80002838:	954d8d93          	addi	s11,s11,-1708 # 80004188 <digits>
    8000283c:	00900593          	li	a1,9
    80002840:	0006051b          	sext.w	a0,a2
    80002844:	00000c93          	li	s9,0
    80002848:	02079793          	slli	a5,a5,0x20
    8000284c:	0207d793          	srli	a5,a5,0x20
    80002850:	00fd87b3          	add	a5,s11,a5
    80002854:	0007c783          	lbu	a5,0(a5)
    80002858:	02e656bb          	divuw	a3,a2,a4
    8000285c:	f8f40023          	sb	a5,-128(s0)
    80002860:	14c5d863          	bge	a1,a2,800029b0 <__printf+0x278>
    80002864:	06300593          	li	a1,99
    80002868:	00100c93          	li	s9,1
    8000286c:	02e6f7bb          	remuw	a5,a3,a4
    80002870:	02079793          	slli	a5,a5,0x20
    80002874:	0207d793          	srli	a5,a5,0x20
    80002878:	00fd87b3          	add	a5,s11,a5
    8000287c:	0007c783          	lbu	a5,0(a5)
    80002880:	02e6d73b          	divuw	a4,a3,a4
    80002884:	f8f400a3          	sb	a5,-127(s0)
    80002888:	12a5f463          	bgeu	a1,a0,800029b0 <__printf+0x278>
    8000288c:	00a00693          	li	a3,10
    80002890:	00900593          	li	a1,9
    80002894:	02d777bb          	remuw	a5,a4,a3
    80002898:	02079793          	slli	a5,a5,0x20
    8000289c:	0207d793          	srli	a5,a5,0x20
    800028a0:	00fd87b3          	add	a5,s11,a5
    800028a4:	0007c503          	lbu	a0,0(a5)
    800028a8:	02d757bb          	divuw	a5,a4,a3
    800028ac:	f8a40123          	sb	a0,-126(s0)
    800028b0:	48e5f263          	bgeu	a1,a4,80002d34 <__printf+0x5fc>
    800028b4:	06300513          	li	a0,99
    800028b8:	02d7f5bb          	remuw	a1,a5,a3
    800028bc:	02059593          	slli	a1,a1,0x20
    800028c0:	0205d593          	srli	a1,a1,0x20
    800028c4:	00bd85b3          	add	a1,s11,a1
    800028c8:	0005c583          	lbu	a1,0(a1)
    800028cc:	02d7d7bb          	divuw	a5,a5,a3
    800028d0:	f8b401a3          	sb	a1,-125(s0)
    800028d4:	48e57263          	bgeu	a0,a4,80002d58 <__printf+0x620>
    800028d8:	3e700513          	li	a0,999
    800028dc:	02d7f5bb          	remuw	a1,a5,a3
    800028e0:	02059593          	slli	a1,a1,0x20
    800028e4:	0205d593          	srli	a1,a1,0x20
    800028e8:	00bd85b3          	add	a1,s11,a1
    800028ec:	0005c583          	lbu	a1,0(a1)
    800028f0:	02d7d7bb          	divuw	a5,a5,a3
    800028f4:	f8b40223          	sb	a1,-124(s0)
    800028f8:	46e57663          	bgeu	a0,a4,80002d64 <__printf+0x62c>
    800028fc:	02d7f5bb          	remuw	a1,a5,a3
    80002900:	02059593          	slli	a1,a1,0x20
    80002904:	0205d593          	srli	a1,a1,0x20
    80002908:	00bd85b3          	add	a1,s11,a1
    8000290c:	0005c583          	lbu	a1,0(a1)
    80002910:	02d7d7bb          	divuw	a5,a5,a3
    80002914:	f8b402a3          	sb	a1,-123(s0)
    80002918:	46ea7863          	bgeu	s4,a4,80002d88 <__printf+0x650>
    8000291c:	02d7f5bb          	remuw	a1,a5,a3
    80002920:	02059593          	slli	a1,a1,0x20
    80002924:	0205d593          	srli	a1,a1,0x20
    80002928:	00bd85b3          	add	a1,s11,a1
    8000292c:	0005c583          	lbu	a1,0(a1)
    80002930:	02d7d7bb          	divuw	a5,a5,a3
    80002934:	f8b40323          	sb	a1,-122(s0)
    80002938:	3eeaf863          	bgeu	s5,a4,80002d28 <__printf+0x5f0>
    8000293c:	02d7f5bb          	remuw	a1,a5,a3
    80002940:	02059593          	slli	a1,a1,0x20
    80002944:	0205d593          	srli	a1,a1,0x20
    80002948:	00bd85b3          	add	a1,s11,a1
    8000294c:	0005c583          	lbu	a1,0(a1)
    80002950:	02d7d7bb          	divuw	a5,a5,a3
    80002954:	f8b403a3          	sb	a1,-121(s0)
    80002958:	42eb7e63          	bgeu	s6,a4,80002d94 <__printf+0x65c>
    8000295c:	02d7f5bb          	remuw	a1,a5,a3
    80002960:	02059593          	slli	a1,a1,0x20
    80002964:	0205d593          	srli	a1,a1,0x20
    80002968:	00bd85b3          	add	a1,s11,a1
    8000296c:	0005c583          	lbu	a1,0(a1)
    80002970:	02d7d7bb          	divuw	a5,a5,a3
    80002974:	f8b40423          	sb	a1,-120(s0)
    80002978:	42ebfc63          	bgeu	s7,a4,80002db0 <__printf+0x678>
    8000297c:	02079793          	slli	a5,a5,0x20
    80002980:	0207d793          	srli	a5,a5,0x20
    80002984:	00fd8db3          	add	s11,s11,a5
    80002988:	000dc703          	lbu	a4,0(s11)
    8000298c:	00a00793          	li	a5,10
    80002990:	00900c93          	li	s9,9
    80002994:	f8e404a3          	sb	a4,-119(s0)
    80002998:	00065c63          	bgez	a2,800029b0 <__printf+0x278>
    8000299c:	f9040713          	addi	a4,s0,-112
    800029a0:	00f70733          	add	a4,a4,a5
    800029a4:	02d00693          	li	a3,45
    800029a8:	fed70823          	sb	a3,-16(a4)
    800029ac:	00078c93          	mv	s9,a5
    800029b0:	f8040793          	addi	a5,s0,-128
    800029b4:	01978cb3          	add	s9,a5,s9
    800029b8:	f7f40d13          	addi	s10,s0,-129
    800029bc:	000cc503          	lbu	a0,0(s9)
    800029c0:	fffc8c93          	addi	s9,s9,-1
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	b90080e7          	jalr	-1136(ra) # 80002554 <consputc>
    800029cc:	ffac98e3          	bne	s9,s10,800029bc <__printf+0x284>
    800029d0:	00094503          	lbu	a0,0(s2)
    800029d4:	e00514e3          	bnez	a0,800027dc <__printf+0xa4>
    800029d8:	1a0c1663          	bnez	s8,80002b84 <__printf+0x44c>
    800029dc:	08813083          	ld	ra,136(sp)
    800029e0:	08013403          	ld	s0,128(sp)
    800029e4:	07813483          	ld	s1,120(sp)
    800029e8:	07013903          	ld	s2,112(sp)
    800029ec:	06813983          	ld	s3,104(sp)
    800029f0:	06013a03          	ld	s4,96(sp)
    800029f4:	05813a83          	ld	s5,88(sp)
    800029f8:	05013b03          	ld	s6,80(sp)
    800029fc:	04813b83          	ld	s7,72(sp)
    80002a00:	04013c03          	ld	s8,64(sp)
    80002a04:	03813c83          	ld	s9,56(sp)
    80002a08:	03013d03          	ld	s10,48(sp)
    80002a0c:	02813d83          	ld	s11,40(sp)
    80002a10:	0d010113          	addi	sp,sp,208
    80002a14:	00008067          	ret
    80002a18:	07300713          	li	a4,115
    80002a1c:	1ce78a63          	beq	a5,a4,80002bf0 <__printf+0x4b8>
    80002a20:	07800713          	li	a4,120
    80002a24:	1ee79e63          	bne	a5,a4,80002c20 <__printf+0x4e8>
    80002a28:	f7843783          	ld	a5,-136(s0)
    80002a2c:	0007a703          	lw	a4,0(a5)
    80002a30:	00878793          	addi	a5,a5,8
    80002a34:	f6f43c23          	sd	a5,-136(s0)
    80002a38:	28074263          	bltz	a4,80002cbc <__printf+0x584>
    80002a3c:	00001d97          	auipc	s11,0x1
    80002a40:	74cd8d93          	addi	s11,s11,1868 # 80004188 <digits>
    80002a44:	00f77793          	andi	a5,a4,15
    80002a48:	00fd87b3          	add	a5,s11,a5
    80002a4c:	0007c683          	lbu	a3,0(a5)
    80002a50:	00f00613          	li	a2,15
    80002a54:	0007079b          	sext.w	a5,a4
    80002a58:	f8d40023          	sb	a3,-128(s0)
    80002a5c:	0047559b          	srliw	a1,a4,0x4
    80002a60:	0047569b          	srliw	a3,a4,0x4
    80002a64:	00000c93          	li	s9,0
    80002a68:	0ee65063          	bge	a2,a4,80002b48 <__printf+0x410>
    80002a6c:	00f6f693          	andi	a3,a3,15
    80002a70:	00dd86b3          	add	a3,s11,a3
    80002a74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002a78:	0087d79b          	srliw	a5,a5,0x8
    80002a7c:	00100c93          	li	s9,1
    80002a80:	f8d400a3          	sb	a3,-127(s0)
    80002a84:	0cb67263          	bgeu	a2,a1,80002b48 <__printf+0x410>
    80002a88:	00f7f693          	andi	a3,a5,15
    80002a8c:	00dd86b3          	add	a3,s11,a3
    80002a90:	0006c583          	lbu	a1,0(a3)
    80002a94:	00f00613          	li	a2,15
    80002a98:	0047d69b          	srliw	a3,a5,0x4
    80002a9c:	f8b40123          	sb	a1,-126(s0)
    80002aa0:	0047d593          	srli	a1,a5,0x4
    80002aa4:	28f67e63          	bgeu	a2,a5,80002d40 <__printf+0x608>
    80002aa8:	00f6f693          	andi	a3,a3,15
    80002aac:	00dd86b3          	add	a3,s11,a3
    80002ab0:	0006c503          	lbu	a0,0(a3)
    80002ab4:	0087d813          	srli	a6,a5,0x8
    80002ab8:	0087d69b          	srliw	a3,a5,0x8
    80002abc:	f8a401a3          	sb	a0,-125(s0)
    80002ac0:	28b67663          	bgeu	a2,a1,80002d4c <__printf+0x614>
    80002ac4:	00f6f693          	andi	a3,a3,15
    80002ac8:	00dd86b3          	add	a3,s11,a3
    80002acc:	0006c583          	lbu	a1,0(a3)
    80002ad0:	00c7d513          	srli	a0,a5,0xc
    80002ad4:	00c7d69b          	srliw	a3,a5,0xc
    80002ad8:	f8b40223          	sb	a1,-124(s0)
    80002adc:	29067a63          	bgeu	a2,a6,80002d70 <__printf+0x638>
    80002ae0:	00f6f693          	andi	a3,a3,15
    80002ae4:	00dd86b3          	add	a3,s11,a3
    80002ae8:	0006c583          	lbu	a1,0(a3)
    80002aec:	0107d813          	srli	a6,a5,0x10
    80002af0:	0107d69b          	srliw	a3,a5,0x10
    80002af4:	f8b402a3          	sb	a1,-123(s0)
    80002af8:	28a67263          	bgeu	a2,a0,80002d7c <__printf+0x644>
    80002afc:	00f6f693          	andi	a3,a3,15
    80002b00:	00dd86b3          	add	a3,s11,a3
    80002b04:	0006c683          	lbu	a3,0(a3)
    80002b08:	0147d79b          	srliw	a5,a5,0x14
    80002b0c:	f8d40323          	sb	a3,-122(s0)
    80002b10:	21067663          	bgeu	a2,a6,80002d1c <__printf+0x5e4>
    80002b14:	02079793          	slli	a5,a5,0x20
    80002b18:	0207d793          	srli	a5,a5,0x20
    80002b1c:	00fd8db3          	add	s11,s11,a5
    80002b20:	000dc683          	lbu	a3,0(s11)
    80002b24:	00800793          	li	a5,8
    80002b28:	00700c93          	li	s9,7
    80002b2c:	f8d403a3          	sb	a3,-121(s0)
    80002b30:	00075c63          	bgez	a4,80002b48 <__printf+0x410>
    80002b34:	f9040713          	addi	a4,s0,-112
    80002b38:	00f70733          	add	a4,a4,a5
    80002b3c:	02d00693          	li	a3,45
    80002b40:	fed70823          	sb	a3,-16(a4)
    80002b44:	00078c93          	mv	s9,a5
    80002b48:	f8040793          	addi	a5,s0,-128
    80002b4c:	01978cb3          	add	s9,a5,s9
    80002b50:	f7f40d13          	addi	s10,s0,-129
    80002b54:	000cc503          	lbu	a0,0(s9)
    80002b58:	fffc8c93          	addi	s9,s9,-1
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	9f8080e7          	jalr	-1544(ra) # 80002554 <consputc>
    80002b64:	ff9d18e3          	bne	s10,s9,80002b54 <__printf+0x41c>
    80002b68:	0100006f          	j	80002b78 <__printf+0x440>
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	9e8080e7          	jalr	-1560(ra) # 80002554 <consputc>
    80002b74:	000c8493          	mv	s1,s9
    80002b78:	00094503          	lbu	a0,0(s2)
    80002b7c:	c60510e3          	bnez	a0,800027dc <__printf+0xa4>
    80002b80:	e40c0ee3          	beqz	s8,800029dc <__printf+0x2a4>
    80002b84:	00003517          	auipc	a0,0x3
    80002b88:	d2c50513          	addi	a0,a0,-724 # 800058b0 <pr>
    80002b8c:	00001097          	auipc	ra,0x1
    80002b90:	94c080e7          	jalr	-1716(ra) # 800034d8 <release>
    80002b94:	e49ff06f          	j	800029dc <__printf+0x2a4>
    80002b98:	f7843783          	ld	a5,-136(s0)
    80002b9c:	03000513          	li	a0,48
    80002ba0:	01000d13          	li	s10,16
    80002ba4:	00878713          	addi	a4,a5,8
    80002ba8:	0007bc83          	ld	s9,0(a5)
    80002bac:	f6e43c23          	sd	a4,-136(s0)
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	9a4080e7          	jalr	-1628(ra) # 80002554 <consputc>
    80002bb8:	07800513          	li	a0,120
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	998080e7          	jalr	-1640(ra) # 80002554 <consputc>
    80002bc4:	00001d97          	auipc	s11,0x1
    80002bc8:	5c4d8d93          	addi	s11,s11,1476 # 80004188 <digits>
    80002bcc:	03ccd793          	srli	a5,s9,0x3c
    80002bd0:	00fd87b3          	add	a5,s11,a5
    80002bd4:	0007c503          	lbu	a0,0(a5)
    80002bd8:	fffd0d1b          	addiw	s10,s10,-1
    80002bdc:	004c9c93          	slli	s9,s9,0x4
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	974080e7          	jalr	-1676(ra) # 80002554 <consputc>
    80002be8:	fe0d12e3          	bnez	s10,80002bcc <__printf+0x494>
    80002bec:	f8dff06f          	j	80002b78 <__printf+0x440>
    80002bf0:	f7843783          	ld	a5,-136(s0)
    80002bf4:	0007bc83          	ld	s9,0(a5)
    80002bf8:	00878793          	addi	a5,a5,8
    80002bfc:	f6f43c23          	sd	a5,-136(s0)
    80002c00:	000c9a63          	bnez	s9,80002c14 <__printf+0x4dc>
    80002c04:	1080006f          	j	80002d0c <__printf+0x5d4>
    80002c08:	001c8c93          	addi	s9,s9,1
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	948080e7          	jalr	-1720(ra) # 80002554 <consputc>
    80002c14:	000cc503          	lbu	a0,0(s9)
    80002c18:	fe0518e3          	bnez	a0,80002c08 <__printf+0x4d0>
    80002c1c:	f5dff06f          	j	80002b78 <__printf+0x440>
    80002c20:	02500513          	li	a0,37
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	930080e7          	jalr	-1744(ra) # 80002554 <consputc>
    80002c2c:	000c8513          	mv	a0,s9
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	924080e7          	jalr	-1756(ra) # 80002554 <consputc>
    80002c38:	f41ff06f          	j	80002b78 <__printf+0x440>
    80002c3c:	02500513          	li	a0,37
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	914080e7          	jalr	-1772(ra) # 80002554 <consputc>
    80002c48:	f31ff06f          	j	80002b78 <__printf+0x440>
    80002c4c:	00030513          	mv	a0,t1
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	7bc080e7          	jalr	1980(ra) # 8000340c <acquire>
    80002c58:	b4dff06f          	j	800027a4 <__printf+0x6c>
    80002c5c:	40c0053b          	negw	a0,a2
    80002c60:	00a00713          	li	a4,10
    80002c64:	02e576bb          	remuw	a3,a0,a4
    80002c68:	00001d97          	auipc	s11,0x1
    80002c6c:	520d8d93          	addi	s11,s11,1312 # 80004188 <digits>
    80002c70:	ff700593          	li	a1,-9
    80002c74:	02069693          	slli	a3,a3,0x20
    80002c78:	0206d693          	srli	a3,a3,0x20
    80002c7c:	00dd86b3          	add	a3,s11,a3
    80002c80:	0006c683          	lbu	a3,0(a3)
    80002c84:	02e557bb          	divuw	a5,a0,a4
    80002c88:	f8d40023          	sb	a3,-128(s0)
    80002c8c:	10b65e63          	bge	a2,a1,80002da8 <__printf+0x670>
    80002c90:	06300593          	li	a1,99
    80002c94:	02e7f6bb          	remuw	a3,a5,a4
    80002c98:	02069693          	slli	a3,a3,0x20
    80002c9c:	0206d693          	srli	a3,a3,0x20
    80002ca0:	00dd86b3          	add	a3,s11,a3
    80002ca4:	0006c683          	lbu	a3,0(a3)
    80002ca8:	02e7d73b          	divuw	a4,a5,a4
    80002cac:	00200793          	li	a5,2
    80002cb0:	f8d400a3          	sb	a3,-127(s0)
    80002cb4:	bca5ece3          	bltu	a1,a0,8000288c <__printf+0x154>
    80002cb8:	ce5ff06f          	j	8000299c <__printf+0x264>
    80002cbc:	40e007bb          	negw	a5,a4
    80002cc0:	00001d97          	auipc	s11,0x1
    80002cc4:	4c8d8d93          	addi	s11,s11,1224 # 80004188 <digits>
    80002cc8:	00f7f693          	andi	a3,a5,15
    80002ccc:	00dd86b3          	add	a3,s11,a3
    80002cd0:	0006c583          	lbu	a1,0(a3)
    80002cd4:	ff100613          	li	a2,-15
    80002cd8:	0047d69b          	srliw	a3,a5,0x4
    80002cdc:	f8b40023          	sb	a1,-128(s0)
    80002ce0:	0047d59b          	srliw	a1,a5,0x4
    80002ce4:	0ac75e63          	bge	a4,a2,80002da0 <__printf+0x668>
    80002ce8:	00f6f693          	andi	a3,a3,15
    80002cec:	00dd86b3          	add	a3,s11,a3
    80002cf0:	0006c603          	lbu	a2,0(a3)
    80002cf4:	00f00693          	li	a3,15
    80002cf8:	0087d79b          	srliw	a5,a5,0x8
    80002cfc:	f8c400a3          	sb	a2,-127(s0)
    80002d00:	d8b6e4e3          	bltu	a3,a1,80002a88 <__printf+0x350>
    80002d04:	00200793          	li	a5,2
    80002d08:	e2dff06f          	j	80002b34 <__printf+0x3fc>
    80002d0c:	00001c97          	auipc	s9,0x1
    80002d10:	45cc8c93          	addi	s9,s9,1116 # 80004168 <_ZZ12printIntegermE6digits+0x148>
    80002d14:	02800513          	li	a0,40
    80002d18:	ef1ff06f          	j	80002c08 <__printf+0x4d0>
    80002d1c:	00700793          	li	a5,7
    80002d20:	00600c93          	li	s9,6
    80002d24:	e0dff06f          	j	80002b30 <__printf+0x3f8>
    80002d28:	00700793          	li	a5,7
    80002d2c:	00600c93          	li	s9,6
    80002d30:	c69ff06f          	j	80002998 <__printf+0x260>
    80002d34:	00300793          	li	a5,3
    80002d38:	00200c93          	li	s9,2
    80002d3c:	c5dff06f          	j	80002998 <__printf+0x260>
    80002d40:	00300793          	li	a5,3
    80002d44:	00200c93          	li	s9,2
    80002d48:	de9ff06f          	j	80002b30 <__printf+0x3f8>
    80002d4c:	00400793          	li	a5,4
    80002d50:	00300c93          	li	s9,3
    80002d54:	dddff06f          	j	80002b30 <__printf+0x3f8>
    80002d58:	00400793          	li	a5,4
    80002d5c:	00300c93          	li	s9,3
    80002d60:	c39ff06f          	j	80002998 <__printf+0x260>
    80002d64:	00500793          	li	a5,5
    80002d68:	00400c93          	li	s9,4
    80002d6c:	c2dff06f          	j	80002998 <__printf+0x260>
    80002d70:	00500793          	li	a5,5
    80002d74:	00400c93          	li	s9,4
    80002d78:	db9ff06f          	j	80002b30 <__printf+0x3f8>
    80002d7c:	00600793          	li	a5,6
    80002d80:	00500c93          	li	s9,5
    80002d84:	dadff06f          	j	80002b30 <__printf+0x3f8>
    80002d88:	00600793          	li	a5,6
    80002d8c:	00500c93          	li	s9,5
    80002d90:	c09ff06f          	j	80002998 <__printf+0x260>
    80002d94:	00800793          	li	a5,8
    80002d98:	00700c93          	li	s9,7
    80002d9c:	bfdff06f          	j	80002998 <__printf+0x260>
    80002da0:	00100793          	li	a5,1
    80002da4:	d91ff06f          	j	80002b34 <__printf+0x3fc>
    80002da8:	00100793          	li	a5,1
    80002dac:	bf1ff06f          	j	8000299c <__printf+0x264>
    80002db0:	00900793          	li	a5,9
    80002db4:	00800c93          	li	s9,8
    80002db8:	be1ff06f          	j	80002998 <__printf+0x260>
    80002dbc:	00001517          	auipc	a0,0x1
    80002dc0:	3b450513          	addi	a0,a0,948 # 80004170 <_ZZ12printIntegermE6digits+0x150>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	918080e7          	jalr	-1768(ra) # 800026dc <panic>

0000000080002dcc <printfinit>:
    80002dcc:	fe010113          	addi	sp,sp,-32
    80002dd0:	00813823          	sd	s0,16(sp)
    80002dd4:	00913423          	sd	s1,8(sp)
    80002dd8:	00113c23          	sd	ra,24(sp)
    80002ddc:	02010413          	addi	s0,sp,32
    80002de0:	00003497          	auipc	s1,0x3
    80002de4:	ad048493          	addi	s1,s1,-1328 # 800058b0 <pr>
    80002de8:	00048513          	mv	a0,s1
    80002dec:	00001597          	auipc	a1,0x1
    80002df0:	39458593          	addi	a1,a1,916 # 80004180 <_ZZ12printIntegermE6digits+0x160>
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	5f4080e7          	jalr	1524(ra) # 800033e8 <initlock>
    80002dfc:	01813083          	ld	ra,24(sp)
    80002e00:	01013403          	ld	s0,16(sp)
    80002e04:	0004ac23          	sw	zero,24(s1)
    80002e08:	00813483          	ld	s1,8(sp)
    80002e0c:	02010113          	addi	sp,sp,32
    80002e10:	00008067          	ret

0000000080002e14 <uartinit>:
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00813423          	sd	s0,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    80002e20:	100007b7          	lui	a5,0x10000
    80002e24:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002e28:	f8000713          	li	a4,-128
    80002e2c:	00e781a3          	sb	a4,3(a5)
    80002e30:	00300713          	li	a4,3
    80002e34:	00e78023          	sb	a4,0(a5)
    80002e38:	000780a3          	sb	zero,1(a5)
    80002e3c:	00e781a3          	sb	a4,3(a5)
    80002e40:	00700693          	li	a3,7
    80002e44:	00d78123          	sb	a3,2(a5)
    80002e48:	00e780a3          	sb	a4,1(a5)
    80002e4c:	00813403          	ld	s0,8(sp)
    80002e50:	01010113          	addi	sp,sp,16
    80002e54:	00008067          	ret

0000000080002e58 <uartputc>:
    80002e58:	00001797          	auipc	a5,0x1
    80002e5c:	7e07a783          	lw	a5,2016(a5) # 80004638 <panicked>
    80002e60:	00078463          	beqz	a5,80002e68 <uartputc+0x10>
    80002e64:	0000006f          	j	80002e64 <uartputc+0xc>
    80002e68:	fd010113          	addi	sp,sp,-48
    80002e6c:	02813023          	sd	s0,32(sp)
    80002e70:	00913c23          	sd	s1,24(sp)
    80002e74:	01213823          	sd	s2,16(sp)
    80002e78:	01313423          	sd	s3,8(sp)
    80002e7c:	02113423          	sd	ra,40(sp)
    80002e80:	03010413          	addi	s0,sp,48
    80002e84:	00001917          	auipc	s2,0x1
    80002e88:	7bc90913          	addi	s2,s2,1980 # 80004640 <uart_tx_r>
    80002e8c:	00093783          	ld	a5,0(s2)
    80002e90:	00001497          	auipc	s1,0x1
    80002e94:	7b848493          	addi	s1,s1,1976 # 80004648 <uart_tx_w>
    80002e98:	0004b703          	ld	a4,0(s1)
    80002e9c:	02078693          	addi	a3,a5,32
    80002ea0:	00050993          	mv	s3,a0
    80002ea4:	02e69c63          	bne	a3,a4,80002edc <uartputc+0x84>
    80002ea8:	00001097          	auipc	ra,0x1
    80002eac:	834080e7          	jalr	-1996(ra) # 800036dc <push_on>
    80002eb0:	00093783          	ld	a5,0(s2)
    80002eb4:	0004b703          	ld	a4,0(s1)
    80002eb8:	02078793          	addi	a5,a5,32
    80002ebc:	00e79463          	bne	a5,a4,80002ec4 <uartputc+0x6c>
    80002ec0:	0000006f          	j	80002ec0 <uartputc+0x68>
    80002ec4:	00001097          	auipc	ra,0x1
    80002ec8:	88c080e7          	jalr	-1908(ra) # 80003750 <pop_on>
    80002ecc:	00093783          	ld	a5,0(s2)
    80002ed0:	0004b703          	ld	a4,0(s1)
    80002ed4:	02078693          	addi	a3,a5,32
    80002ed8:	fce688e3          	beq	a3,a4,80002ea8 <uartputc+0x50>
    80002edc:	01f77693          	andi	a3,a4,31
    80002ee0:	00003597          	auipc	a1,0x3
    80002ee4:	9f058593          	addi	a1,a1,-1552 # 800058d0 <uart_tx_buf>
    80002ee8:	00d586b3          	add	a3,a1,a3
    80002eec:	00170713          	addi	a4,a4,1
    80002ef0:	01368023          	sb	s3,0(a3)
    80002ef4:	00e4b023          	sd	a4,0(s1)
    80002ef8:	10000637          	lui	a2,0x10000
    80002efc:	02f71063          	bne	a4,a5,80002f1c <uartputc+0xc4>
    80002f00:	0340006f          	j	80002f34 <uartputc+0xdc>
    80002f04:	00074703          	lbu	a4,0(a4)
    80002f08:	00f93023          	sd	a5,0(s2)
    80002f0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002f10:	00093783          	ld	a5,0(s2)
    80002f14:	0004b703          	ld	a4,0(s1)
    80002f18:	00f70e63          	beq	a4,a5,80002f34 <uartputc+0xdc>
    80002f1c:	00564683          	lbu	a3,5(a2)
    80002f20:	01f7f713          	andi	a4,a5,31
    80002f24:	00e58733          	add	a4,a1,a4
    80002f28:	0206f693          	andi	a3,a3,32
    80002f2c:	00178793          	addi	a5,a5,1
    80002f30:	fc069ae3          	bnez	a3,80002f04 <uartputc+0xac>
    80002f34:	02813083          	ld	ra,40(sp)
    80002f38:	02013403          	ld	s0,32(sp)
    80002f3c:	01813483          	ld	s1,24(sp)
    80002f40:	01013903          	ld	s2,16(sp)
    80002f44:	00813983          	ld	s3,8(sp)
    80002f48:	03010113          	addi	sp,sp,48
    80002f4c:	00008067          	ret

0000000080002f50 <uartputc_sync>:
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00813423          	sd	s0,8(sp)
    80002f58:	01010413          	addi	s0,sp,16
    80002f5c:	00001717          	auipc	a4,0x1
    80002f60:	6dc72703          	lw	a4,1756(a4) # 80004638 <panicked>
    80002f64:	02071663          	bnez	a4,80002f90 <uartputc_sync+0x40>
    80002f68:	00050793          	mv	a5,a0
    80002f6c:	100006b7          	lui	a3,0x10000
    80002f70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002f74:	02077713          	andi	a4,a4,32
    80002f78:	fe070ce3          	beqz	a4,80002f70 <uartputc_sync+0x20>
    80002f7c:	0ff7f793          	andi	a5,a5,255
    80002f80:	00f68023          	sb	a5,0(a3)
    80002f84:	00813403          	ld	s0,8(sp)
    80002f88:	01010113          	addi	sp,sp,16
    80002f8c:	00008067          	ret
    80002f90:	0000006f          	j	80002f90 <uartputc_sync+0x40>

0000000080002f94 <uartstart>:
    80002f94:	ff010113          	addi	sp,sp,-16
    80002f98:	00813423          	sd	s0,8(sp)
    80002f9c:	01010413          	addi	s0,sp,16
    80002fa0:	00001617          	auipc	a2,0x1
    80002fa4:	6a060613          	addi	a2,a2,1696 # 80004640 <uart_tx_r>
    80002fa8:	00001517          	auipc	a0,0x1
    80002fac:	6a050513          	addi	a0,a0,1696 # 80004648 <uart_tx_w>
    80002fb0:	00063783          	ld	a5,0(a2)
    80002fb4:	00053703          	ld	a4,0(a0)
    80002fb8:	04f70263          	beq	a4,a5,80002ffc <uartstart+0x68>
    80002fbc:	100005b7          	lui	a1,0x10000
    80002fc0:	00003817          	auipc	a6,0x3
    80002fc4:	91080813          	addi	a6,a6,-1776 # 800058d0 <uart_tx_buf>
    80002fc8:	01c0006f          	j	80002fe4 <uartstart+0x50>
    80002fcc:	0006c703          	lbu	a4,0(a3)
    80002fd0:	00f63023          	sd	a5,0(a2)
    80002fd4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002fd8:	00063783          	ld	a5,0(a2)
    80002fdc:	00053703          	ld	a4,0(a0)
    80002fe0:	00f70e63          	beq	a4,a5,80002ffc <uartstart+0x68>
    80002fe4:	01f7f713          	andi	a4,a5,31
    80002fe8:	00e806b3          	add	a3,a6,a4
    80002fec:	0055c703          	lbu	a4,5(a1)
    80002ff0:	00178793          	addi	a5,a5,1
    80002ff4:	02077713          	andi	a4,a4,32
    80002ff8:	fc071ae3          	bnez	a4,80002fcc <uartstart+0x38>
    80002ffc:	00813403          	ld	s0,8(sp)
    80003000:	01010113          	addi	sp,sp,16
    80003004:	00008067          	ret

0000000080003008 <uartgetc>:
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00813423          	sd	s0,8(sp)
    80003010:	01010413          	addi	s0,sp,16
    80003014:	10000737          	lui	a4,0x10000
    80003018:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000301c:	0017f793          	andi	a5,a5,1
    80003020:	00078c63          	beqz	a5,80003038 <uartgetc+0x30>
    80003024:	00074503          	lbu	a0,0(a4)
    80003028:	0ff57513          	andi	a0,a0,255
    8000302c:	00813403          	ld	s0,8(sp)
    80003030:	01010113          	addi	sp,sp,16
    80003034:	00008067          	ret
    80003038:	fff00513          	li	a0,-1
    8000303c:	ff1ff06f          	j	8000302c <uartgetc+0x24>

0000000080003040 <uartintr>:
    80003040:	100007b7          	lui	a5,0x10000
    80003044:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003048:	0017f793          	andi	a5,a5,1
    8000304c:	0a078463          	beqz	a5,800030f4 <uartintr+0xb4>
    80003050:	fe010113          	addi	sp,sp,-32
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00913423          	sd	s1,8(sp)
    8000305c:	00113c23          	sd	ra,24(sp)
    80003060:	02010413          	addi	s0,sp,32
    80003064:	100004b7          	lui	s1,0x10000
    80003068:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000306c:	0ff57513          	andi	a0,a0,255
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	534080e7          	jalr	1332(ra) # 800025a4 <consoleintr>
    80003078:	0054c783          	lbu	a5,5(s1)
    8000307c:	0017f793          	andi	a5,a5,1
    80003080:	fe0794e3          	bnez	a5,80003068 <uartintr+0x28>
    80003084:	00001617          	auipc	a2,0x1
    80003088:	5bc60613          	addi	a2,a2,1468 # 80004640 <uart_tx_r>
    8000308c:	00001517          	auipc	a0,0x1
    80003090:	5bc50513          	addi	a0,a0,1468 # 80004648 <uart_tx_w>
    80003094:	00063783          	ld	a5,0(a2)
    80003098:	00053703          	ld	a4,0(a0)
    8000309c:	04f70263          	beq	a4,a5,800030e0 <uartintr+0xa0>
    800030a0:	100005b7          	lui	a1,0x10000
    800030a4:	00003817          	auipc	a6,0x3
    800030a8:	82c80813          	addi	a6,a6,-2004 # 800058d0 <uart_tx_buf>
    800030ac:	01c0006f          	j	800030c8 <uartintr+0x88>
    800030b0:	0006c703          	lbu	a4,0(a3)
    800030b4:	00f63023          	sd	a5,0(a2)
    800030b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030bc:	00063783          	ld	a5,0(a2)
    800030c0:	00053703          	ld	a4,0(a0)
    800030c4:	00f70e63          	beq	a4,a5,800030e0 <uartintr+0xa0>
    800030c8:	01f7f713          	andi	a4,a5,31
    800030cc:	00e806b3          	add	a3,a6,a4
    800030d0:	0055c703          	lbu	a4,5(a1)
    800030d4:	00178793          	addi	a5,a5,1
    800030d8:	02077713          	andi	a4,a4,32
    800030dc:	fc071ae3          	bnez	a4,800030b0 <uartintr+0x70>
    800030e0:	01813083          	ld	ra,24(sp)
    800030e4:	01013403          	ld	s0,16(sp)
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret
    800030f4:	00001617          	auipc	a2,0x1
    800030f8:	54c60613          	addi	a2,a2,1356 # 80004640 <uart_tx_r>
    800030fc:	00001517          	auipc	a0,0x1
    80003100:	54c50513          	addi	a0,a0,1356 # 80004648 <uart_tx_w>
    80003104:	00063783          	ld	a5,0(a2)
    80003108:	00053703          	ld	a4,0(a0)
    8000310c:	04f70263          	beq	a4,a5,80003150 <uartintr+0x110>
    80003110:	100005b7          	lui	a1,0x10000
    80003114:	00002817          	auipc	a6,0x2
    80003118:	7bc80813          	addi	a6,a6,1980 # 800058d0 <uart_tx_buf>
    8000311c:	01c0006f          	j	80003138 <uartintr+0xf8>
    80003120:	0006c703          	lbu	a4,0(a3)
    80003124:	00f63023          	sd	a5,0(a2)
    80003128:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000312c:	00063783          	ld	a5,0(a2)
    80003130:	00053703          	ld	a4,0(a0)
    80003134:	02f70063          	beq	a4,a5,80003154 <uartintr+0x114>
    80003138:	01f7f713          	andi	a4,a5,31
    8000313c:	00e806b3          	add	a3,a6,a4
    80003140:	0055c703          	lbu	a4,5(a1)
    80003144:	00178793          	addi	a5,a5,1
    80003148:	02077713          	andi	a4,a4,32
    8000314c:	fc071ae3          	bnez	a4,80003120 <uartintr+0xe0>
    80003150:	00008067          	ret
    80003154:	00008067          	ret

0000000080003158 <kinit>:
    80003158:	fc010113          	addi	sp,sp,-64
    8000315c:	02913423          	sd	s1,40(sp)
    80003160:	fffff7b7          	lui	a5,0xfffff
    80003164:	00003497          	auipc	s1,0x3
    80003168:	79b48493          	addi	s1,s1,1947 # 800068ff <end+0xfff>
    8000316c:	02813823          	sd	s0,48(sp)
    80003170:	01313c23          	sd	s3,24(sp)
    80003174:	00f4f4b3          	and	s1,s1,a5
    80003178:	02113c23          	sd	ra,56(sp)
    8000317c:	03213023          	sd	s2,32(sp)
    80003180:	01413823          	sd	s4,16(sp)
    80003184:	01513423          	sd	s5,8(sp)
    80003188:	04010413          	addi	s0,sp,64
    8000318c:	000017b7          	lui	a5,0x1
    80003190:	01100993          	li	s3,17
    80003194:	00f487b3          	add	a5,s1,a5
    80003198:	01b99993          	slli	s3,s3,0x1b
    8000319c:	06f9e063          	bltu	s3,a5,800031fc <kinit+0xa4>
    800031a0:	00002a97          	auipc	s5,0x2
    800031a4:	760a8a93          	addi	s5,s5,1888 # 80005900 <end>
    800031a8:	0754ec63          	bltu	s1,s5,80003220 <kinit+0xc8>
    800031ac:	0734fa63          	bgeu	s1,s3,80003220 <kinit+0xc8>
    800031b0:	00088a37          	lui	s4,0x88
    800031b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800031b8:	00001917          	auipc	s2,0x1
    800031bc:	49890913          	addi	s2,s2,1176 # 80004650 <kmem>
    800031c0:	00ca1a13          	slli	s4,s4,0xc
    800031c4:	0140006f          	j	800031d8 <kinit+0x80>
    800031c8:	000017b7          	lui	a5,0x1
    800031cc:	00f484b3          	add	s1,s1,a5
    800031d0:	0554e863          	bltu	s1,s5,80003220 <kinit+0xc8>
    800031d4:	0534f663          	bgeu	s1,s3,80003220 <kinit+0xc8>
    800031d8:	00001637          	lui	a2,0x1
    800031dc:	00100593          	li	a1,1
    800031e0:	00048513          	mv	a0,s1
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	5e4080e7          	jalr	1508(ra) # 800037c8 <__memset>
    800031ec:	00093783          	ld	a5,0(s2)
    800031f0:	00f4b023          	sd	a5,0(s1)
    800031f4:	00993023          	sd	s1,0(s2)
    800031f8:	fd4498e3          	bne	s1,s4,800031c8 <kinit+0x70>
    800031fc:	03813083          	ld	ra,56(sp)
    80003200:	03013403          	ld	s0,48(sp)
    80003204:	02813483          	ld	s1,40(sp)
    80003208:	02013903          	ld	s2,32(sp)
    8000320c:	01813983          	ld	s3,24(sp)
    80003210:	01013a03          	ld	s4,16(sp)
    80003214:	00813a83          	ld	s5,8(sp)
    80003218:	04010113          	addi	sp,sp,64
    8000321c:	00008067          	ret
    80003220:	00001517          	auipc	a0,0x1
    80003224:	f8050513          	addi	a0,a0,-128 # 800041a0 <digits+0x18>
    80003228:	fffff097          	auipc	ra,0xfffff
    8000322c:	4b4080e7          	jalr	1204(ra) # 800026dc <panic>

0000000080003230 <freerange>:
    80003230:	fc010113          	addi	sp,sp,-64
    80003234:	000017b7          	lui	a5,0x1
    80003238:	02913423          	sd	s1,40(sp)
    8000323c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003240:	009504b3          	add	s1,a0,s1
    80003244:	fffff537          	lui	a0,0xfffff
    80003248:	02813823          	sd	s0,48(sp)
    8000324c:	02113c23          	sd	ra,56(sp)
    80003250:	03213023          	sd	s2,32(sp)
    80003254:	01313c23          	sd	s3,24(sp)
    80003258:	01413823          	sd	s4,16(sp)
    8000325c:	01513423          	sd	s5,8(sp)
    80003260:	01613023          	sd	s6,0(sp)
    80003264:	04010413          	addi	s0,sp,64
    80003268:	00a4f4b3          	and	s1,s1,a0
    8000326c:	00f487b3          	add	a5,s1,a5
    80003270:	06f5e463          	bltu	a1,a5,800032d8 <freerange+0xa8>
    80003274:	00002a97          	auipc	s5,0x2
    80003278:	68ca8a93          	addi	s5,s5,1676 # 80005900 <end>
    8000327c:	0954e263          	bltu	s1,s5,80003300 <freerange+0xd0>
    80003280:	01100993          	li	s3,17
    80003284:	01b99993          	slli	s3,s3,0x1b
    80003288:	0734fc63          	bgeu	s1,s3,80003300 <freerange+0xd0>
    8000328c:	00058a13          	mv	s4,a1
    80003290:	00001917          	auipc	s2,0x1
    80003294:	3c090913          	addi	s2,s2,960 # 80004650 <kmem>
    80003298:	00002b37          	lui	s6,0x2
    8000329c:	0140006f          	j	800032b0 <freerange+0x80>
    800032a0:	000017b7          	lui	a5,0x1
    800032a4:	00f484b3          	add	s1,s1,a5
    800032a8:	0554ec63          	bltu	s1,s5,80003300 <freerange+0xd0>
    800032ac:	0534fa63          	bgeu	s1,s3,80003300 <freerange+0xd0>
    800032b0:	00001637          	lui	a2,0x1
    800032b4:	00100593          	li	a1,1
    800032b8:	00048513          	mv	a0,s1
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	50c080e7          	jalr	1292(ra) # 800037c8 <__memset>
    800032c4:	00093703          	ld	a4,0(s2)
    800032c8:	016487b3          	add	a5,s1,s6
    800032cc:	00e4b023          	sd	a4,0(s1)
    800032d0:	00993023          	sd	s1,0(s2)
    800032d4:	fcfa76e3          	bgeu	s4,a5,800032a0 <freerange+0x70>
    800032d8:	03813083          	ld	ra,56(sp)
    800032dc:	03013403          	ld	s0,48(sp)
    800032e0:	02813483          	ld	s1,40(sp)
    800032e4:	02013903          	ld	s2,32(sp)
    800032e8:	01813983          	ld	s3,24(sp)
    800032ec:	01013a03          	ld	s4,16(sp)
    800032f0:	00813a83          	ld	s5,8(sp)
    800032f4:	00013b03          	ld	s6,0(sp)
    800032f8:	04010113          	addi	sp,sp,64
    800032fc:	00008067          	ret
    80003300:	00001517          	auipc	a0,0x1
    80003304:	ea050513          	addi	a0,a0,-352 # 800041a0 <digits+0x18>
    80003308:	fffff097          	auipc	ra,0xfffff
    8000330c:	3d4080e7          	jalr	980(ra) # 800026dc <panic>

0000000080003310 <kfree>:
    80003310:	fe010113          	addi	sp,sp,-32
    80003314:	00813823          	sd	s0,16(sp)
    80003318:	00113c23          	sd	ra,24(sp)
    8000331c:	00913423          	sd	s1,8(sp)
    80003320:	02010413          	addi	s0,sp,32
    80003324:	03451793          	slli	a5,a0,0x34
    80003328:	04079c63          	bnez	a5,80003380 <kfree+0x70>
    8000332c:	00002797          	auipc	a5,0x2
    80003330:	5d478793          	addi	a5,a5,1492 # 80005900 <end>
    80003334:	00050493          	mv	s1,a0
    80003338:	04f56463          	bltu	a0,a5,80003380 <kfree+0x70>
    8000333c:	01100793          	li	a5,17
    80003340:	01b79793          	slli	a5,a5,0x1b
    80003344:	02f57e63          	bgeu	a0,a5,80003380 <kfree+0x70>
    80003348:	00001637          	lui	a2,0x1
    8000334c:	00100593          	li	a1,1
    80003350:	00000097          	auipc	ra,0x0
    80003354:	478080e7          	jalr	1144(ra) # 800037c8 <__memset>
    80003358:	00001797          	auipc	a5,0x1
    8000335c:	2f878793          	addi	a5,a5,760 # 80004650 <kmem>
    80003360:	0007b703          	ld	a4,0(a5)
    80003364:	01813083          	ld	ra,24(sp)
    80003368:	01013403          	ld	s0,16(sp)
    8000336c:	00e4b023          	sd	a4,0(s1)
    80003370:	0097b023          	sd	s1,0(a5)
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	02010113          	addi	sp,sp,32
    8000337c:	00008067          	ret
    80003380:	00001517          	auipc	a0,0x1
    80003384:	e2050513          	addi	a0,a0,-480 # 800041a0 <digits+0x18>
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	354080e7          	jalr	852(ra) # 800026dc <panic>

0000000080003390 <kalloc>:
    80003390:	fe010113          	addi	sp,sp,-32
    80003394:	00813823          	sd	s0,16(sp)
    80003398:	00913423          	sd	s1,8(sp)
    8000339c:	00113c23          	sd	ra,24(sp)
    800033a0:	02010413          	addi	s0,sp,32
    800033a4:	00001797          	auipc	a5,0x1
    800033a8:	2ac78793          	addi	a5,a5,684 # 80004650 <kmem>
    800033ac:	0007b483          	ld	s1,0(a5)
    800033b0:	02048063          	beqz	s1,800033d0 <kalloc+0x40>
    800033b4:	0004b703          	ld	a4,0(s1)
    800033b8:	00001637          	lui	a2,0x1
    800033bc:	00500593          	li	a1,5
    800033c0:	00048513          	mv	a0,s1
    800033c4:	00e7b023          	sd	a4,0(a5)
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	400080e7          	jalr	1024(ra) # 800037c8 <__memset>
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	01013403          	ld	s0,16(sp)
    800033d8:	00048513          	mv	a0,s1
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret

00000000800033e8 <initlock>:
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00813423          	sd	s0,8(sp)
    800033f0:	01010413          	addi	s0,sp,16
    800033f4:	00813403          	ld	s0,8(sp)
    800033f8:	00b53423          	sd	a1,8(a0)
    800033fc:	00052023          	sw	zero,0(a0)
    80003400:	00053823          	sd	zero,16(a0)
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00008067          	ret

000000008000340c <acquire>:
    8000340c:	fe010113          	addi	sp,sp,-32
    80003410:	00813823          	sd	s0,16(sp)
    80003414:	00913423          	sd	s1,8(sp)
    80003418:	00113c23          	sd	ra,24(sp)
    8000341c:	01213023          	sd	s2,0(sp)
    80003420:	02010413          	addi	s0,sp,32
    80003424:	00050493          	mv	s1,a0
    80003428:	10002973          	csrr	s2,sstatus
    8000342c:	100027f3          	csrr	a5,sstatus
    80003430:	ffd7f793          	andi	a5,a5,-3
    80003434:	10079073          	csrw	sstatus,a5
    80003438:	fffff097          	auipc	ra,0xfffff
    8000343c:	8e4080e7          	jalr	-1820(ra) # 80001d1c <mycpu>
    80003440:	07852783          	lw	a5,120(a0)
    80003444:	06078e63          	beqz	a5,800034c0 <acquire+0xb4>
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	8d4080e7          	jalr	-1836(ra) # 80001d1c <mycpu>
    80003450:	07852783          	lw	a5,120(a0)
    80003454:	0004a703          	lw	a4,0(s1)
    80003458:	0017879b          	addiw	a5,a5,1
    8000345c:	06f52c23          	sw	a5,120(a0)
    80003460:	04071063          	bnez	a4,800034a0 <acquire+0x94>
    80003464:	00100713          	li	a4,1
    80003468:	00070793          	mv	a5,a4
    8000346c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003470:	0007879b          	sext.w	a5,a5
    80003474:	fe079ae3          	bnez	a5,80003468 <acquire+0x5c>
    80003478:	0ff0000f          	fence
    8000347c:	fffff097          	auipc	ra,0xfffff
    80003480:	8a0080e7          	jalr	-1888(ra) # 80001d1c <mycpu>
    80003484:	01813083          	ld	ra,24(sp)
    80003488:	01013403          	ld	s0,16(sp)
    8000348c:	00a4b823          	sd	a0,16(s1)
    80003490:	00013903          	ld	s2,0(sp)
    80003494:	00813483          	ld	s1,8(sp)
    80003498:	02010113          	addi	sp,sp,32
    8000349c:	00008067          	ret
    800034a0:	0104b903          	ld	s2,16(s1)
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	878080e7          	jalr	-1928(ra) # 80001d1c <mycpu>
    800034ac:	faa91ce3          	bne	s2,a0,80003464 <acquire+0x58>
    800034b0:	00001517          	auipc	a0,0x1
    800034b4:	cf850513          	addi	a0,a0,-776 # 800041a8 <digits+0x20>
    800034b8:	fffff097          	auipc	ra,0xfffff
    800034bc:	224080e7          	jalr	548(ra) # 800026dc <panic>
    800034c0:	00195913          	srli	s2,s2,0x1
    800034c4:	fffff097          	auipc	ra,0xfffff
    800034c8:	858080e7          	jalr	-1960(ra) # 80001d1c <mycpu>
    800034cc:	00197913          	andi	s2,s2,1
    800034d0:	07252e23          	sw	s2,124(a0)
    800034d4:	f75ff06f          	j	80003448 <acquire+0x3c>

00000000800034d8 <release>:
    800034d8:	fe010113          	addi	sp,sp,-32
    800034dc:	00813823          	sd	s0,16(sp)
    800034e0:	00113c23          	sd	ra,24(sp)
    800034e4:	00913423          	sd	s1,8(sp)
    800034e8:	01213023          	sd	s2,0(sp)
    800034ec:	02010413          	addi	s0,sp,32
    800034f0:	00052783          	lw	a5,0(a0)
    800034f4:	00079a63          	bnez	a5,80003508 <release+0x30>
    800034f8:	00001517          	auipc	a0,0x1
    800034fc:	cb850513          	addi	a0,a0,-840 # 800041b0 <digits+0x28>
    80003500:	fffff097          	auipc	ra,0xfffff
    80003504:	1dc080e7          	jalr	476(ra) # 800026dc <panic>
    80003508:	01053903          	ld	s2,16(a0)
    8000350c:	00050493          	mv	s1,a0
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	80c080e7          	jalr	-2036(ra) # 80001d1c <mycpu>
    80003518:	fea910e3          	bne	s2,a0,800034f8 <release+0x20>
    8000351c:	0004b823          	sd	zero,16(s1)
    80003520:	0ff0000f          	fence
    80003524:	0f50000f          	fence	iorw,ow
    80003528:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000352c:	ffffe097          	auipc	ra,0xffffe
    80003530:	7f0080e7          	jalr	2032(ra) # 80001d1c <mycpu>
    80003534:	100027f3          	csrr	a5,sstatus
    80003538:	0027f793          	andi	a5,a5,2
    8000353c:	04079a63          	bnez	a5,80003590 <release+0xb8>
    80003540:	07852783          	lw	a5,120(a0)
    80003544:	02f05e63          	blez	a5,80003580 <release+0xa8>
    80003548:	fff7871b          	addiw	a4,a5,-1
    8000354c:	06e52c23          	sw	a4,120(a0)
    80003550:	00071c63          	bnez	a4,80003568 <release+0x90>
    80003554:	07c52783          	lw	a5,124(a0)
    80003558:	00078863          	beqz	a5,80003568 <release+0x90>
    8000355c:	100027f3          	csrr	a5,sstatus
    80003560:	0027e793          	ori	a5,a5,2
    80003564:	10079073          	csrw	sstatus,a5
    80003568:	01813083          	ld	ra,24(sp)
    8000356c:	01013403          	ld	s0,16(sp)
    80003570:	00813483          	ld	s1,8(sp)
    80003574:	00013903          	ld	s2,0(sp)
    80003578:	02010113          	addi	sp,sp,32
    8000357c:	00008067          	ret
    80003580:	00001517          	auipc	a0,0x1
    80003584:	c5050513          	addi	a0,a0,-944 # 800041d0 <digits+0x48>
    80003588:	fffff097          	auipc	ra,0xfffff
    8000358c:	154080e7          	jalr	340(ra) # 800026dc <panic>
    80003590:	00001517          	auipc	a0,0x1
    80003594:	c2850513          	addi	a0,a0,-984 # 800041b8 <digits+0x30>
    80003598:	fffff097          	auipc	ra,0xfffff
    8000359c:	144080e7          	jalr	324(ra) # 800026dc <panic>

00000000800035a0 <holding>:
    800035a0:	00052783          	lw	a5,0(a0)
    800035a4:	00079663          	bnez	a5,800035b0 <holding+0x10>
    800035a8:	00000513          	li	a0,0
    800035ac:	00008067          	ret
    800035b0:	fe010113          	addi	sp,sp,-32
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00913423          	sd	s1,8(sp)
    800035bc:	00113c23          	sd	ra,24(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	01053483          	ld	s1,16(a0)
    800035c8:	ffffe097          	auipc	ra,0xffffe
    800035cc:	754080e7          	jalr	1876(ra) # 80001d1c <mycpu>
    800035d0:	01813083          	ld	ra,24(sp)
    800035d4:	01013403          	ld	s0,16(sp)
    800035d8:	40a48533          	sub	a0,s1,a0
    800035dc:	00153513          	seqz	a0,a0
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	02010113          	addi	sp,sp,32
    800035e8:	00008067          	ret

00000000800035ec <push_off>:
    800035ec:	fe010113          	addi	sp,sp,-32
    800035f0:	00813823          	sd	s0,16(sp)
    800035f4:	00113c23          	sd	ra,24(sp)
    800035f8:	00913423          	sd	s1,8(sp)
    800035fc:	02010413          	addi	s0,sp,32
    80003600:	100024f3          	csrr	s1,sstatus
    80003604:	100027f3          	csrr	a5,sstatus
    80003608:	ffd7f793          	andi	a5,a5,-3
    8000360c:	10079073          	csrw	sstatus,a5
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	70c080e7          	jalr	1804(ra) # 80001d1c <mycpu>
    80003618:	07852783          	lw	a5,120(a0)
    8000361c:	02078663          	beqz	a5,80003648 <push_off+0x5c>
    80003620:	ffffe097          	auipc	ra,0xffffe
    80003624:	6fc080e7          	jalr	1788(ra) # 80001d1c <mycpu>
    80003628:	07852783          	lw	a5,120(a0)
    8000362c:	01813083          	ld	ra,24(sp)
    80003630:	01013403          	ld	s0,16(sp)
    80003634:	0017879b          	addiw	a5,a5,1
    80003638:	06f52c23          	sw	a5,120(a0)
    8000363c:	00813483          	ld	s1,8(sp)
    80003640:	02010113          	addi	sp,sp,32
    80003644:	00008067          	ret
    80003648:	0014d493          	srli	s1,s1,0x1
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	6d0080e7          	jalr	1744(ra) # 80001d1c <mycpu>
    80003654:	0014f493          	andi	s1,s1,1
    80003658:	06952e23          	sw	s1,124(a0)
    8000365c:	fc5ff06f          	j	80003620 <push_off+0x34>

0000000080003660 <pop_off>:
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00813023          	sd	s0,0(sp)
    80003668:	00113423          	sd	ra,8(sp)
    8000366c:	01010413          	addi	s0,sp,16
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	6ac080e7          	jalr	1708(ra) # 80001d1c <mycpu>
    80003678:	100027f3          	csrr	a5,sstatus
    8000367c:	0027f793          	andi	a5,a5,2
    80003680:	04079663          	bnez	a5,800036cc <pop_off+0x6c>
    80003684:	07852783          	lw	a5,120(a0)
    80003688:	02f05a63          	blez	a5,800036bc <pop_off+0x5c>
    8000368c:	fff7871b          	addiw	a4,a5,-1
    80003690:	06e52c23          	sw	a4,120(a0)
    80003694:	00071c63          	bnez	a4,800036ac <pop_off+0x4c>
    80003698:	07c52783          	lw	a5,124(a0)
    8000369c:	00078863          	beqz	a5,800036ac <pop_off+0x4c>
    800036a0:	100027f3          	csrr	a5,sstatus
    800036a4:	0027e793          	ori	a5,a5,2
    800036a8:	10079073          	csrw	sstatus,a5
    800036ac:	00813083          	ld	ra,8(sp)
    800036b0:	00013403          	ld	s0,0(sp)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret
    800036bc:	00001517          	auipc	a0,0x1
    800036c0:	b1450513          	addi	a0,a0,-1260 # 800041d0 <digits+0x48>
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	018080e7          	jalr	24(ra) # 800026dc <panic>
    800036cc:	00001517          	auipc	a0,0x1
    800036d0:	aec50513          	addi	a0,a0,-1300 # 800041b8 <digits+0x30>
    800036d4:	fffff097          	auipc	ra,0xfffff
    800036d8:	008080e7          	jalr	8(ra) # 800026dc <panic>

00000000800036dc <push_on>:
    800036dc:	fe010113          	addi	sp,sp,-32
    800036e0:	00813823          	sd	s0,16(sp)
    800036e4:	00113c23          	sd	ra,24(sp)
    800036e8:	00913423          	sd	s1,8(sp)
    800036ec:	02010413          	addi	s0,sp,32
    800036f0:	100024f3          	csrr	s1,sstatus
    800036f4:	100027f3          	csrr	a5,sstatus
    800036f8:	0027e793          	ori	a5,a5,2
    800036fc:	10079073          	csrw	sstatus,a5
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	61c080e7          	jalr	1564(ra) # 80001d1c <mycpu>
    80003708:	07852783          	lw	a5,120(a0)
    8000370c:	02078663          	beqz	a5,80003738 <push_on+0x5c>
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	60c080e7          	jalr	1548(ra) # 80001d1c <mycpu>
    80003718:	07852783          	lw	a5,120(a0)
    8000371c:	01813083          	ld	ra,24(sp)
    80003720:	01013403          	ld	s0,16(sp)
    80003724:	0017879b          	addiw	a5,a5,1
    80003728:	06f52c23          	sw	a5,120(a0)
    8000372c:	00813483          	ld	s1,8(sp)
    80003730:	02010113          	addi	sp,sp,32
    80003734:	00008067          	ret
    80003738:	0014d493          	srli	s1,s1,0x1
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	5e0080e7          	jalr	1504(ra) # 80001d1c <mycpu>
    80003744:	0014f493          	andi	s1,s1,1
    80003748:	06952e23          	sw	s1,124(a0)
    8000374c:	fc5ff06f          	j	80003710 <push_on+0x34>

0000000080003750 <pop_on>:
    80003750:	ff010113          	addi	sp,sp,-16
    80003754:	00813023          	sd	s0,0(sp)
    80003758:	00113423          	sd	ra,8(sp)
    8000375c:	01010413          	addi	s0,sp,16
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	5bc080e7          	jalr	1468(ra) # 80001d1c <mycpu>
    80003768:	100027f3          	csrr	a5,sstatus
    8000376c:	0027f793          	andi	a5,a5,2
    80003770:	04078463          	beqz	a5,800037b8 <pop_on+0x68>
    80003774:	07852783          	lw	a5,120(a0)
    80003778:	02f05863          	blez	a5,800037a8 <pop_on+0x58>
    8000377c:	fff7879b          	addiw	a5,a5,-1
    80003780:	06f52c23          	sw	a5,120(a0)
    80003784:	07853783          	ld	a5,120(a0)
    80003788:	00079863          	bnez	a5,80003798 <pop_on+0x48>
    8000378c:	100027f3          	csrr	a5,sstatus
    80003790:	ffd7f793          	andi	a5,a5,-3
    80003794:	10079073          	csrw	sstatus,a5
    80003798:	00813083          	ld	ra,8(sp)
    8000379c:	00013403          	ld	s0,0(sp)
    800037a0:	01010113          	addi	sp,sp,16
    800037a4:	00008067          	ret
    800037a8:	00001517          	auipc	a0,0x1
    800037ac:	a5050513          	addi	a0,a0,-1456 # 800041f8 <digits+0x70>
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	f2c080e7          	jalr	-212(ra) # 800026dc <panic>
    800037b8:	00001517          	auipc	a0,0x1
    800037bc:	a2050513          	addi	a0,a0,-1504 # 800041d8 <digits+0x50>
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	f1c080e7          	jalr	-228(ra) # 800026dc <panic>

00000000800037c8 <__memset>:
    800037c8:	ff010113          	addi	sp,sp,-16
    800037cc:	00813423          	sd	s0,8(sp)
    800037d0:	01010413          	addi	s0,sp,16
    800037d4:	1a060e63          	beqz	a2,80003990 <__memset+0x1c8>
    800037d8:	40a007b3          	neg	a5,a0
    800037dc:	0077f793          	andi	a5,a5,7
    800037e0:	00778693          	addi	a3,a5,7
    800037e4:	00b00813          	li	a6,11
    800037e8:	0ff5f593          	andi	a1,a1,255
    800037ec:	fff6071b          	addiw	a4,a2,-1
    800037f0:	1b06e663          	bltu	a3,a6,8000399c <__memset+0x1d4>
    800037f4:	1cd76463          	bltu	a4,a3,800039bc <__memset+0x1f4>
    800037f8:	1a078e63          	beqz	a5,800039b4 <__memset+0x1ec>
    800037fc:	00b50023          	sb	a1,0(a0)
    80003800:	00100713          	li	a4,1
    80003804:	1ae78463          	beq	a5,a4,800039ac <__memset+0x1e4>
    80003808:	00b500a3          	sb	a1,1(a0)
    8000380c:	00200713          	li	a4,2
    80003810:	1ae78a63          	beq	a5,a4,800039c4 <__memset+0x1fc>
    80003814:	00b50123          	sb	a1,2(a0)
    80003818:	00300713          	li	a4,3
    8000381c:	18e78463          	beq	a5,a4,800039a4 <__memset+0x1dc>
    80003820:	00b501a3          	sb	a1,3(a0)
    80003824:	00400713          	li	a4,4
    80003828:	1ae78263          	beq	a5,a4,800039cc <__memset+0x204>
    8000382c:	00b50223          	sb	a1,4(a0)
    80003830:	00500713          	li	a4,5
    80003834:	1ae78063          	beq	a5,a4,800039d4 <__memset+0x20c>
    80003838:	00b502a3          	sb	a1,5(a0)
    8000383c:	00700713          	li	a4,7
    80003840:	18e79e63          	bne	a5,a4,800039dc <__memset+0x214>
    80003844:	00b50323          	sb	a1,6(a0)
    80003848:	00700e93          	li	t4,7
    8000384c:	00859713          	slli	a4,a1,0x8
    80003850:	00e5e733          	or	a4,a1,a4
    80003854:	01059e13          	slli	t3,a1,0x10
    80003858:	01c76e33          	or	t3,a4,t3
    8000385c:	01859313          	slli	t1,a1,0x18
    80003860:	006e6333          	or	t1,t3,t1
    80003864:	02059893          	slli	a7,a1,0x20
    80003868:	40f60e3b          	subw	t3,a2,a5
    8000386c:	011368b3          	or	a7,t1,a7
    80003870:	02859813          	slli	a6,a1,0x28
    80003874:	0108e833          	or	a6,a7,a6
    80003878:	03059693          	slli	a3,a1,0x30
    8000387c:	003e589b          	srliw	a7,t3,0x3
    80003880:	00d866b3          	or	a3,a6,a3
    80003884:	03859713          	slli	a4,a1,0x38
    80003888:	00389813          	slli	a6,a7,0x3
    8000388c:	00f507b3          	add	a5,a0,a5
    80003890:	00e6e733          	or	a4,a3,a4
    80003894:	000e089b          	sext.w	a7,t3
    80003898:	00f806b3          	add	a3,a6,a5
    8000389c:	00e7b023          	sd	a4,0(a5)
    800038a0:	00878793          	addi	a5,a5,8
    800038a4:	fed79ce3          	bne	a5,a3,8000389c <__memset+0xd4>
    800038a8:	ff8e7793          	andi	a5,t3,-8
    800038ac:	0007871b          	sext.w	a4,a5
    800038b0:	01d787bb          	addw	a5,a5,t4
    800038b4:	0ce88e63          	beq	a7,a4,80003990 <__memset+0x1c8>
    800038b8:	00f50733          	add	a4,a0,a5
    800038bc:	00b70023          	sb	a1,0(a4)
    800038c0:	0017871b          	addiw	a4,a5,1
    800038c4:	0cc77663          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    800038c8:	00e50733          	add	a4,a0,a4
    800038cc:	00b70023          	sb	a1,0(a4)
    800038d0:	0027871b          	addiw	a4,a5,2
    800038d4:	0ac77e63          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    800038d8:	00e50733          	add	a4,a0,a4
    800038dc:	00b70023          	sb	a1,0(a4)
    800038e0:	0037871b          	addiw	a4,a5,3
    800038e4:	0ac77663          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    800038e8:	00e50733          	add	a4,a0,a4
    800038ec:	00b70023          	sb	a1,0(a4)
    800038f0:	0047871b          	addiw	a4,a5,4
    800038f4:	08c77e63          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    800038f8:	00e50733          	add	a4,a0,a4
    800038fc:	00b70023          	sb	a1,0(a4)
    80003900:	0057871b          	addiw	a4,a5,5
    80003904:	08c77663          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    80003908:	00e50733          	add	a4,a0,a4
    8000390c:	00b70023          	sb	a1,0(a4)
    80003910:	0067871b          	addiw	a4,a5,6
    80003914:	06c77e63          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    80003918:	00e50733          	add	a4,a0,a4
    8000391c:	00b70023          	sb	a1,0(a4)
    80003920:	0077871b          	addiw	a4,a5,7
    80003924:	06c77663          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    80003928:	00e50733          	add	a4,a0,a4
    8000392c:	00b70023          	sb	a1,0(a4)
    80003930:	0087871b          	addiw	a4,a5,8
    80003934:	04c77e63          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    80003938:	00e50733          	add	a4,a0,a4
    8000393c:	00b70023          	sb	a1,0(a4)
    80003940:	0097871b          	addiw	a4,a5,9
    80003944:	04c77663          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    80003948:	00e50733          	add	a4,a0,a4
    8000394c:	00b70023          	sb	a1,0(a4)
    80003950:	00a7871b          	addiw	a4,a5,10
    80003954:	02c77e63          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    80003958:	00e50733          	add	a4,a0,a4
    8000395c:	00b70023          	sb	a1,0(a4)
    80003960:	00b7871b          	addiw	a4,a5,11
    80003964:	02c77663          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    80003968:	00e50733          	add	a4,a0,a4
    8000396c:	00b70023          	sb	a1,0(a4)
    80003970:	00c7871b          	addiw	a4,a5,12
    80003974:	00c77e63          	bgeu	a4,a2,80003990 <__memset+0x1c8>
    80003978:	00e50733          	add	a4,a0,a4
    8000397c:	00b70023          	sb	a1,0(a4)
    80003980:	00d7879b          	addiw	a5,a5,13
    80003984:	00c7f663          	bgeu	a5,a2,80003990 <__memset+0x1c8>
    80003988:	00f507b3          	add	a5,a0,a5
    8000398c:	00b78023          	sb	a1,0(a5)
    80003990:	00813403          	ld	s0,8(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret
    8000399c:	00b00693          	li	a3,11
    800039a0:	e55ff06f          	j	800037f4 <__memset+0x2c>
    800039a4:	00300e93          	li	t4,3
    800039a8:	ea5ff06f          	j	8000384c <__memset+0x84>
    800039ac:	00100e93          	li	t4,1
    800039b0:	e9dff06f          	j	8000384c <__memset+0x84>
    800039b4:	00000e93          	li	t4,0
    800039b8:	e95ff06f          	j	8000384c <__memset+0x84>
    800039bc:	00000793          	li	a5,0
    800039c0:	ef9ff06f          	j	800038b8 <__memset+0xf0>
    800039c4:	00200e93          	li	t4,2
    800039c8:	e85ff06f          	j	8000384c <__memset+0x84>
    800039cc:	00400e93          	li	t4,4
    800039d0:	e7dff06f          	j	8000384c <__memset+0x84>
    800039d4:	00500e93          	li	t4,5
    800039d8:	e75ff06f          	j	8000384c <__memset+0x84>
    800039dc:	00600e93          	li	t4,6
    800039e0:	e6dff06f          	j	8000384c <__memset+0x84>

00000000800039e4 <__memmove>:
    800039e4:	ff010113          	addi	sp,sp,-16
    800039e8:	00813423          	sd	s0,8(sp)
    800039ec:	01010413          	addi	s0,sp,16
    800039f0:	0e060863          	beqz	a2,80003ae0 <__memmove+0xfc>
    800039f4:	fff6069b          	addiw	a3,a2,-1
    800039f8:	0006881b          	sext.w	a6,a3
    800039fc:	0ea5e863          	bltu	a1,a0,80003aec <__memmove+0x108>
    80003a00:	00758713          	addi	a4,a1,7
    80003a04:	00a5e7b3          	or	a5,a1,a0
    80003a08:	40a70733          	sub	a4,a4,a0
    80003a0c:	0077f793          	andi	a5,a5,7
    80003a10:	00f73713          	sltiu	a4,a4,15
    80003a14:	00174713          	xori	a4,a4,1
    80003a18:	0017b793          	seqz	a5,a5
    80003a1c:	00e7f7b3          	and	a5,a5,a4
    80003a20:	10078863          	beqz	a5,80003b30 <__memmove+0x14c>
    80003a24:	00900793          	li	a5,9
    80003a28:	1107f463          	bgeu	a5,a6,80003b30 <__memmove+0x14c>
    80003a2c:	0036581b          	srliw	a6,a2,0x3
    80003a30:	fff8081b          	addiw	a6,a6,-1
    80003a34:	02081813          	slli	a6,a6,0x20
    80003a38:	01d85893          	srli	a7,a6,0x1d
    80003a3c:	00858813          	addi	a6,a1,8
    80003a40:	00058793          	mv	a5,a1
    80003a44:	00050713          	mv	a4,a0
    80003a48:	01088833          	add	a6,a7,a6
    80003a4c:	0007b883          	ld	a7,0(a5)
    80003a50:	00878793          	addi	a5,a5,8
    80003a54:	00870713          	addi	a4,a4,8
    80003a58:	ff173c23          	sd	a7,-8(a4)
    80003a5c:	ff0798e3          	bne	a5,a6,80003a4c <__memmove+0x68>
    80003a60:	ff867713          	andi	a4,a2,-8
    80003a64:	02071793          	slli	a5,a4,0x20
    80003a68:	0207d793          	srli	a5,a5,0x20
    80003a6c:	00f585b3          	add	a1,a1,a5
    80003a70:	40e686bb          	subw	a3,a3,a4
    80003a74:	00f507b3          	add	a5,a0,a5
    80003a78:	06e60463          	beq	a2,a4,80003ae0 <__memmove+0xfc>
    80003a7c:	0005c703          	lbu	a4,0(a1)
    80003a80:	00e78023          	sb	a4,0(a5)
    80003a84:	04068e63          	beqz	a3,80003ae0 <__memmove+0xfc>
    80003a88:	0015c603          	lbu	a2,1(a1)
    80003a8c:	00100713          	li	a4,1
    80003a90:	00c780a3          	sb	a2,1(a5)
    80003a94:	04e68663          	beq	a3,a4,80003ae0 <__memmove+0xfc>
    80003a98:	0025c603          	lbu	a2,2(a1)
    80003a9c:	00200713          	li	a4,2
    80003aa0:	00c78123          	sb	a2,2(a5)
    80003aa4:	02e68e63          	beq	a3,a4,80003ae0 <__memmove+0xfc>
    80003aa8:	0035c603          	lbu	a2,3(a1)
    80003aac:	00300713          	li	a4,3
    80003ab0:	00c781a3          	sb	a2,3(a5)
    80003ab4:	02e68663          	beq	a3,a4,80003ae0 <__memmove+0xfc>
    80003ab8:	0045c603          	lbu	a2,4(a1)
    80003abc:	00400713          	li	a4,4
    80003ac0:	00c78223          	sb	a2,4(a5)
    80003ac4:	00e68e63          	beq	a3,a4,80003ae0 <__memmove+0xfc>
    80003ac8:	0055c603          	lbu	a2,5(a1)
    80003acc:	00500713          	li	a4,5
    80003ad0:	00c782a3          	sb	a2,5(a5)
    80003ad4:	00e68663          	beq	a3,a4,80003ae0 <__memmove+0xfc>
    80003ad8:	0065c703          	lbu	a4,6(a1)
    80003adc:	00e78323          	sb	a4,6(a5)
    80003ae0:	00813403          	ld	s0,8(sp)
    80003ae4:	01010113          	addi	sp,sp,16
    80003ae8:	00008067          	ret
    80003aec:	02061713          	slli	a4,a2,0x20
    80003af0:	02075713          	srli	a4,a4,0x20
    80003af4:	00e587b3          	add	a5,a1,a4
    80003af8:	f0f574e3          	bgeu	a0,a5,80003a00 <__memmove+0x1c>
    80003afc:	02069613          	slli	a2,a3,0x20
    80003b00:	02065613          	srli	a2,a2,0x20
    80003b04:	fff64613          	not	a2,a2
    80003b08:	00e50733          	add	a4,a0,a4
    80003b0c:	00c78633          	add	a2,a5,a2
    80003b10:	fff7c683          	lbu	a3,-1(a5)
    80003b14:	fff78793          	addi	a5,a5,-1
    80003b18:	fff70713          	addi	a4,a4,-1
    80003b1c:	00d70023          	sb	a3,0(a4)
    80003b20:	fec798e3          	bne	a5,a2,80003b10 <__memmove+0x12c>
    80003b24:	00813403          	ld	s0,8(sp)
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret
    80003b30:	02069713          	slli	a4,a3,0x20
    80003b34:	02075713          	srli	a4,a4,0x20
    80003b38:	00170713          	addi	a4,a4,1
    80003b3c:	00e50733          	add	a4,a0,a4
    80003b40:	00050793          	mv	a5,a0
    80003b44:	0005c683          	lbu	a3,0(a1)
    80003b48:	00178793          	addi	a5,a5,1
    80003b4c:	00158593          	addi	a1,a1,1
    80003b50:	fed78fa3          	sb	a3,-1(a5)
    80003b54:	fee798e3          	bne	a5,a4,80003b44 <__memmove+0x160>
    80003b58:	f89ff06f          	j	80003ae0 <__memmove+0xfc>

0000000080003b5c <__mem_free>:
    80003b5c:	ff010113          	addi	sp,sp,-16
    80003b60:	00813423          	sd	s0,8(sp)
    80003b64:	01010413          	addi	s0,sp,16
    80003b68:	00001597          	auipc	a1,0x1
    80003b6c:	af058593          	addi	a1,a1,-1296 # 80004658 <freep>
    80003b70:	0005b783          	ld	a5,0(a1)
    80003b74:	ff050693          	addi	a3,a0,-16
    80003b78:	0007b703          	ld	a4,0(a5)
    80003b7c:	00d7fc63          	bgeu	a5,a3,80003b94 <__mem_free+0x38>
    80003b80:	00e6ee63          	bltu	a3,a4,80003b9c <__mem_free+0x40>
    80003b84:	00e7fc63          	bgeu	a5,a4,80003b9c <__mem_free+0x40>
    80003b88:	00070793          	mv	a5,a4
    80003b8c:	0007b703          	ld	a4,0(a5)
    80003b90:	fed7e8e3          	bltu	a5,a3,80003b80 <__mem_free+0x24>
    80003b94:	fee7eae3          	bltu	a5,a4,80003b88 <__mem_free+0x2c>
    80003b98:	fee6f8e3          	bgeu	a3,a4,80003b88 <__mem_free+0x2c>
    80003b9c:	ff852803          	lw	a6,-8(a0)
    80003ba0:	02081613          	slli	a2,a6,0x20
    80003ba4:	01c65613          	srli	a2,a2,0x1c
    80003ba8:	00c68633          	add	a2,a3,a2
    80003bac:	02c70a63          	beq	a4,a2,80003be0 <__mem_free+0x84>
    80003bb0:	fee53823          	sd	a4,-16(a0)
    80003bb4:	0087a503          	lw	a0,8(a5)
    80003bb8:	02051613          	slli	a2,a0,0x20
    80003bbc:	01c65613          	srli	a2,a2,0x1c
    80003bc0:	00c78633          	add	a2,a5,a2
    80003bc4:	04c68263          	beq	a3,a2,80003c08 <__mem_free+0xac>
    80003bc8:	00813403          	ld	s0,8(sp)
    80003bcc:	00d7b023          	sd	a3,0(a5)
    80003bd0:	00f5b023          	sd	a5,0(a1)
    80003bd4:	00000513          	li	a0,0
    80003bd8:	01010113          	addi	sp,sp,16
    80003bdc:	00008067          	ret
    80003be0:	00872603          	lw	a2,8(a4)
    80003be4:	00073703          	ld	a4,0(a4)
    80003be8:	0106083b          	addw	a6,a2,a6
    80003bec:	ff052c23          	sw	a6,-8(a0)
    80003bf0:	fee53823          	sd	a4,-16(a0)
    80003bf4:	0087a503          	lw	a0,8(a5)
    80003bf8:	02051613          	slli	a2,a0,0x20
    80003bfc:	01c65613          	srli	a2,a2,0x1c
    80003c00:	00c78633          	add	a2,a5,a2
    80003c04:	fcc692e3          	bne	a3,a2,80003bc8 <__mem_free+0x6c>
    80003c08:	00813403          	ld	s0,8(sp)
    80003c0c:	0105053b          	addw	a0,a0,a6
    80003c10:	00a7a423          	sw	a0,8(a5)
    80003c14:	00e7b023          	sd	a4,0(a5)
    80003c18:	00f5b023          	sd	a5,0(a1)
    80003c1c:	00000513          	li	a0,0
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret

0000000080003c28 <__mem_alloc>:
    80003c28:	fc010113          	addi	sp,sp,-64
    80003c2c:	02813823          	sd	s0,48(sp)
    80003c30:	02913423          	sd	s1,40(sp)
    80003c34:	03213023          	sd	s2,32(sp)
    80003c38:	01513423          	sd	s5,8(sp)
    80003c3c:	02113c23          	sd	ra,56(sp)
    80003c40:	01313c23          	sd	s3,24(sp)
    80003c44:	01413823          	sd	s4,16(sp)
    80003c48:	01613023          	sd	s6,0(sp)
    80003c4c:	04010413          	addi	s0,sp,64
    80003c50:	00001a97          	auipc	s5,0x1
    80003c54:	a08a8a93          	addi	s5,s5,-1528 # 80004658 <freep>
    80003c58:	00f50913          	addi	s2,a0,15
    80003c5c:	000ab683          	ld	a3,0(s5)
    80003c60:	00495913          	srli	s2,s2,0x4
    80003c64:	0019049b          	addiw	s1,s2,1
    80003c68:	00048913          	mv	s2,s1
    80003c6c:	0c068c63          	beqz	a3,80003d44 <__mem_alloc+0x11c>
    80003c70:	0006b503          	ld	a0,0(a3)
    80003c74:	00852703          	lw	a4,8(a0)
    80003c78:	10977063          	bgeu	a4,s1,80003d78 <__mem_alloc+0x150>
    80003c7c:	000017b7          	lui	a5,0x1
    80003c80:	0009099b          	sext.w	s3,s2
    80003c84:	0af4e863          	bltu	s1,a5,80003d34 <__mem_alloc+0x10c>
    80003c88:	02099a13          	slli	s4,s3,0x20
    80003c8c:	01ca5a13          	srli	s4,s4,0x1c
    80003c90:	fff00b13          	li	s6,-1
    80003c94:	0100006f          	j	80003ca4 <__mem_alloc+0x7c>
    80003c98:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003c9c:	00852703          	lw	a4,8(a0)
    80003ca0:	04977463          	bgeu	a4,s1,80003ce8 <__mem_alloc+0xc0>
    80003ca4:	00050793          	mv	a5,a0
    80003ca8:	fea698e3          	bne	a3,a0,80003c98 <__mem_alloc+0x70>
    80003cac:	000a0513          	mv	a0,s4
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	1f0080e7          	jalr	496(ra) # 80003ea0 <kvmincrease>
    80003cb8:	00050793          	mv	a5,a0
    80003cbc:	01050513          	addi	a0,a0,16
    80003cc0:	07678e63          	beq	a5,s6,80003d3c <__mem_alloc+0x114>
    80003cc4:	0137a423          	sw	s3,8(a5)
    80003cc8:	00000097          	auipc	ra,0x0
    80003ccc:	e94080e7          	jalr	-364(ra) # 80003b5c <__mem_free>
    80003cd0:	000ab783          	ld	a5,0(s5)
    80003cd4:	06078463          	beqz	a5,80003d3c <__mem_alloc+0x114>
    80003cd8:	0007b503          	ld	a0,0(a5)
    80003cdc:	00078693          	mv	a3,a5
    80003ce0:	00852703          	lw	a4,8(a0)
    80003ce4:	fc9760e3          	bltu	a4,s1,80003ca4 <__mem_alloc+0x7c>
    80003ce8:	08e48263          	beq	s1,a4,80003d6c <__mem_alloc+0x144>
    80003cec:	4127073b          	subw	a4,a4,s2
    80003cf0:	02071693          	slli	a3,a4,0x20
    80003cf4:	01c6d693          	srli	a3,a3,0x1c
    80003cf8:	00e52423          	sw	a4,8(a0)
    80003cfc:	00d50533          	add	a0,a0,a3
    80003d00:	01252423          	sw	s2,8(a0)
    80003d04:	00fab023          	sd	a5,0(s5)
    80003d08:	01050513          	addi	a0,a0,16
    80003d0c:	03813083          	ld	ra,56(sp)
    80003d10:	03013403          	ld	s0,48(sp)
    80003d14:	02813483          	ld	s1,40(sp)
    80003d18:	02013903          	ld	s2,32(sp)
    80003d1c:	01813983          	ld	s3,24(sp)
    80003d20:	01013a03          	ld	s4,16(sp)
    80003d24:	00813a83          	ld	s5,8(sp)
    80003d28:	00013b03          	ld	s6,0(sp)
    80003d2c:	04010113          	addi	sp,sp,64
    80003d30:	00008067          	ret
    80003d34:	000019b7          	lui	s3,0x1
    80003d38:	f51ff06f          	j	80003c88 <__mem_alloc+0x60>
    80003d3c:	00000513          	li	a0,0
    80003d40:	fcdff06f          	j	80003d0c <__mem_alloc+0xe4>
    80003d44:	00002797          	auipc	a5,0x2
    80003d48:	bac78793          	addi	a5,a5,-1108 # 800058f0 <base>
    80003d4c:	00078513          	mv	a0,a5
    80003d50:	00fab023          	sd	a5,0(s5)
    80003d54:	00f7b023          	sd	a5,0(a5)
    80003d58:	00000713          	li	a4,0
    80003d5c:	00002797          	auipc	a5,0x2
    80003d60:	b807ae23          	sw	zero,-1124(a5) # 800058f8 <base+0x8>
    80003d64:	00050693          	mv	a3,a0
    80003d68:	f11ff06f          	j	80003c78 <__mem_alloc+0x50>
    80003d6c:	00053703          	ld	a4,0(a0)
    80003d70:	00e7b023          	sd	a4,0(a5)
    80003d74:	f91ff06f          	j	80003d04 <__mem_alloc+0xdc>
    80003d78:	00068793          	mv	a5,a3
    80003d7c:	f6dff06f          	j	80003ce8 <__mem_alloc+0xc0>

0000000080003d80 <__putc>:
    80003d80:	fe010113          	addi	sp,sp,-32
    80003d84:	00813823          	sd	s0,16(sp)
    80003d88:	00113c23          	sd	ra,24(sp)
    80003d8c:	02010413          	addi	s0,sp,32
    80003d90:	00050793          	mv	a5,a0
    80003d94:	fef40593          	addi	a1,s0,-17
    80003d98:	00100613          	li	a2,1
    80003d9c:	00000513          	li	a0,0
    80003da0:	fef407a3          	sb	a5,-17(s0)
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	918080e7          	jalr	-1768(ra) # 800026bc <console_write>
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	02010113          	addi	sp,sp,32
    80003db8:	00008067          	ret

0000000080003dbc <__getc>:
    80003dbc:	fe010113          	addi	sp,sp,-32
    80003dc0:	00813823          	sd	s0,16(sp)
    80003dc4:	00113c23          	sd	ra,24(sp)
    80003dc8:	02010413          	addi	s0,sp,32
    80003dcc:	fe840593          	addi	a1,s0,-24
    80003dd0:	00100613          	li	a2,1
    80003dd4:	00000513          	li	a0,0
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	8c4080e7          	jalr	-1852(ra) # 8000269c <console_read>
    80003de0:	fe844503          	lbu	a0,-24(s0)
    80003de4:	01813083          	ld	ra,24(sp)
    80003de8:	01013403          	ld	s0,16(sp)
    80003dec:	02010113          	addi	sp,sp,32
    80003df0:	00008067          	ret

0000000080003df4 <console_handler>:
    80003df4:	fe010113          	addi	sp,sp,-32
    80003df8:	00813823          	sd	s0,16(sp)
    80003dfc:	00113c23          	sd	ra,24(sp)
    80003e00:	00913423          	sd	s1,8(sp)
    80003e04:	02010413          	addi	s0,sp,32
    80003e08:	14202773          	csrr	a4,scause
    80003e0c:	100027f3          	csrr	a5,sstatus
    80003e10:	0027f793          	andi	a5,a5,2
    80003e14:	06079e63          	bnez	a5,80003e90 <console_handler+0x9c>
    80003e18:	00074c63          	bltz	a4,80003e30 <console_handler+0x3c>
    80003e1c:	01813083          	ld	ra,24(sp)
    80003e20:	01013403          	ld	s0,16(sp)
    80003e24:	00813483          	ld	s1,8(sp)
    80003e28:	02010113          	addi	sp,sp,32
    80003e2c:	00008067          	ret
    80003e30:	0ff77713          	andi	a4,a4,255
    80003e34:	00900793          	li	a5,9
    80003e38:	fef712e3          	bne	a4,a5,80003e1c <console_handler+0x28>
    80003e3c:	ffffe097          	auipc	ra,0xffffe
    80003e40:	4b8080e7          	jalr	1208(ra) # 800022f4 <plic_claim>
    80003e44:	00a00793          	li	a5,10
    80003e48:	00050493          	mv	s1,a0
    80003e4c:	02f50c63          	beq	a0,a5,80003e84 <console_handler+0x90>
    80003e50:	fc0506e3          	beqz	a0,80003e1c <console_handler+0x28>
    80003e54:	00050593          	mv	a1,a0
    80003e58:	00000517          	auipc	a0,0x0
    80003e5c:	2a850513          	addi	a0,a0,680 # 80004100 <_ZZ12printIntegermE6digits+0xe0>
    80003e60:	fffff097          	auipc	ra,0xfffff
    80003e64:	8d8080e7          	jalr	-1832(ra) # 80002738 <__printf>
    80003e68:	01013403          	ld	s0,16(sp)
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	00048513          	mv	a0,s1
    80003e74:	00813483          	ld	s1,8(sp)
    80003e78:	02010113          	addi	sp,sp,32
    80003e7c:	ffffe317          	auipc	t1,0xffffe
    80003e80:	4b030067          	jr	1200(t1) # 8000232c <plic_complete>
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	1bc080e7          	jalr	444(ra) # 80003040 <uartintr>
    80003e8c:	fddff06f          	j	80003e68 <console_handler+0x74>
    80003e90:	00000517          	auipc	a0,0x0
    80003e94:	37050513          	addi	a0,a0,880 # 80004200 <digits+0x78>
    80003e98:	fffff097          	auipc	ra,0xfffff
    80003e9c:	844080e7          	jalr	-1980(ra) # 800026dc <panic>

0000000080003ea0 <kvmincrease>:
    80003ea0:	fe010113          	addi	sp,sp,-32
    80003ea4:	01213023          	sd	s2,0(sp)
    80003ea8:	00001937          	lui	s2,0x1
    80003eac:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003eb0:	00813823          	sd	s0,16(sp)
    80003eb4:	00113c23          	sd	ra,24(sp)
    80003eb8:	00913423          	sd	s1,8(sp)
    80003ebc:	02010413          	addi	s0,sp,32
    80003ec0:	01250933          	add	s2,a0,s2
    80003ec4:	00c95913          	srli	s2,s2,0xc
    80003ec8:	02090863          	beqz	s2,80003ef8 <kvmincrease+0x58>
    80003ecc:	00000493          	li	s1,0
    80003ed0:	00148493          	addi	s1,s1,1
    80003ed4:	fffff097          	auipc	ra,0xfffff
    80003ed8:	4bc080e7          	jalr	1212(ra) # 80003390 <kalloc>
    80003edc:	fe991ae3          	bne	s2,s1,80003ed0 <kvmincrease+0x30>
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	00813483          	ld	s1,8(sp)
    80003eec:	00013903          	ld	s2,0(sp)
    80003ef0:	02010113          	addi	sp,sp,32
    80003ef4:	00008067          	ret
    80003ef8:	01813083          	ld	ra,24(sp)
    80003efc:	01013403          	ld	s0,16(sp)
    80003f00:	00813483          	ld	s1,8(sp)
    80003f04:	00013903          	ld	s2,0(sp)
    80003f08:	00000513          	li	a0,0
    80003f0c:	02010113          	addi	sp,sp,32
    80003f10:	00008067          	ret
	...
