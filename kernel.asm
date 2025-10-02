
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	86813103          	ld	sp,-1944(sp) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	00c020ef          	jal	ra,80002028 <start>

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
    80001184:	2b1000ef          	jal	ra,80001c34 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001224 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001224:	fe010113          	addi	sp,sp,-32
    80001228:	00113c23          	sd	ra,24(sp)
    8000122c:	00813823          	sd	s0,16(sp)
    80001230:	00913423          	sd	s1,8(sp)
    80001234:	01213023          	sd	s2,0(sp)
    80001238:	02010413          	addi	s0,sp,32
    8000123c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001240:	00100793          	li	a5,1
    80001244:	02a7f863          	bgeu	a5,a0,80001274 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001248:	00a00793          	li	a5,10
    8000124c:	02f577b3          	remu	a5,a0,a5
    80001250:	02078e63          	beqz	a5,8000128c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001254:	fff48513          	addi	a0,s1,-1
    80001258:	00000097          	auipc	ra,0x0
    8000125c:	fcc080e7          	jalr	-52(ra) # 80001224 <_ZL9fibonaccim>
    80001260:	00050913          	mv	s2,a0
    80001264:	ffe48513          	addi	a0,s1,-2
    80001268:	00000097          	auipc	ra,0x0
    8000126c:	fbc080e7          	jalr	-68(ra) # 80001224 <_ZL9fibonaccim>
    80001270:	00a90533          	add	a0,s2,a0
}
    80001274:	01813083          	ld	ra,24(sp)
    80001278:	01013403          	ld	s0,16(sp)
    8000127c:	00813483          	ld	s1,8(sp)
    80001280:	00013903          	ld	s2,0(sp)
    80001284:	02010113          	addi	sp,sp,32
    80001288:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000128c:	00000097          	auipc	ra,0x0
    80001290:	5c8080e7          	jalr	1480(ra) # 80001854 <_ZN3TCB5yieldEv>
    80001294:	fc1ff06f          	j	80001254 <_ZL9fibonaccim+0x30>

0000000080001298 <_Z11workerBodyAv>:
{
    80001298:	fe010113          	addi	sp,sp,-32
    8000129c:	00113c23          	sd	ra,24(sp)
    800012a0:	00813823          	sd	s0,16(sp)
    800012a4:	00913423          	sd	s1,8(sp)
    800012a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800012ac:	00000493          	li	s1,0
    800012b0:	0300006f          	j	800012e0 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800012b4:	00168693          	addi	a3,a3,1
    800012b8:	000027b7          	lui	a5,0x2
    800012bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012c0:	00d7ee63          	bltu	a5,a3,800012dc <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800012c4:	00000713          	li	a4,0
    800012c8:	000077b7          	lui	a5,0x7
    800012cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800012d0:	fee7e2e3          	bltu	a5,a4,800012b4 <_Z11workerBodyAv+0x1c>
    800012d4:	00170713          	addi	a4,a4,1
    800012d8:	ff1ff06f          	j	800012c8 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800012dc:	00148493          	addi	s1,s1,1
    800012e0:	00900793          	li	a5,9
    800012e4:	0297ec63          	bltu	a5,s1,8000131c <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800012e8:	00004517          	auipc	a0,0x4
    800012ec:	d3850513          	addi	a0,a0,-712 # 80005020 <CONSOLE_STATUS+0x10>
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	c0c080e7          	jalr	-1012(ra) # 80001efc <_Z11printStringPKc>
        printInteger(i);
    800012f8:	00048513          	mv	a0,s1
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	c70080e7          	jalr	-912(ra) # 80001f6c <_Z12printIntegerm>
        printString("\n");
    80001304:	00004517          	auipc	a0,0x4
    80001308:	dec50513          	addi	a0,a0,-532 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000130c:	00001097          	auipc	ra,0x1
    80001310:	bf0080e7          	jalr	-1040(ra) # 80001efc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001314:	00000693          	li	a3,0
    80001318:	fa1ff06f          	j	800012b8 <_Z11workerBodyAv+0x20>
}
    8000131c:	01813083          	ld	ra,24(sp)
    80001320:	01013403          	ld	s0,16(sp)
    80001324:	00813483          	ld	s1,8(sp)
    80001328:	02010113          	addi	sp,sp,32
    8000132c:	00008067          	ret

0000000080001330 <_Z11workerBodyBv>:
{
    80001330:	fe010113          	addi	sp,sp,-32
    80001334:	00113c23          	sd	ra,24(sp)
    80001338:	00813823          	sd	s0,16(sp)
    8000133c:	00913423          	sd	s1,8(sp)
    80001340:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001344:	00000493          	li	s1,0
    80001348:	0300006f          	j	80001378 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000134c:	00168693          	addi	a3,a3,1
    80001350:	000027b7          	lui	a5,0x2
    80001354:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001358:	00d7ee63          	bltu	a5,a3,80001374 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000135c:	00000713          	li	a4,0
    80001360:	000077b7          	lui	a5,0x7
    80001364:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001368:	fee7e2e3          	bltu	a5,a4,8000134c <_Z11workerBodyBv+0x1c>
    8000136c:	00170713          	addi	a4,a4,1
    80001370:	ff1ff06f          	j	80001360 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001374:	00148493          	addi	s1,s1,1
    80001378:	00f00793          	li	a5,15
    8000137c:	0297ec63          	bltu	a5,s1,800013b4 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	ca850513          	addi	a0,a0,-856 # 80005028 <CONSOLE_STATUS+0x18>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	b74080e7          	jalr	-1164(ra) # 80001efc <_Z11printStringPKc>
        printInteger(i);
    80001390:	00048513          	mv	a0,s1
    80001394:	00001097          	auipc	ra,0x1
    80001398:	bd8080e7          	jalr	-1064(ra) # 80001f6c <_Z12printIntegerm>
        printString("\n");
    8000139c:	00004517          	auipc	a0,0x4
    800013a0:	d5450513          	addi	a0,a0,-684 # 800050f0 <CONSOLE_STATUS+0xe0>
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	b58080e7          	jalr	-1192(ra) # 80001efc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800013ac:	00000693          	li	a3,0
    800013b0:	fa1ff06f          	j	80001350 <_Z11workerBodyBv+0x20>
}
    800013b4:	01813083          	ld	ra,24(sp)
    800013b8:	01013403          	ld	s0,16(sp)
    800013bc:	00813483          	ld	s1,8(sp)
    800013c0:	02010113          	addi	sp,sp,32
    800013c4:	00008067          	ret

00000000800013c8 <_Z11workerBodyCv>:

void workerBodyC()
{
    800013c8:	fe010113          	addi	sp,sp,-32
    800013cc:	00113c23          	sd	ra,24(sp)
    800013d0:	00813823          	sd	s0,16(sp)
    800013d4:	00913423          	sd	s1,8(sp)
    800013d8:	01213023          	sd	s2,0(sp)
    800013dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800013e0:	00000493          	li	s1,0
    800013e4:	0380006f          	j	8000141c <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800013e8:	00004517          	auipc	a0,0x4
    800013ec:	c4850513          	addi	a0,a0,-952 # 80005030 <CONSOLE_STATUS+0x20>
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	b0c080e7          	jalr	-1268(ra) # 80001efc <_Z11printStringPKc>
        printInteger(i);
    800013f8:	00048513          	mv	a0,s1
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	b70080e7          	jalr	-1168(ra) # 80001f6c <_Z12printIntegerm>
        printString("\n");
    80001404:	00004517          	auipc	a0,0x4
    80001408:	cec50513          	addi	a0,a0,-788 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	af0080e7          	jalr	-1296(ra) # 80001efc <_Z11printStringPKc>
    for (; i < 3; i++)
    80001414:	0014849b          	addiw	s1,s1,1
    80001418:	0ff4f493          	andi	s1,s1,255
    8000141c:	00200793          	li	a5,2
    80001420:	fc97f4e3          	bgeu	a5,s1,800013e8 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c1450513          	addi	a0,a0,-1004 # 80005038 <CONSOLE_STATUS+0x28>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	ad0080e7          	jalr	-1328(ra) # 80001efc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001434:	00700313          	li	t1,7
    TCB::yield();
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	41c080e7          	jalr	1052(ra) # 80001854 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001440:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001444:	00004517          	auipc	a0,0x4
    80001448:	c0450513          	addi	a0,a0,-1020 # 80005048 <CONSOLE_STATUS+0x38>
    8000144c:	00001097          	auipc	ra,0x1
    80001450:	ab0080e7          	jalr	-1360(ra) # 80001efc <_Z11printStringPKc>
    printInteger(t1);
    80001454:	00090513          	mv	a0,s2
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	b14080e7          	jalr	-1260(ra) # 80001f6c <_Z12printIntegerm>
    printString("\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	c9050513          	addi	a0,a0,-880 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	a94080e7          	jalr	-1388(ra) # 80001efc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001470:	00c00513          	li	a0,12
    80001474:	00000097          	auipc	ra,0x0
    80001478:	db0080e7          	jalr	-592(ra) # 80001224 <_ZL9fibonaccim>
    8000147c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001480:	00004517          	auipc	a0,0x4
    80001484:	bd050513          	addi	a0,a0,-1072 # 80005050 <CONSOLE_STATUS+0x40>
    80001488:	00001097          	auipc	ra,0x1
    8000148c:	a74080e7          	jalr	-1420(ra) # 80001efc <_Z11printStringPKc>
    printInteger(result);
    80001490:	00090513          	mv	a0,s2
    80001494:	00001097          	auipc	ra,0x1
    80001498:	ad8080e7          	jalr	-1320(ra) # 80001f6c <_Z12printIntegerm>
    printString("\n");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	c5450513          	addi	a0,a0,-940 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	a58080e7          	jalr	-1448(ra) # 80001efc <_Z11printStringPKc>
    800014ac:	0380006f          	j	800014e4 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800014b0:	00004517          	auipc	a0,0x4
    800014b4:	b8050513          	addi	a0,a0,-1152 # 80005030 <CONSOLE_STATUS+0x20>
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	a44080e7          	jalr	-1468(ra) # 80001efc <_Z11printStringPKc>
        printInteger(i);
    800014c0:	00048513          	mv	a0,s1
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	aa8080e7          	jalr	-1368(ra) # 80001f6c <_Z12printIntegerm>
        printString("\n");
    800014cc:	00004517          	auipc	a0,0x4
    800014d0:	c2450513          	addi	a0,a0,-988 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	a28080e7          	jalr	-1496(ra) # 80001efc <_Z11printStringPKc>
    for (; i < 6; i++)
    800014dc:	0014849b          	addiw	s1,s1,1
    800014e0:	0ff4f493          	andi	s1,s1,255
    800014e4:	00500793          	li	a5,5
    800014e8:	fc97f4e3          	bgeu	a5,s1,800014b0 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800014ec:	01813083          	ld	ra,24(sp)
    800014f0:	01013403          	ld	s0,16(sp)
    800014f4:	00813483          	ld	s1,8(sp)
    800014f8:	00013903          	ld	s2,0(sp)
    800014fc:	02010113          	addi	sp,sp,32
    80001500:	00008067          	ret

0000000080001504 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000151c:	00a00493          	li	s1,10
    80001520:	0380006f          	j	80001558 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001524:	00004517          	auipc	a0,0x4
    80001528:	b3c50513          	addi	a0,a0,-1220 # 80005060 <CONSOLE_STATUS+0x50>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	9d0080e7          	jalr	-1584(ra) # 80001efc <_Z11printStringPKc>
        printInteger(i);
    80001534:	00048513          	mv	a0,s1
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	a34080e7          	jalr	-1484(ra) # 80001f6c <_Z12printIntegerm>
        printString("\n");
    80001540:	00004517          	auipc	a0,0x4
    80001544:	bb050513          	addi	a0,a0,-1104 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	9b4080e7          	jalr	-1612(ra) # 80001efc <_Z11printStringPKc>
    for (; i < 13; i++)
    80001550:	0014849b          	addiw	s1,s1,1
    80001554:	0ff4f493          	andi	s1,s1,255
    80001558:	00c00793          	li	a5,12
    8000155c:	fc97f4e3          	bgeu	a5,s1,80001524 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001560:	00004517          	auipc	a0,0x4
    80001564:	b0850513          	addi	a0,a0,-1272 # 80005068 <CONSOLE_STATUS+0x58>
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	994080e7          	jalr	-1644(ra) # 80001efc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001570:	00500313          	li	t1,5
    TCB::yield();
    80001574:	00000097          	auipc	ra,0x0
    80001578:	2e0080e7          	jalr	736(ra) # 80001854 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000157c:	01000513          	li	a0,16
    80001580:	00000097          	auipc	ra,0x0
    80001584:	ca4080e7          	jalr	-860(ra) # 80001224 <_ZL9fibonaccim>
    80001588:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	aec50513          	addi	a0,a0,-1300 # 80005078 <CONSOLE_STATUS+0x68>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	968080e7          	jalr	-1688(ra) # 80001efc <_Z11printStringPKc>
    printInteger(result);
    8000159c:	00090513          	mv	a0,s2
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	9cc080e7          	jalr	-1588(ra) # 80001f6c <_Z12printIntegerm>
    printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	b4850513          	addi	a0,a0,-1208 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	94c080e7          	jalr	-1716(ra) # 80001efc <_Z11printStringPKc>
    800015b8:	0380006f          	j	800015f0 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	aa450513          	addi	a0,a0,-1372 # 80005060 <CONSOLE_STATUS+0x50>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	938080e7          	jalr	-1736(ra) # 80001efc <_Z11printStringPKc>
        printInteger(i);
    800015cc:	00048513          	mv	a0,s1
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	99c080e7          	jalr	-1636(ra) # 80001f6c <_Z12printIntegerm>
        printString("\n");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	b1850513          	addi	a0,a0,-1256 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	91c080e7          	jalr	-1764(ra) # 80001efc <_Z11printStringPKc>
    for (; i < 16; i++)
    800015e8:	0014849b          	addiw	s1,s1,1
    800015ec:	0ff4f493          	andi	s1,s1,255
    800015f0:	00f00793          	li	a5,15
    800015f4:	fc97f4e3          	bgeu	a5,s1,800015bc <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800015f8:	01813083          	ld	ra,24(sp)
    800015fc:	01013403          	ld	s0,16(sp)
    80001600:	00813483          	ld	s1,8(sp)
    80001604:	00013903          	ld	s2,0(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret

0000000080001610 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    80001610:	fb010113          	addi	sp,sp,-80
    80001614:	04113423          	sd	ra,72(sp)
    80001618:	04813023          	sd	s0,64(sp)
    8000161c:	02913c23          	sd	s1,56(sp)
    80001620:	03213823          	sd	s2,48(sp)
    80001624:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    80001628:	00000513          	li	a0,0
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	160080e7          	jalr	352(ra) # 8000178c <_ZN3TCB12createThreadEPFvvE>
    80001634:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001638:	00004797          	auipc	a5,0x4
    8000163c:	2387b783          	ld	a5,568(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001640:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001644:	00004517          	auipc	a0,0x4
    80001648:	21c53503          	ld	a0,540(a0) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	140080e7          	jalr	320(ra) # 8000178c <_ZN3TCB12createThreadEPFvvE>
    80001654:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	a3050513          	addi	a0,a0,-1488 # 80005088 <CONSOLE_STATUS+0x78>
    80001660:	00001097          	auipc	ra,0x1
    80001664:	89c080e7          	jalr	-1892(ra) # 80001efc <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    80001668:	00004517          	auipc	a0,0x4
    8000166c:	1e853503          	ld	a0,488(a0) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001670:	00000097          	auipc	ra,0x0
    80001674:	11c080e7          	jalr	284(ra) # 8000178c <_ZN3TCB12createThreadEPFvvE>
    80001678:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    8000167c:	00004517          	auipc	a0,0x4
    80001680:	a2450513          	addi	a0,a0,-1500 # 800050a0 <CONSOLE_STATUS+0x90>
    80001684:	00001097          	auipc	ra,0x1
    80001688:	878080e7          	jalr	-1928(ra) # 80001efc <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	1f453503          	ld	a0,500(a0) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001694:	00000097          	auipc	ra,0x0
    80001698:	0f8080e7          	jalr	248(ra) # 8000178c <_ZN3TCB12createThreadEPFvvE>
    8000169c:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800016a0:	00004517          	auipc	a0,0x4
    800016a4:	a1850513          	addi	a0,a0,-1512 # 800050b8 <CONSOLE_STATUS+0xa8>
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	854080e7          	jalr	-1964(ra) # 80001efc <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800016b0:	00004517          	auipc	a0,0x4
    800016b4:	1d853503          	ld	a0,472(a0) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x50>
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	0d4080e7          	jalr	212(ra) # 8000178c <_ZN3TCB12createThreadEPFvvE>
    800016c0:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800016c4:	00004517          	auipc	a0,0x4
    800016c8:	a0c50513          	addi	a0,a0,-1524 # 800050d0 <CONSOLE_STATUS+0xc0>
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	830080e7          	jalr	-2000(ra) # 80001efc <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800016d4:	00004797          	auipc	a5,0x4
    800016d8:	1747b783          	ld	a5,372(a5) # 80005848 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800016dc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800016e0:	00200793          	li	a5,2
    800016e4:	1007a073          	csrs	sstatus,a5
}
    800016e8:	00c0006f          	j	800016f4 <main+0xe4>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	168080e7          	jalr	360(ra) # 80001854 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    800016f4:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800016f8:	0287c783          	lbu	a5,40(a5)
    800016fc:	fe0788e3          	beqz	a5,800016ec <main+0xdc>
             threads[2]->isFinished() &&
    80001700:	fc843783          	ld	a5,-56(s0)
    80001704:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001708:	fe0782e3          	beqz	a5,800016ec <main+0xdc>
             threads[3]->isFinished() &&
    8000170c:	fd043783          	ld	a5,-48(s0)
    80001710:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    80001714:	fc078ce3          	beqz	a5,800016ec <main+0xdc>
             threads[4]->isFinished()))
    80001718:	fd843783          	ld	a5,-40(s0)
    8000171c:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001720:	fc0786e3          	beqz	a5,800016ec <main+0xdc>
    80001724:	fb840493          	addi	s1,s0,-72
    80001728:	0140006f          	j	8000173c <main+0x12c>
    }

    for (auto &thread: threads)
    {
        delete thread;
    8000172c:	00090513          	mv	a0,s2
    80001730:	00000097          	auipc	ra,0x0
    80001734:	494080e7          	jalr	1172(ra) # 80001bc4 <_ZdlPv>
    for (auto &thread: threads)
    80001738:	00848493          	addi	s1,s1,8
    8000173c:	fe040793          	addi	a5,s0,-32
    80001740:	02f48063          	beq	s1,a5,80001760 <main+0x150>
        delete thread;
    80001744:	0004b903          	ld	s2,0(s1)
    80001748:	fe0908e3          	beqz	s2,80001738 <main+0x128>
    ~TCB() { delete[] stack; }
    8000174c:	00893503          	ld	a0,8(s2)
    80001750:	fc050ee3          	beqz	a0,8000172c <main+0x11c>
    80001754:	00000097          	auipc	ra,0x0
    80001758:	498080e7          	jalr	1176(ra) # 80001bec <_ZdaPv>
    8000175c:	fd1ff06f          	j	8000172c <main+0x11c>
    }
    printString("Finished\n");
    80001760:	00004517          	auipc	a0,0x4
    80001764:	98850513          	addi	a0,a0,-1656 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	794080e7          	jalr	1940(ra) # 80001efc <_Z11printStringPKc>

    return 0;
}
    80001770:	00000513          	li	a0,0
    80001774:	04813083          	ld	ra,72(sp)
    80001778:	04013403          	ld	s0,64(sp)
    8000177c:	03813483          	ld	s1,56(sp)
    80001780:	03013903          	ld	s2,48(sp)
    80001784:	05010113          	addi	sp,sp,80
    80001788:	00008067          	ret

000000008000178c <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    8000178c:	fe010113          	addi	sp,sp,-32
    80001790:	00113c23          	sd	ra,24(sp)
    80001794:	00813823          	sd	s0,16(sp)
    80001798:	00913423          	sd	s1,8(sp)
    8000179c:	01213023          	sd	s2,0(sp)
    800017a0:	02010413          	addi	s0,sp,32
    800017a4:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800017a8:	03000513          	li	a0,48
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	3c8080e7          	jalr	968(ra) # 80001b74 <_Znwm>
    800017b4:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800017b8:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800017bc:	00090a63          	beqz	s2,800017d0 <_ZN3TCB12createThreadEPFvvE+0x44>
    800017c0:	00002537          	lui	a0,0x2
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	3d8080e7          	jalr	984(ra) # 80001b9c <_Znam>
    800017cc:	0080006f          	j	800017d4 <_ZN3TCB12createThreadEPFvvE+0x48>
    800017d0:	00000513          	li	a0,0
            finished(false)
    800017d4:	00a4b423          	sd	a0,8(s1)
    800017d8:	00000797          	auipc	a5,0x0
    800017dc:	09878793          	addi	a5,a5,152 # 80001870 <_ZN3TCB13threadWrapperEv>
    800017e0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800017e4:	02050863          	beqz	a0,80001814 <_ZN3TCB12createThreadEPFvvE+0x88>
    800017e8:	000027b7          	lui	a5,0x2
    800017ec:	00f507b3          	add	a5,a0,a5
            finished(false)
    800017f0:	00f4bc23          	sd	a5,24(s1)
    800017f4:	00200793          	li	a5,2
    800017f8:	02f4b023          	sd	a5,32(s1)
    800017fc:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001800:	02090c63          	beqz	s2,80001838 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001804:	00048513          	mv	a0,s1
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	654080e7          	jalr	1620(ra) # 80001e5c <_ZN9Scheduler3putEP3TCB>
    80001810:	0280006f          	j	80001838 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001814:	00000793          	li	a5,0
    80001818:	fd9ff06f          	j	800017f0 <_ZN3TCB12createThreadEPFvvE+0x64>
    8000181c:	00050913          	mv	s2,a0
    80001820:	00048513          	mv	a0,s1
    80001824:	00000097          	auipc	ra,0x0
    80001828:	3a0080e7          	jalr	928(ra) # 80001bc4 <_ZdlPv>
    8000182c:	00090513          	mv	a0,s2
    80001830:	00005097          	auipc	ra,0x5
    80001834:	1a8080e7          	jalr	424(ra) # 800069d8 <_Unwind_Resume>
}
    80001838:	00048513          	mv	a0,s1
    8000183c:	01813083          	ld	ra,24(sp)
    80001840:	01013403          	ld	s0,16(sp)
    80001844:	00813483          	ld	s1,8(sp)
    80001848:	00013903          	ld	s2,0(sp)
    8000184c:	02010113          	addi	sp,sp,32
    80001850:	00008067          	ret

0000000080001854 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001854:	ff010113          	addi	sp,sp,-16
    80001858:	00813423          	sd	s0,8(sp)
    8000185c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001860:	00000073          	ecall
}
    80001864:	00813403          	ld	s0,8(sp)
    80001868:	01010113          	addi	sp,sp,16
    8000186c:	00008067          	ret

0000000080001870 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001870:	fe010113          	addi	sp,sp,-32
    80001874:	00113c23          	sd	ra,24(sp)
    80001878:	00813823          	sd	s0,16(sp)
    8000187c:	00913423          	sd	s1,8(sp)
    80001880:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001884:	00000097          	auipc	ra,0x0
    80001888:	390080e7          	jalr	912(ra) # 80001c14 <_ZN5Riscv10popSppSpieEv>
    running->body();
    8000188c:	00004497          	auipc	s1,0x4
    80001890:	05448493          	addi	s1,s1,84 # 800058e0 <_ZN3TCB7runningE>
    80001894:	0004b783          	ld	a5,0(s1)
    80001898:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    8000189c:	000780e7          	jalr	a5
    running->setFinished(true);
    800018a0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800018a4:	00100713          	li	a4,1
    800018a8:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	fa8080e7          	jalr	-88(ra) # 80001854 <_ZN3TCB5yieldEv>
}
    800018b4:	01813083          	ld	ra,24(sp)
    800018b8:	01013403          	ld	s0,16(sp)
    800018bc:	00813483          	ld	s1,8(sp)
    800018c0:	02010113          	addi	sp,sp,32
    800018c4:	00008067          	ret

00000000800018c8 <_ZN3TCB8dispatchEv>:
{
    800018c8:	fe010113          	addi	sp,sp,-32
    800018cc:	00113c23          	sd	ra,24(sp)
    800018d0:	00813823          	sd	s0,16(sp)
    800018d4:	00913423          	sd	s1,8(sp)
    800018d8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800018dc:	00004497          	auipc	s1,0x4
    800018e0:	0044b483          	ld	s1,4(s1) # 800058e0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800018e4:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800018e8:	02078c63          	beqz	a5,80001920 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	508080e7          	jalr	1288(ra) # 80001df4 <_ZN9Scheduler3getEv>
    800018f4:	00004797          	auipc	a5,0x4
    800018f8:	fea7b623          	sd	a0,-20(a5) # 800058e0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800018fc:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001900:	01048513          	addi	a0,s1,16
    80001904:	00000097          	auipc	ra,0x0
    80001908:	90c080e7          	jalr	-1780(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000190c:	01813083          	ld	ra,24(sp)
    80001910:	01013403          	ld	s0,16(sp)
    80001914:	00813483          	ld	s1,8(sp)
    80001918:	02010113          	addi	sp,sp,32
    8000191c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001920:	00048513          	mv	a0,s1
    80001924:	00000097          	auipc	ra,0x0
    80001928:	538080e7          	jalr	1336(ra) # 80001e5c <_ZN9Scheduler3putEP3TCB>
    8000192c:	fc1ff06f          	j	800018ec <_ZN3TCB8dispatchEv+0x24>

0000000080001930 <_ZL12blocksNeededm>:
#include "../lib/hw.h"


FreeMemBlock *MemoryAllocator::head = nullptr;

static size_t blocksNeeded(size_t b){
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00813423          	sd	s0,8(sp)
    80001938:	01010413          	addi	s0,sp,16
    return (b + sizeof(FreeMemBlock) + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE;
    8000193c:	04f50513          	addi	a0,a0,79
}
    80001940:	00655513          	srli	a0,a0,0x6
    80001944:	00813403          	ld	s0,8(sp)
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	00008067          	ret

0000000080001950 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size) {
    80001950:	fd010113          	addi	sp,sp,-48
    80001954:	02113423          	sd	ra,40(sp)
    80001958:	02813023          	sd	s0,32(sp)
    8000195c:	00913c23          	sd	s1,24(sp)
    80001960:	01213823          	sd	s2,16(sp)
    80001964:	01313423          	sd	s3,8(sp)
    80001968:	01413023          	sd	s4,0(sp)
    8000196c:	03010413          	addi	s0,sp,48
    if(!size)
    80001970:	0e050663          	beqz	a0,80001a5c <_ZN15MemoryAllocator9mem_allocEm+0x10c>
        return nullptr;

    size_t needed = blocksNeeded(size);
    80001974:	00000097          	auipc	ra,0x0
    80001978:	fbc080e7          	jalr	-68(ra) # 80001930 <_ZL12blocksNeededm>
    8000197c:	00050993          	mv	s3,a0

    FreeMemBlock *curr = head, *prev = nullptr;
    80001980:	00004497          	auipc	s1,0x4
    80001984:	f704b483          	ld	s1,-144(s1) # 800058f0 <_ZN15MemoryAllocator4headE>

    if(head == nullptr){
    80001988:	02048063          	beqz	s1,800019a8 <_ZN15MemoryAllocator9mem_allocEm+0x58>
void* MemoryAllocator::mem_alloc(size_t size) {
    8000198c:	00000a13          	li	s4,0
            head = (FreeMemBlock*)HEAP_START_ADDR;
            head->next = nullptr;
            head->size = NOBlocks;
        }
    }
    while(curr){
    80001990:	08048c63          	beqz	s1,80001a28 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        if(curr->size >= needed){
    80001994:	0084b783          	ld	a5,8(s1)
    80001998:	0537f863          	bgeu	a5,s3,800019e8 <_ZN15MemoryAllocator9mem_allocEm+0x98>
            else
                head = curr->next;

            return (char*)curr + sizeof(FreeMemBlock);
        }
        prev = curr;
    8000199c:	00048a13          	mv	s4,s1
        curr = curr->next;
    800019a0:	0004b483          	ld	s1,0(s1)
    while(curr){
    800019a4:	fedff06f          	j	80001990 <_ZN15MemoryAllocator9mem_allocEm+0x40>
        size_t NOBlocks = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    800019a8:	00004797          	auipc	a5,0x4
    800019ac:	e987b783          	ld	a5,-360(a5) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019b0:	0007b703          	ld	a4,0(a5)
    800019b4:	00004797          	auipc	a5,0x4
    800019b8:	ec47b783          	ld	a5,-316(a5) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x40>
    800019bc:	0007b783          	ld	a5,0(a5)
    800019c0:	40e787b3          	sub	a5,a5,a4
    800019c4:	0067d793          	srli	a5,a5,0x6
        if(needed > NOBlocks)
    800019c8:	06a7e063          	bltu	a5,a0,80001a28 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            head = (FreeMemBlock*)HEAP_START_ADDR;
    800019cc:	00004697          	auipc	a3,0x4
    800019d0:	f2468693          	addi	a3,a3,-220 # 800058f0 <_ZN15MemoryAllocator4headE>
    800019d4:	00e6b023          	sd	a4,0(a3)
            head->next = nullptr;
    800019d8:	00073023          	sd	zero,0(a4)
            head->size = NOBlocks;
    800019dc:	0006b703          	ld	a4,0(a3)
    800019e0:	00f73423          	sd	a5,8(a4)
    800019e4:	fa9ff06f          	j	8000198c <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            size_t remaining = curr->size - needed;
    800019e8:	41378933          	sub	s2,a5,s3
            if(blocksNeeded(1) <= remaining){
    800019ec:	00100513          	li	a0,1
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	f40080e7          	jalr	-192(ra) # 80001930 <_ZL12blocksNeededm>
    800019f8:	02a96063          	bltu	s2,a0,80001a18 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
                FreeMemBlock *newBlock = (FreeMemBlock*)((char*)curr + needed * MEM_BLOCK_SIZE);
    800019fc:	00699793          	slli	a5,s3,0x6
    80001a00:	00f487b3          	add	a5,s1,a5
                newBlock->size = remaining;
    80001a04:	0127b423          	sd	s2,8(a5)
                newBlock->next = curr->next;
    80001a08:	0004b703          	ld	a4,0(s1)
    80001a0c:	00e7b023          	sd	a4,0(a5)
                curr->size = needed;
    80001a10:	0134b423          	sd	s3,8(s1)
                curr->next = newBlock;
    80001a14:	00f4b023          	sd	a5,0(s1)
            if(prev)
    80001a18:	020a0a63          	beqz	s4,80001a4c <_ZN15MemoryAllocator9mem_allocEm+0xfc>
                prev->next = curr->next;
    80001a1c:	0004b783          	ld	a5,0(s1)
    80001a20:	00fa3023          	sd	a5,0(s4)
            return (char*)curr + sizeof(FreeMemBlock);
    80001a24:	01048493          	addi	s1,s1,16
    }
    return nullptr;
}
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	02813083          	ld	ra,40(sp)
    80001a30:	02013403          	ld	s0,32(sp)
    80001a34:	01813483          	ld	s1,24(sp)
    80001a38:	01013903          	ld	s2,16(sp)
    80001a3c:	00813983          	ld	s3,8(sp)
    80001a40:	00013a03          	ld	s4,0(sp)
    80001a44:	03010113          	addi	sp,sp,48
    80001a48:	00008067          	ret
                head = curr->next;
    80001a4c:	0004b783          	ld	a5,0(s1)
    80001a50:	00004717          	auipc	a4,0x4
    80001a54:	eaf73023          	sd	a5,-352(a4) # 800058f0 <_ZN15MemoryAllocator4headE>
    80001a58:	fcdff06f          	j	80001a24 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
        return nullptr;
    80001a5c:	00000493          	li	s1,0
    80001a60:	fc9ff06f          	j	80001a28 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080001a64 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *ptr) {
    80001a64:	ff010113          	addi	sp,sp,-16
    80001a68:	00813423          	sd	s0,8(sp)
    80001a6c:	01010413          	addi	s0,sp,16
    if(ptr == nullptr)
    80001a70:	0a050a63          	beqz	a0,80001b24 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
        return -1;

    FreeMemBlock *block = (FreeMemBlock*) ((char*) ptr -sizeof(FreeMemBlock));
    80001a74:	ff050693          	addi	a3,a0,-16
    FreeMemBlock* curr = head, *prev = nullptr;
    80001a78:	00004797          	auipc	a5,0x4
    80001a7c:	e787b783          	ld	a5,-392(a5) # 800058f0 <_ZN15MemoryAllocator4headE>
    80001a80:	00000713          	li	a4,0

    while(curr && curr < block){
    80001a84:	00078a63          	beqz	a5,80001a98 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
    80001a88:	00d7f863          	bgeu	a5,a3,80001a98 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        prev = curr;
    80001a8c:	00078713          	mv	a4,a5
        curr = curr->next;
    80001a90:	0007b783          	ld	a5,0(a5)
    while(curr && curr < block){
    80001a94:	ff1ff06f          	j	80001a84 <_ZN15MemoryAllocator8mem_freeEPv+0x20>
    }
    if(prev == nullptr)
    80001a98:	04070663          	beqz	a4,80001ae4 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        head = block;
    else
        prev->next = block;
    80001a9c:	00d73023          	sd	a3,0(a4)

    block->next = curr;
    80001aa0:	fef53823          	sd	a5,-16(a0)
    if(block->next && (char*)block + block->size * MEM_BLOCK_SIZE == (char*) block->next){
    80001aa4:	00078a63          	beqz	a5,80001ab8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001aa8:	ff853603          	ld	a2,-8(a0)
    80001aac:	00661593          	slli	a1,a2,0x6
    80001ab0:	00b686b3          	add	a3,a3,a1
    80001ab4:	02f68e63          	beq	a3,a5,80001af0 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
        block->size += block->next->size;
        block->next = block->next->next;
    }

    if(prev){
    80001ab8:	06070a63          	beqz	a4,80001b2c <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
        if(prev->next && (char*)prev + prev->size * MEM_BLOCK_SIZE == (char*)prev->next){
    80001abc:	00073783          	ld	a5,0(a4)
    80001ac0:	06078a63          	beqz	a5,80001b34 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80001ac4:	00873603          	ld	a2,8(a4)
    80001ac8:	00661693          	slli	a3,a2,0x6
    80001acc:	00d706b3          	add	a3,a4,a3
    80001ad0:	02d78c63          	beq	a5,a3,80001b08 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
            prev->size += prev->next->size;
            prev->next = prev->next->next;
        }
    }

    return 0;
    80001ad4:	00000513          	li	a0,0

}
    80001ad8:	00813403          	ld	s0,8(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret
        head = block;
    80001ae4:	00004617          	auipc	a2,0x4
    80001ae8:	e0d63623          	sd	a3,-500(a2) # 800058f0 <_ZN15MemoryAllocator4headE>
    80001aec:	fb5ff06f          	j	80001aa0 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
        block->size += block->next->size;
    80001af0:	0087b683          	ld	a3,8(a5)
    80001af4:	00d60633          	add	a2,a2,a3
    80001af8:	fec53c23          	sd	a2,-8(a0)
        block->next = block->next->next;
    80001afc:	0007b783          	ld	a5,0(a5)
    80001b00:	fef53823          	sd	a5,-16(a0)
    80001b04:	fb5ff06f          	j	80001ab8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
            prev->size += prev->next->size;
    80001b08:	0087b683          	ld	a3,8(a5)
    80001b0c:	00d60633          	add	a2,a2,a3
    80001b10:	00c73423          	sd	a2,8(a4)
            prev->next = prev->next->next;
    80001b14:	0007b783          	ld	a5,0(a5)
    80001b18:	00f73023          	sd	a5,0(a4)
    return 0;
    80001b1c:	00000513          	li	a0,0
    80001b20:	fb9ff06f          	j	80001ad8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
        return -1;
    80001b24:	fff00513          	li	a0,-1
    80001b28:	fb1ff06f          	j	80001ad8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    return 0;
    80001b2c:	00000513          	li	a0,0
    80001b30:	fa9ff06f          	j	80001ad8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    80001b34:	00000513          	li	a0,0
    80001b38:	fa1ff06f          	j	80001ad8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>

0000000080001b3c <_ZN15MemoryAllocator18mem_get_free_spaceEv>:


size_t MemoryAllocator::mem_get_free_space() {
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00813423          	sd	s0,8(sp)
    80001b44:	01010413          	addi	s0,sp,16
    return 0;
}
    80001b48:	00000513          	li	a0,0
    80001b4c:	00813403          	ld	s0,8(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00813423          	sd	s0,8(sp)
    80001b60:	01010413          	addi	s0,sp,16
    return 0;
}
    80001b64:	00000513          	li	a0,0
    80001b68:	00813403          	ld	s0,8(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
//    return __mem_alloc(n);
    return MemoryAllocator::mem_alloc(n);
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	dcc080e7          	jalr	-564(ra) # 80001950 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_Znam>:

void *operator new[](size_t n)
{
    80001b9c:	ff010113          	addi	sp,sp,-16
    80001ba0:	00113423          	sd	ra,8(sp)
    80001ba4:	00813023          	sd	s0,0(sp)
    80001ba8:	01010413          	addi	s0,sp,16
//    return __mem_alloc(n);
    return MemoryAllocator::mem_alloc(n);
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	da4080e7          	jalr	-604(ra) # 80001950 <_ZN15MemoryAllocator9mem_allocEm>

}
    80001bb4:	00813083          	ld	ra,8(sp)
    80001bb8:	00013403          	ld	s0,0(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret

0000000080001bc4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001bc4:	ff010113          	addi	sp,sp,-16
    80001bc8:	00113423          	sd	ra,8(sp)
    80001bcc:	00813023          	sd	s0,0(sp)
    80001bd0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001bd4:	00002097          	auipc	ra,0x2
    80001bd8:	518080e7          	jalr	1304(ra) # 800040ec <__mem_free>
//    MemoryAllocator::mem_free(p);
}
    80001bdc:	00813083          	ld	ra,8(sp)
    80001be0:	00013403          	ld	s0,0(sp)
    80001be4:	01010113          	addi	sp,sp,16
    80001be8:	00008067          	ret

0000000080001bec <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001bec:	ff010113          	addi	sp,sp,-16
    80001bf0:	00113423          	sd	ra,8(sp)
    80001bf4:	00813023          	sd	s0,0(sp)
    80001bf8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001bfc:	00002097          	auipc	ra,0x2
    80001c00:	4f0080e7          	jalr	1264(ra) # 800040ec <__mem_free>
//    MemoryAllocator::mem_free(p);
    80001c04:	00813083          	ld	ra,8(sp)
    80001c08:	00013403          	ld	s0,0(sp)
    80001c0c:	01010113          	addi	sp,sp,16
    80001c10:	00008067          	ret

0000000080001c14 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

void Riscv::popSppSpie()
{
    80001c14:	ff010113          	addi	sp,sp,-16
    80001c18:	00813423          	sd	s0,8(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001c20:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001c24:	10200073          	sret
}
    80001c28:	00813403          	ld	s0,8(sp)
    80001c2c:	01010113          	addi	sp,sp,16
    80001c30:	00008067          	ret

0000000080001c34 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001c34:	fa010113          	addi	sp,sp,-96
    80001c38:	04113c23          	sd	ra,88(sp)
    80001c3c:	04813823          	sd	s0,80(sp)
    80001c40:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c44:	142027f3          	csrr	a5,scause
    80001c48:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001c4c:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == ECALL_USER || scause == ECALL_SUPER)
    80001c50:	ff870693          	addi	a3,a4,-8
    80001c54:	00100793          	li	a5,1
    80001c58:	02d7f863          	bgeu	a5,a3,80001c88 <_ZN5Riscv20handleSupervisorTrapEv+0x54>
            }
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == SOFTWARE)
    80001c5c:	fff00793          	li	a5,-1
    80001c60:	03f79793          	slli	a5,a5,0x3f
    80001c64:	00178793          	addi	a5,a5,1
    80001c68:	0cf70a63          	beq	a4,a5,80001d3c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == EXTERNAL)
    80001c6c:	fff00793          	li	a5,-1
    80001c70:	03f79793          	slli	a5,a5,0x3f
    80001c74:	00978793          	addi	a5,a5,9
    80001c78:	06f71a63          	bne	a4,a5,80001cec <_ZN5Riscv20handleSupervisorTrapEv+0xb8>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80001c7c:	00002097          	auipc	ra,0x2
    80001c80:	708080e7          	jalr	1800(ra) # 80004384 <console_handler>
    else
    {

        // unexpected trap cause
    }
}
    80001c84:	0680006f          	j	80001cec <_ZN5Riscv20handleSupervisorTrapEv+0xb8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c88:	141027f3          	csrr	a5,sepc
    80001c8c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001c90:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001c94:	00478793          	addi	a5,a5,4
    80001c98:	faf43023          	sd	a5,-96(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c9c:	100027f3          	csrr	a5,sstatus
    80001ca0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001ca4:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001ca8:	faf43423          	sd	a5,-88(s0)
        __asm__ volatile("mv %0, sp":"=r"(context));
    80001cac:	00010793          	mv	a5,sp
    80001cb0:	faf43823          	sd	a5,-80(s0)
        uint64 opcode = context[10];
    80001cb4:	fb043783          	ld	a5,-80(s0)
    80001cb8:	0507b783          	ld	a5,80(a5)
        uint64 a1 = context[11];
    80001cbc:	fb043703          	ld	a4,-80(s0)
    80001cc0:	05873503          	ld	a0,88(a4)
        switch(opcode){
    80001cc4:	00200713          	li	a4,2
    80001cc8:	04e78463          	beq	a5,a4,80001d10 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    80001ccc:	01300713          	li	a4,19
    80001cd0:	04e78a63          	beq	a5,a4,80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80001cd4:	00100713          	li	a4,1
    80001cd8:	02e78263          	beq	a5,a4,80001cfc <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
        w_sstatus(sstatus);
    80001cdc:	fa843783          	ld	a5,-88(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ce0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001ce4:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ce8:	14179073          	csrw	sepc,a5
}
    80001cec:	05813083          	ld	ra,88(sp)
    80001cf0:	05013403          	ld	s0,80(sp)
    80001cf4:	06010113          	addi	sp,sp,96
    80001cf8:	00008067          	ret
                ptr = MemoryAllocator::mem_alloc(size);
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	c54080e7          	jalr	-940(ra) # 80001950 <_ZN15MemoryAllocator9mem_allocEm>
                context[10] = (uint64) ptr;
    80001d04:	fb043783          	ld	a5,-80(s0)
    80001d08:	04a7b823          	sd	a0,80(a5)
                break;
    80001d0c:	fd1ff06f          	j	80001cdc <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
                int res = MemoryAllocator::mem_free(ptr);
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	d54080e7          	jalr	-684(ra) # 80001a64 <_ZN15MemoryAllocator8mem_freeEPv>
                context[10] = res;
    80001d18:	fb043783          	ld	a5,-80(s0)
    80001d1c:	04a7b823          	sd	a0,80(a5)
                break;}
    80001d20:	fbdff06f          	j	80001cdc <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
                TCB::timeSliceCounter = 0;
    80001d24:	00004797          	auipc	a5,0x4
    80001d28:	b347b783          	ld	a5,-1228(a5) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d2c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	b98080e7          	jalr	-1128(ra) # 800018c8 <_ZN3TCB8dispatchEv>
                break;
    80001d38:	fa5ff06f          	j	80001cdc <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d3c:	00200793          	li	a5,2
    80001d40:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001d44:	00004717          	auipc	a4,0x4
    80001d48:	b1473703          	ld	a4,-1260(a4) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d4c:	00073783          	ld	a5,0(a4)
    80001d50:	00178793          	addi	a5,a5,1
    80001d54:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001d58:	00004717          	auipc	a4,0x4
    80001d5c:	b1873703          	ld	a4,-1256(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001d60:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001d64:	02073703          	ld	a4,32(a4)
    80001d68:	f8e7e2e3          	bltu	a5,a4,80001cec <_ZN5Riscv20handleSupervisorTrapEv+0xb8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d6c:	141027f3          	csrr	a5,sepc
    80001d70:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001d74:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80001d78:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d7c:	100027f3          	csrr	a5,sstatus
    80001d80:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80001d84:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80001d88:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80001d8c:	00004797          	auipc	a5,0x4
    80001d90:	acc7b783          	ld	a5,-1332(a5) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d94:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	b30080e7          	jalr	-1232(ra) # 800018c8 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001da0:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001da4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001da8:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001dac:	14179073          	csrw	sepc,a5
}
    80001db0:	f3dff06f          	j	80001cec <_ZN5Riscv20handleSupervisorTrapEv+0xb8>

0000000080001db4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00813423          	sd	s0,8(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    80001dc0:	00100793          	li	a5,1
    80001dc4:	00f50863          	beq	a0,a5,80001dd4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001dc8:	00813403          	ld	s0,8(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret
    80001dd4:	000107b7          	lui	a5,0x10
    80001dd8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ddc:	fef596e3          	bne	a1,a5,80001dc8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001de0:	00004797          	auipc	a5,0x4
    80001de4:	b1878793          	addi	a5,a5,-1256 # 800058f8 <_ZN9Scheduler16readyThreadQueueE>
    80001de8:	0007b023          	sd	zero,0(a5)
    80001dec:	0007b423          	sd	zero,8(a5)
    80001df0:	fd9ff06f          	j	80001dc8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001df4 <_ZN9Scheduler3getEv>:
{
    80001df4:	fe010113          	addi	sp,sp,-32
    80001df8:	00113c23          	sd	ra,24(sp)
    80001dfc:	00813823          	sd	s0,16(sp)
    80001e00:	00913423          	sd	s1,8(sp)
    80001e04:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001e08:	00004517          	auipc	a0,0x4
    80001e0c:	af053503          	ld	a0,-1296(a0) # 800058f8 <_ZN9Scheduler16readyThreadQueueE>
    80001e10:	04050263          	beqz	a0,80001e54 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001e14:	00853783          	ld	a5,8(a0)
    80001e18:	00004717          	auipc	a4,0x4
    80001e1c:	aef73023          	sd	a5,-1312(a4) # 800058f8 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001e20:	02078463          	beqz	a5,80001e48 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001e24:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	d9c080e7          	jalr	-612(ra) # 80001bc4 <_ZdlPv>
}
    80001e30:	00048513          	mv	a0,s1
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret
        if (!head) { tail = 0; }
    80001e48:	00004797          	auipc	a5,0x4
    80001e4c:	aa07bc23          	sd	zero,-1352(a5) # 80005900 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001e50:	fd5ff06f          	j	80001e24 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001e54:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001e58:	fd9ff06f          	j	80001e30 <_ZN9Scheduler3getEv+0x3c>

0000000080001e5c <_ZN9Scheduler3putEP3TCB>:
{
    80001e5c:	fe010113          	addi	sp,sp,-32
    80001e60:	00113c23          	sd	ra,24(sp)
    80001e64:	00813823          	sd	s0,16(sp)
    80001e68:	00913423          	sd	s1,8(sp)
    80001e6c:	02010413          	addi	s0,sp,32
    80001e70:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001e74:	01000513          	li	a0,16
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	cfc080e7          	jalr	-772(ra) # 80001b74 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001e80:	00953023          	sd	s1,0(a0)
    80001e84:	00053423          	sd	zero,8(a0)
        if (tail)
    80001e88:	00004797          	auipc	a5,0x4
    80001e8c:	a787b783          	ld	a5,-1416(a5) # 80005900 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001e90:	02078263          	beqz	a5,80001eb4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001e94:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001e98:	00004797          	auipc	a5,0x4
    80001e9c:	a6a7b423          	sd	a0,-1432(a5) # 80005900 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ea0:	01813083          	ld	ra,24(sp)
    80001ea4:	01013403          	ld	s0,16(sp)
    80001ea8:	00813483          	ld	s1,8(sp)
    80001eac:	02010113          	addi	sp,sp,32
    80001eb0:	00008067          	ret
            head = tail = elem;
    80001eb4:	00004797          	auipc	a5,0x4
    80001eb8:	a4478793          	addi	a5,a5,-1468 # 800058f8 <_ZN9Scheduler16readyThreadQueueE>
    80001ebc:	00a7b423          	sd	a0,8(a5)
    80001ec0:	00a7b023          	sd	a0,0(a5)
    80001ec4:	fddff06f          	j	80001ea0 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001ec8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00113423          	sd	ra,8(sp)
    80001ed0:	00813023          	sd	s0,0(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    80001ed8:	000105b7          	lui	a1,0x10
    80001edc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ee0:	00100513          	li	a0,1
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	ed0080e7          	jalr	-304(ra) # 80001db4 <_Z41__static_initialization_and_destruction_0ii>
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001efc:	fd010113          	addi	sp,sp,-48
    80001f00:	02113423          	sd	ra,40(sp)
    80001f04:	02813023          	sd	s0,32(sp)
    80001f08:	00913c23          	sd	s1,24(sp)
    80001f0c:	01213823          	sd	s2,16(sp)
    80001f10:	03010413          	addi	s0,sp,48
    80001f14:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f18:	100027f3          	csrr	a5,sstatus
    80001f1c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001f20:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f24:	00200793          	li	a5,2
    80001f28:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001f2c:	0004c503          	lbu	a0,0(s1)
    80001f30:	00050a63          	beqz	a0,80001f44 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001f34:	00002097          	auipc	ra,0x2
    80001f38:	3dc080e7          	jalr	988(ra) # 80004310 <__putc>
        string++;
    80001f3c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f40:	fedff06f          	j	80001f2c <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f44:	0009091b          	sext.w	s2,s2
    80001f48:	00297913          	andi	s2,s2,2
    80001f4c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f50:	10092073          	csrs	sstatus,s2
}
    80001f54:	02813083          	ld	ra,40(sp)
    80001f58:	02013403          	ld	s0,32(sp)
    80001f5c:	01813483          	ld	s1,24(sp)
    80001f60:	01013903          	ld	s2,16(sp)
    80001f64:	03010113          	addi	sp,sp,48
    80001f68:	00008067          	ret

0000000080001f6c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001f6c:	fc010113          	addi	sp,sp,-64
    80001f70:	02113c23          	sd	ra,56(sp)
    80001f74:	02813823          	sd	s0,48(sp)
    80001f78:	02913423          	sd	s1,40(sp)
    80001f7c:	03213023          	sd	s2,32(sp)
    80001f80:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f84:	100027f3          	csrr	a5,sstatus
    80001f88:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001f8c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f90:	00200793          	li	a5,2
    80001f94:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001f98:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001f9c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001fa0:	00a00613          	li	a2,10
    80001fa4:	02c5773b          	remuw	a4,a0,a2
    80001fa8:	02071693          	slli	a3,a4,0x20
    80001fac:	0206d693          	srli	a3,a3,0x20
    80001fb0:	00003717          	auipc	a4,0x3
    80001fb4:	14870713          	addi	a4,a4,328 # 800050f8 <_ZZ12printIntegermE6digits>
    80001fb8:	00d70733          	add	a4,a4,a3
    80001fbc:	00074703          	lbu	a4,0(a4)
    80001fc0:	fe040693          	addi	a3,s0,-32
    80001fc4:	009687b3          	add	a5,a3,s1
    80001fc8:	0014849b          	addiw	s1,s1,1
    80001fcc:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001fd0:	0005071b          	sext.w	a4,a0
    80001fd4:	02c5553b          	divuw	a0,a0,a2
    80001fd8:	00900793          	li	a5,9
    80001fdc:	fce7e2e3          	bltu	a5,a4,80001fa0 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001fe0:	fff4849b          	addiw	s1,s1,-1
    80001fe4:	0004ce63          	bltz	s1,80002000 <_Z12printIntegerm+0x94>
    80001fe8:	fe040793          	addi	a5,s0,-32
    80001fec:	009787b3          	add	a5,a5,s1
    80001ff0:	ff07c503          	lbu	a0,-16(a5)
    80001ff4:	00002097          	auipc	ra,0x2
    80001ff8:	31c080e7          	jalr	796(ra) # 80004310 <__putc>
    80001ffc:	fe5ff06f          	j	80001fe0 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002000:	0009091b          	sext.w	s2,s2
    80002004:	00297913          	andi	s2,s2,2
    80002008:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000200c:	10092073          	csrs	sstatus,s2
    80002010:	03813083          	ld	ra,56(sp)
    80002014:	03013403          	ld	s0,48(sp)
    80002018:	02813483          	ld	s1,40(sp)
    8000201c:	02013903          	ld	s2,32(sp)
    80002020:	04010113          	addi	sp,sp,64
    80002024:	00008067          	ret

0000000080002028 <start>:
    80002028:	ff010113          	addi	sp,sp,-16
    8000202c:	00813423          	sd	s0,8(sp)
    80002030:	01010413          	addi	s0,sp,16
    80002034:	300027f3          	csrr	a5,mstatus
    80002038:	ffffe737          	lui	a4,0xffffe
    8000203c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c7f>
    80002040:	00e7f7b3          	and	a5,a5,a4
    80002044:	00001737          	lui	a4,0x1
    80002048:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000204c:	00e7e7b3          	or	a5,a5,a4
    80002050:	30079073          	csrw	mstatus,a5
    80002054:	00000797          	auipc	a5,0x0
    80002058:	16078793          	addi	a5,a5,352 # 800021b4 <system_main>
    8000205c:	34179073          	csrw	mepc,a5
    80002060:	00000793          	li	a5,0
    80002064:	18079073          	csrw	satp,a5
    80002068:	000107b7          	lui	a5,0x10
    8000206c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002070:	30279073          	csrw	medeleg,a5
    80002074:	30379073          	csrw	mideleg,a5
    80002078:	104027f3          	csrr	a5,sie
    8000207c:	2227e793          	ori	a5,a5,546
    80002080:	10479073          	csrw	sie,a5
    80002084:	fff00793          	li	a5,-1
    80002088:	00a7d793          	srli	a5,a5,0xa
    8000208c:	3b079073          	csrw	pmpaddr0,a5
    80002090:	00f00793          	li	a5,15
    80002094:	3a079073          	csrw	pmpcfg0,a5
    80002098:	f14027f3          	csrr	a5,mhartid
    8000209c:	0200c737          	lui	a4,0x200c
    800020a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020a4:	0007869b          	sext.w	a3,a5
    800020a8:	00269713          	slli	a4,a3,0x2
    800020ac:	000f4637          	lui	a2,0xf4
    800020b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020b4:	00d70733          	add	a4,a4,a3
    800020b8:	0037979b          	slliw	a5,a5,0x3
    800020bc:	020046b7          	lui	a3,0x2004
    800020c0:	00d787b3          	add	a5,a5,a3
    800020c4:	00c585b3          	add	a1,a1,a2
    800020c8:	00371693          	slli	a3,a4,0x3
    800020cc:	00004717          	auipc	a4,0x4
    800020d0:	84470713          	addi	a4,a4,-1980 # 80005910 <timer_scratch>
    800020d4:	00b7b023          	sd	a1,0(a5)
    800020d8:	00d70733          	add	a4,a4,a3
    800020dc:	00f73c23          	sd	a5,24(a4)
    800020e0:	02c73023          	sd	a2,32(a4)
    800020e4:	34071073          	csrw	mscratch,a4
    800020e8:	00000797          	auipc	a5,0x0
    800020ec:	6e878793          	addi	a5,a5,1768 # 800027d0 <timervec>
    800020f0:	30579073          	csrw	mtvec,a5
    800020f4:	300027f3          	csrr	a5,mstatus
    800020f8:	0087e793          	ori	a5,a5,8
    800020fc:	30079073          	csrw	mstatus,a5
    80002100:	304027f3          	csrr	a5,mie
    80002104:	0807e793          	ori	a5,a5,128
    80002108:	30479073          	csrw	mie,a5
    8000210c:	f14027f3          	csrr	a5,mhartid
    80002110:	0007879b          	sext.w	a5,a5
    80002114:	00078213          	mv	tp,a5
    80002118:	30200073          	mret
    8000211c:	00813403          	ld	s0,8(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <timerinit>:
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00813423          	sd	s0,8(sp)
    80002130:	01010413          	addi	s0,sp,16
    80002134:	f14027f3          	csrr	a5,mhartid
    80002138:	0200c737          	lui	a4,0x200c
    8000213c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002140:	0007869b          	sext.w	a3,a5
    80002144:	00269713          	slli	a4,a3,0x2
    80002148:	000f4637          	lui	a2,0xf4
    8000214c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002150:	00d70733          	add	a4,a4,a3
    80002154:	0037979b          	slliw	a5,a5,0x3
    80002158:	020046b7          	lui	a3,0x2004
    8000215c:	00d787b3          	add	a5,a5,a3
    80002160:	00c585b3          	add	a1,a1,a2
    80002164:	00371693          	slli	a3,a4,0x3
    80002168:	00003717          	auipc	a4,0x3
    8000216c:	7a870713          	addi	a4,a4,1960 # 80005910 <timer_scratch>
    80002170:	00b7b023          	sd	a1,0(a5)
    80002174:	00d70733          	add	a4,a4,a3
    80002178:	00f73c23          	sd	a5,24(a4)
    8000217c:	02c73023          	sd	a2,32(a4)
    80002180:	34071073          	csrw	mscratch,a4
    80002184:	00000797          	auipc	a5,0x0
    80002188:	64c78793          	addi	a5,a5,1612 # 800027d0 <timervec>
    8000218c:	30579073          	csrw	mtvec,a5
    80002190:	300027f3          	csrr	a5,mstatus
    80002194:	0087e793          	ori	a5,a5,8
    80002198:	30079073          	csrw	mstatus,a5
    8000219c:	304027f3          	csrr	a5,mie
    800021a0:	0807e793          	ori	a5,a5,128
    800021a4:	30479073          	csrw	mie,a5
    800021a8:	00813403          	ld	s0,8(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <system_main>:
    800021b4:	fe010113          	addi	sp,sp,-32
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	00113c23          	sd	ra,24(sp)
    800021c4:	02010413          	addi	s0,sp,32
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	0c4080e7          	jalr	196(ra) # 8000228c <cpuid>
    800021d0:	00003497          	auipc	s1,0x3
    800021d4:	6e048493          	addi	s1,s1,1760 # 800058b0 <started>
    800021d8:	02050263          	beqz	a0,800021fc <system_main+0x48>
    800021dc:	0004a783          	lw	a5,0(s1)
    800021e0:	0007879b          	sext.w	a5,a5
    800021e4:	fe078ce3          	beqz	a5,800021dc <system_main+0x28>
    800021e8:	0ff0000f          	fence
    800021ec:	00003517          	auipc	a0,0x3
    800021f0:	f4c50513          	addi	a0,a0,-180 # 80005138 <_ZZ12printIntegermE6digits+0x40>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	a78080e7          	jalr	-1416(ra) # 80002c6c <panic>
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	9cc080e7          	jalr	-1588(ra) # 80002bc8 <consoleinit>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	158080e7          	jalr	344(ra) # 8000335c <printfinit>
    8000220c:	00003517          	auipc	a0,0x3
    80002210:	ee450513          	addi	a0,a0,-284 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002214:	00001097          	auipc	ra,0x1
    80002218:	ab4080e7          	jalr	-1356(ra) # 80002cc8 <__printf>
    8000221c:	00003517          	auipc	a0,0x3
    80002220:	eec50513          	addi	a0,a0,-276 # 80005108 <_ZZ12printIntegermE6digits+0x10>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	aa4080e7          	jalr	-1372(ra) # 80002cc8 <__printf>
    8000222c:	00003517          	auipc	a0,0x3
    80002230:	ec450513          	addi	a0,a0,-316 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002234:	00001097          	auipc	ra,0x1
    80002238:	a94080e7          	jalr	-1388(ra) # 80002cc8 <__printf>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	4ac080e7          	jalr	1196(ra) # 800036e8 <kinit>
    80002244:	00000097          	auipc	ra,0x0
    80002248:	148080e7          	jalr	328(ra) # 8000238c <trapinit>
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	16c080e7          	jalr	364(ra) # 800023b8 <trapinithart>
    80002254:	00000097          	auipc	ra,0x0
    80002258:	5bc080e7          	jalr	1468(ra) # 80002810 <plicinit>
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	5dc080e7          	jalr	1500(ra) # 80002838 <plicinithart>
    80002264:	00000097          	auipc	ra,0x0
    80002268:	078080e7          	jalr	120(ra) # 800022dc <userinit>
    8000226c:	0ff0000f          	fence
    80002270:	00100793          	li	a5,1
    80002274:	00003517          	auipc	a0,0x3
    80002278:	eac50513          	addi	a0,a0,-340 # 80005120 <_ZZ12printIntegermE6digits+0x28>
    8000227c:	00f4a023          	sw	a5,0(s1)
    80002280:	00001097          	auipc	ra,0x1
    80002284:	a48080e7          	jalr	-1464(ra) # 80002cc8 <__printf>
    80002288:	0000006f          	j	80002288 <system_main+0xd4>

000000008000228c <cpuid>:
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813423          	sd	s0,8(sp)
    80002294:	01010413          	addi	s0,sp,16
    80002298:	00020513          	mv	a0,tp
    8000229c:	00813403          	ld	s0,8(sp)
    800022a0:	0005051b          	sext.w	a0,a0
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret

00000000800022ac <mycpu>:
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00813423          	sd	s0,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
    800022b8:	00020793          	mv	a5,tp
    800022bc:	00813403          	ld	s0,8(sp)
    800022c0:	0007879b          	sext.w	a5,a5
    800022c4:	00779793          	slli	a5,a5,0x7
    800022c8:	00004517          	auipc	a0,0x4
    800022cc:	67850513          	addi	a0,a0,1656 # 80006940 <cpus>
    800022d0:	00f50533          	add	a0,a0,a5
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <userinit>:
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00813423          	sd	s0,8(sp)
    800022e4:	01010413          	addi	s0,sp,16
    800022e8:	00813403          	ld	s0,8(sp)
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	fffff317          	auipc	t1,0xfffff
    800022f4:	32030067          	jr	800(t1) # 80001610 <main>

00000000800022f8 <either_copyout>:
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00813023          	sd	s0,0(sp)
    80002300:	00113423          	sd	ra,8(sp)
    80002304:	01010413          	addi	s0,sp,16
    80002308:	02051663          	bnez	a0,80002334 <either_copyout+0x3c>
    8000230c:	00058513          	mv	a0,a1
    80002310:	00060593          	mv	a1,a2
    80002314:	0006861b          	sext.w	a2,a3
    80002318:	00002097          	auipc	ra,0x2
    8000231c:	c5c080e7          	jalr	-932(ra) # 80003f74 <__memmove>
    80002320:	00813083          	ld	ra,8(sp)
    80002324:	00013403          	ld	s0,0(sp)
    80002328:	00000513          	li	a0,0
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret
    80002334:	00003517          	auipc	a0,0x3
    80002338:	e2c50513          	addi	a0,a0,-468 # 80005160 <_ZZ12printIntegermE6digits+0x68>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	930080e7          	jalr	-1744(ra) # 80002c6c <panic>

0000000080002344 <either_copyin>:
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813023          	sd	s0,0(sp)
    8000234c:	00113423          	sd	ra,8(sp)
    80002350:	01010413          	addi	s0,sp,16
    80002354:	02059463          	bnez	a1,8000237c <either_copyin+0x38>
    80002358:	00060593          	mv	a1,a2
    8000235c:	0006861b          	sext.w	a2,a3
    80002360:	00002097          	auipc	ra,0x2
    80002364:	c14080e7          	jalr	-1004(ra) # 80003f74 <__memmove>
    80002368:	00813083          	ld	ra,8(sp)
    8000236c:	00013403          	ld	s0,0(sp)
    80002370:	00000513          	li	a0,0
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret
    8000237c:	00003517          	auipc	a0,0x3
    80002380:	e0c50513          	addi	a0,a0,-500 # 80005188 <_ZZ12printIntegermE6digits+0x90>
    80002384:	00001097          	auipc	ra,0x1
    80002388:	8e8080e7          	jalr	-1816(ra) # 80002c6c <panic>

000000008000238c <trapinit>:
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00813423          	sd	s0,8(sp)
    80002394:	01010413          	addi	s0,sp,16
    80002398:	00813403          	ld	s0,8(sp)
    8000239c:	00003597          	auipc	a1,0x3
    800023a0:	e1458593          	addi	a1,a1,-492 # 800051b0 <_ZZ12printIntegermE6digits+0xb8>
    800023a4:	00004517          	auipc	a0,0x4
    800023a8:	61c50513          	addi	a0,a0,1564 # 800069c0 <tickslock>
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00001317          	auipc	t1,0x1
    800023b4:	5c830067          	jr	1480(t1) # 80003978 <initlock>

00000000800023b8 <trapinithart>:
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00813423          	sd	s0,8(sp)
    800023c0:	01010413          	addi	s0,sp,16
    800023c4:	00000797          	auipc	a5,0x0
    800023c8:	2fc78793          	addi	a5,a5,764 # 800026c0 <kernelvec>
    800023cc:	10579073          	csrw	stvec,a5
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <usertrap>:
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    800023e8:	00813403          	ld	s0,8(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <usertrapret>:
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00813423          	sd	s0,8(sp)
    800023fc:	01010413          	addi	s0,sp,16
    80002400:	00813403          	ld	s0,8(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret

000000008000240c <kerneltrap>:
    8000240c:	fe010113          	addi	sp,sp,-32
    80002410:	00813823          	sd	s0,16(sp)
    80002414:	00113c23          	sd	ra,24(sp)
    80002418:	00913423          	sd	s1,8(sp)
    8000241c:	02010413          	addi	s0,sp,32
    80002420:	142025f3          	csrr	a1,scause
    80002424:	100027f3          	csrr	a5,sstatus
    80002428:	0027f793          	andi	a5,a5,2
    8000242c:	10079c63          	bnez	a5,80002544 <kerneltrap+0x138>
    80002430:	142027f3          	csrr	a5,scause
    80002434:	0207ce63          	bltz	a5,80002470 <kerneltrap+0x64>
    80002438:	00003517          	auipc	a0,0x3
    8000243c:	dc050513          	addi	a0,a0,-576 # 800051f8 <_ZZ12printIntegermE6digits+0x100>
    80002440:	00001097          	auipc	ra,0x1
    80002444:	888080e7          	jalr	-1912(ra) # 80002cc8 <__printf>
    80002448:	141025f3          	csrr	a1,sepc
    8000244c:	14302673          	csrr	a2,stval
    80002450:	00003517          	auipc	a0,0x3
    80002454:	db850513          	addi	a0,a0,-584 # 80005208 <_ZZ12printIntegermE6digits+0x110>
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	870080e7          	jalr	-1936(ra) # 80002cc8 <__printf>
    80002460:	00003517          	auipc	a0,0x3
    80002464:	dc050513          	addi	a0,a0,-576 # 80005220 <_ZZ12printIntegermE6digits+0x128>
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	804080e7          	jalr	-2044(ra) # 80002c6c <panic>
    80002470:	0ff7f713          	andi	a4,a5,255
    80002474:	00900693          	li	a3,9
    80002478:	04d70063          	beq	a4,a3,800024b8 <kerneltrap+0xac>
    8000247c:	fff00713          	li	a4,-1
    80002480:	03f71713          	slli	a4,a4,0x3f
    80002484:	00170713          	addi	a4,a4,1
    80002488:	fae798e3          	bne	a5,a4,80002438 <kerneltrap+0x2c>
    8000248c:	00000097          	auipc	ra,0x0
    80002490:	e00080e7          	jalr	-512(ra) # 8000228c <cpuid>
    80002494:	06050663          	beqz	a0,80002500 <kerneltrap+0xf4>
    80002498:	144027f3          	csrr	a5,sip
    8000249c:	ffd7f793          	andi	a5,a5,-3
    800024a0:	14479073          	csrw	sip,a5
    800024a4:	01813083          	ld	ra,24(sp)
    800024a8:	01013403          	ld	s0,16(sp)
    800024ac:	00813483          	ld	s1,8(sp)
    800024b0:	02010113          	addi	sp,sp,32
    800024b4:	00008067          	ret
    800024b8:	00000097          	auipc	ra,0x0
    800024bc:	3cc080e7          	jalr	972(ra) # 80002884 <plic_claim>
    800024c0:	00a00793          	li	a5,10
    800024c4:	00050493          	mv	s1,a0
    800024c8:	06f50863          	beq	a0,a5,80002538 <kerneltrap+0x12c>
    800024cc:	fc050ce3          	beqz	a0,800024a4 <kerneltrap+0x98>
    800024d0:	00050593          	mv	a1,a0
    800024d4:	00003517          	auipc	a0,0x3
    800024d8:	d0450513          	addi	a0,a0,-764 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	7ec080e7          	jalr	2028(ra) # 80002cc8 <__printf>
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	01813083          	ld	ra,24(sp)
    800024ec:	00048513          	mv	a0,s1
    800024f0:	00813483          	ld	s1,8(sp)
    800024f4:	02010113          	addi	sp,sp,32
    800024f8:	00000317          	auipc	t1,0x0
    800024fc:	3c430067          	jr	964(t1) # 800028bc <plic_complete>
    80002500:	00004517          	auipc	a0,0x4
    80002504:	4c050513          	addi	a0,a0,1216 # 800069c0 <tickslock>
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	494080e7          	jalr	1172(ra) # 8000399c <acquire>
    80002510:	00003717          	auipc	a4,0x3
    80002514:	3a470713          	addi	a4,a4,932 # 800058b4 <ticks>
    80002518:	00072783          	lw	a5,0(a4)
    8000251c:	00004517          	auipc	a0,0x4
    80002520:	4a450513          	addi	a0,a0,1188 # 800069c0 <tickslock>
    80002524:	0017879b          	addiw	a5,a5,1
    80002528:	00f72023          	sw	a5,0(a4)
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	53c080e7          	jalr	1340(ra) # 80003a68 <release>
    80002534:	f65ff06f          	j	80002498 <kerneltrap+0x8c>
    80002538:	00001097          	auipc	ra,0x1
    8000253c:	098080e7          	jalr	152(ra) # 800035d0 <uartintr>
    80002540:	fa5ff06f          	j	800024e4 <kerneltrap+0xd8>
    80002544:	00003517          	auipc	a0,0x3
    80002548:	c7450513          	addi	a0,a0,-908 # 800051b8 <_ZZ12printIntegermE6digits+0xc0>
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	720080e7          	jalr	1824(ra) # 80002c6c <panic>

0000000080002554 <clockintr>:
    80002554:	fe010113          	addi	sp,sp,-32
    80002558:	00813823          	sd	s0,16(sp)
    8000255c:	00913423          	sd	s1,8(sp)
    80002560:	00113c23          	sd	ra,24(sp)
    80002564:	02010413          	addi	s0,sp,32
    80002568:	00004497          	auipc	s1,0x4
    8000256c:	45848493          	addi	s1,s1,1112 # 800069c0 <tickslock>
    80002570:	00048513          	mv	a0,s1
    80002574:	00001097          	auipc	ra,0x1
    80002578:	428080e7          	jalr	1064(ra) # 8000399c <acquire>
    8000257c:	00003717          	auipc	a4,0x3
    80002580:	33870713          	addi	a4,a4,824 # 800058b4 <ticks>
    80002584:	00072783          	lw	a5,0(a4)
    80002588:	01013403          	ld	s0,16(sp)
    8000258c:	01813083          	ld	ra,24(sp)
    80002590:	00048513          	mv	a0,s1
    80002594:	0017879b          	addiw	a5,a5,1
    80002598:	00813483          	ld	s1,8(sp)
    8000259c:	00f72023          	sw	a5,0(a4)
    800025a0:	02010113          	addi	sp,sp,32
    800025a4:	00001317          	auipc	t1,0x1
    800025a8:	4c430067          	jr	1220(t1) # 80003a68 <release>

00000000800025ac <devintr>:
    800025ac:	142027f3          	csrr	a5,scause
    800025b0:	00000513          	li	a0,0
    800025b4:	0007c463          	bltz	a5,800025bc <devintr+0x10>
    800025b8:	00008067          	ret
    800025bc:	fe010113          	addi	sp,sp,-32
    800025c0:	00813823          	sd	s0,16(sp)
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00913423          	sd	s1,8(sp)
    800025cc:	02010413          	addi	s0,sp,32
    800025d0:	0ff7f713          	andi	a4,a5,255
    800025d4:	00900693          	li	a3,9
    800025d8:	04d70c63          	beq	a4,a3,80002630 <devintr+0x84>
    800025dc:	fff00713          	li	a4,-1
    800025e0:	03f71713          	slli	a4,a4,0x3f
    800025e4:	00170713          	addi	a4,a4,1
    800025e8:	00e78c63          	beq	a5,a4,80002600 <devintr+0x54>
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00813483          	ld	s1,8(sp)
    800025f8:	02010113          	addi	sp,sp,32
    800025fc:	00008067          	ret
    80002600:	00000097          	auipc	ra,0x0
    80002604:	c8c080e7          	jalr	-884(ra) # 8000228c <cpuid>
    80002608:	06050663          	beqz	a0,80002674 <devintr+0xc8>
    8000260c:	144027f3          	csrr	a5,sip
    80002610:	ffd7f793          	andi	a5,a5,-3
    80002614:	14479073          	csrw	sip,a5
    80002618:	01813083          	ld	ra,24(sp)
    8000261c:	01013403          	ld	s0,16(sp)
    80002620:	00813483          	ld	s1,8(sp)
    80002624:	00200513          	li	a0,2
    80002628:	02010113          	addi	sp,sp,32
    8000262c:	00008067          	ret
    80002630:	00000097          	auipc	ra,0x0
    80002634:	254080e7          	jalr	596(ra) # 80002884 <plic_claim>
    80002638:	00a00793          	li	a5,10
    8000263c:	00050493          	mv	s1,a0
    80002640:	06f50663          	beq	a0,a5,800026ac <devintr+0x100>
    80002644:	00100513          	li	a0,1
    80002648:	fa0482e3          	beqz	s1,800025ec <devintr+0x40>
    8000264c:	00048593          	mv	a1,s1
    80002650:	00003517          	auipc	a0,0x3
    80002654:	b8850513          	addi	a0,a0,-1144 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	670080e7          	jalr	1648(ra) # 80002cc8 <__printf>
    80002660:	00048513          	mv	a0,s1
    80002664:	00000097          	auipc	ra,0x0
    80002668:	258080e7          	jalr	600(ra) # 800028bc <plic_complete>
    8000266c:	00100513          	li	a0,1
    80002670:	f7dff06f          	j	800025ec <devintr+0x40>
    80002674:	00004517          	auipc	a0,0x4
    80002678:	34c50513          	addi	a0,a0,844 # 800069c0 <tickslock>
    8000267c:	00001097          	auipc	ra,0x1
    80002680:	320080e7          	jalr	800(ra) # 8000399c <acquire>
    80002684:	00003717          	auipc	a4,0x3
    80002688:	23070713          	addi	a4,a4,560 # 800058b4 <ticks>
    8000268c:	00072783          	lw	a5,0(a4)
    80002690:	00004517          	auipc	a0,0x4
    80002694:	33050513          	addi	a0,a0,816 # 800069c0 <tickslock>
    80002698:	0017879b          	addiw	a5,a5,1
    8000269c:	00f72023          	sw	a5,0(a4)
    800026a0:	00001097          	auipc	ra,0x1
    800026a4:	3c8080e7          	jalr	968(ra) # 80003a68 <release>
    800026a8:	f65ff06f          	j	8000260c <devintr+0x60>
    800026ac:	00001097          	auipc	ra,0x1
    800026b0:	f24080e7          	jalr	-220(ra) # 800035d0 <uartintr>
    800026b4:	fadff06f          	j	80002660 <devintr+0xb4>
	...

00000000800026c0 <kernelvec>:
    800026c0:	f0010113          	addi	sp,sp,-256
    800026c4:	00113023          	sd	ra,0(sp)
    800026c8:	00213423          	sd	sp,8(sp)
    800026cc:	00313823          	sd	gp,16(sp)
    800026d0:	00413c23          	sd	tp,24(sp)
    800026d4:	02513023          	sd	t0,32(sp)
    800026d8:	02613423          	sd	t1,40(sp)
    800026dc:	02713823          	sd	t2,48(sp)
    800026e0:	02813c23          	sd	s0,56(sp)
    800026e4:	04913023          	sd	s1,64(sp)
    800026e8:	04a13423          	sd	a0,72(sp)
    800026ec:	04b13823          	sd	a1,80(sp)
    800026f0:	04c13c23          	sd	a2,88(sp)
    800026f4:	06d13023          	sd	a3,96(sp)
    800026f8:	06e13423          	sd	a4,104(sp)
    800026fc:	06f13823          	sd	a5,112(sp)
    80002700:	07013c23          	sd	a6,120(sp)
    80002704:	09113023          	sd	a7,128(sp)
    80002708:	09213423          	sd	s2,136(sp)
    8000270c:	09313823          	sd	s3,144(sp)
    80002710:	09413c23          	sd	s4,152(sp)
    80002714:	0b513023          	sd	s5,160(sp)
    80002718:	0b613423          	sd	s6,168(sp)
    8000271c:	0b713823          	sd	s7,176(sp)
    80002720:	0b813c23          	sd	s8,184(sp)
    80002724:	0d913023          	sd	s9,192(sp)
    80002728:	0da13423          	sd	s10,200(sp)
    8000272c:	0db13823          	sd	s11,208(sp)
    80002730:	0dc13c23          	sd	t3,216(sp)
    80002734:	0fd13023          	sd	t4,224(sp)
    80002738:	0fe13423          	sd	t5,232(sp)
    8000273c:	0ff13823          	sd	t6,240(sp)
    80002740:	ccdff0ef          	jal	ra,8000240c <kerneltrap>
    80002744:	00013083          	ld	ra,0(sp)
    80002748:	00813103          	ld	sp,8(sp)
    8000274c:	01013183          	ld	gp,16(sp)
    80002750:	02013283          	ld	t0,32(sp)
    80002754:	02813303          	ld	t1,40(sp)
    80002758:	03013383          	ld	t2,48(sp)
    8000275c:	03813403          	ld	s0,56(sp)
    80002760:	04013483          	ld	s1,64(sp)
    80002764:	04813503          	ld	a0,72(sp)
    80002768:	05013583          	ld	a1,80(sp)
    8000276c:	05813603          	ld	a2,88(sp)
    80002770:	06013683          	ld	a3,96(sp)
    80002774:	06813703          	ld	a4,104(sp)
    80002778:	07013783          	ld	a5,112(sp)
    8000277c:	07813803          	ld	a6,120(sp)
    80002780:	08013883          	ld	a7,128(sp)
    80002784:	08813903          	ld	s2,136(sp)
    80002788:	09013983          	ld	s3,144(sp)
    8000278c:	09813a03          	ld	s4,152(sp)
    80002790:	0a013a83          	ld	s5,160(sp)
    80002794:	0a813b03          	ld	s6,168(sp)
    80002798:	0b013b83          	ld	s7,176(sp)
    8000279c:	0b813c03          	ld	s8,184(sp)
    800027a0:	0c013c83          	ld	s9,192(sp)
    800027a4:	0c813d03          	ld	s10,200(sp)
    800027a8:	0d013d83          	ld	s11,208(sp)
    800027ac:	0d813e03          	ld	t3,216(sp)
    800027b0:	0e013e83          	ld	t4,224(sp)
    800027b4:	0e813f03          	ld	t5,232(sp)
    800027b8:	0f013f83          	ld	t6,240(sp)
    800027bc:	10010113          	addi	sp,sp,256
    800027c0:	10200073          	sret
    800027c4:	00000013          	nop
    800027c8:	00000013          	nop
    800027cc:	00000013          	nop

00000000800027d0 <timervec>:
    800027d0:	34051573          	csrrw	a0,mscratch,a0
    800027d4:	00b53023          	sd	a1,0(a0)
    800027d8:	00c53423          	sd	a2,8(a0)
    800027dc:	00d53823          	sd	a3,16(a0)
    800027e0:	01853583          	ld	a1,24(a0)
    800027e4:	02053603          	ld	a2,32(a0)
    800027e8:	0005b683          	ld	a3,0(a1)
    800027ec:	00c686b3          	add	a3,a3,a2
    800027f0:	00d5b023          	sd	a3,0(a1)
    800027f4:	00200593          	li	a1,2
    800027f8:	14459073          	csrw	sip,a1
    800027fc:	01053683          	ld	a3,16(a0)
    80002800:	00853603          	ld	a2,8(a0)
    80002804:	00053583          	ld	a1,0(a0)
    80002808:	34051573          	csrrw	a0,mscratch,a0
    8000280c:	30200073          	mret

0000000080002810 <plicinit>:
    80002810:	ff010113          	addi	sp,sp,-16
    80002814:	00813423          	sd	s0,8(sp)
    80002818:	01010413          	addi	s0,sp,16
    8000281c:	00813403          	ld	s0,8(sp)
    80002820:	0c0007b7          	lui	a5,0xc000
    80002824:	00100713          	li	a4,1
    80002828:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000282c:	00e7a223          	sw	a4,4(a5)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <plicinithart>:
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00813023          	sd	s0,0(sp)
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	a44080e7          	jalr	-1468(ra) # 8000228c <cpuid>
    80002850:	0085171b          	slliw	a4,a0,0x8
    80002854:	0c0027b7          	lui	a5,0xc002
    80002858:	00e787b3          	add	a5,a5,a4
    8000285c:	40200713          	li	a4,1026
    80002860:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002864:	00813083          	ld	ra,8(sp)
    80002868:	00013403          	ld	s0,0(sp)
    8000286c:	00d5151b          	slliw	a0,a0,0xd
    80002870:	0c2017b7          	lui	a5,0xc201
    80002874:	00a78533          	add	a0,a5,a0
    80002878:	00052023          	sw	zero,0(a0)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <plic_claim>:
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00813023          	sd	s0,0(sp)
    8000288c:	00113423          	sd	ra,8(sp)
    80002890:	01010413          	addi	s0,sp,16
    80002894:	00000097          	auipc	ra,0x0
    80002898:	9f8080e7          	jalr	-1544(ra) # 8000228c <cpuid>
    8000289c:	00813083          	ld	ra,8(sp)
    800028a0:	00013403          	ld	s0,0(sp)
    800028a4:	00d5151b          	slliw	a0,a0,0xd
    800028a8:	0c2017b7          	lui	a5,0xc201
    800028ac:	00a78533          	add	a0,a5,a0
    800028b0:	00452503          	lw	a0,4(a0)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret

00000000800028bc <plic_complete>:
    800028bc:	fe010113          	addi	sp,sp,-32
    800028c0:	00813823          	sd	s0,16(sp)
    800028c4:	00913423          	sd	s1,8(sp)
    800028c8:	00113c23          	sd	ra,24(sp)
    800028cc:	02010413          	addi	s0,sp,32
    800028d0:	00050493          	mv	s1,a0
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	9b8080e7          	jalr	-1608(ra) # 8000228c <cpuid>
    800028dc:	01813083          	ld	ra,24(sp)
    800028e0:	01013403          	ld	s0,16(sp)
    800028e4:	00d5179b          	slliw	a5,a0,0xd
    800028e8:	0c201737          	lui	a4,0xc201
    800028ec:	00f707b3          	add	a5,a4,a5
    800028f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800028f4:	00813483          	ld	s1,8(sp)
    800028f8:	02010113          	addi	sp,sp,32
    800028fc:	00008067          	ret

0000000080002900 <consolewrite>:
    80002900:	fb010113          	addi	sp,sp,-80
    80002904:	04813023          	sd	s0,64(sp)
    80002908:	04113423          	sd	ra,72(sp)
    8000290c:	02913c23          	sd	s1,56(sp)
    80002910:	03213823          	sd	s2,48(sp)
    80002914:	03313423          	sd	s3,40(sp)
    80002918:	03413023          	sd	s4,32(sp)
    8000291c:	01513c23          	sd	s5,24(sp)
    80002920:	05010413          	addi	s0,sp,80
    80002924:	06c05c63          	blez	a2,8000299c <consolewrite+0x9c>
    80002928:	00060993          	mv	s3,a2
    8000292c:	00050a13          	mv	s4,a0
    80002930:	00058493          	mv	s1,a1
    80002934:	00000913          	li	s2,0
    80002938:	fff00a93          	li	s5,-1
    8000293c:	01c0006f          	j	80002958 <consolewrite+0x58>
    80002940:	fbf44503          	lbu	a0,-65(s0)
    80002944:	0019091b          	addiw	s2,s2,1
    80002948:	00148493          	addi	s1,s1,1
    8000294c:	00001097          	auipc	ra,0x1
    80002950:	a9c080e7          	jalr	-1380(ra) # 800033e8 <uartputc>
    80002954:	03298063          	beq	s3,s2,80002974 <consolewrite+0x74>
    80002958:	00048613          	mv	a2,s1
    8000295c:	00100693          	li	a3,1
    80002960:	000a0593          	mv	a1,s4
    80002964:	fbf40513          	addi	a0,s0,-65
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	9dc080e7          	jalr	-1572(ra) # 80002344 <either_copyin>
    80002970:	fd5518e3          	bne	a0,s5,80002940 <consolewrite+0x40>
    80002974:	04813083          	ld	ra,72(sp)
    80002978:	04013403          	ld	s0,64(sp)
    8000297c:	03813483          	ld	s1,56(sp)
    80002980:	02813983          	ld	s3,40(sp)
    80002984:	02013a03          	ld	s4,32(sp)
    80002988:	01813a83          	ld	s5,24(sp)
    8000298c:	00090513          	mv	a0,s2
    80002990:	03013903          	ld	s2,48(sp)
    80002994:	05010113          	addi	sp,sp,80
    80002998:	00008067          	ret
    8000299c:	00000913          	li	s2,0
    800029a0:	fd5ff06f          	j	80002974 <consolewrite+0x74>

00000000800029a4 <consoleread>:
    800029a4:	f9010113          	addi	sp,sp,-112
    800029a8:	06813023          	sd	s0,96(sp)
    800029ac:	04913c23          	sd	s1,88(sp)
    800029b0:	05213823          	sd	s2,80(sp)
    800029b4:	05313423          	sd	s3,72(sp)
    800029b8:	05413023          	sd	s4,64(sp)
    800029bc:	03513c23          	sd	s5,56(sp)
    800029c0:	03613823          	sd	s6,48(sp)
    800029c4:	03713423          	sd	s7,40(sp)
    800029c8:	03813023          	sd	s8,32(sp)
    800029cc:	06113423          	sd	ra,104(sp)
    800029d0:	01913c23          	sd	s9,24(sp)
    800029d4:	07010413          	addi	s0,sp,112
    800029d8:	00060b93          	mv	s7,a2
    800029dc:	00050913          	mv	s2,a0
    800029e0:	00058c13          	mv	s8,a1
    800029e4:	00060b1b          	sext.w	s6,a2
    800029e8:	00004497          	auipc	s1,0x4
    800029ec:	00048493          	mv	s1,s1
    800029f0:	00400993          	li	s3,4
    800029f4:	fff00a13          	li	s4,-1
    800029f8:	00a00a93          	li	s5,10
    800029fc:	05705e63          	blez	s7,80002a58 <consoleread+0xb4>
    80002a00:	09c4a703          	lw	a4,156(s1) # 80006a84 <cons+0x9c>
    80002a04:	0984a783          	lw	a5,152(s1)
    80002a08:	0007071b          	sext.w	a4,a4
    80002a0c:	08e78463          	beq	a5,a4,80002a94 <consoleread+0xf0>
    80002a10:	07f7f713          	andi	a4,a5,127
    80002a14:	00e48733          	add	a4,s1,a4
    80002a18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a1c:	0017869b          	addiw	a3,a5,1
    80002a20:	08d4ac23          	sw	a3,152(s1)
    80002a24:	00070c9b          	sext.w	s9,a4
    80002a28:	0b370663          	beq	a4,s3,80002ad4 <consoleread+0x130>
    80002a2c:	00100693          	li	a3,1
    80002a30:	f9f40613          	addi	a2,s0,-97
    80002a34:	000c0593          	mv	a1,s8
    80002a38:	00090513          	mv	a0,s2
    80002a3c:	f8e40fa3          	sb	a4,-97(s0)
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	8b8080e7          	jalr	-1864(ra) # 800022f8 <either_copyout>
    80002a48:	01450863          	beq	a0,s4,80002a58 <consoleread+0xb4>
    80002a4c:	001c0c13          	addi	s8,s8,1
    80002a50:	fffb8b9b          	addiw	s7,s7,-1
    80002a54:	fb5c94e3          	bne	s9,s5,800029fc <consoleread+0x58>
    80002a58:	000b851b          	sext.w	a0,s7
    80002a5c:	06813083          	ld	ra,104(sp)
    80002a60:	06013403          	ld	s0,96(sp)
    80002a64:	05813483          	ld	s1,88(sp)
    80002a68:	05013903          	ld	s2,80(sp)
    80002a6c:	04813983          	ld	s3,72(sp)
    80002a70:	04013a03          	ld	s4,64(sp)
    80002a74:	03813a83          	ld	s5,56(sp)
    80002a78:	02813b83          	ld	s7,40(sp)
    80002a7c:	02013c03          	ld	s8,32(sp)
    80002a80:	01813c83          	ld	s9,24(sp)
    80002a84:	40ab053b          	subw	a0,s6,a0
    80002a88:	03013b03          	ld	s6,48(sp)
    80002a8c:	07010113          	addi	sp,sp,112
    80002a90:	00008067          	ret
    80002a94:	00001097          	auipc	ra,0x1
    80002a98:	1d8080e7          	jalr	472(ra) # 80003c6c <push_on>
    80002a9c:	0984a703          	lw	a4,152(s1)
    80002aa0:	09c4a783          	lw	a5,156(s1)
    80002aa4:	0007879b          	sext.w	a5,a5
    80002aa8:	fef70ce3          	beq	a4,a5,80002aa0 <consoleread+0xfc>
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	234080e7          	jalr	564(ra) # 80003ce0 <pop_on>
    80002ab4:	0984a783          	lw	a5,152(s1)
    80002ab8:	07f7f713          	andi	a4,a5,127
    80002abc:	00e48733          	add	a4,s1,a4
    80002ac0:	01874703          	lbu	a4,24(a4)
    80002ac4:	0017869b          	addiw	a3,a5,1
    80002ac8:	08d4ac23          	sw	a3,152(s1)
    80002acc:	00070c9b          	sext.w	s9,a4
    80002ad0:	f5371ee3          	bne	a4,s3,80002a2c <consoleread+0x88>
    80002ad4:	000b851b          	sext.w	a0,s7
    80002ad8:	f96bf2e3          	bgeu	s7,s6,80002a5c <consoleread+0xb8>
    80002adc:	08f4ac23          	sw	a5,152(s1)
    80002ae0:	f7dff06f          	j	80002a5c <consoleread+0xb8>

0000000080002ae4 <consputc>:
    80002ae4:	10000793          	li	a5,256
    80002ae8:	00f50663          	beq	a0,a5,80002af4 <consputc+0x10>
    80002aec:	00001317          	auipc	t1,0x1
    80002af0:	9f430067          	jr	-1548(t1) # 800034e0 <uartputc_sync>
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	00813023          	sd	s0,0(sp)
    80002b00:	01010413          	addi	s0,sp,16
    80002b04:	00800513          	li	a0,8
    80002b08:	00001097          	auipc	ra,0x1
    80002b0c:	9d8080e7          	jalr	-1576(ra) # 800034e0 <uartputc_sync>
    80002b10:	02000513          	li	a0,32
    80002b14:	00001097          	auipc	ra,0x1
    80002b18:	9cc080e7          	jalr	-1588(ra) # 800034e0 <uartputc_sync>
    80002b1c:	00013403          	ld	s0,0(sp)
    80002b20:	00813083          	ld	ra,8(sp)
    80002b24:	00800513          	li	a0,8
    80002b28:	01010113          	addi	sp,sp,16
    80002b2c:	00001317          	auipc	t1,0x1
    80002b30:	9b430067          	jr	-1612(t1) # 800034e0 <uartputc_sync>

0000000080002b34 <consoleintr>:
    80002b34:	fe010113          	addi	sp,sp,-32
    80002b38:	00813823          	sd	s0,16(sp)
    80002b3c:	00913423          	sd	s1,8(sp)
    80002b40:	01213023          	sd	s2,0(sp)
    80002b44:	00113c23          	sd	ra,24(sp)
    80002b48:	02010413          	addi	s0,sp,32
    80002b4c:	00004917          	auipc	s2,0x4
    80002b50:	e9c90913          	addi	s2,s2,-356 # 800069e8 <cons>
    80002b54:	00050493          	mv	s1,a0
    80002b58:	00090513          	mv	a0,s2
    80002b5c:	00001097          	auipc	ra,0x1
    80002b60:	e40080e7          	jalr	-448(ra) # 8000399c <acquire>
    80002b64:	02048c63          	beqz	s1,80002b9c <consoleintr+0x68>
    80002b68:	0a092783          	lw	a5,160(s2)
    80002b6c:	09892703          	lw	a4,152(s2)
    80002b70:	07f00693          	li	a3,127
    80002b74:	40e7873b          	subw	a4,a5,a4
    80002b78:	02e6e263          	bltu	a3,a4,80002b9c <consoleintr+0x68>
    80002b7c:	00d00713          	li	a4,13
    80002b80:	04e48063          	beq	s1,a4,80002bc0 <consoleintr+0x8c>
    80002b84:	07f7f713          	andi	a4,a5,127
    80002b88:	00e90733          	add	a4,s2,a4
    80002b8c:	0017879b          	addiw	a5,a5,1
    80002b90:	0af92023          	sw	a5,160(s2)
    80002b94:	00970c23          	sb	s1,24(a4)
    80002b98:	08f92e23          	sw	a5,156(s2)
    80002b9c:	01013403          	ld	s0,16(sp)
    80002ba0:	01813083          	ld	ra,24(sp)
    80002ba4:	00813483          	ld	s1,8(sp)
    80002ba8:	00013903          	ld	s2,0(sp)
    80002bac:	00004517          	auipc	a0,0x4
    80002bb0:	e3c50513          	addi	a0,a0,-452 # 800069e8 <cons>
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00001317          	auipc	t1,0x1
    80002bbc:	eb030067          	jr	-336(t1) # 80003a68 <release>
    80002bc0:	00a00493          	li	s1,10
    80002bc4:	fc1ff06f          	j	80002b84 <consoleintr+0x50>

0000000080002bc8 <consoleinit>:
    80002bc8:	fe010113          	addi	sp,sp,-32
    80002bcc:	00113c23          	sd	ra,24(sp)
    80002bd0:	00813823          	sd	s0,16(sp)
    80002bd4:	00913423          	sd	s1,8(sp)
    80002bd8:	02010413          	addi	s0,sp,32
    80002bdc:	00004497          	auipc	s1,0x4
    80002be0:	e0c48493          	addi	s1,s1,-500 # 800069e8 <cons>
    80002be4:	00048513          	mv	a0,s1
    80002be8:	00002597          	auipc	a1,0x2
    80002bec:	64858593          	addi	a1,a1,1608 # 80005230 <_ZZ12printIntegermE6digits+0x138>
    80002bf0:	00001097          	auipc	ra,0x1
    80002bf4:	d88080e7          	jalr	-632(ra) # 80003978 <initlock>
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	7ac080e7          	jalr	1964(ra) # 800033a4 <uartinit>
    80002c00:	01813083          	ld	ra,24(sp)
    80002c04:	01013403          	ld	s0,16(sp)
    80002c08:	00000797          	auipc	a5,0x0
    80002c0c:	d9c78793          	addi	a5,a5,-612 # 800029a4 <consoleread>
    80002c10:	0af4bc23          	sd	a5,184(s1)
    80002c14:	00000797          	auipc	a5,0x0
    80002c18:	cec78793          	addi	a5,a5,-788 # 80002900 <consolewrite>
    80002c1c:	0cf4b023          	sd	a5,192(s1)
    80002c20:	00813483          	ld	s1,8(sp)
    80002c24:	02010113          	addi	sp,sp,32
    80002c28:	00008067          	ret

0000000080002c2c <console_read>:
    80002c2c:	ff010113          	addi	sp,sp,-16
    80002c30:	00813423          	sd	s0,8(sp)
    80002c34:	01010413          	addi	s0,sp,16
    80002c38:	00813403          	ld	s0,8(sp)
    80002c3c:	00004317          	auipc	t1,0x4
    80002c40:	e6433303          	ld	t1,-412(t1) # 80006aa0 <devsw+0x10>
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00030067          	jr	t1

0000000080002c4c <console_write>:
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00813423          	sd	s0,8(sp)
    80002c54:	01010413          	addi	s0,sp,16
    80002c58:	00813403          	ld	s0,8(sp)
    80002c5c:	00004317          	auipc	t1,0x4
    80002c60:	e4c33303          	ld	t1,-436(t1) # 80006aa8 <devsw+0x18>
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00030067          	jr	t1

0000000080002c6c <panic>:
    80002c6c:	fe010113          	addi	sp,sp,-32
    80002c70:	00113c23          	sd	ra,24(sp)
    80002c74:	00813823          	sd	s0,16(sp)
    80002c78:	00913423          	sd	s1,8(sp)
    80002c7c:	02010413          	addi	s0,sp,32
    80002c80:	00050493          	mv	s1,a0
    80002c84:	00002517          	auipc	a0,0x2
    80002c88:	5b450513          	addi	a0,a0,1460 # 80005238 <_ZZ12printIntegermE6digits+0x140>
    80002c8c:	00004797          	auipc	a5,0x4
    80002c90:	ea07ae23          	sw	zero,-324(a5) # 80006b48 <pr+0x18>
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	034080e7          	jalr	52(ra) # 80002cc8 <__printf>
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	028080e7          	jalr	40(ra) # 80002cc8 <__printf>
    80002ca8:	00002517          	auipc	a0,0x2
    80002cac:	44850513          	addi	a0,a0,1096 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	018080e7          	jalr	24(ra) # 80002cc8 <__printf>
    80002cb8:	00100793          	li	a5,1
    80002cbc:	00003717          	auipc	a4,0x3
    80002cc0:	bef72e23          	sw	a5,-1028(a4) # 800058b8 <panicked>
    80002cc4:	0000006f          	j	80002cc4 <panic+0x58>

0000000080002cc8 <__printf>:
    80002cc8:	f3010113          	addi	sp,sp,-208
    80002ccc:	08813023          	sd	s0,128(sp)
    80002cd0:	07313423          	sd	s3,104(sp)
    80002cd4:	09010413          	addi	s0,sp,144
    80002cd8:	05813023          	sd	s8,64(sp)
    80002cdc:	08113423          	sd	ra,136(sp)
    80002ce0:	06913c23          	sd	s1,120(sp)
    80002ce4:	07213823          	sd	s2,112(sp)
    80002ce8:	07413023          	sd	s4,96(sp)
    80002cec:	05513c23          	sd	s5,88(sp)
    80002cf0:	05613823          	sd	s6,80(sp)
    80002cf4:	05713423          	sd	s7,72(sp)
    80002cf8:	03913c23          	sd	s9,56(sp)
    80002cfc:	03a13823          	sd	s10,48(sp)
    80002d00:	03b13423          	sd	s11,40(sp)
    80002d04:	00004317          	auipc	t1,0x4
    80002d08:	e2c30313          	addi	t1,t1,-468 # 80006b30 <pr>
    80002d0c:	01832c03          	lw	s8,24(t1)
    80002d10:	00b43423          	sd	a1,8(s0)
    80002d14:	00c43823          	sd	a2,16(s0)
    80002d18:	00d43c23          	sd	a3,24(s0)
    80002d1c:	02e43023          	sd	a4,32(s0)
    80002d20:	02f43423          	sd	a5,40(s0)
    80002d24:	03043823          	sd	a6,48(s0)
    80002d28:	03143c23          	sd	a7,56(s0)
    80002d2c:	00050993          	mv	s3,a0
    80002d30:	4a0c1663          	bnez	s8,800031dc <__printf+0x514>
    80002d34:	60098c63          	beqz	s3,8000334c <__printf+0x684>
    80002d38:	0009c503          	lbu	a0,0(s3)
    80002d3c:	00840793          	addi	a5,s0,8
    80002d40:	f6f43c23          	sd	a5,-136(s0)
    80002d44:	00000493          	li	s1,0
    80002d48:	22050063          	beqz	a0,80002f68 <__printf+0x2a0>
    80002d4c:	00002a37          	lui	s4,0x2
    80002d50:	00018ab7          	lui	s5,0x18
    80002d54:	000f4b37          	lui	s6,0xf4
    80002d58:	00989bb7          	lui	s7,0x989
    80002d5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002d60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002d64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002d68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002d6c:	00148c9b          	addiw	s9,s1,1
    80002d70:	02500793          	li	a5,37
    80002d74:	01998933          	add	s2,s3,s9
    80002d78:	38f51263          	bne	a0,a5,800030fc <__printf+0x434>
    80002d7c:	00094783          	lbu	a5,0(s2)
    80002d80:	00078c9b          	sext.w	s9,a5
    80002d84:	1e078263          	beqz	a5,80002f68 <__printf+0x2a0>
    80002d88:	0024849b          	addiw	s1,s1,2
    80002d8c:	07000713          	li	a4,112
    80002d90:	00998933          	add	s2,s3,s1
    80002d94:	38e78a63          	beq	a5,a4,80003128 <__printf+0x460>
    80002d98:	20f76863          	bltu	a4,a5,80002fa8 <__printf+0x2e0>
    80002d9c:	42a78863          	beq	a5,a0,800031cc <__printf+0x504>
    80002da0:	06400713          	li	a4,100
    80002da4:	40e79663          	bne	a5,a4,800031b0 <__printf+0x4e8>
    80002da8:	f7843783          	ld	a5,-136(s0)
    80002dac:	0007a603          	lw	a2,0(a5)
    80002db0:	00878793          	addi	a5,a5,8
    80002db4:	f6f43c23          	sd	a5,-136(s0)
    80002db8:	42064a63          	bltz	a2,800031ec <__printf+0x524>
    80002dbc:	00a00713          	li	a4,10
    80002dc0:	02e677bb          	remuw	a5,a2,a4
    80002dc4:	00002d97          	auipc	s11,0x2
    80002dc8:	49cd8d93          	addi	s11,s11,1180 # 80005260 <digits>
    80002dcc:	00900593          	li	a1,9
    80002dd0:	0006051b          	sext.w	a0,a2
    80002dd4:	00000c93          	li	s9,0
    80002dd8:	02079793          	slli	a5,a5,0x20
    80002ddc:	0207d793          	srli	a5,a5,0x20
    80002de0:	00fd87b3          	add	a5,s11,a5
    80002de4:	0007c783          	lbu	a5,0(a5)
    80002de8:	02e656bb          	divuw	a3,a2,a4
    80002dec:	f8f40023          	sb	a5,-128(s0)
    80002df0:	14c5d863          	bge	a1,a2,80002f40 <__printf+0x278>
    80002df4:	06300593          	li	a1,99
    80002df8:	00100c93          	li	s9,1
    80002dfc:	02e6f7bb          	remuw	a5,a3,a4
    80002e00:	02079793          	slli	a5,a5,0x20
    80002e04:	0207d793          	srli	a5,a5,0x20
    80002e08:	00fd87b3          	add	a5,s11,a5
    80002e0c:	0007c783          	lbu	a5,0(a5)
    80002e10:	02e6d73b          	divuw	a4,a3,a4
    80002e14:	f8f400a3          	sb	a5,-127(s0)
    80002e18:	12a5f463          	bgeu	a1,a0,80002f40 <__printf+0x278>
    80002e1c:	00a00693          	li	a3,10
    80002e20:	00900593          	li	a1,9
    80002e24:	02d777bb          	remuw	a5,a4,a3
    80002e28:	02079793          	slli	a5,a5,0x20
    80002e2c:	0207d793          	srli	a5,a5,0x20
    80002e30:	00fd87b3          	add	a5,s11,a5
    80002e34:	0007c503          	lbu	a0,0(a5)
    80002e38:	02d757bb          	divuw	a5,a4,a3
    80002e3c:	f8a40123          	sb	a0,-126(s0)
    80002e40:	48e5f263          	bgeu	a1,a4,800032c4 <__printf+0x5fc>
    80002e44:	06300513          	li	a0,99
    80002e48:	02d7f5bb          	remuw	a1,a5,a3
    80002e4c:	02059593          	slli	a1,a1,0x20
    80002e50:	0205d593          	srli	a1,a1,0x20
    80002e54:	00bd85b3          	add	a1,s11,a1
    80002e58:	0005c583          	lbu	a1,0(a1)
    80002e5c:	02d7d7bb          	divuw	a5,a5,a3
    80002e60:	f8b401a3          	sb	a1,-125(s0)
    80002e64:	48e57263          	bgeu	a0,a4,800032e8 <__printf+0x620>
    80002e68:	3e700513          	li	a0,999
    80002e6c:	02d7f5bb          	remuw	a1,a5,a3
    80002e70:	02059593          	slli	a1,a1,0x20
    80002e74:	0205d593          	srli	a1,a1,0x20
    80002e78:	00bd85b3          	add	a1,s11,a1
    80002e7c:	0005c583          	lbu	a1,0(a1)
    80002e80:	02d7d7bb          	divuw	a5,a5,a3
    80002e84:	f8b40223          	sb	a1,-124(s0)
    80002e88:	46e57663          	bgeu	a0,a4,800032f4 <__printf+0x62c>
    80002e8c:	02d7f5bb          	remuw	a1,a5,a3
    80002e90:	02059593          	slli	a1,a1,0x20
    80002e94:	0205d593          	srli	a1,a1,0x20
    80002e98:	00bd85b3          	add	a1,s11,a1
    80002e9c:	0005c583          	lbu	a1,0(a1)
    80002ea0:	02d7d7bb          	divuw	a5,a5,a3
    80002ea4:	f8b402a3          	sb	a1,-123(s0)
    80002ea8:	46ea7863          	bgeu	s4,a4,80003318 <__printf+0x650>
    80002eac:	02d7f5bb          	remuw	a1,a5,a3
    80002eb0:	02059593          	slli	a1,a1,0x20
    80002eb4:	0205d593          	srli	a1,a1,0x20
    80002eb8:	00bd85b3          	add	a1,s11,a1
    80002ebc:	0005c583          	lbu	a1,0(a1)
    80002ec0:	02d7d7bb          	divuw	a5,a5,a3
    80002ec4:	f8b40323          	sb	a1,-122(s0)
    80002ec8:	3eeaf863          	bgeu	s5,a4,800032b8 <__printf+0x5f0>
    80002ecc:	02d7f5bb          	remuw	a1,a5,a3
    80002ed0:	02059593          	slli	a1,a1,0x20
    80002ed4:	0205d593          	srli	a1,a1,0x20
    80002ed8:	00bd85b3          	add	a1,s11,a1
    80002edc:	0005c583          	lbu	a1,0(a1)
    80002ee0:	02d7d7bb          	divuw	a5,a5,a3
    80002ee4:	f8b403a3          	sb	a1,-121(s0)
    80002ee8:	42eb7e63          	bgeu	s6,a4,80003324 <__printf+0x65c>
    80002eec:	02d7f5bb          	remuw	a1,a5,a3
    80002ef0:	02059593          	slli	a1,a1,0x20
    80002ef4:	0205d593          	srli	a1,a1,0x20
    80002ef8:	00bd85b3          	add	a1,s11,a1
    80002efc:	0005c583          	lbu	a1,0(a1)
    80002f00:	02d7d7bb          	divuw	a5,a5,a3
    80002f04:	f8b40423          	sb	a1,-120(s0)
    80002f08:	42ebfc63          	bgeu	s7,a4,80003340 <__printf+0x678>
    80002f0c:	02079793          	slli	a5,a5,0x20
    80002f10:	0207d793          	srli	a5,a5,0x20
    80002f14:	00fd8db3          	add	s11,s11,a5
    80002f18:	000dc703          	lbu	a4,0(s11)
    80002f1c:	00a00793          	li	a5,10
    80002f20:	00900c93          	li	s9,9
    80002f24:	f8e404a3          	sb	a4,-119(s0)
    80002f28:	00065c63          	bgez	a2,80002f40 <__printf+0x278>
    80002f2c:	f9040713          	addi	a4,s0,-112
    80002f30:	00f70733          	add	a4,a4,a5
    80002f34:	02d00693          	li	a3,45
    80002f38:	fed70823          	sb	a3,-16(a4)
    80002f3c:	00078c93          	mv	s9,a5
    80002f40:	f8040793          	addi	a5,s0,-128
    80002f44:	01978cb3          	add	s9,a5,s9
    80002f48:	f7f40d13          	addi	s10,s0,-129
    80002f4c:	000cc503          	lbu	a0,0(s9)
    80002f50:	fffc8c93          	addi	s9,s9,-1
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	b90080e7          	jalr	-1136(ra) # 80002ae4 <consputc>
    80002f5c:	ffac98e3          	bne	s9,s10,80002f4c <__printf+0x284>
    80002f60:	00094503          	lbu	a0,0(s2)
    80002f64:	e00514e3          	bnez	a0,80002d6c <__printf+0xa4>
    80002f68:	1a0c1663          	bnez	s8,80003114 <__printf+0x44c>
    80002f6c:	08813083          	ld	ra,136(sp)
    80002f70:	08013403          	ld	s0,128(sp)
    80002f74:	07813483          	ld	s1,120(sp)
    80002f78:	07013903          	ld	s2,112(sp)
    80002f7c:	06813983          	ld	s3,104(sp)
    80002f80:	06013a03          	ld	s4,96(sp)
    80002f84:	05813a83          	ld	s5,88(sp)
    80002f88:	05013b03          	ld	s6,80(sp)
    80002f8c:	04813b83          	ld	s7,72(sp)
    80002f90:	04013c03          	ld	s8,64(sp)
    80002f94:	03813c83          	ld	s9,56(sp)
    80002f98:	03013d03          	ld	s10,48(sp)
    80002f9c:	02813d83          	ld	s11,40(sp)
    80002fa0:	0d010113          	addi	sp,sp,208
    80002fa4:	00008067          	ret
    80002fa8:	07300713          	li	a4,115
    80002fac:	1ce78a63          	beq	a5,a4,80003180 <__printf+0x4b8>
    80002fb0:	07800713          	li	a4,120
    80002fb4:	1ee79e63          	bne	a5,a4,800031b0 <__printf+0x4e8>
    80002fb8:	f7843783          	ld	a5,-136(s0)
    80002fbc:	0007a703          	lw	a4,0(a5)
    80002fc0:	00878793          	addi	a5,a5,8
    80002fc4:	f6f43c23          	sd	a5,-136(s0)
    80002fc8:	28074263          	bltz	a4,8000324c <__printf+0x584>
    80002fcc:	00002d97          	auipc	s11,0x2
    80002fd0:	294d8d93          	addi	s11,s11,660 # 80005260 <digits>
    80002fd4:	00f77793          	andi	a5,a4,15
    80002fd8:	00fd87b3          	add	a5,s11,a5
    80002fdc:	0007c683          	lbu	a3,0(a5)
    80002fe0:	00f00613          	li	a2,15
    80002fe4:	0007079b          	sext.w	a5,a4
    80002fe8:	f8d40023          	sb	a3,-128(s0)
    80002fec:	0047559b          	srliw	a1,a4,0x4
    80002ff0:	0047569b          	srliw	a3,a4,0x4
    80002ff4:	00000c93          	li	s9,0
    80002ff8:	0ee65063          	bge	a2,a4,800030d8 <__printf+0x410>
    80002ffc:	00f6f693          	andi	a3,a3,15
    80003000:	00dd86b3          	add	a3,s11,a3
    80003004:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003008:	0087d79b          	srliw	a5,a5,0x8
    8000300c:	00100c93          	li	s9,1
    80003010:	f8d400a3          	sb	a3,-127(s0)
    80003014:	0cb67263          	bgeu	a2,a1,800030d8 <__printf+0x410>
    80003018:	00f7f693          	andi	a3,a5,15
    8000301c:	00dd86b3          	add	a3,s11,a3
    80003020:	0006c583          	lbu	a1,0(a3)
    80003024:	00f00613          	li	a2,15
    80003028:	0047d69b          	srliw	a3,a5,0x4
    8000302c:	f8b40123          	sb	a1,-126(s0)
    80003030:	0047d593          	srli	a1,a5,0x4
    80003034:	28f67e63          	bgeu	a2,a5,800032d0 <__printf+0x608>
    80003038:	00f6f693          	andi	a3,a3,15
    8000303c:	00dd86b3          	add	a3,s11,a3
    80003040:	0006c503          	lbu	a0,0(a3)
    80003044:	0087d813          	srli	a6,a5,0x8
    80003048:	0087d69b          	srliw	a3,a5,0x8
    8000304c:	f8a401a3          	sb	a0,-125(s0)
    80003050:	28b67663          	bgeu	a2,a1,800032dc <__printf+0x614>
    80003054:	00f6f693          	andi	a3,a3,15
    80003058:	00dd86b3          	add	a3,s11,a3
    8000305c:	0006c583          	lbu	a1,0(a3)
    80003060:	00c7d513          	srli	a0,a5,0xc
    80003064:	00c7d69b          	srliw	a3,a5,0xc
    80003068:	f8b40223          	sb	a1,-124(s0)
    8000306c:	29067a63          	bgeu	a2,a6,80003300 <__printf+0x638>
    80003070:	00f6f693          	andi	a3,a3,15
    80003074:	00dd86b3          	add	a3,s11,a3
    80003078:	0006c583          	lbu	a1,0(a3)
    8000307c:	0107d813          	srli	a6,a5,0x10
    80003080:	0107d69b          	srliw	a3,a5,0x10
    80003084:	f8b402a3          	sb	a1,-123(s0)
    80003088:	28a67263          	bgeu	a2,a0,8000330c <__printf+0x644>
    8000308c:	00f6f693          	andi	a3,a3,15
    80003090:	00dd86b3          	add	a3,s11,a3
    80003094:	0006c683          	lbu	a3,0(a3)
    80003098:	0147d79b          	srliw	a5,a5,0x14
    8000309c:	f8d40323          	sb	a3,-122(s0)
    800030a0:	21067663          	bgeu	a2,a6,800032ac <__printf+0x5e4>
    800030a4:	02079793          	slli	a5,a5,0x20
    800030a8:	0207d793          	srli	a5,a5,0x20
    800030ac:	00fd8db3          	add	s11,s11,a5
    800030b0:	000dc683          	lbu	a3,0(s11)
    800030b4:	00800793          	li	a5,8
    800030b8:	00700c93          	li	s9,7
    800030bc:	f8d403a3          	sb	a3,-121(s0)
    800030c0:	00075c63          	bgez	a4,800030d8 <__printf+0x410>
    800030c4:	f9040713          	addi	a4,s0,-112
    800030c8:	00f70733          	add	a4,a4,a5
    800030cc:	02d00693          	li	a3,45
    800030d0:	fed70823          	sb	a3,-16(a4)
    800030d4:	00078c93          	mv	s9,a5
    800030d8:	f8040793          	addi	a5,s0,-128
    800030dc:	01978cb3          	add	s9,a5,s9
    800030e0:	f7f40d13          	addi	s10,s0,-129
    800030e4:	000cc503          	lbu	a0,0(s9)
    800030e8:	fffc8c93          	addi	s9,s9,-1
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	9f8080e7          	jalr	-1544(ra) # 80002ae4 <consputc>
    800030f4:	ff9d18e3          	bne	s10,s9,800030e4 <__printf+0x41c>
    800030f8:	0100006f          	j	80003108 <__printf+0x440>
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	9e8080e7          	jalr	-1560(ra) # 80002ae4 <consputc>
    80003104:	000c8493          	mv	s1,s9
    80003108:	00094503          	lbu	a0,0(s2)
    8000310c:	c60510e3          	bnez	a0,80002d6c <__printf+0xa4>
    80003110:	e40c0ee3          	beqz	s8,80002f6c <__printf+0x2a4>
    80003114:	00004517          	auipc	a0,0x4
    80003118:	a1c50513          	addi	a0,a0,-1508 # 80006b30 <pr>
    8000311c:	00001097          	auipc	ra,0x1
    80003120:	94c080e7          	jalr	-1716(ra) # 80003a68 <release>
    80003124:	e49ff06f          	j	80002f6c <__printf+0x2a4>
    80003128:	f7843783          	ld	a5,-136(s0)
    8000312c:	03000513          	li	a0,48
    80003130:	01000d13          	li	s10,16
    80003134:	00878713          	addi	a4,a5,8
    80003138:	0007bc83          	ld	s9,0(a5)
    8000313c:	f6e43c23          	sd	a4,-136(s0)
    80003140:	00000097          	auipc	ra,0x0
    80003144:	9a4080e7          	jalr	-1628(ra) # 80002ae4 <consputc>
    80003148:	07800513          	li	a0,120
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	998080e7          	jalr	-1640(ra) # 80002ae4 <consputc>
    80003154:	00002d97          	auipc	s11,0x2
    80003158:	10cd8d93          	addi	s11,s11,268 # 80005260 <digits>
    8000315c:	03ccd793          	srli	a5,s9,0x3c
    80003160:	00fd87b3          	add	a5,s11,a5
    80003164:	0007c503          	lbu	a0,0(a5)
    80003168:	fffd0d1b          	addiw	s10,s10,-1
    8000316c:	004c9c93          	slli	s9,s9,0x4
    80003170:	00000097          	auipc	ra,0x0
    80003174:	974080e7          	jalr	-1676(ra) # 80002ae4 <consputc>
    80003178:	fe0d12e3          	bnez	s10,8000315c <__printf+0x494>
    8000317c:	f8dff06f          	j	80003108 <__printf+0x440>
    80003180:	f7843783          	ld	a5,-136(s0)
    80003184:	0007bc83          	ld	s9,0(a5)
    80003188:	00878793          	addi	a5,a5,8
    8000318c:	f6f43c23          	sd	a5,-136(s0)
    80003190:	000c9a63          	bnez	s9,800031a4 <__printf+0x4dc>
    80003194:	1080006f          	j	8000329c <__printf+0x5d4>
    80003198:	001c8c93          	addi	s9,s9,1
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	948080e7          	jalr	-1720(ra) # 80002ae4 <consputc>
    800031a4:	000cc503          	lbu	a0,0(s9)
    800031a8:	fe0518e3          	bnez	a0,80003198 <__printf+0x4d0>
    800031ac:	f5dff06f          	j	80003108 <__printf+0x440>
    800031b0:	02500513          	li	a0,37
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	930080e7          	jalr	-1744(ra) # 80002ae4 <consputc>
    800031bc:	000c8513          	mv	a0,s9
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	924080e7          	jalr	-1756(ra) # 80002ae4 <consputc>
    800031c8:	f41ff06f          	j	80003108 <__printf+0x440>
    800031cc:	02500513          	li	a0,37
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	914080e7          	jalr	-1772(ra) # 80002ae4 <consputc>
    800031d8:	f31ff06f          	j	80003108 <__printf+0x440>
    800031dc:	00030513          	mv	a0,t1
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	7bc080e7          	jalr	1980(ra) # 8000399c <acquire>
    800031e8:	b4dff06f          	j	80002d34 <__printf+0x6c>
    800031ec:	40c0053b          	negw	a0,a2
    800031f0:	00a00713          	li	a4,10
    800031f4:	02e576bb          	remuw	a3,a0,a4
    800031f8:	00002d97          	auipc	s11,0x2
    800031fc:	068d8d93          	addi	s11,s11,104 # 80005260 <digits>
    80003200:	ff700593          	li	a1,-9
    80003204:	02069693          	slli	a3,a3,0x20
    80003208:	0206d693          	srli	a3,a3,0x20
    8000320c:	00dd86b3          	add	a3,s11,a3
    80003210:	0006c683          	lbu	a3,0(a3)
    80003214:	02e557bb          	divuw	a5,a0,a4
    80003218:	f8d40023          	sb	a3,-128(s0)
    8000321c:	10b65e63          	bge	a2,a1,80003338 <__printf+0x670>
    80003220:	06300593          	li	a1,99
    80003224:	02e7f6bb          	remuw	a3,a5,a4
    80003228:	02069693          	slli	a3,a3,0x20
    8000322c:	0206d693          	srli	a3,a3,0x20
    80003230:	00dd86b3          	add	a3,s11,a3
    80003234:	0006c683          	lbu	a3,0(a3)
    80003238:	02e7d73b          	divuw	a4,a5,a4
    8000323c:	00200793          	li	a5,2
    80003240:	f8d400a3          	sb	a3,-127(s0)
    80003244:	bca5ece3          	bltu	a1,a0,80002e1c <__printf+0x154>
    80003248:	ce5ff06f          	j	80002f2c <__printf+0x264>
    8000324c:	40e007bb          	negw	a5,a4
    80003250:	00002d97          	auipc	s11,0x2
    80003254:	010d8d93          	addi	s11,s11,16 # 80005260 <digits>
    80003258:	00f7f693          	andi	a3,a5,15
    8000325c:	00dd86b3          	add	a3,s11,a3
    80003260:	0006c583          	lbu	a1,0(a3)
    80003264:	ff100613          	li	a2,-15
    80003268:	0047d69b          	srliw	a3,a5,0x4
    8000326c:	f8b40023          	sb	a1,-128(s0)
    80003270:	0047d59b          	srliw	a1,a5,0x4
    80003274:	0ac75e63          	bge	a4,a2,80003330 <__printf+0x668>
    80003278:	00f6f693          	andi	a3,a3,15
    8000327c:	00dd86b3          	add	a3,s11,a3
    80003280:	0006c603          	lbu	a2,0(a3)
    80003284:	00f00693          	li	a3,15
    80003288:	0087d79b          	srliw	a5,a5,0x8
    8000328c:	f8c400a3          	sb	a2,-127(s0)
    80003290:	d8b6e4e3          	bltu	a3,a1,80003018 <__printf+0x350>
    80003294:	00200793          	li	a5,2
    80003298:	e2dff06f          	j	800030c4 <__printf+0x3fc>
    8000329c:	00002c97          	auipc	s9,0x2
    800032a0:	fa4c8c93          	addi	s9,s9,-92 # 80005240 <_ZZ12printIntegermE6digits+0x148>
    800032a4:	02800513          	li	a0,40
    800032a8:	ef1ff06f          	j	80003198 <__printf+0x4d0>
    800032ac:	00700793          	li	a5,7
    800032b0:	00600c93          	li	s9,6
    800032b4:	e0dff06f          	j	800030c0 <__printf+0x3f8>
    800032b8:	00700793          	li	a5,7
    800032bc:	00600c93          	li	s9,6
    800032c0:	c69ff06f          	j	80002f28 <__printf+0x260>
    800032c4:	00300793          	li	a5,3
    800032c8:	00200c93          	li	s9,2
    800032cc:	c5dff06f          	j	80002f28 <__printf+0x260>
    800032d0:	00300793          	li	a5,3
    800032d4:	00200c93          	li	s9,2
    800032d8:	de9ff06f          	j	800030c0 <__printf+0x3f8>
    800032dc:	00400793          	li	a5,4
    800032e0:	00300c93          	li	s9,3
    800032e4:	dddff06f          	j	800030c0 <__printf+0x3f8>
    800032e8:	00400793          	li	a5,4
    800032ec:	00300c93          	li	s9,3
    800032f0:	c39ff06f          	j	80002f28 <__printf+0x260>
    800032f4:	00500793          	li	a5,5
    800032f8:	00400c93          	li	s9,4
    800032fc:	c2dff06f          	j	80002f28 <__printf+0x260>
    80003300:	00500793          	li	a5,5
    80003304:	00400c93          	li	s9,4
    80003308:	db9ff06f          	j	800030c0 <__printf+0x3f8>
    8000330c:	00600793          	li	a5,6
    80003310:	00500c93          	li	s9,5
    80003314:	dadff06f          	j	800030c0 <__printf+0x3f8>
    80003318:	00600793          	li	a5,6
    8000331c:	00500c93          	li	s9,5
    80003320:	c09ff06f          	j	80002f28 <__printf+0x260>
    80003324:	00800793          	li	a5,8
    80003328:	00700c93          	li	s9,7
    8000332c:	bfdff06f          	j	80002f28 <__printf+0x260>
    80003330:	00100793          	li	a5,1
    80003334:	d91ff06f          	j	800030c4 <__printf+0x3fc>
    80003338:	00100793          	li	a5,1
    8000333c:	bf1ff06f          	j	80002f2c <__printf+0x264>
    80003340:	00900793          	li	a5,9
    80003344:	00800c93          	li	s9,8
    80003348:	be1ff06f          	j	80002f28 <__printf+0x260>
    8000334c:	00002517          	auipc	a0,0x2
    80003350:	efc50513          	addi	a0,a0,-260 # 80005248 <_ZZ12printIntegermE6digits+0x150>
    80003354:	00000097          	auipc	ra,0x0
    80003358:	918080e7          	jalr	-1768(ra) # 80002c6c <panic>

000000008000335c <printfinit>:
    8000335c:	fe010113          	addi	sp,sp,-32
    80003360:	00813823          	sd	s0,16(sp)
    80003364:	00913423          	sd	s1,8(sp)
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	02010413          	addi	s0,sp,32
    80003370:	00003497          	auipc	s1,0x3
    80003374:	7c048493          	addi	s1,s1,1984 # 80006b30 <pr>
    80003378:	00048513          	mv	a0,s1
    8000337c:	00002597          	auipc	a1,0x2
    80003380:	edc58593          	addi	a1,a1,-292 # 80005258 <_ZZ12printIntegermE6digits+0x160>
    80003384:	00000097          	auipc	ra,0x0
    80003388:	5f4080e7          	jalr	1524(ra) # 80003978 <initlock>
    8000338c:	01813083          	ld	ra,24(sp)
    80003390:	01013403          	ld	s0,16(sp)
    80003394:	0004ac23          	sw	zero,24(s1)
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	02010113          	addi	sp,sp,32
    800033a0:	00008067          	ret

00000000800033a4 <uartinit>:
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813423          	sd	s0,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    800033b0:	100007b7          	lui	a5,0x10000
    800033b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800033b8:	f8000713          	li	a4,-128
    800033bc:	00e781a3          	sb	a4,3(a5)
    800033c0:	00300713          	li	a4,3
    800033c4:	00e78023          	sb	a4,0(a5)
    800033c8:	000780a3          	sb	zero,1(a5)
    800033cc:	00e781a3          	sb	a4,3(a5)
    800033d0:	00700693          	li	a3,7
    800033d4:	00d78123          	sb	a3,2(a5)
    800033d8:	00e780a3          	sb	a4,1(a5)
    800033dc:	00813403          	ld	s0,8(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <uartputc>:
    800033e8:	00002797          	auipc	a5,0x2
    800033ec:	4d07a783          	lw	a5,1232(a5) # 800058b8 <panicked>
    800033f0:	00078463          	beqz	a5,800033f8 <uartputc+0x10>
    800033f4:	0000006f          	j	800033f4 <uartputc+0xc>
    800033f8:	fd010113          	addi	sp,sp,-48
    800033fc:	02813023          	sd	s0,32(sp)
    80003400:	00913c23          	sd	s1,24(sp)
    80003404:	01213823          	sd	s2,16(sp)
    80003408:	01313423          	sd	s3,8(sp)
    8000340c:	02113423          	sd	ra,40(sp)
    80003410:	03010413          	addi	s0,sp,48
    80003414:	00002917          	auipc	s2,0x2
    80003418:	4ac90913          	addi	s2,s2,1196 # 800058c0 <uart_tx_r>
    8000341c:	00093783          	ld	a5,0(s2)
    80003420:	00002497          	auipc	s1,0x2
    80003424:	4a848493          	addi	s1,s1,1192 # 800058c8 <uart_tx_w>
    80003428:	0004b703          	ld	a4,0(s1)
    8000342c:	02078693          	addi	a3,a5,32
    80003430:	00050993          	mv	s3,a0
    80003434:	02e69c63          	bne	a3,a4,8000346c <uartputc+0x84>
    80003438:	00001097          	auipc	ra,0x1
    8000343c:	834080e7          	jalr	-1996(ra) # 80003c6c <push_on>
    80003440:	00093783          	ld	a5,0(s2)
    80003444:	0004b703          	ld	a4,0(s1)
    80003448:	02078793          	addi	a5,a5,32
    8000344c:	00e79463          	bne	a5,a4,80003454 <uartputc+0x6c>
    80003450:	0000006f          	j	80003450 <uartputc+0x68>
    80003454:	00001097          	auipc	ra,0x1
    80003458:	88c080e7          	jalr	-1908(ra) # 80003ce0 <pop_on>
    8000345c:	00093783          	ld	a5,0(s2)
    80003460:	0004b703          	ld	a4,0(s1)
    80003464:	02078693          	addi	a3,a5,32
    80003468:	fce688e3          	beq	a3,a4,80003438 <uartputc+0x50>
    8000346c:	01f77693          	andi	a3,a4,31
    80003470:	00003597          	auipc	a1,0x3
    80003474:	6e058593          	addi	a1,a1,1760 # 80006b50 <uart_tx_buf>
    80003478:	00d586b3          	add	a3,a1,a3
    8000347c:	00170713          	addi	a4,a4,1
    80003480:	01368023          	sb	s3,0(a3)
    80003484:	00e4b023          	sd	a4,0(s1)
    80003488:	10000637          	lui	a2,0x10000
    8000348c:	02f71063          	bne	a4,a5,800034ac <uartputc+0xc4>
    80003490:	0340006f          	j	800034c4 <uartputc+0xdc>
    80003494:	00074703          	lbu	a4,0(a4)
    80003498:	00f93023          	sd	a5,0(s2)
    8000349c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034a0:	00093783          	ld	a5,0(s2)
    800034a4:	0004b703          	ld	a4,0(s1)
    800034a8:	00f70e63          	beq	a4,a5,800034c4 <uartputc+0xdc>
    800034ac:	00564683          	lbu	a3,5(a2)
    800034b0:	01f7f713          	andi	a4,a5,31
    800034b4:	00e58733          	add	a4,a1,a4
    800034b8:	0206f693          	andi	a3,a3,32
    800034bc:	00178793          	addi	a5,a5,1
    800034c0:	fc069ae3          	bnez	a3,80003494 <uartputc+0xac>
    800034c4:	02813083          	ld	ra,40(sp)
    800034c8:	02013403          	ld	s0,32(sp)
    800034cc:	01813483          	ld	s1,24(sp)
    800034d0:	01013903          	ld	s2,16(sp)
    800034d4:	00813983          	ld	s3,8(sp)
    800034d8:	03010113          	addi	sp,sp,48
    800034dc:	00008067          	ret

00000000800034e0 <uartputc_sync>:
    800034e0:	ff010113          	addi	sp,sp,-16
    800034e4:	00813423          	sd	s0,8(sp)
    800034e8:	01010413          	addi	s0,sp,16
    800034ec:	00002717          	auipc	a4,0x2
    800034f0:	3cc72703          	lw	a4,972(a4) # 800058b8 <panicked>
    800034f4:	02071663          	bnez	a4,80003520 <uartputc_sync+0x40>
    800034f8:	00050793          	mv	a5,a0
    800034fc:	100006b7          	lui	a3,0x10000
    80003500:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003504:	02077713          	andi	a4,a4,32
    80003508:	fe070ce3          	beqz	a4,80003500 <uartputc_sync+0x20>
    8000350c:	0ff7f793          	andi	a5,a5,255
    80003510:	00f68023          	sb	a5,0(a3)
    80003514:	00813403          	ld	s0,8(sp)
    80003518:	01010113          	addi	sp,sp,16
    8000351c:	00008067          	ret
    80003520:	0000006f          	j	80003520 <uartputc_sync+0x40>

0000000080003524 <uartstart>:
    80003524:	ff010113          	addi	sp,sp,-16
    80003528:	00813423          	sd	s0,8(sp)
    8000352c:	01010413          	addi	s0,sp,16
    80003530:	00002617          	auipc	a2,0x2
    80003534:	39060613          	addi	a2,a2,912 # 800058c0 <uart_tx_r>
    80003538:	00002517          	auipc	a0,0x2
    8000353c:	39050513          	addi	a0,a0,912 # 800058c8 <uart_tx_w>
    80003540:	00063783          	ld	a5,0(a2)
    80003544:	00053703          	ld	a4,0(a0)
    80003548:	04f70263          	beq	a4,a5,8000358c <uartstart+0x68>
    8000354c:	100005b7          	lui	a1,0x10000
    80003550:	00003817          	auipc	a6,0x3
    80003554:	60080813          	addi	a6,a6,1536 # 80006b50 <uart_tx_buf>
    80003558:	01c0006f          	j	80003574 <uartstart+0x50>
    8000355c:	0006c703          	lbu	a4,0(a3)
    80003560:	00f63023          	sd	a5,0(a2)
    80003564:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003568:	00063783          	ld	a5,0(a2)
    8000356c:	00053703          	ld	a4,0(a0)
    80003570:	00f70e63          	beq	a4,a5,8000358c <uartstart+0x68>
    80003574:	01f7f713          	andi	a4,a5,31
    80003578:	00e806b3          	add	a3,a6,a4
    8000357c:	0055c703          	lbu	a4,5(a1)
    80003580:	00178793          	addi	a5,a5,1
    80003584:	02077713          	andi	a4,a4,32
    80003588:	fc071ae3          	bnez	a4,8000355c <uartstart+0x38>
    8000358c:	00813403          	ld	s0,8(sp)
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret

0000000080003598 <uartgetc>:
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00813423          	sd	s0,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    800035a4:	10000737          	lui	a4,0x10000
    800035a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035ac:	0017f793          	andi	a5,a5,1
    800035b0:	00078c63          	beqz	a5,800035c8 <uartgetc+0x30>
    800035b4:	00074503          	lbu	a0,0(a4)
    800035b8:	0ff57513          	andi	a0,a0,255
    800035bc:	00813403          	ld	s0,8(sp)
    800035c0:	01010113          	addi	sp,sp,16
    800035c4:	00008067          	ret
    800035c8:	fff00513          	li	a0,-1
    800035cc:	ff1ff06f          	j	800035bc <uartgetc+0x24>

00000000800035d0 <uartintr>:
    800035d0:	100007b7          	lui	a5,0x10000
    800035d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800035d8:	0017f793          	andi	a5,a5,1
    800035dc:	0a078463          	beqz	a5,80003684 <uartintr+0xb4>
    800035e0:	fe010113          	addi	sp,sp,-32
    800035e4:	00813823          	sd	s0,16(sp)
    800035e8:	00913423          	sd	s1,8(sp)
    800035ec:	00113c23          	sd	ra,24(sp)
    800035f0:	02010413          	addi	s0,sp,32
    800035f4:	100004b7          	lui	s1,0x10000
    800035f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800035fc:	0ff57513          	andi	a0,a0,255
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	534080e7          	jalr	1332(ra) # 80002b34 <consoleintr>
    80003608:	0054c783          	lbu	a5,5(s1)
    8000360c:	0017f793          	andi	a5,a5,1
    80003610:	fe0794e3          	bnez	a5,800035f8 <uartintr+0x28>
    80003614:	00002617          	auipc	a2,0x2
    80003618:	2ac60613          	addi	a2,a2,684 # 800058c0 <uart_tx_r>
    8000361c:	00002517          	auipc	a0,0x2
    80003620:	2ac50513          	addi	a0,a0,684 # 800058c8 <uart_tx_w>
    80003624:	00063783          	ld	a5,0(a2)
    80003628:	00053703          	ld	a4,0(a0)
    8000362c:	04f70263          	beq	a4,a5,80003670 <uartintr+0xa0>
    80003630:	100005b7          	lui	a1,0x10000
    80003634:	00003817          	auipc	a6,0x3
    80003638:	51c80813          	addi	a6,a6,1308 # 80006b50 <uart_tx_buf>
    8000363c:	01c0006f          	j	80003658 <uartintr+0x88>
    80003640:	0006c703          	lbu	a4,0(a3)
    80003644:	00f63023          	sd	a5,0(a2)
    80003648:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000364c:	00063783          	ld	a5,0(a2)
    80003650:	00053703          	ld	a4,0(a0)
    80003654:	00f70e63          	beq	a4,a5,80003670 <uartintr+0xa0>
    80003658:	01f7f713          	andi	a4,a5,31
    8000365c:	00e806b3          	add	a3,a6,a4
    80003660:	0055c703          	lbu	a4,5(a1)
    80003664:	00178793          	addi	a5,a5,1
    80003668:	02077713          	andi	a4,a4,32
    8000366c:	fc071ae3          	bnez	a4,80003640 <uartintr+0x70>
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	00813483          	ld	s1,8(sp)
    8000367c:	02010113          	addi	sp,sp,32
    80003680:	00008067          	ret
    80003684:	00002617          	auipc	a2,0x2
    80003688:	23c60613          	addi	a2,a2,572 # 800058c0 <uart_tx_r>
    8000368c:	00002517          	auipc	a0,0x2
    80003690:	23c50513          	addi	a0,a0,572 # 800058c8 <uart_tx_w>
    80003694:	00063783          	ld	a5,0(a2)
    80003698:	00053703          	ld	a4,0(a0)
    8000369c:	04f70263          	beq	a4,a5,800036e0 <uartintr+0x110>
    800036a0:	100005b7          	lui	a1,0x10000
    800036a4:	00003817          	auipc	a6,0x3
    800036a8:	4ac80813          	addi	a6,a6,1196 # 80006b50 <uart_tx_buf>
    800036ac:	01c0006f          	j	800036c8 <uartintr+0xf8>
    800036b0:	0006c703          	lbu	a4,0(a3)
    800036b4:	00f63023          	sd	a5,0(a2)
    800036b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036bc:	00063783          	ld	a5,0(a2)
    800036c0:	00053703          	ld	a4,0(a0)
    800036c4:	02f70063          	beq	a4,a5,800036e4 <uartintr+0x114>
    800036c8:	01f7f713          	andi	a4,a5,31
    800036cc:	00e806b3          	add	a3,a6,a4
    800036d0:	0055c703          	lbu	a4,5(a1)
    800036d4:	00178793          	addi	a5,a5,1
    800036d8:	02077713          	andi	a4,a4,32
    800036dc:	fc071ae3          	bnez	a4,800036b0 <uartintr+0xe0>
    800036e0:	00008067          	ret
    800036e4:	00008067          	ret

00000000800036e8 <kinit>:
    800036e8:	fc010113          	addi	sp,sp,-64
    800036ec:	02913423          	sd	s1,40(sp)
    800036f0:	fffff7b7          	lui	a5,0xfffff
    800036f4:	00004497          	auipc	s1,0x4
    800036f8:	48b48493          	addi	s1,s1,1163 # 80007b7f <end+0xfff>
    800036fc:	02813823          	sd	s0,48(sp)
    80003700:	01313c23          	sd	s3,24(sp)
    80003704:	00f4f4b3          	and	s1,s1,a5
    80003708:	02113c23          	sd	ra,56(sp)
    8000370c:	03213023          	sd	s2,32(sp)
    80003710:	01413823          	sd	s4,16(sp)
    80003714:	01513423          	sd	s5,8(sp)
    80003718:	04010413          	addi	s0,sp,64
    8000371c:	000017b7          	lui	a5,0x1
    80003720:	01100993          	li	s3,17
    80003724:	00f487b3          	add	a5,s1,a5
    80003728:	01b99993          	slli	s3,s3,0x1b
    8000372c:	06f9e063          	bltu	s3,a5,8000378c <kinit+0xa4>
    80003730:	00003a97          	auipc	s5,0x3
    80003734:	450a8a93          	addi	s5,s5,1104 # 80006b80 <end>
    80003738:	0754ec63          	bltu	s1,s5,800037b0 <kinit+0xc8>
    8000373c:	0734fa63          	bgeu	s1,s3,800037b0 <kinit+0xc8>
    80003740:	00088a37          	lui	s4,0x88
    80003744:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003748:	00002917          	auipc	s2,0x2
    8000374c:	18890913          	addi	s2,s2,392 # 800058d0 <kmem>
    80003750:	00ca1a13          	slli	s4,s4,0xc
    80003754:	0140006f          	j	80003768 <kinit+0x80>
    80003758:	000017b7          	lui	a5,0x1
    8000375c:	00f484b3          	add	s1,s1,a5
    80003760:	0554e863          	bltu	s1,s5,800037b0 <kinit+0xc8>
    80003764:	0534f663          	bgeu	s1,s3,800037b0 <kinit+0xc8>
    80003768:	00001637          	lui	a2,0x1
    8000376c:	00100593          	li	a1,1
    80003770:	00048513          	mv	a0,s1
    80003774:	00000097          	auipc	ra,0x0
    80003778:	5e4080e7          	jalr	1508(ra) # 80003d58 <__memset>
    8000377c:	00093783          	ld	a5,0(s2)
    80003780:	00f4b023          	sd	a5,0(s1)
    80003784:	00993023          	sd	s1,0(s2)
    80003788:	fd4498e3          	bne	s1,s4,80003758 <kinit+0x70>
    8000378c:	03813083          	ld	ra,56(sp)
    80003790:	03013403          	ld	s0,48(sp)
    80003794:	02813483          	ld	s1,40(sp)
    80003798:	02013903          	ld	s2,32(sp)
    8000379c:	01813983          	ld	s3,24(sp)
    800037a0:	01013a03          	ld	s4,16(sp)
    800037a4:	00813a83          	ld	s5,8(sp)
    800037a8:	04010113          	addi	sp,sp,64
    800037ac:	00008067          	ret
    800037b0:	00002517          	auipc	a0,0x2
    800037b4:	ac850513          	addi	a0,a0,-1336 # 80005278 <digits+0x18>
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	4b4080e7          	jalr	1204(ra) # 80002c6c <panic>

00000000800037c0 <freerange>:
    800037c0:	fc010113          	addi	sp,sp,-64
    800037c4:	000017b7          	lui	a5,0x1
    800037c8:	02913423          	sd	s1,40(sp)
    800037cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800037d0:	009504b3          	add	s1,a0,s1
    800037d4:	fffff537          	lui	a0,0xfffff
    800037d8:	02813823          	sd	s0,48(sp)
    800037dc:	02113c23          	sd	ra,56(sp)
    800037e0:	03213023          	sd	s2,32(sp)
    800037e4:	01313c23          	sd	s3,24(sp)
    800037e8:	01413823          	sd	s4,16(sp)
    800037ec:	01513423          	sd	s5,8(sp)
    800037f0:	01613023          	sd	s6,0(sp)
    800037f4:	04010413          	addi	s0,sp,64
    800037f8:	00a4f4b3          	and	s1,s1,a0
    800037fc:	00f487b3          	add	a5,s1,a5
    80003800:	06f5e463          	bltu	a1,a5,80003868 <freerange+0xa8>
    80003804:	00003a97          	auipc	s5,0x3
    80003808:	37ca8a93          	addi	s5,s5,892 # 80006b80 <end>
    8000380c:	0954e263          	bltu	s1,s5,80003890 <freerange+0xd0>
    80003810:	01100993          	li	s3,17
    80003814:	01b99993          	slli	s3,s3,0x1b
    80003818:	0734fc63          	bgeu	s1,s3,80003890 <freerange+0xd0>
    8000381c:	00058a13          	mv	s4,a1
    80003820:	00002917          	auipc	s2,0x2
    80003824:	0b090913          	addi	s2,s2,176 # 800058d0 <kmem>
    80003828:	00002b37          	lui	s6,0x2
    8000382c:	0140006f          	j	80003840 <freerange+0x80>
    80003830:	000017b7          	lui	a5,0x1
    80003834:	00f484b3          	add	s1,s1,a5
    80003838:	0554ec63          	bltu	s1,s5,80003890 <freerange+0xd0>
    8000383c:	0534fa63          	bgeu	s1,s3,80003890 <freerange+0xd0>
    80003840:	00001637          	lui	a2,0x1
    80003844:	00100593          	li	a1,1
    80003848:	00048513          	mv	a0,s1
    8000384c:	00000097          	auipc	ra,0x0
    80003850:	50c080e7          	jalr	1292(ra) # 80003d58 <__memset>
    80003854:	00093703          	ld	a4,0(s2)
    80003858:	016487b3          	add	a5,s1,s6
    8000385c:	00e4b023          	sd	a4,0(s1)
    80003860:	00993023          	sd	s1,0(s2)
    80003864:	fcfa76e3          	bgeu	s4,a5,80003830 <freerange+0x70>
    80003868:	03813083          	ld	ra,56(sp)
    8000386c:	03013403          	ld	s0,48(sp)
    80003870:	02813483          	ld	s1,40(sp)
    80003874:	02013903          	ld	s2,32(sp)
    80003878:	01813983          	ld	s3,24(sp)
    8000387c:	01013a03          	ld	s4,16(sp)
    80003880:	00813a83          	ld	s5,8(sp)
    80003884:	00013b03          	ld	s6,0(sp)
    80003888:	04010113          	addi	sp,sp,64
    8000388c:	00008067          	ret
    80003890:	00002517          	auipc	a0,0x2
    80003894:	9e850513          	addi	a0,a0,-1560 # 80005278 <digits+0x18>
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	3d4080e7          	jalr	980(ra) # 80002c6c <panic>

00000000800038a0 <kfree>:
    800038a0:	fe010113          	addi	sp,sp,-32
    800038a4:	00813823          	sd	s0,16(sp)
    800038a8:	00113c23          	sd	ra,24(sp)
    800038ac:	00913423          	sd	s1,8(sp)
    800038b0:	02010413          	addi	s0,sp,32
    800038b4:	03451793          	slli	a5,a0,0x34
    800038b8:	04079c63          	bnez	a5,80003910 <kfree+0x70>
    800038bc:	00003797          	auipc	a5,0x3
    800038c0:	2c478793          	addi	a5,a5,708 # 80006b80 <end>
    800038c4:	00050493          	mv	s1,a0
    800038c8:	04f56463          	bltu	a0,a5,80003910 <kfree+0x70>
    800038cc:	01100793          	li	a5,17
    800038d0:	01b79793          	slli	a5,a5,0x1b
    800038d4:	02f57e63          	bgeu	a0,a5,80003910 <kfree+0x70>
    800038d8:	00001637          	lui	a2,0x1
    800038dc:	00100593          	li	a1,1
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	478080e7          	jalr	1144(ra) # 80003d58 <__memset>
    800038e8:	00002797          	auipc	a5,0x2
    800038ec:	fe878793          	addi	a5,a5,-24 # 800058d0 <kmem>
    800038f0:	0007b703          	ld	a4,0(a5)
    800038f4:	01813083          	ld	ra,24(sp)
    800038f8:	01013403          	ld	s0,16(sp)
    800038fc:	00e4b023          	sd	a4,0(s1)
    80003900:	0097b023          	sd	s1,0(a5)
    80003904:	00813483          	ld	s1,8(sp)
    80003908:	02010113          	addi	sp,sp,32
    8000390c:	00008067          	ret
    80003910:	00002517          	auipc	a0,0x2
    80003914:	96850513          	addi	a0,a0,-1688 # 80005278 <digits+0x18>
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	354080e7          	jalr	852(ra) # 80002c6c <panic>

0000000080003920 <kalloc>:
    80003920:	fe010113          	addi	sp,sp,-32
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	00113c23          	sd	ra,24(sp)
    80003930:	02010413          	addi	s0,sp,32
    80003934:	00002797          	auipc	a5,0x2
    80003938:	f9c78793          	addi	a5,a5,-100 # 800058d0 <kmem>
    8000393c:	0007b483          	ld	s1,0(a5)
    80003940:	02048063          	beqz	s1,80003960 <kalloc+0x40>
    80003944:	0004b703          	ld	a4,0(s1)
    80003948:	00001637          	lui	a2,0x1
    8000394c:	00500593          	li	a1,5
    80003950:	00048513          	mv	a0,s1
    80003954:	00e7b023          	sd	a4,0(a5)
    80003958:	00000097          	auipc	ra,0x0
    8000395c:	400080e7          	jalr	1024(ra) # 80003d58 <__memset>
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00048513          	mv	a0,s1
    8000396c:	00813483          	ld	s1,8(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret

0000000080003978 <initlock>:
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00813423          	sd	s0,8(sp)
    80003980:	01010413          	addi	s0,sp,16
    80003984:	00813403          	ld	s0,8(sp)
    80003988:	00b53423          	sd	a1,8(a0)
    8000398c:	00052023          	sw	zero,0(a0)
    80003990:	00053823          	sd	zero,16(a0)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <acquire>:
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00813823          	sd	s0,16(sp)
    800039a4:	00913423          	sd	s1,8(sp)
    800039a8:	00113c23          	sd	ra,24(sp)
    800039ac:	01213023          	sd	s2,0(sp)
    800039b0:	02010413          	addi	s0,sp,32
    800039b4:	00050493          	mv	s1,a0
    800039b8:	10002973          	csrr	s2,sstatus
    800039bc:	100027f3          	csrr	a5,sstatus
    800039c0:	ffd7f793          	andi	a5,a5,-3
    800039c4:	10079073          	csrw	sstatus,a5
    800039c8:	fffff097          	auipc	ra,0xfffff
    800039cc:	8e4080e7          	jalr	-1820(ra) # 800022ac <mycpu>
    800039d0:	07852783          	lw	a5,120(a0)
    800039d4:	06078e63          	beqz	a5,80003a50 <acquire+0xb4>
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	8d4080e7          	jalr	-1836(ra) # 800022ac <mycpu>
    800039e0:	07852783          	lw	a5,120(a0)
    800039e4:	0004a703          	lw	a4,0(s1)
    800039e8:	0017879b          	addiw	a5,a5,1
    800039ec:	06f52c23          	sw	a5,120(a0)
    800039f0:	04071063          	bnez	a4,80003a30 <acquire+0x94>
    800039f4:	00100713          	li	a4,1
    800039f8:	00070793          	mv	a5,a4
    800039fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a00:	0007879b          	sext.w	a5,a5
    80003a04:	fe079ae3          	bnez	a5,800039f8 <acquire+0x5c>
    80003a08:	0ff0000f          	fence
    80003a0c:	fffff097          	auipc	ra,0xfffff
    80003a10:	8a0080e7          	jalr	-1888(ra) # 800022ac <mycpu>
    80003a14:	01813083          	ld	ra,24(sp)
    80003a18:	01013403          	ld	s0,16(sp)
    80003a1c:	00a4b823          	sd	a0,16(s1)
    80003a20:	00013903          	ld	s2,0(sp)
    80003a24:	00813483          	ld	s1,8(sp)
    80003a28:	02010113          	addi	sp,sp,32
    80003a2c:	00008067          	ret
    80003a30:	0104b903          	ld	s2,16(s1)
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	878080e7          	jalr	-1928(ra) # 800022ac <mycpu>
    80003a3c:	faa91ce3          	bne	s2,a0,800039f4 <acquire+0x58>
    80003a40:	00002517          	auipc	a0,0x2
    80003a44:	84050513          	addi	a0,a0,-1984 # 80005280 <digits+0x20>
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	224080e7          	jalr	548(ra) # 80002c6c <panic>
    80003a50:	00195913          	srli	s2,s2,0x1
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	858080e7          	jalr	-1960(ra) # 800022ac <mycpu>
    80003a5c:	00197913          	andi	s2,s2,1
    80003a60:	07252e23          	sw	s2,124(a0)
    80003a64:	f75ff06f          	j	800039d8 <acquire+0x3c>

0000000080003a68 <release>:
    80003a68:	fe010113          	addi	sp,sp,-32
    80003a6c:	00813823          	sd	s0,16(sp)
    80003a70:	00113c23          	sd	ra,24(sp)
    80003a74:	00913423          	sd	s1,8(sp)
    80003a78:	01213023          	sd	s2,0(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	00052783          	lw	a5,0(a0)
    80003a84:	00079a63          	bnez	a5,80003a98 <release+0x30>
    80003a88:	00002517          	auipc	a0,0x2
    80003a8c:	80050513          	addi	a0,a0,-2048 # 80005288 <digits+0x28>
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	1dc080e7          	jalr	476(ra) # 80002c6c <panic>
    80003a98:	01053903          	ld	s2,16(a0)
    80003a9c:	00050493          	mv	s1,a0
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	80c080e7          	jalr	-2036(ra) # 800022ac <mycpu>
    80003aa8:	fea910e3          	bne	s2,a0,80003a88 <release+0x20>
    80003aac:	0004b823          	sd	zero,16(s1)
    80003ab0:	0ff0000f          	fence
    80003ab4:	0f50000f          	fence	iorw,ow
    80003ab8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	7f0080e7          	jalr	2032(ra) # 800022ac <mycpu>
    80003ac4:	100027f3          	csrr	a5,sstatus
    80003ac8:	0027f793          	andi	a5,a5,2
    80003acc:	04079a63          	bnez	a5,80003b20 <release+0xb8>
    80003ad0:	07852783          	lw	a5,120(a0)
    80003ad4:	02f05e63          	blez	a5,80003b10 <release+0xa8>
    80003ad8:	fff7871b          	addiw	a4,a5,-1
    80003adc:	06e52c23          	sw	a4,120(a0)
    80003ae0:	00071c63          	bnez	a4,80003af8 <release+0x90>
    80003ae4:	07c52783          	lw	a5,124(a0)
    80003ae8:	00078863          	beqz	a5,80003af8 <release+0x90>
    80003aec:	100027f3          	csrr	a5,sstatus
    80003af0:	0027e793          	ori	a5,a5,2
    80003af4:	10079073          	csrw	sstatus,a5
    80003af8:	01813083          	ld	ra,24(sp)
    80003afc:	01013403          	ld	s0,16(sp)
    80003b00:	00813483          	ld	s1,8(sp)
    80003b04:	00013903          	ld	s2,0(sp)
    80003b08:	02010113          	addi	sp,sp,32
    80003b0c:	00008067          	ret
    80003b10:	00001517          	auipc	a0,0x1
    80003b14:	79850513          	addi	a0,a0,1944 # 800052a8 <digits+0x48>
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	154080e7          	jalr	340(ra) # 80002c6c <panic>
    80003b20:	00001517          	auipc	a0,0x1
    80003b24:	77050513          	addi	a0,a0,1904 # 80005290 <digits+0x30>
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	144080e7          	jalr	324(ra) # 80002c6c <panic>

0000000080003b30 <holding>:
    80003b30:	00052783          	lw	a5,0(a0)
    80003b34:	00079663          	bnez	a5,80003b40 <holding+0x10>
    80003b38:	00000513          	li	a0,0
    80003b3c:	00008067          	ret
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	01053483          	ld	s1,16(a0)
    80003b58:	ffffe097          	auipc	ra,0xffffe
    80003b5c:	754080e7          	jalr	1876(ra) # 800022ac <mycpu>
    80003b60:	01813083          	ld	ra,24(sp)
    80003b64:	01013403          	ld	s0,16(sp)
    80003b68:	40a48533          	sub	a0,s1,a0
    80003b6c:	00153513          	seqz	a0,a0
    80003b70:	00813483          	ld	s1,8(sp)
    80003b74:	02010113          	addi	sp,sp,32
    80003b78:	00008067          	ret

0000000080003b7c <push_off>:
    80003b7c:	fe010113          	addi	sp,sp,-32
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00113c23          	sd	ra,24(sp)
    80003b88:	00913423          	sd	s1,8(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    80003b90:	100024f3          	csrr	s1,sstatus
    80003b94:	100027f3          	csrr	a5,sstatus
    80003b98:	ffd7f793          	andi	a5,a5,-3
    80003b9c:	10079073          	csrw	sstatus,a5
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	70c080e7          	jalr	1804(ra) # 800022ac <mycpu>
    80003ba8:	07852783          	lw	a5,120(a0)
    80003bac:	02078663          	beqz	a5,80003bd8 <push_off+0x5c>
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	6fc080e7          	jalr	1788(ra) # 800022ac <mycpu>
    80003bb8:	07852783          	lw	a5,120(a0)
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	0017879b          	addiw	a5,a5,1
    80003bc8:	06f52c23          	sw	a5,120(a0)
    80003bcc:	00813483          	ld	s1,8(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret
    80003bd8:	0014d493          	srli	s1,s1,0x1
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	6d0080e7          	jalr	1744(ra) # 800022ac <mycpu>
    80003be4:	0014f493          	andi	s1,s1,1
    80003be8:	06952e23          	sw	s1,124(a0)
    80003bec:	fc5ff06f          	j	80003bb0 <push_off+0x34>

0000000080003bf0 <pop_off>:
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00813023          	sd	s0,0(sp)
    80003bf8:	00113423          	sd	ra,8(sp)
    80003bfc:	01010413          	addi	s0,sp,16
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	6ac080e7          	jalr	1708(ra) # 800022ac <mycpu>
    80003c08:	100027f3          	csrr	a5,sstatus
    80003c0c:	0027f793          	andi	a5,a5,2
    80003c10:	04079663          	bnez	a5,80003c5c <pop_off+0x6c>
    80003c14:	07852783          	lw	a5,120(a0)
    80003c18:	02f05a63          	blez	a5,80003c4c <pop_off+0x5c>
    80003c1c:	fff7871b          	addiw	a4,a5,-1
    80003c20:	06e52c23          	sw	a4,120(a0)
    80003c24:	00071c63          	bnez	a4,80003c3c <pop_off+0x4c>
    80003c28:	07c52783          	lw	a5,124(a0)
    80003c2c:	00078863          	beqz	a5,80003c3c <pop_off+0x4c>
    80003c30:	100027f3          	csrr	a5,sstatus
    80003c34:	0027e793          	ori	a5,a5,2
    80003c38:	10079073          	csrw	sstatus,a5
    80003c3c:	00813083          	ld	ra,8(sp)
    80003c40:	00013403          	ld	s0,0(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret
    80003c4c:	00001517          	auipc	a0,0x1
    80003c50:	65c50513          	addi	a0,a0,1628 # 800052a8 <digits+0x48>
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	018080e7          	jalr	24(ra) # 80002c6c <panic>
    80003c5c:	00001517          	auipc	a0,0x1
    80003c60:	63450513          	addi	a0,a0,1588 # 80005290 <digits+0x30>
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	008080e7          	jalr	8(ra) # 80002c6c <panic>

0000000080003c6c <push_on>:
    80003c6c:	fe010113          	addi	sp,sp,-32
    80003c70:	00813823          	sd	s0,16(sp)
    80003c74:	00113c23          	sd	ra,24(sp)
    80003c78:	00913423          	sd	s1,8(sp)
    80003c7c:	02010413          	addi	s0,sp,32
    80003c80:	100024f3          	csrr	s1,sstatus
    80003c84:	100027f3          	csrr	a5,sstatus
    80003c88:	0027e793          	ori	a5,a5,2
    80003c8c:	10079073          	csrw	sstatus,a5
    80003c90:	ffffe097          	auipc	ra,0xffffe
    80003c94:	61c080e7          	jalr	1564(ra) # 800022ac <mycpu>
    80003c98:	07852783          	lw	a5,120(a0)
    80003c9c:	02078663          	beqz	a5,80003cc8 <push_on+0x5c>
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	60c080e7          	jalr	1548(ra) # 800022ac <mycpu>
    80003ca8:	07852783          	lw	a5,120(a0)
    80003cac:	01813083          	ld	ra,24(sp)
    80003cb0:	01013403          	ld	s0,16(sp)
    80003cb4:	0017879b          	addiw	a5,a5,1
    80003cb8:	06f52c23          	sw	a5,120(a0)
    80003cbc:	00813483          	ld	s1,8(sp)
    80003cc0:	02010113          	addi	sp,sp,32
    80003cc4:	00008067          	ret
    80003cc8:	0014d493          	srli	s1,s1,0x1
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	5e0080e7          	jalr	1504(ra) # 800022ac <mycpu>
    80003cd4:	0014f493          	andi	s1,s1,1
    80003cd8:	06952e23          	sw	s1,124(a0)
    80003cdc:	fc5ff06f          	j	80003ca0 <push_on+0x34>

0000000080003ce0 <pop_on>:
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00813023          	sd	s0,0(sp)
    80003ce8:	00113423          	sd	ra,8(sp)
    80003cec:	01010413          	addi	s0,sp,16
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	5bc080e7          	jalr	1468(ra) # 800022ac <mycpu>
    80003cf8:	100027f3          	csrr	a5,sstatus
    80003cfc:	0027f793          	andi	a5,a5,2
    80003d00:	04078463          	beqz	a5,80003d48 <pop_on+0x68>
    80003d04:	07852783          	lw	a5,120(a0)
    80003d08:	02f05863          	blez	a5,80003d38 <pop_on+0x58>
    80003d0c:	fff7879b          	addiw	a5,a5,-1
    80003d10:	06f52c23          	sw	a5,120(a0)
    80003d14:	07853783          	ld	a5,120(a0)
    80003d18:	00079863          	bnez	a5,80003d28 <pop_on+0x48>
    80003d1c:	100027f3          	csrr	a5,sstatus
    80003d20:	ffd7f793          	andi	a5,a5,-3
    80003d24:	10079073          	csrw	sstatus,a5
    80003d28:	00813083          	ld	ra,8(sp)
    80003d2c:	00013403          	ld	s0,0(sp)
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret
    80003d38:	00001517          	auipc	a0,0x1
    80003d3c:	59850513          	addi	a0,a0,1432 # 800052d0 <digits+0x70>
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	f2c080e7          	jalr	-212(ra) # 80002c6c <panic>
    80003d48:	00001517          	auipc	a0,0x1
    80003d4c:	56850513          	addi	a0,a0,1384 # 800052b0 <digits+0x50>
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	f1c080e7          	jalr	-228(ra) # 80002c6c <panic>

0000000080003d58 <__memset>:
    80003d58:	ff010113          	addi	sp,sp,-16
    80003d5c:	00813423          	sd	s0,8(sp)
    80003d60:	01010413          	addi	s0,sp,16
    80003d64:	1a060e63          	beqz	a2,80003f20 <__memset+0x1c8>
    80003d68:	40a007b3          	neg	a5,a0
    80003d6c:	0077f793          	andi	a5,a5,7
    80003d70:	00778693          	addi	a3,a5,7
    80003d74:	00b00813          	li	a6,11
    80003d78:	0ff5f593          	andi	a1,a1,255
    80003d7c:	fff6071b          	addiw	a4,a2,-1
    80003d80:	1b06e663          	bltu	a3,a6,80003f2c <__memset+0x1d4>
    80003d84:	1cd76463          	bltu	a4,a3,80003f4c <__memset+0x1f4>
    80003d88:	1a078e63          	beqz	a5,80003f44 <__memset+0x1ec>
    80003d8c:	00b50023          	sb	a1,0(a0)
    80003d90:	00100713          	li	a4,1
    80003d94:	1ae78463          	beq	a5,a4,80003f3c <__memset+0x1e4>
    80003d98:	00b500a3          	sb	a1,1(a0)
    80003d9c:	00200713          	li	a4,2
    80003da0:	1ae78a63          	beq	a5,a4,80003f54 <__memset+0x1fc>
    80003da4:	00b50123          	sb	a1,2(a0)
    80003da8:	00300713          	li	a4,3
    80003dac:	18e78463          	beq	a5,a4,80003f34 <__memset+0x1dc>
    80003db0:	00b501a3          	sb	a1,3(a0)
    80003db4:	00400713          	li	a4,4
    80003db8:	1ae78263          	beq	a5,a4,80003f5c <__memset+0x204>
    80003dbc:	00b50223          	sb	a1,4(a0)
    80003dc0:	00500713          	li	a4,5
    80003dc4:	1ae78063          	beq	a5,a4,80003f64 <__memset+0x20c>
    80003dc8:	00b502a3          	sb	a1,5(a0)
    80003dcc:	00700713          	li	a4,7
    80003dd0:	18e79e63          	bne	a5,a4,80003f6c <__memset+0x214>
    80003dd4:	00b50323          	sb	a1,6(a0)
    80003dd8:	00700e93          	li	t4,7
    80003ddc:	00859713          	slli	a4,a1,0x8
    80003de0:	00e5e733          	or	a4,a1,a4
    80003de4:	01059e13          	slli	t3,a1,0x10
    80003de8:	01c76e33          	or	t3,a4,t3
    80003dec:	01859313          	slli	t1,a1,0x18
    80003df0:	006e6333          	or	t1,t3,t1
    80003df4:	02059893          	slli	a7,a1,0x20
    80003df8:	40f60e3b          	subw	t3,a2,a5
    80003dfc:	011368b3          	or	a7,t1,a7
    80003e00:	02859813          	slli	a6,a1,0x28
    80003e04:	0108e833          	or	a6,a7,a6
    80003e08:	03059693          	slli	a3,a1,0x30
    80003e0c:	003e589b          	srliw	a7,t3,0x3
    80003e10:	00d866b3          	or	a3,a6,a3
    80003e14:	03859713          	slli	a4,a1,0x38
    80003e18:	00389813          	slli	a6,a7,0x3
    80003e1c:	00f507b3          	add	a5,a0,a5
    80003e20:	00e6e733          	or	a4,a3,a4
    80003e24:	000e089b          	sext.w	a7,t3
    80003e28:	00f806b3          	add	a3,a6,a5
    80003e2c:	00e7b023          	sd	a4,0(a5)
    80003e30:	00878793          	addi	a5,a5,8
    80003e34:	fed79ce3          	bne	a5,a3,80003e2c <__memset+0xd4>
    80003e38:	ff8e7793          	andi	a5,t3,-8
    80003e3c:	0007871b          	sext.w	a4,a5
    80003e40:	01d787bb          	addw	a5,a5,t4
    80003e44:	0ce88e63          	beq	a7,a4,80003f20 <__memset+0x1c8>
    80003e48:	00f50733          	add	a4,a0,a5
    80003e4c:	00b70023          	sb	a1,0(a4)
    80003e50:	0017871b          	addiw	a4,a5,1
    80003e54:	0cc77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e58:	00e50733          	add	a4,a0,a4
    80003e5c:	00b70023          	sb	a1,0(a4)
    80003e60:	0027871b          	addiw	a4,a5,2
    80003e64:	0ac77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e68:	00e50733          	add	a4,a0,a4
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	0037871b          	addiw	a4,a5,3
    80003e74:	0ac77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	0047871b          	addiw	a4,a5,4
    80003e84:	08c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e88:	00e50733          	add	a4,a0,a4
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	0057871b          	addiw	a4,a5,5
    80003e94:	08c77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0067871b          	addiw	a4,a5,6
    80003ea4:	06c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0077871b          	addiw	a4,a5,7
    80003eb4:	06c77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0087871b          	addiw	a4,a5,8
    80003ec4:	04c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0097871b          	addiw	a4,a5,9
    80003ed4:	04c77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	00a7871b          	addiw	a4,a5,10
    80003ee4:	02c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	00b7871b          	addiw	a4,a5,11
    80003ef4:	02c77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	00c7871b          	addiw	a4,a5,12
    80003f04:	00c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	00d7879b          	addiw	a5,a5,13
    80003f14:	00c7f663          	bgeu	a5,a2,80003f20 <__memset+0x1c8>
    80003f18:	00f507b3          	add	a5,a0,a5
    80003f1c:	00b78023          	sb	a1,0(a5)
    80003f20:	00813403          	ld	s0,8(sp)
    80003f24:	01010113          	addi	sp,sp,16
    80003f28:	00008067          	ret
    80003f2c:	00b00693          	li	a3,11
    80003f30:	e55ff06f          	j	80003d84 <__memset+0x2c>
    80003f34:	00300e93          	li	t4,3
    80003f38:	ea5ff06f          	j	80003ddc <__memset+0x84>
    80003f3c:	00100e93          	li	t4,1
    80003f40:	e9dff06f          	j	80003ddc <__memset+0x84>
    80003f44:	00000e93          	li	t4,0
    80003f48:	e95ff06f          	j	80003ddc <__memset+0x84>
    80003f4c:	00000793          	li	a5,0
    80003f50:	ef9ff06f          	j	80003e48 <__memset+0xf0>
    80003f54:	00200e93          	li	t4,2
    80003f58:	e85ff06f          	j	80003ddc <__memset+0x84>
    80003f5c:	00400e93          	li	t4,4
    80003f60:	e7dff06f          	j	80003ddc <__memset+0x84>
    80003f64:	00500e93          	li	t4,5
    80003f68:	e75ff06f          	j	80003ddc <__memset+0x84>
    80003f6c:	00600e93          	li	t4,6
    80003f70:	e6dff06f          	j	80003ddc <__memset+0x84>

0000000080003f74 <__memmove>:
    80003f74:	ff010113          	addi	sp,sp,-16
    80003f78:	00813423          	sd	s0,8(sp)
    80003f7c:	01010413          	addi	s0,sp,16
    80003f80:	0e060863          	beqz	a2,80004070 <__memmove+0xfc>
    80003f84:	fff6069b          	addiw	a3,a2,-1
    80003f88:	0006881b          	sext.w	a6,a3
    80003f8c:	0ea5e863          	bltu	a1,a0,8000407c <__memmove+0x108>
    80003f90:	00758713          	addi	a4,a1,7
    80003f94:	00a5e7b3          	or	a5,a1,a0
    80003f98:	40a70733          	sub	a4,a4,a0
    80003f9c:	0077f793          	andi	a5,a5,7
    80003fa0:	00f73713          	sltiu	a4,a4,15
    80003fa4:	00174713          	xori	a4,a4,1
    80003fa8:	0017b793          	seqz	a5,a5
    80003fac:	00e7f7b3          	and	a5,a5,a4
    80003fb0:	10078863          	beqz	a5,800040c0 <__memmove+0x14c>
    80003fb4:	00900793          	li	a5,9
    80003fb8:	1107f463          	bgeu	a5,a6,800040c0 <__memmove+0x14c>
    80003fbc:	0036581b          	srliw	a6,a2,0x3
    80003fc0:	fff8081b          	addiw	a6,a6,-1
    80003fc4:	02081813          	slli	a6,a6,0x20
    80003fc8:	01d85893          	srli	a7,a6,0x1d
    80003fcc:	00858813          	addi	a6,a1,8
    80003fd0:	00058793          	mv	a5,a1
    80003fd4:	00050713          	mv	a4,a0
    80003fd8:	01088833          	add	a6,a7,a6
    80003fdc:	0007b883          	ld	a7,0(a5)
    80003fe0:	00878793          	addi	a5,a5,8
    80003fe4:	00870713          	addi	a4,a4,8
    80003fe8:	ff173c23          	sd	a7,-8(a4)
    80003fec:	ff0798e3          	bne	a5,a6,80003fdc <__memmove+0x68>
    80003ff0:	ff867713          	andi	a4,a2,-8
    80003ff4:	02071793          	slli	a5,a4,0x20
    80003ff8:	0207d793          	srli	a5,a5,0x20
    80003ffc:	00f585b3          	add	a1,a1,a5
    80004000:	40e686bb          	subw	a3,a3,a4
    80004004:	00f507b3          	add	a5,a0,a5
    80004008:	06e60463          	beq	a2,a4,80004070 <__memmove+0xfc>
    8000400c:	0005c703          	lbu	a4,0(a1)
    80004010:	00e78023          	sb	a4,0(a5)
    80004014:	04068e63          	beqz	a3,80004070 <__memmove+0xfc>
    80004018:	0015c603          	lbu	a2,1(a1)
    8000401c:	00100713          	li	a4,1
    80004020:	00c780a3          	sb	a2,1(a5)
    80004024:	04e68663          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004028:	0025c603          	lbu	a2,2(a1)
    8000402c:	00200713          	li	a4,2
    80004030:	00c78123          	sb	a2,2(a5)
    80004034:	02e68e63          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004038:	0035c603          	lbu	a2,3(a1)
    8000403c:	00300713          	li	a4,3
    80004040:	00c781a3          	sb	a2,3(a5)
    80004044:	02e68663          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004048:	0045c603          	lbu	a2,4(a1)
    8000404c:	00400713          	li	a4,4
    80004050:	00c78223          	sb	a2,4(a5)
    80004054:	00e68e63          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004058:	0055c603          	lbu	a2,5(a1)
    8000405c:	00500713          	li	a4,5
    80004060:	00c782a3          	sb	a2,5(a5)
    80004064:	00e68663          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004068:	0065c703          	lbu	a4,6(a1)
    8000406c:	00e78323          	sb	a4,6(a5)
    80004070:	00813403          	ld	s0,8(sp)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret
    8000407c:	02061713          	slli	a4,a2,0x20
    80004080:	02075713          	srli	a4,a4,0x20
    80004084:	00e587b3          	add	a5,a1,a4
    80004088:	f0f574e3          	bgeu	a0,a5,80003f90 <__memmove+0x1c>
    8000408c:	02069613          	slli	a2,a3,0x20
    80004090:	02065613          	srli	a2,a2,0x20
    80004094:	fff64613          	not	a2,a2
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00c78633          	add	a2,a5,a2
    800040a0:	fff7c683          	lbu	a3,-1(a5)
    800040a4:	fff78793          	addi	a5,a5,-1
    800040a8:	fff70713          	addi	a4,a4,-1
    800040ac:	00d70023          	sb	a3,0(a4)
    800040b0:	fec798e3          	bne	a5,a2,800040a0 <__memmove+0x12c>
    800040b4:	00813403          	ld	s0,8(sp)
    800040b8:	01010113          	addi	sp,sp,16
    800040bc:	00008067          	ret
    800040c0:	02069713          	slli	a4,a3,0x20
    800040c4:	02075713          	srli	a4,a4,0x20
    800040c8:	00170713          	addi	a4,a4,1
    800040cc:	00e50733          	add	a4,a0,a4
    800040d0:	00050793          	mv	a5,a0
    800040d4:	0005c683          	lbu	a3,0(a1)
    800040d8:	00178793          	addi	a5,a5,1
    800040dc:	00158593          	addi	a1,a1,1
    800040e0:	fed78fa3          	sb	a3,-1(a5)
    800040e4:	fee798e3          	bne	a5,a4,800040d4 <__memmove+0x160>
    800040e8:	f89ff06f          	j	80004070 <__memmove+0xfc>

00000000800040ec <__mem_free>:
    800040ec:	ff010113          	addi	sp,sp,-16
    800040f0:	00813423          	sd	s0,8(sp)
    800040f4:	01010413          	addi	s0,sp,16
    800040f8:	00001597          	auipc	a1,0x1
    800040fc:	7e058593          	addi	a1,a1,2016 # 800058d8 <freep>
    80004100:	0005b783          	ld	a5,0(a1)
    80004104:	ff050693          	addi	a3,a0,-16
    80004108:	0007b703          	ld	a4,0(a5)
    8000410c:	00d7fc63          	bgeu	a5,a3,80004124 <__mem_free+0x38>
    80004110:	00e6ee63          	bltu	a3,a4,8000412c <__mem_free+0x40>
    80004114:	00e7fc63          	bgeu	a5,a4,8000412c <__mem_free+0x40>
    80004118:	00070793          	mv	a5,a4
    8000411c:	0007b703          	ld	a4,0(a5)
    80004120:	fed7e8e3          	bltu	a5,a3,80004110 <__mem_free+0x24>
    80004124:	fee7eae3          	bltu	a5,a4,80004118 <__mem_free+0x2c>
    80004128:	fee6f8e3          	bgeu	a3,a4,80004118 <__mem_free+0x2c>
    8000412c:	ff852803          	lw	a6,-8(a0)
    80004130:	02081613          	slli	a2,a6,0x20
    80004134:	01c65613          	srli	a2,a2,0x1c
    80004138:	00c68633          	add	a2,a3,a2
    8000413c:	02c70a63          	beq	a4,a2,80004170 <__mem_free+0x84>
    80004140:	fee53823          	sd	a4,-16(a0)
    80004144:	0087a503          	lw	a0,8(a5)
    80004148:	02051613          	slli	a2,a0,0x20
    8000414c:	01c65613          	srli	a2,a2,0x1c
    80004150:	00c78633          	add	a2,a5,a2
    80004154:	04c68263          	beq	a3,a2,80004198 <__mem_free+0xac>
    80004158:	00813403          	ld	s0,8(sp)
    8000415c:	00d7b023          	sd	a3,0(a5)
    80004160:	00f5b023          	sd	a5,0(a1)
    80004164:	00000513          	li	a0,0
    80004168:	01010113          	addi	sp,sp,16
    8000416c:	00008067          	ret
    80004170:	00872603          	lw	a2,8(a4)
    80004174:	00073703          	ld	a4,0(a4)
    80004178:	0106083b          	addw	a6,a2,a6
    8000417c:	ff052c23          	sw	a6,-8(a0)
    80004180:	fee53823          	sd	a4,-16(a0)
    80004184:	0087a503          	lw	a0,8(a5)
    80004188:	02051613          	slli	a2,a0,0x20
    8000418c:	01c65613          	srli	a2,a2,0x1c
    80004190:	00c78633          	add	a2,a5,a2
    80004194:	fcc692e3          	bne	a3,a2,80004158 <__mem_free+0x6c>
    80004198:	00813403          	ld	s0,8(sp)
    8000419c:	0105053b          	addw	a0,a0,a6
    800041a0:	00a7a423          	sw	a0,8(a5)
    800041a4:	00e7b023          	sd	a4,0(a5)
    800041a8:	00f5b023          	sd	a5,0(a1)
    800041ac:	00000513          	li	a0,0
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret

00000000800041b8 <__mem_alloc>:
    800041b8:	fc010113          	addi	sp,sp,-64
    800041bc:	02813823          	sd	s0,48(sp)
    800041c0:	02913423          	sd	s1,40(sp)
    800041c4:	03213023          	sd	s2,32(sp)
    800041c8:	01513423          	sd	s5,8(sp)
    800041cc:	02113c23          	sd	ra,56(sp)
    800041d0:	01313c23          	sd	s3,24(sp)
    800041d4:	01413823          	sd	s4,16(sp)
    800041d8:	01613023          	sd	s6,0(sp)
    800041dc:	04010413          	addi	s0,sp,64
    800041e0:	00001a97          	auipc	s5,0x1
    800041e4:	6f8a8a93          	addi	s5,s5,1784 # 800058d8 <freep>
    800041e8:	00f50913          	addi	s2,a0,15
    800041ec:	000ab683          	ld	a3,0(s5)
    800041f0:	00495913          	srli	s2,s2,0x4
    800041f4:	0019049b          	addiw	s1,s2,1
    800041f8:	00048913          	mv	s2,s1
    800041fc:	0c068c63          	beqz	a3,800042d4 <__mem_alloc+0x11c>
    80004200:	0006b503          	ld	a0,0(a3)
    80004204:	00852703          	lw	a4,8(a0)
    80004208:	10977063          	bgeu	a4,s1,80004308 <__mem_alloc+0x150>
    8000420c:	000017b7          	lui	a5,0x1
    80004210:	0009099b          	sext.w	s3,s2
    80004214:	0af4e863          	bltu	s1,a5,800042c4 <__mem_alloc+0x10c>
    80004218:	02099a13          	slli	s4,s3,0x20
    8000421c:	01ca5a13          	srli	s4,s4,0x1c
    80004220:	fff00b13          	li	s6,-1
    80004224:	0100006f          	j	80004234 <__mem_alloc+0x7c>
    80004228:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000422c:	00852703          	lw	a4,8(a0)
    80004230:	04977463          	bgeu	a4,s1,80004278 <__mem_alloc+0xc0>
    80004234:	00050793          	mv	a5,a0
    80004238:	fea698e3          	bne	a3,a0,80004228 <__mem_alloc+0x70>
    8000423c:	000a0513          	mv	a0,s4
    80004240:	00000097          	auipc	ra,0x0
    80004244:	1f0080e7          	jalr	496(ra) # 80004430 <kvmincrease>
    80004248:	00050793          	mv	a5,a0
    8000424c:	01050513          	addi	a0,a0,16
    80004250:	07678e63          	beq	a5,s6,800042cc <__mem_alloc+0x114>
    80004254:	0137a423          	sw	s3,8(a5)
    80004258:	00000097          	auipc	ra,0x0
    8000425c:	e94080e7          	jalr	-364(ra) # 800040ec <__mem_free>
    80004260:	000ab783          	ld	a5,0(s5)
    80004264:	06078463          	beqz	a5,800042cc <__mem_alloc+0x114>
    80004268:	0007b503          	ld	a0,0(a5)
    8000426c:	00078693          	mv	a3,a5
    80004270:	00852703          	lw	a4,8(a0)
    80004274:	fc9760e3          	bltu	a4,s1,80004234 <__mem_alloc+0x7c>
    80004278:	08e48263          	beq	s1,a4,800042fc <__mem_alloc+0x144>
    8000427c:	4127073b          	subw	a4,a4,s2
    80004280:	02071693          	slli	a3,a4,0x20
    80004284:	01c6d693          	srli	a3,a3,0x1c
    80004288:	00e52423          	sw	a4,8(a0)
    8000428c:	00d50533          	add	a0,a0,a3
    80004290:	01252423          	sw	s2,8(a0)
    80004294:	00fab023          	sd	a5,0(s5)
    80004298:	01050513          	addi	a0,a0,16
    8000429c:	03813083          	ld	ra,56(sp)
    800042a0:	03013403          	ld	s0,48(sp)
    800042a4:	02813483          	ld	s1,40(sp)
    800042a8:	02013903          	ld	s2,32(sp)
    800042ac:	01813983          	ld	s3,24(sp)
    800042b0:	01013a03          	ld	s4,16(sp)
    800042b4:	00813a83          	ld	s5,8(sp)
    800042b8:	00013b03          	ld	s6,0(sp)
    800042bc:	04010113          	addi	sp,sp,64
    800042c0:	00008067          	ret
    800042c4:	000019b7          	lui	s3,0x1
    800042c8:	f51ff06f          	j	80004218 <__mem_alloc+0x60>
    800042cc:	00000513          	li	a0,0
    800042d0:	fcdff06f          	j	8000429c <__mem_alloc+0xe4>
    800042d4:	00003797          	auipc	a5,0x3
    800042d8:	89c78793          	addi	a5,a5,-1892 # 80006b70 <base>
    800042dc:	00078513          	mv	a0,a5
    800042e0:	00fab023          	sd	a5,0(s5)
    800042e4:	00f7b023          	sd	a5,0(a5)
    800042e8:	00000713          	li	a4,0
    800042ec:	00003797          	auipc	a5,0x3
    800042f0:	8807a623          	sw	zero,-1908(a5) # 80006b78 <base+0x8>
    800042f4:	00050693          	mv	a3,a0
    800042f8:	f11ff06f          	j	80004208 <__mem_alloc+0x50>
    800042fc:	00053703          	ld	a4,0(a0)
    80004300:	00e7b023          	sd	a4,0(a5)
    80004304:	f91ff06f          	j	80004294 <__mem_alloc+0xdc>
    80004308:	00068793          	mv	a5,a3
    8000430c:	f6dff06f          	j	80004278 <__mem_alloc+0xc0>

0000000080004310 <__putc>:
    80004310:	fe010113          	addi	sp,sp,-32
    80004314:	00813823          	sd	s0,16(sp)
    80004318:	00113c23          	sd	ra,24(sp)
    8000431c:	02010413          	addi	s0,sp,32
    80004320:	00050793          	mv	a5,a0
    80004324:	fef40593          	addi	a1,s0,-17
    80004328:	00100613          	li	a2,1
    8000432c:	00000513          	li	a0,0
    80004330:	fef407a3          	sb	a5,-17(s0)
    80004334:	fffff097          	auipc	ra,0xfffff
    80004338:	918080e7          	jalr	-1768(ra) # 80002c4c <console_write>
    8000433c:	01813083          	ld	ra,24(sp)
    80004340:	01013403          	ld	s0,16(sp)
    80004344:	02010113          	addi	sp,sp,32
    80004348:	00008067          	ret

000000008000434c <__getc>:
    8000434c:	fe010113          	addi	sp,sp,-32
    80004350:	00813823          	sd	s0,16(sp)
    80004354:	00113c23          	sd	ra,24(sp)
    80004358:	02010413          	addi	s0,sp,32
    8000435c:	fe840593          	addi	a1,s0,-24
    80004360:	00100613          	li	a2,1
    80004364:	00000513          	li	a0,0
    80004368:	fffff097          	auipc	ra,0xfffff
    8000436c:	8c4080e7          	jalr	-1852(ra) # 80002c2c <console_read>
    80004370:	fe844503          	lbu	a0,-24(s0)
    80004374:	01813083          	ld	ra,24(sp)
    80004378:	01013403          	ld	s0,16(sp)
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret

0000000080004384 <console_handler>:
    80004384:	fe010113          	addi	sp,sp,-32
    80004388:	00813823          	sd	s0,16(sp)
    8000438c:	00113c23          	sd	ra,24(sp)
    80004390:	00913423          	sd	s1,8(sp)
    80004394:	02010413          	addi	s0,sp,32
    80004398:	14202773          	csrr	a4,scause
    8000439c:	100027f3          	csrr	a5,sstatus
    800043a0:	0027f793          	andi	a5,a5,2
    800043a4:	06079e63          	bnez	a5,80004420 <console_handler+0x9c>
    800043a8:	00074c63          	bltz	a4,800043c0 <console_handler+0x3c>
    800043ac:	01813083          	ld	ra,24(sp)
    800043b0:	01013403          	ld	s0,16(sp)
    800043b4:	00813483          	ld	s1,8(sp)
    800043b8:	02010113          	addi	sp,sp,32
    800043bc:	00008067          	ret
    800043c0:	0ff77713          	andi	a4,a4,255
    800043c4:	00900793          	li	a5,9
    800043c8:	fef712e3          	bne	a4,a5,800043ac <console_handler+0x28>
    800043cc:	ffffe097          	auipc	ra,0xffffe
    800043d0:	4b8080e7          	jalr	1208(ra) # 80002884 <plic_claim>
    800043d4:	00a00793          	li	a5,10
    800043d8:	00050493          	mv	s1,a0
    800043dc:	02f50c63          	beq	a0,a5,80004414 <console_handler+0x90>
    800043e0:	fc0506e3          	beqz	a0,800043ac <console_handler+0x28>
    800043e4:	00050593          	mv	a1,a0
    800043e8:	00001517          	auipc	a0,0x1
    800043ec:	df050513          	addi	a0,a0,-528 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    800043f0:	fffff097          	auipc	ra,0xfffff
    800043f4:	8d8080e7          	jalr	-1832(ra) # 80002cc8 <__printf>
    800043f8:	01013403          	ld	s0,16(sp)
    800043fc:	01813083          	ld	ra,24(sp)
    80004400:	00048513          	mv	a0,s1
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	02010113          	addi	sp,sp,32
    8000440c:	ffffe317          	auipc	t1,0xffffe
    80004410:	4b030067          	jr	1200(t1) # 800028bc <plic_complete>
    80004414:	fffff097          	auipc	ra,0xfffff
    80004418:	1bc080e7          	jalr	444(ra) # 800035d0 <uartintr>
    8000441c:	fddff06f          	j	800043f8 <console_handler+0x74>
    80004420:	00001517          	auipc	a0,0x1
    80004424:	eb850513          	addi	a0,a0,-328 # 800052d8 <digits+0x78>
    80004428:	fffff097          	auipc	ra,0xfffff
    8000442c:	844080e7          	jalr	-1980(ra) # 80002c6c <panic>

0000000080004430 <kvmincrease>:
    80004430:	fe010113          	addi	sp,sp,-32
    80004434:	01213023          	sd	s2,0(sp)
    80004438:	00001937          	lui	s2,0x1
    8000443c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004440:	00813823          	sd	s0,16(sp)
    80004444:	00113c23          	sd	ra,24(sp)
    80004448:	00913423          	sd	s1,8(sp)
    8000444c:	02010413          	addi	s0,sp,32
    80004450:	01250933          	add	s2,a0,s2
    80004454:	00c95913          	srli	s2,s2,0xc
    80004458:	02090863          	beqz	s2,80004488 <kvmincrease+0x58>
    8000445c:	00000493          	li	s1,0
    80004460:	00148493          	addi	s1,s1,1
    80004464:	fffff097          	auipc	ra,0xfffff
    80004468:	4bc080e7          	jalr	1212(ra) # 80003920 <kalloc>
    8000446c:	fe991ae3          	bne	s2,s1,80004460 <kvmincrease+0x30>
    80004470:	01813083          	ld	ra,24(sp)
    80004474:	01013403          	ld	s0,16(sp)
    80004478:	00813483          	ld	s1,8(sp)
    8000447c:	00013903          	ld	s2,0(sp)
    80004480:	02010113          	addi	sp,sp,32
    80004484:	00008067          	ret
    80004488:	01813083          	ld	ra,24(sp)
    8000448c:	01013403          	ld	s0,16(sp)
    80004490:	00813483          	ld	s1,8(sp)
    80004494:	00013903          	ld	s2,0(sp)
    80004498:	00000513          	li	a0,0
    8000449c:	02010113          	addi	sp,sp,32
    800044a0:	00008067          	ret
	...
