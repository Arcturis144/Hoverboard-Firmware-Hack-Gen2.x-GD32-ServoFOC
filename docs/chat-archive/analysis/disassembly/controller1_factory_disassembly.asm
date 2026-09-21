; GD32F130C8 factory firmware - Controller 1
; Source: oriFW(1).bin
; Architecture: ARM Cortex-M3 / Thumb-2
; Flash base: 0x08000000
; Reset vector: 0x08000171 -> code begins at 0x08000170
; NOTE: This is a linear disassembly. Embedded literal/data tables may decode as instructions.


/mnt/data/controller1.elf:	file format elf32-littlearm

Disassembly of section .text:

08000000 <firmware_image>:
 8000170: 4806         	ldr	r0, [pc, #0x18]         @ 0x800018c <firmware_image+0x18c>
 8000172: 4700         	bx	r0
 8000174: e7fe         	b	0x8000174 <firmware_image+0x174> @ imm = #-0x4
 8000176: e7fe         	b	0x8000176 <firmware_image+0x176> @ imm = #-0x4
 8000178: e7fe         	b	0x8000178 <firmware_image+0x178> @ imm = #-0x4
 800017a: e7fe         	b	0x800017a <firmware_image+0x17a> @ imm = #-0x4
 800017c: e7fe         	b	0x800017c <firmware_image+0x17c> @ imm = #-0x4
 800017e: e7fe         	b	0x800017e <firmware_image+0x17e> @ imm = #-0x4
 8000180: e7fe         	b	0x8000180 <firmware_image+0x180> @ imm = #-0x4
 8000182: e7fe         	b	0x8000182 <firmware_image+0x182> @ imm = #-0x4
 8000184: 5425         	strb	r5, [r4, r0]
 8000186: 0800         	lsrs	r0, r0, #0x20
 8000188: 015b         	lsls	r3, r3, #0x5
 800018a: 0800         	lsrs	r0, r0, #0x20
 800018c: b4f0         	push	{r4, r5, r6, r7}
 800018e: ea80 0201    	eor.w	r2, r0, r1
 8000192: 0fd4         	lsrs	r4, r2, #0x1f
 8000194: 0042         	lsls	r2, r0, #0x1
 8000196: ebb2 0f41    	cmp.w	r2, r1, lsl #1
 800019a: d202         	bhs	0x80001a2 <firmware_image+0x1a2> @ imm = #0x4
 800019c: 4602         	mov	r2, r0
 800019e: 4608         	mov	r0, r1
 80001a0: d042         	beq	0x8000228 <firmware_image+0x228> @ imm = #0x84
 80001a2: 0dc3         	lsrs	r3, r0, #0x17
 80001a4: b2dd         	uxtb	r5, r3
 80001a6: f3c1 52c7    	ubfx	r2, r1, #0x17, #0x8
 80001aa: 1aad         	subs	r5, r5, r2
 80001ac: 2d20         	cmp	r5, #0x20
 80001ae: da35         	bge	0x800021c <firmware_image+0x21c> @ imm = #0x6a
 80001b0: f3c1 0116    	ubfx	r1, r1, #0x0, #0x17
 80001b4: f441 0200    	orr	r2, r1, #0x800000
 80001b8: b104         	cbz	r4, 0x80001bc <firmware_image+0x1bc> @ imm = #0x0
 80001ba: 4252         	rsbs	r2, r2, #0
 80001bc: f1c5 0620    	rsb.w	r6, r5, #0x20
 80001c0: fa02 f106    	lsl.w	r1, r2, r6
 80001c4: 412a         	asrs	r2, r5
 80001c6: 4410         	add	r0, r2
 80001c8: ebb3 5fd0    	cmp.w	r3, r0, lsr #23
 80001cc: d023         	beq	0x8000216 <firmware_image+0x216> @ imm = #0x46
 80001ce: b1c4         	cbz	r4, 0x8000202 <firmware_image+0x202> @ imm = #0x30
 80001d0: 2d01         	cmp	r5, #0x1
 80001d2: eba0 50c3    	sub.w	r0, r0, r3, lsl #23
 80001d6: dc09         	bgt	0x80001ec <firmware_image+0x1ec> @ imm = #0x12
 80001d8: bcf0         	pop	{r4, r5, r6, r7}
 80001da: f04f 4200    	mov.w	r2, #0x80000000
 80001de: ea02 52c3    	and.w	r2, r2, r3, lsl #23
 80001e2: b2db         	uxtb	r3, r3
 80001e4: f500 0000    	add.w	r0, r0, #0x800000
 80001e8: f000 bafe    	b.w	0x80007e8 <firmware_image+0x7e8> @ imm = #0x5fc
 80001ec: 0040         	lsls	r0, r0, #0x1
 80001ee: f100 7080    	add.w	r0, r0, #0x1000000
 80001f2: eb00 50c3    	add.w	r0, r0, r3, lsl #23
 80001f6: f1a0 7080    	sub.w	r0, r0, #0x1000000
 80001fa: ea40 70d1    	orr.w	r0, r0, r1, lsr #31
 80001fe: 0049         	lsls	r1, r1, #0x1
 8000200: e009         	b	0x8000216 <firmware_image+0x216> @ imm = #0x12
 8000202: 0849         	lsrs	r1, r1, #0x1
 8000204: ea41 71c0    	orr.w	r1, r1, r0, lsl #31
 8000208: eba0 50c3    	sub.w	r0, r0, r3, lsl #23
 800020c: f500 0000    	add.w	r0, r0, #0x800000
 8000210: 0840         	lsrs	r0, r0, #0x1
 8000212: eb00 50c3    	add.w	r0, r0, r3, lsl #23
 8000216: bcf0         	pop	{r4, r5, r6, r7}
 8000218: f000 badd    	b.w	0x80007d6 <firmware_image+0x7d6> @ imm = #0x5ba
 800021c: 4261         	rsbs	r1, r4, #0
 800021e: 2201         	movs	r2, #0x1
 8000220: eb02 0141    	add.w	r1, r2, r1, lsl #1
 8000224: 1b00         	subs	r0, r0, r4
 8000226: e7f6         	b	0x8000216 <firmware_image+0x216> @ imm = #-0x14
 8000228: bcf0         	pop	{r4, r5, r6, r7}
 800022a: 4770         	bx	lr
 800022c: f081 4100    	eor	r1, r1, #0x80000000
 8000230: e7aa         	b	0x8000188 <firmware_image+0x188> @ imm = #-0xac
 8000232: f080 4000    	eor	r0, r0, #0x80000000
 8000236: e7a7         	b	0x8000188 <firmware_image+0x188> @ imm = #-0xb2
 8000238: ea80 0201    	eor.w	r2, r0, r1
 800023c: b510         	push	{r4, lr}
 800023e: f002 4300    	and	r3, r2, #0x80000000
 8000242: 0040         	lsls	r0, r0, #0x1
 8000244: d022         	beq	0x800028c <firmware_image+0x28c> @ imm = #0x44
 8000246: 004a         	lsls	r2, r1, #0x1
 8000248: d01f         	beq	0x800028a <firmware_image+0x28a> @ imm = #0x3e
 800024a: 0e01         	lsrs	r1, r0, #0x18
 800024c: eb01 6112    	add.w	r1, r1, r2, lsr #24
 8000250: f3c0 0056    	ubfx	r0, r0, #0x1, #0x17
 8000254: f3c2 0256    	ubfx	r2, r2, #0x1, #0x17
 8000258: f440 0000    	orr	r0, r0, #0x800000
 800025c: f442 0200    	orr	r2, r2, #0x800000
 8000260: fba0 2002    	umull	r2, r0, r0, r2
 8000264: 0400         	lsls	r0, r0, #0x10
 8000266: 397f         	subs	r1, #0x7f
 8000268: 0414         	lsls	r4, r2, #0x10
 800026a: d000         	beq	0x800026e <firmware_image+0x26e> @ imm = #0x0
 800026c: 1c40         	adds	r0, r0, #0x1
 800026e: ea50 4012    	orrs.w	r0, r0, r2, lsr #16
 8000272: d401         	bmi	0x8000278 <firmware_image+0x278> @ imm = #0x2
 8000274: 0040         	lsls	r0, r0, #0x1
 8000276: 1e49         	subs	r1, r1, #0x1
 8000278: b2c2         	uxtb	r2, r0
 800027a: 060c         	lsls	r4, r1, #0x18
 800027c: 1c40         	adds	r0, r0, #0x1
 800027e: 0840         	lsrs	r0, r0, #0x1
 8000280: 2a80         	cmp	r2, #0x80
 8000282: d002         	beq	0x800028a <firmware_image+0x28a> @ imm = #0x4
 8000284: e003         	b	0x800028e <firmware_image+0x28e> @ imm = #0x6
 8000286: 2000         	movs	r0, #0x0
 8000288: bd10         	pop	{r4, pc}
 800028a: f020 0001    	bic	r0, r0, #0x1
 800028e: 2900         	cmp	r1, #0x0
 8000290: da00         	bge	0x8000294 <firmware_image+0x294> @ imm = #0x0
 8000292: 2000         	movs	r0, #0x0
 8000294: 4318         	orrs	r0, r3
 8000296: bd10         	pop	{r4, pc}
 8000298: b430         	push	{r4, r5}
 800029a: ea80 0201    	eor.w	r2, r0, r1
 800029e: f002 4500    	and	r5, r2, #0x80000000
 80002a2: f030 4200    	bics	r2, r0, #0x80000000
 80002a6: f021 4000    	bic	r0, r1, #0x80000000
 80002aa: d013         	beq	0x80002d4 <firmware_image+0x2d4> @ imm = #0x26
 80002ac: b190         	cbz	r0, 0x80002d4 <firmware_image+0x2d4> @ imm = #0x24
 80002ae: 0dc3         	lsrs	r3, r0, #0x17
 80002b0: 0dd4         	lsrs	r4, r2, #0x17
 80002b2: f3c2 0116    	ubfx	r1, r2, #0x0, #0x17
 80002b6: f3c0 0016    	ubfx	r0, r0, #0x0, #0x17
 80002ba: 1ae4         	subs	r4, r4, r3
 80002bc: f441 0100    	orr	r1, r1, #0x800000
 80002c0: f440 0200    	orr	r2, r0, #0x800000
 80002c4: 347d         	adds	r4, #0x7d
 80002c6: 4291         	cmp	r1, r2
 80002c8: d301         	blo	0x80002ce <firmware_image+0x2ce> @ imm = #0x2
 80002ca: 1c64         	adds	r4, r4, #0x1
 80002cc: e000         	b	0x80002d0 <firmware_image+0x2d0> @ imm = #0x0
 80002ce: 0049         	lsls	r1, r1, #0x1
 80002d0: 2c00         	cmp	r4, #0x0
 80002d2: da02         	bge	0x80002da <firmware_image+0x2da> @ imm = #0x4
 80002d4: bc30         	pop	{r4, r5}
 80002d6: 2000         	movs	r0, #0x0
 80002d8: 4770         	bx	lr
 80002da: f44f 0000    	mov.w	r0, #0x800000
 80002de: 2300         	movs	r3, #0x0
 80002e0: 4291         	cmp	r1, r2
 80002e2: d301         	blo	0x80002e8 <firmware_image+0x2e8> @ imm = #0x2
 80002e4: 1a89         	subs	r1, r1, r2
 80002e6: 4303         	orrs	r3, r0
 80002e8: 0840         	lsrs	r0, r0, #0x1
 80002ea: ea4f 0141    	lsl.w	r1, r1, #0x1
 80002ee: d1f7         	bne	0x80002e0 <firmware_image+0x2e0> @ imm = #-0x12
 80002f0: b151         	cbz	r1, 0x8000308 <firmware_image+0x308> @ imm = #0x14
 80002f2: 4291         	cmp	r1, r2
 80002f4: d102         	bne	0x80002fc <firmware_image+0x2fc> @ imm = #0x4
 80002f6: f04f 4100    	mov.w	r1, #0x80000000
 80002fa: e005         	b	0x8000308 <firmware_image+0x308> @ imm = #0xa
 80002fc: d202         	bhs	0x8000304 <firmware_image+0x304> @ imm = #0x4
 80002fe: f04f 0101    	mov.w	r1, #0x1
 8000302: e001         	b	0x8000308 <firmware_image+0x308> @ imm = #0x2
 8000304: f06f 0101    	mvn	r1, #0x1
 8000308: eb03 50c4    	add.w	r0, r3, r4, lsl #23
 800030c: 4428         	add	r0, r5
 800030e: bc30         	pop	{r4, r5}
 8000310: f000 ba5f    	b.w	0x80007d2 <firmware_image+0x7d2> @ imm = #0x4be
 8000314: 0042         	lsls	r2, r0, #0x1
 8000316: d005         	beq	0x8000324 <firmware_image+0x324> @ imm = #0xa
 8000318: f3c0 52c7    	ubfx	r2, r0, #0x17, #0x8
 800031c: 4252         	rsbs	r2, r2, #0
 800031e: 4291         	cmp	r1, r2
 8000320: dc01         	bgt	0x8000326 <firmware_image+0x326> @ imm = #0x2
 8000322: 2000         	movs	r0, #0x0
 8000324: 4770         	bx	lr
 8000326: eb00 50c1    	add.w	r0, r0, r1, lsl #23
 800032a: 4770         	bx	lr
 800032c: e92d 4ffe    	push.w	{r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000330: 4680         	mov	r8, r0
 8000332: ea81 0003    	eor.w	r0, r1, r3
 8000336: 0fc0         	lsrs	r0, r0, #0x1f
 8000338: 460c         	mov	r4, r1
 800033a: 9000         	str	r0, [sp]
 800033c: f021 4100    	bic	r1, r1, #0x80000000
 8000340: f023 4500    	bic	r5, r3, #0x80000000
 8000344: ebb8 0002    	subs.w	r0, r8, r2
 8000348: 41a9         	sbcs	r1, r5
 800034a: d205         	bhs	0x8000358 <firmware_image+0x358> @ imm = #0xa
 800034c: 4640         	mov	r0, r8
 800034e: 4621         	mov	r1, r4
 8000350: 4690         	mov	r8, r2
 8000352: 461c         	mov	r4, r3
 8000354: 460b         	mov	r3, r1
 8000356: 4602         	mov	r2, r0
 8000358: f023 4000    	bic	r0, r3, #0x80000000
 800035c: 4310         	orrs	r0, r2
 800035e: d047         	beq	0x80003f0 <firmware_image+0x3f0> @ imm = #0x8e
 8000360: 0d27         	lsrs	r7, r4, #0x14
 8000362: f3c7 000a    	ubfx	r0, r7, #0x0, #0xb
 8000366: f3c3 510a    	ubfx	r1, r3, #0x14, #0xb
 800036a: 9002         	str	r0, [sp, #0x8]
 800036c: 1a40         	subs	r0, r0, r1
 800036e: 9001         	str	r0, [sp, #0x4]
 8000370: 2840         	cmp	r0, #0x40
 8000372: da6b         	bge	0x800044c <firmware_image+0x44c> @ imm = #0xd6
 8000374: f3c3 0013    	ubfx	r0, r3, #0x0, #0x14
 8000378: f440 1b80    	orr	r11, r0, #0x100000
 800037c: 9800         	ldr	r0, [sp]
 800037e: 4692         	mov	r10, r2
 8000380: b120         	cbz	r0, 0x800038c <firmware_image+0x38c> @ imm = #0x8
 8000382: 2300         	movs	r3, #0x0
 8000384: ebd2 0a03    	rsbs	r10, r2, r3
 8000388: 9801         	ldr	r0, [sp, #0x4]
 800038a: 4659         	mov	r1, r11
 800038c: f1c0 0240    	rsb.w	r2, r0, #0x40
 8000390: 4650         	mov	r0, r10
 8000392: f000 f9eb    	bl	0x800076c <firmware_image+0x76c> @ imm = #0x3d6
 8000396: 4606         	mov	r6, r0
 8000398: 460d         	mov	r5, r1
 800039a: 4650         	mov	r0, r10
 800039c: 4659         	mov	r1, r11
 800039e: 9a01         	ldr	r2, [sp, #0x4]
 80003a0: f000 fa03    	bl	0x80007aa <firmware_image+0x7aa> @ imm = #0x406
 80003a4: eb10 0008    	adds.w	r0, r0, r8
 80003a8: 4161         	adcs	r1, r4
 80003aa: 2400         	movs	r4, #0x0
 80003ac: ea87 5211    	eor.w	r2, r7, r1, lsr #20
 80003b0: ea84 73e7    	eor.w	r3, r4, r7, asr #31
 80003b4: 431a         	orrs	r2, r3
 80003b6: d040         	beq	0x800043a <firmware_image+0x43a> @ imm = #0x80
 80003b8: 9a00         	ldr	r2, [sp]
 80003ba: b362         	cbz	r2, 0x8000416 <firmware_image+0x416> @ imm = #0x58
 80003bc: 9a01         	ldr	r2, [sp, #0x4]
 80003be: 2a01         	cmp	r2, #0x1
 80003c0: ea4f 5207    	lsl.w	r2, r7, #0x14
 80003c4: dc15         	bgt	0x80003f2 <firmware_image+0x3f2> @ imm = #0x2a
 80003c6: 1b00         	subs	r0, r0, r4
 80003c8: eb61 0102    	sbc.w	r1, r1, r2
 80003cc: f04f 4200    	mov.w	r2, #0x80000000
 80003d0: ea02 5207    	and.w	r2, r2, r7, lsl #20
 80003d4: e9cd 4200    	strd	r4, r2, [sp]
 80003d8: 1c00         	adds	r0, r0, #0x0
 80003da: f541 1180    	adc	r1, r1, #0x100000
 80003de: 4632         	mov	r2, r6
 80003e0: 462b         	mov	r3, r5
 80003e2: f000 fa3a    	bl	0x800085a <firmware_image+0x85a> @ imm = #0x474
 80003e6: b003         	add	sp, #0xc
 80003e8: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80003ec: 4640         	mov	r0, r8
 80003ee: 4621         	mov	r1, r4
 80003f0: e7f9         	b	0x80003e6 <firmware_image+0x3e6> @ imm = #-0xe
 80003f2: 1b00         	subs	r0, r0, r4
 80003f4: eb61 0102    	sbc.w	r1, r1, r2
 80003f8: 1c00         	adds	r0, r0, #0x0
 80003fa: f541 1380    	adc	r3, r1, #0x100000
 80003fe: 1800         	adds	r0, r0, r0
 8000400: 4640         	mov	r0, r8
 8000402: 4621         	mov	r1, r4
 8000404: e7f9         	b	0x80003fa <firmware_image+0x3fa> @ imm = #-0xe
 8000406: 1b00         	subs	r0, r0, r4
 8000408: eb61 0102    	sbc.w	r1, r1, r2
 800040c: 1c00         	adds	r0, r0, #0x0
 800040e: f541 1380    	adc	r3, r1, #0x100000
 8000412: 1800         	adds	r0, r0, r0
 8000414: 415b         	adcs	r3, r3
 8000416: 1820         	adds	r0, r4, r0
 8000418: f5a2 1700    	sub.w	r7, r2, #0x200000
 800041c: eb47 0103    	adc.w	r1, r7, r3
 8000420: ea40 70d5    	orr.w	r0, r0, r5, lsr #31
 8000424: 19b6         	adds	r6, r6, r6
 8000426: 416d         	adcs	r5, r5
 8000428: e011         	b	0x800044e <firmware_image+0x44e> @ imm = #0x22
 800042a: 086d         	lsrs	r5, r5, #0x1
 800042c: ea4f 0636    	rrx	r6, r6
 8000430: ea45 75c0    	orr.w	r5, r5, r0, lsl #31
 8000434: ea4f 5207    	lsl.w	r2, r7, #0x14
 8000438: 1b00         	subs	r0, r0, r4
 800043a: eb61 0102    	sbc.w	r1, r1, r2
 800043e: 1c00         	adds	r0, r0, #0x0
 8000440: f541 1180    	adc	r1, r1, #0x100000
 8000444: 0849         	lsrs	r1, r1, #0x1
 8000446: ea4f 0030    	rrx	r0, r0
 800044a: 1900         	adds	r0, r0, r4
 800044c: 4151         	adcs	r1, r2
 800044e: 4632         	mov	r2, r6
 8000450: 462b         	mov	r3, r5
 8000452: b003         	add	sp, #0xc
 8000454: e8bd 4ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000458: f000 b9fa    	b.w	0x8000850 <firmware_image+0x850> @ imm = #0x3f4
 800045c: 9800         	ldr	r0, [sp]
 800045e: 2201         	movs	r2, #0x1
 8000460: 0040         	lsls	r0, r0, #0x1
 8000462: 2300         	movs	r3, #0x0
 8000464: ebd0 0202    	rsbs	r2, r0, r2
 8000468: eb63 73e0    	sbc.w	r3, r3, r0, asr #31
 800046c: 9800         	ldr	r0, [sp]
 800046e: 4621         	mov	r1, r4
 8000470: ea4f 74e0    	asr.w	r4, r0, #0x1f
 8000474: ebb8 0000    	subs.w	r0, r8, r0
 8000478: eb61 0104    	sbc.w	r1, r1, r4
 800047c: e7e9         	b	0x8000452 <firmware_image+0x452> @ imm = #-0x2e
 800047e: f083 4300    	eor	r3, r3, #0x80000000
 8000482: e75b         	b	0x800033c <firmware_image+0x33c> @ imm = #-0x14a
 8000484: f081 4100    	eor	r1, r1, #0x80000000
 8000488: e758         	b	0x800033c <firmware_image+0x33c> @ imm = #-0x150
 800048a: e92d 4ffe    	push.w	{r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 800048e: ea81 0403    	eor.w	r4, r1, r3
 8000492: f004 4400    	and	r4, r4, #0x80000000
 8000496: f021 4100    	bic	r1, r1, #0x80000000
 800049a: 9400         	str	r4, [sp]
 800049c: f04f 0b00    	mov.w	r11, #0x0
 80004a0: f023 4300    	bic	r3, r3, #0x80000000
 80004a4: ea50 0401    	orrs.w	r4, r0, r1
 80004a8: d05e         	beq	0x8000568 <firmware_image+0x568> @ imm = #0xbc
 80004aa: ea52 0403    	orrs.w	r4, r2, r3
 80004ae: d05b         	beq	0x8000568 <firmware_image+0x568> @ imm = #0xb6
 80004b0: f3c3 540a    	ubfx	r4, r3, #0x14, #0xb
 80004b4: f3c1 550a    	ubfx	r5, r1, #0x14, #0xb
 80004b8: 442c         	add	r4, r5
 80004ba: f2a4 34f3    	subw	r4, r4, #0x3f3
 80004be: 9401         	str	r4, [sp, #0x4]
 80004c0: fba0 5402    	umull	r5, r4, r0, r2
 80004c4: f3c1 0113    	ubfx	r1, r1, #0x0, #0x14
 80004c8: f441 1180    	orr	r1, r1, #0x100000
 80004cc: f3c3 0313    	ubfx	r3, r3, #0x0, #0x14
 80004d0: f443 1380    	orr	r3, r3, #0x100000
 80004d4: fb01 4402    	mla	r4, r1, r2, r4
 80004d8: fb00 4e03    	mla	lr, r0, r3, r4
 80004dc: ea44 5481    	orr.w	r4, r4, r1, lsl #22
 80004e0: ea47 5783    	orr.w	r7, r7, r3, lsl #22
 80004e4: fba4 6807    	umull	r6, r8, r4, r7
 80004e8: 9502         	str	r5, [sp, #0x8]
 80004ea: 0a8d         	lsrs	r5, r1, #0xa
 80004ec: fb05 8507    	mla	r5, r5, r7, r8
 80004f0: ea4f 2c93    	lsr.w	r12, r3, #0xa
 80004f4: fb04 540c    	mla	r4, r4, r12, r5
 80004f8: 0527         	lsls	r7, r4, #0x14
 80004fa: 9d02         	ldr	r5, [sp, #0x8]
 80004fc: ea4f 5806    	lsl.w	r8, r6, #0x14
 8000500: ea47 3716    	orr.w	r7, r7, r6, lsr #12
 8000504: ebb5 0508    	subs.w	r5, r5, r8
 8000508: eb6e 0c07    	sbc.w	r12, lr, r7
 800050c: 0e87         	lsrs	r7, r0, #0x1a
 800050e: 0e92         	lsrs	r2, r2, #0x1a
 8000510: ea47 1781    	orr.w	r7, r7, r1, lsl #6
 8000514: ea42 1283    	orr.w	r2, r2, r3, lsl #6
 8000518: fba7 0102    	umull	r0, r1, r7, r2
 800051c: ebb6 010b    	subs.w	r1, r6, r11
 8000520: eb64 0400    	sbc.w	r4, r4, r0
 8000524: 0d2b         	lsrs	r3, r5, #0x14
 8000526: ea43 330c    	orr.w	r3, r3, r12, lsl #12
 800052a: 185e         	adds	r6, r3, r1
 800052c: eb44 501c    	adc.w	r0, r4, r12, lsr #20
 8000530: 46da         	mov	r10, r11
 8000532: 4651         	mov	r1, r10
 8000534: fbe7 0102    	umlal	r0, r1, r7, r2
 8000538: f3c5 0413    	ubfx	r4, r5, #0x0, #0x14
 800053c: ea4f 330b    	lsl.w	r3, r11, #0xc
 8000540: ea43 5314    	orr.w	r3, r3, r4, lsr #20
 8000544: ea4f 3204    	lsl.w	r2, r4, #0xc
 8000548: 9c01         	ldr	r4, [sp, #0x4]
 800054a: ea43 0306    	orr.w	r3, r3, r6
 800054e: f1a4 040c    	sub.w	r4, r4, #0xc
 8000552: 9402         	str	r4, [sp, #0x8]
 8000554: 9c00         	ldr	r4, [sp]
 8000556: e9cd b400    	strd	r11, r4, [sp]
 800055a: f000 f986    	bl	0x800086a <firmware_image+0x86a> @ imm = #0x30c
 800055e: b003         	add	sp, #0xc
 8000560: 2000         	movs	r0, #0x0
 8000562: 4601         	mov	r1, r0
 8000564: e7f9         	b	0x800055a <firmware_image+0x55a> @ imm = #-0xe
 8000566: e92d 4df0    	push.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800056a: ea81 0403    	eor.w	r4, r1, r3
 800056e: f004 4b00    	and	r11, r4, #0x80000000
 8000572: f021 4500    	bic	r5, r1, #0x80000000
 8000576: 4614         	mov	r4, r2
 8000578: f04f 0a00    	mov.w	r10, #0x0
 800057c: f023 4100    	bic	r1, r3, #0x80000000
 8000580: ea50 0205    	orrs.w	r2, r0, r5
 8000584: d020         	beq	0x80005c8 <firmware_image+0x5c8> @ imm = #0x40
 8000586: ea54 0201    	orrs.w	r2, r4, r1
 800058a: d01d         	beq	0x80005c8 <firmware_image+0x5c8> @ imm = #0x3a
 800058c: f3c5 570a    	ubfx	r7, r5, #0x14, #0xb
 8000590: 4602         	mov	r2, r0
 8000592: f3c5 0313    	ubfx	r3, r5, #0x0, #0x14
 8000596: f3c1 0013    	ubfx	r0, r1, #0x0, #0x14
 800059a: f3c1 560a    	ubfx	r6, r1, #0x14, #0xb
 800059e: f440 1580    	orr	r5, r0, #0x100000
 80005a2: f443 1380    	orr	r3, r3, #0x100000
 80005a6: eba7 0806    	sub.w	r8, r7, r6
 80005aa: 1b10         	subs	r0, r2, r4
 80005ac: 46d6         	mov	lr, r10
 80005ae: f208 38fd    	addw	r8, r8, #0x3fd
 80005b2: eb73 0005    	sbcs.w	r0, r3, r5
 80005b6: d302         	blo	0x80005be <firmware_image+0x5be> @ imm = #0x4
 80005b8: f108 0801    	add.w	r8, r8, #0x1
 80005bc: e001         	b	0x80005c2 <firmware_image+0x5c2> @ imm = #0x2
 80005be: 1892         	adds	r2, r2, r2
 80005c0: 415b         	adcs	r3, r3
 80005c2: f1b8 0f00    	cmp.w	r8, #0x0
 80005c6: da03         	bge	0x80005d0 <firmware_image+0x5d0> @ imm = #0x6
 80005c8: 2000         	movs	r0, #0x0
 80005ca: 4601         	mov	r1, r0
 80005cc: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80005d0: 2000         	movs	r0, #0x0
 80005d2: f44f 1180    	mov.w	r1, #0x100000
 80005d6: 4606         	mov	r6, r0
 80005d8: 4684         	mov	r12, r0
 80005da: e00e         	b	0x80005fa <firmware_image+0x5fa> @ imm = #0x1c
 80005dc: 1b17         	subs	r7, r2, r4
 80005de: eb73 0705    	sbcs.w	r7, r3, r5
 80005e2: d305         	blo	0x80005f0 <firmware_image+0x5f0> @ imm = #0xa
 80005e4: 1b12         	subs	r2, r2, r4
 80005e6: eb63 0305    	sbc.w	r3, r3, r5
 80005ea: 4306         	orrs	r6, r0
 80005ec: ea4c 0c01    	orr.w	r12, r12, r1
 80005f0: 0849         	lsrs	r1, r1, #0x1
 80005f2: ea4f 0030    	rrx	r0, r0
 80005f6: 1892         	adds	r2, r2, r2
 80005f8: 415b         	adcs	r3, r3
 80005fa: ea50 0701    	orrs.w	r7, r0, r1
 80005fe: d1ed         	bne	0x80005dc <firmware_image+0x5dc> @ imm = #-0x26
 8000600: ea52 0003    	orrs.w	r0, r2, r3
 8000604: d012         	beq	0x800062c <firmware_image+0x62c> @ imm = #0x24
 8000606: ea82 0004    	eor.w	r0, r2, r4
 800060a: ea83 0105    	eor.w	r1, r3, r5
 800060e: 4308         	orrs	r0, r1
 8000610: d005         	beq	0x800061e <firmware_image+0x61e> @ imm = #0xa
 8000612: 1b10         	subs	r0, r2, r4
 8000614: 41ab         	sbcs	r3, r5
 8000616: d206         	bhs	0x8000626 <firmware_image+0x626> @ imm = #0xc
 8000618: 2201         	movs	r2, #0x1
 800061a: 2300         	movs	r3, #0x0
 800061c: e006         	b	0x800062c <firmware_image+0x62c> @ imm = #0xc
 800061e: 2200         	movs	r2, #0x0
 8000620: f04f 4300    	mov.w	r3, #0x80000000
 8000624: e002         	b	0x800062c <firmware_image+0x62c> @ imm = #0x4
 8000626: f06f 0201    	mvn	r2, #0x1
 800062a: 1053         	asrs	r3, r2, #0x1
 800062c: eb1a 0006    	adds.w	r0, r10, r6
 8000630: eb4c 5108    	adc.w	r1, r12, r8, lsl #20
 8000634: eb10 000a    	adds.w	r0, r0, r10
 8000638: eb41 010b    	adc.w	r1, r1, r11
 800063c: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8000640: f000 b902    	b.w	0x8000848 <firmware_image+0x848> @ imm = #0x204
 8000644: 0fc1         	lsrs	r1, r0, #0x1f
 8000646: ea80 70e0    	eor.w	r0, r0, r0, asr #31
 800064a: 4408         	add	r0, r1
 800064c: 07ca         	lsls	r2, r1, #0x1f
 800064e: 2396         	movs	r3, #0x96
 8000650: 2100         	movs	r1, #0x0
 8000652: f000 b8cb    	b.w	0x80007ec <firmware_image+0x7ec> @ imm = #0x196
 8000656: b50e         	push	{r1, r2, r3, lr}
 8000658: 0fc1         	lsrs	r1, r0, #0x1f
 800065a: ea80 70e0    	eor.w	r0, r0, r0, asr #31
 800065e: 4408         	add	r0, r1
 8000660: 07ca         	lsls	r2, r1, #0x1f
 8000662: 2100         	movs	r1, #0x0
 8000664: f240 4333    	movw	r3, #0x433
 8000668: e88d 000e    	stm.w	sp, {r1, r2, r3}
 800066c: 460a         	mov	r2, r1
 800066e: 460b         	mov	r3, r1
 8000670: f000 f8f9    	bl	0x8000866 <firmware_image+0x866> @ imm = #0x1f2
 8000674: b003         	add	sp, #0xc
 8000676: bd00         	pop	{pc}
 8000678: f000 4200    	and	r2, r0, #0x80000000
 800067c: f020 4000    	bic	r0, r0, #0x80000000
 8000680: 0dc1         	lsrs	r1, r0, #0x17
 8000682: f3c0 0016    	ubfx	r0, r0, #0x0, #0x17
 8000686: f440 0000    	orr	r0, r0, #0x800000
 800068a: 297f         	cmp	r1, #0x7f
 800068c: da01         	bge	0x8000692 <firmware_image+0x692> @ imm = #0x2
 800068e: 2000         	movs	r0, #0x0
 8000690: 4770         	bx	lr
 8000692: 2996         	cmp	r1, #0x96
 8000694: dc03         	bgt	0x800069e <firmware_image+0x69e> @ imm = #0x6
 8000696: f1c1 0196    	rsb.w	r1, r1, #0x96
 800069a: 40c8         	lsrs	r0, r1
 800069c: e001         	b	0x80006a2 <firmware_image+0x6a2> @ imm = #0x2
 800069e: 3996         	subs	r1, #0x96
 80006a0: 4088         	lsls	r0, r1
 80006a2: 2a00         	cmp	r2, #0x0
 80006a4: d0f4         	beq	0x8000690 <firmware_image+0x690> @ imm = #-0x18
 80006a6: 4240         	rsbs	r0, r0, #0
 80006a8: 4770         	bx	lr
 80006aa: b570         	push	{r4, r5, r6, lr}
 80006ac: f3c1 520a    	ubfx	r2, r1, #0x14, #0xb
 80006b0: f001 4500    	and	r5, r1, #0x80000000
 80006b4: 2400         	movs	r4, #0x0
 80006b6: f3c1 0113    	ubfx	r1, r1, #0x0, #0x14
 80006ba: f240 33ff    	movw	r3, #0x3ff
 80006be: f441 1180    	orr	r1, r1, #0x100000
 80006c2: 429a         	cmp	r2, r3
 80006c4: da01         	bge	0x80006ca <firmware_image+0x6ca> @ imm = #0x2
 80006c6: 2000         	movs	r0, #0x0
 80006c8: bd70         	pop	{r4, r5, r6, pc}
 80006ca: f240 4333    	movw	r3, #0x433
 80006ce: 429a         	cmp	r2, r3
 80006d0: f2a2 4233    	subw	r2, r2, #0x433
 80006d4: dc03         	bgt	0x80006de <firmware_image+0x6de> @ imm = #0x6
 80006d6: 4252         	rsbs	r2, r2, #0
 80006d8: f000 f85d    	bl	0x8000796 <firmware_image+0x796> @ imm = #0xba
 80006dc: e000         	b	0x80006e0 <firmware_image+0x6e0> @ imm = #0x0
 80006de: 4090         	lsls	r0, r2
 80006e0: 432c         	orrs	r4, r5
 80006e2: d0f1         	beq	0x80006c8 <firmware_image+0x6c8> @ imm = #-0x1e
 80006e4: 4240         	rsbs	r0, r0, #0
 80006e6: bd70         	pop	{r4, r5, r6, pc}
 80006e8: f000 4200    	and	r2, r0, #0x80000000
 80006ec: f030 4000    	bics	r0, r0, #0x80000000
 80006f0: d00a         	beq	0x8000708 <firmware_image+0x708> @ imm = #0x14
 80006f2: 0dc1         	lsrs	r1, r0, #0x17
 80006f4: f501 7160    	add.w	r1, r1, #0x380
 80006f8: f3c0 0016    	ubfx	r0, r0, #0x0, #0x17
 80006fc: ea42 5101    	orr.w	r1, r2, r1, lsl #20
 8000700: 08c2         	lsrs	r2, r0, #0x3
 8000702: 0740         	lsls	r0, r0, #0x1d
 8000704: 4311         	orrs	r1, r2
 8000706: 4770         	bx	lr
 8000708: 2000         	movs	r0, #0x0
 800070a: 4601         	mov	r1, r0
 800070c: 4770         	bx	lr
 800070e: 0000         	movs	r0, r0
 8000710: b530         	push	{r4, r5, lr}
 8000712: 1e04         	subs	r4, r0, #0x0
 8000714: f171 0400    	sbcs	r4, r1, #0x0
 8000718: db04         	blt	0x8000724 <firmware_image+0x724> @ imm = #0x8
 800071a: f04f 4400    	mov.w	r4, #0x80000000
 800071e: 4240         	rsbs	r0, r0, #0
 8000720: eb64 0101    	sbc.w	r1, r4, r1
 8000724: 1e14         	subs	r4, r2, #0x0
 8000726: f173 0400    	sbcs	r4, r3, #0x0
 800072a: db05         	blt	0x8000738 <firmware_image+0x738> @ imm = #0xa
 800072c: 461c         	mov	r4, r3
 800072e: f04f 4300    	mov.w	r3, #0x80000000
 8000732: 4252         	rsbs	r2, r2, #0
 8000734: eb63 0304    	sbc.w	r3, r3, r4
 8000738: 428b         	cmp	r3, r1
 800073a: bf08         	it	eq
 800073c: 4282         	cmpeq	r2, r0
 800073e: bd30         	pop	{r4, r5, pc}
 8000740: f001 4300    	and	r3, r1, #0x80000000
 8000744: b430         	push	{r4, r5}
 8000746: f021 4100    	bic	r1, r1, #0x80000000
 800074a: ea50 0201    	orrs.w	r2, r0, r1
 800074e: d006         	beq	0x800075e <firmware_image+0x75e> @ imm = #0xc
 8000750: 0d0a         	lsrs	r2, r1, #0x14
 8000752: f5a2 7260    	sub.w	r2, r2, #0x380
 8000756: f3c1 0113    	ubfx	r1, r1, #0x0, #0x14
 800075a: 2a00         	cmp	r2, #0x0
 800075c: dc02         	bgt	0x8000764 <firmware_image+0x764> @ imm = #0x4
 800075e: bc30         	pop	{r4, r5}
 8000760: 2000         	movs	r0, #0x0
 8000762: 4770         	bx	lr
 8000764: 0f44         	lsrs	r4, r0, #0x1d
 8000766: ea44 04c1    	orr.w	r4, r4, r1, lsl #3
 800076a: 00c1         	lsls	r1, r0, #0x3
 800076c: 18e0         	adds	r0, r4, r3
 800076e: bc30         	pop	{r4, r5}
 8000770: eb00 50c2    	add.w	r0, r0, r2, lsl #23
 8000774: f000 b831    	b.w	0x80007da <firmware_image+0x7da> @ imm = #0x62
 8000778: 2a20         	cmp	r2, #0x20
 800077a: db04         	blt	0x8000786 <firmware_image+0x786> @ imm = #0x8
 800077c: 3a20         	subs	r2, #0x20
 800077e: fa00 f102    	lsl.w	r1, r0, r2
 8000782: 2000         	movs	r0, #0x0
 8000784: 4770         	bx	lr
 8000786: 4091         	lsls	r1, r2
 8000788: fa20 f303    	lsr.w	r3, r0, r3
 800078c: 4319         	orrs	r1, r3
 800078e: 4090         	lsls	r0, r2
 8000790: 4770         	bx	lr
 8000792: 2a20         	cmp	r2, #0x20
 8000794: db04         	blt	0x80007a0 <firmware_image+0x7a0> @ imm = #0x8
 8000796: 3a20         	subs	r2, #0x20
 8000798: fa21 f002    	lsr.w	r0, r1, r2
 800079c: 2100         	movs	r1, #0x0
 800079e: 4770         	bx	lr
 80007a0: fa21 f302    	lsr.w	r3, r1, r2
 80007a4: 40d0         	lsrs	r0, r2
 80007a6: f1c2 0220    	rsb.w	r2, r2, #0x20
 80007aa: 4091         	lsls	r1, r2
 80007ac: 4308         	orrs	r0, r1
 80007ae: 4619         	mov	r1, r3
 80007b0: 4770         	bx	lr
 80007b2: 2a20         	cmp	r2, #0x20
 80007b4: db06         	blt	0x80007c4 <firmware_image+0x7c4> @ imm = #0xc
 80007b6: 17cb         	asrs	r3, r1, #0x1f
 80007b8: 3a20         	subs	r2, #0x20
 80007ba: fa41 f002    	asr.w	r0, r1, r2
 80007be: ea43 73e0    	orr.w	r3, r3, r0, asr #31
 80007c2: e006         	b	0x80007d2 <firmware_image+0x7d2> @ imm = #0xc
 80007c4: fa41 f302    	asr.w	r3, r1, r2
 80007c8: 40d0         	lsrs	r0, r2
 80007ca: f1c2 0220    	rsb.w	r2, r2, #0x20
 80007ce: 4091         	lsls	r1, r2
 80007d0: 4308         	orrs	r0, r1
 80007d2: 4619         	mov	r1, r3
 80007d4: 4770         	bx	lr
 80007d6: 2900         	cmp	r1, #0x0
 80007d8: bfa8         	it	ge
 80007da: 4770         	bxge	lr
 80007dc: 1c40         	adds	r0, r0, #0x1
 80007de: 0049         	lsls	r1, r1, #0x1
 80007e0: bf08         	it	eq
 80007e2: f020 0001    	biceq	r0, r0, #0x1
 80007e6: 4770         	bx	lr
 80007e8: b410         	push	{r4}
 80007ea: fab0 fc80    	clz	r12, r0
 80007ee: fa00 f00c    	lsl.w	r0, r0, r12
 80007f2: ea50 0401    	orrs.w	r4, r0, r1
 80007f6: bf04         	itt	eq
 80007f8: bc10         	popeq	{r4}
 80007fa: 4770         	bxeq	lr
 80007fc: b149         	cbz	r1, 0x8000812 <firmware_image+0x812> @ imm = #0x12
 80007fe: f1cc 0401    	rsb.w	r4, r12, #0x1
 8000802: bf04         	itt	eq
 8000804: bc10         	popeq	{r4}
 8000806: 4770         	bxeq	lr
 8000808: b149         	cbz	r1, 0x800081e <firmware_image+0x81e> @ imm = #0x12
 800080a: f1cc 0420    	rsb.w	r4, r12, #0x20
 800080e: fa21 f404    	lsr.w	r4, r1, r4
 8000812: fa11 f10c    	lsls.w	r1, r1, r12
 8000816: bf18         	it	ne
 8000818: 2101         	movne	r1, #0x1
 800081a: 4321         	orrs	r1, r4
 800081c: 4308         	orrs	r0, r1
 800081e: eba3 010c    	sub.w	r1, r3, r12
 8000822: 1dcb         	adds	r3, r1, #0x7
 8000824: ea4f 6100    	lsl.w	r1, r0, #0x18
 8000828: ea4f 2010    	lsr.w	r0, r0, #0x8
 800082c: bf42         	ittt	mi
 800082e: 2000         	movmi	r0, #0x0
 8000830: bc10         	popmi	{r4}
 8000832: 4770         	bxmi	lr
 8000834: eb00 50c3    	add.w	r0, r0, r3, lsl #23
 8000838: 4410         	add	r0, r2
 800083a: 2900         	cmp	r1, #0x0
 800083c: bfa4         	itt	ge
 800083e: bc10         	popge	{r4}
 8000840: 4770         	bxge	lr
 8000842: 1c40         	adds	r0, r0, #0x1
 8000844: 0049         	lsls	r1, r1, #0x1
 8000846: bf08         	it	eq
 8000848: f020 0001    	biceq	r0, r0, #0x1
 800084c: bc10         	pop	{r4}
 800084e: 4770         	bx	lr
 8000850: b510         	push	{r4, lr}
 8000852: 1e14         	subs	r4, r2, #0x0
 8000854: f173 0400    	sbcs	r4, r3, #0x0
 8000858: da08         	bge	0x800086c <firmware_image+0x86c> @ imm = #0x10
 800085a: 1c40         	adds	r0, r0, #0x1
 800085c: f141 0100    	adc	r1, r1, #0x0
 8000860: 1892         	adds	r2, r2, r2
 8000862: 415b         	adcs	r3, r3
 8000864: 431a         	orrs	r2, r3
 8000866: d101         	bne	0x800086c <firmware_image+0x86c> @ imm = #0x2
 8000868: f020 0001    	bic	r0, r0, #0x1
 800086c: bd10         	pop	{r4, pc}
 800086e: e92d 4df0    	push.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8000872: 4692         	mov	r10, r2
 8000874: 469b         	mov	r11, r3
 8000876: b111         	cbz	r1, 0x800087e <firmware_image+0x87e> @ imm = #0x4
 8000878: fab1 f281    	clz	r2, r1
 800087c: e002         	b	0x8000884 <firmware_image+0x884> @ imm = #0x4
 800087e: fab0 f280    	clz	r2, r0
 8000882: 3220         	adds	r2, #0x20
 8000884: 4690         	mov	r8, r2
 8000886: f7ff ff7b    	bl	0x8000780 <firmware_image+0x780> @ imm = #-0x10a
 800088a: 4604         	mov	r4, r0
 800088c: 460f         	mov	r7, r1
 800088e: ea40 000a    	orr.w	r0, r0, r10
 8000892: ea41 010b    	orr.w	r1, r1, r11
 8000896: 4653         	mov	r3, r10
 8000898: 465a         	mov	r2, r11
 800089a: 4308         	orrs	r0, r1
 800089c: d013         	beq	0x80008c6 <firmware_image+0x8c6> @ imm = #0x26
 800089e: 4611         	mov	r1, r2
 80008a0: ea53 0001    	orrs.w	r0, r3, r1
 80008a4: d019         	beq	0x80008da <firmware_image+0x8da> @ imm = #0x32
 80008a6: f1c8 0240    	rsb.w	r2, r8, #0x40
 80008aa: 4650         	mov	r0, r10
 80008ac: f7ff ff77    	bl	0x800079e <firmware_image+0x79e> @ imm = #-0x112
 80008b0: 4605         	mov	r5, r0
 80008b2: 460e         	mov	r6, r1
 80008b4: 4650         	mov	r0, r10
 80008b6: 4659         	mov	r1, r11
 80008b8: 4642         	mov	r2, r8
 80008ba: f7ff ff61    	bl	0x8000780 <firmware_image+0x780> @ imm = #-0x13e
 80008be: 4308         	orrs	r0, r1
 80008c0: d005         	beq	0x80008ce <firmware_image+0x8ce> @ imm = #0xa
 80008c2: 2001         	movs	r0, #0x1
 80008c4: e004         	b	0x80008d0 <firmware_image+0x8d0> @ imm = #0x8
 80008c6: 4620         	mov	r0, r4
 80008c8: 4639         	mov	r1, r7
 80008ca: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80008ce: 2000         	movs	r0, #0x0
 80008d0: 4305         	orrs	r5, r0
 80008d2: ea46 76e0    	orr.w	r6, r6, r0, asr #31
 80008d6: 432c         	orrs	r4, r5
 80008d8: 4337         	orrs	r7, r6
 80008da: 980a         	ldr	r0, [sp, #0x28]
 80008dc: 0563         	lsls	r3, r4, #0x15
 80008de: 0ae4         	lsrs	r4, r4, #0xb
 80008e0: eba0 0008    	sub.w	r0, r0, r8
 80008e4: 2200         	movs	r2, #0x0
 80008e6: 0afd         	lsrs	r5, r7, #0xb
 80008e8: ea44 5447    	orr.w	r4, r4, r7, lsl #21
 80008ec: 300a         	adds	r0, #0xa
 80008ee: d502         	bpl	0x80008f6 <firmware_image+0x8f6> @ imm = #0x4
 80008f0: 2000         	movs	r0, #0x0
 80008f2: 4601         	mov	r1, r0
 80008f4: e7e9         	b	0x80008ca <firmware_image+0x8ca> @ imm = #-0x2e
 80008f6: 0501         	lsls	r1, r0, #0x14
 80008f8: 1910         	adds	r0, r2, r4
 80008fa: 4169         	adcs	r1, r5
 80008fc: e9dd 4508    	ldrd	r4, r5, [sp, #32]
 8000900: 1900         	adds	r0, r0, r4
 8000902: 4169         	adcs	r1, r5
 8000904: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8000908: e7a2         	b	0x8000850 <firmware_image+0x850> @ imm = #-0xbc
 800090a: b570         	push	{r4, r5, r6, lr}
 800090c: f021 4300    	bic	r3, r1, #0x80000000
 8000910: 4303         	orrs	r3, r0
 8000912: d00c         	beq	0x800092e <firmware_image+0x92e> @ imm = #0x18
 8000914: f3c1 550a    	ubfx	r5, r1, #0x14, #0xb
 8000918: 2400         	movs	r4, #0x0
 800091a: ebd5 0504    	rsbs	r5, r5, r4
 800091e: eb64 0304    	sbc.w	r3, r4, r4
 8000922: 17d6         	asrs	r6, r2, #0x1f
 8000924: 1aad         	subs	r5, r5, r2
 8000926: 41b3         	sbcs	r3, r6
 8000928: db02         	blt	0x8000930 <firmware_image+0x930> @ imm = #0x4
 800092a: 2000         	movs	r0, #0x0
 800092c: 4601         	mov	r1, r0
 800092e: bd70         	pop	{r4, r5, r6, pc}
 8000930: 1820         	adds	r0, r4, r0
 8000932: eb41 5102    	adc.w	r1, r1, r2, lsl #20
 8000936: bd70         	pop	{r4, r5, r6, pc}
 8000938: e92d 4df0    	push.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800093c: 2300         	movs	r3, #0x0
 800093e: 461a         	mov	r2, r3
 8000940: 1a1b         	subs	r3, r3, r0
 8000942: 418a         	sbcs	r2, r1
 8000944: db03         	blt	0x800094e <firmware_image+0x94e> @ imm = #0x6
 8000946: 2000         	movs	r0, #0x0
 8000948: 4601         	mov	r1, r0
 800094a: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 800094e: f3c1 520a    	ubfx	r2, r1, #0x14, #0xb
 8000952: f3c1 0113    	ubfx	r1, r1, #0x0, #0x14
 8000956: f441 1580    	orr	r5, r1, #0x100000
 800095a: f04f 0b00    	mov.w	r11, #0x0
 800095e: 07d1         	lsls	r1, r2, #0x1f
 8000960: d102         	bne	0x8000968 <firmware_image+0x968> @ imm = #0x4
 8000962: 1800         	adds	r0, r0, r0
 8000964: 416d         	adcs	r5, r5
 8000966: 1e52         	subs	r2, r2, #0x1
 8000968: 2700         	movs	r7, #0x0
 800096a: 4604         	mov	r4, r0
 800096c: f240 11ff    	movw	r1, #0x1ff
 8000970: 4638         	mov	r0, r7
 8000972: eb01 0a62    	add.w	r10, r1, r2, asr #1
 8000976: 463e         	mov	r6, r7
 8000978: 4680         	mov	r8, r0
 800097a: 4602         	mov	r2, r0
 800097c: 2000         	movs	r0, #0x0
 800097e: f44f 1180    	mov.w	r1, #0x100000
 8000982: f7ff ff0c    	bl	0x800079e <firmware_image+0x79e> @ imm = #-0x1e8
 8000986: 19c2         	adds	r2, r0, r7
 8000988: 4171         	adcs	r1, r6
 800098a: 18bb         	adds	r3, r7, r2
 800098c: eb46 0001    	adc.w	r0, r6, r1
 8000990: ebb4 0c03    	subs.w	r12, r4, r3
 8000994: eb75 0c00    	sbcs.w	r12, r5, r0
 8000998: d304         	blo	0x80009a4 <firmware_image+0x9a4> @ imm = #0x8
 800099a: 1ae4         	subs	r4, r4, r3
 800099c: eb65 0500    	sbc.w	r5, r5, r0
 80009a0: 4617         	mov	r7, r2
 80009a2: 460e         	mov	r6, r1
 80009a4: 1924         	adds	r4, r4, r4
 80009a6: f108 0001    	add.w	r0, r8, #0x1
 80009aa: 416d         	adcs	r5, r5
 80009ac: 4680         	mov	r8, r0
 80009ae: 2834         	cmp	r0, #0x34
 80009b0: dde3         	ble	0x800097a <firmware_image+0x97a> @ imm = #-0x3a
 80009b2: 19f9         	adds	r1, r7, r7
 80009b4: eb46 0006    	adc.w	r0, r6, r6
 80009b8: 1b09         	subs	r1, r1, r4
 80009ba: 41a8         	sbcs	r0, r5
 80009bc: d203         	bhs	0x80009c6 <firmware_image+0x9c6> @ imm = #0x6
 80009be: f04f 32ff    	mov.w	r2, #0xffffffff
 80009c2: 4613         	mov	r3, r2
 80009c4: e001         	b	0x80009ca <firmware_image+0x9ca> @ imm = #0x2
 80009c6: 2200         	movs	r2, #0x0
 80009c8: 4613         	mov	r3, r2
 80009ca: eb1b 0007    	adds.w	r0, r11, r7
 80009ce: eb46 510a    	adc.w	r1, r6, r10, lsl #20
 80009d2: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 80009d6: f7ff bf3b    	b.w	0x8000850 <firmware_image+0x850> @ imm = #-0x18a
 80009da: 0000         	movs	r0, r0
 80009dc: 4c06         	ldr	r4, [pc, #0x18]         @ 0x80009f8 <firmware_image+0x9f8>
 80009de: 4d07         	ldr	r5, [pc, #0x1c]         @ 0x80009fc <firmware_image+0x9fc>
 80009e0: e006         	b	0x80009f0 <firmware_image+0x9f0> @ imm = #0xc
 80009e2: 68e0         	ldr	r0, [r4, #0xc]
 80009e4: f040 0301    	orr	r3, r0, #0x1
 80009e8: e894 0007    	ldm.w	r4, {r0, r1, r2}
 80009ec: 4798         	blx	r3
 80009ee: 3410         	adds	r4, #0x10
 80009f0: 42ac         	cmp	r4, r5
 80009f2: d3f6         	blo	0x80009e2 <firmware_image+0x9e2> @ imm = #-0x14
 80009f4: f7ff fbb5    	bl	0x8000162 <firmware_image+0x162> @ imm = #-0x896
 80009f8: 7698         	strb	r0, [r3, #0x1a]
 80009fa: 0800         	lsrs	r0, r0, #0x20
 80009fc: 76b8         	strb	r0, [r7, #0x1a]
 80009fe: 0800         	lsrs	r0, r0, #0x20
 8000a00: b570         	push	{r4, r5, r6, lr}
 8000a02: 188c         	adds	r4, r1, r2
 8000a04: f810 5b01    	ldrb	r5, [r0], #1
 8000a08: f015 0307    	ands	r3, r5, #0x7
 8000a0c: d101         	bne	0x8000a12 <firmware_image+0xa12> @ imm = #0x2
 8000a0e: f810 3b01    	ldrb	r3, [r0], #1
 8000a12: 112a         	asrs	r2, r5, #0x4
 8000a14: d106         	bne	0x8000a24 <firmware_image+0xa24> @ imm = #0xc
 8000a16: f810 2b01    	ldrb	r2, [r0], #1
 8000a1a: e003         	b	0x8000a24 <firmware_image+0xa24> @ imm = #0x6
 8000a1c: f810 6b01    	ldrb	r6, [r0], #1
 8000a20: f801 6b01    	strb	r6, [r1], #1
 8000a24: 1e5b         	subs	r3, r3, #0x1
 8000a26: d1f9         	bne	0x8000a1c <firmware_image+0xa1c> @ imm = #-0xe
 8000a28: 072b         	lsls	r3, r5, #0x1c
 8000a2a: d405         	bmi	0x8000a38 <firmware_image+0xa38> @ imm = #0xa
 8000a2c: 2300         	movs	r3, #0x0
 8000a2e: 1e52         	subs	r2, r2, #0x1
 8000a30: d40d         	bmi	0x8000a4e <firmware_image+0xa4e> @ imm = #0x1a
 8000a32: f801 3b01    	strb	r3, [r1], #1
 8000a36: e7fa         	b	0x8000a2e <firmware_image+0xa2e> @ imm = #-0xc
 8000a38: f810 3b01    	ldrb	r3, [r0], #1
 8000a3c: 1acb         	subs	r3, r1, r3
 8000a3e: 1c92         	adds	r2, r2, #0x2
 8000a40: e003         	b	0x8000a4a <firmware_image+0xa4a> @ imm = #0x6
 8000a42: f813 5b01    	ldrb	r5, [r3], #1
 8000a46: f801 5b01    	strb	r5, [r1], #1
 8000a4a: 1e52         	subs	r2, r2, #0x1
 8000a4c: d5f9         	bpl	0x8000a42 <firmware_image+0xa42> @ imm = #-0xe
 8000a4e: 42a1         	cmp	r1, r4
 8000a50: d3d8         	blo	0x8000a04 <firmware_image+0xa04> @ imm = #-0x50
 8000a52: 2000         	movs	r0, #0x0
 8000a54: bd70         	pop	{r4, r5, r6, pc}
 8000a56: 0000         	movs	r0, r0
 8000a58: b510         	push	{r4, lr}
 8000a5a: 4821         	ldr	r0, [pc, #0x84]         @ 0x8000ae0 <firmware_image+0xae0>
 8000a5c: 6801         	ldr	r1, [r0]
 8000a5e: 0749         	lsls	r1, r1, #0x1d
 8000a60: d53d         	bpl	0x8000ade <firmware_image+0xade> @ imm = #0x7a
 8000a62: f06f 0104    	mvn	r1, #0x4
 8000a66: 6001         	str	r1, [r0]
 8000a68: 201c         	movs	r0, #0x1c
 8000a6a: f000 f8a7    	bl	0x8000bbc <firmware_image+0xbbc> @ imm = #0x14e
 8000a6e: 491d         	ldr	r1, [pc, #0x74]         @ 0x8000ae4 <firmware_image+0xae4>
 8000a70: 8008         	strh	r0, [r1]
 8000a72: 2020         	movs	r0, #0x20
 8000a74: f000 f8a2    	bl	0x8000bbc <firmware_image+0xbbc> @ imm = #0x144
 8000a78: 491b         	ldr	r1, [pc, #0x6c]         @ 0x8000ae8 <firmware_image+0xae8>
 8000a7a: 8008         	strh	r0, [r1]
 8000a7c: 4c1b         	ldr	r4, [pc, #0x6c]         @ 0x8000aec <firmware_image+0xaec>
 8000a7e: 7820         	ldrb	r0, [r4]
 8000a80: 2802         	cmp	r0, #0x2
 8000a82: d002         	beq	0x8000a8a <firmware_image+0xa8a> @ imm = #0x4
 8000a84: 7820         	ldrb	r0, [r4]
 8000a86: 2803         	cmp	r0, #0x3
 8000a88: d105         	bne	0x8000a96 <firmware_image+0xa96> @ imm = #0xa
 8000a8a: 4815         	ldr	r0, [pc, #0x54]         @ 0x8000ae0 <firmware_image+0xae0>
 8000a8c: 3008         	adds	r0, #0x8
 8000a8e: 6801         	ldr	r1, [r0]
 8000a90: f421 4100    	bic	r1, r1, #0x8000
 8000a94: 6001         	str	r1, [r0]
 8000a96: f001 feb7    	bl	0x8002808 <firmware_image+0x2808> @ imm = #0x1d6e
 8000a9a: 4915         	ldr	r1, [pc, #0x54]         @ 0x8000af0 <firmware_image+0xaf0>
 8000a9c: 8908         	ldrh	r0, [r1, #0x8]
 8000a9e: 1c40         	adds	r0, r0, #0x1
 8000aa0: 8108         	strh	r0, [r1, #0x8]
 8000aa2: f000 fe13    	bl	0x80016cc <firmware_image+0x16cc> @ imm = #0xc26
 8000aa6: f000 fded    	bl	0x8001684 <firmware_image+0x1684> @ imm = #0xbda
 8000aaa: 7820         	ldrb	r0, [r4]
 8000aac: 2802         	cmp	r0, #0x2
 8000aae: d007         	beq	0x8000ac0 <firmware_image+0xac0> @ imm = #0xe
 8000ab0: 2803         	cmp	r0, #0x3
 8000ab2: d002         	beq	0x8000aba <firmware_image+0xaba> @ imm = #0x4
 8000ab4: 2804         	cmp	r0, #0x4
 8000ab6: d10a         	bne	0x8000ace <firmware_image+0xace> @ imm = #0x14
 8000ab8: e005         	b	0x8000ac6 <firmware_image+0xac6> @ imm = #0xa
 8000aba: f001 fd37    	bl	0x800252c <firmware_image+0x252c> @ imm = #0x1a6e
 8000abe: e006         	b	0x8000ace <firmware_image+0xace> @ imm = #0xc
 8000ac0: 2003         	movs	r0, #0x3
 8000ac2: 7020         	strb	r0, [r4]
 8000ac4: e003         	b	0x8000ace <firmware_image+0xace> @ imm = #0x6
 8000ac6: 2100         	movs	r1, #0x0
 8000ac8: 480a         	ldr	r0, [pc, #0x28]         @ 0x8000af4 <firmware_image+0xaf4>
 8000aca: f004 fd89    	bl	0x80055e0 <firmware_image+0x55e0> @ imm = #0x4b12
 8000ace: 480a         	ldr	r0, [pc, #0x28]         @ 0x8000af8 <firmware_image+0xaf8>
 8000ad0: 7800         	ldrb	r0, [r0]
 8000ad2: 2800         	cmp	r0, #0x0
 8000ad4: d103         	bne	0x8000ade <firmware_image+0xade> @ imm = #0x6
 8000ad6: e8bd 4010    	pop.w	{r4, lr}
 8000ada: f001 bbd9    	b.w	0x8002290 <firmware_image+0x2290> @ imm = #0x17b2
 8000ade: bd10         	pop	{r4, pc}
 8000ae0: 2400         	movs	r4, #0x0
 8000ae2: 4001         	ands	r1, r0
 8000ae4: 0266         	lsls	r6, r4, #0x9
 8000ae6: 2000         	movs	r0, #0x0
 8000ae8: 0264         	lsls	r4, r4, #0x9
 8000aea: 2000         	movs	r0, #0x0
 8000aec: 0260         	lsls	r0, r4, #0x9
 8000aee: 2000         	movs	r0, #0x0
 8000af0: 0298         	lsls	r0, r3, #0xa
 8000af2: 2000         	movs	r0, #0x0
 8000af4: 2c00         	cmp	r4, #0x0
 8000af6: 4001         	ands	r1, r0
 8000af8: 021e         	lsls	r6, r3, #0x8
 8000afa: 2000         	movs	r0, #0x0
 8000afc: 4807         	ldr	r0, [pc, #0x1c]         @ 0x8000b1c <firmware_image+0xb1c>
 8000afe: 6801         	ldr	r1, [r0]
 8000b00: f041 0108    	orr	r1, r1, #0x8
 8000b04: 6001         	str	r1, [r0]
 8000b06: 6801         	ldr	r1, [r0]
 8000b08: 0709         	lsls	r1, r1, #0x1c
 8000b0a: d4fc         	bmi	0x8000b06 <firmware_image+0xb06> @ imm = #-0x8
 8000b0c: 6801         	ldr	r1, [r0]
 8000b0e: f041 0104    	orr	r1, r1, #0x4
 8000b12: 6001         	str	r1, [r0]
 8000b14: 6801         	ldr	r1, [r0]
 8000b16: 0749         	lsls	r1, r1, #0x1d
 8000b18: d4fc         	bmi	0x8000b14 <firmware_image+0xb14> @ imm = #-0x8
 8000b1a: 4770         	bx	lr
 8000b1c: 2408         	movs	r4, #0x8
 8000b1e: 4001         	ands	r1, r0
 8000b20: 4901         	ldr	r1, [pc, #0x4]          @ 0x8000b28 <firmware_image+0xb28>
 8000b22: 43c0         	mvns	r0, r0
 8000b24: 6008         	str	r0, [r1]
 8000b26: 4770         	bx	lr
 8000b28: 2400         	movs	r4, #0x0
 8000b2a: 4001         	ands	r1, r0
 8000b2c: b570         	push	{r4, r5, r6, lr}
 8000b2e: 4604         	mov	r4, r0
 8000b30: 2101         	movs	r1, #0x1
 8000b32: 024d         	lsls	r5, r1, #0x9
 8000b34: 4628         	mov	r0, r5
 8000b36: f003 fc59    	bl	0x80043ec <firmware_image+0x43ec> @ imm = #0x38b2
 8000b3a: 2100         	movs	r1, #0x0
 8000b3c: 4628         	mov	r0, r5
 8000b3e: f003 fc55    	bl	0x80043ec <firmware_image+0x43ec> @ imm = #0x38aa
 8000b42: 2000         	movs	r0, #0x0
 8000b44: 7320         	strb	r0, [r4, #0xc]
 8000b46: 7360         	strb	r0, [r4, #0xd]
 8000b48: 6020         	str	r0, [r4]
 8000b4a: 60a0         	str	r0, [r4, #0x8]
 8000b4c: 2001         	movs	r0, #0x1
 8000b4e: 7120         	strb	r0, [r4, #0x4]
 8000b50: bd70         	pop	{r4, r5, r6, pc}
 8000b52: 0000         	movs	r0, r0
 8000b54: 4906         	ldr	r1, [pc, #0x18]         @ 0x8000b70 <firmware_image+0xb70>
 8000b56: 2800         	cmp	r0, #0x0
 8000b58: d004         	beq	0x8000b64 <firmware_image+0xb64> @ imm = #0x8
 8000b5a: 6808         	ldr	r0, [r1]
 8000b5c: f040 0001    	orr	r0, r0, #0x1
 8000b60: 6008         	str	r0, [r1]
 8000b62: 4770         	bx	lr
 8000b64: 6808         	ldr	r0, [r1]
 8000b66: f020 0001    	bic	r0, r0, #0x1
 8000b6a: 6008         	str	r0, [r1]
 8000b6c: 4770         	bx	lr
 8000b6e: 0000         	movs	r0, r0
 8000b70: 2408         	movs	r4, #0x8
 8000b72: 4001         	ands	r1, r0
 8000b74: 4a03         	ldr	r2, [pc, #0xc]          @ 0x8000b84 <firmware_image+0xb84>
 8000b76: 6811         	ldr	r1, [r2]
 8000b78: f421 41e0    	bic	r1, r1, #0x7000
 8000b7c: 4301         	orrs	r1, r0
 8000b7e: 6011         	str	r1, [r2]
 8000b80: 4770         	bx	lr
 8000b82: 0000         	movs	r0, r0
 8000b84: 2408         	movs	r4, #0x8
 8000b86: 4001         	ands	r1, r0
 8000b88: 4906         	ldr	r1, [pc, #0x18]         @ 0x8000ba4 <firmware_image+0xba4>
 8000b8a: 2800         	cmp	r0, #0x0
 8000b8c: d004         	beq	0x8000b98 <firmware_image+0xb98> @ imm = #0x8
 8000b8e: 6808         	ldr	r0, [r1]
 8000b90: f440 4000    	orr	r0, r0, #0x8000
 8000b94: 6008         	str	r0, [r1]
 8000b96: 4770         	bx	lr
 8000b98: 6808         	ldr	r0, [r1]
 8000b9a: f420 4000    	bic	r0, r0, #0x8000
 8000b9e: 6008         	str	r0, [r1]
 8000ba0: 4770         	bx	lr
 8000ba2: 0000         	movs	r0, r0
 8000ba4: 2408         	movs	r4, #0x8
 8000ba6: 4001         	ands	r1, r0
 8000ba8: 4903         	ldr	r1, [pc, #0xc]          @ 0x8000bb8 <firmware_image+0xbb8>
 8000baa: 6809         	ldr	r1, [r1]
 8000bac: 4201         	tst	r1, r0
 8000bae: d001         	beq	0x8000bb4 <firmware_image+0xbb4> @ imm = #0x2
 8000bb0: 2001         	movs	r0, #0x1
 8000bb2: 4770         	bx	lr
 8000bb4: 2000         	movs	r0, #0x0
 8000bb6: 4770         	bx	lr
 8000bb8: 2400         	movs	r4, #0x0
 8000bba: 4001         	ands	r1, r0
 8000bbc: b508         	push	{r3, lr}
 8000bbe: 4904         	ldr	r1, [pc, #0x10]         @ 0x8000bd0 <firmware_image+0xbd0>
 8000bc0: 4408         	add	r0, r1
 8000bc2: 3028         	adds	r0, #0x28
 8000bc4: 9000         	str	r0, [sp]
 8000bc6: 9800         	ldr	r0, [sp]
 8000bc8: 6800         	ldr	r0, [r0]
 8000bca: b280         	uxth	r0, r0
 8000bcc: bd08         	pop	{r3, pc}
 8000bce: 0000         	movs	r0, r0
 8000bd0: 2400         	movs	r4, #0x0
 8000bd2: 4001         	ands	r1, r0
 8000bd4: b2c0         	uxtb	r0, r0
 8000bd6: 4a05         	ldr	r2, [pc, #0x14]         @ 0x8000bec <firmware_image+0xbec>
 8000bd8: 2900         	cmp	r1, #0x0
 8000bda: d003         	beq	0x8000be4 <firmware_image+0xbe4> @ imm = #0x6
 8000bdc: 6811         	ldr	r1, [r2]
 8000bde: 4301         	orrs	r1, r0
 8000be0: 6011         	str	r1, [r2]
 8000be2: 4770         	bx	lr
 8000be4: 6811         	ldr	r1, [r2]
 8000be6: 4381         	bics	r1, r0
 8000be8: 6011         	str	r1, [r2]
 8000bea: 4770         	bx	lr
 8000bec: 2404         	movs	r4, #0x4
 8000bee: 4001         	ands	r1, r0
 8000bf0: b510         	push	{r4, lr}
 8000bf2: 4a10         	ldr	r2, [pc, #0x40]         @ 0x8000c34 <firmware_image+0xc34>
 8000bf4: 6811         	ldr	r1, [r2]
 8000bf6: f421 7180    	bic	r1, r1, #0x100
 8000bfa: 7b03         	ldrb	r3, [r0, #0xc]
 8000bfc: ea41 2103    	orr.w	r1, r1, r3, lsl #8
 8000c00: 6011         	str	r1, [r2]
 8000c02: 1d13         	adds	r3, r2, #0x4
 8000c04: 6819         	ldr	r1, [r3]
 8000c06: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x8000c38 <firmware_image+0xc38>
 8000c08: 4011         	ands	r1, r2
 8000c0a: 6804         	ldr	r4, [r0]
 8000c0c: 6882         	ldr	r2, [r0, #0x8]
 8000c0e: 4322         	orrs	r2, r4
 8000c10: 7b44         	ldrb	r4, [r0, #0xd]
 8000c12: ea41 0144    	orr.w	r1, r1, r4, lsl #1
 8000c16: 430a         	orrs	r2, r1
 8000c18: 3228         	adds	r2, #0x28
 8000c1a: 6811         	ldr	r1, [r2]
 8000c1c: f421 0170    	bic	r1, r1, #0xf00000
 8000c20: 7900         	ldrb	r0, [r0, #0x4]
 8000c22: 1e40         	subs	r0, r0, #0x1
 8000c24: b2c0         	uxtb	r0, r0
 8000c26: ea41 5000    	orr.w	r0, r1, r0, lsl #20
 8000c2a: 6010         	str	r0, [r2]
 8000c2c: bd10         	pop	{r4, pc}
 8000c2e: 0000         	movs	r0, r0
 8000c30: f7fd fff1    	bl	0x7ffec16               @ imm = #-0x201e
 8000c34: b570         	push	{r4, r5, r6, lr}
 8000c36: 2507         	movs	r5, #0x7
 8000c38: 2809         	cmp	r0, #0x9
 8000c3a: d90b         	bls	0x8000c54 <firmware_image+0xc54> @ imm = #0x16
 8000c3c: 4e12         	ldr	r6, [pc, #0x48]         @ 0x8000c88 <firmware_image+0xc88>
 8000c3e: 6834         	ldr	r4, [r6]
 8000c40: f1a0 030a    	sub.w	r3, r0, #0xa
 8000c44: eb03 0343    	add.w	r3, r3, r3, lsl #1
 8000c48: 409d         	lsls	r5, r3
 8000c4a: 43ac         	bics	r4, r5
 8000c4c: 409a         	lsls	r2, r3
 8000c4e: 4314         	orrs	r4, r2
 8000c50: 6034         	str	r4, [r6]
 8000c52: e009         	b	0x8000c68 <firmware_image+0xc68> @ imm = #0x12
 8000c54: 4e0c         	ldr	r6, [pc, #0x30]         @ 0x8000c88 <firmware_image+0xc88>
 8000c56: 1d36         	adds	r6, r6, #0x4
 8000c58: 6834         	ldr	r4, [r6]
 8000c5a: eb00 0340    	add.w	r3, r0, r0, lsl #1
 8000c5e: 409d         	lsls	r5, r3
 8000c60: 43ac         	bics	r4, r5
 8000c62: 409a         	lsls	r2, r3
 8000c64: 4314         	orrs	r4, r2
 8000c66: 6034         	str	r4, [r6]
 8000c68: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x8000c88 <firmware_image+0xc88>
 8000c6a: 342c         	adds	r4, #0x2c
 8000c6c: 6822         	ldr	r2, [r4]
 8000c6e: f3c2 5301    	ubfx	r3, r2, #0x14, #0x2
 8000c72: 1ac9         	subs	r1, r1, r3
 8000c74: 1c89         	adds	r1, r1, #0x2
 8000c76: eb01 0181    	add.w	r1, r1, r1, lsl #2
 8000c7a: 231f         	movs	r3, #0x1f
 8000c7c: 408b         	lsls	r3, r1
 8000c7e: 439a         	bics	r2, r3
 8000c80: 4088         	lsls	r0, r1
 8000c82: 4302         	orrs	r2, r0
 8000c84: 6022         	str	r2, [r4]
 8000c86: bd70         	pop	{r4, r5, r6, pc}
 8000c88: 240c         	movs	r4, #0xc
 8000c8a: 4001         	ands	r1, r0
 8000c8c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x8000ca0 <firmware_image+0xca0>
 8000c8e: 6811         	ldr	r1, [r2]
 8000c90: f421 1140    	bic	r1, r1, #0x300000
 8000c94: 1e40         	subs	r0, r0, #0x1
 8000c96: ea41 5000    	orr.w	r0, r1, r0, lsl #20
 8000c9a: 6010         	str	r0, [r2]
 8000c9c: 4770         	bx	lr
 8000c9e: 0000         	movs	r0, r0
 8000ca0: 2438         	movs	r4, #0x38
 8000ca2: 4001         	ands	r1, r0
 8000ca4: 4906         	ldr	r1, [pc, #0x18]         @ 0x8000cc0 <firmware_image+0xcc0>
 8000ca6: 2800         	cmp	r0, #0x0
 8000ca8: d004         	beq	0x8000cb4 <firmware_image+0xcb4> @ imm = #0x8
 8000caa: 6808         	ldr	r0, [r1]
 8000cac: f440 1002    	orr	r0, r0, #0x208000
 8000cb0: 6008         	str	r0, [r1]
 8000cb2: 4770         	bx	lr
 8000cb4: 6808         	ldr	r0, [r1]
 8000cb6: f420 1002    	bic	r0, r0, #0x208000
 8000cba: 6008         	str	r0, [r1]
 8000cbc: 4770         	bx	lr
 8000cbe: 0000         	movs	r0, r0
 8000cc0: 2408         	movs	r4, #0x8
 8000cc2: 4001         	ands	r1, r0
 8000cc4: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000cc8: b085         	sub	sp, #0x14
 8000cca: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x80010b8 <firmware_image+0x10b8>
 8000ccc: 220e         	movs	r2, #0xe
 8000cce: 213b         	movs	r1, #0x3b
 8000cd0: 2068         	movs	r0, #0x68
 8000cd2: f001 ff21    	bl	0x8002b18 <firmware_image+0x2b18> @ imm = #0x1e42
 8000cd6: 48f8         	ldr	r0, [pc, #0x3e0]        @ 0x80010b8 <firmware_image+0x10b8>
 8000cd8: f8df 83e0    	ldr.w	r8, [pc, #0x3e0]        @ 0x80010bc <firmware_image+0x10bc>
 8000cdc: 7841         	ldrb	r1, [r0, #0x1]
 8000cde: 7802         	ldrb	r2, [r0]
 8000ce0: ea41 2102    	orr.w	r1, r1, r2, lsl #8
 8000ce4: b209         	sxth	r1, r1
 8000ce6: f8a8 100e    	strh.w	r1, [r8, #0xe]
 8000cea: 78c2         	ldrb	r2, [r0, #0x3]
 8000cec: 7883         	ldrb	r3, [r0, #0x2]
 8000cee: ea42 2203    	orr.w	r2, r2, r3, lsl #8
 8000cf2: b212         	sxth	r2, r2
 8000cf4: f8a8 2010    	strh.w	r2, [r8, #0x10]
 8000cf8: 7943         	ldrb	r3, [r0, #0x5]
 8000cfa: 7904         	ldrb	r4, [r0, #0x4]
 8000cfc: ea43 2304    	orr.w	r3, r3, r4, lsl #8
 8000d00: b21b         	sxth	r3, r3
 8000d02: f8a8 3012    	strh.w	r3, [r8, #0x12]
 8000d06: 7a44         	ldrb	r4, [r0, #0x9]
 8000d08: 7a05         	ldrb	r5, [r0, #0x8]
 8000d0a: ea44 2405    	orr.w	r4, r4, r5, lsl #8
 8000d0e: b224         	sxth	r4, r4
 8000d10: f8a8 4014    	strh.w	r4, [r8, #0x14]
 8000d14: 7ac5         	ldrb	r5, [r0, #0xb]
 8000d16: 7a86         	ldrb	r6, [r0, #0xa]
 8000d18: ea45 2506    	orr.w	r5, r5, r6, lsl #8
 8000d1c: b22d         	sxth	r5, r5
 8000d1e: f8a8 5016    	strh.w	r5, [r8, #0x16]
 8000d22: 7b46         	ldrb	r6, [r0, #0xd]
 8000d24: 7b00         	ldrb	r0, [r0, #0xc]
 8000d26: ea46 2000    	orr.w	r0, r6, r0, lsl #8
 8000d2a: b200         	sxth	r0, r0
 8000d2c: f8a8 0018    	strh.w	r0, [r8, #0x18]
 8000d30: f9b8 601a    	ldrsh.w	r6, [r8, #0x1a]
 8000d34: f04f 0a01    	mov.w	r10, #0x1
 8000d38: 428e         	cmp	r6, r1
 8000d3a: d122         	bne	0x8000d82 <firmware_image+0xd82> @ imm = #0x44
 8000d3c: f9b8 601c    	ldrsh.w	r6, [r8, #0x1c]
 8000d40: 4296         	cmp	r6, r2
 8000d42: d11e         	bne	0x8000d82 <firmware_image+0xd82> @ imm = #0x3c
 8000d44: f9b8 601e    	ldrsh.w	r6, [r8, #0x1e]
 8000d48: 429e         	cmp	r6, r3
 8000d4a: d11a         	bne	0x8000d82 <firmware_image+0xd82> @ imm = #0x34
 8000d4c: f9b8 6020    	ldrsh.w	r6, [r8, #0x20]
 8000d50: 42a6         	cmp	r6, r4
 8000d52: d116         	bne	0x8000d82 <firmware_image+0xd82> @ imm = #0x2c
 8000d54: f9b8 4022    	ldrsh.w	r4, [r8, #0x22]
 8000d58: 42ac         	cmp	r4, r5
 8000d5a: d112         	bne	0x8000d82 <firmware_image+0xd82> @ imm = #0x24
 8000d5c: f9b8 4024    	ldrsh.w	r4, [r8, #0x24]
 8000d60: 4284         	cmp	r4, r0
 8000d62: d10e         	bne	0x8000d82 <firmware_image+0xd82> @ imm = #0x1c
 8000d64: f8b8 000c    	ldrh.w	r0, [r8, #0xc]
 8000d68: f64f 74fe    	movw	r4, #0xfffe
 8000d6c: 42a0         	cmp	r0, r4
 8000d6e: d202         	bhs	0x8000d76 <firmware_image+0xd76> @ imm = #0x4
 8000d70: 1c40         	adds	r0, r0, #0x1
 8000d72: f8a8 000c    	strh.w	r0, [r8, #0xc]
 8000d76: f8b8 000c    	ldrh.w	r0, [r8, #0xc]
 8000d7a: 2832         	cmp	r0, #0x32
 8000d7c: d901         	bls	0x8000d82 <firmware_image+0xd82> @ imm = #0x2
 8000d7e: f888 a000    	strb.w	r10, [r8]
 8000d82: f898 4000    	ldrb.w	r4, [r8]
 8000d86: 48ce         	ldr	r0, [pc, #0x338]        @ 0x80010c0 <firmware_image+0x10c0>
 8000d88: f04f 0900    	mov.w	r9, #0x0
 8000d8c: 2c01         	cmp	r4, #0x1
 8000d8e: d004         	beq	0x8000d9a <firmware_image+0xd9a> @ imm = #0x8
 8000d90: 7800         	ldrb	r0, [r0]
 8000d92: b150         	cbz	r0, 0x8000daa <firmware_image+0xdaa> @ imm = #0x14
 8000d94: e009         	b	0x8000daa <firmware_image+0xdaa> @ imm = #0x12
 8000d96: 7800         	ldrb	r0, [r0]
 8000d98: b110         	cbz	r0, 0x8000da0 <firmware_image+0xda0> @ imm = #0x4
 8000d9a: f888 a002    	strb.w	r10, [r8, #0x2]
 8000d9e: e004         	b	0x8000daa <firmware_image+0xdaa> @ imm = #0x8
 8000da0: f888 a001    	strb.w	r10, [r8, #0x1]
 8000da4: e001         	b	0x8000daa <firmware_image+0xdaa> @ imm = #0x2
 8000da6: f888 9001    	strb.w	r9, [r8, #0x1]
 8000daa: 4248         	rsbs	r0, r1, #0
 8000dac: f44f 4100    	mov.w	r1, #0x8000
 8000db0: 1e4e         	subs	r6, r1, #0x1
 8000db2: 4288         	cmp	r0, r1
 8000db4: db00         	blt	0x8000db8 <firmware_image+0xdb8> @ imm = #0x0
 8000db6: 4630         	mov	r0, r6
 8000db8: 4cc1         	ldr	r4, [pc, #0x304]        @ 0x80010c0 <firmware_image+0x10c0>
 8000dba: 1c67         	adds	r7, r4, #0x1
 8000dbc: 42a0         	cmp	r0, r4
 8000dbe: dc00         	bgt	0x8000dc2 <firmware_image+0xdc2> @ imm = #0x0
 8000dc0: 4638         	mov	r0, r7
 8000dc2: 4dbd         	ldr	r5, [pc, #0x2f4]        @ 0x80010b8 <firmware_image+0x10b8>
 8000dc4: 3570         	adds	r5, #0x70
 8000dc6: 8028         	strh	r0, [r5]
 8000dc8: 4610         	mov	r0, r2
 8000dca: 4288         	cmp	r0, r1
 8000dcc: db00         	blt	0x8000dd0 <firmware_image+0xdd0> @ imm = #0x0
 8000dce: 4630         	mov	r0, r6
 8000dd0: 42a0         	cmp	r0, r4
 8000dd2: dc00         	bgt	0x8000dd6 <firmware_image+0xdd6> @ imm = #0x0
 8000dd4: 4638         	mov	r0, r7
 8000dd6: 8068         	strh	r0, [r5, #0x2]
 8000dd8: 4258         	rsbs	r0, r3, #0
 8000dda: f5b0 4f00    	cmp.w	r0, #0x8000
 8000dde: db00         	blt	0x8000de2 <firmware_image+0xde2> @ imm = #0x0
 8000de0: 4630         	mov	r0, r6
 8000de2: f510 4f00    	cmn.w	r0, #0x8000
 8000de6: dc00         	bgt	0x8000dea <firmware_image+0xdea> @ imm = #0x0
 8000de8: 4638         	mov	r0, r7
 8000dea: 80a8         	strh	r0, [r5, #0x4]
 8000dec: f000 fae0    	bl	0x80013b0 <firmware_image+0x13b0> @ imm = #0x5c0
 8000df0: f8a8 000a    	strh.w	r0, [r8, #0xa]
 8000df4: f7ff fc2d    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x7a6
 8000df8: 4ab2         	ldr	r2, [pc, #0x2c8]        @ 0x80010c4 <firmware_image+0x10c4>
 8000dfa: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x80010c8 <firmware_image+0x10c8>
 8000dfc: f7ff fb3f    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x982
 8000e00: 4604         	mov	r4, r0
 8000e02: 460d         	mov	r5, r1
 8000e04: f8d8 0028    	ldr.w	r0, [r8, #0x28]
 8000e08: f7ff fc6c    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x728
 8000e0c: 4aaf         	ldr	r2, [pc, #0x2bc]        @ 0x80010cc <firmware_image+0x10cc>
 8000e0e: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x80010d0 <firmware_image+0x10d0>
 8000e10: f7ff fb35    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x996
 8000e14: 4622         	mov	r2, r4
 8000e16: 462b         	mov	r3, r5
 8000e18: f7ff fa8a    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0xaec
 8000e1c: f7ff fc8e    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x6e4
 8000e20: f8c8 0028    	str.w	r0, [r8, #0x28]
 8000e24: 49a4         	ldr	r1, [pc, #0x290]        @ 0x80010b8 <firmware_image+0x10b8>
 8000e26: f9b8 b014    	ldrsh.w	r11, [r8, #0x14]
 8000e2a: 3182         	adds	r1, #0x82
 8000e2c: f9b1 0000    	ldrsh.w	r0, [r1]
 8000e30: 4458         	add	r0, r11
 8000e32: 4240         	rsbs	r0, r0, #0
 8000e34: f44f 4200    	mov.w	r2, #0x8000
 8000e38: 4290         	cmp	r0, r2
 8000e3a: db00         	blt	0x8000e3e <firmware_image+0xe3e> @ imm = #0x0
 8000e3c: 4630         	mov	r0, r6
 8000e3e: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x80010c0 <firmware_image+0x10c0>
 8000e40: 4298         	cmp	r0, r3
 8000e42: dc00         	bgt	0x8000e46 <firmware_image+0xe46> @ imm = #0x0
 8000e44: 4638         	mov	r0, r7
 8000e46: 4c9c         	ldr	r4, [pc, #0x270]        @ 0x80010b8 <firmware_image+0x10b8>
 8000e48: 3476         	adds	r4, #0x76
 8000e4a: 8020         	strh	r0, [r4]
 8000e4c: f9b1 5002    	ldrsh.w	r5, [r1, #0x2]
 8000e50: f9b8 0016    	ldrsh.w	r0, [r8, #0x16]
 8000e54: 9004         	str	r0, [sp, #0x10]
 8000e56: 1b40         	subs	r0, r0, r5
 8000e58: 4290         	cmp	r0, r2
 8000e5a: db00         	blt	0x8000e5e <firmware_image+0xe5e> @ imm = #0x0
 8000e5c: 4630         	mov	r0, r6
 8000e5e: 4298         	cmp	r0, r3
 8000e60: dc00         	bgt	0x8000e64 <firmware_image+0xe64> @ imm = #0x0
 8000e62: 4638         	mov	r0, r7
 8000e64: 8060         	strh	r0, [r4, #0x2]
 8000e66: f9b1 1004    	ldrsh.w	r1, [r1, #0x4]
 8000e6a: f9b8 0018    	ldrsh.w	r0, [r8, #0x18]
 8000e6e: 9003         	str	r0, [sp, #0xc]
 8000e70: 4408         	add	r0, r1
 8000e72: 4240         	rsbs	r0, r0, #0
 8000e74: 4290         	cmp	r0, r2
 8000e76: db00         	blt	0x8000e7a <firmware_image+0xe7a> @ imm = #0x0
 8000e78: 4630         	mov	r0, r6
 8000e7a: 4298         	cmp	r0, r3
 8000e7c: dc00         	bgt	0x8000e80 <firmware_image+0xe80> @ imm = #0x0
 8000e7e: 4638         	mov	r0, r7
 8000e80: 80a0         	strh	r0, [r4, #0x4]
 8000e82: f9b8 000e    	ldrsh.w	r0, [r8, #0xe]
 8000e86: 4240         	rsbs	r0, r0, #0
 8000e88: f7ff fbe3    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x83a
 8000e8c: 4a91         	ldr	r2, [pc, #0x244]        @ 0x80010d4 <firmware_image+0x10d4>
 8000e8e: 4b92         	ldr	r3, [pc, #0x248]        @ 0x80010d8 <firmware_image+0x10d8>
 8000e90: f7ff faf5    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xa16
 8000e94: 4604         	mov	r4, r0
 8000e96: 460d         	mov	r5, r1
 8000e98: f8d8 004c    	ldr.w	r0, [r8, #0x4c]
 8000e9c: f7ff fc22    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x7bc
 8000ea0: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x80010dc <firmware_image+0x10dc>
 8000ea2: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x80010e0 <firmware_image+0x10e0>
 8000ea4: f7ff faeb    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xa2a
 8000ea8: 4622         	mov	r2, r4
 8000eaa: 462b         	mov	r3, r5
 8000eac: f7ff fa40    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0xb80
 8000eb0: f7ff fc44    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x778
 8000eb4: f8c8 004c    	str.w	r0, [r8, #0x4c]
 8000eb8: 9002         	str	r0, [sp, #0x8]
 8000eba: f9b8 0010    	ldrsh.w	r0, [r8, #0x10]
 8000ebe: f7ff fbc8    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x870
 8000ec2: 4a84         	ldr	r2, [pc, #0x210]        @ 0x80010d4 <firmware_image+0x10d4>
 8000ec4: 4b84         	ldr	r3, [pc, #0x210]        @ 0x80010d8 <firmware_image+0x10d8>
 8000ec6: f7ff fada    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xa4c
 8000eca: 4604         	mov	r4, r0
 8000ecc: 460d         	mov	r5, r1
 8000ece: f8d8 0050    	ldr.w	r0, [r8, #0x50]
 8000ed2: f7ff fc07    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x7f2
 8000ed6: 4a81         	ldr	r2, [pc, #0x204]        @ 0x80010dc <firmware_image+0x10dc>
 8000ed8: 4b81         	ldr	r3, [pc, #0x204]        @ 0x80010e0 <firmware_image+0x10e0>
 8000eda: f7ff fad0    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xa60
 8000ede: 4622         	mov	r2, r4
 8000ee0: 462b         	mov	r3, r5
 8000ee2: f7ff fa25    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0xbb6
 8000ee6: f7ff fc29    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x7ae
 8000eea: f8c8 0050    	str.w	r0, [r8, #0x50]
 8000eee: 9001         	str	r0, [sp, #0x4]
 8000ef0: f9b8 0012    	ldrsh.w	r0, [r8, #0x12]
 8000ef4: 4240         	rsbs	r0, r0, #0
 8000ef6: f7ff fbac    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x8a8
 8000efa: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x80010d4 <firmware_image+0x10d4>
 8000efc: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x80010d8 <firmware_image+0x10d8>
 8000efe: f7ff fabe    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xa84
 8000f02: 4604         	mov	r4, r0
 8000f04: 460d         	mov	r5, r1
 8000f06: f8d8 0054    	ldr.w	r0, [r8, #0x54]
 8000f0a: f7ff fbeb    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x82a
 8000f0e: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x80010dc <firmware_image+0x10dc>
 8000f10: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f12: f7ff fab4    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xa98
 8000f16: 4622         	mov	r2, r4
 8000f18: 462b         	mov	r3, r5
 8000f1a: f7ff fa09    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0xbee
 8000f1e: f7ff fc0d    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x7e6
 8000f22: f8c8 0054    	str.w	r0, [r8, #0x54]
 8000f26: 9000         	str	r0, [sp]
 8000f28: f1cb 0000    	rsb.w	r0, r11, #0x0
 8000f2c: f7ff fb91    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x8de
 8000f30: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x80010d4 <firmware_image+0x10d4>
 8000f32: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x80010d8 <firmware_image+0x10d8>
 8000f34: f7ff faa3    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xaba
 8000f38: 4604         	mov	r4, r0
 8000f3a: 460d         	mov	r5, r1
 8000f3c: f8d8 0058    	ldr.w	r0, [r8, #0x58]
 8000f40: f7ff fbd0    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x860
 8000f44: 4a65         	ldr	r2, [pc, #0x194]        @ 0x80010dc <firmware_image+0x10dc>
 8000f46: 4b66         	ldr	r3, [pc, #0x198]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f48: f7ff fa99    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xace
 8000f4c: 4622         	mov	r2, r4
 8000f4e: 462b         	mov	r3, r5
 8000f50: f7ff f9ee    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0xc24
 8000f54: f7ff fbf2    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x81c
 8000f58: 4607         	mov	r7, r0
 8000f5a: f8c8 0058    	str.w	r0, [r8, #0x58]
 8000f5e: 9804         	ldr	r0, [sp, #0x10]
 8000f60: f7ff fb77    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x912
 8000f64: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0x80010d4 <firmware_image+0x10d4>
 8000f66: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x80010d8 <firmware_image+0x10d8>
 8000f68: f7ff fa89    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xaee
 8000f6c: 4604         	mov	r4, r0
 8000f6e: 460d         	mov	r5, r1
 8000f70: f8d8 005c    	ldr.w	r0, [r8, #0x5c]
 8000f74: f7ff fbb6    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x894
 8000f78: 4a58         	ldr	r2, [pc, #0x160]        @ 0x80010dc <firmware_image+0x10dc>
 8000f7a: 4b59         	ldr	r3, [pc, #0x164]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f7c: f7ff fa7f    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xb02
 8000f80: 4622         	mov	r2, r4
 8000f82: 462b         	mov	r3, r5
 8000f84: f7ff f9d4    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0xc58
 8000f88: f7ff fbd8    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x850
 8000f8c: 4606         	mov	r6, r0
 8000f8e: f8c8 005c    	str.w	r0, [r8, #0x5c]
 8000f92: 9803         	ldr	r0, [sp, #0xc]
 8000f94: 4240         	rsbs	r0, r0, #0
 8000f96: f7ff fb5c    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x948
 8000f9a: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x80010d4 <firmware_image+0x10d4>
 8000f9c: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x80010d8 <firmware_image+0x10d8>
 8000f9e: f7ff fa6e    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xb24
 8000fa2: 4604         	mov	r4, r0
 8000fa4: 460d         	mov	r5, r1
 8000fa6: f8d8 0060    	ldr.w	r0, [r8, #0x60]
 8000faa: f7ff fb9b    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x8ca
 8000fae: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x80010dc <firmware_image+0x10dc>
 8000fb0: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x80010e0 <firmware_image+0x10e0>
 8000fb2: f7ff fa64    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0xb38
 8000fb6: 4622         	mov	r2, r4
 8000fb8: 462b         	mov	r3, r5
 8000fba: f7ff f9b9    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0xc8e
 8000fbe: f7ff fbbd    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x886
 8000fc2: 4605         	mov	r5, r0
 8000fc4: f8c8 0060    	str.w	r0, [r8, #0x60]
 8000fc8: 9802         	ldr	r0, [sp, #0x8]
 8000fca: f7ff fb53    	bl	0x8000674 <firmware_image+0x674> @ imm = #-0x95a
 8000fce: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x80010b8 <firmware_image+0x10b8>
 8000fd0: 3464         	adds	r4, #0x64
 8000fd2: 8020         	strh	r0, [r4]
 8000fd4: 9801         	ldr	r0, [sp, #0x4]
 8000fd6: f7ff fb4d    	bl	0x8000674 <firmware_image+0x674> @ imm = #-0x966
 8000fda: 8060         	strh	r0, [r4, #0x2]
 8000fdc: 9800         	ldr	r0, [sp]
 8000fde: f7ff fb49    	bl	0x8000674 <firmware_image+0x674> @ imm = #-0x96e
 8000fe2: 80a0         	strh	r0, [r4, #0x4]
 8000fe4: 4638         	mov	r0, r7
 8000fe6: f7ff fb45    	bl	0x8000674 <firmware_image+0x674> @ imm = #-0x976
 8000fea: 1da7         	adds	r7, r4, #0x6
 8000fec: fa0f fb80    	sxth.w	r11, r0
 8000ff0: f8a7 b000    	strh.w	r11, [r7]
 8000ff4: 0a90         	lsrs	r0, r2, #0xa
 8000ff6: 2000         	movs	r0, #0x0
 8000ff8: 0171         	lsls	r1, r6, #0x5
 8000ffa: 0800         	lsrs	r0, r0, #0x20
 8000ffc: 35e1         	adds	r5, #0xe1
 8000ffe: 0800         	lsrs	r0, r0, #0x20
 8001000: 4630         	mov	r0, r6
 8001002: f7ff fb3d    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x986
 8001006: 8078         	strh	r0, [r7, #0x2]
 8001008: 4628         	mov	r0, r5
 800100a: f7ff fb39    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x98e
 800100e: 80b8         	strh	r0, [r7, #0x4]
 8001010: 4658         	mov	r0, r11
 8001012: f005 f9fd    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x53fa
 8001016: f44f 6180    	mov.w	r1, #0x400
 800101a: f44f 52c0    	mov.w	r2, #0x1800
 800101e: 4288         	cmp	r0, r1
 8001020: da22         	bge	0x8001068 <firmware_image+0x1068> @ imm = #0x44
 8001022: f9b7 0002    	ldrsh.w	r0, [r7, #0x2]
 8001026: f005 f9f3    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x53e6
 800102a: 4288         	cmp	r0, r1
 800102c: da1c         	bge	0x8001068 <firmware_image+0x1068> @ imm = #0x38
 800102e: f9b7 0004    	ldrsh.w	r0, [r7, #0x4]
 8001032: f005 f9ed    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x53da
 8001036: 4288         	cmp	r0, r1
 8001038: da16         	bge	0x8001068 <firmware_image+0x1068> @ imm = #0x2c
 800103a: f9b4 0000    	ldrsh.w	r0, [r4]
 800103e: f005 f9e7    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x53ce
 8001042: f44f 6300    	mov.w	r3, #0x800
 8001046: 4298         	cmp	r0, r3
 8001048: da0e         	bge	0x8001068 <firmware_image+0x1068> @ imm = #0x1c
 800104a: f9b4 0002    	ldrsh.w	r0, [r4, #0x2]
 800104e: f005 f9df    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x53be
 8001052: 4298         	cmp	r0, r3
 8001054: da08         	bge	0x8001068 <firmware_image+0x1068> @ imm = #0x10
 8001056: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 800105a: 4290         	cmp	r0, r2
 800105c: dd04         	ble	0x8001068 <firmware_image+0x1068> @ imm = #0x8
 800105e: f888 a003    	strb.w	r10, [r8, #0x3]
 8001062: f888 9004    	strb.w	r9, [r8, #0x4]
 8001066: e047         	b	0x80010f8 <firmware_image+0x10f8> @ imm = #0x8e
 8001068: f9b7 0000    	ldrsh.w	r0, [r7]
 800106c: f005 f9d0    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x53a0
 8001070: 4288         	cmp	r0, r1
 8001072: da3d         	bge	0x80010f0 <firmware_image+0x10f0> @ imm = #0x7a
 8001074: f9b7 0002    	ldrsh.w	r0, [r7, #0x2]
 8001078: f005 f9ca    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x5394
 800107c: 4288         	cmp	r0, r1
 800107e: da37         	bge	0x80010f0 <firmware_image+0x10f0> @ imm = #0x6e
 8001080: f9b7 0004    	ldrsh.w	r0, [r7, #0x4]
 8001084: f005 f9c4    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x5388
 8001088: 4288         	cmp	r0, r1
 800108a: da31         	bge	0x80010f0 <firmware_image+0x10f0> @ imm = #0x62
 800108c: f9b4 0000    	ldrsh.w	r0, [r4]
 8001090: f005 f9be    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x537c
 8001094: f44f 6140    	mov.w	r1, #0xc00
 8001098: 4288         	cmp	r0, r1
 800109a: da29         	bge	0x80010f0 <firmware_image+0x10f0> @ imm = #0x52
 800109c: f9b4 0002    	ldrsh.w	r0, [r4, #0x2]
 80010a0: f005 f9b6    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x536c
 80010a4: 4290         	cmp	r0, r2
 80010a6: dd23         	ble	0x80010f0 <firmware_image+0x10f0> @ imm = #0x46
 80010a8: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 80010ac: f005 f9b0    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x5360
 80010b0: 4288         	cmp	r0, r1
 80010b2: da1d         	bge	0x80010f0 <firmware_image+0x10f0> @ imm = #0x3a
 80010b4: f888 9003    	strb.w	r9, [r8, #0x3]
 80010b8: f888 a004    	strb.w	r10, [r8, #0x4]
 80010bc: e01c         	b	0x80010f8 <firmware_image+0x10f8> @ imm = #0x38
 80010be: 0000         	movs	r0, r0
 80010c0: 02d8         	lsls	r0, r3, #0xb
 80010c2: 2000         	movs	r0, #0x0
 80010c4: 0194         	lsls	r4, r2, #0x6
 80010c6: 2000         	movs	r0, #0x0
 80010c8: 021e         	lsls	r6, r3, #0x8
 80010ca: 2000         	movs	r0, #0x0
 80010cc: 8000         	strh	r0, [r0]
 80010ce: ffff 147b    	<unknown>
 80010d2: 47ae         	<unknown>
 80010d4: 7ae1         	ldrb	r1, [r4, #0xb]
 80010d6: 3f84         	subs	r7, #0x84
 80010d8: 47ae         	<unknown>
 80010da: 7ae1         	ldrb	r1, [r4, #0xb]
 80010dc: ae14         	add	r6, sp, #0x50
 80010de: 3fef         	subs	r7, #0xef
 80010e0: 51ec         	str	r4, [r5, r7]
 80010e2: 1eb8         	subs	r0, r7, #0x2
 80010e4: eb85 3fb1    	<unknown>
 80010e8: f5c3 5c28    	rsb.w	r12, r3, #0x2a00
 80010ec: c28f         	stm	r2!, {r0, r1, r2, r3, r7}
 80010ee: 3fed         	subs	r7, #0xed
 80010f0: f888 9003    	strb.w	r9, [r8, #0x3]
 80010f4: f888 9004    	strb.w	r9, [r8, #0x4]
 80010f8: f8b8 000e    	ldrh.w	r0, [r8, #0xe]
 80010fc: f8a8 001a    	strh.w	r0, [r8, #0x1a]
 8001100: f8b8 0010    	ldrh.w	r0, [r8, #0x10]
 8001104: f8a8 001c    	strh.w	r0, [r8, #0x1c]
 8001108: f8b8 0012    	ldrh.w	r0, [r8, #0x12]
 800110c: f8a8 001e    	strh.w	r0, [r8, #0x1e]
 8001110: f8b8 0014    	ldrh.w	r0, [r8, #0x14]
 8001114: f8a8 0020    	strh.w	r0, [r8, #0x20]
 8001118: f8b8 0016    	ldrh.w	r0, [r8, #0x16]
 800111c: f8a8 0022    	strh.w	r0, [r8, #0x22]
 8001120: f8b8 0018    	ldrh.w	r0, [r8, #0x18]
 8001124: f8a8 0024    	strh.w	r0, [r8, #0x24]
 8001128: b005         	add	sp, #0x14
 800112a: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 800112e: 0000         	movs	r0, r0
 8001130: b538         	push	{r3, r4, r5, lr}
 8001132: 4d1c         	ldr	r5, [pc, #0x70]         @ 0x80011a4 <firmware_image+0x11a4>
 8001134: 4628         	mov	r0, r5
 8001136: f001 f94b    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #0x1296
 800113a: 2400         	movs	r4, #0x0
 800113c: 9400         	str	r4, [sp]
 800113e: 466b         	mov	r3, sp
 8001140: 2201         	movs	r2, #0x1
 8001142: 216b         	movs	r1, #0x6b
 8001144: 2068         	movs	r0, #0x68
 8001146: f001 fded    	bl	0x8002d24 <firmware_image+0x2d24> @ imm = #0x1bda
 800114a: 4628         	mov	r0, r5
 800114c: f001 f940    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #0x1280
 8001150: 9400         	str	r4, [sp]
 8001152: 466b         	mov	r3, sp
 8001154: 2201         	movs	r2, #0x1
 8001156: 2119         	movs	r1, #0x19
 8001158: 2068         	movs	r0, #0x68
 800115a: f001 fde3    	bl	0x8002d24 <firmware_image+0x2d24> @ imm = #0x1bc6
 800115e: 4628         	mov	r0, r5
 8001160: f001 f936    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #0x126c
 8001164: 9400         	str	r4, [sp]
 8001166: 466b         	mov	r3, sp
 8001168: 2201         	movs	r2, #0x1
 800116a: 211a         	movs	r1, #0x1a
 800116c: 2068         	movs	r0, #0x68
 800116e: f001 fdd9    	bl	0x8002d24 <firmware_image+0x2d24> @ imm = #0x1bb2
 8001172: 4628         	mov	r0, r5
 8001174: f001 f92c    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #0x1258
 8001178: 2408         	movs	r4, #0x8
 800117a: 9400         	str	r4, [sp]
 800117c: 466b         	mov	r3, sp
 800117e: 2201         	movs	r2, #0x1
 8001180: 211b         	movs	r1, #0x1b
 8001182: 2068         	movs	r0, #0x68
 8001184: f001 fdce    	bl	0x8002d24 <firmware_image+0x2d24> @ imm = #0x1b9c
 8001188: 4628         	mov	r0, r5
 800118a: f001 f921    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #0x1242
 800118e: 9400         	str	r4, [sp]
 8001190: 466b         	mov	r3, sp
 8001192: 2201         	movs	r2, #0x1
 8001194: 211c         	movs	r1, #0x1c
 8001196: 2068         	movs	r0, #0x68
 8001198: f001 fdc4    	bl	0x8002d24 <firmware_image+0x2d24> @ imm = #0x1b88
 800119c: 4628         	mov	r0, r5
 800119e: f001 f917    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #0x122e
 80011a2: bd38         	pop	{r3, r4, r5, pc}
 80011a4: 86a0         	strh	r0, [r4, #0x34]
 80011a6: 0001         	movs	r1, r0
 80011a8: e92d 5fff    	push.w	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 80011ac: f7ff fd8e    	bl	0x8000ccc <firmware_image+0xccc> @ imm = #-0x4e4
 80011b0: 4d76         	ldr	r5, [pc, #0x1d8]        @ 0x800138c <firmware_image+0x138c>
 80011b2: 4977         	ldr	r1, [pc, #0x1dc]        @ 0x8001390 <firmware_image+0x1390>
 80011b4: f9b5 4004    	ldrsh.w	r4, [r5, #0x4]
 80011b8: 4260         	rsbs	r0, r4, #0
 80011ba: 8008         	strh	r0, [r1]
 80011bc: f7ff fa44    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xb78
 80011c0: 4e73         	ldr	r6, [pc, #0x1cc]        @ 0x8001390 <firmware_image+0x1390>
 80011c2: 4631         	mov	r1, r6
 80011c4: f7ff f83c    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0xf88
 80011c8: 4607         	mov	r7, r0
 80011ca: f9b5 0002    	ldrsh.w	r0, [r5, #0x2]
 80011ce: f7ff fa3b    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xb8a
 80011d2: 4631         	mov	r1, r6
 80011d4: f7ff f834    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0xf98
 80011d8: 4605         	mov	r5, r0
 80011da: 4620         	mov	r0, r4
 80011dc: f7ff fa34    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xb98
 80011e0: 4631         	mov	r1, r6
 80011e2: f7ff f82d    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0xfa6
 80011e6: 4606         	mov	r6, r0
 80011e8: f7ff f828    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0xfb0
 80011ec: f7ff fa44    	bl	0x8000678 <firmware_image+0x678> @ imm = #-0xb78
 80011f0: 4968         	ldr	r1, [pc, #0x1a0]        @ 0x8001394 <firmware_image+0x1394>
 80011f2: 6008         	str	r0, [r1]
 80011f4: 4968         	ldr	r1, [pc, #0x1a0]        @ 0x8001398 <firmware_image+0x1398>
 80011f6: f44f 7367    	mov.w	r3, #0x39c
 80011fa: 680a         	ldr	r2, [r1]
 80011fc: 435a         	muls	r2, r3, r2
 80011fe: eb00 03c0    	add.w	r3, r0, r0, lsl #3
 8001202: eb03 1000    	add.w	r0, r3, r0, lsl #4
 8001206: eb02 0080    	add.w	r0, r2, r0, lsl #2
 800120a: 1280         	asrs	r0, r0, #0xa
 800120c: 1fa4         	subs	r4, r4, #0x6
 800120e: f9b4 0000    	ldrsh.w	r0, [r4]
 8001212: f7ff f9b4    	bl	0x800057e <firmware_image+0x57e> @ imm = #-0xc98
 8001216: 0002         	movs	r2, r0
 8001218: f7ff fa10    	bl	0x800063c <firmware_image+0x63c> @ imm = #-0xbe0
 800121c: 4682         	mov	r10, r0
 800121e: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 8001222: f7ff fa0b    	bl	0x800063c <firmware_image+0x63c> @ imm = #-0xbea
 8001226: 9002         	str	r0, [sp, #0x8]
 8001228: 9902         	ldr	r1, [sp, #0x8]
 800122a: 4608         	mov	r0, r1
 800122c: f7ff f802    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0xffc
 8001230: 4604         	mov	r4, r0
 8001232: 4651         	mov	r1, r10
 8001234: 4650         	mov	r0, r10
 8001236: f7fe fffd    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x1006
 800123a: 4680         	mov	r8, r0
 800123c: 4659         	mov	r1, r11
 800123e: 4658         	mov	r0, r11
 8001240: f7fe fff8    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x1010
 8001244: 4641         	mov	r1, r8
 8001246: f7fe ff9d    	bl	0x8000184 <firmware_image+0x184> @ imm = #-0x10c6
 800124a: 4621         	mov	r1, r4
 800124c: f7fe ff9a    	bl	0x8000184 <firmware_image+0x184> @ imm = #-0x10cc
 8001250: f7ff fa46    	bl	0x80006e0 <firmware_image+0x6e0> @ imm = #-0xb74
 8001254: f005 fe6e    	bl	0x8006f34 <firmware_image+0x6f34> @ imm = #0x5cdc
 8001258: f7ff fa6e    	bl	0x8000738 <firmware_image+0x738> @ imm = #-0xb24
 800125c: 4c47         	ldr	r4, [pc, #0x11c]        @ 0x800137c <firmware_image+0x137c>
 800125e: 3c76         	subs	r4, #0x76
 8001260: 64a0         	str	r0, [r4, #0x48]
 8001262: 4601         	mov	r1, r0
 8001264: 4658         	mov	r0, r11
 8001266: f7ff f817    	bl	0x8000298 <firmware_image+0x298> @ imm = #-0xfd2
 800126a: f7ff fa39    	bl	0x80006e0 <firmware_image+0x6e0> @ imm = #-0xb8e
 800126e: f005 f8d5    	bl	0x800641c <firmware_image+0x641c> @ imm = #0x51aa
 8001272: f8df 8120    	ldr.w	r8, [pc, #0x120]        @ 0x8001394 <firmware_image+0x1394>
 8001276: f04f 4980    	mov.w	r9, #0x40000000
 800127a: 464a         	mov	r2, r9
 800127c: 4643         	mov	r3, r8
 800127e: f7ff f8fc    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0xe08
 8001282: f7ff fa59    	bl	0x8000738 <firmware_image+0x738> @ imm = #-0xb4e
 8001286: 6420         	str	r0, [r4, #0x40]
 8001288: 4650         	mov	r0, r10
 800128a: 6ca1         	ldr	r1, [r4, #0x48]
 800128c: f7ff f804    	bl	0x8000298 <firmware_image+0x298> @ imm = #-0xff8
 8001290: f7ff fa26    	bl	0x80006e0 <firmware_image+0x6e0> @ imm = #-0xbb4
 8001294: f005 f8c2    	bl	0x800641c <firmware_image+0x641c> @ imm = #0x5184
 8001298: 464a         	mov	r2, r9
 800129a: 4643         	mov	r3, r8
 800129c: f7ff f8ed    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0xe26
 80012a0: f7ff fa4a    	bl	0x8000738 <firmware_image+0x738> @ imm = #-0xb6c
 80012a4: 6460         	str	r0, [r4, #0x44]
 80012a6: 9902         	ldr	r1, [sp, #0x8]
 80012a8: a100         	adr	r1, #0 <firmware_image+0x12ac>
 80012aa: 4632         	mov	r2, r6
 80012ac: 4629         	mov	r1, r5
 80012ae: 4638         	mov	r0, r7
 80012b0: f001 fdfc    	bl	0x8002eac <firmware_image+0x2eac> @ imm = #0x1bf8
 80012b4: 4837         	ldr	r0, [pc, #0xdc]         @ 0x8001394 <firmware_image+0x1394>
 80012b6: f001 fd65    	bl	0x8002d84 <firmware_image+0x2d84> @ imm = #0x1aca
 80012ba: f9b4 0006    	ldrsh.w	r0, [r4, #0x6]
 80012be: f7ff f9bb    	bl	0x8000638 <firmware_image+0x638> @ imm = #-0xc8a
 80012c2: 4605         	mov	r5, r0
 80012c4: 9003         	str	r0, [sp, #0xc]
 80012c6: 4833         	ldr	r0, [pc, #0xcc]         @ 0x8001394 <firmware_image+0x1394>
 80012c8: f8df b0cc    	ldr.w	r11, [pc, #0xcc]        @ 0x8001398 <firmware_image+0x1398>
 80012cc: 6800         	ldr	r0, [r0]
 80012ce: 4659         	mov	r1, r11
 80012d0: f7fe ffae    	bl	0x8000230 <firmware_image+0x230> @ imm = #-0x10a4
 80012d4: 4629         	mov	r1, r5
 80012d6: f7fe ffa5    	bl	0x8000224 <firmware_image+0x224> @ imm = #-0x10b6
 80012da: 63e0         	str	r0, [r4, #0x3c]
 80012dc: 6c60         	ldr	r0, [r4, #0x44]
 80012de: f7ff f9fd    	bl	0x80006dc <firmware_image+0x6dc> @ imm = #-0xc06
 80012e2: 4f2e         	ldr	r7, [pc, #0xb8]         @ 0x800139c <firmware_image+0x139c>
 80012e4: f8df 80b8    	ldr.w	r8, [pc, #0xb8]         @ 0x80013a0 <firmware_image+0x13a0>
 80012e8: 463a         	mov	r2, r7
 80012ea: 4643         	mov	r3, r8
 80012ec: f7ff f8c3    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0xe7a
 80012f0: 4605         	mov	r5, r0
 80012f2: 460e         	mov	r6, r1
 80012f4: 6b20         	ldr	r0, [r4, #0x30]
 80012f6: f7ff f9f1    	bl	0x80006dc <firmware_image+0x6dc> @ imm = #-0xc1e
 80012fa: f8df a0a8    	ldr.w	r10, [pc, #0xa8]        @ 0x80013a4 <firmware_image+0x13a4>
 80012fe: ea4f 0967    	asr.w	r9, r7, #0x1
 8001302: 464a         	mov	r2, r9
 8001304: 4653         	mov	r3, r10
 8001306: f7ff f8b6    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0xe94
 800130a: 462a         	mov	r2, r5
 800130c: 4633         	mov	r3, r6
 800130e: f7ff f80b    	bl	0x8000328 <firmware_image+0x328> @ imm = #-0xfea
 8001312: f7ff fa0f    	bl	0x8000734 <firmware_image+0x734> @ imm = #-0xbe2
 8001316: 4605         	mov	r5, r0
 8001318: 6320         	str	r0, [r4, #0x30]
 800131a: f9b4 0008    	ldrsh.w	r0, [r4, #0x8]
 800131e: f7ff f98b    	bl	0x8000638 <firmware_image+0x638> @ imm = #-0xcea
 8001322: 4659         	mov	r1, r11
 8001324: f7fe ffb6    	bl	0x8000294 <firmware_image+0x294> @ imm = #-0x1094
 8001328: 4629         	mov	r1, r5
 800132a: f7fe ff7e    	bl	0x800022a <firmware_image+0x22a> @ imm = #-0x1104
 800132e: 62e0         	str	r0, [r4, #0x2c]
 8001330: 6c20         	ldr	r0, [r4, #0x40]
 8001332: f080 4000    	eor	r0, r0, #0x80000000
 8001336: f7ff f9d1    	bl	0x80006dc <firmware_image+0x6dc> @ imm = #-0xc5e
 800133a: 463a         	mov	r2, r7
 800133c: 4643         	mov	r3, r8
 800133e: f7ff f89a    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0xecc
 8001342: 4605         	mov	r5, r0
 8001344: 460e         	mov	r6, r1
 8001346: 6ba0         	ldr	r0, [r4, #0x38]
 8001348: f7ff f9c8    	bl	0x80006dc <firmware_image+0x6dc> @ imm = #-0xc70
 800134c: f7ff f891    	bl	0x8000472 <firmware_image+0x472> @ imm = #-0xede
 8001350: 462a         	mov	r2, r5
 8001352: 4633         	mov	r3, r6
 8001354: f7fe ffe6    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x1034
 8001358: f7ff f9ea    	bl	0x8000730 <firmware_image+0x730> @ imm = #-0xc2c
 800135c: 4605         	mov	r5, r0
 800135e: 63a0         	str	r0, [r4, #0x38]
 8001360: 4659         	mov	r1, r11
 8001362: 9803         	ldr	r0, [sp, #0xc]
 8001364: f7fe ff94    	bl	0x8000290 <firmware_image+0x290> @ imm = #-0x10d8
 8001368: 4629         	mov	r1, r5
 800136a: f7fe ff5c    	bl	0x8000226 <firmware_image+0x226> @ imm = #-0x1148
 800136e: 6360         	str	r0, [r4, #0x34]
 8001370: e8bd 9fff    	pop.w	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
 8001374: 020a         	lsls	r2, r1, #0x8
 8001376: 2000         	movs	r0, #0x0
 8001378: 0096         	lsls	r6, r2, #0x2
 800137a: 2000         	movs	r0, #0x0
 800137c: a058         	adr	r0, #352 <firmware_image+0x13d8>
 800137e: 398b         	subs	r1, #0x8b
 8001380: 4000         	ands	r0, r0
 8001382: 461c         	mov	r4, r3
 8001384: 0100         	lsls	r0, r0, #0x4
 8001386: 2000         	movs	r0, #0x0
 8001388: 0138         	lsls	r0, r7, #0x4
 800138a: 2000         	movs	r0, #0x0
 800138c: a5dc         	adr	r5, #880 <firmware_image+0x146c>
 800138e: 404c         	eors	r4, r1
 8001390: 02e8         	lsls	r0, r5, #0xb
 8001392: 2000         	movs	r0, #0x0
 8001394: 0000         	movs	r0, r0
 8001396: 42c8         	cmn	r0, r1
 8001398: 999a         	ldr	r1, [sp, #0x268]
 800139a: 9999         	ldr	r1, [sp, #0x264]
 800139c: 9999         	ldr	r1, [sp, #0x264]
 800139e: 3fb9         	subs	r7, #0xb9
 80013a0: cccc         	ldm	r4!, {r2, r3, r6, r7}
 80013a2: 3fec         	subs	r7, #0xec
 80013a4: 4807         	ldr	r0, [pc, #0x1c]         @ 0x80013c4 <firmware_image+0x13c4>
 80013a6: 79c1         	ldrb	r1, [r0, #0x7]
 80013a8: 7980         	ldrb	r0, [r0, #0x6]
 80013aa: ea41 2000    	orr.w	r0, r1, r0, lsl #8
 80013ae: b200         	sxth	r0, r0
 80013b0: f243 0184    	movw	r1, #0x3084
 80013b4: 4408         	add	r0, r1
 80013b6: f44f 71aa    	mov.w	r1, #0x154
 80013ba: fb90 f0f1    	sdiv	r0, r0, r1
 80013be: b200         	sxth	r0, r0
 80013c0: 4770         	bx	lr
 80013c2: 0000         	movs	r0, r0
 80013c4: 02d8         	lsls	r0, r3, #0xb
 80013c6: 2000         	movs	r0, #0x0
 80013c8: e92d 5ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 80013cc: 4891         	ldr	r0, [pc, #0x244]        @ 0x8001614 <firmware_image+0x1614>
 80013ce: 6800         	ldr	r0, [r0]
 80013d0: f7ff f982    	bl	0x80006d8 <firmware_image+0x6d8> @ imm = #-0xcfc
 80013d4: 4f90         	ldr	r7, [pc, #0x240]        @ 0x8001618 <firmware_image+0x1618>
 80013d6: 4b91         	ldr	r3, [pc, #0x244]        @ 0x800161c <firmware_image+0x161c>
 80013d8: 463a         	mov	r2, r7
 80013da: f7ff f84a    	bl	0x8000472 <firmware_image+0x472> @ imm = #-0xf6c
 80013de: 4c90         	ldr	r4, [pc, #0x240]        @ 0x8001620 <firmware_image+0x1620>
 80013e0: 4605         	mov	r5, r0
 80013e2: 460e         	mov	r6, r1
 80013e4: 6be0         	ldr	r0, [r4, #0x3c]
 80013e6: f7ff f977    	bl	0x80006d8 <firmware_image+0x6d8> @ imm = #-0xd12
 80013ea: 463a         	mov	r2, r7
 80013ec: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x8001624 <firmware_image+0x1624>
 80013ee: f7ff f840    	bl	0x8000472 <firmware_image+0x472> @ imm = #-0xf80
 80013f2: 462a         	mov	r2, r5
 80013f4: 4633         	mov	r3, r6
 80013f6: f7fe ff95    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x10d6
 80013fa: f7ff f999    	bl	0x8000730 <firmware_image+0x730> @ imm = #-0xcce
 80013fe: 63e0         	str	r0, [r4, #0x3c]
 8001400: f977 463a    	<unknown>
 8001404: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x800163c <firmware_image+0x163c>
 8001406: f7ff f840    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xf80
 800140a: 462a         	mov	r2, r5
 800140c: 4633         	mov	r3, r6
 800140e: f7fe ff95    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x10d6
 8001412: f7ff f999    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xcce
 8001416: 63e0         	str	r0, [r4, #0x3c]
 8001418: f7ff f932    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0xd9c
 800141c: f1a4 0680    	sub.w	r6, r4, #0x80
 8001420: 8470         	strh	r0, [r6, #0x22]
 8001422: 8cb1         	ldrh	r1, [r6, #0x24]
 8001424: 4408         	add	r0, r1
 8001426: 86f0         	strh	r0, [r6, #0x36]
 8001428: f9b6 303e    	ldrsh.w	r3, [r6, #0x3e]
 800142c: f640 20d9    	movw	r0, #0xad9
 8001430: 4d83         	ldr	r5, [pc, #0x20c]        @ 0x8001640 <firmware_image+0x1640>
 8001432: 4f84         	ldr	r7, [pc, #0x210]        @ 0x8001644 <firmware_image+0x1644>
 8001434: f8df 8210    	ldr.w	r8, [pc, #0x210]        @ 0x8001648 <firmware_image+0x1648>
 8001438: f8df 9210    	ldr.w	r9, [pc, #0x210]        @ 0x800164c <firmware_image+0x164c>
 800143c: f8df a210    	ldr.w	r10, [pc, #0x210]       @ 0x8001650 <firmware_image+0x1650>
 8001440: 4242         	rsbs	r2, r0, #0
 8001442: f46f 61de    	mvn	r1, #0x6f0
 8001446: 4283         	cmp	r3, r0
 8001448: dd2c         	ble	0x80014a4 <firmware_image+0x14a4> @ imm = #0x58
 800144a: f9b6 3040    	ldrsh.w	r3, [r6, #0x40]
 800144e: 4293         	cmp	r3, r2
 8001450: da28         	bge	0x80014a4 <firmware_image+0x14a4> @ imm = #0x50
 8001452: f9b6 003e    	ldrsh.w	r0, [r6, #0x3e]
 8001456: f004 ffe0    	bl	0x800641a <firmware_image+0x641a> @ imm = #0x4fc0
 800145a: 4602         	mov	r2, r0
 800145c: f9b6 0040    	ldrsh.w	r0, [r6, #0x40]
 8001460: f004 ffdb    	bl	0x800641a <firmware_image+0x641a> @ imm = #0x4fb6
 8001464: 4410         	add	r0, r2
 8001466: eb00 70d0    	add.w	r0, r0, r0, lsr #31
 800146a: eb01 0060    	add.w	r0, r1, r0, asr #1
 800146e: f7ff f8f6    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0xe14
 8001472: 2200         	movs	r2, #0x0
 8001474: 462b         	mov	r3, r5
 8001476: f7ff f808    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xff0
 800147a: 463a         	mov	r2, r7
 800147c: 4643         	mov	r3, r8
 800147e: f7ff f804    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xff8
 8001482: 4607         	mov	r7, r0
 8001484: 4688         	mov	r8, r1
 8001486: 6e70         	ldr	r0, [r6, #0x64]
 8001488: f7ff f932    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xd9c
 800148c: 464a         	mov	r2, r9
 800148e: 4653         	mov	r3, r10
 8001490: f7fe fffb    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x100a
 8001494: 463a         	mov	r2, r7
 8001496: 4643         	mov	r3, r8
 8001498: f7fe ff50    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x1160
 800149c: f7ff f954    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xd58
 80014a0: 6670         	str	r0, [r6, #0x64]
 80014a2: e03a         	b	0x800151a <firmware_image+0x151a> @ imm = #0x74
 80014a4: f9b6 303e    	ldrsh.w	r3, [r6, #0x3e]
 80014a8: 4293         	cmp	r3, r2
 80014aa: da2c         	bge	0x8001506 <firmware_image+0x1506> @ imm = #0x58
 80014ac: f9b6 2040    	ldrsh.w	r2, [r6, #0x40]
 80014b0: 4282         	cmp	r2, r0
 80014b2: dd28         	ble	0x8001506 <firmware_image+0x1506> @ imm = #0x50
 80014b4: f9b6 003e    	ldrsh.w	r0, [r6, #0x3e]
 80014b8: f004 ffaf    	bl	0x800641a <firmware_image+0x641a> @ imm = #0x4f5e
 80014bc: 4602         	mov	r2, r0
 80014be: f9b6 0040    	ldrsh.w	r0, [r6, #0x40]
 80014c2: f004 ffaa    	bl	0x800641a <firmware_image+0x641a> @ imm = #0x4f54
 80014c6: 4410         	add	r0, r2
 80014c8: eb00 70d0    	add.w	r0, r0, r0, lsr #31
 80014cc: eb01 0060    	add.w	r0, r1, r0, asr #1
 80014d0: f7ff f8c5    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0xe76
 80014d4: 2200         	movs	r2, #0x0
 80014d6: 462b         	mov	r3, r5
 80014d8: f7fe ffd7    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x1052
 80014dc: 463a         	mov	r2, r7
 80014de: 4643         	mov	r3, r8
 80014e0: f7fe ffd3    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x105a
 80014e4: 4607         	mov	r7, r0
 80014e6: 4688         	mov	r8, r1
 80014e8: 6e70         	ldr	r0, [r6, #0x64]
 80014ea: f7ff f901    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xdfe
 80014ee: 464a         	mov	r2, r9
 80014f0: 4653         	mov	r3, r10
 80014f2: f7fe ffca    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x106c
 80014f6: 463a         	mov	r2, r7
 80014f8: 4643         	mov	r3, r8
 80014fa: f7fe ffc0    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x1080
 80014fe: f7ff f923    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xdba
 8001502: 6670         	str	r0, [r6, #0x64]
 8001504: e009         	b	0x800151a <firmware_image+0x151a> @ imm = #0x12
 8001506: 6e70         	ldr	r0, [r6, #0x64]
 8001508: f7ff f8f2    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xe1c
 800150c: 4a51         	ldr	r2, [pc, #0x144]        @ 0x8001654 <firmware_image+0x1654>
 800150e: 4b52         	ldr	r3, [pc, #0x148]        @ 0x8001658 <firmware_image+0x1658>
 8001510: f7fe ffbb    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x108a
 8001514: f7ff f918    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xdd0
 8001518: 6670         	str	r0, [r6, #0x64]
 800151a: 6e70         	ldr	r0, [r6, #0x64]
 800151c: f7ff f8b0    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0xea0
 8001520: 8ef1         	ldrh	r1, [r6, #0x36]
 8001522: 4408         	add	r0, r1
 8001524: b207         	sxth	r7, r0
 8001526: 86f7         	strh	r7, [r6, #0x36]
 8001528: f996 8008    	ldrsb.w	r8, [r6, #0x8]
 800152c: 2500         	movs	r5, #0x0
 800152e: f1b8 0f03    	cmp.w	r8, #0x3
 8001532: d00c         	beq	0x800154e <firmware_image+0x154e> @ imm = #0x18
 8001534: 6225         	str	r5, [r4, #0x20]
 8001536: 6a20         	ldr	r0, [r4, #0x20]
 8001538: f7ff f8a2    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0xebc
 800153c: 4438         	add	r0, r7
 800153e: b200         	sxth	r0, r0
 8001540: 86f0         	strh	r0, [r6, #0x36]
 8001542: f1b8 0f03    	cmp.w	r8, #0x3
 8001546: d047         	beq	0x80015d8 <firmware_image+0x15d8> @ imm = #0x8e
 8001548: 63a5         	str	r5, [r4, #0x38]
 800154a: e8bd 9ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
 800154e: 78b0         	ldrb	r0, [r6, #0x2]
 8001550: f8df 9108    	ldr.w	r9, [pc, #0x108]        @ 0x800165c <firmware_image+0x165c>
 8001554: f8df a108    	ldr.w	r10, [pc, #0x108]       @ 0x8001660 <firmware_image+0x1660>
 8001558: f44f 710b    	mov.w	r1, #0x22c
 800155c: f04f 3b33    	mov.w	r11, #0x33333333
 8001560: 424a         	rsbs	r2, r1, #0
 8001562: b1b0         	cbz	r0, 0x8001592 <firmware_image+0x1592> @ imm = #0x2c
 8001564: f9b6 303e    	ldrsh.w	r3, [r6, #0x3e]
 8001568: 428b         	cmp	r3, r1
 800156a: db12         	blt	0x8001592 <firmware_image+0x1592> @ imm = #0x24
 800156c: f9b6 3040    	ldrsh.w	r3, [r6, #0x40]
 8001570: 4293         	cmp	r3, r2
 8001572: dc0e         	bgt	0x8001592 <firmware_image+0x1592> @ imm = #0x1c
 8001574: 6a20         	ldr	r0, [r4, #0x20]
 8001576: f7ff f8bb    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xe8a
 800157a: 464a         	mov	r2, r9
 800157c: 4653         	mov	r3, r10
 800157e: f7fe ff84    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x10f8
 8001582: 465a         	mov	r2, r11
 8001584: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x8001664 <firmware_image+0x1664>
 8001586: f7fe fed9    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x124e
 800158a: f7ff f8dd    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xe46
 800158e: 6220         	str	r0, [r4, #0x20]
 8001590: e7d1         	b	0x8001536 <firmware_image+0x1536> @ imm = #-0x5e
 8001592: b1b0         	cbz	r0, 0x80015c2 <firmware_image+0x15c2> @ imm = #0x2c
 8001594: f9b6 003e    	ldrsh.w	r0, [r6, #0x3e]
 8001598: 4290         	cmp	r0, r2
 800159a: dc12         	bgt	0x80015c2 <firmware_image+0x15c2> @ imm = #0x24
 800159c: f9b6 0040    	ldrsh.w	r0, [r6, #0x40]
 80015a0: 4288         	cmp	r0, r1
 80015a2: db0e         	blt	0x80015c2 <firmware_image+0x15c2> @ imm = #0x1c
 80015a4: 6a20         	ldr	r0, [r4, #0x20]
 80015a6: f7ff f8a3    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xeba
 80015aa: 464a         	mov	r2, r9
 80015ac: 4653         	mov	r3, r10
 80015ae: f7fe ff6c    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x1128
 80015b2: 465a         	mov	r2, r11
 80015b4: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x8001664 <firmware_image+0x1664>
 80015b6: f7fe ff62    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x113c
 80015ba: f7ff f8c5    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xe76
 80015be: 6220         	str	r0, [r4, #0x20]
 80015c0: e7b9         	b	0x8001536 <firmware_image+0x1536> @ imm = #-0x8e
 80015c2: 6a20         	ldr	r0, [r4, #0x20]
 80015c4: f7ff f894    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xed8
 80015c8: 464a         	mov	r2, r9
 80015ca: 4653         	mov	r3, r10
 80015cc: f7fe ff5d    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x1146
 80015d0: f7ff f8ba    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xe8c
 80015d4: 6220         	str	r0, [r4, #0x20]
 80015d6: e7ae         	b	0x8001536 <firmware_image+0x1536> @ imm = #-0xa4
 80015d8: f9b6 103e    	ldrsh.w	r1, [r6, #0x3e]
 80015dc: 2900         	cmp	r1, #0x0
 80015de: dd03         	ble	0x80015e8 <firmware_image+0x15e8> @ imm = #0x6
 80015e0: f9b6 1040    	ldrsh.w	r1, [r6, #0x40]
 80015e4: 2900         	cmp	r1, #0x0
 80015e6: db07         	blt	0x80015f8 <firmware_image+0x15f8> @ imm = #0xe
 80015e8: f9b6 103e    	ldrsh.w	r1, [r6, #0x3e]
 80015ec: 2900         	cmp	r1, #0x0
 80015ee: da0a         	bge	0x8001606 <firmware_image+0x1606> @ imm = #0x14
 80015f0: f9b6 1040    	ldrsh.w	r1, [r6, #0x40]
 80015f4: 2900         	cmp	r1, #0x0
 80015f6: dd06         	ble	0x8001606 <firmware_image+0x1606> @ imm = #0xc
 80015f8: f7ff f828    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xfb0
 80015fc: 6ba1         	ldr	r1, [r4, #0x38]
 80015fe: f7fe fdc9    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x146e
 8001602: 63a0         	str	r0, [r4, #0x38]
 8001604: e7a1         	b	0x800154a <firmware_image+0x154a> @ imm = #-0xbe
 8001606: 4918         	ldr	r1, [pc, #0x60]         @ 0x8001668 <firmware_image+0x1668>
 8001608: 6ba0         	ldr	r0, [r4, #0x38]
 800160a: 4288         	cmp	r0, r1
 800160c: dd03         	ble	0x8001616 <firmware_image+0x1616> @ imm = #0x6
 800160e: f7fe fe13    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x13da
 8001612: 63a0         	str	r0, [r4, #0x38]
 8001614: e007         	b	0x8001626 <firmware_image+0x1626> @ imm = #0xe
 8001616: 4a15         	ldr	r2, [pc, #0x54]         @ 0x800166c <firmware_image+0x166c>
 8001618: 4290         	cmp	r0, r2
 800161a: d903         	bls	0x8001624 <firmware_image+0x1624> @ imm = #0x6
 800161c: f7fe fdba    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x148c
 8001620: 63a0         	str	r0, [r4, #0x38]
 8001622: e000         	b	0x8001626 <firmware_image+0x1626> @ imm = #0x0
 8001624: 63a5         	str	r5, [r4, #0x38]
 8001626: 61a5         	str	r5, [r4, #0x18]
 8001628: e78f         	b	0x800154a <firmware_image+0x154a> @ imm = #-0xe2
 800162a: 0000         	movs	r0, r0
 800162c: 01d0         	lsls	r0, r2, #0x7
 800162e: 2000         	movs	r0, #0x0
 8001630: 999a         	ldr	r1, [sp, #0x268]
 8001632: 9999         	ldr	r1, [sp, #0x264]
 8001634: 9999         	ldr	r1, [sp, #0x264]
 8001636: 3fc9         	subs	r7, #0xc9
 8001638: 00e4         	lsls	r4, r4, #0x3
 800163a: 2000         	movs	r0, #0x0
 800163c: 9999         	ldr	r1, [sp, #0x264]
 800163e: 3fe9         	subs	r7, #0xe9
 8001640: 0000         	movs	r0, r0
 8001642: 3fe8         	subs	r7, #0xe8
 8001644: a9fc         	add	r1, sp, #0x3f0
 8001646: d2f1         	bhs	0x800162c <firmware_image+0x162c> @ imm = #-0x1e
 8001648: 624d         	str	r5, [r1, #0x24]
 800164a: 3f60         	subs	r7, #0x60
 800164c: 0e56         	lsrs	r6, r2, #0x19
 800164e: b22d         	sxth	r5, r5
 8001650: ef9d 3fef    	<unknown>
 8001654: 9581         	str	r5, [sp, #0x204]
 8001656: 8b43         	ldrh	r3, [r0, #0x1a]
 8001658: e76c         	b	0x8001534 <firmware_image+0x1534> @ imm = #-0x128
 800165a: 3fef         	subs	r7, #0xef
 800165c: 9c78         	ldr	r4, [sp, #0x1e0]
 800165e: 23a2         	movs	r3, #0xa2
 8001660: fcb9 3fef    	ldc2	p15, c3, [r9], #956
 8001664: 0000         	movs	r0, r0
 8001666: 41f0         	rors	r0, r6
 8001668: 0000         	movs	r0, r0
 800166a: c1f0         	stm	r1!, {r4, r5, r6, r7}
 800166c: 7801         	ldrb	r1, [r0]
 800166e: f64f 72ff    	movw	r2, #0xffff
 8001672: ea02 2101    	and.w	r1, r2, r1, lsl #8
 8001676: 7840         	ldrb	r0, [r0, #0x1]
 8001678: 4408         	add	r0, r1
 800167a: b280         	uxth	r0, r0
 800167c: 4770         	bx	lr
 800167e: 0000         	movs	r0, r0
 8001680: b510         	push	{r4, lr}
 8001682: 480e         	ldr	r0, [pc, #0x38]         @ 0x80016bc <firmware_image+0x16bc>
 8001684: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x80016b8 <firmware_image+0x16b8>
 8001686: 8881         	ldrh	r1, [r0, #0x4]
 8001688: 6903         	ldr	r3, [r0, #0x10]
 800168a: f834 2011    	ldrh.w	r2, [r4, r1, lsl #1]
 800168e: 1a9b         	subs	r3, r3, r2
 8001690: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x80016c0 <firmware_image+0x16c0>
 8001692: 8812         	ldrh	r2, [r2]
 8001694: f824 2011    	strh.w	r2, [r4, r1, lsl #1]
 8001698: 441a         	add	r2, r3
 800169a: 6102         	str	r2, [r0, #0x10]
 800169c: 17d3         	asrs	r3, r2, #0x1f
 800169e: eb02 6253    	add.w	r2, r2, r3, lsr #25
 80016a2: 09d2         	lsrs	r2, r2, #0x7
 80016a4: 80c2         	strh	r2, [r0, #0x6]
 80016a6: 1c49         	adds	r1, r1, #0x1
 80016a8: b289         	uxth	r1, r1
 80016aa: 8081         	strh	r1, [r0, #0x4]
 80016ac: 2980         	cmp	r1, #0x80
 80016ae: d301         	blo	0x80016b4 <firmware_image+0x16b4> @ imm = #0x2
 80016b0: 2100         	movs	r1, #0x0
 80016b2: 8081         	strh	r1, [r0, #0x4]
 80016b4: bd10         	pop	{r4, pc}
 80016b6: 0000         	movs	r0, r0
 80016b8: 0590         	lsls	r0, r2, #0x16
 80016ba: 2000         	movs	r0, #0x0
 80016bc: 0298         	lsls	r0, r3, #0xa
 80016be: 2000         	movs	r0, #0x0
 80016c0: 0266         	lsls	r6, r4, #0x9
 80016c2: 2000         	movs	r0, #0x0
 80016c4: e7fe         	b	0x80016c4 <firmware_image+0x16c4> @ imm = #-0x4
 80016c6: 0000         	movs	r0, r0
 80016c8: b510         	push	{r4, lr}
 80016ca: 480c         	ldr	r0, [pc, #0x30]         @ 0x80016fc <firmware_image+0x16fc>
 80016cc: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x80016f8 <firmware_image+0x16f8>
 80016ce: 8801         	ldrh	r1, [r0]
 80016d0: 68c3         	ldr	r3, [r0, #0xc]
 80016d2: f834 2011    	ldrh.w	r2, [r4, r1, lsl #1]
 80016d6: 1a9b         	subs	r3, r3, r2
 80016d8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x8001700 <firmware_image+0x1700>
 80016da: 8812         	ldrh	r2, [r2]
 80016dc: f824 2011    	strh.w	r2, [r4, r1, lsl #1]
 80016e0: 441a         	add	r2, r3
 80016e2: 60c2         	str	r2, [r0, #0xc]
 80016e4: 0952         	lsrs	r2, r2, #0x5
 80016e6: 8042         	strh	r2, [r0, #0x2]
 80016e8: 1c49         	adds	r1, r1, #0x1
 80016ea: b289         	uxth	r1, r1
 80016ec: 8001         	strh	r1, [r0]
 80016ee: 2920         	cmp	r1, #0x20
 80016f0: d301         	blo	0x80016f6 <firmware_image+0x16f6> @ imm = #0x2
 80016f2: 2100         	movs	r1, #0x0
 80016f4: 8001         	strh	r1, [r0]
 80016f6: bd10         	pop	{r4, pc}
 80016f8: 0550         	lsls	r0, r2, #0x15
 80016fa: 2000         	movs	r0, #0x0
 80016fc: 0298         	lsls	r0, r3, #0xa
 80016fe: 2000         	movs	r0, #0x0
 8001700: 0264         	lsls	r4, r4, #0x9
 8001702: 2000         	movs	r0, #0x0
 8001704: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8001708: 4836         	ldr	r0, [pc, #0xd8]         @ 0x80017e4 <firmware_image+0x17e4>
 800170a: 2701         	movs	r7, #0x1
 800170c: 4e36         	ldr	r6, [pc, #0xd8]         @ 0x80017e8 <firmware_image+0x17e8>
 800170e: 7800         	ldrb	r0, [r0]
 8001710: 2800         	cmp	r0, #0x0
 8001712: d026         	beq	0x8001762 <firmware_image+0x1762> @ imm = #0x4c
 8001714: 4835         	ldr	r0, [pc, #0xd4]         @ 0x80017ec <firmware_image+0x17ec>
 8001716: f242 71f6    	movw	r1, #0x27f6
 800171a: 8800         	ldrh	r0, [r0]
 800171c: 4348         	muls	r0, r1, r0
 800171e: 213f         	movs	r1, #0x3f
 8001720: eb01 30d0    	add.w	r0, r1, r0, lsr #15
 8001724: b200         	sxth	r0, r0
 8001726: 83f0         	strh	r0, [r6, #0x1e]
 8001728: 7931         	ldrb	r1, [r6, #0x4]
 800172a: b391         	cbz	r1, 0x8001792 <firmware_image+0x1792> @ imm = #0x64
 800172c: f7fe ff95    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x10d6
 8001730: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x80017f0 <firmware_image+0x17f0>
 8001732: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x80017f4 <firmware_image+0x17f4>
 8001734: f7fe fea7    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x12b2
 8001738: 4604         	mov	r4, r0
 800173a: 460d         	mov	r5, r1
 800173c: 6eb0         	ldr	r0, [r6, #0x68]
 800173e: f7fe ffd5    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x1056
 8001742: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x80017f8 <firmware_image+0x17f8>
 8001744: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x80017fc <firmware_image+0x17fc>
 8001746: f7fe fe9e    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x12c4
 800174a: 4622         	mov	r2, r4
 800174c: 462b         	mov	r3, r5
 800174e: f7fe fdf3    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x141a
 8001752: f7fe fff7    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x1012
 8001756: 66b0         	str	r0, [r6, #0x68]
 8001758: 6eb0         	ldr	r0, [r6, #0x68]
 800175a: f7fe ff8f    	bl	0x800067c <firmware_image+0x67c> @ imm = #-0x10e2
 800175e: 3096         	adds	r0, #0x96
 8001760: 8430         	strh	r0, [r6, #0x20]
 8001762: 4827         	ldr	r0, [pc, #0x9c]         @ 0x8001800 <firmware_image+0x1800>
 8001764: f242 7110    	movw	r1, #0x2710
 8001768: 8800         	ldrh	r0, [r0]
 800176a: 4341         	muls	r1, r0, r1
 800176c: f5c0 4000    	rsb.w	r0, r0, #0x8000
 8001770: fb91 f1f0    	sdiv	r1, r1, r0
 8001774: 481c         	ldr	r0, [pc, #0x70]         @ 0x80017e8 <firmware_image+0x17e8>
 8001776: 3080         	adds	r0, #0x80
 8001778: 6301         	str	r1, [r0, #0x30]
 800177a: 3880         	subs	r0, #0x80
 800177c: f5b1 5ffa    	cmp.w	r1, #0x1f40
 8001780: 8d80         	ldrh	r0, [r0, #0x2c]
 8001782: d20c         	bhs	0x800179e <firmware_image+0x179e> @ imm = #0x18
 8001784: f640 32b8    	movw	r2, #0xbb8
 8001788: 4290         	cmp	r0, r2
 800178a: d20c         	bhs	0x80017a6 <firmware_image+0x17a6> @ imm = #0x18
 800178c: 1c40         	adds	r0, r0, #0x1
 800178e: 85b0         	strh	r0, [r6, #0x2c]
 8001790: e009         	b	0x80017a6 <firmware_image+0x17a6> @ imm = #0x12
 8001792: e7ff         	b	0x8001794 <firmware_image+0x1794> @ imm = #-0x2
 8001794: f7fe ff58    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0x1150
 8001798: 66b0         	str	r0, [r6, #0x68]
 800179a: 7137         	strb	r7, [r6, #0x4]
 800179c: e7dc         	b	0x8001758 <firmware_image+0x1758> @ imm = #-0x48
 800179e: 2801         	cmp	r0, #0x1
 80017a0: d901         	bls	0x80017a6 <firmware_image+0x17a6> @ imm = #0x2
 80017a2: 1e40         	subs	r0, r0, #0x1
 80017a4: 85b0         	strh	r0, [r6, #0x2c]
 80017a6: 8db0         	ldrh	r0, [r6, #0x2c]
 80017a8: f640 3254    	movw	r2, #0xb54
 80017ac: 4290         	cmp	r0, r2
 80017ae: d900         	bls	0x80017b2 <firmware_image+0x17b2> @ imm = #0x0
 80017b0: 7177         	strb	r7, [r6, #0x5]
 80017b2: 480d         	ldr	r0, [pc, #0x34]         @ 0x80017e8 <firmware_image+0x17e8>
 80017b4: f241 7270    	movw	r2, #0x1770
 80017b8: 4291         	cmp	r1, r2
 80017ba: 8dc0         	ldrh	r0, [r0, #0x2e]
 80017bc: d205         	bhs	0x80017ca <firmware_image+0x17ca> @ imm = #0xa
 80017be: f5b0 6ffa    	cmp.w	r0, #0x7d0
 80017c2: d206         	bhs	0x80017d2 <firmware_image+0x17d2> @ imm = #0xc
 80017c4: 1c40         	adds	r0, r0, #0x1
 80017c6: 85f0         	strh	r0, [r6, #0x2e]
 80017c8: e003         	b	0x80017d2 <firmware_image+0x17d2> @ imm = #0x6
 80017ca: 2801         	cmp	r0, #0x1
 80017cc: d901         	bls	0x80017d2 <firmware_image+0x17d2> @ imm = #0x2
 80017ce: 1e40         	subs	r0, r0, #0x1
 80017d0: 85f0         	strh	r0, [r6, #0x2e]
 80017d2: 8df0         	ldrh	r0, [r6, #0x2e]
 80017d4: f240 716c    	movw	r1, #0x76c
 80017d8: 4288         	cmp	r0, r1
 80017da: d900         	bls	0x80017de <firmware_image+0x17de> @ imm = #0x0
 80017dc: 71b7         	strb	r7, [r6, #0x6]
 80017de: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 80017e2: 0000         	movs	r0, r0
 80017e4: 021e         	lsls	r6, r3, #0x8
 80017e6: 2000         	movs	r0, #0x0
 80017e8: 0064         	lsls	r4, r4, #0x1
 80017ea: 2000         	movs	r0, #0x0
 80017ec: 029a         	lsls	r2, r3, #0xa
 80017ee: 2000         	movs	r0, #0x0
 80017f0: 432d         	orrs	r5, r5
 80017f2: eb1c 36e2    	adds.w	r6, r12, r2, asr #15
 80017f6: 3f1a         	subs	r7, #0x1a
 80017f8: a71e         	adr	r7, #120 <firmware_image+0x181a>
 80017fa: 48e8         	ldr	r0, [pc, #0x3a0]        @ 0x8001b9c <firmware_image+0x1b9c>
 80017fc: ff2e 3fef    	<unknown>
 8001800: ff2e 3fef    	<unknown>
 8001804: 029e         	lsls	r6, r3, #0xa
 8001806: 2000         	movs	r0, #0x0
 8001808: 490d         	ldr	r1, [pc, #0x34]         @ 0x8001840 <firmware_image+0x1840>
 800180a: 78c8         	ldrb	r0, [r1, #0x3]
 800180c: 1c40         	adds	r0, r0, #0x1
 800180e: b2c0         	uxtb	r0, r0
 8001810: 70c8         	strb	r0, [r1, #0x3]
 8001812: 2812         	cmp	r0, #0x12
 8001814: d301         	blo	0x800181a <firmware_image+0x181a> @ imm = #0x2
 8001816: 2000         	movs	r0, #0x0
 8001818: 70c8         	strb	r0, [r1, #0x3]
 800181a: 78c8         	ldrb	r0, [r1, #0x3]
 800181c: 2805         	cmp	r0, #0x5
 800181e: d00d         	beq	0x800183c <firmware_image+0x183c> @ imm = #0x1a
 8001820: 2807         	cmp	r0, #0x7
 8001822: d00b         	beq	0x800183c <firmware_image+0x183c> @ imm = #0x16
 8001824: 2809         	cmp	r0, #0x9
 8001826: d009         	beq	0x800183c <firmware_image+0x183c> @ imm = #0x12
 8001828: 280b         	cmp	r0, #0xb
 800182a: d007         	beq	0x800183c <firmware_image+0x183c> @ imm = #0xe
 800182c: 280d         	cmp	r0, #0xd
 800182e: d005         	beq	0x800183c <firmware_image+0x183c> @ imm = #0xa
 8001830: 280f         	cmp	r0, #0xf
 8001832: d003         	beq	0x800183c <firmware_image+0x183c> @ imm = #0x6
 8001834: 2811         	cmp	r0, #0x11
 8001836: d001         	beq	0x800183c <firmware_image+0x183c> @ imm = #0x2
 8001838: f000 b8c8    	b.w	0x80019cc <firmware_image+0x19cc> @ imm = #0x190
 800183c: f000 b8d4    	b.w	0x80019e8 <firmware_image+0x19e8> @ imm = #0x1a8
 8001840: 0038         	movs	r0, r7
 8001842: 2000         	movs	r0, #0x0
 8001844: 490e         	ldr	r1, [pc, #0x38]         @ 0x8001880 <firmware_image+0x1880>
 8001846: 78c8         	ldrb	r0, [r1, #0x3]
 8001848: 1c40         	adds	r0, r0, #0x1
 800184a: b2c0         	uxtb	r0, r0
 800184c: 70c8         	strb	r0, [r1, #0x3]
 800184e: 2814         	cmp	r0, #0x14
 8001850: d301         	blo	0x8001856 <firmware_image+0x1856> @ imm = #0x2
 8001852: 2000         	movs	r0, #0x0
 8001854: 70c8         	strb	r0, [r1, #0x3]
 8001856: 78c8         	ldrb	r0, [r1, #0x3]
 8001858: 2805         	cmp	r0, #0x5
 800185a: d00f         	beq	0x800187c <firmware_image+0x187c> @ imm = #0x1e
 800185c: 2807         	cmp	r0, #0x7
 800185e: d00d         	beq	0x800187c <firmware_image+0x187c> @ imm = #0x1a
 8001860: 2809         	cmp	r0, #0x9
 8001862: d00b         	beq	0x800187c <firmware_image+0x187c> @ imm = #0x16
 8001864: 280b         	cmp	r0, #0xb
 8001866: d009         	beq	0x800187c <firmware_image+0x187c> @ imm = #0x12
 8001868: 280d         	cmp	r0, #0xd
 800186a: d007         	beq	0x800187c <firmware_image+0x187c> @ imm = #0xe
 800186c: 280f         	cmp	r0, #0xf
 800186e: d005         	beq	0x800187c <firmware_image+0x187c> @ imm = #0xa
 8001870: 2811         	cmp	r0, #0x11
 8001872: d003         	beq	0x800187c <firmware_image+0x187c> @ imm = #0x6
 8001874: 2813         	cmp	r0, #0x13
 8001876: d001         	beq	0x800187c <firmware_image+0x187c> @ imm = #0x2
 8001878: f000 b8a8    	b.w	0x80019cc <firmware_image+0x19cc> @ imm = #0x150
 800187c: f000 b8b4    	b.w	0x80019e8 <firmware_image+0x19e8> @ imm = #0x168
 8001880: 0038         	movs	r0, r7
 8001882: 2000         	movs	r0, #0x0
 8001884: 4909         	ldr	r1, [pc, #0x24]         @ 0x80018ac <firmware_image+0x18ac>
 8001886: 78c8         	ldrb	r0, [r1, #0x3]
 8001888: 1c40         	adds	r0, r0, #0x1
 800188a: b2c0         	uxtb	r0, r0
 800188c: 70c8         	strb	r0, [r1, #0x3]
 800188e: 280a         	cmp	r0, #0xa
 8001890: d301         	blo	0x8001896 <firmware_image+0x1896> @ imm = #0x2
 8001892: 2000         	movs	r0, #0x0
 8001894: 70c8         	strb	r0, [r1, #0x3]
 8001896: 78c8         	ldrb	r0, [r1, #0x3]
 8001898: 2805         	cmp	r0, #0x5
 800189a: d005         	beq	0x80018a8 <firmware_image+0x18a8> @ imm = #0xa
 800189c: 2807         	cmp	r0, #0x7
 800189e: d003         	beq	0x80018a8 <firmware_image+0x18a8> @ imm = #0x6
 80018a0: 2809         	cmp	r0, #0x9
 80018a2: d001         	beq	0x80018a8 <firmware_image+0x18a8> @ imm = #0x2
 80018a4: f000 b892    	b.w	0x80019cc <firmware_image+0x19cc> @ imm = #0x124
 80018a8: f000 b89e    	b.w	0x80019e8 <firmware_image+0x19e8> @ imm = #0x13c
 80018ac: 0038         	movs	r0, r7
 80018ae: 2000         	movs	r0, #0x0
 80018b0: 490a         	ldr	r1, [pc, #0x28]         @ 0x80018dc <firmware_image+0x18dc>
 80018b2: 78c8         	ldrb	r0, [r1, #0x3]
 80018b4: 1c40         	adds	r0, r0, #0x1
 80018b6: b2c0         	uxtb	r0, r0
 80018b8: 70c8         	strb	r0, [r1, #0x3]
 80018ba: 280c         	cmp	r0, #0xc
 80018bc: d301         	blo	0x80018c2 <firmware_image+0x18c2> @ imm = #0x2
 80018be: 2000         	movs	r0, #0x0
 80018c0: 70c8         	strb	r0, [r1, #0x3]
 80018c2: 78c8         	ldrb	r0, [r1, #0x3]
 80018c4: 2805         	cmp	r0, #0x5
 80018c6: d007         	beq	0x80018d8 <firmware_image+0x18d8> @ imm = #0xe
 80018c8: 2807         	cmp	r0, #0x7
 80018ca: d005         	beq	0x80018d8 <firmware_image+0x18d8> @ imm = #0xa
 80018cc: 2809         	cmp	r0, #0x9
 80018ce: d003         	beq	0x80018d8 <firmware_image+0x18d8> @ imm = #0x6
 80018d0: 280b         	cmp	r0, #0xb
 80018d2: d001         	beq	0x80018d8 <firmware_image+0x18d8> @ imm = #0x2
 80018d4: f000 b87a    	b.w	0x80019cc <firmware_image+0x19cc> @ imm = #0xf4
 80018d8: f000 b886    	b.w	0x80019e8 <firmware_image+0x19e8> @ imm = #0x10c
 80018dc: 0038         	movs	r0, r7
 80018de: 2000         	movs	r0, #0x0
 80018e0: b57c         	push	{r2, r3, r4, r5, r6, lr}
 80018e2: 2101         	movs	r1, #0x1
 80018e4: 0488         	lsls	r0, r1, #0x12
 80018e6: f002 fd35    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x2a6a
 80018ea: f44f 7400    	mov.w	r4, #0x200
 80018ee: 9400         	str	r4, [sp]
 80018f0: 2001         	movs	r0, #0x1
 80018f2: f88d 0004    	strb.w	r0, [sp, #0x4]
 80018f6: 2003         	movs	r0, #0x3
 80018f8: f88d 0005    	strb.w	r0, [sp, #0x5]
 80018fc: 2000         	movs	r0, #0x0
 80018fe: f88d 0006    	strb.w	r0, [sp, #0x6]
 8001902: 4d05         	ldr	r5, [pc, #0x14]         @ 0x8001918 <firmware_image+0x1918>
 8001904: 4669         	mov	r1, sp
 8001906: 4628         	mov	r0, r5
 8001908: f000 fed8    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #0xdb0
 800190c: 4621         	mov	r1, r4
 800190e: 4628         	mov	r0, r5
 8001910: f000 ff27    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xe4e
 8001914: bd7c         	pop	{r2, r3, r4, r5, r6, pc}
 8001916: 0000         	movs	r0, r0
 8001918: 0400         	lsls	r0, r0, #0x10
 800191a: 4800         	ldr	r0, [pc, #0x0]          @ 0x800191c <firmware_image+0x191c>
 800191c: f000 b986    	b.w	0x8001c2c <firmware_image+0x1c2c> @ imm = #0x30c
 8001920: b570         	push	{r4, r5, r6, lr}
 8001922: 4928         	ldr	r1, [pc, #0xa0]         @ 0x80019c4 <firmware_image+0x19c4>
 8001924: 78c8         	ldrb	r0, [r1, #0x3]
 8001926: 1c40         	adds	r0, r0, #0x1
 8001928: b2c0         	uxtb	r0, r0
 800192a: 70c8         	strb	r0, [r1, #0x3]
 800192c: 2806         	cmp	r0, #0x6
 800192e: d301         	blo	0x8001934 <firmware_image+0x1934> @ imm = #0x2
 8001930: 2000         	movs	r0, #0x0
 8001932: 70c8         	strb	r0, [r1, #0x3]
 8001934: 4d24         	ldr	r5, [pc, #0x90]         @ 0x80019c8 <firmware_image+0x19c8>
 8001936: 78ca         	ldrb	r2, [r1, #0x3]
 8001938: 016e         	lsls	r6, r5, #0x5
 800193a: f04f 4490    	mov.w	r4, #0x48000000
 800193e: 2a05         	cmp	r2, #0x5
 8001940: d01f         	beq	0x8001982 <firmware_image+0x1982> @ imm = #0x3e
 8001942: f000 f843    	bl	0x80019cc <firmware_image+0x19cc> @ imm = #0x86
 8001946: 2110         	movs	r1, #0x10
 8001948: 4628         	mov	r0, r5
 800194a: f000 ff0a    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xe14
 800194e: 2108         	movs	r1, #0x8
 8001950: 4628         	mov	r0, r5
 8001952: f000 ff06    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xe0c
 8001956: 4631         	mov	r1, r6
 8001958: 4620         	mov	r0, r4
 800195a: f000 ff02    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xe04
 800195e: 2120         	movs	r1, #0x20
 8001960: 4628         	mov	r0, r5
 8001962: f000 fefe    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xdfc
 8001966: 2180         	movs	r1, #0x80
 8001968: 4620         	mov	r0, r4
 800196a: f000 fefa    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xdf4
 800196e: 2102         	movs	r1, #0x2
 8001970: 4628         	mov	r0, r5
 8001972: f000 fef6    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xdec
 8001976: 4628         	mov	r0, r5
 8001978: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 800197c: 2104         	movs	r1, #0x4
 800197e: f000 bef0    	b.w	0x8002762 <firmware_image+0x2762> @ imm = #0xde0
 8001982: f000 f831    	bl	0x80019e8 <firmware_image+0x19e8> @ imm = #0x62
 8001986: 2110         	movs	r1, #0x10
 8001988: 4628         	mov	r0, r5
 800198a: f000 feec    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0xdd8
 800198e: 2108         	movs	r1, #0x8
 8001990: 4628         	mov	r0, r5
 8001992: f000 fee6    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xdcc
 8001996: 4631         	mov	r1, r6
 8001998: 4620         	mov	r0, r4
 800199a: f000 fee2    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0xdc4
 800199e: 2120         	movs	r1, #0x20
 80019a0: 4628         	mov	r0, r5
 80019a2: f000 fee0    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0xdc0
 80019a6: 2180         	movs	r1, #0x80
 80019a8: 4620         	mov	r0, r4
 80019aa: f000 fedc    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0xdb8
 80019ae: 2102         	movs	r1, #0x2
 80019b0: 4628         	mov	r0, r5
 80019b2: f000 fed8    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0xdb0
 80019b6: 4628         	mov	r0, r5
 80019b8: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 80019bc: 2104         	movs	r1, #0x4
 80019be: f000 bed2    	b.w	0x8002766 <firmware_image+0x2766> @ imm = #0xda4
 80019c2: 0000         	movs	r0, r0
 80019c4: 0038         	movs	r0, r7
 80019c6: 2000         	movs	r0, #0x0
 80019c8: 0400         	lsls	r0, r0, #0x10
 80019ca: 4800         	ldr	r0, [pc, #0x0]          @ 0x80019cc <firmware_image+0x19cc>
 80019cc: b510         	push	{r4, lr}
 80019ce: 2000         	movs	r0, #0x0
 80019d0: f004 f8d2    	bl	0x8005b78 <firmware_image+0x5b78> @ imm = #0x41a4
 80019d4: e8bd 4010    	pop.w	{r4, lr}
 80019d8: f44f 7100    	mov.w	r1, #0x200
 80019dc: 4801         	ldr	r0, [pc, #0x4]          @ 0x80019e4 <firmware_image+0x19e4>
 80019de: f000 bec0    	b.w	0x8002762 <firmware_image+0x2762> @ imm = #0xd80
 80019e2: 0000         	movs	r0, r0
 80019e4: 0400         	lsls	r0, r0, #0x10
 80019e6: 4800         	ldr	r0, [pc, #0x0]          @ 0x80019e8 <firmware_image+0x19e8>
 80019e8: f241 3088    	movw	r0, #0x1388
 80019ec: f004 b8c4    	b.w	0x8005b78 <firmware_image+0x5b78> @ imm = #0x4188
 80019f0: 490b         	ldr	r1, [pc, #0x2c]         @ 0x8001a20 <firmware_image+0x1a20>
 80019f2: 78c8         	ldrb	r0, [r1, #0x3]
 80019f4: 1c40         	adds	r0, r0, #0x1
 80019f6: b2c0         	uxtb	r0, r0
 80019f8: 70c8         	strb	r0, [r1, #0x3]
 80019fa: 280e         	cmp	r0, #0xe
 80019fc: d301         	blo	0x8001a02 <firmware_image+0x1a02> @ imm = #0x2
 80019fe: 2000         	movs	r0, #0x0
 8001a00: 70c8         	strb	r0, [r1, #0x3]
 8001a02: 78c8         	ldrb	r0, [r1, #0x3]
 8001a04: 2805         	cmp	r0, #0x5
 8001a06: d009         	beq	0x8001a1c <firmware_image+0x1a1c> @ imm = #0x12
 8001a08: 2807         	cmp	r0, #0x7
 8001a0a: d007         	beq	0x8001a1c <firmware_image+0x1a1c> @ imm = #0xe
 8001a0c: 2809         	cmp	r0, #0x9
 8001a0e: d005         	beq	0x8001a1c <firmware_image+0x1a1c> @ imm = #0xa
 8001a10: 280b         	cmp	r0, #0xb
 8001a12: d003         	beq	0x8001a1c <firmware_image+0x1a1c> @ imm = #0x6
 8001a14: 280d         	cmp	r0, #0xd
 8001a16: d001         	beq	0x8001a1c <firmware_image+0x1a1c> @ imm = #0x2
 8001a18: f7ff bfd8    	b.w	0x80019cc <firmware_image+0x19cc> @ imm = #-0x50
 8001a1c: f7ff bfe4    	b.w	0x80019e8 <firmware_image+0x19e8> @ imm = #-0x38
 8001a20: 0038         	movs	r0, r7
 8001a22: 2000         	movs	r0, #0x0
 8001a24: 490c         	ldr	r1, [pc, #0x30]         @ 0x8001a58 <firmware_image+0x1a58>
 8001a26: 78c8         	ldrb	r0, [r1, #0x3]
 8001a28: 1c40         	adds	r0, r0, #0x1
 8001a2a: b2c0         	uxtb	r0, r0
 8001a2c: 70c8         	strb	r0, [r1, #0x3]
 8001a2e: 2810         	cmp	r0, #0x10
 8001a30: d301         	blo	0x8001a36 <firmware_image+0x1a36> @ imm = #0x2
 8001a32: 2000         	movs	r0, #0x0
 8001a34: 70c8         	strb	r0, [r1, #0x3]
 8001a36: 78c8         	ldrb	r0, [r1, #0x3]
 8001a38: 2805         	cmp	r0, #0x5
 8001a3a: d00b         	beq	0x8001a54 <firmware_image+0x1a54> @ imm = #0x16
 8001a3c: 2807         	cmp	r0, #0x7
 8001a3e: d009         	beq	0x8001a54 <firmware_image+0x1a54> @ imm = #0x12
 8001a40: 2809         	cmp	r0, #0x9
 8001a42: d007         	beq	0x8001a54 <firmware_image+0x1a54> @ imm = #0xe
 8001a44: 280b         	cmp	r0, #0xb
 8001a46: d005         	beq	0x8001a54 <firmware_image+0x1a54> @ imm = #0xa
 8001a48: 280d         	cmp	r0, #0xd
 8001a4a: d003         	beq	0x8001a54 <firmware_image+0x1a54> @ imm = #0x6
 8001a4c: 280f         	cmp	r0, #0xf
 8001a4e: d001         	beq	0x8001a54 <firmware_image+0x1a54> @ imm = #0x2
 8001a50: f7ff bfbc    	b.w	0x80019cc <firmware_image+0x19cc> @ imm = #-0x88
 8001a54: f7ff bfc8    	b.w	0x80019e8 <firmware_image+0x19e8> @ imm = #-0x70
 8001a58: 0038         	movs	r0, r7
 8001a5a: 2000         	movs	r0, #0x0
 8001a5c: 4908         	ldr	r1, [pc, #0x20]         @ 0x8001a80 <firmware_image+0x1a80>
 8001a5e: 78c8         	ldrb	r0, [r1, #0x3]
 8001a60: 1c40         	adds	r0, r0, #0x1
 8001a62: b2c0         	uxtb	r0, r0
 8001a64: 70c8         	strb	r0, [r1, #0x3]
 8001a66: 2808         	cmp	r0, #0x8
 8001a68: d301         	blo	0x8001a6e <firmware_image+0x1a6e> @ imm = #0x2
 8001a6a: 2000         	movs	r0, #0x0
 8001a6c: 70c8         	strb	r0, [r1, #0x3]
 8001a6e: 78c8         	ldrb	r0, [r1, #0x3]
 8001a70: 2805         	cmp	r0, #0x5
 8001a72: d003         	beq	0x8001a7c <firmware_image+0x1a7c> @ imm = #0x6
 8001a74: 2807         	cmp	r0, #0x7
 8001a76: d001         	beq	0x8001a7c <firmware_image+0x1a7c> @ imm = #0x2
 8001a78: f7ff bfa8    	b.w	0x80019cc <firmware_image+0x19cc> @ imm = #-0xb0
 8001a7c: f7ff bfb4    	b.w	0x80019e8 <firmware_image+0x19e8> @ imm = #-0x98
 8001a80: 0038         	movs	r0, r7
 8001a82: 2000         	movs	r0, #0x0
 8001a84: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8001a88: 4d55         	ldr	r5, [pc, #0x154]        @ 0x8001be0 <firmware_image+0x1be0>
 8001a8a: 2601         	movs	r6, #0x1
 8001a8c: 88e8         	ldrh	r0, [r5, #0x6]
 8001a8e: 2800         	cmp	r0, #0x0
 8001a90: d009         	beq	0x8001aa6 <firmware_image+0x1aa6> @ imm = #0x12
 8001a92: 7828         	ldrb	r0, [r5]
 8001a94: b910         	cbnz	r0, 0x8001a9c <firmware_image+0x1a9c> @ imm = #0x4
 8001a96: f7ff ffa7    	bl	0x80019e8 <firmware_image+0x19e8> @ imm = #-0xb2
 8001a9a: 702e         	strb	r6, [r5]
 8001a9c: 88e8         	ldrh	r0, [r5, #0x6]
 8001a9e: 1e40         	subs	r0, r0, #0x1
 8001aa0: 80e8         	strh	r0, [r5, #0x6]
 8001aa2: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8001aa6: 484e         	ldr	r0, [pc, #0x138]        @ 0x8001be0 <firmware_image+0x1be0>
 8001aa8: 4f4e         	ldr	r7, [pc, #0x138]        @ 0x8001be4 <firmware_image+0x1be4>
 8001aaa: 2400         	movs	r4, #0x0
 8001aac: 8900         	ldrh	r0, [r0, #0x8]
 8001aae: 7839         	ldrb	r1, [r7]
 8001ab0: 1c40         	adds	r0, r0, #0x1
 8001ab2: b280         	uxth	r0, r0
 8001ab4: b171         	cbz	r1, 0x8001ad4 <firmware_image+0x1ad4> @ imm = #0x1c
 8001ab6: 8128         	strh	r0, [r5, #0x8]
 8001ab8: 287d         	cmp	r0, #0x7d
 8001aba: d9f2         	bls	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0x1c
 8001abc: 812c         	strh	r4, [r5, #0x8]
 8001abe: 07c8         	lsls	r0, r1, #0x1f
 8001ac0: d002         	beq	0x8001ac8 <firmware_image+0x1ac8> @ imm = #0x4
 8001ac2: f7ff ff91    	bl	0x80019e8 <firmware_image+0x19e8> @ imm = #-0xde
 8001ac6: e001         	b	0x8001acc <firmware_image+0x1acc> @ imm = #0x2
 8001ac8: f7ff ff80    	bl	0x80019cc <firmware_image+0x19cc> @ imm = #-0x100
 8001acc: 7838         	ldrb	r0, [r7]
 8001ace: 1e40         	subs	r0, r0, #0x1
 8001ad0: 7038         	strb	r0, [r7]
 8001ad2: e7e6         	b	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0x34
 8001ad4: 4944         	ldr	r1, [pc, #0x110]        @ 0x8001be8 <firmware_image+0x1be8>
 8001ad6: 4a45         	ldr	r2, [pc, #0x114]        @ 0x8001bec <firmware_image+0x1bec>
 8001ad8: 7809         	ldrb	r1, [r1]
 8001ada: 7812         	ldrb	r2, [r2]
 8001adc: 4311         	orrs	r1, r2
 8001ade: 4a44         	ldr	r2, [pc, #0x110]        @ 0x8001bf0 <firmware_image+0x1bf0>
 8001ae0: 7812         	ldrb	r2, [r2]
 8001ae2: 4311         	orrs	r1, r2
 8001ae4: d108         	bne	0x8001af8 <firmware_image+0x1af8> @ imm = #0x10
 8001ae6: 4943         	ldr	r1, [pc, #0x10c]        @ 0x8001bf4 <firmware_image+0x1bf4>
 8001ae8: 7809         	ldrb	r1, [r1]
 8001aea: b929         	cbnz	r1, 0x8001af8 <firmware_image+0x1af8> @ imm = #0xa
 8001aec: 4942         	ldr	r1, [pc, #0x108]        @ 0x8001bf8 <firmware_image+0x1bf8>
 8001aee: 7809         	ldrb	r1, [r1]
 8001af0: b911         	cbnz	r1, 0x8001af8 <firmware_image+0x1af8> @ imm = #0x4
 8001af2: 4942         	ldr	r1, [pc, #0x108]        @ 0x8001bfc <firmware_image+0x1bfc>
 8001af4: 7809         	ldrb	r1, [r1]
 8001af6: b139         	cbz	r1, 0x8001b08 <firmware_image+0x1b08> @ imm = #0xe
 8001af8: 8128         	strh	r0, [r5, #0x8]
 8001afa: 283c         	cmp	r0, #0x3c
 8001afc: d9d1         	bls	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0x5e
 8001afe: 812c         	strh	r4, [r5, #0x8]
 8001b00: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001b04: f7ff bf0a    	b.w	0x800191c <firmware_image+0x191c> @ imm = #-0x1ec
 8001b08: 493d         	ldr	r1, [pc, #0xf4]         @ 0x8001c00 <firmware_image+0x1c00>
 8001b0a: 7809         	ldrb	r1, [r1]
 8001b0c: b9d1         	cbnz	r1, 0x8001b44 <firmware_image+0x1b44> @ imm = #0x34
 8001b0e: 493d         	ldr	r1, [pc, #0xf4]         @ 0x8001c04 <firmware_image+0x1c04>
 8001b10: 6809         	ldr	r1, [r1]
 8001b12: f5b1 5ffa    	cmp.w	r1, #0x1f40
 8001b16: d315         	blo	0x8001b44 <firmware_image+0x1b44> @ imm = #0x2a
 8001b18: 88a9         	ldrh	r1, [r5, #0x4]
 8001b1a: b199         	cbz	r1, 0x8001b44 <firmware_image+0x1b44> @ imm = #0x26
 8001b1c: 493a         	ldr	r1, [pc, #0xe8]         @ 0x8001c08 <firmware_image+0x1c08>
 8001b1e: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x8001c0c <firmware_image+0x1c0c>
 8001b20: 7809         	ldrb	r1, [r1]
 8001b22: 7812         	ldrb	r2, [r2]
 8001b24: 4311         	orrs	r1, r2
 8001b26: d002         	beq	0x8001b2e <firmware_image+0x1b2e> @ imm = #0x4
 8001b28: 4939         	ldr	r1, [pc, #0xe4]         @ 0x8001c10 <firmware_image+0x1c10>
 8001b2a: 7809         	ldrb	r1, [r1]
 8001b2c: b191         	cbz	r1, 0x8001b54 <firmware_image+0x1b54> @ imm = #0x24
 8001b2e: 4939         	ldr	r1, [pc, #0xe4]         @ 0x8001c14 <firmware_image+0x1c14>
 8001b30: 7809         	ldrb	r1, [r1]
 8001b32: b1b9         	cbz	r1, 0x8001b64 <firmware_image+0x1b64> @ imm = #0x2e
 8001b34: 8128         	strh	r0, [r5, #0x8]
 8001b36: 283c         	cmp	r0, #0x3c
 8001b38: d9b3         	bls	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0x9a
 8001b3a: 812c         	strh	r4, [r5, #0x8]
 8001b3c: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001b40: f7ff bea0    	b.w	0x8001884 <firmware_image+0x1884> @ imm = #-0x2c0
 8001b44: 8128         	strh	r0, [r5, #0x8]
 8001b46: 2805         	cmp	r0, #0x5
 8001b48: d9ab         	bls	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0xaa
 8001b4a: 812c         	strh	r4, [r5, #0x8]
 8001b4c: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001b50: f7ff bee6    	b.w	0x8001920 <firmware_image+0x1920> @ imm = #-0x234
 8001b54: 8128         	strh	r0, [r5, #0x8]
 8001b56: 283c         	cmp	r0, #0x3c
 8001b58: d9a3         	bls	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0xba
 8001b5a: 812c         	strh	r4, [r5, #0x8]
 8001b5c: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001b60: f7ff bf7c    	b.w	0x8001a5c <firmware_image+0x1a5c> @ imm = #-0x108
 8001b64: 492c         	ldr	r1, [pc, #0xb0]         @ 0x8001c18 <firmware_image+0x1c18>
 8001b66: 7809         	ldrb	r1, [r1]
 8001b68: b139         	cbz	r1, 0x8001b7a <firmware_image+0x1b7a> @ imm = #0xe
 8001b6a: 8128         	strh	r0, [r5, #0x8]
 8001b6c: 283c         	cmp	r0, #0x3c
 8001b6e: d998         	bls	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0xd0
 8001b70: 812c         	strh	r4, [r5, #0x8]
 8001b72: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001b76: f7ff be9b    	b.w	0x80018b0 <firmware_image+0x18b0> @ imm = #-0x2ca
 8001b7a: 4928         	ldr	r1, [pc, #0xa0]         @ 0x8001c1c <firmware_image+0x1c1c>
 8001b7c: 7809         	ldrb	r1, [r1]
 8001b7e: b139         	cbz	r1, 0x8001b90 <firmware_image+0x1b90> @ imm = #0xe
 8001b80: 8128         	strh	r0, [r5, #0x8]
 8001b82: 283c         	cmp	r0, #0x3c
 8001b84: d98d         	bls	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0xe6
 8001b86: 812c         	strh	r4, [r5, #0x8]
 8001b88: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001b8c: f7ff bf30    	b.w	0x80019f0 <firmware_image+0x19f0> @ imm = #-0x1a0
 8001b90: 4923         	ldr	r1, [pc, #0x8c]         @ 0x8001c20 <firmware_image+0x1c20>
 8001b92: 7809         	ldrb	r1, [r1]
 8001b94: b139         	cbz	r1, 0x8001ba6 <firmware_image+0x1ba6> @ imm = #0xe
 8001b96: 8128         	strh	r0, [r5, #0x8]
 8001b98: 283c         	cmp	r0, #0x3c
 8001b9a: d982         	bls	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0xfc
 8001b9c: 812c         	strh	r4, [r5, #0x8]
 8001b9e: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001ba2: f7ff bf3f    	b.w	0x8001a24 <firmware_image+0x1a24> @ imm = #-0x182
 8001ba6: 491f         	ldr	r1, [pc, #0x7c]         @ 0x8001c24 <firmware_image+0x1c24>
 8001ba8: 7809         	ldrb	r1, [r1]
 8001baa: b139         	cbz	r1, 0x8001bbc <firmware_image+0x1bbc> @ imm = #0xe
 8001bac: 8128         	strh	r0, [r5, #0x8]
 8001bae: 283c         	cmp	r0, #0x3c
 8001bb0: d98f         	bls	0x8001ad2 <firmware_image+0x1ad2> @ imm = #-0xe2
 8001bb2: 812c         	strh	r4, [r5, #0x8]
 8001bb4: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001bb8: f7ff be26    	b.w	0x8001808 <firmware_image+0x1808> @ imm = #-0x3b4
 8001bbc: 491a         	ldr	r1, [pc, #0x68]         @ 0x8001c28 <firmware_image+0x1c28>
 8001bbe: 7809         	ldrb	r1, [r1]
 8001bc0: b139         	cbz	r1, 0x8001bd2 <firmware_image+0x1bd2> @ imm = #0xe
 8001bc2: 8128         	strh	r0, [r5, #0x8]
 8001bc4: 283c         	cmp	r0, #0x3c
 8001bc6: d984         	bls	0x8001ad2 <firmware_image+0x1ad2> @ imm = #-0xf8
 8001bc8: 812c         	strh	r4, [r5, #0x8]
 8001bca: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8001bce: f7ff be39    	b.w	0x8001844 <firmware_image+0x1844> @ imm = #-0x38e
 8001bd2: f7ff fefb    	bl	0x80019cc <firmware_image+0x19cc> @ imm = #-0x20a
 8001bd6: 706e         	strb	r6, [r5, #0x1]
 8001bd8: 207e         	movs	r0, #0x7e
 8001bda: 8128         	strh	r0, [r5, #0x8]
 8001bdc: 702c         	strb	r4, [r5]
 8001bde: e760         	b	0x8001aa2 <firmware_image+0x1aa2> @ imm = #-0x140
 8001be0: 0038         	movs	r0, r7
 8001be2: 2000         	movs	r0, #0x0
 8001be4: 021f         	lsls	r7, r3, #0x8
 8001be6: 2000         	movs	r0, #0x0
 8001be8: 007c         	lsls	r4, r7, #0x1
 8001bea: 2000         	movs	r0, #0x0
 8001bec: 007b         	lsls	r3, r7, #0x1
 8001bee: 2000         	movs	r0, #0x0
 8001bf0: 0066         	lsls	r6, r4, #0x1
 8001bf2: 2000         	movs	r0, #0x0
 8001bf4: 0077         	lsls	r7, r6, #0x1
 8001bf6: 2000         	movs	r0, #0x0
 8001bf8: 0078         	lsls	r0, r7, #0x1
 8001bfa: 2000         	movs	r0, #0x0
 8001bfc: 013c         	lsls	r4, r7, #0x4
 8001bfe: 2000         	movs	r0, #0x0
 8001c00: 0000         	movs	r0, r0
 8001c02: 2000         	movs	r0, #0x0
 8001c04: 0114         	lsls	r4, r2, #0x4
 8001c06: 2000         	movs	r0, #0x0
 8001c08: 0079         	lsls	r1, r7, #0x1
 8001c0a: 2000         	movs	r0, #0x0
 8001c0c: 007a         	lsls	r2, r7, #0x1
 8001c0e: 2000         	movs	r0, #0x0
 8001c10: 0198         	lsls	r0, r3, #0x6
 8001c12: 2000         	movs	r0, #0x0
 8001c14: 0073         	lsls	r3, r6, #0x1
 8001c16: 2000         	movs	r0, #0x0
 8001c18: 0074         	lsls	r4, r6, #0x1
 8001c1a: 2000         	movs	r0, #0x0
 8001c1c: 0075         	lsls	r5, r6, #0x1
 8001c1e: 2000         	movs	r0, #0x0
 8001c20: 0076         	lsls	r6, r6, #0x1
 8001c22: 2000         	movs	r0, #0x0
 8001c24: 0196         	lsls	r6, r2, #0x6
 8001c26: 2000         	movs	r0, #0x0
 8001c28: 0195         	lsls	r5, r2, #0x6
 8001c2a: 2000         	movs	r0, #0x0
 8001c2c: 4805         	ldr	r0, [pc, #0x14]         @ 0x8001c44 <firmware_image+0x1c44>
 8001c2e: 7841         	ldrb	r1, [r0, #0x1]
 8001c30: 2900         	cmp	r1, #0x0
 8001c32: d003         	beq	0x8001c3c <firmware_image+0x1c3c> @ imm = #0x6
 8001c34: 2100         	movs	r1, #0x0
 8001c36: 7041         	strb	r1, [r0, #0x1]
 8001c38: f7ff bed6    	b.w	0x80019e8 <firmware_image+0x19e8> @ imm = #-0x254
 8001c3c: 2101         	movs	r1, #0x1
 8001c3e: 7041         	strb	r1, [r0, #0x1]
 8001c40: f7ff bec4    	b.w	0x80019cc <firmware_image+0x19cc> @ imm = #-0x278
 8001c44: 0038         	movs	r0, r7
 8001c46: 2000         	movs	r0, #0x0
 8001c48: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x8001c68 <firmware_image+0x1c68>
 8001c4a: 4808         	ldr	r0, [pc, #0x20]         @ 0x8001c6c <firmware_image+0x1c6c>
 8001c4c: f44f 7100    	mov.w	r1, #0x200
 8001c50: 7893         	ldrb	r3, [r2, #0x2]
 8001c52: 2b00         	cmp	r3, #0x0
 8001c54: d003         	beq	0x8001c5e <firmware_image+0x1c5e> @ imm = #0x6
 8001c56: 2300         	movs	r3, #0x0
 8001c58: 7093         	strb	r3, [r2, #0x2]
 8001c5a: f000 bd84    	b.w	0x8002766 <firmware_image+0x2766> @ imm = #0xb08
 8001c5e: 2301         	movs	r3, #0x1
 8001c60: 7093         	strb	r3, [r2, #0x2]
 8001c62: f000 bd7e    	b.w	0x8002762 <firmware_image+0x2762> @ imm = #0xafc
 8001c66: 0000         	movs	r0, r0
 8001c68: 0038         	movs	r0, r7
 8001c6a: 2000         	movs	r0, #0x0
 8001c6c: 0400         	lsls	r0, r0, #0x10
 8001c6e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8001c70 <firmware_image+0x1c70>
 8001c70: b51c         	push	{r2, r3, r4, lr}
 8001c72: 2101         	movs	r1, #0x1
 8001c74: 0448         	lsls	r0, r1, #0x11
 8001c76: f002 fb6d    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x26da
 8001c7a: 2020         	movs	r0, #0x20
 8001c7c: 9000         	str	r0, [sp]
 8001c7e: 2000         	movs	r0, #0x0
 8001c80: f88d 0004    	strb.w	r0, [sp, #0x4]
 8001c84: 2103         	movs	r1, #0x3
 8001c86: f88d 1005    	strb.w	r1, [sp, #0x5]
 8001c8a: f88d 0006    	strb.w	r0, [sp, #0x6]
 8001c8e: 2001         	movs	r0, #0x1
 8001c90: f88d 0007    	strb.w	r0, [sp, #0x7]
 8001c94: 4669         	mov	r1, sp
 8001c96: f04f 4090    	mov.w	r0, #0x48000000
 8001c9a: f000 fd0f    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #0xa1e
 8001c9e: bd1c         	pop	{r2, r3, r4, pc}
 8001ca0: b510         	push	{r4, lr}
 8001ca2: 2120         	movs	r1, #0x20
 8001ca4: f04f 4090    	mov.w	r0, #0x48000000
 8001ca8: f000 fd54    	bl	0x8002754 <firmware_image+0x2754> @ imm = #0xaa8
 8001cac: 4917         	ldr	r1, [pc, #0x5c]         @ 0x8001d0c <firmware_image+0x1d0c>
 8001cae: 2300         	movs	r3, #0x0
 8001cb0: 2401         	movs	r4, #0x1
 8001cb2: 780a         	ldrb	r2, [r1]
 8001cb4: b122         	cbz	r2, 0x8001cc0 <firmware_image+0x1cc0> @ imm = #0x8
 8001cb6: 2a01         	cmp	r2, #0x1
 8001cb8: d007         	beq	0x8001cca <firmware_image+0x1cca> @ imm = #0xe
 8001cba: 2a02         	cmp	r2, #0x2
 8001cbc: d111         	bne	0x8001ce2 <firmware_image+0x1ce2> @ imm = #0x22
 8001cbe: e00b         	b	0x8001cd8 <firmware_image+0x1cd8> @ imm = #0x16
 8001cc0: b108         	cbz	r0, 0x8001cc6 <firmware_image+0x1cc6> @ imm = #0x2
 8001cc2: 704b         	strb	r3, [r1, #0x1]
 8001cc4: e00d         	b	0x8001ce2 <firmware_image+0x1ce2> @ imm = #0x1a
 8001cc6: 700c         	strb	r4, [r1]
 8001cc8: e00b         	b	0x8001ce2 <firmware_image+0x1ce2> @ imm = #0x16
 8001cca: b108         	cbz	r0, 0x8001cd0 <firmware_image+0x1cd0> @ imm = #0x2
 8001ccc: 700b         	strb	r3, [r1]
 8001cce: e008         	b	0x8001ce2 <firmware_image+0x1ce2> @ imm = #0x10
 8001cd0: 704c         	strb	r4, [r1, #0x1]
 8001cd2: 2002         	movs	r0, #0x2
 8001cd4: 7008         	strb	r0, [r1]
 8001cd6: e004         	b	0x8001ce2 <firmware_image+0x1ce2> @ imm = #0x8
 8001cd8: b110         	cbz	r0, 0x8001ce0 <firmware_image+0x1ce0> @ imm = #0x4
 8001cda: 700b         	strb	r3, [r1]
 8001cdc: 704b         	strb	r3, [r1, #0x1]
 8001cde: e000         	b	0x8001ce2 <firmware_image+0x1ce2> @ imm = #0x0
 8001ce0: 704c         	strb	r4, [r1, #0x1]
 8001ce2: 784a         	ldrb	r2, [r1, #0x1]
 8001ce4: 480a         	ldr	r0, [pc, #0x28]         @ 0x8001d10 <firmware_image+0x1d10>
 8001ce6: 2a01         	cmp	r2, #0x1
 8001ce8: d003         	beq	0x8001cf2 <firmware_image+0x1cf2> @ imm = #0x6
 8001cea: 7800         	ldrb	r0, [r0]
 8001cec: b138         	cbz	r0, 0x8001cfe <firmware_image+0x1cfe> @ imm = #0xe
 8001cee: 70cb         	strb	r3, [r1, #0x3]
 8001cf0: e006         	b	0x8001d00 <firmware_image+0x1d00> @ imm = #0xc
 8001cf2: 7800         	ldrb	r0, [r0]
 8001cf4: b108         	cbz	r0, 0x8001cfa <firmware_image+0x1cfa> @ imm = #0x2
 8001cf6: 70cc         	strb	r4, [r1, #0x3]
 8001cf8: e002         	b	0x8001d00 <firmware_image+0x1d00> @ imm = #0x4
 8001cfa: 710c         	strb	r4, [r1, #0x4]
 8001cfc: e000         	b	0x8001d00 <firmware_image+0x1d00> @ imm = #0x0
 8001cfe: 710b         	strb	r3, [r1, #0x4]
 8001d00: 78c8         	ldrb	r0, [r1, #0x3]
 8001d02: 790a         	ldrb	r2, [r1, #0x4]
 8001d04: 4310         	orrs	r0, r2
 8001d06: 7088         	strb	r0, [r1, #0x2]
 8001d08: bd10         	pop	{r4, pc}
 8001d0a: 0000         	movs	r0, r0
 8001d0c: 0165         	lsls	r5, r4, #0x5
 8001d0e: 2000         	movs	r0, #0x0
 8001d10: 021e         	lsls	r6, r3, #0x8
 8001d12: 2000         	movs	r0, #0x0
 8001d14: 6803         	ldr	r3, [r0]
 8001d16: 428b         	cmp	r3, r1
 8001d18: da01         	bge	0x8001d1e <firmware_image+0x1d1e> @ imm = #0x2
 8001d1a: 6001         	str	r1, [r0]
 8001d1c: 4770         	bx	lr
 8001d1e: 4293         	cmp	r3, r2
 8001d20: ddfc         	ble	0x8001d1c <firmware_image+0x1d1c> @ imm = #-0x8
 8001d22: 6002         	str	r2, [r0]
 8001d24: 4770         	bx	lr
 8001d26: 0000         	movs	r0, r0
 8001d28: b501         	push	{r0, lr}
 8001d2a: b081         	sub	sp, #0x4
 8001d2c: f9bd 1004    	ldrsh.w	r1, [sp, #0x4]
 8001d30: f8ad 1000    	strh.w	r1, [sp]
 8001d34: f644 10e6    	movw	r0, #0x49e6
 8001d38: 4341         	muls	r1, r0, r1
 8001d3a: f9bd 0006    	ldrsh.w	r0, [sp, #0x6]
 8001d3e: f644 12e6    	movw	r2, #0x49e6
 8001d42: 4350         	muls	r0, r2, r0
 8001d44: 4401         	add	r1, r0
 8001d46: 4408         	add	r0, r1
 8001d48: 4240         	rsbs	r0, r0, #0
 8001d4a: 17c1         	asrs	r1, r0, #0x1f
 8001d4c: eb00 4051    	add.w	r0, r0, r1, lsr #17
 8001d50: 13c0         	asrs	r0, r0, #0xf
 8001d52: 490a         	ldr	r1, [pc, #0x28]         @ 0x8001d7c <firmware_image+0x1d7c>
 8001d54: f5b0 4f00    	cmp.w	r0, #0x8000
 8001d58: db01         	blt	0x8001d5e <firmware_image+0x1d5e> @ imm = #0x2
 8001d5a: 0c48         	lsrs	r0, r1, #0x11
 8001d5c: e004         	b	0x8001d68 <firmware_image+0x1d68> @ imm = #0x8
 8001d5e: 4288         	cmp	r0, r1
 8001d60: da01         	bge	0x8001d66 <firmware_image+0x1d66> @ imm = #0x2
 8001d62: 4608         	mov	r0, r1
 8001d64: e000         	b	0x8001d68 <firmware_image+0x1d68> @ imm = #0x0
 8001d66: b200         	sxth	r0, r0
 8001d68: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8001d6c: 4288         	cmp	r0, r1
 8001d6e: d103         	bne	0x8001d78 <firmware_image+0x1d78> @ imm = #0x6
 8001d70: f248 0001    	movw	r0, #0x8001
 8001d74: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8001d78: 9800         	ldr	r0, [sp]
 8001d7a: bd0c         	pop	{r2, r3, pc}
 8001d7c: 8000         	strh	r0, [r0]
 8001d7e: ffff e92d    	<unknown>
 8001d82: 47f0         	blx	lr
 8001d84: 489b         	ldr	r0, [pc, #0x26c]        @ 0x8001ff4 <firmware_image+0x1ff4>
 8001d86: 4f9e         	ldr	r7, [pc, #0x278]        @ 0x8002000 <firmware_image+0x2000>
 8001d88: 4e9e         	ldr	r6, [pc, #0x278]        @ 0x8002004 <firmware_image+0x2004>
 8001d8a: f9b0 3000    	ldrsh.w	r3, [r0]
 8001d8e: 489b         	ldr	r0, [pc, #0x26c]        @ 0x8001ffc <firmware_image+0x1ffc>
 8001d90: f44f 6a61    	mov.w	r10, #0xe10
 8001d94: 4c98         	ldr	r4, [pc, #0x260]        @ 0x8001ff8 <firmware_image+0x1ff8>
 8001d96: 7800         	ldrb	r0, [r0]
 8001d98: 88b2         	ldrh	r2, [r6, #0x4]
 8001d9a: 6839         	ldr	r1, [r7]
 8001d9c: f44f 4800    	mov.w	r8, #0x8000
 8001da0: f04f 4990    	mov.w	r9, #0x48000000
 8001da4: f44f 55fa    	mov.w	r5, #0x1f40
 8001da8: 4553         	cmp	r3, r10
 8001daa: dd67         	ble	0x8001e7c <firmware_image+0x1e7c> @ imm = #0xce
 8001dac: f8df c258    	ldr.w	r12, [pc, #0x258]       @ 0x8002008 <firmware_image+0x2008>
 8001db0: f89c c000    	ldrb.w	r12, [r12]
 8001db4: f1bc 0f01    	cmp.w	r12, #0x1
 8001db8: d060         	beq	0x8001e7c <firmware_image+0x1e7c> @ imm = #0xc0
 8001dba: 42a9         	cmp	r1, r5
 8001dbc: d95e         	bls	0x8001e7c <firmware_image+0x1e7c> @ imm = #0xbc
 8001dbe: 2801         	cmp	r0, #0x1
 8001dc0: d05c         	beq	0x8001e7c <firmware_image+0x1e7c> @ imm = #0xb8
 8001dc2: 2a10         	cmp	r2, #0x10
 8001dc4: d033         	beq	0x8001e2e <firmware_image+0x1e2e> @ imm = #0x66
 8001dc6: dc06         	bgt	0x8001dd6 <firmware_image+0x1dd6> @ imm = #0xc
 8001dc8: 2a01         	cmp	r2, #0x1
 8001dca: d009         	beq	0x8001de0 <firmware_image+0x1de0> @ imm = #0x12
 8001dcc: 2a06         	cmp	r2, #0x6
 8001dce: d014         	beq	0x8001dfa <firmware_image+0x1dfa> @ imm = #0x28
 8001dd0: 2a0b         	cmp	r2, #0xb
 8001dd2: d111         	bne	0x8001df8 <firmware_image+0x1df8> @ imm = #0x22
 8001dd4: e01e         	b	0x8001e14 <firmware_image+0x1e14> @ imm = #0x3c
 8001dd6: 2a15         	cmp	r2, #0x15
 8001dd8: d036         	beq	0x8001e48 <firmware_image+0x1e48> @ imm = #0x6c
 8001dda: 2a1a         	cmp	r2, #0x1a
 8001ddc: d1f9         	bne	0x8001dd2 <firmware_image+0x1dd2> @ imm = #-0xe
 8001dde: e040         	b	0x8001e62 <firmware_image+0x1e62> @ imm = #0x80
 8001de0: 2110         	movs	r1, #0x10
 8001de2: 4620         	mov	r0, r4
 8001de4: f000 fcbd    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x97a
 8001de8: 2108         	movs	r1, #0x8
 8001dea: 4620         	mov	r0, r4
 8001dec: f000 fcbb    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x976
 8001df0: 4641         	mov	r1, r8
 8001df2: 4648         	mov	r0, r9
 8001df4: f000 fcb5    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x96a
 8001df8: e0e4         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x1c8
 8001dfa: 2110         	movs	r1, #0x10
 8001dfc: 4620         	mov	r0, r4
 8001dfe: f000 fcb0    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x960
 8001e02: 2108         	movs	r1, #0x8
 8001e04: 4620         	mov	r0, r4
 8001e06: f000 fcac    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x958
 8001e0a: 4641         	mov	r1, r8
 8001e0c: 4648         	mov	r0, r9
 8001e0e: f000 fcaa    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x954
 8001e12: e0d7         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x1ae
 8001e14: 2110         	movs	r1, #0x10
 8001e16: 4620         	mov	r0, r4
 8001e18: f000 fca5    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x94a
 8001e1c: 2108         	movs	r1, #0x8
 8001e1e: 4620         	mov	r0, r4
 8001e20: f000 fc9f    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x93e
 8001e24: 4641         	mov	r1, r8
 8001e26: 4648         	mov	r0, r9
 8001e28: f000 fc9b    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x936
 8001e2c: e0ca         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x194
 8001e2e: 2110         	movs	r1, #0x10
 8001e30: 4620         	mov	r0, r4
 8001e32: f000 fc98    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x930
 8001e36: 2108         	movs	r1, #0x8
 8001e38: 4620         	mov	r0, r4
 8001e3a: f000 fc94    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x928
 8001e3e: 4641         	mov	r1, r8
 8001e40: 4648         	mov	r0, r9
 8001e42: f000 fc8e    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x91c
 8001e46: e0bd         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x17a
 8001e48: 2110         	movs	r1, #0x10
 8001e4a: 4620         	mov	r0, r4
 8001e4c: f000 fc8b    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x916
 8001e50: 2108         	movs	r1, #0x8
 8001e52: 4620         	mov	r0, r4
 8001e54: f000 fc85    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x90a
 8001e58: 4641         	mov	r1, r8
 8001e5a: 4648         	mov	r0, r9
 8001e5c: f000 fc83    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x906
 8001e60: e0b0         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x160
 8001e62: 2110         	movs	r1, #0x10
 8001e64: 4620         	mov	r0, r4
 8001e66: f000 fc7c    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x8f8
 8001e6a: 2108         	movs	r1, #0x8
 8001e6c: 4620         	mov	r0, r4
 8001e6e: f000 fc7a    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x8f4
 8001e72: 4641         	mov	r1, r8
 8001e74: 4648         	mov	r0, r9
 8001e76: f000 fc76    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x8ec
 8001e7a: e0a3         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x146
 8001e7c: f8df c18c    	ldr.w	r12, [pc, #0x18c]       @ 0x800200c <firmware_image+0x200c>
 8001e80: 4553         	cmp	r3, r10
 8001e82: f89c c000    	ldrb.w	r12, [r12]
 8001e86: da2d         	bge	0x8001ee4 <firmware_image+0x1ee4> @ imm = #0x5a
 8001e88: f1bc 0f01    	cmp.w	r12, #0x1
 8001e8c: d02a         	beq	0x8001ee4 <firmware_image+0x1ee4> @ imm = #0x54
 8001e8e: 42a9         	cmp	r1, r5
 8001e90: d928         	bls	0x8001ee4 <firmware_image+0x1ee4> @ imm = #0x50
 8001e92: 2801         	cmp	r0, #0x1
 8001e94: d026         	beq	0x8001ee4 <firmware_image+0x1ee4> @ imm = #0x4c
 8001e96: 2a01         	cmp	r2, #0x1
 8001e98: d00a         	beq	0x8001eb0 <firmware_image+0x1eb0> @ imm = #0x14
 8001e9a: 2a0b         	cmp	r2, #0xb
 8001e9c: d008         	beq	0x8001eb0 <firmware_image+0x1eb0> @ imm = #0x10
 8001e9e: 2a15         	cmp	r2, #0x15
 8001ea0: d006         	beq	0x8001eb0 <firmware_image+0x1eb0> @ imm = #0xc
 8001ea2: 2a06         	cmp	r2, #0x6
 8001ea4: d011         	beq	0x8001eca <firmware_image+0x1eca> @ imm = #0x22
 8001ea6: 2a10         	cmp	r2, #0x10
 8001ea8: d00f         	beq	0x8001eca <firmware_image+0x1eca> @ imm = #0x1e
 8001eaa: 2a1a         	cmp	r2, #0x1a
 8001eac: d00d         	beq	0x8001eca <firmware_image+0x1eca> @ imm = #0x1a
 8001eae: e089         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x112
 8001eb0: 2110         	movs	r1, #0x10
 8001eb2: 4620         	mov	r0, r4
 8001eb4: f000 fc55    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x8aa
 8001eb8: 2108         	movs	r1, #0x8
 8001eba: 4620         	mov	r0, r4
 8001ebc: f000 fc53    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x8a6
 8001ec0: 4641         	mov	r1, r8
 8001ec2: 4648         	mov	r0, r9
 8001ec4: f000 fc4d    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x89a
 8001ec8: e07c         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0xf8
 8001eca: 2110         	movs	r1, #0x10
 8001ecc: 4620         	mov	r0, r4
 8001ece: f000 fc48    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x890
 8001ed2: 2108         	movs	r1, #0x8
 8001ed4: 4620         	mov	r0, r4
 8001ed6: f000 fc44    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x888
 8001eda: 4641         	mov	r1, r8
 8001edc: 4648         	mov	r0, r9
 8001ede: f000 fc40    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x880
 8001ee2: e06f         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0xde
 8001ee4: d032         	beq	0x8001f4c <firmware_image+0x1f4c> @ imm = #0x64
 8001ee6: 42a9         	cmp	r1, r5
 8001ee8: d930         	bls	0x8001f4c <firmware_image+0x1f4c> @ imm = #0x60
 8001eea: 2801         	cmp	r0, #0x1
 8001eec: d02e         	beq	0x8001f4c <firmware_image+0x1f4c> @ imm = #0x5c
 8001eee: 2a01         	cmp	r2, #0x1
 8001ef0: d012         	beq	0x8001f18 <firmware_image+0x1f18> @ imm = #0x24
 8001ef2: 2a07         	cmp	r2, #0x7
 8001ef4: d010         	beq	0x8001f18 <firmware_image+0x1f18> @ imm = #0x20
 8001ef6: 2a0d         	cmp	r2, #0xd
 8001ef8: d00e         	beq	0x8001f18 <firmware_image+0x1f18> @ imm = #0x1c
 8001efa: 2a13         	cmp	r2, #0x13
 8001efc: d00c         	beq	0x8001f18 <firmware_image+0x1f18> @ imm = #0x18
 8001efe: 2a19         	cmp	r2, #0x19
 8001f00: d00a         	beq	0x8001f18 <firmware_image+0x1f18> @ imm = #0x14
 8001f02: 2a04         	cmp	r2, #0x4
 8001f04: d015         	beq	0x8001f32 <firmware_image+0x1f32> @ imm = #0x2a
 8001f06: 2a0a         	cmp	r2, #0xa
 8001f08: d013         	beq	0x8001f32 <firmware_image+0x1f32> @ imm = #0x26
 8001f0a: 2a10         	cmp	r2, #0x10
 8001f0c: d011         	beq	0x8001f32 <firmware_image+0x1f32> @ imm = #0x22
 8001f0e: 2a16         	cmp	r2, #0x16
 8001f10: d00f         	beq	0x8001f32 <firmware_image+0x1f32> @ imm = #0x1e
 8001f12: 2a1c         	cmp	r2, #0x1c
 8001f14: d00d         	beq	0x8001f32 <firmware_image+0x1f32> @ imm = #0x1a
 8001f16: e053         	b	0x8001fc0 <firmware_image+0x1fc0> @ imm = #0xa6
 8001f18: 2110         	movs	r1, #0x10
 8001f1a: 4620         	mov	r0, r4
 8001f1c: f000 fc1f    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x83e
 8001f20: 2108         	movs	r1, #0x8
 8001f22: 4620         	mov	r0, r4
 8001f24: f000 fc1d    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x83a
 8001f28: 4641         	mov	r1, r8
 8001f2a: 4648         	mov	r0, r9
 8001f2c: f000 fc17    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x82e
 8001f30: e046         	b	0x8001fc0 <firmware_image+0x1fc0> @ imm = #0x8c
 8001f32: 2110         	movs	r1, #0x10
 8001f34: 4620         	mov	r0, r4
 8001f36: f000 fc12    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x824
 8001f3a: 2108         	movs	r1, #0x8
 8001f3c: 4620         	mov	r0, r4
 8001f3e: f000 fc0e    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x81c
 8001f42: 4641         	mov	r1, r8
 8001f44: 4648         	mov	r0, r9
 8001f46: f000 fc0a    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x814
 8001f4a: e039         	b	0x8001fc0 <firmware_image+0x1fc0> @ imm = #0x72
 8001f4c: b358         	cbz	r0, 0x8001fa6 <firmware_image+0x1fa6> @ imm = #0x56
 8001f4e: 42a9         	cmp	r1, r5
 8001f50: d936         	bls	0x8001fc0 <firmware_image+0x1fc0> @ imm = #0x6c
 8001f52: f241 00cc    	movw	r0, #0x10cc
 8001f56: 4283         	cmp	r3, r0
 8001f58: da26         	bge	0x8001fa8 <firmware_image+0x1fa8> @ imm = #0x4c
 8001f5a: 2a01         	cmp	r2, #0x1
 8001f5c: d00a         	beq	0x8001f74 <firmware_image+0x1f74> @ imm = #0x14
 8001f5e: 2a0b         	cmp	r2, #0xb
 8001f60: d008         	beq	0x8001f74 <firmware_image+0x1f74> @ imm = #0x10
 8001f62: 2a15         	cmp	r2, #0x15
 8001f64: d006         	beq	0x8001f74 <firmware_image+0x1f74> @ imm = #0xc
 8001f66: 2a06         	cmp	r2, #0x6
 8001f68: d011         	beq	0x8001f8e <firmware_image+0x1f8e> @ imm = #0x22
 8001f6a: 2a10         	cmp	r2, #0x10
 8001f6c: d00f         	beq	0x8001f8e <firmware_image+0x1f8e> @ imm = #0x1e
 8001f6e: 2a1a         	cmp	r2, #0x1a
 8001f70: d00d         	beq	0x8001f8e <firmware_image+0x1f8e> @ imm = #0x1a
 8001f72: e025         	b	0x8001fc0 <firmware_image+0x1fc0> @ imm = #0x4a
 8001f74: 2110         	movs	r1, #0x10
 8001f76: 4620         	mov	r0, r4
 8001f78: f000 fbf1    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x7e2
 8001f7c: 2108         	movs	r1, #0x8
 8001f7e: 4620         	mov	r0, r4
 8001f80: f000 fbef    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x7de
 8001f84: 4641         	mov	r1, r8
 8001f86: 4648         	mov	r0, r9
 8001f88: f000 fbe9    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x7d2
 8001f8c: e018         	b	0x8001fc0 <firmware_image+0x1fc0> @ imm = #0x30
 8001f8e: 2110         	movs	r1, #0x10
 8001f90: 4620         	mov	r0, r4
 8001f92: f000 fbe4    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x7c8
 8001f96: 2108         	movs	r1, #0x8
 8001f98: 4620         	mov	r0, r4
 8001f9a: f000 fbe0    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x7c0
 8001f9e: 4641         	mov	r1, r8
 8001fa0: 4648         	mov	r0, r9
 8001fa2: f000 fbdc    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x7b8
 8001fa6: e00b         	b	0x8001fc0 <firmware_image+0x1fc0> @ imm = #0x16
 8001fa8: 2110         	movs	r1, #0x10
 8001faa: 4620         	mov	r0, r4
 8001fac: f000 fbd7    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x7ae
 8001fb0: 2108         	movs	r1, #0x8
 8001fb2: 4620         	mov	r0, r4
 8001fb4: f000 fbd5    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x7aa
 8001fb8: 4641         	mov	r1, r8
 8001fba: 4648         	mov	r0, r9
 8001fbc: f000 fbcf    	bl	0x800275e <firmware_image+0x275e> @ imm = #0x79e
 8001fc0: 4812         	ldr	r0, [pc, #0x48]         @ 0x800200c <firmware_image+0x200c>
 8001fc2: 7800         	ldrb	r0, [r0]
 8001fc4: 2800         	cmp	r0, #0x0
 8001fc6: d010         	beq	0x8001fea <firmware_image+0x1fea> @ imm = #0x20
 8001fc8: 88b0         	ldrh	r0, [r6, #0x4]
 8001fca: 1c40         	adds	r0, r0, #0x1
 8001fcc: b280         	uxth	r0, r0
 8001fce: 80b0         	strh	r0, [r6, #0x4]
 8001fd0: 281e         	cmp	r0, #0x1e
 8001fd2: d901         	bls	0x8001fd8 <firmware_image+0x1fd8> @ imm = #0x2
 8001fd4: 2001         	movs	r0, #0x1
 8001fd6: 80b0         	strh	r0, [r6, #0x4]
 8001fd8: 480d         	ldr	r0, [pc, #0x34]         @ 0x8002010 <firmware_image+0x2010>
 8001fda: 7800         	ldrb	r0, [r0]
 8001fdc: 2802         	cmp	r0, #0x2
 8001fde: d904         	bls	0x8001fea <firmware_image+0x1fea> @ imm = #0x8
 8001fe0: 6838         	ldr	r0, [r7]
 8001fe2: 42a8         	cmp	r0, r5
 8001fe4: d201         	bhs	0x8001fea <firmware_image+0x1fea> @ imm = #0x2
 8001fe6: 2000         	movs	r0, #0x0
 8001fe8: 80b0         	strh	r0, [r6, #0x4]
 8001fea: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
 8001fee: 0000         	movs	r0, r0
 8001ff0: 0084         	lsls	r4, r0, #0x2
 8001ff2: 2000         	movs	r0, #0x0
 8001ff4: 0400         	lsls	r0, r0, #0x10
 8001ff6: 4800         	ldr	r0, [pc, #0x0]          @ 0x8001ff8 <firmware_image+0x1ff8>
 8001ff8: 0167         	lsls	r7, r4, #0x5
 8001ffa: 2000         	movs	r0, #0x0
 8001ffc: 4630         	mov	r0, r6
 8001ffe: f7ff 0114    	<unknown>
 8002002: 2000         	movs	r0, #0x0
 8002004: 0038         	movs	r0, r7
 8002006: 2000         	movs	r0, #0x0
 8002008: 0069         	lsls	r1, r5, #0x1
 800200a: 2000         	movs	r0, #0x0
 800200c: 0066         	lsls	r6, r4, #0x1
 800200e: 2000         	movs	r0, #0x0
 8002010: 021e         	lsls	r6, r3, #0x8
 8002012: 2000         	movs	r0, #0x0
 8002014: 0001         	movs	r1, r0
 8002016: 2000         	movs	r0, #0x0
 8002018: b510         	push	{r4, lr}
 800201a: f44f 5000    	mov.w	r0, #0x2000
 800201e: f000 f8fb    	bl	0x8002218 <firmware_image+0x2218> @ imm = #0x1f6
 8002022: b158         	cbz	r0, 0x800203c <firmware_image+0x203c> @ imm = #0x16
 8002024: f44f 4070    	mov.w	r0, #0xf000
 8002028: f000 f826    	bl	0x8002078 <firmware_image+0x2078> @ imm = #0x4c
 800202c: 2200         	movs	r2, #0x0
 800202e: 2180         	movs	r1, #0x80
 8002030: 480b         	ldr	r0, [pc, #0x2c]         @ 0x8002060 <firmware_image+0x2060>
 8002032: f003 fe79    	bl	0x8005d28 <firmware_image+0x5d28> @ imm = #0x3cf2
 8002036: 490b         	ldr	r1, [pc, #0x2c]         @ 0x8002064 <firmware_image+0x2064>
 8002038: 2000         	movs	r0, #0x0
 800203a: 7008         	strb	r0, [r1]
 800203c: f44f 3000    	mov.w	r0, #0x20000
 8002040: f000 f8ea    	bl	0x8002218 <firmware_image+0x2218> @ imm = #0x1d4
 8002044: 2800         	cmp	r0, #0x0
 8002046: d009         	beq	0x800205c <firmware_image+0x205c> @ imm = #0x12
 8002048: f44f 2070    	mov.w	r0, #0xf0000
 800204c: f000 f814    	bl	0x8002078 <firmware_image+0x2078> @ imm = #0x28
 8002050: e8bd 4010    	pop.w	{r4, lr}
 8002054: 2100         	movs	r1, #0x0
 8002056: 4804         	ldr	r0, [pc, #0x10]         @ 0x8002068 <firmware_image+0x2068>
 8002058: f000 b8ce    	b.w	0x80021f8 <firmware_image+0x21f8> @ imm = #0x19c
 800205c: bd10         	pop	{r4, pc}
 800205e: 0000         	movs	r0, r0
 8002060: 4400         	add	r0, r0
 8002062: 4000         	ands	r0, r0
 8002064: 0236         	lsls	r6, r6, #0x8
 8002066: 2000         	movs	r0, #0x0
 8002068: 0058         	lsls	r0, r3, #0x1
 800206a: 4002         	ands	r2, r0
 800206c: 4901         	ldr	r1, [pc, #0x4]          @ 0x8002074 <firmware_image+0x2074>
 800206e: 6048         	str	r0, [r1, #0x4]
 8002070: 4770         	bx	lr
 8002072: 0000         	movs	r0, r0
 8002074: 0000         	movs	r0, r0
 8002076: 4002         	ands	r2, r0
 8002078: 4770         	bx	lr
 800207a: 0000         	movs	r0, r0
 800207c: 0000         	movs	r0, r0
 800207e: 4002         	ands	r2, r0
 8002080: b08c         	sub	sp, #0x30
 8002082: 2101         	movs	r1, #0x1
 8002084: 4608         	mov	r0, r1
 8002086: f002 f961    	bl	0x800434c <firmware_image+0x434c> @ imm = #0x22c2
 800208a: 4f30         	ldr	r7, [pc, #0xc0]         @ 0x800214c <firmware_image+0x214c>
 800208c: 4638         	mov	r0, r7
 800208e: f000 f863    	bl	0x8002158 <firmware_image+0x2158> @ imm = #0xc6
 8002092: 482f         	ldr	r0, [pc, #0xbc]         @ 0x8002150 <firmware_image+0x2150>
 8002094: 9001         	str	r0, [sp, #0x4]
 8002096: 482f         	ldr	r0, [pc, #0xbc]         @ 0x8002154 <firmware_image+0x2154>
 8002098: 9002         	str	r0, [sp, #0x8]
 800209a: 2010         	movs	r0, #0x10
 800209c: 9003         	str	r0, [sp, #0xc]
 800209e: 2520         	movs	r5, #0x20
 80020a0: 9504         	str	r5, [sp, #0x10]
 80020a2: 2680         	movs	r6, #0x80
 80020a4: 9606         	str	r6, [sp, #0x18]
 80020a6: 2400         	movs	r4, #0x0
 80020a8: 9407         	str	r4, [sp, #0x1c]
 80020aa: 9408         	str	r4, [sp, #0x20]
 80020ac: 9405         	str	r4, [sp, #0x14]
 80020ae: 9409         	str	r4, [sp, #0x24]
 80020b0: f44f 5040    	mov.w	r0, #0x3000
 80020b4: 900a         	str	r0, [sp, #0x28]
 80020b6: 940b         	str	r4, [sp, #0x2c]
 80020b8: a901         	add	r1, sp, #0x4
 80020ba: 4638         	mov	r0, r7
 80020bc: f000 f8bc    	bl	0x8002238 <firmware_image+0x2238> @ imm = #0x178
 80020c0: f8df 808c    	ldr.w	r8, [pc, #0x8c]         @ 0x8002150 <firmware_image+0x2150>
 80020c4: 2201         	movs	r2, #0x1
 80020c6: f1a8 0828    	sub.w	r8, r8, #0x28
 80020ca: 2180         	movs	r1, #0x80
 80020cc: 4640         	mov	r0, r8
 80020ce: f003 fe27    	bl	0x8005d20 <firmware_image+0x5d20> @ imm = #0x3c4e
 80020d2: 2201         	movs	r2, #0x1
 80020d4: 2102         	movs	r1, #0x2
 80020d6: 4638         	mov	r0, r7
 80020d8: f000 f8a4    	bl	0x8002224 <firmware_image+0x2224> @ imm = #0x148
 80020dc: 2101         	movs	r1, #0x1
 80020de: 4638         	mov	r0, r7
 80020e0: f000 f886    	bl	0x80021f0 <firmware_image+0x21f0> @ imm = #0x10c
 80020e4: 4f19         	ldr	r7, [pc, #0x64]         @ 0x800214c <firmware_image+0x214c>
 80020e6: 3714         	adds	r7, #0x14
 80020e8: 4638         	mov	r0, r7
 80020ea: f000 f835    	bl	0x8002158 <firmware_image+0x2158> @ imm = #0x6a
 80020ee: 4818         	ldr	r0, [pc, #0x60]         @ 0x8002150 <firmware_image+0x2150>
 80020f0: 1f00         	subs	r0, r0, #0x4
 80020f2: 9001         	str	r0, [sp, #0x4]
 80020f4: 4817         	ldr	r0, [pc, #0x5c]         @ 0x8002154 <firmware_image+0x2154>
 80020f6: 3820         	subs	r0, #0x20
 80020f8: 9002         	str	r0, [sp, #0x8]
 80020fa: 9403         	str	r4, [sp, #0xc]
 80020fc: 9504         	str	r5, [sp, #0x10]
 80020fe: 9606         	str	r6, [sp, #0x18]
 8002100: 9407         	str	r4, [sp, #0x1c]
 8002102: 9408         	str	r4, [sp, #0x20]
 8002104: 9405         	str	r4, [sp, #0x14]
 8002106: 9509         	str	r5, [sp, #0x24]
 8002108: 0228         	lsls	r0, r5, #0x8
 800210a: 900a         	str	r0, [sp, #0x28]
 800210c: 940b         	str	r4, [sp, #0x2c]
 800210e: a901         	add	r1, sp, #0x4
 8002110: 4638         	mov	r0, r7
 8002112: f000 f891    	bl	0x8002238 <firmware_image+0x2238> @ imm = #0x122
 8002116: 2201         	movs	r2, #0x1
 8002118: 2140         	movs	r1, #0x40
 800211a: 4640         	mov	r0, r8
 800211c: f003 fe00    	bl	0x8005d20 <firmware_image+0x5d20> @ imm = #0x3c00
 8002120: 2201         	movs	r2, #0x1
 8002122: 2102         	movs	r1, #0x2
 8002124: 4638         	mov	r0, r7
 8002126: f000 f87d    	bl	0x8002224 <firmware_image+0x2224> @ imm = #0xfa
 800212a: 2201         	movs	r2, #0x1
 800212c: 2104         	movs	r1, #0x4
 800212e: 4638         	mov	r0, r7
 8002130: f000 f878    	bl	0x8002224 <firmware_image+0x2224> @ imm = #0xf0
 8002134: 2201         	movs	r2, #0x1
 8002136: 2108         	movs	r1, #0x8
 8002138: 4638         	mov	r0, r7
 800213a: f000 f873    	bl	0x8002224 <firmware_image+0x2224> @ imm = #0xe6
 800213e: 2101         	movs	r1, #0x1
 8002140: 4638         	mov	r0, r7
 8002142: f000 f855    	bl	0x80021f0 <firmware_image+0x21f0> @ imm = #0xaa
 8002146: b00c         	add	sp, #0x30
 8002148: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 800214c: 0044         	lsls	r4, r0, #0x1
 800214e: 4002         	ands	r2, r0
 8002150: 4428         	add	r0, r5
 8002152: 4000         	ands	r0, r0
 8002154: 04d0         	lsls	r0, r2, #0x13
 8002156: 2000         	movs	r0, #0x0
 8002158: 6801         	ldr	r1, [r0]
 800215a: f64f 72fe    	movw	r2, #0xfffe
 800215e: 4011         	ands	r1, r2
 8002160: 6001         	str	r1, [r0]
 8002162: 2100         	movs	r1, #0x0
 8002164: 6001         	str	r1, [r0]
 8002166: 6041         	str	r1, [r0, #0x4]
 8002168: 6081         	str	r1, [r0, #0x8]
 800216a: 60c1         	str	r1, [r0, #0xc]
 800216c: 491f         	ldr	r1, [pc, #0x7c]         @ 0x80021ec <firmware_image+0x21ec>
 800216e: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x80021ec <firmware_image+0x21ec>
 8002170: 3908         	subs	r1, #0x8
 8002172: 4290         	cmp	r0, r2
 8002174: d104         	bne	0x8002180 <firmware_image+0x2180> @ imm = #0x8
 8002176: 6848         	ldr	r0, [r1, #0x4]
 8002178: f040 000f    	orr	r0, r0, #0xf
 800217c: 6048         	str	r0, [r1, #0x4]
 800217e: 4770         	bx	lr
 8002180: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x80021ec <firmware_image+0x21ec>
 8002182: 3214         	adds	r2, #0x14
 8002184: 4290         	cmp	r0, r2
 8002186: d104         	bne	0x8002192 <firmware_image+0x2192> @ imm = #0x8
 8002188: 6848         	ldr	r0, [r1, #0x4]
 800218a: f040 00f0    	orr	r0, r0, #0xf0
 800218e: 6048         	str	r0, [r1, #0x4]
 8002190: 4770         	bx	lr
 8002192: 4a16         	ldr	r2, [pc, #0x58]         @ 0x80021ec <firmware_image+0x21ec>
 8002194: 3228         	adds	r2, #0x28
 8002196: 4290         	cmp	r0, r2
 8002198: d104         	bne	0x80021a4 <firmware_image+0x21a4> @ imm = #0x8
 800219a: 6848         	ldr	r0, [r1, #0x4]
 800219c: f440 6070    	orr	r0, r0, #0xf00
 80021a0: 6048         	str	r0, [r1, #0x4]
 80021a2: 4770         	bx	lr
 80021a4: 4a11         	ldr	r2, [pc, #0x44]         @ 0x80021ec <firmware_image+0x21ec>
 80021a6: 323c         	adds	r2, #0x3c
 80021a8: 4290         	cmp	r0, r2
 80021aa: d104         	bne	0x80021b6 <firmware_image+0x21b6> @ imm = #0x8
 80021ac: 4070         	eors	r0, r6
 80021ae: 6048         	str	r0, [r1, #0x4]
 80021b0: 4770         	bx	lr
 80021b2: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x80021e8 <firmware_image+0x21e8>
 80021b4: 3250         	adds	r2, #0x50
 80021b6: 4290         	cmp	r0, r2
 80021b8: d104         	bne	0x80021c4 <firmware_image+0x21c4> @ imm = #0x8
 80021ba: 6848         	ldr	r0, [r1, #0x4]
 80021bc: f440 2070    	orr	r0, r0, #0xf0000
 80021c0: 6048         	str	r0, [r1, #0x4]
 80021c2: 4770         	bx	lr
 80021c4: 4a08         	ldr	r2, [pc, #0x20]         @ 0x80021e8 <firmware_image+0x21e8>
 80021c6: 3264         	adds	r2, #0x64
 80021c8: 4290         	cmp	r0, r2
 80021ca: d104         	bne	0x80021d6 <firmware_image+0x21d6> @ imm = #0x8
 80021cc: 6848         	ldr	r0, [r1, #0x4]
 80021ce: f440 0070    	orr	r0, r0, #0xf00000
 80021d2: 6048         	str	r0, [r1, #0x4]
 80021d4: 4770         	bx	lr
 80021d6: 4a04         	ldr	r2, [pc, #0x10]         @ 0x80021e8 <firmware_image+0x21e8>
 80021d8: 3278         	adds	r2, #0x78
 80021da: 4290         	cmp	r0, r2
 80021dc: d1fa         	bne	0x80021d4 <firmware_image+0x21d4> @ imm = #-0xc
 80021de: 6848         	ldr	r0, [r1, #0x4]
 80021e0: f040 6070    	orr	r0, r0, #0xf000000
 80021e4: 6048         	str	r0, [r1, #0x4]
 80021e6: 4770         	bx	lr
 80021e8: 0008         	movs	r0, r1
 80021ea: 4002         	ands	r2, r0
 80021ec: 2900         	cmp	r1, #0x0
 80021ee: d004         	beq	0x80021fa <firmware_image+0x21fa> @ imm = #0x8
 80021f0: 6801         	ldr	r1, [r0]
 80021f2: f041 0101    	orr	r1, r1, #0x1
 80021f6: 6001         	str	r1, [r0]
 80021f8: 4770         	bx	lr
 80021fa: 6801         	ldr	r1, [r0]
 80021fc: f64f 72fe    	movw	r2, #0xfffe
 8002200: 4011         	ands	r1, r2
 8002202: 6001         	str	r1, [r0]
 8002204: 4770         	bx	lr
 8002206: 6840         	ldr	r0, [r0, #0x4]
 8002208: b280         	uxth	r0, r0
 800220a: 4770         	bx	lr
 800220c: 4903         	ldr	r1, [pc, #0xc]          @ 0x800221c <firmware_image+0x221c>
 800220e: 6809         	ldr	r1, [r1]
 8002210: 4201         	tst	r1, r0
 8002212: d001         	beq	0x8002218 <firmware_image+0x2218> @ imm = #0x2
 8002214: 2001         	movs	r0, #0x1
 8002216: 4770         	bx	lr
 8002218: 2000         	movs	r0, #0x0
 800221a: 4770         	bx	lr
 800221c: 0000         	movs	r0, r0
 800221e: 4002         	ands	r2, r0
 8002220: 2a00         	cmp	r2, #0x0
 8002222: d003         	beq	0x800222c <firmware_image+0x222c> @ imm = #0x6
 8002224: 6802         	ldr	r2, [r0]
 8002226: 430a         	orrs	r2, r1
 8002228: 6002         	str	r2, [r0]
 800222a: 4770         	bx	lr
 800222c: 6802         	ldr	r2, [r0]
 800222e: 438a         	bics	r2, r1
 8002230: 6002         	str	r2, [r0]
 8002232: 4770         	bx	lr
 8002234: b530         	push	{r4, r5, lr}
 8002236: 6802         	ldr	r2, [r0]
 8002238: f647 73f0    	movw	r3, #0x7ff0
 800223c: 439a         	bics	r2, r3
 800223e: 6a0c         	ldr	r4, [r1, #0x20]
 8002240: 688b         	ldr	r3, [r1, #0x8]
 8002242: 4323         	orrs	r3, r4
 8002244: e9d1 4504    	ldrd	r4, r5, [r1, #16]
 8002248: 432c         	orrs	r4, r5
 800224a: 4323         	orrs	r3, r4
 800224c: 698c         	ldr	r4, [r1, #0x18]
 800224e: 4323         	orrs	r3, r4
 8002250: 69cc         	ldr	r4, [r1, #0x1c]
 8002252: 4323         	orrs	r3, r4
 8002254: 6a4c         	ldr	r4, [r1, #0x24]
 8002256: 4323         	orrs	r3, r4
 8002258: 6a8c         	ldr	r4, [r1, #0x28]
 800225a: 4323         	orrs	r3, r4
 800225c: 4313         	orrs	r3, r2
 800225e: 6003         	str	r3, [r0]
 8002260: 68ca         	ldr	r2, [r1, #0xc]
 8002262: 6042         	str	r2, [r0, #0x4]
 8002264: 680a         	ldr	r2, [r1]
 8002266: 6082         	str	r2, [r0, #0x8]
 8002268: 6849         	ldr	r1, [r1, #0x4]
 800226a: 60c1         	str	r1, [r0, #0xc]
 800226c: bd30         	pop	{r4, r5, pc}
 800226e: 4602         	mov	r2, r0
 8002270: 4608         	mov	r0, r1
 8002272: 4282         	cmp	r2, r0
 8002274: dc03         	bgt	0x800227e <firmware_image+0x227e> @ imm = #0x6
 8002276: 4240         	rsbs	r0, r0, #0
 8002278: 4282         	cmp	r2, r0
 800227a: db00         	blt	0x800227e <firmware_image+0x227e> @ imm = #0x0
 800227c: 4610         	mov	r0, r2
 800227e: 4770         	bx	lr
 8002280: 4770         	bx	lr
 8002282: 0000         	movs	r0, r0
 8002284: b530         	push	{r4, r5, lr}
 8002286: 4835         	ldr	r0, [pc, #0xd4]         @ 0x800235c <firmware_image+0x235c>
 8002288: 6800         	ldr	r0, [r0]
 800228a: 4935         	ldr	r1, [pc, #0xd4]         @ 0x8002360 <firmware_image+0x2360>
 800228c: f000 0002    	and	r0, r0, #0x2
 8002290: 8088         	strh	r0, [r1, #0x4]
 8002292: 88cb         	ldrh	r3, [r1, #0x6]
 8002294: 461d         	mov	r5, r3
 8002296: 4383         	bics	r3, r0
 8002298: 814b         	strh	r3, [r1, #0xa]
 800229a: 461c         	mov	r4, r3
 800229c: ea20 0205    	bic.w	r2, r0, r5
 80022a0: 810a         	strh	r2, [r1, #0x8]
 80022a2: 80c8         	strh	r0, [r1, #0x6]
 80022a4: f64f 73ff    	movw	r3, #0xffff
 80022a8: 2800         	cmp	r0, #0x0
 80022aa: d005         	beq	0x80022b8 <firmware_image+0x22b8> @ imm = #0xa
 80022ac: 8a08         	ldrh	r0, [r1, #0x10]
 80022ae: 4298         	cmp	r0, r3
 80022b0: d207         	bhs	0x80022c2 <firmware_image+0x22c2> @ imm = #0xe
 80022b2: 1c40         	adds	r0, r0, #0x1
 80022b4: 8208         	strh	r0, [r1, #0x10]
 80022b6: e004         	b	0x80022c2 <firmware_image+0x22c2> @ imm = #0x8
 80022b8: 8a48         	ldrh	r0, [r1, #0x12]
 80022ba: 4298         	cmp	r0, r3
 80022bc: d201         	bhs	0x80022c2 <firmware_image+0x22c2> @ imm = #0x2
 80022be: 1c40         	adds	r0, r0, #0x1
 80022c0: 8248         	strh	r0, [r1, #0x12]
 80022c2: 2300         	movs	r3, #0x0
 80022c4: b172         	cbz	r2, 0x80022e4 <firmware_image+0x22e4> @ imm = #0x1c
 80022c6: 820b         	strh	r3, [r1, #0x10]
 80022c8: 8a48         	ldrh	r0, [r1, #0x12]
 80022ca: 81c8         	strh	r0, [r1, #0xe]
 80022cc: 3851         	subs	r0, #0x51
 80022ce: 2822         	cmp	r0, #0x22
 80022d0: b930         	cbnz	r0, 0x80022e0 <firmware_image+0x22e0> @ imm = #0xc
 80022d2: 2001         	movs	r0, #0x1
 80022d4: 7048         	strb	r0, [r1, #0x1]
 80022d6: 614b         	str	r3, [r1, #0x14]
 80022d8: 700b         	strb	r3, [r1]
 80022da: 6988         	ldr	r0, [r1, #0x18]
 80022dc: 1c40         	adds	r0, r0, #0x1
 80022de: 6188         	str	r0, [r1, #0x18]
 80022e0: 2c00         	cmp	r4, #0x0
 80022e2: d012         	beq	0x800230a <firmware_image+0x230a> @ imm = #0x24
 80022e4: 824b         	strh	r3, [r1, #0x12]
 80022e6: 8a08         	ldrh	r0, [r1, #0x10]
 80022e8: 8188         	strh	r0, [r1, #0xc]
 80022ea: 784a         	ldrb	r2, [r1, #0x1]
 80022ec: 2a00         	cmp	r2, #0x0
 80022ee: d00c         	beq	0x800230a <firmware_image+0x230a> @ imm = #0x18
 80022f0: 1e82         	subs	r2, r0, #0x2
 80022f2: 2a04         	cmp	r2, #0x4
 80022f4: d814         	bhi	0x8002320 <firmware_image+0x2320> @ imm = #0x28
 80022f6: 7808         	ldrb	r0, [r1]
 80022f8: 2817         	cmp	r0, #0x17
 80022fa: d207         	bhs	0x800230c <firmware_image+0x230c> @ imm = #0xe
 80022fc: 694a         	ldr	r2, [r1, #0x14]
 80022fe: 0052         	lsls	r2, r2, #0x1
 8002300: f022 0201    	bic	r2, r2, #0x1
 8002304: 614a         	str	r2, [r1, #0x14]
 8002306: 1c40         	adds	r0, r0, #0x1
 8002308: 7008         	strb	r0, [r1]
 800230a: bd30         	pop	{r4, r5, pc}
 800230c: 694a         	ldr	r2, [r1, #0x14]
 800230e: 0052         	lsls	r2, r2, #0x1
 8002310: f022 0201    	bic	r2, r2, #0x1
 8002314: 614a         	str	r2, [r1, #0x14]
 8002316: 1c40         	adds	r0, r0, #0x1
 8002318: 7008         	strb	r0, [r1]
 800231a: 61ca         	str	r2, [r1, #0x1c]
 800231c: 704b         	strb	r3, [r1, #0x1]
 800231e: bd30         	pop	{r4, r5, pc}
 8002320: 1f80         	subs	r0, r0, #0x6
 8002322: 2806         	cmp	r0, #0x6
 8002324: d214         	bhs	0x8002350 <firmware_image+0x2350> @ imm = #0x28
 8002326: 7808         	ldrb	r0, [r1]
 8002328: 2817         	cmp	r0, #0x17
 800232a: d207         	bhs	0x800233c <firmware_image+0x233c> @ imm = #0xe
 800232c: 694a         	ldr	r2, [r1, #0x14]
 800232e: 0052         	lsls	r2, r2, #0x1
 8002330: f042 0201    	orr	r2, r2, #0x1
 8002334: 614a         	str	r2, [r1, #0x14]
 8002336: 1c40         	adds	r0, r0, #0x1
 8002338: 7008         	strb	r0, [r1]
 800233a: bd30         	pop	{r4, r5, pc}
 800233c: 694a         	ldr	r2, [r1, #0x14]
 800233e: 0052         	lsls	r2, r2, #0x1
 8002340: f042 0201    	orr	r2, r2, #0x1
 8002344: 614a         	str	r2, [r1, #0x14]
 8002346: 1c40         	adds	r0, r0, #0x1
 8002348: 7008         	strb	r0, [r1]
 800234a: 61ca         	str	r2, [r1, #0x1c]
 800234c: 704b         	strb	r3, [r1, #0x1]
 800234e: bd30         	pop	{r4, r5, pc}
 8002350: 704b         	strb	r3, [r1, #0x1]
 8002352: 614b         	str	r3, [r1, #0x14]
 8002354: 700b         	strb	r3, [r1]
 8002356: bd30         	pop	{r4, r5, pc}
 8002358: 1410         	asrs	r0, r2, #0x10
 800235a: 4800         	ldr	r0, [pc, #0x0]          @ 0x800235c <firmware_image+0x235c>
 800235c: 016c         	lsls	r4, r5, #0x5
 800235e: 2000         	movs	r0, #0x0
 8002360: 4a11         	ldr	r2, [pc, #0x44]         @ 0x80023a8 <firmware_image+0x23a8>
 8002362: 2300         	movs	r3, #0x0
 8002364: 4610         	mov	r0, r2
 8002366: 78d1         	ldrb	r1, [r2, #0x3]
 8002368: 69c0         	ldr	r0, [r0, #0x1c]
 800236a: 2900         	cmp	r1, #0x0
 800236c: d004         	beq	0x8002378 <firmware_image+0x2378> @ imm = #0x8
 800236e: 2901         	cmp	r1, #0x1
 8002370: d006         	beq	0x8002380 <firmware_image+0x2380> @ imm = #0xc
 8002372: 2902         	cmp	r1, #0x2
 8002374: d10e         	bne	0x8002394 <firmware_image+0x2394> @ imm = #0x1c
 8002376: e00b         	b	0x8002390 <firmware_image+0x2390> @ imm = #0x16
 8002378: b160         	cbz	r0, 0x8002394 <firmware_image+0x2394> @ imm = #0x18
 800237a: 2101         	movs	r1, #0x1
 800237c: 70d1         	strb	r1, [r2, #0x3]
 800237e: e009         	b	0x8002394 <firmware_image+0x2394> @ imm = #0x12
 8002380: b120         	cbz	r0, 0x800238c <firmware_image+0x238c> @ imm = #0x8
 8002382: 7891         	ldrb	r1, [r2, #0x2]
 8002384: 6251         	str	r1, [r2, #0x24]
 8002386: 2102         	movs	r1, #0x2
 8002388: 70d1         	strb	r1, [r2, #0x3]
 800238a: e003         	b	0x8002394 <firmware_image+0x2394> @ imm = #0x6
 800238c: 70d3         	strb	r3, [r2, #0x3]
 800238e: e001         	b	0x8002394 <firmware_image+0x2394> @ imm = #0x2
 8002390: b900         	cbnz	r0, 0x8002394 <firmware_image+0x2394> @ imm = #0x0
 8002392: 70d3         	strb	r3, [r2, #0x3]
 8002394: b128         	cbz	r0, 0x80023a2 <firmware_image+0x23a2> @ imm = #0xa
 8002396: f000 000f    	and	r0, r0, #0xf
 800239a: 6210         	str	r0, [r2, #0x20]
 800239c: 7090         	strb	r0, [r2, #0x2]
 800239e: 61d3         	str	r3, [r2, #0x1c]
 80023a0: 4770         	bx	lr
 80023a2: 6213         	str	r3, [r2, #0x20]
 80023a4: 7093         	strb	r3, [r2, #0x2]
 80023a6: 4770         	bx	lr
 80023a8: 016c         	lsls	r4, r5, #0x5
 80023aa: 2000         	movs	r0, #0x0
 80023ac: 4803         	ldr	r0, [pc, #0xc]          @ 0x80023bc <firmware_image+0x23bc>
 80023ae: 7800         	ldrb	r0, [r0]
 80023b0: 2800         	cmp	r0, #0x0
 80023b2: d101         	bne	0x80023b8 <firmware_image+0x23b8> @ imm = #0x2
 80023b4: f7ff bfd4    	b.w	0x8002360 <firmware_image+0x2360> @ imm = #-0x58
 80023b8: 4770         	bx	lr
 80023ba: 0000         	movs	r0, r0
 80023bc: 021e         	lsls	r6, r3, #0x8
 80023be: 2000         	movs	r0, #0x0
 80023c0: 1e40         	subs	r0, r0, #0x1
 80023c2: 1c41         	adds	r1, r0, #0x1
 80023c4: d1fc         	bne	0x80023c0 <firmware_image+0x23c0> @ imm = #-0x8
 80023c6: 4770         	bx	lr
 80023c8: b510         	push	{r4, lr}
 80023ca: f44f 5480    	mov.w	r4, #0x1000
 80023ce: 4620         	mov	r0, r4
 80023d0: f000 f810    	bl	0x80023f4 <firmware_image+0x23f4> @ imm = #0x20
 80023d4: 2800         	cmp	r0, #0x0
 80023d6: d006         	beq	0x80023e6 <firmware_image+0x23e6> @ imm = #0xc
 80023d8: f001 f9cf    	bl	0x800377a <firmware_image+0x377a> @ imm = #0x139e
 80023dc: 4620         	mov	r0, r4
 80023de: e8bd 4010    	pop.w	{r4, lr}
 80023e2: f000 b801    	b.w	0x80023e8 <firmware_image+0x23e8> @ imm = #0x2
 80023e6: bd10         	pop	{r4, pc}
 80023e8: 4901         	ldr	r1, [pc, #0x4]          @ 0x80023f0 <firmware_image+0x23f0>
 80023ea: 6008         	str	r0, [r1]
 80023ec: 4770         	bx	lr
 80023ee: 0000         	movs	r0, r0
 80023f0: 0414         	lsls	r4, r2, #0x10
 80023f2: 4001         	ands	r1, r0
 80023f4: 4906         	ldr	r1, [pc, #0x18]         @ 0x8002410 <firmware_image+0x2410>
 80023f6: 6809         	ldr	r1, [r1]
 80023f8: 4201         	tst	r1, r0
 80023fa: d006         	beq	0x800240a <firmware_image+0x240a> @ imm = #0xc
 80023fc: 4904         	ldr	r1, [pc, #0x10]         @ 0x8002410 <firmware_image+0x2410>
 80023fe: 3914         	subs	r1, #0x14
 8002400: 0414         	lsls	r4, r2, #0x10
 8002402: 4001         	ands	r1, r0
 8002404: 4906         	ldr	r1, [pc, #0x18]         @ 0x8002420 <firmware_image+0x2420>
 8002406: 6809         	ldr	r1, [r1]
 8002408: 4201         	tst	r1, r0
 800240a: d006         	beq	0x800241a <firmware_image+0x241a> @ imm = #0xc
 800240c: 4904         	ldr	r1, [pc, #0x10]         @ 0x8002420 <firmware_image+0x2420>
 800240e: 3914         	subs	r1, #0x14
 8002410: 6809         	ldr	r1, [r1]
 8002412: 4201         	tst	r1, r0
 8002414: d001         	beq	0x800241a <firmware_image+0x241a> @ imm = #0x2
 8002416: 2001         	movs	r0, #0x1
 8002418: 4770         	bx	lr
 800241a: 2000         	movs	r0, #0x0
 800241c: 4770         	bx	lr
 800241e: 0000         	movs	r0, r0
 8002420: 0414         	lsls	r4, r2, #0x10
 8002422: 4001         	ands	r1, r0
 8002424: 4770         	bx	lr
 8002426: 0000         	movs	r0, r0
 8002428: 2000         	movs	r0, #0x0
 800242a: 4002         	ands	r2, r0
 800242c: b570         	push	{r4, r5, r6, lr}
 800242e: 4605         	mov	r5, r0
 8002430: f44f 2670    	mov.w	r6, #0xf0000
 8002434: 4630         	mov	r0, r6
 8002436: f000 f85d    	bl	0x80024f4 <firmware_image+0x24f4> @ imm = #0xba
 800243a: 2800         	cmp	r0, #0x0
 800243c: d110         	bne	0x8002460 <firmware_image+0x2460> @ imm = #0x20
 800243e: 4c09         	ldr	r4, [pc, #0x24]         @ 0x8002464 <firmware_image+0x2464>
 8002440: 6920         	ldr	r0, [r4, #0x10]
 8002442: f040 0002    	orr	r0, r0, #0x2
 8002446: 6120         	str	r0, [r4, #0x10]
 8002448: 6165         	str	r5, [r4, #0x14]
 800244a: 6920         	ldr	r0, [r4, #0x10]
 800244c: f040 0040    	orr	r0, r0, #0x40
 8002450: 6120         	str	r0, [r4, #0x10]
 8002452: 4630         	mov	r0, r6
 8002454: f000 f84e    	bl	0x80024f4 <firmware_image+0x24f4> @ imm = #0x9c
 8002458: 6921         	ldr	r1, [r4, #0x10]
 800245a: f021 0102    	bic	r1, r1, #0x2
 800245e: 6121         	str	r1, [r4, #0x10]
 8002460: bd70         	pop	{r4, r5, r6, pc}
 8002462: 0000         	movs	r0, r0
 8002464: 2000         	movs	r0, #0x0
 8002466: 4002         	ands	r2, r0
 8002468: 2000         	movs	r0, #0x0
 800246a: 4908         	ldr	r1, [pc, #0x20]         @ 0x800248c <firmware_image+0x248c>
 800246c: 68ca         	ldr	r2, [r1, #0xc]
 800246e: 07d2         	lsls	r2, r2, #0x1f
 8002470: d001         	beq	0x8002476 <firmware_image+0x2476> @ imm = #0x2
 8002472: 2001         	movs	r0, #0x1
 8002474: 4770         	bx	lr
 8002476: 68ca         	ldr	r2, [r1, #0xc]
 8002478: 06d2         	lsls	r2, r2, #0x1b
 800247a: d501         	bpl	0x8002480 <firmware_image+0x2480> @ imm = #0x2
 800247c: 2002         	movs	r0, #0x2
 800247e: 4770         	bx	lr
 8002480: 68c9         	ldr	r1, [r1, #0xc]
 8002482: 0749         	lsls	r1, r1, #0x1d
 8002484: d5fb         	bpl	0x800247e <firmware_image+0x247e> @ imm = #-0xa
 8002486: 2003         	movs	r0, #0x3
 8002488: 4770         	bx	lr
 800248a: 0000         	movs	r0, r0
 800248c: 2000         	movs	r0, #0x0
 800248e: 4002         	ands	r2, r0
 8002490: 4802         	ldr	r0, [pc, #0x8]          @ 0x800249c <firmware_image+0x249c>
 8002492: 6901         	ldr	r1, [r0, #0x10]
 8002494: f041 0180    	orr	r1, r1, #0x80
 8002498: 6101         	str	r1, [r0, #0x10]
 800249a: 4770         	bx	lr
 800249c: 2000         	movs	r0, #0x0
 800249e: 4002         	ands	r2, r0
 80024a0: b5f0         	push	{r4, r5, r6, r7, lr}
 80024a2: 4606         	mov	r6, r0
 80024a4: 460d         	mov	r5, r1
 80024a6: f44f 2770    	mov.w	r7, #0xf0000
 80024aa: 4638         	mov	r0, r7
 80024ac: f000 f822    	bl	0x80024f4 <firmware_image+0x24f4> @ imm = #0x44
 80024b0: 2800         	cmp	r0, #0x0
 80024b2: d10c         	bne	0x80024ce <firmware_image+0x24ce> @ imm = #0x18
 80024b4: 4c06         	ldr	r4, [pc, #0x18]         @ 0x80024d0 <firmware_image+0x24d0>
 80024b6: 6920         	ldr	r0, [r4, #0x10]
 80024b8: f040 0001    	orr	r0, r0, #0x1
 80024bc: 6120         	str	r0, [r4, #0x10]
 80024be: 8035         	strh	r5, [r6]
 80024c0: 4638         	mov	r0, r7
 80024c2: f000 f817    	bl	0x80024f4 <firmware_image+0x24f4> @ imm = #0x2e
 80024c6: 6921         	ldr	r1, [r4, #0x10]
 80024c8: f021 0101    	bic	r1, r1, #0x1
 80024cc: 6121         	str	r1, [r4, #0x10]
 80024ce: bdf0         	pop	{r4, r5, r6, r7, pc}
 80024d0: 4804         	ldr	r0, [pc, #0x10]         @ 0x80024e4 <firmware_image+0x24e4>
 80024d2: 6901         	ldr	r1, [r0, #0x10]
 80024d4: 0609         	lsls	r1, r1, #0x18
 80024d6: d503         	bpl	0x80024e0 <firmware_image+0x24e0> @ imm = #0x6
 80024d8: 4903         	ldr	r1, [pc, #0xc]          @ 0x80024e8 <firmware_image+0x24e8>
 80024da: 6041         	str	r1, [r0, #0x4]
 80024dc: 4903         	ldr	r1, [pc, #0xc]          @ 0x80024ec <firmware_image+0x24ec>
 80024de: 6041         	str	r1, [r0, #0x4]
 80024e0: 4770         	bx	lr
 80024e2: 0000         	movs	r0, r0
 80024e4: 2000         	movs	r0, #0x0
 80024e6: 4002         	ands	r2, r0
 80024e8: 0123         	lsls	r3, r4, #0x4
 80024ea: 4567         	cmp	r7, r12
 80024ec: 89ab         	ldrh	r3, [r5, #0xc]
 80024ee: cdef         	ldm	r5, {r0, r1, r2, r3, r5, r6, r7}
 80024f0: b500         	push	{lr}
 80024f2: 4603         	mov	r3, r0
 80024f4: f7ff ffb6    	bl	0x8002464 <firmware_image+0x2464> @ imm = #-0x94
 80024f8: 1e5b         	subs	r3, r3, #0x1
 80024fa: 2801         	cmp	r0, #0x1
 80024fc: d101         	bne	0x8002502 <firmware_image+0x2502> @ imm = #0x2
 80024fe: 2b00         	cmp	r3, #0x0
 8002500: d1f8         	bne	0x80024f4 <firmware_image+0x24f4> @ imm = #-0x10
 8002502: 2801         	cmp	r0, #0x1
 8002504: d100         	bne	0x8002508 <firmware_image+0x2508> @ imm = #0x0
 8002506: 2004         	movs	r0, #0x4
 8002508: bd00         	pop	{pc}
 800250a: 0000         	movs	r0, r0
 800250c: 4903         	ldr	r1, [pc, #0xc]          @ 0x800251c <firmware_image+0x251c>
 800250e: 2000         	movs	r0, #0x0
 8002510: 8008         	strh	r0, [r1]
 8002512: 8048         	strh	r0, [r1, #0x2]
 8002514: 4902         	ldr	r1, [pc, #0x8]          @ 0x8002520 <firmware_image+0x2520>
 8002516: 8008         	strh	r0, [r1]
 8002518: 8048         	strh	r0, [r1, #0x2]
 800251a: 4770         	bx	lr
 800251c: 025c         	lsls	r4, r3, #0x9
 800251e: 2000         	movs	r0, #0x0
 8002520: 0240         	lsls	r0, r0, #0x9
 8002522: 2000         	movs	r0, #0x0
 8002524: b570         	push	{r4, r5, r6, lr}
 8002526: f002 fc0d    	bl	0x8004d44 <firmware_image+0x4d44> @ imm = #0x281a
 800252a: 491d         	ldr	r1, [pc, #0x74]         @ 0x80025a0 <firmware_image+0x25a0>
 800252c: 6008         	str	r0, [r1]
 800252e: f7ff fbf7    	bl	0x8001d20 <firmware_image+0x1d20> @ imm = #-0x812
 8002532: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x80025a4 <firmware_image+0x25a4>
 8002534: 6020         	str	r0, [r4]
 8002536: f000 f915    	bl	0x8002764 <firmware_image+0x2764> @ imm = #0x22a
 800253a: 4601         	mov	r1, r0
 800253c: 6820         	ldr	r0, [r4]
 800253e: f001 fe95    	bl	0x800426c <firmware_image+0x426c> @ imm = #0x1d2a
 8002542: 4d19         	ldr	r5, [pc, #0x64]         @ 0x80025a8 <firmware_image+0x25a8>
 8002544: 6028         	str	r0, [r5]
 8002546: 4c19         	ldr	r4, [pc, #0x64]         @ 0x80025ac <firmware_image+0x25ac>
 8002548: f9b5 0000    	ldrsh.w	r0, [r5]
 800254c: f9b4 1000    	ldrsh.w	r1, [r4]
 8002550: 4348         	muls	r0, r1, r0
 8002552: f242 7110    	movw	r1, #0x2710
 8002556: fb90 f0f1    	sdiv	r0, r0, r1
 800255a: 215e         	movs	r1, #0x5e
 800255c: 4348         	muls	r0, r1, r0
 800255e: f003 ff5d    	bl	0x800641c <firmware_image+0x641c> @ imm = #0x3eba
 8002562: 4e13         	ldr	r6, [pc, #0x4c]         @ 0x80025b0 <firmware_image+0x25b0>
 8002564: 60f0         	str	r0, [r6, #0xc]
 8002566: f9b5 1002    	ldrsh.w	r1, [r5, #0x2]
 800256a: 4a12         	ldr	r2, [pc, #0x48]         @ 0x80025b4 <firmware_image+0x25b4>
 800256c: 2000         	movs	r0, #0x0
 800256e: f001 f937    	bl	0x80037e0 <firmware_image+0x37e0> @ imm = #0x126e
 8002572: 8060         	strh	r0, [r4, #0x2]
 8002574: f9b6 0002    	ldrsh.w	r0, [r6, #0x2]
 8002578: 68f1         	ldr	r1, [r6, #0xc]
 800257a: f000 ffed    	bl	0x8003558 <firmware_image+0x3558> @ imm = #0xfda
 800257e: 8020         	strh	r0, [r4]
 8002580: 6820         	ldr	r0, [r4]
 8002582: f002 f935    	bl	0x80047f0 <firmware_image+0x47f0> @ imm = #0x226a
 8002586: 6020         	str	r0, [r4]
 8002588: f000 f8ec    	bl	0x8002764 <firmware_image+0x2764> @ imm = #0x1d8
 800258c: 4601         	mov	r1, r0
 800258e: 6820         	ldr	r0, [r4]
 8002590: f002 f95e    	bl	0x8004850 <firmware_image+0x4850> @ imm = #0x22bc
 8002594: 4908         	ldr	r1, [pc, #0x20]         @ 0x80025b8 <firmware_image+0x25b8>
 8002596: 6008         	str	r0, [r1]
 8002598: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 800259c: f002 ba8c    	b.w	0x8004ab8 <firmware_image+0x4ab8> @ imm = #0x2518
 80025a0: 024c         	lsls	r4, r1, #0x9
 80025a2: 2000         	movs	r0, #0x0
 80025a4: 0250         	lsls	r0, r2, #0x9
 80025a6: 2000         	movs	r0, #0x0
 80025a8: 0254         	lsls	r4, r2, #0x9
 80025aa: 2000         	movs	r0, #0x0
 80025ac: 0258         	lsls	r0, r3, #0x9
 80025ae: 2000         	movs	r0, #0x0
 80025b0: 023c         	lsls	r4, r7, #0x8
 80025b2: 2000         	movs	r0, #0x0
 80025b4: 04f0         	lsls	r0, r6, #0x13
 80025b6: 2000         	movs	r0, #0x0
 80025b8: 025c         	lsls	r4, r3, #0x9
 80025ba: 2000         	movs	r0, #0x0
 80025bc: 4810         	ldr	r0, [pc, #0x40]         @ 0x8002600 <firmware_image+0x2600>
 80025be: 4601         	mov	r1, r0
 80025c0: 7842         	ldrb	r2, [r0, #0x1]
 80025c2: 7909         	ldrb	r1, [r1, #0x4]
 80025c4: 2a00         	cmp	r2, #0x0
 80025c6: d00e         	beq	0x80025e6 <firmware_image+0x25e6> @ imm = #0x1c
 80025c8: f021 0101    	bic	r1, r1, #0x1
 80025cc: 7101         	strb	r1, [r0, #0x4]
 80025ce: 78c1         	ldrb	r1, [r0, #0x3]
 80025d0: b169         	cbz	r1, 0x80025ee <firmware_image+0x25ee> @ imm = #0x1a
 80025d2: 7901         	ldrb	r1, [r0, #0x4]
 80025d4: f021 0102    	bic	r1, r1, #0x2
 80025d8: 7809         	ldrb	r1, [r1]
 80025da: b159         	cbz	r1, 0x80025f4 <firmware_image+0x25f4> @ imm = #0x16
 80025dc: 7901         	ldrb	r1, [r0, #0x4]
 80025de: 7141         	strb	r1, [r0, #0x5]
 80025e0: 4770         	bx	lr
 80025e2: f041 0101    	orr	r1, r1, #0x1
 80025e6: 7101         	strb	r1, [r0, #0x4]
 80025e8: e7ef         	b	0x80025ca <firmware_image+0x25ca> @ imm = #-0x22
 80025ea: 7901         	ldrb	r1, [r0, #0x4]
 80025ec: f041 0102    	orr	r1, r1, #0x2
 80025f0: 7101         	strb	r1, [r0, #0x4]
 80025f2: e7f0         	b	0x80025d6 <firmware_image+0x25d6> @ imm = #-0x20
 80025f4: 7901         	ldrb	r1, [r0, #0x4]
 80025f6: 7181         	strb	r1, [r0, #0x6]
 80025f8: 4770         	bx	lr
 80025fa: 0000         	movs	r0, r0
 80025fc: 013d         	lsls	r5, r7, #0x4
 80025fe: 2000         	movs	r0, #0x0
 8002600: 021e         	lsls	r6, r3, #0x8
 8002602: 2000         	movs	r0, #0x0
 8002604: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002608: 2400         	movs	r4, #0x0
 800260a: f7ff ff5f    	bl	0x80024cc <firmware_image+0x24cc> @ imm = #-0x142
 800260e: 2601         	movs	r6, #0x1
 8002610: 2034         	movs	r0, #0x34
 8002612: f7ff ff01    	bl	0x8002418 <firmware_image+0x2418> @ imm = #-0x1fe
 8002616: 4f09         	ldr	r7, [pc, #0x24]         @ 0x800263c <firmware_image+0x263c>
 8002618: 4d09         	ldr	r5, [pc, #0x24]         @ 0x8002640 <firmware_image+0x2640>
 800261a: e009         	b	0x8002630 <firmware_image+0x2630> @ imm = #0x12
 800261c: eb07 2084    	add.w	r0, r7, r4, lsl #10
 8002620: f7ff ff00    	bl	0x8002424 <firmware_image+0x2424> @ imm = #-0x200
 8002624: 7028         	strb	r0, [r5]
 8002626: 7828         	ldrb	r0, [r5]
 8002628: 2034         	movs	r0, #0x34
 800262a: f7ff fef5    	bl	0x8002418 <firmware_image+0x2418> @ imm = #-0x216
 800262e: 1c64         	adds	r4, r4, #0x1
 8002630: 42b4         	cmp	r4, r6
 8002632: d3f3         	blo	0x800261c <firmware_image+0x261c> @ imm = #-0x1a
 8002634: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8002638: f7ff bf26    	b.w	0x8002488 <firmware_image+0x2488> @ imm = #-0x1b4
 800263c: 7c00         	ldrb	r0, [r0, #0x10]
 800263e: 0800         	lsrs	r0, r0, #0x20
 8002640: 0144         	lsls	r4, r0, #0x5
 8002642: 2000         	movs	r0, #0x0
 8002644: b510         	push	{r4, lr}
 8002646: 4604         	mov	r4, r0
 8002648: 2300         	movs	r3, #0x0
 800264a: e007         	b	0x800265c <firmware_image+0x265c> @ imm = #0xe
 800264c: 4620         	mov	r0, r4
 800264e: f000 f808    	bl	0x8002662 <firmware_image+0x2662> @ imm = #0x10
 8002652: f821 0013    	strh.w	r0, [r1, r3, lsl #1]
 8002656: 1ca4         	adds	r4, r4, #0x2
 8002658: 1c5b         	adds	r3, r3, #0x1
 800265a: b29b         	uxth	r3, r3
 800265c: 4293         	cmp	r3, r2
 800265e: d3f5         	blo	0x800264c <firmware_image+0x264c> @ imm = #-0x16
 8002660: bd10         	pop	{r4, pc}
 8002662: 8800         	ldrh	r0, [r0]
 8002664: 4770         	bx	lr
 8002666: 0000         	movs	r0, r0
 8002668: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 800266c: 4688         	mov	r8, r1
 800266e: 4617         	mov	r7, r2
 8002670: f7ff ff2c    	bl	0x80024cc <firmware_image+0x24cc> @ imm = #-0x1a8
 8002674: 2034         	movs	r0, #0x34
 8002676: f7ff fecf    	bl	0x8002418 <firmware_image+0x2418> @ imm = #-0x262
 800267a: 4d0b         	ldr	r5, [pc, #0x2c]         @ 0x80026a8 <firmware_image+0x26a8>
 800267c: 2400         	movs	r4, #0x0
 800267e: 4e0b         	ldr	r6, [pc, #0x2c]         @ 0x80026ac <firmware_image+0x26ac>
 8002680: e00c         	b	0x800269c <firmware_image+0x269c> @ imm = #0x18
 8002682: f838 1014    	ldrh.w	r1, [r8, r4, lsl #1]
 8002686: 4628         	mov	r0, r5
 8002688: f7ff ff06    	bl	0x8002498 <firmware_image+0x2498> @ imm = #-0x1f4
 800268c: 7030         	strb	r0, [r6]
 800268e: 1cad         	adds	r5, r5, #0x2
 8002690: 7830         	ldrb	r0, [r6]
 8002692: 2034         	movs	r0, #0x34
 8002694: f7ff fec0    	bl	0x8002418 <firmware_image+0x2418> @ imm = #-0x280
 8002698: 1c64         	adds	r4, r4, #0x1
 800269a: b2a4         	uxth	r4, r4
 800269c: 42bc         	cmp	r4, r7
 800269e: d3f0         	blo	0x8002682 <firmware_image+0x2682> @ imm = #-0x20
 80026a0: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80026a4: f7ff bef0    	b.w	0x8002488 <firmware_image+0x2488> @ imm = #-0x220
 80026a8: 7c00         	ldrb	r0, [r0, #0x10]
 80026aa: 0800         	lsrs	r0, r0, #0x20
 80026ac: 0144         	lsls	r4, r0, #0x5
 80026ae: 2000         	movs	r0, #0x0
 80026b0: b5f0         	push	{r4, r5, r6, r7, lr}
 80026b2: 2200         	movs	r2, #0x0
 80026b4: 2601         	movs	r6, #0x1
 80026b6: 2503         	movs	r5, #0x3
 80026b8: 680c         	ldr	r4, [r1]
 80026ba: fa06 f302    	lsl.w	r3, r6, r2
 80026be: 421c         	tst	r4, r3
 80026c0: d02e         	beq	0x8002720 <firmware_image+0x2720> @ imm = #0x5c
 80026c2: 790c         	ldrb	r4, [r1, #0x4]
 80026c4: 2c01         	cmp	r4, #0x1
 80026c6: d001         	beq	0x80026cc <firmware_image+0x26cc> @ imm = #0x2
 80026c8: 2c02         	cmp	r4, #0x2
 80026ca: d114         	bne	0x80026f6 <firmware_image+0x26f6> @ imm = #0x28
 80026cc: 6887         	ldr	r7, [r0, #0x8]
 80026ce: 0054         	lsls	r4, r2, #0x1
 80026d0: fa05 fc04    	lsl.w	r12, r5, r4
 80026d4: ea27 070c    	bic.w	r7, r7, r12
 80026d8: 6087         	str	r7, [r0, #0x8]
 80026da: 794f         	ldrb	r7, [r1, #0x5]
 80026dc: 40a7         	lsls	r7, r4
 80026de: 6884         	ldr	r4, [r0, #0x8]
 80026e0: 6844         	ldr	r4, [r0, #0x4]
 80026e2: 439c         	bics	r4, r3
 80026e4: 6044         	str	r4, [r0, #0x4]
 80026e6: 6843         	ldr	r3, [r0, #0x4]
 80026e8: 798c         	ldrb	r4, [r1, #0x6]
 80026ea: 4094         	lsls	r4, r2
 80026ec: b2a4         	uxth	r4, r4
 80026ee: 4323         	orrs	r3, r4
 80026f0: 6043         	str	r3, [r0, #0x4]
 80026f2: 68c7         	ldr	r7, [r0, #0xc]
 80026f4: 0053         	lsls	r3, r2, #0x1
 80026f6: fa05 f403    	lsl.w	r4, r5, r3
 80026fa: 43a7         	bics	r7, r4
 80026fc: 60c7         	str	r7, [r0, #0xc]
 80026fe: 79cf         	ldrb	r7, [r1, #0x7]
 8002700: f8d0 c00c    	ldr.w	r12, [r0, #0xc]
 8002704: 409f         	lsls	r7, r3
 8002706: ea47 070c    	orr.w	r7, r7, r12
 800270a: 60c7         	str	r7, [r0, #0xc]
 800270c: 6807         	ldr	r7, [r0]
 800270e: 43a7         	bics	r7, r4
 8002710: 409c         	lsls	r4, r3
 8002712: 6803         	ldr	r3, [r0]
 8002714: 431c         	orrs	r4, r3
 8002716: 6004         	str	r4, [r0]
 8002718: 1c52         	adds	r2, r2, #0x1
 800271a: 2a10         	cmp	r2, #0x10
 800271c: d3c8         	blo	0x80026b0 <firmware_image+0x26b0> @ imm = #-0x70
 800271e: bdf0         	pop	{r4, r5, r6, r7, pc}
 8002720: b510         	push	{r4, lr}
 8002722: 074b         	lsls	r3, r1, #0x1d
 8002724: 0edb         	lsrs	r3, r3, #0x1b
 8002726: 409a         	lsls	r2, r3
 8002728: 08c9         	lsrs	r1, r1, #0x3
 800272a: eb00 0081    	add.w	r0, r0, r1, lsl #2
 800272e: 6a01         	ldr	r1, [r0, #0x20]
 8002730: 240f         	movs	r4, #0xf
 8002732: 409c         	lsls	r4, r3
 8002734: 43a1         	bics	r1, r4
 8002736: 6201         	str	r1, [r0, #0x20]
 8002738: 6a01         	ldr	r1, [r0, #0x20]
 800273a: 4311         	orrs	r1, r2
 800273c: 6201         	str	r1, [r0, #0x20]
 800273e: bd10         	pop	{r4, pc}
 8002740: 6900         	ldr	r0, [r0, #0x10]
 8002742: 4208         	tst	r0, r1
 8002744: d001         	beq	0x800274a <firmware_image+0x274a> @ imm = #0x2
 8002746: 2001         	movs	r0, #0x1
 8002748: 4770         	bx	lr
 800274a: 2000         	movs	r0, #0x0
 800274c: 4770         	bx	lr
 800274e: 6281         	str	r1, [r0, #0x28]
 8002750: 4770         	bx	lr
 8002752: 6181         	str	r1, [r0, #0x18]
 8002754: 4770         	bx	lr
 8002756: 0000         	movs	r0, r0
 8002758: 4801         	ldr	r0, [pc, #0x4]          @ 0x8002760 <firmware_image+0x2760>
 800275a: f9b0 002c    	ldrsh.w	r0, [r0, #0x2c]
 800275e: 4770         	bx	lr
 8002760: 0268         	lsls	r0, r5, #0x9
 8002762: 2000         	movs	r0, #0x0
 8002764: e92d 41fc    	push.w	{r2, r3, r4, r5, r6, r7, r8, lr}
 8002768: 2101         	movs	r1, #0x1
 800276a: f44f 00bc    	mov.w	r0, #0x5e0000
 800276e: f001 fde5    	bl	0x800433c <firmware_image+0x433c> @ imm = #0x1bca
 8002772: 2700         	movs	r7, #0x0
 8002774: f88d 7004    	strb.w	r7, [sp, #0x4]
 8002778: 2003         	movs	r0, #0x3
 800277a: f88d 0005    	strb.w	r0, [sp, #0x5]
 800277e: f88d 7006    	strb.w	r7, [sp, #0x6]
 8002782: 2601         	movs	r6, #0x1
 8002784: f88d 6007    	strb.w	r6, [sp, #0x7]
 8002788: 0370         	lsls	r0, r6, #0xd
 800278a: 9000         	str	r0, [sp]
 800278c: f8df 8058    	ldr.w	r8, [pc, #0x58]         @ 0x80027e8 <firmware_image+0x27e8>
 8002790: 4669         	mov	r1, sp
 8002792: 4640         	mov	r0, r8
 8002794: f7ff ff86    	bl	0x80026a4 <firmware_image+0x26a4> @ imm = #-0xf4
 8002798: 2102         	movs	r1, #0x2
 800279a: 9100         	str	r1, [sp]
 800279c: f88d 7004    	strb.w	r7, [sp, #0x4]
 80027a0: 4669         	mov	r1, sp
 80027a2: f04f 4090    	mov.w	r0, #0x48000000
 80027a6: f7ff ff7d    	bl	0x80026a4 <firmware_image+0x26a4> @ imm = #-0x106
 80027aa: 03b0         	lsls	r0, r6, #0xe
 80027ac: 9000         	str	r0, [sp]
 80027ae: f88d 7004    	strb.w	r7, [sp, #0x4]
 80027b2: 4669         	mov	r1, sp
 80027b4: 4640         	mov	r0, r8
 80027b6: f7ff ff75    	bl	0x80026a4 <firmware_image+0x26a4> @ imm = #-0x116
 80027ba: f44f 67fa    	mov.w	r7, #0x7d0
 80027be: f004 f931    	bl	0x8006a24 <firmware_image+0x6a24> @ imm = #0x4262
 80027c2: b108         	cbz	r0, 0x80027c8 <firmware_image+0x27c8> @ imm = #0x2
 80027c4: 1c6d         	adds	r5, r5, #0x1
 80027c6: b2ed         	uxtb	r5, r5
 80027c8: 4638         	mov	r0, r7
 80027ca: f7ff fdf3    	bl	0x80023b4 <firmware_image+0x23b4> @ imm = #-0x41a
 80027ce: 1c64         	adds	r4, r4, #0x1
 80027d0: b2e4         	uxtb	r4, r4
 80027d2: 2c64         	cmp	r4, #0x64
 80027d4: d3f1         	blo	0x80027ba <firmware_image+0x27ba> @ imm = #-0x1e
 80027d6: 2d50         	cmp	r5, #0x50
 80027d8: d901         	bls	0x80027de <firmware_image+0x27de> @ imm = #0x2
 80027da: 4803         	ldr	r0, [pc, #0xc]          @ 0x80027e8 <firmware_image+0x27e8>
 80027dc: 7046         	strb	r6, [r0, #0x1]
 80027de: e8bd 81fc    	pop.w	{r2, r3, r4, r5, r6, r7, r8, pc}
 80027e2: 0000         	movs	r0, r0
 80027e4: 0800         	lsrs	r0, r0, #0x20
 80027e6: 4800         	ldr	r0, [pc, #0x0]          @ 0x80027e8 <firmware_image+0x27e8>
 80027e8: 0268         	lsls	r0, r5, #0x9
 80027ea: 2000         	movs	r0, #0x0
 80027ec: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 80027f0: f004 f916    	bl	0x8006a20 <firmware_image+0x6a20> @ imm = #0x422c
 80027f4: 4c7d         	ldr	r4, [pc, #0x1f4]        @ 0x80029ec <firmware_image+0x29ec>
 80027f6: 70a0         	strb	r0, [r4, #0x2]
 80027f8: 4d7d         	ldr	r5, [pc, #0x1f4]        @ 0x80029f0 <firmware_image+0x29f0>
 80027fa: 2201         	movs	r2, #0x1
 80027fc: 2807         	cmp	r0, #0x7
 80027fe: d21b         	bhs	0x8002838 <firmware_image+0x2838> @ imm = #0x36
 8002800: 0800         	lsrs	r0, r0, #0x20
 8002802: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002804 <firmware_image+0x2804>
 8002804: 0268         	lsls	r0, r5, #0x9
 8002806: 2000         	movs	r0, #0x0
 8002808: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 800280c: f004 f916    	bl	0x8006a3c <firmware_image+0x6a3c> @ imm = #0x422c
 8002810: 4c7d         	ldr	r4, [pc, #0x1f4]        @ 0x8002a08 <firmware_image+0x2a08>
 8002812: 70a0         	strb	r0, [r4, #0x2]
 8002814: 4d7d         	ldr	r5, [pc, #0x1f4]        @ 0x8002a0c <firmware_image+0x2a0c>
 8002816: 2201         	movs	r2, #0x1
 8002818: 2807         	cmp	r0, #0x7
 800281a: d21b         	bhs	0x8002854 <firmware_image+0x2854> @ imm = #0x36
 800281c: e8df f000    	tbb	[pc, r0]
 8002820: 0416         	lsls	r6, r2, #0x10
 8002822: 0012         	movs	r2, r2
 8002824: f646 21aa    	movw	r1, #0x6aaa
 8002828: 85a1         	strh	r1, [r4, #0x2c]
 800282a: e01f         	b	0x800286c <firmware_image+0x286c> @ imm = #0x3e
 800282c: f249 5154    	movw	r1, #0x9554
 8002830: 85a1         	strh	r1, [r4, #0x2c]
 8002832: e01b         	b	0x800286c <firmware_image+0x286c> @ imm = #0x36
 8002834: f46f 4180    	mvn	r1, #0x4000
 8002838: 85a1         	strh	r1, [r4, #0x2c]
 800283a: e017         	b	0x800286c <firmware_image+0x286c> @ imm = #0x2e
 800283c: 85a5         	strh	r5, [r4, #0x2c]
 800283e: e015         	b	0x800286c <firmware_image+0x286c> @ imm = #0x2a
 8002840: f241 5156    	movw	r1, #0x1556
 8002844: 85a1         	strh	r1, [r4, #0x2c]
 8002846: e011         	b	0x800286c <firmware_image+0x286c> @ imm = #0x22
 8002848: f44f 4180    	mov.w	r1, #0x4000
 800284c: 85a1         	strh	r1, [r4, #0x2c]
 800284e: e00d         	b	0x800286c <firmware_image+0x286c> @ imm = #0x1a
 8002850: 8aa1         	ldrh	r1, [r4, #0x14]
 8002852: 1c49         	adds	r1, r1, #0x1
 8002854: b289         	uxth	r1, r1
 8002856: 82a1         	strh	r1, [r4, #0x14]
 8002858: eb01 0341    	add.w	r3, r1, r1, lsl #1
 800285c: ebc3 11c1    	rsb	r1, r3, r1, lsl #7
 8002860: f44f 537a    	mov.w	r3, #0x3e80
 8002864: ebb3 0f41    	cmp.w	r3, r1, lsl #1
 8002868: d200         	bhs	0x800286c <firmware_image+0x286c> @ imm = #0x0
 800286a: 7062         	strb	r2, [r4, #0x1]
 800286c: f9b4 101e    	ldrsh.w	r1, [r4, #0x1e]
 8002870: 2600         	movs	r6, #0x0
 8002872: 1c4b         	adds	r3, r1, #0x1
 8002874: 83e3         	strh	r3, [r4, #0x1e]
 8002876: f5b1 6f48    	cmp.w	r1, #0xc80
 800287a: dd03         	ble	0x8002884 <firmware_image+0x2884> @ imm = #0x6
 800287c: 83e6         	strh	r6, [r4, #0x1e]
 800287e: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002880: 82e1         	strh	r1, [r4, #0x16]
 8002882: 83a6         	strh	r6, [r4, #0x1c]
 8002884: 79a1         	ldrb	r1, [r4, #0x6]
 8002886: 4281         	cmp	r1, r0
 8002888: d07d         	beq	0x8002986 <firmware_image+0x2986> @ imm = #0xfa
 800288a: f04f 33ff    	mov.w	r3, #0xffffffff
 800288e: 2807         	cmp	r0, #0x7
 8002890: d25e         	bhs	0x8002950 <firmware_image+0x2950> @ imm = #0xbc
 8002892: e8df f000    	tbb	[pc, r0]
 8002896: 135d         	asrs	r5, r3, #0xd
 8002898: 2231         	movs	r2, #0x31
 800289a: 044f         	lsls	r7, r1, #0x11
 800289c: 0040         	lsls	r0, r0, #0x1
 800289e: 2904         	cmp	r1, #0x4
 80028a0: d002         	beq	0x80028a8 <firmware_image+0x28a8> @ imm = #0x4
 80028a2: 2901         	cmp	r1, #0x1
 80028a4: d005         	beq	0x80028b2 <firmware_image+0x28b2> @ imm = #0xa
 80028a6: e053         	b	0x8002950 <firmware_image+0x2950> @ imm = #0xa6
 80028a8: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028aa: 1c49         	adds	r1, r1, #0x1
 80028ac: 83a1         	strh	r1, [r4, #0x1c]
 80028ae: 7022         	strb	r2, [r4]
 80028b0: e04e         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x9c
 80028b2: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028b4: 1e49         	subs	r1, r1, #0x1
 80028b6: 83a1         	strh	r1, [r4, #0x1c]
 80028b8: 7023         	strb	r3, [r4]
 80028ba: e049         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x92
 80028bc: 2905         	cmp	r1, #0x5
 80028be: d002         	beq	0x80028c6 <firmware_image+0x28c6> @ imm = #0x4
 80028c0: 2903         	cmp	r1, #0x3
 80028c2: d005         	beq	0x80028d0 <firmware_image+0x28d0> @ imm = #0xa
 80028c4: e044         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x88
 80028c6: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028c8: 1c49         	adds	r1, r1, #0x1
 80028ca: 83a1         	strh	r1, [r4, #0x1c]
 80028cc: 7022         	strb	r2, [r4]
 80028ce: e03f         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x7e
 80028d0: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028d2: 1e49         	subs	r1, r1, #0x1
 80028d4: 83a1         	strh	r1, [r4, #0x1c]
 80028d6: 7023         	strb	r3, [r4]
 80028d8: e03a         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x74
 80028da: 2901         	cmp	r1, #0x1
 80028dc: d002         	beq	0x80028e4 <firmware_image+0x28e4> @ imm = #0x4
 80028de: 2902         	cmp	r1, #0x2
 80028e0: d005         	beq	0x80028ee <firmware_image+0x28ee> @ imm = #0xa
 80028e2: e035         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x6a
 80028e4: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028e6: 1c49         	adds	r1, r1, #0x1
 80028e8: 83a1         	strh	r1, [r4, #0x1c]
 80028ea: 7022         	strb	r2, [r4]
 80028ec: e030         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x60
 80028ee: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028f0: 1e49         	subs	r1, r1, #0x1
 80028f2: 83a1         	strh	r1, [r4, #0x1c]
 80028f4: 7023         	strb	r3, [r4]
 80028f6: e02b         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x56
 80028f8: 2903         	cmp	r1, #0x3
 80028fa: d002         	beq	0x8002902 <firmware_image+0x2902> @ imm = #0x4
 80028fc: 2906         	cmp	r1, #0x6
 80028fe: d005         	beq	0x800290c <firmware_image+0x290c> @ imm = #0xa
 8002900: e026         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x4c
 8002902: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002904: 1c49         	adds	r1, r1, #0x1
 8002906: 83a1         	strh	r1, [r4, #0x1c]
 8002908: 7022         	strb	r2, [r4]
 800290a: e021         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x42
 800290c: 8ba1         	ldrh	r1, [r4, #0x1c]
 800290e: 1e49         	subs	r1, r1, #0x1
 8002910: 83a1         	strh	r1, [r4, #0x1c]
 8002912: 7023         	strb	r3, [r4]
 8002914: e01c         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x38
 8002916: 2902         	cmp	r1, #0x2
 8002918: d002         	beq	0x8002920 <firmware_image+0x2920> @ imm = #0x4
 800291a: 2904         	cmp	r1, #0x4
 800291c: d005         	beq	0x800292a <firmware_image+0x292a> @ imm = #0xa
 800291e: e017         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x2e
 8002920: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002922: 1c49         	adds	r1, r1, #0x1
 8002924: 83a1         	strh	r1, [r4, #0x1c]
 8002926: 7022         	strb	r2, [r4]
 8002928: e012         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x24
 800292a: 8ba1         	ldrh	r1, [r4, #0x1c]
 800292c: 1e49         	subs	r1, r1, #0x1
 800292e: 83a1         	strh	r1, [r4, #0x1c]
 8002930: 7023         	strb	r3, [r4]
 8002932: e00d         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x1a
 8002934: 2906         	cmp	r1, #0x6
 8002936: d002         	beq	0x800293e <firmware_image+0x293e> @ imm = #0x4
 8002938: 2905         	cmp	r1, #0x5
 800293a: d005         	beq	0x8002948 <firmware_image+0x2948> @ imm = #0xa
 800293c: e008         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x10
 800293e: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002940: 1c49         	adds	r1, r1, #0x1
 8002942: 83a1         	strh	r1, [r4, #0x1c]
 8002944: 7022         	strb	r2, [r4]
 8002946: e003         	b	0x8002950 <firmware_image+0x2950> @ imm = #0x6
 8002948: 8ba1         	ldrh	r1, [r4, #0x1c]
 800294a: 1e49         	subs	r1, r1, #0x1
 800294c: 83a1         	strh	r1, [r4, #0x1c]
 800294e: 7023         	strb	r3, [r4]
 8002950: 8c23         	ldrh	r3, [r4, #0x20]
 8002952: 8463         	strh	r3, [r4, #0x22]
 8002954: 8ca1         	ldrh	r1, [r4, #0x24]
 8002956: 8421         	strh	r1, [r4, #0x20]
 8002958: ebc1 07c1    	rsb	r7, r1, r1, lsl #3
 800295c: eb01 0cc1    	add.w	r12, r1, r1, lsl #3
 8002960: eb07 0787    	add.w	r7, r7, r7, lsl #2
 8002964: eb0c 1c01    	add.w	r12, r12, r1, lsl #4
 8002968: eb07 074c    	add.w	r7, r7, r12, lsl #1
 800296c: ebc3 1303    	rsb	r3, r3, r3, lsl #4
 8002970: 443b         	add	r3, r7
 8002972: 2764         	movs	r7, #0x64
 8002974: fbb3 f3f7    	udiv	r3, r3, r7
 8002978: b29b         	uxth	r3, r3
 800297a: 84e3         	strh	r3, [r4, #0x26]
 800297c: f642 27aa    	movw	r7, #0x2aaa
 8002980: fbb7 f7f3    	udiv	r7, r7, r3
 8002984: e000         	b	0x8002988 <firmware_image+0x2988> @ imm = #0x0
 8002986: e00b         	b	0x80029a0 <firmware_image+0x29a0> @ imm = #0x16
 8002988: f994 3000    	ldrsb.w	r3, [r4]
 800298c: 435f         	muls	r7, r3, r7
 800298e: 8527         	strh	r7, [r4, #0x28]
 8002990: f24b 4701    	movw	r7, #0xb401
 8002994: 437b         	muls	r3, r7, r3
 8002996: fb93 f1f1    	sdiv	r1, r3, r1
 800299a: 8321         	strh	r1, [r4, #0x18]
 800299c: 84a6         	strh	r6, [r4, #0x24]
 800299e: 8566         	strh	r6, [r4, #0x2a]
 80029a0: 8ca1         	ldrh	r1, [r4, #0x24]
 80029a2: f64f 73ff    	movw	r3, #0xffff
 80029a6: 4299         	cmp	r1, r3
 80029a8: d201         	bhs	0x80029ae <firmware_image+0x29ae> @ imm = #0x2
 80029aa: 1c49         	adds	r1, r1, #0x1
 80029ac: 84a1         	strh	r1, [r4, #0x24]
 80029ae: 71a0         	strb	r0, [r4, #0x6]
 80029b0: 8ca0         	ldrh	r0, [r4, #0x24]
 80029b2: 28c8         	cmp	r0, #0xc8
 80029b4: d223         	bhs	0x80029fe <firmware_image+0x29fe> @ imm = #0x46
 80029b6: 72a2         	strb	r2, [r4, #0xa]
 80029b8: f9b4 0028    	ldrsh.w	r0, [r4, #0x28]
 80029bc: 2802         	cmp	r0, #0x2
 80029be: dd01         	ble	0x80029c4 <firmware_image+0x29c4> @ imm = #0x2
 80029c0: 8365         	strh	r5, [r4, #0x1a]
 80029c2: e005         	b	0x80029d0 <firmware_image+0x29d0> @ imm = #0xa
 80029c4: f110 0f02    	cmn.w	r0, #0x2
 80029c8: da02         	bge	0x80029d0 <firmware_image+0x29d0> @ imm = #0x4
 80029ca: f241 5055    	movw	r0, #0x1555
 80029ce: 8360         	strh	r0, [r4, #0x1a]
 80029d0: f9b4 002a    	ldrsh.w	r0, [r4, #0x2a]
 80029d4: f7fd fe41    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x237e
 80029d8: f021 4100    	bic	r1, r1, #0x80000000
 80029dc: 2200         	movs	r2, #0x0
 80029de: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x8002a0c <firmware_image+0x2a0c>
 80029e0: f7fd fe98    	bl	0x8000714 <firmware_image+0x714> @ imm = #-0x22d0
 80029e4: d203         	bhs	0x80029ee <firmware_image+0x29ee> @ imm = #0x6
 80029e6: 8d60         	ldrh	r0, [r4, #0x2a]
 80029e8: 8d21         	ldrh	r1, [r4, #0x28]
 80029ea: 4408         	add	r0, r1
 80029ec: 8560         	strh	r0, [r4, #0x2a]
 80029ee: 8da0         	ldrh	r0, [r4, #0x2c]
 80029f0: 8d61         	ldrh	r1, [r4, #0x2a]
 80029f2: 4408         	add	r0, r1
 80029f4: 8b61         	ldrh	r1, [r4, #0x1a]
 80029f6: 4408         	add	r0, r1
 80029f8: 85a0         	strh	r0, [r4, #0x2c]
 80029fa: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 80029fe: 8366         	strh	r6, [r4, #0x1a]
 8002a00: 72a6         	strb	r6, [r4, #0xa]
 8002a02: e7fa         	b	0x80029fa <firmware_image+0x29fa> @ imm = #-0xc
 8002a04: 0268         	lsls	r0, r5, #0x9
 8002a06: 2000         	movs	r0, #0x0
 8002a08: eaab ffff    	<unknown>
 8002a0c: 5500         	strb	r0, [r0, r4]
 8002a0e: 40c5         	lsrs	r5, r0
 8002a10: e7fe         	b	0x8002a10 <firmware_image+0x2a10> @ imm = #-0x4
 8002a12: 0000         	movs	r0, r0
 8002a14: 480c         	ldr	r0, [pc, #0x30]         @ 0x8002a48 <firmware_image+0x2a48>
 8002a16: 490d         	ldr	r1, [pc, #0x34]         @ 0x8002a4c <firmware_image+0x2a4c>
 8002a18: 8d02         	ldrh	r2, [r0, #0x28]
 8002a1a: 2a00         	cmp	r2, #0x0
 8002a1c: d009         	beq	0x8002a32 <firmware_image+0x2a32> @ imm = #0x12
 8002a1e: 6481         	str	r1, [r0, #0x48]
 8002a20: f44f 617a    	mov.w	r1, #0xfa0
 8002a24: 64c1         	str	r1, [r0, #0x4c]
 8002a26: f240 61a4    	movw	r1, #0x6a4
 8002a2a: 6501         	str	r1, [r0, #0x50]
 8002a2c: 2128         	movs	r1, #0x28
 8002a2e: 6541         	str	r1, [r0, #0x54]
 8002a30: 4770         	bx	lr
 8002a32: 6481         	str	r1, [r0, #0x48]
 8002a34: f640 31b8    	movw	r1, #0xbb8
 8002a38: 64c1         	str	r1, [r0, #0x4c]
 8002a3a: f44f 717a    	mov.w	r1, #0x3e8
 8002a3e: 6501         	str	r1, [r0, #0x50]
 8002a40: 211e         	movs	r1, #0x1e
 8002a42: 6541         	str	r1, [r0, #0x54]
 8002a44: 4770         	bx	lr
 8002a46: 0000         	movs	r0, r0
 8002a48: 0064         	lsls	r4, r4, #0x1
 8002a4a: 2000         	movs	r0, #0x0
 8002a4c: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
 8002a4e: 3ecc         	subs	r6, #0xcc
 8002a50: b510         	push	{r4, lr}
 8002a52: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x8002a88 <firmware_image+0x2a88>
 8002a54: 2140         	movs	r1, #0x40
 8002a56: 4620         	mov	r0, r4
 8002a58: f7ff fe81    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x2fe
 8002a5c: f000 f98f    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x31e
 8002a60: 2180         	movs	r1, #0x80
 8002a62: 4620         	mov	r0, r4
 8002a64: f7ff fe7b    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x30a
 8002a68: f000 f989    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x312
 8002a6c: 2140         	movs	r1, #0x40
 8002a6e: 4620         	mov	r0, r4
 8002a70: f7ff fe77    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x312
 8002a74: f000 f983    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x306
 8002a78: 2140         	movs	r1, #0x40
 8002a7a: 4620         	mov	r0, r4
 8002a7c: f7ff fe6f    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x322
 8002a80: e8bd 4010    	pop.w	{r4, lr}
 8002a84: f000 b97b    	b.w	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x2f6
 8002a88: 0400         	lsls	r0, r0, #0x10
 8002a8a: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002a8c <firmware_image+0x2a8c>
 8002a8c: b51c         	push	{r2, r3, r4, lr}
 8002a8e: 2101         	movs	r1, #0x1
 8002a90: f44f 00bc    	mov.w	r0, #0x5e0000
 8002a94: f001 fc5c    	bl	0x8004350 <firmware_image+0x4350> @ imm = #0x18b8
 8002a98: 2002         	movs	r0, #0x2
 8002a9a: f88d 0005    	strb.w	r0, [sp, #0x5]
 8002a9e: 2001         	movs	r0, #0x1
 8002aa0: f88d 0004    	strb.w	r0, [sp, #0x4]
 8002aa4: f88d 0006    	strb.w	r0, [sp, #0x6]
 8002aa8: 2000         	movs	r0, #0x0
 8002aaa: f88d 0007    	strb.w	r0, [sp, #0x7]
 8002aae: 2040         	movs	r0, #0x40
 8002ab0: 9000         	str	r0, [sp]
 8002ab2: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x8002adc <firmware_image+0x2adc>
 8002ab4: 4669         	mov	r1, sp
 8002ab6: 4620         	mov	r0, r4
 8002ab8: f7ff fdfe    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0x404
 8002abc: 2180         	movs	r1, #0x80
 8002abe: 9100         	str	r1, [sp]
 8002ac0: 4669         	mov	r1, sp
 8002ac2: 4620         	mov	r0, r4
 8002ac4: f7ff fdf8    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0x410
 8002ac8: 2140         	movs	r1, #0x40
 8002aca: 4620         	mov	r0, r4
 8002acc: f7ff fe49    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x36e
 8002ad0: 2180         	movs	r1, #0x80
 8002ad2: 4620         	mov	r0, r4
 8002ad4: f7ff fe45    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x376
 8002ad8: bd1c         	pop	{r2, r3, r4, pc}
 8002ada: 0000         	movs	r0, r0
 8002adc: 0400         	lsls	r0, r0, #0x10
 8002ade: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002ae0 <firmware_image+0x2ae0>
 8002ae0: b510         	push	{r4, lr}
 8002ae2: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x8002b18 <firmware_image+0x2b18>
 8002ae4: 2140         	movs	r1, #0x40
 8002ae6: 4620         	mov	r0, r4
 8002ae8: f7ff fe39    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x38e
 8002aec: f000 f947    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x28e
 8002af0: f7ff fe35    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x396
 8002af4: f000 f941    	bl	0x8002d7a <firmware_image+0x2d7a> @ imm = #0x282
 8002af8: 2140         	movs	r1, #0x40
 8002afa: 4620         	mov	r0, r4
 8002afc: f7ff fe2f    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x3a2
 8002b00: f000 f93b    	bl	0x8002d7a <firmware_image+0x2d7a> @ imm = #0x276
 8002b04: 2140         	movs	r1, #0x40
 8002b06: 4620         	mov	r0, r4
 8002b08: f7ff fe27    	bl	0x800275a <firmware_image+0x275a> @ imm = #-0x3b2
 8002b0c: e8bd 4010    	pop.w	{r4, lr}
 8002b10: f000 b933    	b.w	0x8002d7a <firmware_image+0x2d7a> @ imm = #0x266
 8002b14: 0400         	lsls	r0, r0, #0x10
 8002b16: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002b18 <firmware_image+0x2b18>
 8002b18: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002b1c: 4606         	mov	r6, r0
 8002b1e: 460f         	mov	r7, r1
 8002b20: 4614         	mov	r4, r2
 8002b22: 461d         	mov	r5, r3
 8002b24: f000 f888    	bl	0x8002c38 <firmware_image+0x2c38> @ imm = #0x110
 8002b28: b1b0         	cbz	r0, 0x8002b58 <firmware_image+0x2b58> @ imm = #0x2c
 8002b2a: 0670         	lsls	r0, r6, #0x19
 8002b2c: 0e00         	lsrs	r0, r0, #0x18
 8002b2e: f000 f857    	bl	0x8002be0 <firmware_image+0x2be0> @ imm = #0xae
 8002b32: f000 f8cb    	bl	0x8002ccc <firmware_image+0x2ccc> @ imm = #0x196
 8002b36: b190         	cbz	r0, 0x8002b5e <firmware_image+0x2b5e> @ imm = #0x24
 8002b38: 4638         	mov	r0, r7
 8002b3a: f000 f851    	bl	0x8002be0 <firmware_image+0x2be0> @ imm = #0xa2
 8002b3e: f000 f8c5    	bl	0x8002ccc <firmware_image+0x2ccc> @ imm = #0x18a
 8002b42: f000 f879    	bl	0x8002c38 <firmware_image+0x2c38> @ imm = #0xf2
 8002b46: 2001         	movs	r0, #0x1
 8002b48: eb00 0046    	add.w	r0, r0, r6, lsl #1
 8002b4c: b2c0         	uxtb	r0, r0
 8002b4e: f000 f847    	bl	0x8002be0 <firmware_image+0x2be0> @ imm = #0x8e
 8002b52: f000 f8bb    	bl	0x8002ccc <firmware_image+0x2ccc> @ imm = #0x176
 8002b56: e010         	b	0x8002b7a <firmware_image+0x2b7a> @ imm = #0x20
 8002b58: 2000         	movs	r0, #0x0
 8002b5a: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8002b5e: f000 f897    	bl	0x8002c90 <firmware_image+0x2c90> @ imm = #0x12e
 8002b62: 2000         	movs	r0, #0x0
 8002b64: e7f9         	b	0x8002b5a <firmware_image+0x2b5a> @ imm = #-0xe
 8002b66: f000 f811    	bl	0x8002b8c <firmware_image+0x2b8c> @ imm = #0x22
 8002b6a: 7028         	strb	r0, [r5]
 8002b6c: 2c01         	cmp	r4, #0x1
 8002b6e: d00a         	beq	0x8002b86 <firmware_image+0x2b86> @ imm = #0x14
 8002b70: f7ff ff6c    	bl	0x8002a4c <firmware_image+0x2a4c> @ imm = #-0x128
 8002b74: 1c6d         	adds	r5, r5, #0x1
 8002b76: 1e64         	subs	r4, r4, #0x1
 8002b78: b2e4         	uxtb	r4, r4
 8002b7a: 2c00         	cmp	r4, #0x0
 8002b7c: d1f3         	bne	0x8002b66 <firmware_image+0x2b66> @ imm = #-0x1a
 8002b7e: f000 f887    	bl	0x8002c90 <firmware_image+0x2c90> @ imm = #0x10e
 8002b82: 2001         	movs	r0, #0x1
 8002b84: e7e9         	b	0x8002b5a <firmware_image+0x2b5a> @ imm = #-0x2e
 8002b86: f7ff ffa9    	bl	0x8002adc <firmware_image+0x2adc> @ imm = #-0xae
 8002b8a: e7f3         	b	0x8002b74 <firmware_image+0x2b74> @ imm = #-0x1a
 8002b8c: b570         	push	{r4, r5, r6, lr}
 8002b8e: 2508         	movs	r5, #0x8
 8002b90: 2400         	movs	r4, #0x0
 8002b92: 4e12         	ldr	r6, [pc, #0x48]         @ 0x8002bdc <firmware_image+0x2bdc>
 8002b94: 2180         	movs	r1, #0x80
 8002b96: 4630         	mov	r0, r6
 8002b98: f7ff fde1    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x43e
 8002b9c: e014         	b	0x8002bc8 <firmware_image+0x2bc8> @ imm = #0x28
 8002b9e: 0660         	lsls	r0, r4, #0x19
 8002ba0: 0e04         	lsrs	r4, r0, #0x18
 8002ba2: 2140         	movs	r1, #0x40
 8002ba4: 4630         	mov	r0, r6
 8002ba6: f7ff fdd8    	bl	0x800275a <firmware_image+0x275a> @ imm = #-0x450
 8002baa: f000 f8e6    	bl	0x8002d7a <firmware_image+0x2d7a> @ imm = #0x1cc
 8002bae: 2140         	movs	r1, #0x40
 8002bb0: 4630         	mov	r0, r6
 8002bb2: f7ff fdd4    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x458
 8002bb6: f000 f8e0    	bl	0x8002d7a <firmware_image+0x2d7a> @ imm = #0x1c0
 8002bba: 2180         	movs	r1, #0x80
 8002bbc: 4630         	mov	r0, r6
 8002bbe: f7ff fdc5    	bl	0x800274c <firmware_image+0x274c> @ imm = #-0x476
 8002bc2: b108         	cbz	r0, 0x8002bc8 <firmware_image+0x2bc8> @ imm = #0x2
 8002bc4: f044 0401    	orr	r4, r4, #0x1
 8002bc8: 1e6d         	subs	r5, r5, #0x1
 8002bca: b2ed         	uxtb	r5, r5
 8002bcc: d2e7         	bhs	0x8002b9e <firmware_image+0x2b9e> @ imm = #-0x32
 8002bce: 2140         	movs	r1, #0x40
 8002bd0: 4630         	mov	r0, r6
 8002bd2: f7ff fdc2    	bl	0x800275a <firmware_image+0x275a> @ imm = #-0x47c
 8002bd6: 4620         	mov	r0, r4
 8002bd8: bd70         	pop	{r4, r5, r6, pc}
 8002bda: 0000         	movs	r0, r0
 8002bdc: 0400         	lsls	r0, r0, #0x10
 8002bde: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002be0 <firmware_image+0x2be0>
 8002be0: b570         	push	{r4, r5, r6, lr}
 8002be2: 4605         	mov	r5, r0
 8002be4: 2408         	movs	r4, #0x8
 8002be6: 4e13         	ldr	r6, [pc, #0x4c]         @ 0x8002c34 <firmware_image+0x2c34>
 8002be8: e01a         	b	0x8002c20 <firmware_image+0x2c20> @ imm = #0x34
 8002bea: 2140         	movs	r1, #0x40
 8002bec: 4630         	mov	r0, r6
 8002bee: f7ff fdb4    	bl	0x800275a <firmware_image+0x275a> @ imm = #-0x498
 8002bf2: f000 f8c2    	bl	0x8002d7a <firmware_image+0x2d7a> @ imm = #0x184
 8002bf6: 0628         	lsls	r0, r5, #0x18
 8002bf8: d504         	bpl	0x8002c04 <firmware_image+0x2c04> @ imm = #0x8
 8002bfa: 2180         	movs	r1, #0x80
 8002bfc: 4630         	mov	r0, r6
 8002bfe: f7ff d504    	bl	0x740260a               @ imm = #-0xc005f8
 8002c02: 2180         	movs	r1, #0x80
 8002c04: 4630         	mov	r0, r6
 8002c06: f7ff fdae    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x4a4
 8002c0a: e003         	b	0x8002c14 <firmware_image+0x2c14> @ imm = #0x6
 8002c0c: 2180         	movs	r1, #0x80
 8002c0e: 4630         	mov	r0, r6
 8002c10: f7ff fda7    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x4b2
 8002c14: 0668         	lsls	r0, r5, #0x19
 8002c16: 0e05         	lsrs	r5, r0, #0x18
 8002c18: f000 f8b3    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x166
 8002c1c: 2140         	movs	r1, #0x40
 8002c1e: 4630         	mov	r0, r6
 8002c20: f7ff fda1    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x4be
 8002c24: f000 f8ad    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x15a
 8002c28: 1e64         	subs	r4, r4, #0x1
 8002c2a: b2e4         	uxtb	r4, r4
 8002c2c: d2e1         	bhs	0x8002bf2 <firmware_image+0x2bf2> @ imm = #-0x3e
 8002c2e: 4630         	mov	r0, r6
 8002c30: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 8002c34: 2140         	movs	r1, #0x40
 8002c36: f7ff bd94    	b.w	0x8002762 <firmware_image+0x2762> @ imm = #-0x4d8
 8002c3a: 0000         	movs	r0, r0
 8002c3c: 0400         	lsls	r0, r0, #0x10
 8002c3e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002c40 <firmware_image+0x2c40>
 8002c40: b510         	push	{r4, lr}
 8002c42: 4c14         	ldr	r4, [pc, #0x50]         @ 0x8002c94 <firmware_image+0x2c94>
 8002c44: 2180         	movs	r1, #0x80
 8002c46: 4620         	mov	r0, r4
 8002c48: f000 f899    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x132
 8002c4c: 2140         	movs	r1, #0x40
 8002c4e: 4620         	mov	r0, r4
 8002c50: f7ff fd87    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x4f2
 8002c54: f000 f893    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x126
 8002c58: 2180         	movs	r1, #0x80
 8002c5a: 4620         	mov	r0, r4
 8002c5c: f7ff fd78    	bl	0x8002750 <firmware_image+0x2750> @ imm = #-0x510
 8002c60: b160         	cbz	r0, 0x8002c7c <firmware_image+0x2c7c> @ imm = #0x18
 8002c62: 2180         	movs	r1, #0x80
 8002c64: 4620         	mov	r0, r4
 8002c66: f7ff fd7a    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x50c
 8002c6a: f000 f888    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x110
 8002c6e: 2180         	movs	r1, #0x80
 8002c70: 4620         	mov	r0, r4
 8002c72: f7ff fd6d    	bl	0x8002750 <firmware_image+0x2750> @ imm = #-0x526
 8002c76: b118         	cbz	r0, 0x8002c80 <firmware_image+0x2c80> @ imm = #0x6
 8002c78: 2000         	movs	r0, #0x0
 8002c7a: bd10         	pop	{r4, pc}
 8002c7c: 2000         	movs	r0, #0x0
 8002c7e: bd10         	pop	{r4, pc}
 8002c80: 2180         	movs	r1, #0x80
 8002c82: 4620         	mov	r0, r4
 8002c84: f7ff fd6b    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x52a
 8002c88: f000 f879    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0xf2
 8002c8c: 2001         	movs	r0, #0x1
 8002c8e: bd10         	pop	{r4, pc}
 8002c90: 0400         	lsls	r0, r0, #0x10
 8002c92: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002c94 <firmware_image+0x2c94>
 8002c94: b510         	push	{r4, lr}
 8002c96: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x8002ccc <firmware_image+0x2ccc>
 8002c98: 2140         	movs	r1, #0x40
 8002c9a: 4620         	mov	r0, r4
 8002c9c: f7ff fd5f    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x542
 8002ca0: f000 f86d    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0xda
 8002ca4: 2180         	movs	r1, #0x80
 8002ca6: 4620         	mov	r0, r4
 8002ca8: f7ff fd59    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x54e
 8002cac: f000 f867    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0xce
 8002cb0: 2140         	movs	r1, #0x40
 8002cb2: 4620         	mov	r0, r4
 8002cb4: f7ff fd55    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x556
 8002cb8: f000 f861    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0xc2
 8002cbc: 2180         	movs	r1, #0x80
 8002cbe: 4620         	mov	r0, r4
 8002cc0: f7ff fd4f    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x562
 8002cc4: e8bd 4010    	pop.w	{r4, lr}
 8002cc8: f000 b859    	b.w	0x8002d7e <firmware_image+0x2d7e> @ imm = #0xb2
 8002ccc: 0400         	lsls	r0, r0, #0x10
 8002cce: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002cd0 <firmware_image+0x2cd0>
 8002cd0: b510         	push	{r4, lr}
 8002cd2: 4c12         	ldr	r4, [pc, #0x48]         @ 0x8002d1c <firmware_image+0x2d1c>
 8002cd4: 2140         	movs	r1, #0x40
 8002cd6: 4620         	mov	r0, r4
 8002cd8: f7ff fd41    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x57e
 8002cdc: f000 f84f    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x9e
 8002ce0: 2180         	movs	r1, #0x80
 8002ce2: 4620         	mov	r0, r4
 8002ce4: f7ff fd3d    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x586
 8002ce8: f000 f849    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x92
 8002cec: 2140         	movs	r1, #0x40
 8002cee: 4620         	mov	r0, r4
 8002cf0: f7ff fd37    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x592
 8002cf4: f000 f843    	bl	0x8002d7e <firmware_image+0x2d7e> @ imm = #0x86
 8002cf8: 2180         	movs	r1, #0x80
 8002cfa: 4620         	mov	r0, r4
 8002cfc: f7ff fd28    	bl	0x8002750 <firmware_image+0x2750> @ imm = #-0x5b0
 8002d00: b128         	cbz	r0, 0x8002d0e <firmware_image+0x2d0e> @ imm = #0xa
 8002d02: 2140         	movs	r1, #0x40
 8002d04: 4620         	mov	r0, r4
 8002d06: f7ff fd2a    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x5ac
 8002d0a: 2000         	movs	r0, #0x0
 8002d0c: bd10         	pop	{r4, pc}
 8002d0e: 2140         	movs	r1, #0x40
 8002d10: 4620         	mov	r0, r4
 8002d12: f7ff fd24    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x5b8
 8002d16: 2001         	movs	r0, #0x1
 8002d18: bd10         	pop	{r4, pc}
 8002d1a: 0000         	movs	r0, r0
 8002d1c: 0400         	lsls	r0, r0, #0x10
 8002d1e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002d20 <firmware_image+0x2d20>
 8002d20: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002d24: 4604         	mov	r4, r0
 8002d26: 460f         	mov	r7, r1
 8002d28: 4616         	mov	r6, r2
 8002d2a: 461d         	mov	r5, r3
 8002d2c: f7ff ff86    	bl	0x8002c3c <firmware_image+0x2c3c> @ imm = #-0xf4
 8002d30: b168         	cbz	r0, 0x8002d4e <firmware_image+0x2d4e> @ imm = #0x1a
 8002d32: 0660         	lsls	r0, r4, #0x19
 8002d34: 0e00         	lsrs	r0, r0, #0x18
 8002d36: f7ff ff55    	bl	0x8002be4 <firmware_image+0x2be4> @ imm = #-0x156
 8002d3a: f7ff ffc9    	bl	0x8002cd0 <firmware_image+0x2cd0> @ imm = #-0x6e
 8002d3e: b148         	cbz	r0, 0x8002d54 <firmware_image+0x2d54> @ imm = #0x12
 8002d40: 4638         	mov	r0, r7
 8002d42: f7ff ff4f    	bl	0x8002be4 <firmware_image+0x2be4> @ imm = #-0x162
 8002d46: f7ff ffc3    	bl	0x8002cd0 <firmware_image+0x2cd0> @ imm = #-0x7a
 8002d4a: 2400         	movs	r4, #0x0
 8002d4c: e00d         	b	0x8002d6a <firmware_image+0x2d6a> @ imm = #0x1a
 8002d4e: 2000         	movs	r0, #0x0
 8002d50: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8002d54: f7ff ff9e    	bl	0x8002c94 <firmware_image+0x2c94> @ imm = #-0xc4
 8002d58: 2000         	movs	r0, #0x0
 8002d5a: e7f9         	b	0x8002d50 <firmware_image+0x2d50> @ imm = #-0xe
 8002d5c: 5d28         	ldrb	r0, [r5, r4]
 8002d5e: f7ff ff41    	bl	0x8002be4 <firmware_image+0x2be4> @ imm = #-0x17e
 8002d62: f7ff ffb5    	bl	0x8002cd0 <firmware_image+0x2cd0> @ imm = #-0x96
 8002d66: b130         	cbz	r0, 0x8002d76 <firmware_image+0x2d76> @ imm = #0xc
 8002d68: 1c64         	adds	r4, r4, #0x1
 8002d6a: 42b4         	cmp	r4, r6
 8002d6c: dbf6         	blt	0x8002d5c <firmware_image+0x2d5c> @ imm = #-0x14
 8002d6e: f7ff ff91    	bl	0x8002c94 <firmware_image+0x2c94> @ imm = #-0xde
 8002d72: 2001         	movs	r0, #0x1
 8002d74: e7ec         	b	0x8002d50 <firmware_image+0x2d50> @ imm = #-0x28
 8002d76: f7ff ff8d    	bl	0x8002c94 <firmware_image+0x2c94> @ imm = #-0xe6
 8002d7a: 2000         	movs	r0, #0x0
 8002d7c: e7e8         	b	0x8002d50 <firmware_image+0x2d50> @ imm = #-0x30
 8002d7e: b508         	push	{r3, lr}
 8002d80: 2003         	movs	r0, #0x3
 8002d82: 9000         	str	r0, [sp]
 8002d84: e002         	b	0x8002d8c <firmware_image+0x2d8c> @ imm = #0x4
 8002d86: 9800         	ldr	r0, [sp]
 8002d88: 1e40         	subs	r0, r0, #0x1
 8002d8a: 9000         	str	r0, [sp]
 8002d8c: 9800         	ldr	r0, [sp]
 8002d8e: 2800         	cmp	r0, #0x0
 8002d90: d1f9         	bne	0x8002d86 <firmware_image+0x2d86> @ imm = #-0xe
 8002d92: bd08         	pop	{r3, pc}
 8002d94: e92d 4ff8    	push.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8002d98: 4606         	mov	r6, r0
 8002d9a: 4f45         	ldr	r7, [pc, #0x114]        @ 0x8002eb0 <firmware_image+0x2eb0>
 8002d9c: 68f9         	ldr	r1, [r7, #0xc]
 8002d9e: 4688         	mov	r8, r1
 8002da0: 4640         	mov	r0, r8
 8002da2: f7fd fa4d    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2b66
 8002da6: 68b9         	ldr	r1, [r7, #0x8]
 8002da8: 4604         	mov	r4, r0
 8002daa: 4689         	mov	r9, r1
 8002dac: 4648         	mov	r0, r9
 8002dae: f7fd fa47    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2b72
 8002db2: 4621         	mov	r1, r4
 8002db4: f7fd f9ec    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2c28
 8002db8: 2101         	movs	r1, #0x1
 8002dba: f7fd fab1    	bl	0x8000320 <firmware_image+0x320> @ imm = #-0x2a9e
 8002dbe: f04f 5a7e    	mov.w	r10, #0x3f800000
 8002dc2: 4651         	mov	r1, r10
 8002dc4: f7fd fa39    	bl	0x800023a <firmware_image+0x23a> @ imm = #-0x2b8e
 8002dc8: f7fd fc90    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x26e0
 8002dcc: 4604         	mov	r4, r0
 8002dce: 460d         	mov	r5, r1
 8002dd0: 4641         	mov	r1, r8
 8002dd2: 6838         	ldr	r0, [r7]
 8002dd4: f7fd fa34    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2b98
 8002dd8: 4680         	mov	r8, r0
 8002dda: 4649         	mov	r1, r9
 8002ddc: 6878         	ldr	r0, [r7, #0x4]
 8002dde: f7fd fa2f    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2ba2
 8002de2: 4641         	mov	r1, r8
 8002de4: f7fd f9d4    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2c58
 8002de8: 2101         	movs	r1, #0x1
 8002dea: f7fd fa99    	bl	0x8000320 <firmware_image+0x320> @ imm = #-0x2ace
 8002dee: f7fd fc7d    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x2706
 8002df2: 4622         	mov	r2, r4
 8002df4: 462b         	mov	r3, r5
 8002df6: f003 fd5f    	bl	0x80068b8 <firmware_image+0x68b8> @ imm = #0x3abe
 8002dfa: f04f 4880    	mov.w	r8, #0x40000000
 8002dfe: 4642         	mov	r2, r8
 8002e00: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x8002eb4 <firmware_image+0x2eb4>
 8002e02: f7fd fb40    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x2980
 8002e06: f7fd fc9d    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x26c6
 8002e0a: 6070         	str	r0, [r6, #0x4]
 8002e0c: 68f9         	ldr	r1, [r7, #0xc]
 8002e0e: 6878         	ldr	r0, [r7, #0x4]
 8002e10: f7fd fa16    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2bd4
 8002e14: 4604         	mov	r4, r0
 8002e16: 68b9         	ldr	r1, [r7, #0x8]
 8002e18: 6838         	ldr	r0, [r7]
 8002e1a: f7fd fa11    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2bde
 8002e1e: 4621         	mov	r1, r4
 8002e20: f7fd fa08    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x2bf0
 8002e24: 2101         	movs	r1, #0x1
 8002e26: f7fd fa7b    	bl	0x8000320 <firmware_image+0x320> @ imm = #-0x2b0a
 8002e2a: f7fd fc5f    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x2742
 8002e2e: f003 fafb    	bl	0x8006428 <firmware_image+0x6428> @ imm = #0x35f6
 8002e32: f8df 9084    	ldr.w	r9, [pc, #0x84]         @ 0x8002eb8 <firmware_image+0x2eb8>
 8002e36: 4642         	mov	r2, r8
 8002e38: 464b         	mov	r3, r9
 8002e3a: f7fd fb24    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x29b8
 8002e3e: f7fd fc81    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x26fe
 8002e42: 6030         	str	r0, [r6]
 8002e44: 68b9         	ldr	r1, [r7, #0x8]
 8002e46: 468b         	mov	r11, r1
 8002e48: 4658         	mov	r0, r11
 8002e4a: f7fd f9f9    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2c0e
 8002e4e: 6879         	ldr	r1, [r7, #0x4]
 8002e50: 4604         	mov	r4, r0
 8002e52: 4608         	mov	r0, r1
 8002e54: 9100         	str	r1, [sp]
 8002e56: f7fd f9f3    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2c1a
 8002e5a: 4621         	mov	r1, r4
 8002e5c: f7fd f998    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2cd0
 8002e60: 2101         	movs	r1, #0x1
 8002e62: f7fd fa5d    	bl	0x8000320 <firmware_image+0x320> @ imm = #-0x2b46
 8002e66: 4651         	mov	r1, r10
 8002e68: f7fd f9e7    	bl	0x800023a <firmware_image+0x23a> @ imm = #-0x2c32
 8002e6c: f7fd fc3e    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x2784
 8002e70: 4604         	mov	r4, r0
 8002e72: 460d         	mov	r5, r1
 8002e74: 4658         	mov	r0, r11
 8002e76: 68f9         	ldr	r1, [r7, #0xc]
 8002e78: f7fd f9e2    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2c3c
 8002e7c: 4682         	mov	r10, r0
 8002e7e: 9900         	ldr	r1, [sp]
 8002e80: 6838         	ldr	r0, [r7]
 8002e82: f7fd f9dd    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2c46
 8002e86: 4651         	mov	r1, r10
 8002e88: f7fd f982    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2cfc
 8002e8c: 2101         	movs	r1, #0x1
 8002e8e: f7fd fa47    	bl	0x8000320 <firmware_image+0x320> @ imm = #-0x2b72
 8002e92: f7fd fc2b    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x27aa
 8002e96: 4622         	mov	r2, r4
 8002e98: 462b         	mov	r3, r5
 8002e9a: f003 fd0d    	bl	0x80068b8 <firmware_image+0x68b8> @ imm = #0x3a1a
 8002e9e: 4642         	mov	r2, r8
 8002ea0: 464b         	mov	r3, r9
 8002ea2: f7fd faf0    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x2a20
 8002ea6: f7fd fc4d    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x2766
 8002eaa: 60b0         	str	r0, [r6, #0x8]
 8002eac: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8002eb0: 0044         	lsls	r4, r0, #0x1
 8002eb2: 2000         	movs	r0, #0x0
 8002eb4: a5dc         	adr	r5, #880 <firmware_image+0x2f94>
 8002eb6: c04c         	stm	r0!, {r2, r3, r6}
 8002eb8: a5dc         	adr	r5, #880 <firmware_image+0x2f98>
 8002eba: 404c         	eors	r4, r1
 8002ebc: e92d 4fff    	push.w	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8002ec0: b085         	sub	sp, #0x14
 8002ec2: 461f         	mov	r7, r3
 8002ec4: e9dd 8912    	ldrd	r8, r9, [sp, #72]
 8002ec8: 4cb4         	ldr	r4, [pc, #0x2d0]        @ 0x800319c <firmware_image+0x319c>
 8002eca: 6826         	ldr	r6, [r4]
 8002ecc: 6865         	ldr	r5, [r4, #0x4]
 8002ece: 68a0         	ldr	r0, [r4, #0x8]
 8002ed0: 9002         	str	r0, [sp, #0x8]
 8002ed2: 68e0         	ldr	r0, [r4, #0xc]
 8002ed4: 9001         	str	r0, [sp, #0x4]
 8002ed6: 4649         	mov	r1, r9
 8002ed8: 4648         	mov	r0, r9
 8002eda: f7fd f9b1    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2c9e
 8002ede: 4682         	mov	r10, r0
 8002ee0: 4641         	mov	r1, r8
 8002ee2: 4640         	mov	r0, r8
 8002ee4: f7fd f9ac    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2ca8
 8002ee8: 4683         	mov	r11, r0
 8002eea: 4639         	mov	r1, r7
 8002eec: 4638         	mov	r0, r7
 8002eee: f7fd f9a7    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2cb2
 8002ef2: 4659         	mov	r1, r11
 8002ef4: f7fd f94c    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2d68
 8002ef8: 4651         	mov	r1, r10
 8002efa: f7fd f949    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2d6e
 8002efe: f7fd fbf5    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x2816
 8002f02: f004 f81d    	bl	0x8006f40 <firmware_image+0x6f40> @ imm = #0x403a
 8002f06: f7fd fc1d    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x27c6
 8002f0a: 4682         	mov	r10, r0
 8002f0c: 4651         	mov	r1, r10
 8002f0e: 4638         	mov	r0, r7
 8002f10: f7fd f9c8    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x2c70
 8002f14: 9008         	str	r0, [sp, #0x20]
 8002f16: 4651         	mov	r1, r10
 8002f18: 4640         	mov	r0, r8
 8002f1a: f7fd f9c3    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x2c7a
 8002f1e: 9012         	str	r0, [sp, #0x48]
 8002f20: 4651         	mov	r1, r10
 8002f22: 4648         	mov	r0, r9
 8002f24: f7fd f9be    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x2c84
 8002f28: 9013         	str	r0, [sp, #0x4c]
 8002f2a: 68a1         	ldr	r1, [r4, #0x8]
 8002f2c: 6820         	ldr	r0, [r4]
 8002f2e: 4688         	mov	r8, r1
 8002f30: 9004         	str	r0, [sp, #0x10]
 8002f32: f7fd f985    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2cf6
 8002f36: 4607         	mov	r7, r0
 8002f38: 68e1         	ldr	r1, [r4, #0xc]
 8002f3a: 6860         	ldr	r0, [r4, #0x4]
 8002f3c: 4689         	mov	r9, r1
 8002f3e: 4683         	mov	r11, r0
 8002f40: f7fd f97e    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2d04
 8002f44: 4639         	mov	r1, r7
 8002f46: f7fd f975    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x2d16
 8002f4a: 2101         	movs	r1, #0x1
 8002f4c: f7fd f9e8    	bl	0x8000320 <firmware_image+0x320> @ imm = #-0x2c30
 8002f50: 4607         	mov	r7, r0
 8002f52: 4649         	mov	r1, r9
 8002f54: 4640         	mov	r0, r8
 8002f56: f7fd f973    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2d1a
 8002f5a: 4682         	mov	r10, r0
 8002f5c: 4659         	mov	r1, r11
 8002f5e: 9804         	ldr	r0, [sp, #0x10]
 8002f60: f7fd f96e    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2d24
 8002f64: 4651         	mov	r1, r10
 8002f66: f7fd f913    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2dda
 8002f6a: 2101         	movs	r1, #0x1
 8002f6c: f7fd f9d8    	bl	0x8000320 <firmware_image+0x320> @ imm = #-0x2c50
 8002f70: 4682         	mov	r10, r0
 8002f72: 4649         	mov	r1, r9
 8002f74: 4648         	mov	r0, r9
 8002f76: f7fd f963    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2d3a
 8002f7a: 9000         	str	r0, [sp]
 8002f7c: 4641         	mov	r1, r8
 8002f7e: 4640         	mov	r0, r8
 8002f80: f7fd f95e    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2d44
 8002f84: 4680         	mov	r8, r0
 8002f86: 4659         	mov	r1, r11
 8002f88: 4658         	mov	r0, r11
 8002f8a: f7fd f959    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2d4e
 8002f8e: 9904         	ldr	r1, [sp, #0x10]
 8002f90: 4681         	mov	r9, r0
 8002f92: 4608         	mov	r0, r1
 8002f94: f7fd f954    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2d58
 8002f98: 4649         	mov	r1, r9
 8002f9a: f7fd f94b    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x2d6a
 8002f9e: 4641         	mov	r1, r8
 8002fa0: f7fd f948    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x2d70
 8002fa4: 9900         	ldr	r1, [sp]
 8002fa6: f7fd f8f3    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2e1a
 8002faa: 4680         	mov	r8, r0
 8002fac: 4651         	mov	r1, r10
 8002fae: 9813         	ldr	r0, [sp, #0x4c]
 8002fb0: f7fd f946    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2d74
 8002fb4: 9812         	ldr	r0, [sp, #0x48]
 8002fb6: f7fd f941    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d7e
 8002fba: 4649         	mov	r1, r9
 8002fbc: f7fd f938    	bl	0x8000230 <firmware_image+0x230> @ imm = #-0x2d90
 8002fc0: 4681         	mov	r9, r0
 8002fc2: 4641         	mov	r1, r8
 8002fc4: 9808         	ldr	r0, [sp, #0x20]
 8002fc6: f7fd f939    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d8e
 8002fca: 4680         	mov	r8, r0
 8002fcc: 4639         	mov	r1, r7
 8002fce: 9813         	ldr	r0, [sp, #0x4c]
 8002fd0: f7fd f934    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d98
 8002fd4: 4641         	mov	r1, r8
 8002fd6: f7fd f92b    	bl	0x8000230 <firmware_image+0x230> @ imm = #-0x2daa
 8002fda: 4680         	mov	r8, r0
 8002fdc: 4639         	mov	r1, r7
 8002fde: 9812         	ldr	r0, [sp, #0x48]
 8002fe0: f7fd f92c    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2da8
 8002fe4: 4607         	mov	r7, r0
 8002fe6: 4651         	mov	r1, r10
 8002fe8: 9808         	ldr	r0, [sp, #0x20]
 8002fea: f7fd f927    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2db2
 8002fee: 4639         	mov	r1, r7
 8002ff0: f7fd f91e    	bl	0x8000230 <firmware_image+0x230> @ imm = #-0x2dc4
 8002ff4: 4607         	mov	r7, r0
 8002ff6: f8d4 0114    	ldr.w	r0, [r4, #0x114]
 8002ffa: 2000         	movs	r0, #0x0
 8002ffc: 0038         	movs	r0, r7
 8002ffe: 2000         	movs	r0, #0x0
 8003000: a010         	adr	r0, #64 <firmware_image+0x3014>
 8003002: f8d4 b014    	ldr.w	r11, [r4, #0x14]
 8003006: 69a0         	ldr	r0, [r4, #0x18]
 8003008: 9003         	str	r0, [sp, #0xc]
 800300a: 69e0         	ldr	r0, [r4, #0x1c]
 800300c: 4649         	mov	r1, r9
 800300e: 4681         	mov	r9, r0
 8003010: f7fd f918    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2dd0
 8003014: 9905         	ldr	r1, [sp, #0x14]
 8003016: f7fd f8bd    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2e86
 800301a: 4651         	mov	r1, r10
 800301c: f7fd f8ba    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2e8c
 8003020: 4682         	mov	r10, r0
 8003022: 4641         	mov	r1, r8
 8003024: 4648         	mov	r0, r9
 8003026: f7fd f90d    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2de6
 800302a: 9906         	ldr	r1, [sp, #0x18]
 800302c: f7fd f8b2    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2e9c
 8003030: 4659         	mov	r1, r11
 8003032: f7fd f8af    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2ea2
 8003036: 4683         	mov	r11, r0
 8003038: 4639         	mov	r1, r7
 800303a: 4648         	mov	r0, r9
 800303c: f7fd f902    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2dfc
 8003040: 9907         	ldr	r1, [sp, #0x1c]
 8003042: f7fd f8a7    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2eb2
 8003046: 9903         	ldr	r1, [sp, #0xc]
 8003048: f7fd f8a4    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2eb8
 800304c: 9007         	str	r0, [sp, #0x1c]
 800304e: 9907         	ldr	r1, [sp, #0x1c]
 8003050: 9801         	ldr	r0, [sp, #0x4]
 8003052: f7fd f8f7    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e12
 8003056: 4607         	mov	r7, r0
 8003058: 4659         	mov	r1, r11
 800305a: 9802         	ldr	r0, [sp, #0x8]
 800305c: f7fd f8f2    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e1c
 8003060: 4680         	mov	r8, r0
 8003062: f085 4000    	eor	r0, r5, #0x80000000
 8003066: 4651         	mov	r1, r10
 8003068: f7fd f8ec    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e28
 800306c: 4641         	mov	r1, r8
 800306e: f7fd f8e3    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2e3a
 8003072: 4639         	mov	r1, r7
 8003074: f7fd f8e0    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2e40
 8003078: 494a         	ldr	r1, [pc, #0x128]        @ 0x80031a4 <firmware_image+0x31a4>
 800307a: f7fd f8e3    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e3a
 800307e: 4631         	mov	r1, r6
 8003080: f7fd f888    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2ef0
 8003084: 4607         	mov	r7, r0
 8003086: 6020         	str	r0, [r4]
 8003088: 4659         	mov	r1, r11
 800308a: 9801         	ldr	r0, [sp, #0x4]
 800308c: f7fd f8da    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e4c
 8003090: 4680         	mov	r8, r0
 8003092: 9907         	ldr	r1, [sp, #0x1c]
 8003094: 9802         	ldr	r0, [sp, #0x8]
 8003096: f7fd f8d5    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e56
 800309a: 4681         	mov	r9, r0
 800309c: 4631         	mov	r1, r6
 800309e: 4650         	mov	r0, r10
 80030a0: f7fd f8d0    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e60
 80030a4: 4649         	mov	r1, r9
 80030a6: f7fd f875    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2f16
 80030aa: 4641         	mov	r1, r8
 80030ac: f7fd f8c4    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2e78
 80030b0: 493c         	ldr	r1, [pc, #0xf0]         @ 0x80031a4 <firmware_image+0x31a4>
 80030b2: f7fd f8c7    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e72
 80030b6: 4629         	mov	r1, r5
 80030b8: f7fd f86c    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2f28
 80030bc: 4680         	mov	r8, r0
 80030be: 6060         	str	r0, [r4, #0x4]
 80030c0: 4650         	mov	r0, r10
 80030c2: 9901         	ldr	r1, [sp, #0x4]
 80030c4: f7fd f8be    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e84
 80030c8: 9000         	str	r0, [sp]
 80030ca: 4628         	mov	r0, r5
 80030cc: 9907         	ldr	r1, [sp, #0x1c]
 80030ce: f7fd f8b9    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e8e
 80030d2: 4681         	mov	r9, r0
 80030d4: 4659         	mov	r1, r11
 80030d6: 4630         	mov	r0, r6
 80030d8: f7fd f8b4    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2e98
 80030dc: 4649         	mov	r1, r9
 80030de: f7fd f8ab    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2eaa
 80030e2: 9900         	ldr	r1, [sp]
 80030e4: f7fd f856    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2f54
 80030e8: 492e         	ldr	r1, [pc, #0xb8]         @ 0x80031a4 <firmware_image+0x31a4>
 80030ea: f7fd f8ab    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2eaa
 80030ee: 9902         	ldr	r1, [sp, #0x8]
 80030f0: f7fd f850    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2f60
 80030f4: 4681         	mov	r9, r0
 80030f6: 60a0         	str	r0, [r4, #0x8]
 80030f8: 4650         	mov	r0, r10
 80030fa: 9902         	ldr	r1, [sp, #0x8]
 80030fc: f7fd f8a2    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2ebc
 8003100: 4682         	mov	r10, r0
 8003102: 4659         	mov	r1, r11
 8003104: 4628         	mov	r0, r5
 8003106: f7fd f89d    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2ec6
 800310a: 4605         	mov	r5, r0
 800310c: 4630         	mov	r0, r6
 800310e: 9907         	ldr	r1, [sp, #0x1c]
 8003110: f7fd f898    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2ed0
 8003114: 4629         	mov	r1, r5
 8003116: f7fd f83d    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2f86
 800311a: 4651         	mov	r1, r10
 800311c: f7fd f88c    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2ee8
 8003120: 4920         	ldr	r1, [pc, #0x80]         @ 0x80031a4 <firmware_image+0x31a4>
 8003122: f7fd f88f    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2ee2
 8003126: 9901         	ldr	r1, [sp, #0x4]
 8003128: f7fd f834    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2f98
 800312c: 60e0         	str	r0, [r4, #0xc]
 800312e: 4601         	mov	r1, r0
 8003130: f7fd f888    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2ef0
 8003134: 4605         	mov	r5, r0
 8003136: 4649         	mov	r1, r9
 8003138: 4648         	mov	r0, r9
 800313a: f7fd f883    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2efa
 800313e: 4606         	mov	r6, r0
 8003140: 4641         	mov	r1, r8
 8003142: 4640         	mov	r0, r8
 8003144: f7fd f87e    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2f04
 8003148: 4680         	mov	r8, r0
 800314a: 4639         	mov	r1, r7
 800314c: 4638         	mov	r0, r7
 800314e: f7fd f879    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2f0e
 8003152: 4641         	mov	r1, r8
 8003154: f7fd f81e    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2fc4
 8003158: 4631         	mov	r1, r6
 800315a: f7fd f81b    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2fca
 800315e: 4629         	mov	r1, r5
 8003160: f7fd f818    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2fd0
 8003164: f7fd fac4    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x2a78
 8003168: f003 feec    	bl	0x8006f44 <firmware_image+0x6f44> @ imm = #0x3dd8
 800316c: f7fd faec    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x2a28
 8003170: 4605         	mov	r5, r0
 8003172: 4629         	mov	r1, r5
 8003174: 6820         	ldr	r0, [r4]
 8003176: f7fd f897    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x2ed2
 800317a: 6020         	str	r0, [r4]
 800317c: 4629         	mov	r1, r5
 800317e: 6860         	ldr	r0, [r4, #0x4]
 8003180: f7fd f892    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x2edc
 8003184: 6060         	str	r0, [r4, #0x4]
 8003186: 4629         	mov	r1, r5
 8003188: 68a0         	ldr	r0, [r4, #0x8]
 800318a: f7fd f88d    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x2ee6
 800318e: 60a0         	str	r0, [r4, #0x8]
 8003190: 4629         	mov	r1, r5
 8003192: 68e0         	ldr	r0, [r4, #0xc]
 8003194: f7fd f888    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x2ef0
 8003198: 60e0         	str	r0, [r4, #0xc]
 800319a: b009         	add	sp, #0x24
 800319c: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80031a0: 0044         	lsls	r4, r0, #0x1
 80031a2: 2000         	movs	r0, #0x0
 80031a4: 126f         	asrs	r7, r5, #0x9
 80031a6: 3b03         	subs	r3, #0x3
 80031a8: 4902         	ldr	r1, [pc, #0x8]          @ 0x80031b4 <firmware_image+0x31b4>
 80031aa: f64c 40cc    	movw	r0, #0xcccc
 80031ae: 6008         	str	r0, [r1]
 80031b0: 4770         	bx	lr
 80031b2: 0000         	movs	r0, r0
 80031b4: 3000         	adds	r0, #0x0
 80031b6: 4000         	ands	r0, r0
 80031b8: f000 b814    	b.w	0x80031e4 <firmware_image+0x31e4> @ imm = #0x28
 80031bc: b570         	push	{r4, r5, r6, lr}
 80031be: 4605         	mov	r5, r0
 80031c0: 460c         	mov	r4, r1
 80031c2: f245 5055    	movw	r0, #0x5555
 80031c6: f000 f821    	bl	0x800320c <firmware_image+0x320c> @ imm = #0x42
 80031ca: 4628         	mov	r0, r5
 80031cc: f000 f812    	bl	0x80031f4 <firmware_image+0x31f4> @ imm = #0x24
 80031d0: 4620         	mov	r0, r4
 80031d2: f000 f815    	bl	0x8003200 <firmware_image+0x3200> @ imm = #0x2a
 80031d6: f000 f805    	bl	0x80031e4 <firmware_image+0x31e4> @ imm = #0xa
 80031da: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 80031de: f7ff bfe3    	b.w	0x80031a8 <firmware_image+0x31a8> @ imm = #-0x3a
 80031e2: 0000         	movs	r0, r0
 80031e4: 4902         	ldr	r1, [pc, #0x8]          @ 0x80031f0 <firmware_image+0x31f0>
 80031e6: f64a 20aa    	movw	r0, #0xaaaa
 80031ea: 6008         	str	r0, [r1]
 80031ec: 4770         	bx	lr
 80031ee: 0000         	movs	r0, r0
 80031f0: 3000         	adds	r0, #0x0
 80031f2: 4000         	ands	r0, r0
 80031f4: 4901         	ldr	r1, [pc, #0x4]          @ 0x80031fc <firmware_image+0x31fc>
 80031f6: 6048         	str	r0, [r1, #0x4]
 80031f8: 4770         	bx	lr
 80031fa: 0000         	movs	r0, r0
 80031fc: 3000         	adds	r0, #0x0
 80031fe: 4000         	ands	r0, r0
 8003200: 4901         	ldr	r1, [pc, #0x4]          @ 0x8003208 <firmware_image+0x3208>
 8003202: 6088         	str	r0, [r1, #0x8]
 8003204: 4770         	bx	lr
 8003206: 0000         	movs	r0, r0
 8003208: 3000         	adds	r0, #0x0
 800320a: 4000         	ands	r0, r0
 800320c: 4901         	ldr	r1, [pc, #0x4]          @ 0x8003214 <firmware_image+0x3214>
 800320e: 6008         	str	r0, [r1]
 8003210: 4770         	bx	lr
 8003212: 0000         	movs	r0, r0
 8003214: 3000         	adds	r0, #0x0
 8003216: 4000         	ands	r0, r0
 8003218: b51c         	push	{r2, r3, r4, lr}
 800321a: 2101         	movs	r1, #0x1
 800321c: 0448         	lsls	r0, r1, #0x11
 800321e: f001 f899    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x1132
 8003222: f44f 6000    	mov.w	r0, #0x800
 8003226: 9000         	str	r0, [sp]
 8003228: 2000         	movs	r0, #0x0
 800322a: f88d 0004    	strb.w	r0, [sp, #0x4]
 800322e: 2103         	movs	r1, #0x3
 8003230: f88d 1005    	strb.w	r1, [sp, #0x5]
 8003234: f88d 0006    	strb.w	r0, [sp, #0x6]
 8003238: f88d 0007    	strb.w	r0, [sp, #0x7]
 800323c: 4669         	mov	r1, sp
 800323e: f04f 4090    	mov.w	r0, #0x48000000
 8003242: f7ff fa3b    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0xb8a
 8003246: bd1c         	pop	{r2, r3, r4, pc}
 8003248: b510         	push	{r4, lr}
 800324a: f44f 6100    	mov.w	r1, #0x800
 800324e: f04f 4090    	mov.w	r0, #0x48000000
 8003252: f7ff fa7f    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0xb02
 8003256: 490f         	ldr	r1, [pc, #0x3c]         @ 0x8003294 <firmware_image+0x3294>
 8003258: 2300         	movs	r3, #0x0
 800325a: 2401         	movs	r4, #0x1
 800325c: 780a         	ldrb	r2, [r1]
 800325e: b122         	cbz	r2, 0x800326a <firmware_image+0x326a> @ imm = #0x8
 8003260: 2a01         	cmp	r2, #0x1
 8003262: d007         	beq	0x8003274 <firmware_image+0x3274> @ imm = #0xe
 8003264: 2a02         	cmp	r2, #0x2
 8003266: d111         	bne	0x800328c <firmware_image+0x328c> @ imm = #0x22
 8003268: e00b         	b	0x8003282 <firmware_image+0x3282> @ imm = #0x16
 800326a: b108         	cbz	r0, 0x8003270 <firmware_image+0x3270> @ imm = #0x2
 800326c: 704b         	strb	r3, [r1, #0x1]
 800326e: e00d         	b	0x800328c <firmware_image+0x328c> @ imm = #0x1a
 8003270: 700c         	strb	r4, [r1]
 8003272: e00b         	b	0x800328c <firmware_image+0x328c> @ imm = #0x16
 8003274: b108         	cbz	r0, 0x800327a <firmware_image+0x327a> @ imm = #0x2
 8003276: 700b         	strb	r3, [r1]
 8003278: e008         	b	0x800328c <firmware_image+0x328c> @ imm = #0x10
 800327a: 704c         	strb	r4, [r1, #0x1]
 800327c: 2002         	movs	r0, #0x2
 800327e: 7008         	strb	r0, [r1]
 8003280: e004         	b	0x800328c <firmware_image+0x328c> @ imm = #0x8
 8003282: b110         	cbz	r0, 0x800328a <firmware_image+0x328a> @ imm = #0x4
 8003284: 700b         	strb	r3, [r1]
 8003286: 704b         	strb	r3, [r1, #0x1]
 8003288: e000         	b	0x800328c <firmware_image+0x328c> @ imm = #0x0
 800328a: 704c         	strb	r4, [r1, #0x1]
 800328c: e8bd 4010    	pop.w	{r4, lr}
 8003290: f7ff b998    	b.w	0x80025c4 <firmware_image+0x25c4> @ imm = #-0xcd0
 8003294: 013d         	lsls	r5, r7, #0x4
 8003296: 2000         	movs	r0, #0x0
 8003298: b51c         	push	{r2, r3, r4, lr}
 800329a: 2101         	movs	r1, #0x1
 800329c: 04c8         	lsls	r0, r1, #0x13
 800329e: f001 f859    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x10b2
 80032a2: f44f 4000    	mov.w	r0, #0x8000
 80032a6: 9000         	str	r0, [sp]
 80032a8: 2000         	movs	r0, #0x0
 80032aa: f88d 0004    	strb.w	r0, [sp, #0x4]
 80032ae: 2103         	movs	r1, #0x3
 80032b0: f88d 1005    	strb.w	r1, [sp, #0x5]
 80032b4: f88d 0006    	strb.w	r0, [sp, #0x6]
 80032b8: f88d 0007    	strb.w	r0, [sp, #0x7]
 80032bc: 4669         	mov	r1, sp
 80032be: 4802         	ldr	r0, [pc, #0x8]          @ 0x80032c8 <firmware_image+0x32c8>
 80032c0: f7ff f9fc    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0xc08
 80032c4: bd1c         	pop	{r2, r3, r4, pc}
 80032c6: 0000         	movs	r0, r0
 80032c8: 0800         	lsrs	r0, r0, #0x20
 80032ca: 4800         	ldr	r0, [pc, #0x0]          @ 0x80032cc <firmware_image+0x32cc>
 80032cc: b510         	push	{r4, lr}
 80032ce: f44f 4100    	mov.w	r1, #0x8000
 80032d2: 4811         	ldr	r0, [pc, #0x44]         @ 0x8003318 <firmware_image+0x3318>
 80032d4: f7ff fa3e    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0xb84
 80032d8: 4910         	ldr	r1, [pc, #0x40]         @ 0x800331c <firmware_image+0x331c>
 80032da: 2300         	movs	r3, #0x0
 80032dc: 2401         	movs	r4, #0x1
 80032de: 788a         	ldrb	r2, [r1, #0x2]
 80032e0: b122         	cbz	r2, 0x80032ec <firmware_image+0x32ec> @ imm = #0x8
 80032e2: 2a01         	cmp	r2, #0x1
 80032e4: d111         	bne	0x800330a <firmware_image+0x330a> @ imm = #0x22
 80032e6: e00b         	b	0x8003300 <firmware_image+0x3300> @ imm = #0x16
 80032e8: b108         	cbz	r0, 0x80032ee <firmware_image+0x32ee> @ imm = #0x2
 80032ea: 70cb         	strb	r3, [r1, #0x3]
 80032ec: e00d         	b	0x800330a <firmware_image+0x330a> @ imm = #0x1a
 80032ee: 708c         	strb	r4, [r1, #0x2]
 80032f0: e00b         	b	0x800330a <firmware_image+0x330a> @ imm = #0x16
 80032f2: b108         	cbz	r0, 0x80032f8 <firmware_image+0x32f8> @ imm = #0x2
 80032f4: 708b         	strb	r3, [r1, #0x2]
 80032f6: e008         	b	0x800330a <firmware_image+0x330a> @ imm = #0x10
 80032f8: 70cc         	strb	r4, [r1, #0x3]
 80032fa: 2002         	movs	r0, #0x2
 80032fc: 7088         	strb	r0, [r1, #0x2]
 80032fe: e004         	b	0x800330a <firmware_image+0x330a> @ imm = #0x8
 8003300: b110         	cbz	r0, 0x8003308 <firmware_image+0x3308> @ imm = #0x4
 8003302: 708b         	strb	r3, [r1, #0x2]
 8003304: 70cb         	strb	r3, [r1, #0x3]
 8003306: e000         	b	0x800330a <firmware_image+0x330a> @ imm = #0x0
 8003308: 70cc         	strb	r4, [r1, #0x3]
 800330a: e8bd 4010    	pop.w	{r4, lr}
 800330e: f7ff b957    	b.w	0x80025c0 <firmware_image+0x25c0> @ imm = #-0xd52
 8003312: 0000         	movs	r0, r0
 8003314: 0800         	lsrs	r0, r0, #0x20
 8003316: 4800         	ldr	r0, [pc, #0x0]          @ 0x8003318 <firmware_image+0x3318>
 8003318: 013d         	lsls	r5, r7, #0x4
 800331a: 2000         	movs	r0, #0x0
 800331c: e92d 41fc    	push.w	{r2, r3, r4, r5, r6, r7, r8, lr}
 8003320: 2101         	movs	r1, #0x1
 8003322: f44f 2060    	mov.w	r0, #0xe0000
 8003326: f001 f813    	bl	0x8004350 <firmware_image+0x4350> @ imm = #0x1026
 800332a: f248 0480    	movw	r4, #0x8080
 800332e: 9400         	str	r4, [sp]
 8003330: 2501         	movs	r5, #0x1
 8003332: f88d 5004    	strb.w	r5, [sp, #0x4]
 8003336: 2703         	movs	r7, #0x3
 8003338: f88d 7005    	strb.w	r7, [sp, #0x5]
 800333c: 2600         	movs	r6, #0x0
 800333e: f88d 6006    	strb.w	r6, [sp, #0x6]
 8003342: f04f 4890    	mov.w	r8, #0x48000000
 8003346: 4669         	mov	r1, sp
 8003348: 4640         	mov	r0, r8
 800334a: f7ff f9b5    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0xc96
 800334e: 4621         	mov	r1, r4
 8003350: 4640         	mov	r0, r8
 8003352: f7ff fa06    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0xbf4
 8003356: 203e         	movs	r0, #0x3e
 8003358: 9000         	str	r0, [sp]
 800335a: f88d 5004    	strb.w	r5, [sp, #0x4]
 800335e: f88d 7005    	strb.w	r7, [sp, #0x5]
 8003362: f88d 6006    	strb.w	r6, [sp, #0x6]
 8003366: 4c05         	ldr	r4, [pc, #0x14]         @ 0x800337c <firmware_image+0x337c>
 8003368: 4669         	mov	r1, sp
 800336a: 4620         	mov	r0, r4
 800336c: f7ff f9a4    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0xcb8
 8003370: 213e         	movs	r1, #0x3e
 8003372: 4620         	mov	r0, r4
 8003374: f7ff f9f5    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0xc16
 8003378: e8bd 81fc    	pop.w	{r2, r3, r4, r5, r6, r7, r8, pc}
 800337c: 0400         	lsls	r0, r0, #0x10
 800337e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8003380 <firmware_image+0x3380>
 8003380: b510         	push	{r4, lr}
 8003382: f002 fba7    	bl	0x8005ad4 <firmware_image+0x5ad4> @ imm = #0x274e
 8003386: f000 fa1f    	bl	0x80037c8 <firmware_image+0x37c8> @ imm = #0x43e
 800338a: f7ff f8c1    	bl	0x8002510 <firmware_image+0x2510> @ imm = #-0xe7e
 800338e: f001 fe05    	bl	0x8004f9c <firmware_image+0x4f9c> @ imm = #0x1c0a
 8003392: 2001         	movs	r0, #0x1
 8003394: f001 fc4c    	bl	0x8004c30 <firmware_image+0x4c30> @ imm = #0x1898
 8003398: f000 f918    	bl	0x80035cc <firmware_image+0x35cc> @ imm = #0x230
 800339c: e8bd 4010    	pop.w	{r4, lr}
 80033a0: 2101         	movs	r1, #0x1
 80033a2: 4801         	ldr	r0, [pc, #0x4]          @ 0x80033a8 <firmware_image+0x33a8>
 80033a4: f002 b91a    	b.w	0x80055dc <firmware_image+0x55dc> @ imm = #0x2234
 80033a8: 2c00         	cmp	r4, #0x0
 80033aa: 4001         	ands	r1, r0
 80033ac: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80033c4 <firmware_image+0x33c4>
 80033ae: 2900         	cmp	r1, #0x0
 80033b0: d003         	beq	0x80033ba <firmware_image+0x33ba> @ imm = #0x6
 80033b2: 6851         	ldr	r1, [r2, #0x4]
 80033b4: 4301         	orrs	r1, r0
 80033b6: 6051         	str	r1, [r2, #0x4]
 80033b8: 4770         	bx	lr
 80033ba: 6851         	ldr	r1, [r2, #0x4]
 80033bc: 4381         	bics	r1, r0
 80033be: 6051         	str	r1, [r2, #0x4]
 80033c0: 4770         	bx	lr
 80033c2: 0000         	movs	r0, r0
 80033c4: 2000         	movs	r0, #0x0
 80033c6: e004         	b	0x80033d2 <firmware_image+0x33d2> @ imm = #0x8
 80033c8: b510         	push	{r4, lr}
 80033ca: f7ff f9d3    	bl	0x8002774 <firmware_image+0x2774> @ imm = #-0xc5a
 80033ce: f001 fced    	bl	0x8004dac <firmware_image+0x4dac> @ imm = #0x19da
 80033d2: f001 faff    	bl	0x80049d4 <firmware_image+0x49d4> @ imm = #0x15fe
 80033d6: f001 fc53    	bl	0x8004c80 <firmware_image+0x4c80> @ imm = #0x18a6
 80033da: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x8003404 <firmware_image+0x3404>
 80033dc: 490a         	ldr	r1, [pc, #0x28]         @ 0x8003408 <firmware_image+0x3408>
 80033de: 480b         	ldr	r0, [pc, #0x2c]         @ 0x800340c <firmware_image+0x340c>
 80033e0: f000 f9d2    	bl	0x8003788 <firmware_image+0x3788> @ imm = #0x3a4
 80033e4: 2101         	movs	r1, #0x1
 80033e6: 0288         	lsls	r0, r1, #0xa
 80033e8: f7ff ffe0    	bl	0x80033ac <firmware_image+0x33ac> @ imm = #-0x40
 80033ec: f000 f8ee    	bl	0x80035cc <firmware_image+0x35cc> @ imm = #0x1dc
 80033f0: f001 fb3c    	bl	0x8004a6c <firmware_image+0x4a6c> @ imm = #0x1678
 80033f4: f000 f9c6    	bl	0x8003784 <firmware_image+0x3784> @ imm = #0x38c
 80033f8: f002 fb96    	bl	0x8005b28 <firmware_image+0x5b28> @ imm = #0x272c
 80033fc: e8bd 4010    	pop.w	{r4, lr}
 8003400: e8bd 4010    	pop.w	{r4, lr}
 8003404: f002 bb7d    	b.w	0x8005b02 <firmware_image+0x5b02> @ imm = #0x26fa
 8003408: 0530         	lsls	r0, r6, #0x14
 800340a: 2000         	movs	r0, #0x0
 800340c: 04f0         	lsls	r0, r6, #0x13
 800340e: 2000         	movs	r0, #0x0
 8003410: 0510         	lsls	r0, r2, #0x14
 8003412: 2000         	movs	r0, #0x0
 8003414: b5f8         	push	{r3, r4, r5, r6, r7, lr}
 8003416: 4c21         	ldr	r4, [pc, #0x84]         @ 0x800349c <firmware_image+0x349c>
 8003418: 7820         	ldrb	r0, [r4]
 800341a: 4f21         	ldr	r7, [pc, #0x84]         @ 0x80034a0 <firmware_image+0x34a0>
 800341c: 4d21         	ldr	r5, [pc, #0x84]         @ 0x80034a4 <firmware_image+0x34a4>
 800341e: 4e22         	ldr	r6, [pc, #0x88]         @ 0x80034a8 <firmware_image+0x34a8>
 8003420: 2805         	cmp	r0, #0x5
 8003422: d211         	bhs	0x8003448 <firmware_image+0x3448> @ imm = #0x22
 8003424: e8df f000    	tbb	[pc, r0]
 8003428: 1103         	asrs	r3, r0, #0x4
 800342a: 1916         	adds	r6, r2, r4
 800342c: 0023         	movs	r3, r4
 800342e: f001 fb27    	bl	0x8004a80 <firmware_image+0x4a80> @ imm = #0x164e
 8003432: 481e         	ldr	r0, [pc, #0x78]         @ 0x80034ac <firmware_image+0x34ac>
 8003434: 7839         	ldrb	r1, [r7]
 8003436: 7800         	ldrb	r0, [r0]
 8003438: 4308         	orrs	r0, r1
 800343a: 7829         	ldrb	r1, [r5]
 800343c: 4308         	orrs	r0, r1
 800343e: d103         	bne	0x8003448 <firmware_image+0x3448> @ imm = #0x6
 8003440: 7830         	ldrb	r0, [r6]
 8003442: 2801         	cmp	r0, #0x1
 8003444: d100         	bne	0x8003448 <firmware_image+0x3448> @ imm = #0x0
 8003446: 7020         	strb	r0, [r4]
 8003448: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 800344a: f7ff ff9b    	bl	0x8003384 <firmware_image+0x3384> @ imm = #-0xca
 800344e: 2002         	movs	r0, #0x2
 8003450: 7020         	strb	r0, [r4]
 8003452: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 8003454: 2003         	movs	r0, #0x3
 8003456: 7020         	strb	r0, [r4]
 8003458: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 800345a: 7828         	ldrb	r0, [r5]
 800345c: 7839         	ldrb	r1, [r7]
 800345e: 4308         	orrs	r0, r1
 8003460: d102         	bne	0x8003468 <firmware_image+0x3468> @ imm = #0x4
 8003462: 7830         	ldrb	r0, [r6]
 8003464: 2800         	cmp	r0, #0x0
 8003466: d1f7         	bne	0x8003458 <firmware_image+0x3458> @ imm = #-0x12
 8003468: 2004         	movs	r0, #0x4
 800346a: 7020         	strb	r0, [r4]
 800346c: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 800346e: 2100         	movs	r1, #0x0
 8003470: 480f         	ldr	r0, [pc, #0x3c]         @ 0x80034b0 <firmware_image+0x34b0>
 8003472: f002 f8b5    	bl	0x80055e0 <firmware_image+0x55e0> @ imm = #0x216a
 8003476: 2000         	movs	r0, #0x0
 8003478: f001 fbdc    	bl	0x8004c34 <firmware_image+0x4c34> @ imm = #0x17b8
 800347c: 480d         	ldr	r0, [pc, #0x34]         @ 0x80034b4 <firmware_image+0x34b4>
 800347e: 2500         	movs	r5, #0x0
 8003480: 8045         	strh	r5, [r0, #0x2]
 8003482: 8005         	strh	r5, [r0]
 8003484: 6800         	ldr	r0, [r0]
 8003486: 9000         	str	r0, [sp]
 8003488: f001 fb1a    	bl	0x8004ac0 <firmware_image+0x4ac0> @ imm = #0x1634
 800348c: f001 faf0    	bl	0x8004a70 <firmware_image+0x4a70> @ imm = #0x15e0
 8003490: f002 fb37    	bl	0x8005b02 <firmware_image+0x5b02> @ imm = #0x266e
 8003494: 7025         	strb	r5, [r4]
 8003496: 7035         	strb	r5, [r6]
 8003498: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 800349a: 0000         	movs	r0, r0
 800349c: 0260         	lsls	r0, r4, #0x9
 800349e: 2000         	movs	r0, #0x0
 80034a0: 0296         	lsls	r6, r2, #0xa
 80034a2: 2000         	movs	r0, #0x0
 80034a4: 0269         	lsls	r1, r5, #0x9
 80034a6: 2000         	movs	r0, #0x0
 80034a8: 023a         	lsls	r2, r7, #0x8
 80034aa: 2000         	movs	r0, #0x0
 80034ac: 02b0         	lsls	r0, r6, #0xa
 80034ae: 2000         	movs	r0, #0x0
 80034b0: 2c00         	cmp	r4, #0x0
 80034b2: 4001         	ands	r1, r0
 80034b4: 025c         	lsls	r4, r3, #0x9
 80034b6: 2000         	movs	r0, #0x0
 80034b8: b510         	push	{r4, lr}
 80034ba: 481e         	ldr	r0, [pc, #0x78]         @ 0x8003534 <firmware_image+0x3534>
 80034bc: 89c1         	ldrh	r1, [r0, #0xe]
 80034be: 1c49         	adds	r1, r1, #0x1
 80034c0: 81c1         	strh	r1, [r0, #0xe]
 80034c2: 7981         	ldrb	r1, [r0, #0x6]
 80034c4: 481c         	ldr	r0, [pc, #0x70]         @ 0x8003538 <firmware_image+0x3538>
 80034c6: 7001         	strb	r1, [r0]
 80034c8: 2178         	movs	r1, #0x78
 80034ca: 7041         	strb	r1, [r0, #0x1]
 80034cc: 491b         	ldr	r1, [pc, #0x6c]         @ 0x800353c <firmware_image+0x353c>
 80034ce: 8809         	ldrh	r1, [r1]
 80034d0: 0a0a         	lsrs	r2, r1, #0x8
 80034d2: 7082         	strb	r2, [r0, #0x2]
 80034d4: 70c1         	strb	r1, [r0, #0x3]
 80034d6: 491a         	ldr	r1, [pc, #0x68]         @ 0x8003540 <firmware_image+0x3540>
 80034d8: 8809         	ldrh	r1, [r1]
 80034da: 0a0a         	lsrs	r2, r1, #0x8
 80034dc: 7102         	strb	r2, [r0, #0x4]
 80034de: 7141         	strb	r1, [r0, #0x5]
 80034e0: 4918         	ldr	r1, [pc, #0x60]         @ 0x8003544 <firmware_image+0x3544>
 80034e2: 8809         	ldrh	r1, [r1]
 80034e4: 0a0a         	lsrs	r2, r1, #0x8
 80034e6: 7182         	strb	r2, [r0, #0x6]
 80034e8: 71c1         	strb	r1, [r0, #0x7]
 80034ea: 4917         	ldr	r1, [pc, #0x5c]         @ 0x8003548 <firmware_image+0x3548>
 80034ec: 8809         	ldrh	r1, [r1]
 80034ee: 0a0a         	lsrs	r2, r1, #0x8
 80034f0: 7202         	strb	r2, [r0, #0x8]
 80034f2: 7241         	strb	r1, [r0, #0x9]
 80034f4: 4915         	ldr	r1, [pc, #0x54]         @ 0x800354c <firmware_image+0x354c>
 80034f6: 7809         	ldrb	r1, [r1]
 80034f8: 7281         	strb	r1, [r0, #0xa]
 80034fa: 4915         	ldr	r1, [pc, #0x54]         @ 0x8003550 <firmware_image+0x3550>
 80034fc: 7809         	ldrb	r1, [r1]
 80034fe: 72c1         	strb	r1, [r0, #0xb]
 8003500: 4914         	ldr	r1, [pc, #0x50]         @ 0x8003554 <firmware_image+0x3554>
 8003502: 8809         	ldrh	r1, [r1]
 8003504: 0a0a         	lsrs	r2, r1, #0x8
 8003506: 7302         	strb	r2, [r0, #0xc]
 8003508: 7341         	strb	r1, [r0, #0xd]
 800350a: 4913         	ldr	r1, [pc, #0x4c]         @ 0x8003558 <firmware_image+0x3558>
 800350c: 7809         	ldrb	r1, [r1]
 800350e: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x800355c <firmware_image+0x355c>
 8003510: 7812         	ldrb	r2, [r2]
 8003512: ea41 11c2    	orr.w	r1, r1, r2, lsl #7
 8003516: 7381         	strb	r1, [r0, #0xe]
 8003518: 210f         	movs	r1, #0xf
 800351a: f003 fc8d    	bl	0x8006e38 <firmware_image+0x6e38> @ imm = #0x391a
 800351e: 4601         	mov	r1, r0
 8003520: 4805         	ldr	r0, [pc, #0x14]         @ 0x8003538 <firmware_image+0x3538>
 8003522: 300f         	adds	r0, #0xf
 8003524: f001 f94b    	bl	0x80047be <firmware_image+0x47be> @ imm = #0x1296
 8003528: 2111         	movs	r1, #0x11
 800352a: e8bd 4010    	pop.w	{r4, lr}
 800352e: 4802         	ldr	r0, [pc, #0x8]          @ 0x8003538 <firmware_image+0x3538>
 8003530: f003 bdc0    	b.w	0x80070b4 <firmware_image+0x70b4> @ imm = #0x3b80
 8003534: 021e         	lsls	r6, r3, #0x8
 8003536: 2000         	movs	r0, #0x0
 8003538: 0478         	lsls	r0, r7, #0x11
 800353a: 2000         	movs	r0, #0x0
 800353c: 0084         	lsls	r4, r0, #0x2
 800353e: 2000         	movs	r0, #0x0
 8003540: 003c         	movs	r4, r7
 8003542: 2000         	movs	r0, #0x0
 8003544: 00a2         	lsls	r2, r4, #0x2
 8003546: 2000         	movs	r0, #0x0
 8003548: 0096         	lsls	r6, r2, #0x2
 800354a: 2000         	movs	r0, #0x0
 800354c: 0070         	lsls	r0, r6, #0x1
 800354e: 2000         	movs	r0, #0x0
 8003550: 006f         	lsls	r7, r5, #0x1
 8003552: 2000         	movs	r0, #0x0
 8003554: 009a         	lsls	r2, r3, #0x2
 8003556: 2000         	movs	r0, #0x0
 8003558: 0141         	lsls	r1, r0, #0x5
 800355a: 2000         	movs	r0, #0x0
 800355c: 0067         	lsls	r7, r4, #0x1
 800355e: 2000         	movs	r0, #0x0
 8003560: 4816         	ldr	r0, [pc, #0x58]         @ 0x80035bc <firmware_image+0x35bc>
 8003562: f9b0 0000    	ldrsh.w	r0, [r0]
 8003566: f44f 727a    	mov.w	r2, #0x3e8
 800356a: fb91 f1f2    	sdiv	r1, r1, r2
 800356e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x80035c0 <firmware_image+0x35c0>
 8003570: 6091         	str	r1, [r2, #0x8]
 8003572: 4b14         	ldr	r3, [pc, #0x50]         @ 0x80035c4 <firmware_image+0x35c4>
 8003574: 881b         	ldrh	r3, [r3]
 8003576: 4299         	cmp	r1, r3
 8003578: dd18         	ble	0x80035ac <firmware_image+0x35ac> @ imm = #0x30
 800357a: 8811         	ldrh	r1, [r2]
 800357c: 29fa         	cmp	r1, #0xfa
 800357e: d201         	bhs	0x8003584 <firmware_image+0x3584> @ imm = #0x2
 8003580: 1c49         	adds	r1, r1, #0x1
 8003582: 8011         	strh	r1, [r2]
 8003584: 8811         	ldrh	r1, [r2]
 8003586: 4288         	cmp	r0, r1
 8003588: dd02         	ble	0x8003590 <firmware_image+0x3590> @ imm = #0x4
 800358a: 1a40         	subs	r0, r0, r1
 800358c: b200         	sxth	r0, r0
 800358e: 4770         	bx	lr
 8003590: 2800         	cmp	r0, #0x0
 8003592: dd02         	ble	0x800359a <firmware_image+0x359a> @ imm = #0x4
 8003594: 3820         	subs	r0, #0x20
 8003596: b200         	sxth	r0, r0
 8003598: 4770         	bx	lr
 800359a: 424a         	rsbs	r2, r1, #0
 800359c: 4290         	cmp	r0, r2
 800359e: dd02         	ble	0x80035a6 <firmware_image+0x35a6> @ imm = #0x4
 80035a0: 3020         	adds	r0, #0x20
 80035a2: b200         	sxth	r0, r0
 80035a4: 4770         	bx	lr
 80035a6: 4408         	add	r0, r1
 80035a8: b200         	sxth	r0, r0
 80035aa: 4770         	bx	lr
 80035ac: 4906         	ldr	r1, [pc, #0x18]         @ 0x80035c8 <firmware_image+0x35c8>
 80035ae: 8809         	ldrh	r1, [r1]
 80035b0: 4408         	add	r0, r1
 80035b2: b200         	sxth	r0, r0
 80035b4: 2120         	movs	r1, #0x20
 80035b6: 8011         	strh	r1, [r2]
 80035b8: 4770         	bx	lr
 80035ba: 0000         	movs	r0, r0
 80035bc: 0258         	lsls	r0, r3, #0x9
 80035be: 2000         	movs	r0, #0x0
 80035c0: 023c         	lsls	r4, r7, #0x8
 80035c2: 2000         	movs	r0, #0x0
 80035c4: 008e         	lsls	r6, r1, #0x2
 80035c6: 2000         	movs	r0, #0x0
 80035c8: 00aa         	lsls	r2, r5, #0x2
 80035ca: 2000         	movs	r0, #0x0
 80035cc: e7fe         	b	0x80035cc <firmware_image+0x35cc> @ imm = #-0x4
 80035ce: 0000         	movs	r0, r0
 80035d0: 2201         	movs	r2, #0x1
 80035d2: 2100         	movs	r1, #0x0
 80035d4: 4801         	ldr	r0, [pc, #0x4]          @ 0x80035dc <firmware_image+0x35dc>
 80035d6: f002 b9d1    	b.w	0x800597c <firmware_image+0x597c> @ imm = #0x23a2
 80035da: 0000         	movs	r0, r0
 80035dc: 2c00         	cmp	r4, #0x0
 80035de: 4001         	ands	r1, r0
 80035e0: 4770         	bx	lr
 80035e2: 0000         	movs	r0, r0
 80035e4: b5f8         	push	{r3, r4, r5, r6, r7, lr}
 80035e6: 2100         	movs	r1, #0x0
 80035e8: f04f 6000    	mov.w	r0, #0x8000000
 80035ec: f000 f8c2    	bl	0x8003774 <firmware_image+0x3774> @ imm = #0x184
 80035f0: f44f 60a0    	mov.w	r0, #0x500
 80035f4: f000 f8b4    	bl	0x8003760 <firmware_image+0x3760> @ imm = #0x168
 80035f8: 492d         	ldr	r1, [pc, #0xb4]         @ 0x80036b0 <firmware_image+0x36b0>
 80035fa: 20b0         	movs	r0, #0xb0
 80035fc: 270f         	movs	r7, #0xf
 80035fe: 7008         	strb	r0, [r1]
 8003600: 200d         	movs	r0, #0xd
 8003602: f88d 0000    	strb.w	r0, [sp]
 8003606: 2500         	movs	r5, #0x0
 8003608: f88d 5001    	strb.w	r5, [sp, #0x1]
 800360c: 2401         	movs	r4, #0x1
 800360e: f88d 4002    	strb.w	r4, [sp, #0x2]
 8003612: f88d 4003    	strb.w	r4, [sp, #0x3]
 8003616: 4668         	mov	r0, sp
 8003618: f000 f84c    	bl	0x80036b4 <firmware_image+0x36b4> @ imm = #0x98
 800361c: 200c         	movs	r0, #0xc
 800361e: f88d 0000    	strb.w	r0, [sp]
 8003622: f88d 5001    	strb.w	r5, [sp, #0x1]
 8003626: f88d 4002    	strb.w	r4, [sp, #0x2]
 800362a: f88d 4003    	strb.w	r4, [sp, #0x3]
 800362e: 4668         	mov	r0, sp
 8003630: f000 f840    	bl	0x80036b4 <firmware_image+0x36b4> @ imm = #0x80
 8003634: 201c         	movs	r0, #0x1c
 8003636: f88d 0000    	strb.w	r0, [sp]
 800363a: f88d 4001    	strb.w	r4, [sp, #0x1]
 800363e: 2602         	movs	r6, #0x2
 8003640: f88d 6002    	strb.w	r6, [sp, #0x2]
 8003644: f88d 4003    	strb.w	r4, [sp, #0x3]
 8003648: 4668         	mov	r0, sp
 800364a: f000 f833    	bl	0x80036b4 <firmware_image+0x36b4> @ imm = #0x66
 800364e: f88d 7000    	strb.w	r7, [sp]
 8003652: f88d 5001    	strb.w	r5, [sp, #0x1]
 8003656: f88d 6002    	strb.w	r6, [sp, #0x2]
 800365a: f88d 4003    	strb.w	r4, [sp, #0x3]
 800365e: 4668         	mov	r0, sp
 8003660: f000 f828    	bl	0x80036b4 <firmware_image+0x36b4> @ imm = #0x50
 8003664: 2010         	movs	r0, #0x10
 8003666: f88d 0000    	strb.w	r0, [sp]
 800366a: f88d 5001    	strb.w	r5, [sp, #0x1]
 800366e: f88d 5002    	strb.w	r5, [sp, #0x2]
 8003672: f88d 4003    	strb.w	r4, [sp, #0x3]
 8003676: 4668         	mov	r0, sp
 8003678: f000 f81c    	bl	0x80036b4 <firmware_image+0x36b4> @ imm = #0x38
 800367c: 200b         	movs	r0, #0xb
 800367e: f88d 0000    	strb.w	r0, [sp]
 8003682: f88d 6001    	strb.w	r6, [sp, #0x1]
 8003686: f88d 5002    	strb.w	r5, [sp, #0x2]
 800368a: f88d 4003    	strb.w	r4, [sp, #0x3]
 800368e: 4668         	mov	r0, sp
 8003690: f000 f810    	bl	0x80036b4 <firmware_image+0x36b4> @ imm = #0x20
 8003694: 2007         	movs	r0, #0x7
 8003696: f88d 0000    	strb.w	r0, [sp]
 800369a: f88d 5001    	strb.w	r5, [sp, #0x1]
 800369e: f88d 6002    	strb.w	r6, [sp, #0x2]
 80036a2: f88d 4003    	strb.w	r4, [sp, #0x3]
 80036a6: 4668         	mov	r0, sp
 80036a8: f000 f804    	bl	0x80036b4 <firmware_image+0x36b4> @ imm = #0x8
 80036ac: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 80036ae: 0000         	movs	r0, r0
 80036b0: ed23 e000    	stc	p0, c14, [r3, #-0]!
 80036b4: b570         	push	{r4, r5, r6, lr}
 80036b6: 2100         	movs	r1, #0x0
 80036b8: 2200         	movs	r2, #0x0
 80036ba: 78c4         	ldrb	r4, [r0, #0x3]
 80036bc: 2501         	movs	r5, #0x1
 80036be: 7803         	ldrb	r3, [r0]
 80036c0: 2c00         	cmp	r4, #0x0
 80036c2: d041         	beq	0x8003748 <firmware_image+0x3748> @ imm = #0x82
 80036c4: 4c25         	ldr	r4, [pc, #0x94]         @ 0x800375c <firmware_image+0x375c>
 80036c6: 6826         	ldr	r6, [r4]
 80036c8: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036cc: 2e07         	cmp	r6, #0x7
 80036ce: d014         	beq	0x80036fa <firmware_image+0x36fa> @ imm = #0x28
 80036d0: 2602         	movs	r6, #0x2
 80036d2: 2e06         	cmp	r6, #0x6
 80036d4: d011         	beq	0x80036fa <firmware_image+0x36fa> @ imm = #0x22
 80036d6: 6826         	ldr	r6, [r4]
 80036d8: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036dc: 2e05         	cmp	r6, #0x5
 80036de: d00f         	beq	0x8003700 <firmware_image+0x3700> @ imm = #0x1e
 80036e0: 6826         	ldr	r6, [r4]
 80036e2: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036e6: 2e04         	cmp	r6, #0x4
 80036e8: d00d         	beq	0x8003706 <firmware_image+0x3706> @ imm = #0x1a
 80036ea: 6824         	ldr	r4, [r4]
 80036ec: f3c4 2402    	ubfx	r4, r4, #0x8, #0x3
 80036f0: 2c03         	cmp	r4, #0x3
 80036f2: d00b         	beq	0x800370c <firmware_image+0x370c> @ imm = #0x16
 80036f4: e00b         	b	0x800370e <firmware_image+0x370e> @ imm = #0x16
 80036f6: 2204         	movs	r2, #0x4
 80036f8: e009         	b	0x800370e <firmware_image+0x370e> @ imm = #0x12
 80036fa: 2101         	movs	r1, #0x1
 80036fc: 2203         	movs	r2, #0x3
 80036fe: e006         	b	0x800370e <firmware_image+0x370e> @ imm = #0xc
 8003700: 2102         	movs	r1, #0x2
 8003702: 2202         	movs	r2, #0x2
 8003704: e003         	b	0x800370e <firmware_image+0x370e> @ imm = #0x6
 8003706: 2103         	movs	r1, #0x3
 8003708: 2201         	movs	r2, #0x1
 800370a: e000         	b	0x800370e <firmware_image+0x370e> @ imm = #0x0
 800370c: 2104         	movs	r1, #0x4
 800370e: 7844         	ldrb	r4, [r0, #0x1]
 8003710: f1c1 0104    	rsb.w	r1, r1, #0x4
 8003714: 408c         	lsls	r4, r1
 8003716: f1c2 0604    	rsb.w	r6, r2, #0x4
 800371a: 7881         	ldrb	r1, [r0, #0x2]
 800371c: 220f         	movs	r2, #0xf
 800371e: 40f2         	lsrs	r2, r6
 8003720: 4011         	ands	r1, r2
 8003722: 4321         	orrs	r1, r4
 8003724: 0109         	lsls	r1, r1, #0x4
 8003726: f103 23e0    	add.w	r3, r3, #0xe000e000
 800372a: f883 1400    	strb.w	r1, [r3, #0x400]
 800372e: 7800         	ldrb	r0, [r0]
 8003730: f000 011f    	and	r1, r0, #0x1f
 8003734: 408d         	lsls	r5, r1
 8003736: 0940         	lsrs	r0, r0, #0x5
 8003738: 0080         	lsls	r0, r0, #0x2
 800373a: f100 20e0    	add.w	r0, r0, #0xe000e000
 800373e: f8c0 5100    	str.w	r5, [r0, #0x100]
 8003742: bd70         	pop	{r4, r5, r6, pc}
 8003744: f003 001f    	and	r0, r3, #0x1f
 8003748: 4085         	lsls	r5, r0
 800374a: 0958         	lsrs	r0, r3, #0x5
 800374c: 0080         	lsls	r0, r0, #0x2
 800374e: f100 20e0    	add.w	r0, r0, #0xe000e000
 8003752: f8c0 5180    	str.w	r5, [r0, #0x180]
 8003756: bd70         	pop	{r4, r5, r6, pc}
 8003758: ed0c e000    	stc	p0, c14, [r12, #-0]
 800375c: 4902         	ldr	r1, [pc, #0x8]          @ 0x8003768 <firmware_image+0x3768>
 800375e: 4308         	orrs	r0, r1
 8003760: 4902         	ldr	r1, [pc, #0x8]          @ 0x800376c <firmware_image+0x376c>
 8003762: 6008         	str	r0, [r1]
 8003764: 4770         	bx	lr
 8003766: 0000         	movs	r0, r0
 8003768: 0000         	movs	r0, r0
 800376a: 05fa         	lsls	r2, r7, #0x17
 800376c: ed0c e000    	stc	p0, c14, [r12, #-0]
 8003770: 4a02         	ldr	r2, [pc, #0x8]          @ 0x800377c <firmware_image+0x377c>
 8003772: 4011         	ands	r1, r2
 8003774: 4301         	orrs	r1, r0
 8003776: 4802         	ldr	r0, [pc, #0x8]          @ 0x8003780 <firmware_image+0x3780>
 8003778: 6001         	str	r1, [r0]
 800377a: 4770         	bx	lr
 800377c: ff80 1fff    	<unknown>
 8003780: ed08 e000    	stc	p0, c14, [r8, #-0]
 8003784: 4770         	bx	lr
 8003786: 4770         	bx	lr
 8003788: 2000         	movs	r0, #0x0
 800378a: 6148         	str	r0, [r1, #0x14]
 800378c: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x80037c0 <firmware_image+0x37c0>
 800378e: 8010         	strh	r0, [r2]
 8003790: 2264         	movs	r2, #0x64
 8003792: 800a         	strh	r2, [r1]
 8003794: f44f 6280    	mov.w	r2, #0x400
 8003798: 804a         	strh	r2, [r1, #0x2]
 800379a: 2232         	movs	r2, #0x32
 800379c: 808a         	strh	r2, [r1, #0x4]
 800379e: f44f 5200    	mov.w	r2, #0x2000
 80037a2: 80ca         	strh	r2, [r1, #0x6]
 80037a4: 8308         	strh	r0, [r1, #0x18]
 80037a6: 834a         	strh	r2, [r1, #0x1a]
 80037a8: 61c8         	str	r0, [r1, #0x1c]
 80037aa: f248 0001    	movw	r0, #0x8001
 80037ae: 8108         	strh	r0, [r1, #0x8]
 80037b0: 1e80         	subs	r0, r0, #0x2
 80037b2: 8148         	strh	r0, [r1, #0xa]
 80037b4: 4803         	ldr	r0, [pc, #0xc]          @ 0x80037c4 <firmware_image+0x37c4>
 80037b6: 60c8         	str	r0, [r1, #0xc]
 80037b8: 4240         	rsbs	r0, r0, #0
 80037ba: 6108         	str	r0, [r1, #0x10]
 80037bc: 4770         	bx	lr
 80037be: 0000         	movs	r0, r0
 80037c0: 0262         	lsls	r2, r4, #0x9
 80037c2: 2000         	movs	r0, #0x0
 80037c4: 2000         	movs	r0, #0x0
 80037c6: f000 4903    	and	r9, r0, #0x83000000
 80037ca: 2000         	movs	r0, #0x0
 80037cc: 6148         	str	r0, [r1, #0x14]
 80037ce: 4903         	ldr	r1, [pc, #0xc]          @ 0x80037dc <firmware_image+0x37dc>
 80037d0: 6148         	str	r0, [r1, #0x14]
 80037d2: 4903         	ldr	r1, [pc, #0xc]          @ 0x80037e0 <firmware_image+0x37e0>
 80037d4: 6148         	str	r0, [r1, #0x14]
 80037d6: 4770         	bx	lr
 80037d8: 0530         	lsls	r0, r6, #0x14
 80037da: 2000         	movs	r0, #0x0
 80037dc: 0510         	lsls	r0, r2, #0x14
 80037de: 2000         	movs	r0, #0x0
 80037e0: 04f0         	lsls	r0, r6, #0x13
 80037e2: 2000         	movs	r0, #0x0
 80037e4: b570         	push	{r4, r5, r6, lr}
 80037e6: 1a40         	subs	r0, r0, r1
 80037e8: f9b2 4000    	ldrsh.w	r4, [r2]
 80037ec: 4344         	muls	r4, r0, r4
 80037ee: f9b2 3004    	ldrsh.w	r3, [r2, #0x4]
 80037f2: 2b00         	cmp	r3, #0x0
 80037f4: d00d         	beq	0x8003812 <firmware_image+0x3812> @ imm = #0x1a
 80037f6: 4343         	muls	r3, r0, r3
 80037f8: 6950         	ldr	r0, [r2, #0x14]
 80037fa: 17c1         	asrs	r1, r0, #0x1f
 80037fc: 18c0         	adds	r0, r0, r3
 80037fe: eb41 18c0    	adc.w	r8, r1, r0, lsl #7
 8003802: eb41 71e3    	adc.w	r1, r1, r3, asr #31
 8003806: 6913         	ldr	r3, [r2, #0x10]
 8003808: ea4f 75e3    	asr.w	r5, r3, #0x1f
 800380c: 1a1e         	subs	r6, r3, r0
 800380e: 418d         	sbcs	r5, r1
 8003810: da04         	bge	0x800381c <firmware_image+0x381c> @ imm = #0x8
 8003812: 6153         	str	r3, [r2, #0x14]
 8003814: e00a         	b	0x800382c <firmware_image+0x382c> @ imm = #0x14
 8003816: 2000         	movs	r0, #0x0
 8003818: 6150         	str	r0, [r2, #0x14]
 800381a: e007         	b	0x800382c <firmware_image+0x382c> @ imm = #0xe
 800381c: 68d3         	ldr	r3, [r2, #0xc]
 800381e: 17dd         	asrs	r5, r3, #0x1f
 8003820: 1ac6         	subs	r6, r0, r3
 8003822: 41a9         	sbcs	r1, r5
 8003824: da01         	bge	0x800382a <firmware_image+0x382a> @ imm = #0x2
 8003826: 6153         	str	r3, [r2, #0x14]
 8003828: e000         	b	0x800382c <firmware_image+0x382c> @ imm = #0x0
 800382a: 6150         	str	r0, [r2, #0x14]
 800382c: 8850         	ldrh	r0, [r2, #0x2]
 800382e: 88d3         	ldrh	r3, [r2, #0x6]
 8003830: 6951         	ldr	r1, [r2, #0x14]
 8003832: fb94 f0f0    	sdiv	r0, r4, r0
 8003836: fb91 f1f3    	sdiv	r1, r1, r3
 800383a: 4401         	add	r1, r0
 800383c: f9b2 000a    	ldrsh.w	r0, [r2, #0xa]
 8003840: 4288         	cmp	r0, r1
 8003842: dd04         	ble	0x800384e <firmware_image+0x384e> @ imm = #0x8
 8003844: f9b2 0008    	ldrsh.w	r0, [r2, #0x8]
 8003848: 4288         	cmp	r0, r1
 800384a: dc00         	bgt	0x800384e <firmware_image+0x384e> @ imm = #0x0
 800384c: b208         	sxth	r0, r1
 800384e: bd70         	pop	{r4, r5, r6, pc}
 8003850: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
 8003854: f002 fb24    	bl	0x8005ea0 <firmware_image+0x5ea0> @ imm = #0x2648
 8003858: f7fd fca6    	bl	0x80011a8 <firmware_image+0x11a8> @ imm = #-0x26b4
 800385c: f7fd fdc0    	bl	0x80013e0 <firmware_image+0x13e0> @ imm = #-0x2480
 8003860: f7ff f8da    	bl	0x8002a18 <firmware_image+0x2a18> @ imm = #-0xe4c
 8003864: 4df5         	ldr	r5, [pc, #0x3d4]        @ 0x8003c3c <firmware_image+0x3c3c>
 8003866: 4cf6         	ldr	r4, [pc, #0x3d8]        @ 0x8003c40 <firmware_image+0x3c40>
 8003868: 7828         	ldrb	r0, [r5]
 800386a: b110         	cbz	r0, 0x8003872 <firmware_image+0x3872> @ imm = #0x4
 800386c: 7a20         	ldrb	r0, [r4, #0x8]
 800386e: 76a0         	strb	r0, [r4, #0x1a]
 8003870: e001         	b	0x8003876 <firmware_image+0x3876> @ imm = #0x2
 8003872: 7a20         	ldrb	r0, [r4, #0x8]
 8003874: 76e0         	strb	r0, [r4, #0x1b]
 8003876: 8ce0         	ldrh	r0, [r4, #0x26]
 8003878: 4af2         	ldr	r2, [pc, #0x3c8]        @ 0x8003c44 <firmware_image+0x3c44>
 800387a: 2132         	movs	r1, #0x32
 800387c: b1c0         	cbz	r0, 0x80038b0 <firmware_image+0x38b0> @ imm = #0x30
 800387e: 7ea0         	ldrb	r0, [r4, #0x1a]
 8003880: 2803         	cmp	r0, #0x3
 8003882: d002         	beq	0x800388a <firmware_image+0x388a> @ imm = #0x4
 8003884: 7ee3         	ldrb	r3, [r4, #0x1b]
 8003886: 2b03         	cmp	r3, #0x3
 8003888: d105         	bne	0x8003896 <firmware_image+0x3896> @ imm = #0xa
 800388a: 7f23         	ldrb	r3, [r4, #0x1c]
 800388c: 2b02         	cmp	r3, #0x2
 800388e: d102         	bne	0x8003896 <firmware_image+0x3896> @ imm = #0x4
 8003890: 7e63         	ldrb	r3, [r4, #0x19]
 8003892: 2b02         	cmp	r3, #0x2
 8003894: d00a         	beq	0x80038ac <firmware_image+0x38ac> @ imm = #0x14
 8003896: 2802         	cmp	r0, #0x2
 8003898: d11e         	bne	0x80038d8 <firmware_image+0x38d8> @ imm = #0x3c
 800389a: 7ee0         	ldrb	r0, [r4, #0x1b]
 800389c: 2802         	cmp	r0, #0x2
 800389e: d11b         	bne	0x80038d8 <firmware_image+0x38d8> @ imm = #0x36
 80038a0: 7f20         	ldrb	r0, [r4, #0x1c]
 80038a2: 2803         	cmp	r0, #0x3
 80038a4: d002         	beq	0x80038ac <firmware_image+0x38ac> @ imm = #0x4
 80038a6: 7e60         	ldrb	r0, [r4, #0x19]
 80038a8: 2803         	cmp	r0, #0x3
 80038aa: d115         	bne	0x80038d8 <firmware_image+0x38d8> @ imm = #0x2a
 80038ac: 8011         	strh	r1, [r2]
 80038ae: e013         	b	0x80038d8 <firmware_image+0x38d8> @ imm = #0x26
 80038b0: 7ea0         	ldrb	r0, [r4, #0x1a]
 80038b2: 2801         	cmp	r0, #0x1
 80038b4: d002         	beq	0x80038bc <firmware_image+0x38bc> @ imm = #0x4
 80038b6: 7ee3         	ldrb	r3, [r4, #0x1b]
 80038b8: 2b01         	cmp	r3, #0x1
 80038ba: d103         	bne	0x80038c4 <firmware_image+0x38c4> @ imm = #0x6
 80038bc: 7f23         	ldrb	r3, [r4, #0x1c]
 80038be: 7e66         	ldrb	r6, [r4, #0x19]
 80038c0: 4333         	orrs	r3, r6
 80038c2: d008         	beq	0x80038d6 <firmware_image+0x38d6> @ imm = #0x10
 80038c4: 7ee3         	ldrb	r3, [r4, #0x1b]
 80038c6: 4318         	orrs	r0, r3
 80038c8: d106         	bne	0x80038d8 <firmware_image+0x38d8> @ imm = #0xc
 80038ca: 7f20         	ldrb	r0, [r4, #0x1c]
 80038cc: 2803         	cmp	r0, #0x3
 80038ce: d002         	beq	0x80038d6 <firmware_image+0x38d6> @ imm = #0x4
 80038d0: 7e60         	ldrb	r0, [r4, #0x19]
 80038d2: 2803         	cmp	r0, #0x3
 80038d4: d100         	bne	0x80038d8 <firmware_image+0x38d8> @ imm = #0x0
 80038d6: 8011         	strh	r1, [r2]
 80038d8: 7ea0         	ldrb	r0, [r4, #0x1a]
 80038da: 7720         	strb	r0, [r4, #0x1c]
 80038dc: 7ee0         	ldrb	r0, [r4, #0x1b]
 80038de: 7660         	strb	r0, [r4, #0x19]
 80038e0: f9b4 003e    	ldrsh.w	r0, [r4, #0x3e]
 80038e4: f9b4 1040    	ldrsh.w	r1, [r4, #0x40]
 80038e8: 70d0         	strb	r0, [r2, #0x3]
 80038ea: 1040         	asrs	r0, r0, #0x1
 80038ec: b200         	sxth	r0, r0
 80038ee: f002 fd92    	bl	0x8006416 <firmware_image+0x6416> @ imm = #0x2b24
 80038f2: f640 33ee    	movw	r3, #0xbee
 80038f6: 2101         	movs	r1, #0x1
 80038f8: 2200         	movs	r2, #0x0
 80038fa: 4298         	cmp	r0, r3
 80038fc: dd02         	ble	0x8003904 <firmware_image+0x3904> @ imm = #0x4
 80038fe: 7a20         	ldrb	r0, [r4, #0x8]
 8003900: 2803         	cmp	r0, #0x3
 8003902: d007         	beq	0x8003914 <firmware_image+0x3914> @ imm = #0xe
 8003904: 7022         	strb	r2, [r4]
 8003906: 7820         	ldrb	r0, [r4]
 8003908: 2801         	cmp	r0, #0x1
 800390a: d005         	beq	0x8003918 <firmware_image+0x3918> @ imm = #0xa
 800390c: 7828         	ldrb	r0, [r5]
 800390e: b148         	cbz	r0, 0x8003924 <firmware_image+0x3924> @ imm = #0x12
 8003910: 74e2         	strb	r2, [r4, #0x13]
 8003912: e008         	b	0x8003926 <firmware_image+0x3926> @ imm = #0x10
 8003914: 7021         	strb	r1, [r4]
 8003916: e7f6         	b	0x8003906 <firmware_image+0x3906> @ imm = #-0x14
 8003918: 7828         	ldrb	r0, [r5]
 800391a: b108         	cbz	r0, 0x8003920 <firmware_image+0x3920> @ imm = #0x2
 800391c: 74e1         	strb	r1, [r4, #0x13]
 800391e: e002         	b	0x8003926 <firmware_image+0x3926> @ imm = #0x4
 8003920: 7521         	strb	r1, [r4, #0x14]
 8003922: e000         	b	0x8003926 <firmware_image+0x3926> @ imm = #0x0
 8003924: 7522         	strb	r2, [r4, #0x14]
 8003926: 8ce0         	ldrh	r0, [r4, #0x26]
 8003928: b178         	cbz	r0, 0x800394a <firmware_image+0x394a> @ imm = #0x1e
 800392a: f9b4 003e    	ldrsh.w	r0, [r4, #0x3e]
 800392e: f002 fd72    	bl	0x8006416 <firmware_image+0x6416> @ imm = #0x2ae4
 8003932: f240 53dc    	movw	r3, #0x5dc
 8003936: 4298         	cmp	r0, r3
 8003938: dd08         	ble	0x800394c <firmware_image+0x394c> @ imm = #0x10
 800393a: f994 0008    	ldrsb.w	r0, [r4, #0x8]
 800393e: 2802         	cmp	r0, #0x2
 8003940: d001         	beq	0x8003946 <firmware_image+0x3946> @ imm = #0x2
 8003942: 2801         	cmp	r0, #0x1
 8003944: d102         	bne	0x800394c <firmware_image+0x394c> @ imm = #0x4
 8003946: 7061         	strb	r1, [r4, #0x1]
 8003948: e000         	b	0x800394c <firmware_image+0x394c> @ imm = #0x0
 800394a: 7062         	strb	r2, [r4, #0x1]
 800394c: 7860         	ldrb	r0, [r4, #0x1]
 800394e: 2801         	cmp	r0, #0x1
 8003950: d003         	beq	0x800395a <firmware_image+0x395a> @ imm = #0x6
 8003952: 7828         	ldrb	r0, [r5]
 8003954: b138         	cbz	r0, 0x8003966 <firmware_image+0x3966> @ imm = #0xe
 8003956: 7562         	strb	r2, [r4, #0x15]
 8003958: e006         	b	0x8003968 <firmware_image+0x3968> @ imm = #0xc
 800395a: 7828         	ldrb	r0, [r5]
 800395c: b108         	cbz	r0, 0x8003962 <firmware_image+0x3962> @ imm = #0x2
 800395e: 7561         	strb	r1, [r4, #0x15]
 8003960: e002         	b	0x8003968 <firmware_image+0x3968> @ imm = #0x4
 8003962: 75a1         	strb	r1, [r4, #0x16]
 8003964: e000         	b	0x8003968 <firmware_image+0x3968> @ imm = #0x0
 8003966: 75a2         	strb	r2, [r4, #0x16]
 8003968: f9b4 0020    	ldrsh.w	r0, [r4, #0x20]
 800396c: f640 53ac    	movw	r3, #0xdac
 8003970: 4298         	cmp	r0, r3
 8003972: da01         	bge	0x8003978 <firmware_image+0x3978> @ imm = #0x2
 8003974: 70a1         	strb	r1, [r4, #0x2]
 8003976: e000         	b	0x800397a <firmware_image+0x397a> @ imm = #0x0
 8003978: 70a2         	strb	r2, [r4, #0x2]
 800397a: 4fb2         	ldr	r7, [pc, #0x2c8]        @ 0x8003c44 <firmware_image+0x3c44>
 800397c: 7838         	ldrb	r0, [r7]
 800397e: 2801         	cmp	r0, #0x1
 8003980: d003         	beq	0x800398a <firmware_image+0x398a> @ imm = #0x6
 8003982: 7828         	ldrb	r0, [r5]
 8003984: b138         	cbz	r0, 0x8003996 <firmware_image+0x3996> @ imm = #0xe
 8003986: 75e2         	strb	r2, [r4, #0x17]
 8003988: e006         	b	0x8003998 <firmware_image+0x3998> @ imm = #0xc
 800398a: 7828         	ldrb	r0, [r5]
 800398c: b108         	cbz	r0, 0x8003992 <firmware_image+0x3992> @ imm = #0x2
 800398e: 75e1         	strb	r1, [r4, #0x17]
 8003990: e002         	b	0x8003998 <firmware_image+0x3998> @ imm = #0x4
 8003992: 7621         	strb	r1, [r4, #0x18]
 8003994: e000         	b	0x8003998 <firmware_image+0x3998> @ imm = #0x0
 8003996: 7622         	strb	r2, [r4, #0x18]
 8003998: f8df 82ac    	ldr.w	r8, [pc, #0x2ac]        @ 0x8003c48 <firmware_image+0x3c48>
 800399c: f898 0000    	ldrb.w	r0, [r8]
 80039a0: 2801         	cmp	r0, #0x1
 80039a2: d003         	beq	0x80039ac <firmware_image+0x39ac> @ imm = #0x6
 80039a4: 7828         	ldrb	r0, [r5]
 80039a6: b138         	cbz	r0, 0x80039b8 <firmware_image+0x39b8> @ imm = #0xe
 80039a8: 73e2         	strb	r2, [r4, #0xf]
 80039aa: e006         	b	0x80039ba <firmware_image+0x39ba> @ imm = #0xc
 80039ac: 7828         	ldrb	r0, [r5]
 80039ae: b108         	cbz	r0, 0x80039b4 <firmware_image+0x39b4> @ imm = #0x2
 80039b0: 73e1         	strb	r1, [r4, #0xf]
 80039b2: e002         	b	0x80039ba <firmware_image+0x39ba> @ imm = #0x4
 80039b4: 7421         	strb	r1, [r4, #0x10]
 80039b6: e000         	b	0x80039ba <firmware_image+0x39ba> @ imm = #0x0
 80039b8: 7422         	strb	r2, [r4, #0x10]
 80039ba: f8df 9290    	ldr.w	r9, [pc, #0x290]        @ 0x8003c4c <firmware_image+0x3c4c>
 80039be: f899 0000    	ldrb.w	r0, [r9]
 80039c2: 2801         	cmp	r0, #0x1
 80039c4: d003         	beq	0x80039ce <firmware_image+0x39ce> @ imm = #0x6
 80039c6: 7828         	ldrb	r0, [r5]
 80039c8: b138         	cbz	r0, 0x80039da <firmware_image+0x39da> @ imm = #0xe
 80039ca: 7462         	strb	r2, [r4, #0x11]
 80039cc: e006         	b	0x80039dc <firmware_image+0x39dc> @ imm = #0xc
 80039ce: 7828         	ldrb	r0, [r5]
 80039d0: b108         	cbz	r0, 0x80039d6 <firmware_image+0x39d6> @ imm = #0x2
 80039d2: 7461         	strb	r1, [r4, #0x11]
 80039d4: e002         	b	0x80039dc <firmware_image+0x39dc> @ imm = #0x4
 80039d6: 74a1         	strb	r1, [r4, #0x12]
 80039d8: e000         	b	0x80039dc <firmware_image+0x39dc> @ imm = #0x0
 80039da: 74a2         	strb	r2, [r4, #0x12]
 80039dc: 4e9c         	ldr	r6, [pc, #0x270]        @ 0x8003c50 <firmware_image+0x3c50>
 80039de: 7830         	ldrb	r0, [r6]
 80039e0: 2801         	cmp	r0, #0x1
 80039e2: d003         	beq	0x80039ec <firmware_image+0x39ec> @ imm = #0x6
 80039e4: 7828         	ldrb	r0, [r5]
 80039e6: b148         	cbz	r0, 0x80039fc <firmware_image+0x39fc> @ imm = #0x12
 80039e8: 7462         	strb	r2, [r4, #0x11]
 80039ea: e008         	b	0x80039fe <firmware_image+0x39fe> @ imm = #0x10
 80039ec: 7828         	ldrb	r0, [r5]
 80039ee: b110         	cbz	r0, 0x80039f6 <firmware_image+0x39f6> @ imm = #0x4
 80039f0: 4898         	ldr	r0, [pc, #0x260]        @ 0x8003c54 <firmware_image+0x3c54>
 80039f2: 7001         	strb	r1, [r0]
 80039f4: e003         	b	0x80039fe <firmware_image+0x39fe> @ imm = #0x6
 80039f6: 4898         	ldr	r0, [pc, #0x260]        @ 0x8003c58 <firmware_image+0x3c58>
 80039f8: 7001         	strb	r1, [r0]
 80039fa: e000         	b	0x80039fe <firmware_image+0x39fe> @ imm = #0x0
 80039fc: 74a2         	strb	r2, [r4, #0x12]
 80039fe: f7fd fe81    	bl	0x8001704 <firmware_image+0x1704> @ imm = #-0x22fe
 8003a02: 7828         	ldrb	r0, [r5]
 8003a04: b3f0         	cbz	r0, 0x8003a84 <firmware_image+0x3a84> @ imm = #0x7c
 8003a06: 4895         	ldr	r0, [pc, #0x254]        @ 0x8003c5c <firmware_image+0x3c5c>
 8003a08: 7800         	ldrb	r0, [r0]
 8003a0a: b120         	cbz	r0, 0x8003a16 <firmware_image+0x3a16> @ imm = #0x8
 8003a0c: 7b20         	ldrb	r0, [r4, #0xc]
 8003a0e: f040 0001    	orr	r0, r0, #0x1
 8003a12: 7320         	strb	r0, [r4, #0xc]
 8003a14: e003         	b	0x8003a1e <firmware_image+0x3a1e> @ imm = #0x6
 8003a16: 7b20         	ldrb	r0, [r4, #0xc]
 8003a18: f020 0001    	bic	r0, r0, #0x1
 8003a1c: 7320         	strb	r0, [r4, #0xc]
 8003a1e: 4890         	ldr	r0, [pc, #0x240]        @ 0x8003c60 <firmware_image+0x3c60>
 8003a20: 7800         	ldrb	r0, [r0]
 8003a22: b120         	cbz	r0, 0x8003a2e <firmware_image+0x3a2e> @ imm = #0x8
 8003a24: 7b20         	ldrb	r0, [r4, #0xc]
 8003a26: f040 0002    	orr	r0, r0, #0x2
 8003a2a: 7320         	strb	r0, [r4, #0xc]
 8003a2c: e003         	b	0x8003a36 <firmware_image+0x3a36> @ imm = #0x6
 8003a2e: 7b20         	ldrb	r0, [r4, #0xc]
 8003a30: f020 0002    	bic	r0, r0, #0x2
 8003a34: 7320         	strb	r0, [r4, #0xc]
 8003a36: 488b         	ldr	r0, [pc, #0x22c]        @ 0x8003c64 <firmware_image+0x3c64>
 8003a38: 7800         	ldrb	r0, [r0]
 8003a3a: b120         	cbz	r0, 0x8003a46 <firmware_image+0x3a46> @ imm = #0x8
 8003a3c: 7b20         	ldrb	r0, [r4, #0xc]
 8003a3e: f040 0004    	orr	r0, r0, #0x4
 8003a42: 7320         	strb	r0, [r4, #0xc]
 8003a44: e003         	b	0x8003a4e <firmware_image+0x3a4e> @ imm = #0x6
 8003a46: 7b20         	ldrb	r0, [r4, #0xc]
 8003a48: f020 0004    	bic	r0, r0, #0x4
 8003a4c: 7320         	strb	r0, [r4, #0xc]
 8003a4e: 8ce0         	ldrh	r0, [r4, #0x26]
 8003a50: b120         	cbz	r0, 0x8003a5c <firmware_image+0x3a5c> @ imm = #0x8
 8003a52: 7b20         	ldrb	r0, [r4, #0xc]
 8003a54: f040 0008    	orr	r0, r0, #0x8
 8003a58: 7320         	strb	r0, [r4, #0xc]
 8003a5a: e003         	b	0x8003a64 <firmware_image+0x3a64> @ imm = #0x6
 8003a5c: 7b20         	ldrb	r0, [r4, #0xc]
 8003a5e: f020 7b20    	bic	r11, r0, #0x2800000
 8003a62: f020 0030    	bic	r0, r0, #0x30
 8003a66: 497f         	ldr	r1, [pc, #0x1fc]        @ 0x8003c64 <firmware_image+0x3c64>
 8003a68: 7809         	ldrb	r1, [r1]
 8003a6a: ea40 1001    	orr.w	r0, r0, r1, lsl #4
 8003a6e: b2c0         	uxtb	r0, r0
 8003a70: 7320         	strb	r0, [r4, #0xc]
 8003a72: 7831         	ldrb	r1, [r6]
 8003a74: 2901         	cmp	r1, #0x1
 8003a76: d038         	beq	0x8003aea <firmware_image+0x3aea> @ imm = #0x70
 8003a78: f020 0040    	bic	r0, r0, #0x40
 8003a7c: 7320         	strb	r0, [r4, #0xc]
 8003a7e: e000         	b	0x8003a82 <firmware_image+0x3a82> @ imm = #0x0
 8003a80: e063         	b	0x8003b4a <firmware_image+0x3b4a> @ imm = #0xc6
 8003a82: 4879         	ldr	r0, [pc, #0x1e4]        @ 0x8003c68 <firmware_image+0x3c68>
 8003a84: 7800         	ldrb	r0, [r0]
 8003a86: 2801         	cmp	r0, #0x1
 8003a88: d033         	beq	0x8003af2 <firmware_image+0x3af2> @ imm = #0x66
 8003a8a: 7b20         	ldrb	r0, [r4, #0xc]
 8003a8c: f020 0080    	bic	r0, r0, #0x80
 8003a90: 7320         	strb	r0, [r4, #0xc]
 8003a92: f898 0000    	ldrb.w	r0, [r8]
 8003a96: 2801         	cmp	r0, #0x1
 8003a98: d030         	beq	0x8003afc <firmware_image+0x3afc> @ imm = #0x60
 8003a9a: 7ae0         	ldrb	r0, [r4, #0xb]
 8003a9c: f020 0001    	bic	r0, r0, #0x1
 8003aa0: 72e0         	strb	r0, [r4, #0xb]
 8003aa2: f899 0000    	ldrb.w	r0, [r9]
 8003aa6: 2801         	cmp	r0, #0x1
 8003aa8: d02d         	beq	0x8003b06 <firmware_image+0x3b06> @ imm = #0x5a
 8003aaa: 7ae0         	ldrb	r0, [r4, #0xb]
 8003aac: f020 0002    	bic	r0, r0, #0x2
 8003ab0: 72e0         	strb	r0, [r4, #0xb]
 8003ab2: 7838         	ldrb	r0, [r7]
 8003ab4: 2801         	cmp	r0, #0x1
 8003ab6: d02b         	beq	0x8003b10 <firmware_image+0x3b10> @ imm = #0x56
 8003ab8: 7ae0         	ldrb	r0, [r4, #0xb]
 8003aba: f020 0004    	bic	r0, r0, #0x4
 8003abe: 72e0         	strb	r0, [r4, #0xb]
 8003ac0: 7820         	ldrb	r0, [r4]
 8003ac2: 2801         	cmp	r0, #0x1
 8003ac4: d029         	beq	0x8003b1a <firmware_image+0x3b1a> @ imm = #0x52
 8003ac6: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ac8: f020 0008    	bic	r0, r0, #0x8
 8003acc: 72e0         	strb	r0, [r4, #0xb]
 8003ace: 7860         	ldrb	r0, [r4, #0x1]
 8003ad0: 2801         	cmp	r0, #0x1
 8003ad2: d027         	beq	0x8003b24 <firmware_image+0x3b24> @ imm = #0x4e
 8003ad4: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ad6: f020 0010    	bic	r0, r0, #0x10
 8003ada: 72e0         	strb	r0, [r4, #0xb]
 8003adc: 8d20         	ldrh	r0, [r4, #0x28]
 8003ade: b330         	cbz	r0, 0x8003b2e <firmware_image+0x3b2e> @ imm = #0x4c
 8003ae0: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ae2: f040 0020    	orr	r0, r0, #0x20
 8003ae6: 72e0         	strb	r0, [r4, #0xb]
 8003ae8: e025         	b	0x8003b36 <firmware_image+0x3b36> @ imm = #0x4a
 8003aea: f040 0040    	orr	r0, r0, #0x40
 8003aee: 7320         	strb	r0, [r4, #0xc]
 8003af0: e7c5         	b	0x8003a7e <firmware_image+0x3a7e> @ imm = #-0x76
 8003af2: 7b20         	ldrb	r0, [r4, #0xc]
 8003af4: f040 0080    	orr	r0, r0, #0x80
 8003af8: 7320         	strb	r0, [r4, #0xc]
 8003afa: e7ca         	b	0x8003a92 <firmware_image+0x3a92> @ imm = #-0x6c
 8003afc: 7ae0         	ldrb	r0, [r4, #0xb]
 8003afe: f040 0001    	orr	r0, r0, #0x1
 8003b02: 72e0         	strb	r0, [r4, #0xb]
 8003b04: e7cd         	b	0x8003aa2 <firmware_image+0x3aa2> @ imm = #-0x66
 8003b06: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b08: f040 0002    	orr	r0, r0, #0x2
 8003b0c: 72e0         	strb	r0, [r4, #0xb]
 8003b0e: e7d0         	b	0x8003ab2 <firmware_image+0x3ab2> @ imm = #-0x60
 8003b10: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b12: f040 0004    	orr	r0, r0, #0x4
 8003b16: 72e0         	strb	r0, [r4, #0xb]
 8003b18: e7d2         	b	0x8003ac0 <firmware_image+0x3ac0> @ imm = #-0x5c
 8003b1a: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b1c: f040 0008    	orr	r0, r0, #0x8
 8003b20: 72e0         	strb	r0, [r4, #0xb]
 8003b22: e7d4         	b	0x8003ace <firmware_image+0x3ace> @ imm = #-0x58
 8003b24: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b26: f040 0010    	orr	r0, r0, #0x10
 8003b2a: 72e0         	strb	r0, [r4, #0xb]
 8003b2c: e7d6         	b	0x8003adc <firmware_image+0x3adc> @ imm = #-0x54
 8003b2e: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b30: f020 0020    	bic	r0, r0, #0x20
 8003b34: 72e0         	strb	r0, [r4, #0xb]
 8003b36: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b38: f020 00c0    	bic	r0, r0, #0xc0
 8003b3c: 7a21         	ldrb	r1, [r4, #0x8]
 8003b3e: ea40 1081    	orr.w	r0, r0, r1, lsl #6
 8003b42: 72e0         	strb	r0, [r4, #0xb]
 8003b44: f7ff fcb4    	bl	0x80034b0 <firmware_image+0x34b0> @ imm = #-0x698
 8003b48: e04c         	b	0x8003be4 <firmware_image+0x3be4> @ imm = #0x98
 8003b4a: 4848         	ldr	r0, [pc, #0x120]        @ 0x8003c6c <firmware_image+0x3c6c>
 8003b4c: 7800         	ldrb	r0, [r0]
 8003b4e: b120         	cbz	r0, 0x8003b5a <firmware_image+0x3b5a> @ imm = #0x8
 8003b50: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b52: f040 0004    	orr	r0, r0, #0x4
 8003b56: 73a0         	strb	r0, [r4, #0xe]
 8003b58: e003         	b	0x8003b62 <firmware_image+0x3b62> @ imm = #0x6
 8003b5a: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b5c: f020 0004    	bic	r0, r0, #0x4
 8003b60: 73a0         	strb	r0, [r4, #0xe]
 8003b62: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b64: f020 0030    	bic	r0, r0, #0x30
 8003b68: 4941         	ldr	r1, [pc, #0x104]        @ 0x8003c70 <firmware_image+0x3c70>
 8003b6a: 7809         	ldrb	r1, [r1]
 8003b6c: ea40 1001    	orr.w	r0, r0, r1, lsl #4
 8003b70: b2c0         	uxtb	r0, r0
 8003b72: 73a0         	strb	r0, [r4, #0xe]
 8003b74: 7831         	ldrb	r1, [r6]
 8003b76: 2901         	cmp	r1, #0x1
 8003b78: d03a         	beq	0x8003bf0 <firmware_image+0x3bf0> @ imm = #0x74
 8003b7a: f020 0040    	bic	r0, r0, #0x40
 8003b7e: 73a0         	strb	r0, [r4, #0xe]
 8003b80: f898 0000    	ldrb.w	r0, [r8]
 8003b84: 2801         	cmp	r0, #0x1
 8003b86: d037         	beq	0x8003bf8 <firmware_image+0x3bf8> @ imm = #0x6e
 8003b88: 7b60         	ldrb	r0, [r4, #0xd]
 8003b8a: f020 0001    	bic	r0, r0, #0x1
 8003b8e: 7360         	strb	r0, [r4, #0xd]
 8003b90: f899 0000    	ldrb.w	r0, [r9]
 8003b94: 2801         	cmp	r0, #0x1
 8003b96: d034         	beq	0x8003c02 <firmware_image+0x3c02> @ imm = #0x68
 8003b98: 7b60         	ldrb	r0, [r4, #0xd]
 8003b9a: f020 0002    	bic	r0, r0, #0x2
 8003b9e: 7360         	strb	r0, [r4, #0xd]
 8003ba0: 7838         	ldrb	r0, [r7]
 8003ba2: 2801         	cmp	r0, #0x1
 8003ba4: d032         	beq	0x8003c0c <firmware_image+0x3c0c> @ imm = #0x64
 8003ba6: 7b60         	ldrb	r0, [r4, #0xd]
 8003ba8: f020 0004    	bic	r0, r0, #0x4
 8003bac: 7360         	strb	r0, [r4, #0xd]
 8003bae: 7820         	ldrb	r0, [r4]
 8003bb0: 2801         	cmp	r0, #0x1
 8003bb2: d030         	beq	0x8003c16 <firmware_image+0x3c16> @ imm = #0x60
 8003bb4: 7b60         	ldrb	r0, [r4, #0xd]
 8003bb6: f020 0008    	bic	r0, r0, #0x8
 8003bba: 7360         	strb	r0, [r4, #0xd]
 8003bbc: 7860         	ldrb	r0, [r4, #0x1]
 8003bbe: 2801         	cmp	r0, #0x1
 8003bc0: d02e         	beq	0x8003c20 <firmware_image+0x3c20> @ imm = #0x5c
 8003bc2: 7b60         	ldrb	r0, [r4, #0xd]
 8003bc4: f020 0010    	bic	r0, r0, #0x10
 8003bc8: 7360         	strb	r0, [r4, #0xd]
 8003bca: 2901         	cmp	r1, #0x1
 8003bcc: d02d         	beq	0x8003c2a <firmware_image+0x3c2a> @ imm = #0x5a
 8003bce: 7b60         	ldrb	r0, [r4, #0xd]
 8003bd0: f020 0020    	bic	r0, r0, #0x20
 8003bd4: 7360         	strb	r0, [r4, #0xd]
 8003bd6: 7b60         	ldrb	r0, [r4, #0xd]
 8003bd8: f020 00c0    	bic	r0, r0, #0xc0
 8003bdc: 7a21         	ldrb	r1, [r4, #0x8]
 8003bde: ea40 1081    	orr.w	r0, r0, r1, lsl #6
 8003be2: 7360         	strb	r0, [r4, #0xd]
 8003be4: f834 0f42    	ldrh	r0, [r4, #66]!
 8003be8: 1c40         	adds	r0, r0, #0x1
 8003bea: 8020         	strh	r0, [r4]
 8003bec: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
 8003bf0: f040 0040    	orr	r0, r0, #0x40
 8003bf4: 73a0         	strb	r0, [r4, #0xe]
 8003bf6: e7c3         	b	0x8003b80 <firmware_image+0x3b80> @ imm = #-0x7a
 8003bf8: 7b60         	ldrb	r0, [r4, #0xd]
 8003bfa: f040 0001    	orr	r0, r0, #0x1
 8003bfe: 7360         	strb	r0, [r4, #0xd]
 8003c00: 7b60         	ldrb	r0, [r4, #0xd]
 8003c02: f040 0001    	orr	r0, r0, #0x1
 8003c06: 7360         	strb	r0, [r4, #0xd]
 8003c08: e7c6         	b	0x8003b98 <firmware_image+0x3b98> @ imm = #-0x74
 8003c0a: 7b60         	ldrb	r0, [r4, #0xd]
 8003c0c: f040 0002    	orr	r0, r0, #0x2
 8003c10: 7360         	strb	r0, [r4, #0xd]
 8003c12: e7c9         	b	0x8003ba8 <firmware_image+0x3ba8> @ imm = #-0x6e
 8003c14: 7b60         	ldrb	r0, [r4, #0xd]
 8003c16: f040 0004    	orr	r0, r0, #0x4
 8003c1a: 7360         	strb	r0, [r4, #0xd]
 8003c1c: e7cb         	b	0x8003bb6 <firmware_image+0x3bb6> @ imm = #-0x6a
 8003c1e: 7b60         	ldrb	r0, [r4, #0xd]
 8003c20: f040 0008    	orr	r0, r0, #0x8
 8003c24: 7360         	strb	r0, [r4, #0xd]
 8003c26: e7cd         	b	0x8003bc4 <firmware_image+0x3bc4> @ imm = #-0x66
 8003c28: 7b60         	ldrb	r0, [r4, #0xd]
 8003c2a: f040 0010    	orr	r0, r0, #0x10
 8003c2e: 7360         	strb	r0, [r4, #0xd]
 8003c30: e7cf         	b	0x8003bd2 <firmware_image+0x3bd2> @ imm = #-0x62
 8003c32: 7b60         	ldrb	r0, [r4, #0xd]
 8003c34: f040 0020    	orr	r0, r0, #0x20
 8003c38: 7360         	strb	r0, [r4, #0xd]
 8003c3a: e7d0         	b	0x8003bde <firmware_image+0x3bde> @ imm = #-0x60
 8003c3c: 021e         	lsls	r6, r3, #0x8
 8003c3e: 2000         	movs	r0, #0x0
 8003c40: 0064         	lsls	r4, r4, #0x1
 8003c42: 2000         	movs	r0, #0x0
 8003c44: 003e         	movs	r6, r7
 8003c46: 2000         	movs	r0, #0x0
 8003c48: 02b0         	lsls	r0, r6, #0xa
 8003c4a: 2000         	movs	r0, #0x0
 8003c4c: 0269         	lsls	r1, r5, #0x9
 8003c4e: 2000         	movs	r0, #0x0
 8003c50: 0296         	lsls	r6, r2, #0xa
 8003c52: 2000         	movs	r0, #0x0
 8003c54: 0194         	lsls	r4, r2, #0x6
 8003c56: 2000         	movs	r0, #0x0
 8003c58: 0196         	lsls	r6, r2, #0x6
 8003c5a: 2000         	movs	r0, #0x0
 8003c5c: 0195         	lsls	r5, r2, #0x6
 8003c5e: 2000         	movs	r0, #0x0
 8003c60: 0153         	lsls	r3, r2, #0x5
 8003c62: 2000         	movs	r0, #0x0
 8003c64: 0148         	lsls	r0, r1, #0x5
 8003c66: 2000         	movs	r0, #0x0
 8003c68: 0168         	lsls	r0, r5, #0x5
 8003c6a: 2000         	movs	r0, #0x0
 8003c6c: 0142         	lsls	r2, r0, #0x5
 8003c6e: 2000         	movs	r0, #0x0
 8003c70: 0152         	lsls	r2, r2, #0x5
 8003c72: 2000         	movs	r0, #0x0
 8003c74: 0169         	lsls	r1, r5, #0x5
 8003c76: 2000         	movs	r0, #0x0
 8003c78: 0143         	lsls	r3, r0, #0x5
 8003c7a: 2000         	movs	r0, #0x0
 8003c7c: e92d 5ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 8003c80: f002 f942    	bl	0x8005f08 <firmware_image+0x5f08> @ imm = #0x2284
 8003c84: f000 fa68    	bl	0x8004158 <firmware_image+0x4158> @ imm = #0x4d0
 8003c88: 4ffe         	ldr	r7, [pc, #0x3f8]        @ 0x8004084 <firmware_image+0x4084>
 8003c8a: 4cff         	ldr	r4, [pc, #0x3fc]        @ 0x8004088 <firmware_image+0x4088>
 8003c8c: f8df a3fc    	ldr.w	r10, [pc, #0x3fc]       @ 0x800408c <firmware_image+0x408c>
 8003c90: f997 0008    	ldrsb.w	r0, [r7, #0x8]
 8003c94: f8df 83f8    	ldr.w	r8, [pc, #0x3f8]        @ 0x8004090 <firmware_image+0x4090>
 8003c98: 2600         	movs	r6, #0x0
 8003c9a: f107 0980    	add.w	r9, r7, #0x80
 8003c9e: b1e0         	cbz	r0, 0x8003cda <firmware_image+0x3cda> @ imm = #0x38
 8003ca0: 2102         	movs	r1, #0x2
 8003ca2: 4afc         	ldr	r2, [pc, #0x3f0]        @ 0x8004094 <firmware_image+0x4094>
 8003ca4: 2332         	movs	r3, #0x32
 8003ca6: 2514         	movs	r5, #0x14
 8003ca8: f646 7b54    	movw	r11, #0x6f54
 8003cac: 2801         	cmp	r0, #0x1
 8003cae: d06e         	beq	0x8003d8e <firmware_image+0x3d8e> @ imm = #0xdc
 8003cb0: 2802         	cmp	r0, #0x2
 8003cb2: d06d         	beq	0x8003d90 <firmware_image+0x3d90> @ imm = #0xda
 8003cb4: 2803         	cmp	r0, #0x3
 8003cb6: d06c         	beq	0x8003d92 <firmware_image+0x3d92> @ imm = #0xd8
 8003cb8: f88a 6000    	strb.w	r6, [r10]
 8003cbc: f8c9 6044    	str.w	r6, [r9, #0x44]
 8003cc0: 7a38         	ldrb	r0, [r7, #0x8]
 8003cc2: 7278         	strb	r0, [r7, #0x9]
 8003cc4: f8d9 1044    	ldr.w	r1, [r9, #0x44]
 8003cc8: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003ccc: 4281         	cmp	r1, r0
 8003cce: dd7c         	ble	0x8003dca <firmware_image+0x3dca> @ imm = #0xf8
 8003cd0: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003cd4: e1b9         	b	0x800404a <firmware_image+0x404a> @ imm = #0x372
 8003cd6: f8c9 6044    	str.w	r6, [r9, #0x44]
 8003cda: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003cde: f44f 7b7a    	mov.w	r11, #0x3e8
 8003ce2: 4558         	cmp	r0, r11
 8003ce4: dd04         	ble	0x8003cf0 <firmware_image+0x3cf0> @ imm = #0x8
 8003ce6: f5a0 707a    	sub.w	r0, r0, #0x3e8
 8003cea: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003cee: e009         	b	0x8003d04 <firmware_image+0x3d04> @ imm = #0x12
 8003cf0: f510 7f7a    	cmn.w	r0, #0x3e8
 8003cf4: da04         	bge	0x8003d00 <firmware_image+0x3d00> @ imm = #0x8
 8003cf6: f500 707a    	add.w	r0, r0, #0x3e8
 8003cfa: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003cfe: e001         	b	0x8003d04 <firmware_image+0x3d04> @ imm = #0x2
 8003d00: f8c9 602c    	str.w	r6, [r9, #0x2c]
 8003d04: 48e3         	ldr	r0, [pc, #0x38c]        @ 0x8004094 <firmware_image+0x4094>
 8003d06: 7800         	ldrb	r0, [r0]
 8003d08: bbf0         	cbnz	r0, 0x8003d88 <firmware_image+0x3d88> @ imm = #0x7c
 8003d0a: 4de4         	ldr	r5, [pc, #0x390]        @ 0x800409c <firmware_image+0x409c>
 8003d0c: 49e2         	ldr	r1, [pc, #0x388]        @ 0x8004098 <firmware_image+0x4098>
 8003d0e: 6828         	ldr	r0, [r5]
 8003d10: f7fc fa96    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x3ad4
 8003d14: f7fc fcb2    	bl	0x800067c <firmware_image+0x67c> @ imm = #-0x369c
 8003d18: b200         	sxth	r0, r0
 8003d1a: f002 fb81    	bl	0x8006420 <firmware_image+0x6420> @ imm = #0x2702
 8003d1e: f640 11c4    	movw	r1, #0x9c4
 8003d22: 4288         	cmp	r0, r1
 8003d24: da01         	bge	0x8003d2a <firmware_image+0x3d2a> @ imm = #0x2
 8003d26: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d28: b170         	cbz	r0, 0x8003d48 <firmware_image+0x3d48> @ imm = #0x1c
 8003d2a: 49db         	ldr	r1, [pc, #0x36c]        @ 0x8004098 <firmware_image+0x4098>
 8003d2c: 6828         	ldr	r0, [r5]
 8003d2e: f7fc fa87    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x3af2
 8003d32: f7fc fca3    	bl	0x800067c <firmware_image+0x67c> @ imm = #-0x36ba
 8003d36: b200         	sxth	r0, r0
 8003d38: f002 fb72    	bl	0x8006420 <firmware_image+0x6420> @ imm = #0x26e4
 8003d3c: f641 514c    	movw	r1, #0x1d4c
 8003d40: 4288         	cmp	r0, r1
 8003d42: da30         	bge	0x8003da6 <firmware_image+0x3da6> @ imm = #0x60
 8003d44: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d46: b1f8         	cbz	r0, 0x8003d88 <firmware_image+0x3d88> @ imm = #0x3e
 8003d48: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 8003d4c: f5b0 7ffa    	cmp.w	r0, #0x1f4
 8003d50: 7800         	ldrb	r0, [r0]
 8003d52: b9b8         	cbnz	r0, 0x8003d84 <firmware_image+0x3d84> @ imm = #0x2e
 8003d54: 48d2         	ldr	r0, [pc, #0x348]        @ 0x80040a0 <firmware_image+0x40a0>
 8003d56: 7800         	ldrb	r0, [r0]
 8003d58: b9a0         	cbnz	r0, 0x8003d84 <firmware_image+0x3d84> @ imm = #0x28
 8003d5a: 48d2         	ldr	r0, [pc, #0x348]        @ 0x80040a4 <firmware_image+0x40a4>
 8003d5c: 7800         	ldrb	r0, [r0]
 8003d5e: b988         	cbnz	r0, 0x8003d84 <firmware_image+0x3d84> @ imm = #0x22
 8003d60: 48d1         	ldr	r0, [pc, #0x344]        @ 0x80040a8 <firmware_image+0x40a8>
 8003d62: 7800         	ldrb	r0, [r0]
 8003d64: b970         	cbnz	r0, 0x8003d84 <firmware_image+0x3d84> @ imm = #0x1c
 8003d66: 7cf8         	ldrb	r0, [r7, #0x13]
 8003d68: b908         	cbnz	r0, 0x8003d6e <firmware_image+0x3d6e> @ imm = #0x2
 8003d6a: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d6c: b908         	cbnz	r0, 0x8003d72 <firmware_image+0x3d72> @ imm = #0x2
 8003d6e: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d70: b930         	cbnz	r0, 0x8003d80 <firmware_image+0x3d80> @ imm = #0xc
 8003d72: 7d38         	ldrb	r0, [r7, #0x14]
 8003d74: b920         	cbnz	r0, 0x8003d80 <firmware_image+0x3d80> @ imm = #0x8
 8003d76: 7db8         	ldrb	r0, [r7, #0x16]
 8003d78: b908         	cbnz	r0, 0x8003d7e <firmware_image+0x3d7e> @ imm = #0x2
 8003d7a: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d7c: b930         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0xc
 8003d7e: e003         	b	0x8003d88 <firmware_image+0x3d88> @ imm = #0x6
 8003d80: e00d         	b	0x8003d9e <firmware_image+0x3d9e> @ imm = #0x1a
 8003d82: e041         	b	0x8003e08 <firmware_image+0x3e08> @ imm = #0x82
 8003d84: e079         	b	0x8003e7a <firmware_image+0x3e7a> @ imm = #0xf2
 8003d86: e0e2         	b	0x8003f4e <firmware_image+0x3f4e> @ imm = #0x1c4
 8003d88: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d8a: b940         	cbnz	r0, 0x8003d9e <firmware_image+0x3d9e> @ imm = #0x10
 8003d8c: 48c6         	ldr	r0, [pc, #0x318]        @ 0x80040a8 <firmware_image+0x40a8>
 8003d8e: 7800         	ldrb	r0, [r0]
 8003d90: b108         	cbz	r0, 0x8003d96 <firmware_image+0x3d96> @ imm = #0x2
 8003d92: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d94: b108         	cbz	r0, 0x8003d9a <firmware_image+0x3d9a> @ imm = #0x2
 8003d96: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d98: b108         	cbz	r0, 0x8003d9e <firmware_image+0x3d9e> @ imm = #0x2
 8003d9a: 78f8         	ldrb	r0, [r7, #0x3]
 8003d9c: b110         	cbz	r0, 0x8003da4 <firmware_image+0x3da4> @ imm = #0x4
 8003d9e: f88a 6000    	strb.w	r6, [r10]
 8003da2: e789         	b	0x8003cb8 <firmware_image+0x3cb8> @ imm = #-0xee
 8003da4: 2001         	movs	r0, #0x1
 8003da6: 7238         	strb	r0, [r7, #0x8]
 8003da8: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003dac: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003db0: f88a 0000    	strb.w	r0, [r10]
 8003db4: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003db8: 4558         	cmp	r0, r11
 8003dba: dd06         	ble	0x8003dca <firmware_image+0x3dca> @ imm = #0xc
 8003dbc: f5a0 707a    	sub.w	r0, r0, #0x3e8
 8003dc0: e000         	b	0x8003dc4 <firmware_image+0x3dc4> @ imm = #0x0
 8003dc2: e139         	b	0x8004038 <firmware_image+0x4038> @ imm = #0x272
 8003dc4: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003dc8: e009         	b	0x8003dde <firmware_image+0x3dde> @ imm = #0x12
 8003dca: f510 7f7a    	cmn.w	r0, #0x3e8
 8003dce: da04         	bge	0x8003dda <firmware_image+0x3dda> @ imm = #0x8
 8003dd0: f500 707a    	add.w	r0, r0, #0x3e8
 8003dd4: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003dd8: e001         	b	0x8003dde <firmware_image+0x3dde> @ imm = #0x2
 8003dda: f8c9 602c    	str.w	r6, [r9, #0x2c]
 8003dde: 8cf8         	ldrh	r0, [r7, #0x26]
 8003de0: b148         	cbz	r0, 0x8003df6 <firmware_image+0x3df6> @ imm = #0x12
 8003de2: 48b2         	ldr	r0, [pc, #0x2c8]        @ 0x80040ac <firmware_image+0x40ac>
 8003de4: f8c8 0000    	str.w	r0, [r8]
 8003de8: f8c7 b058    	str.w	r11, [r7, #0x58]
 8003dec: f44f 7096    	mov.w	r0, #0x12c
 8003df0: 65f8         	str	r0, [r7, #0x5c]
 8003df2: 663e         	str	r6, [r7, #0x60]
 8003df4: e760         	b	0x8003cb8 <firmware_image+0x3cb8> @ imm = #-0x140
 8003df6: 6cb8         	ldr	r0, [r7, #0x48]
 8003df8: f8c8 0000    	str.w	r0, [r8]
 8003dfc: 6cf8         	ldr	r0, [r7, #0x4c]
 8003dfe: 65b8         	str	r0, [r7, #0x58]
 8003e00: 6d38         	ldr	r0, [r7, #0x50]
 8003e02: 65f8         	str	r0, [r7, #0x5c]
 8003e04: 663e         	str	r6, [r7, #0x60]
 8003e06: e757         	b	0x8003cb8 <firmware_image+0x3cb8> @ imm = #-0x152
 8003e08: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003e0c: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003e10: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003e14: f8c9 b02c    	str.w	r11, [r9, #0x2c]
 8003e18: f8c9 600c    	str.w	r6, [r9, #0xc]
 8003e1c: 8cf8         	ldrh	r0, [r7, #0x26]
 8003e1e: b130         	cbz	r0, 0x8003e2e <firmware_image+0x3e2e> @ imm = #0xc
 8003e20: 7239         	strb	r1, [r7, #0x8]
 8003e22: f8c8 2000    	str.w	r2, [r8]
 8003e26: 65bb         	str	r3, [r7, #0x58]
 8003e28: 65fd         	str	r5, [r7, #0x5c]
 8003e2a: 663e         	str	r6, [r7, #0x60]
 8003e2c: e00e         	b	0x8003e4c <firmware_image+0x3e4c> @ imm = #0x1c
 8003e2e: 2003         	movs	r0, #0x3
 8003e30: 7238         	strb	r0, [r7, #0x8]
 8003e32: 6cb8         	ldr	r0, [r7, #0x48]
 8003e34: f8c8 0000    	str.w	r0, [r8]
 8003e38: 6cf8         	ldr	r0, [r7, #0x4c]
 8003e3a: 65b8         	str	r0, [r7, #0x58]
 8003e3c: 6d38         	ldr	r0, [r7, #0x50]
 8003e3e: 65f8         	str	r0, [r7, #0x5c]
 8003e40: 6d78         	ldr	r0, [r7, #0x54]
 8003e42: 6638         	str	r0, [r7, #0x60]
 8003e44: e002         	b	0x8003e4c <firmware_image+0x3e4c> @ imm = #0x4
 8003e46: 3064         	adds	r0, #0x64
 8003e48: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003e4c: 4892         	ldr	r0, [pc, #0x248]        @ 0x8004098 <firmware_image+0x4098>
 8003e4e: 7800         	ldrb	r0, [r0]
 8003e50: 2801         	cmp	r0, #0x1
 8003e52: d005         	beq	0x8003e60 <firmware_image+0x3e60> @ imm = #0xa
 8003e54: 7878         	ldrb	r0, [r7, #0x1]
 8003e56: b918         	cbnz	r0, 0x8003e60 <firmware_image+0x3e60> @ imm = #0x6
 8003e58: 488e         	ldr	r0, [pc, #0x238]        @ 0x8004094 <firmware_image+0x4094>
 8003e5a: 7800         	ldrb	r0, [r0]
 8003e5c: 2800         	cmp	r0, #0x0
 8003e5e: d09e         	beq	0x8003d9e <firmware_image+0x3d9e> @ imm = #-0xc4
 8003e60: 8cf8         	ldrh	r0, [r7, #0x26]
 8003e62: 2800         	cmp	r0, #0x0
 8003e64: d09b         	beq	0x8003d9e <firmware_image+0x3d9e> @ imm = #-0xca
 8003e66: f88a 6000    	strb.w	r6, [r10]
 8003e6a: 723e         	strb	r6, [r7, #0x8]
 8003e6c: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003e70: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003e74: e71e         	b	0x8003cb4 <firmware_image+0x3cb4> @ imm = #-0x1c4
 8003e76: f8d9 001c    	ldr.w	r0, [r9, #0x1c]
 8003e7a: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8003e7e: 0100         	lsls	r0, r0, #0x4
 8003e80: f7fc fbe5    	bl	0x800064e <firmware_image+0x64e> @ imm = #-0x3836
 8003e84: 2200         	movs	r2, #0x0
 8003e86: 4b89         	ldr	r3, [pc, #0x224]        @ 0x80040ac <firmware_image+0x40ac>
 8003e88: f7fc fb69    	bl	0x800055e <firmware_image+0x55e> @ imm = #-0x392e
 8003e8c: 4604         	mov	r4, r0
 8003e8e: 460d         	mov	r5, r1
 8003e90: f9b7 0036    	ldrsh.w	r0, [r7, #0x36]
 8003e94: f9b7 1038    	ldrsh.w	r1, [r7, #0x38]
 8003e98: 1a41         	subs	r1, r0, r1
 8003e9a: eb01 0141    	add.w	r1, r1, r1, lsl #1
 8003e9e: eb00 0041    	add.w	r0, r0, r1, lsl #1
 8003ea2: 2132         	movs	r1, #0x32
 8003ea4: 4348         	muls	r0, r1, r0
 8003ea6: 2164         	movs	r1, #0x64
 8003ea8: fb90 f0f1    	sdiv	r0, r0, r1
 8003eac: f7fc fbcf    	bl	0x800064e <firmware_image+0x64e> @ imm = #-0x3862
 8003eb0: 4622         	mov	r2, r4
 8003eb2: 462b         	mov	r3, r5
 8003eb4: f7fc fa3a    	bl	0x800032c <firmware_image+0x32c> @ imm = #-0x3b8c
 8003eb8: f7fc fbf3    	bl	0x80006a2 <firmware_image+0x6a2> @ imm = #-0x381a
 8003ebc: f8c9 0024    	str.w	r0, [r9, #0x24]
 8003ec0: 486c         	ldr	r0, [pc, #0x1b0]        @ 0x8004074 <firmware_image+0x4074>
 8003ec2: 465a         	mov	r2, r11
 8003ec4: 497a         	ldr	r1, [pc, #0x1e8]        @ 0x80040b0 <firmware_image+0x40b0>
 8003ec6: 30a4         	adds	r0, #0xa4
 8003ec8: f7fd ff1c    	bl	0x8001d04 <firmware_image+0x1d04> @ imm = #-0x21c8
 8003ecc: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003ed0: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003ed4: f002 fa9e    	bl	0x8006414 <firmware_image+0x6414> @ imm = #0x253c
 8003ed8: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003edc: 486e         	ldr	r0, [pc, #0x1b8]        @ 0x8004098 <firmware_image+0x4098>
 8003ede: 7800         	ldrb	r0, [r0]
 8003ee0: 2801         	cmp	r0, #0x1
 8003ee2: d004         	beq	0x8003eee <firmware_image+0x3eee> @ imm = #0x8
 8003ee4: 7878         	ldrb	r0, [r7, #0x1]
 8003ee6: b910         	cbnz	r0, 0x8003eee <firmware_image+0x3eee> @ imm = #0x4
 8003ee8: 486a         	ldr	r0, [pc, #0x1a8]        @ 0x8004094 <firmware_image+0x4094>
 8003eea: 7800         	ldrb	r0, [r0]
 8003eec: b130         	cbz	r0, 0x8003efc <firmware_image+0x3efc> @ imm = #0xc
 8003eee: f88a 6000    	strb.w	r6, [r10]
 8003ef2: 723e         	strb	r6, [r7, #0x8]
 8003ef4: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003ef8: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003efc: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x80040a4 <firmware_image+0x40a4>
 8003efe: 7800         	ldrb	r0, [r0]
 8003f00: b300         	cbz	r0, 0x8003f44 <firmware_image+0x3f44> @ imm = #0x40
 8003f02: f8d9 0010    	ldr.w	r0, [r9, #0x10]
 8003f06: f648 d202    	bl	0x724c30e               @ imm = #-0xdb7bfc
 8003f0a: 1c40         	adds	r0, r0, #0x1
 8003f0c: f8c9 0010    	str.w	r0, [r9, #0x10]
 8003f10: f8d9 0010    	ldr.w	r0, [r9, #0x10]
 8003f14: 2805         	cmp	r0, #0x5
 8003f16: d9ab         	bls	0x8003e70 <firmware_image+0x3e70> @ imm = #-0xaa
 8003f18: 2003         	movs	r0, #0x3
 8003f1a: 7238         	strb	r0, [r7, #0x8]
 8003f1c: 6cb8         	ldr	r0, [r7, #0x48]
 8003f1e: f8c8 0000    	str.w	r0, [r8]
 8003f22: 6cf8         	ldr	r0, [r7, #0x4c]
 8003f24: 65b8         	str	r0, [r7, #0x58]
 8003f26: 6d38         	ldr	r0, [r7, #0x50]
 8003f28: 65f8         	str	r0, [r7, #0x5c]
 8003f2a: 6d78         	ldr	r0, [r7, #0x54]
 8003f2c: 6638         	str	r0, [r7, #0x60]
 8003f2e: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003f32: f002 fa6d    	bl	0x8006410 <firmware_image+0x6410> @ imm = #0x24da
 8003f36: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003f3a: f8c9 6014    	str.w	r6, [r9, #0x14]
 8003f3e: e6b7         	b	0x8003cb0 <firmware_image+0x3cb0> @ imm = #-0x292
 8003f40: f8c9 6010    	str.w	r6, [r9, #0x10]
 8003f44: e6b4         	b	0x8003cb0 <firmware_image+0x3cb0> @ imm = #-0x298
 8003f46: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003f4a: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003f4e: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 8003f52: 2800         	cmp	r0, #0x0
 8003f54: da09         	bge	0x8003f6a <firmware_image+0x3f6a> @ imm = #0x12
 8003f56: 7ab8         	ldrb	r0, [r7, #0xa]
 8003f58: 2864         	cmp	r0, #0x64
 8003f5a: d201         	bhs	0x8003f60 <firmware_image+0x3f60> @ imm = #0x2
 8003f5c: 1c40         	adds	r0, r0, #0x1
 8003f5e: 72b8         	strb	r0, [r7, #0xa]
 8003f60: 7ab8         	ldrb	r0, [r7, #0xa]
 8003f62: 2814         	cmp	r0, #0x14
 8003f64: d902         	bls	0x8003f6c <firmware_image+0x3f6c> @ imm = #0x4
 8003f66: 723e         	strb	r6, [r7, #0x8]
 8003f68: 7978         	ldrb	r0, [r7, #0x5]
 8003f6a: 2801         	cmp	r0, #0x1
 8003f6c: d00e         	beq	0x8003f8c <firmware_image+0x3f8c> @ imm = #0x1c
 8003f6e: 79b8         	ldrb	r0, [r7, #0x6]
 8003f70: 2801         	cmp	r0, #0x1
 8003f72: d00b         	beq	0x8003f8c <firmware_image+0x3f8c> @ imm = #0x16
 8003f74: 79f8         	ldrb	r0, [r7, #0x7]
 8003f76: 2801         	cmp	r0, #0x1
 8003f78: d008         	beq	0x8003f8c <firmware_image+0x3f8c> @ imm = #0x10
 8003f7a: 8cf8         	ldrh	r0, [r7, #0x26]
 8003f7c: b1a0         	cbz	r0, 0x8003fa8 <firmware_image+0x3fa8> @ imm = #0x28
 8003f7e: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003f82: 4558         	cmp	r0, r11
 8003f84: dd0d         	ble	0x8003fa2 <firmware_image+0x3fa2> @ imm = #0x1a
 8003f86: f8c9 b02c    	str.w	r11, [r9, #0x2c]
 8003f8a: e00d         	b	0x8003fa8 <firmware_image+0x3fa8> @ imm = #0x1a
 8003f8c: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003f90: 280a         	cmp	r0, #0xa
 8003f92: dd03         	ble	0x8003f9c <firmware_image+0x3f9c> @ imm = #0x6
 8003f94: 380a         	subs	r0, #0xa
 8003f96: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003f9a: e005         	b	0x8003fa8 <firmware_image+0x3fa8> @ imm = #0xa
 8003f9c: f8c9 602c    	str.w	r6, [r9, #0x2c]
 8003fa0: e002         	b	0x8003fa8 <firmware_image+0x3fa8> @ imm = #0x4
 8003fa2: 30c8         	adds	r0, #0xc8
 8003fa4: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003fa8: 4840         	ldr	r0, [pc, #0x100]        @ 0x80040ac <firmware_image+0x40ac>
 8003faa: 4c41         	ldr	r4, [pc, #0x104]        @ 0x80040b0 <firmware_image+0x40b0>
 8003fac: 7800         	ldrb	r0, [r0]
 8003fae: 7824         	ldrb	r4, [r4]
 8003fb0: 4320         	orrs	r0, r4
 8003fb2: d011         	beq	0x8003fd8 <firmware_image+0x3fd8> @ imm = #0x22
 8003fb4: f8c9 6014    	str.w	r6, [r9, #0x14]
 8003fb8: 4835         	ldr	r0, [pc, #0xd4]         @ 0x8004090 <firmware_image+0x4090>
 8003fba: 7800         	ldrb	r0, [r0]
 8003fbc: 2801         	cmp	r0, #0x1
 8003fbe: d003         	beq	0x8003fc8 <firmware_image+0x3fc8> @ imm = #0x6
 8003fc0: 4832         	ldr	r0, [pc, #0xc8]         @ 0x800408c <firmware_image+0x408c>
 8003fc2: 7800         	ldrb	r0, [r0]
 8003fc4: 2800         	cmp	r0, #0x0
 8003fc6: d0b8         	beq	0x8003f3a <firmware_image+0x3f3a> @ imm = #-0x90
 8003fc8: f88a 6000    	strb.w	r6, [r10]
 8003fcc: 723e         	strb	r6, [r7, #0x8]
 8003fce: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003fd2: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003fd6: e669         	b	0x8003cac <firmware_image+0x3cac> @ imm = #-0x32e
 8003fd8: f8d9 0014    	ldr.w	r0, [r9, #0x14]
 8003fdc: f648 24ce    	movw	r4, #0x8ace
 8003fe0: 42a0         	cmp	r0, r4
 8003fe2: d202         	bhs	0x8003fea <firmware_image+0x3fea> @ imm = #0x4
 8003fe4: 1c40         	adds	r0, r0, #0x1
 8003fe6: f8c9 a010    	str.w	r10, [r9, #0x10]
 8003fea: f8d4 b014    	ldr.w	r11, [r4, #0x14]
 8003fee: 69a0         	ldr	r0, [r4, #0x18]
 8003ff0: 9003         	str	r0, [sp, #0xc]
 8003ff2: 69e0         	ldr	r0, [r4, #0x1c]
 8003ff4: 4649         	mov	r1, r9
 8003ff6: 4681         	mov	r9, r0
 8003ff8: f7fd f918    	bl	0x800122c <firmware_image+0x122c> @ imm = #-0x2dd0
 8003ffc: 9905         	ldr	r1, [sp, #0x14]
 8003ffe: f7fd 0014    	<unknown>
 8004002: f8d9 0014    	ldr.w	r0, [r9, #0x14]
 8004006: 280a         	cmp	r0, #0xa
 8004008: d9e2         	bls	0x8003fd0 <firmware_image+0x3fd0> @ imm = #-0x3c
 800400a: 8cf8         	ldrh	r0, [r7, #0x26]
 800400c: b150         	cbz	r0, 0x8004024 <firmware_image+0x4024> @ imm = #0x14
 800400e: 7239         	strb	r1, [r7, #0x8]
 8004010: f8c9 600c    	str.w	r6, [r9, #0xc]
 8004014: f8c9 6010    	str.w	r6, [r9, #0x10]
 8004018: f8c8 2000    	str.w	r2, [r8]
 800401c: 65bb         	str	r3, [r7, #0x58]
 800401e: 65fd         	str	r5, [r7, #0x5c]
 8004020: 663e         	str	r6, [r7, #0x60]
 8004022: e00c         	b	0x800403e <firmware_image+0x403e> @ imm = #0x18
 8004024: 723e         	strb	r6, [r7, #0x8]
 8004026: f8c9 600c    	str.w	r6, [r9, #0xc]
 800402a: f8c9 6010    	str.w	r6, [r9, #0x10]
 800402e: 6cb8         	ldr	r0, [r7, #0x48]
 8004030: f8c8 0000    	str.w	r0, [r8]
 8004034: 6cf8         	ldr	r0, [r7, #0x4c]
 8004036: 65b8         	str	r0, [r7, #0x58]
 8004038: 6d38         	ldr	r0, [r7, #0x50]
 800403a: 65f8         	str	r0, [r7, #0x5c]
 800403c: 663e         	str	r6, [r7, #0x60]
 800403e: f8c9 b02c    	str.w	r11, [r9, #0x2c]
 8004042: e7c5         	b	0x8003fd0 <firmware_image+0x3fd0> @ imm = #-0x76
 8004044: 4240         	rsbs	r0, r0, #0
 8004046: 4281         	cmp	r1, r0
 8004048: da01         	bge	0x800404e <firmware_image+0x404e> @ imm = #0x2
 800404a: f8c9 0044    	str.w	r0, [r9, #0x44]
 800404e: f8b9 0044    	ldrh.w	r0, [r9, #0x44]
 8004052: 491e         	ldr	r1, [pc, #0x78]         @ 0x80040cc <firmware_image+0x40cc>
 8004054: b200         	sxth	r0, r0
 8004056: 8008         	strh	r0, [r1]
 8004058: 491d         	ldr	r1, [pc, #0x74]         @ 0x80040d0 <firmware_image+0x40d0>
 800405a: f9b1 1000    	ldrsh.w	r1, [r1]
 800405e: f8a7 1044    	strh.w	r1, [r7, #0x44]
 8004062: 1a40         	subs	r0, r0, r1
 8004064: 17c1         	asrs	r1, r0, #0x1f
 8004066: eb00 6091    	add.w	r0, r0, r1, lsr #26
 800406a: 1180         	asrs	r0, r0, #0x6
 800406c: f8a7 0046    	strh.w	r0, [r7, #0x46]
 8004070: 4818         	ldr	r0, [pc, #0x60]         @ 0x80040d4 <firmware_image+0x40d4>
 8004072: 6800         	ldr	r0, [r0]
 8004074: f5b0 7f16    	cmp.w	r0, #0x258
 8004078: dd3a         	ble	0x80040f0 <firmware_image+0x40f0> @ imm = #0x74
 800407a: f9b7 003e    	ldrsh.w	r0, [r7, #0x3e]
 800407e: f110 0fc8    	cmn.w	r0, #0xc8
 8004082: e029         	b	0x80040d8 <firmware_image+0x40d8> @ imm = #0x52
 8004084: 0064         	lsls	r4, r4, #0x1
 8004086: 2000         	movs	r0, #0x0
 8004088: 01f8         	lsls	r0, r7, #0x7
 800408a: 2000         	movs	r0, #0x0
 800408c: 023a         	lsls	r2, r7, #0x8
 800408e: 2000         	movs	r0, #0x0
 8004090: 0060         	lsls	r0, r4, #0x1
 8004092: 2000         	movs	r0, #0x0
 8004094: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
 8004096: 3f4c         	subs	r7, #0x4c
 8004098: 0152         	lsls	r2, r2, #0x5
 800409a: 2000         	movs	r0, #0x0
 800409c: 0000         	movs	r0, r0
 800409e: 42c8         	cmn	r0, r1
 80040a0: 01c8         	lsls	r0, r1, #0x7
 80040a2: 2000         	movs	r0, #0x0
 80040a4: 0198         	lsls	r0, r3, #0x6
 80040a6: 2000         	movs	r0, #0x0
 80040a8: 0167         	lsls	r7, r4, #0x5
 80040aa: 2000         	movs	r0, #0x0
 80040ac: 0196         	lsls	r6, r2, #0x6
 80040ae: 2000         	movs	r0, #0x0
 80040b0: 0195         	lsls	r5, r2, #0x6
 80040b2: 2000         	movs	r0, #0x0
 80040b4: 0141         	lsls	r1, r0, #0x5
 80040b6: 2000         	movs	r0, #0x0
 80040b8: 0000         	movs	r0, r0
 80040ba: 4040         	eors	r0, r0
 80040bc: 8800         	ldrh	r0, [r0]
 80040be: 40c3         	lsrs	r3, r0
 80040c0: 90ac         	str	r0, [sp, #0x2b0]
 80040c2: ffff 0142    	<unknown>
 80040c6: 2000         	movs	r0, #0x0
 80040c8: 0143         	lsls	r3, r0, #0x5
 80040ca: 2000         	movs	r0, #0x0
 80040cc: 023e         	lsls	r6, r7, #0x8
 80040ce: 2000         	movs	r0, #0x0
 80040d0: 0258         	lsls	r0, r3, #0x9
 80040d2: 2000         	movs	r0, #0x0
 80040d4: 0244         	lsls	r4, r0, #0x9
 80040d6: 2000         	movs	r0, #0x0
 80040d8: dc03         	bgt	0x80040e2 <firmware_image+0x40e2> @ imm = #0x6
 80040da: f9b7 003e    	ldrsh.w	r0, [r7, #0x3e]
 80040de: 28c8         	cmp	r0, #0xc8
 80040e0: da06         	bge	0x80040f0 <firmware_image+0x40f0> @ imm = #0xc
 80040e2: 8e38         	ldrh	r0, [r7, #0x30]
 80040e4: f5b0 7f7a    	cmp.w	r0, #0x3e8
 80040e8: d206         	bhs	0x80040f8 <firmware_image+0x40f8> @ imm = #0xc
 80040ea: 1cc0         	adds	r0, r0, #0x3
 80040ec: 8638         	strh	r0, [r7, #0x30]
 80040ee: e003         	b	0x80040f8 <firmware_image+0x40f8> @ imm = #0x6
 80040f0: 8e38         	ldrh	r0, [r7, #0x30]
 80040f2: b108         	cbz	r0, 0x80040f8 <firmware_image+0x40f8> @ imm = #0x2
 80040f4: 1e40         	subs	r0, r0, #0x1
 80040f6: 8638         	strh	r0, [r7, #0x30]
 80040f8: 8e38         	ldrh	r0, [r7, #0x30]
 80040fa: f240 31de    	movw	r1, #0x3de
 80040fe: 4288         	cmp	r0, r1
 8004100: d906         	bls	0x8004110 <firmware_image+0x4110> @ imm = #0xc
 8004102: 2001         	movs	r0, #0x1
 8004104: 71f8         	strb	r0, [r7, #0x7]
 8004106: 4904         	ldr	r1, [pc, #0x10]         @ 0x8004118 <firmware_image+0x4118>
 8004108: 200a         	movs	r0, #0xa
 800410a: 7008         	strb	r0, [r1]
 800410c: e8bd 9ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
 8004110: 280a         	cmp	r0, #0xa
 8004112: d2fb         	bhs	0x800410c <firmware_image+0x410c> @ imm = #-0xa
 8004114: 71fe         	strb	r6, [r7, #0x7]
 8004116: e7f9         	b	0x800410c <firmware_image+0x410c> @ imm = #-0xe
 8004118: 021f         	lsls	r7, r3, #0x8
 800411a: 2000         	movs	r0, #0x0
 800411c: b57c         	push	{r2, r3, r4, r5, r6, lr}
 800411e: 2101         	movs	r1, #0x1
 8004120: 0488         	lsls	r0, r1, #0x12
 8004122: f000 f917    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x22e
 8004126: f44f 5480    	mov.w	r4, #0x1000
 800412a: 9400         	str	r4, [sp]
 800412c: 2001         	movs	r0, #0x1
 800412e: f88d 0004    	strb.w	r0, [sp, #0x4]
 8004132: 2003         	movs	r0, #0x3
 8004134: 2000         	movs	r0, #0x0
 8004136: f88d 0006    	strb.w	r0, [sp, #0x6]
 800413a: 4d05         	ldr	r5, [pc, #0x14]         @ 0x8004150 <firmware_image+0x4150>
 800413c: 4669         	mov	r1, sp
 800413e: 4628         	mov	r0, r5
 8004140: f7fe faba    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0x1a8c
 8004144: 4621         	mov	r1, r4
 8004146: 4628         	mov	r0, r5
 8004148: f7fe fb0b    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x19ea
 800414c: bd7c         	pop	{r2, r3, r4, r5, r6, pc}
 800414e: 0000         	movs	r0, r0
 8004150: 0400         	lsls	r0, r0, #0x10
 8004152: 4800         	ldr	r0, [pc, #0x0]          @ 0x8004154 <firmware_image+0x4154>
 8004154: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8004158: 4e3e         	ldr	r6, [pc, #0xf8]         @ 0x8004254 <firmware_image+0x4254>
 800415a: f106 0780    	add.w	r7, r6, #0x80
 800415e: 6df0         	ldr	r0, [r6, #0x5c]
 8004160: 69f9         	ldr	r1, [r7, #0x1c]
 8004162: 4348         	muls	r0, r1, r0
 8004164: f7fc fa79    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x3b0e
 8004168: 2200         	movs	r2, #0x0
 800416a: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x8004258 <firmware_image+0x4258>
 800416c: f7fc f9fd    	bl	0x800056a <firmware_image+0x56a> @ imm = #-0x3c06
 8004170: 4604         	mov	r4, r0
 8004172: 460d         	mov	r5, r1
 8004174: f9b6 1036    	ldrsh.w	r1, [r6, #0x36]
 8004178: 6db0         	ldr	r0, [r6, #0x58]
 800417a: 4348         	muls	r0, r1, r0
 800417c: f7fc fa6d    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x3b26
 8004180: f8df 80d8    	ldr.w	r8, [pc, #0xd8]         @ 0x800425c <firmware_image+0x425c>
 8004184: 2200         	movs	r2, #0x0
 8004186: 4643         	mov	r3, r8
 8004188: f7fc f9ef    	bl	0x800056a <firmware_image+0x56a> @ imm = #-0x3c22
 800418c: 4622         	mov	r2, r4
 800418e: 462b         	mov	r3, r5
 8004190: f7fc f8d2    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x3e5c
 8004194: f7fc fa8b    	bl	0x80006ae <firmware_image+0x6ae> @ imm = #-0x3aea
 8004198: 67b0         	str	r0, [r6, #0x78]
 800419a: 6e30         	ldr	r0, [r6, #0x60]
 800419c: f7fc fa54    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0x3b58
 80041a0: 6bb9         	ldr	r1, [r7, #0x38]
 80041a2: f7fc f84d    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x3f66
 80041a6: f7fc faa1    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x3abe
 80041aa: 2200         	movs	r2, #0x0
 80041ac: 4643         	mov	r3, r8
 80041ae: f7fc f9dc    	bl	0x800056a <firmware_image+0x56a> @ imm = #-0x3c48
 80041b2: f7fc fa7c    	bl	0x80006ae <firmware_image+0x6ae> @ imm = #-0x3b08
 80041b6: 67f0         	str	r0, [r6, #0x7c]
 80041b8: f247 7209    	movw	r2, #0x7709
 80041bc: 4251         	rsbs	r1, r2, #0
 80041be: 1f38         	subs	r0, r7, #0x4
 80041c0: f7fd fda6    	bl	0x8001d10 <firmware_image+0x1d10> @ imm = #-0x24b4
 80041c4: e9d6 011e    	ldrd	r0, r1, [r6, #120]
 80041c8: 4408         	add	r0, r1
 80041ca: 6ef1         	ldr	r1, [r6, #0x6c]
 80041cc: 1a40         	subs	r0, r0, r1
 80041ce: f640 713c    	movw	r1, #0xf3c
 80041d2: 4348         	muls	r0, r1, r0
 80041d4: f9b6 1020    	ldrsh.w	r1, [r6, #0x20]
 80041d8: fb90 f0f1    	sdiv	r0, r0, r1
 80041dc: 6038         	str	r0, [r7]
 80041de: f646 7454    	movw	r4, #0x6f54
 80041e2: 4265         	rsbs	r5, r4, #0
 80041e4: 4622         	mov	r2, r4
 80041e6: 4629         	mov	r1, r5
 80041e8: 4638         	mov	r0, r7
 80041ea: f7fd fd91    	bl	0x8001d10 <firmware_image+0x1d10> @ imm = #-0x24de
 80041ee: 6838         	ldr	r0, [r7]
 80041f0: 62b8         	str	r0, [r7, #0x28]
 80041f2: f9b6 0020    	ldrsh.w	r0, [r6, #0x20]
 80041f6: f640 5148    	movw	r1, #0xd48
 80041fa: 4288         	cmp	r0, r1
 80041fc: da03         	bge	0x8004206 <firmware_image+0x4206> @ imm = #0x6
 80041fe: f44f 7016    	mov.w	r0, #0x258
 8004202: 8570         	strh	r0, [r6, #0x2a]
 8004204: e002         	b	0x800420c <firmware_image+0x420c> @ imm = #0x4
 8004206: f44f 6096    	mov.w	r0, #0x4b0
 800420a: 8570         	strh	r0, [r6, #0x2a]
 800420c: 4811         	ldr	r0, [pc, #0x44]         @ 0x8004254 <firmware_image+0x4254>
 800420e: 4622         	mov	r2, r4
 8004210: 4629         	mov	r1, r5
 8004212: 30a8         	adds	r0, #0xa8
 8004214: f7fd fd7c    	bl	0x8001d10 <firmware_image+0x1d10> @ imm = #-0x2508
 8004218: 6ab8         	ldr	r0, [r7, #0x28]
 800421a: f7fc fa1e    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x3bc4
 800421e: 4a10         	ldr	r2, [pc, #0x40]         @ 0x8004260 <firmware_image+0x4260>
 8004220: 4b10         	ldr	r3, [pc, #0x40]         @ 0x8004264 <firmware_image+0x4264>
 8004222: f7fc f930    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x3da0
 8004226: 4604         	mov	r4, r0
 8004228: 460d         	mov	r5, r1
 800422a: 6c38         	ldr	r0, [r7, #0x40]
 800422c: f7fc fa5e    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x3b44
 8004230: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x8004268 <firmware_image+0x4268>
 8004232: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x800426c <firmware_image+0x426c>
 8004234: f7fc f927    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x3db2
 8004238: 4622         	mov	r2, r4
 800423a: 462b         	mov	r3, r5
 800423c: f7fc f87c    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x3f08
 8004240: f7fc fa80    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x3b00
 8004244: 6438         	str	r0, [r7, #0x40]
 8004246: f7fc fa19    	bl	0x800067c <firmware_image+0x67c> @ imm = #-0x3bce
 800424a: b200         	sxth	r0, r0
 800424c: 6278         	str	r0, [r7, #0x24]
 800424e: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8004252: 0000         	movs	r0, r0
 8004254: 0064         	lsls	r4, r4, #0x1
 8004256: 2000         	movs	r0, #0x0
 8004258: 8800         	ldrh	r0, [r0]
 800425a: 40c3         	lsrs	r3, r0
 800425c: 0000         	movs	r0, r0
 800425e: 4059         	eors	r1, r3
 8004260: 47ae         	<unknown>
 8004262: 7ae1         	ldrb	r1, [r4, #0xb]
 8004264: ae14         	add	r6, sp, #0x50
 8004266: 3fef         	subs	r7, #0xef
 8004268: 147b         	asrs	r3, r7, #0x11
 800426a: 47ae         	<unknown>
 800426c: 7ae1         	ldrb	r1, [r4, #0xb]
 800426e: 3f84         	subs	r7, #0x84
 8004270: b5f3         	push	{r0, r1, r4, r5, r6, r7, lr}
 8004272: b082         	sub	sp, #0x8
 8004274: 4608         	mov	r0, r1
 8004276: f001 fcc1    	bl	0x8005bfc <firmware_image+0x5bfc> @ imm = #0x1982
 800427a: 9000         	str	r0, [sp]
 800427c: f9bd 1008    	ldrsh.w	r1, [sp, #0x8]
 8004280: f9bd 3000    	ldrsh.w	r3, [sp]
 8004284: fb01 f003    	mul	r0, r1, r3
 8004288: f9bd 200a    	ldrsh.w	r2, [sp, #0xa]
 800428c: f9bd 4002    	ldrsh.w	r4, [sp, #0x2]
 8004290: fb02 f504    	mul	r5, r2, r4
 8004294: 1b40         	subs	r0, r0, r5
 8004296: 17c5         	asrs	r5, r0, #0x1f
 8004298: eb00 4055    	add.w	r0, r0, r5, lsr #17
 800429c: 13c0         	asrs	r0, r0, #0xf
 800429e: f647 76ff    	movw	r6, #0x7fff
 80042a2: f44f 4c00    	mov.w	r12, #0x8000
 80042a6: 43f5         	mvns	r5, r6
 80042a8: 4560         	cmp	r0, r12
 80042aa: db01         	blt	0x80042b0 <firmware_image+0x42b0> @ imm = #0x2
 80042ac: 4630         	mov	r0, r6
 80042ae: e004         	b	0x80042ba <firmware_image+0x42ba> @ imm = #0x8
 80042b0: 4628         	mov	r0, r5
 80042b2: e000         	b	0x80042b6 <firmware_image+0x42b6> @ imm = #0x0
 80042b4: b200         	sxth	r0, r0
 80042b6: f8ad 0004    	strh.w	r0, [sp, #0x4]
 80042ba: 4f0e         	ldr	r7, [pc, #0x38]         @ 0x80042f4 <firmware_image+0x42f4>
 80042bc: 42a8         	cmp	r0, r5
 80042be: d101         	bne	0x80042c4 <firmware_image+0x42c4> @ imm = #0x2
 80042c0: f8ad 7004    	strh.w	r7, [sp, #0x4]
 80042c4: 4361         	muls	r1, r4, r1
 80042c6: 435a         	muls	r2, r3, r2
 80042c8: 1888         	adds	r0, r1, r2
 80042ca: 17c1         	asrs	r1, r0, #0x1f
 80042cc: eb00 4051    	add.w	r0, r0, r1, lsr #17
 80042d0: 13c1         	asrs	r1, r0, #0xf
 80042d2: 4561         	cmp	r1, r12
 80042d4: db01         	blt	0x80042da <firmware_image+0x42da> @ imm = #0x2
 80042d6: 4630         	mov	r0, r6
 80042d8: e003         	b	0x80042e2 <firmware_image+0x42e2> @ imm = #0x6
 80042da: 4628         	mov	r0, r5
 80042dc: 4281         	cmp	r1, r0
 80042de: db00         	blt	0x80042e2 <firmware_image+0x42e2> @ imm = #0x0
 80042e0: b208         	sxth	r0, r1
 80042e2: f8ad 0006    	strh.w	r0, [sp, #0x6]
 80042e6: 42a8         	cmp	r0, r5
 80042e8: d101         	bne	0x80042ee <firmware_image+0x42ee> @ imm = #0x2
 80042ea: f8ad 7006    	strh.w	r7, [sp, #0x6]
 80042ee: 9801         	ldr	r0, [sp, #0x4]
 80042f0: b004         	add	sp, #0x10
 80042f2: bdf0         	pop	{r4, r5, r6, r7, pc}
 80042f4: 8001         	strh	r1, [r0]
 80042f6: ffff 4770    	<unknown>
 80042fa: 2100         	movs	r1, #0x0
 80042fc: 7001         	strb	r1, [r0]
 80042fe: 7041         	strb	r1, [r0, #0x1]
 8004300: 7201         	strb	r1, [r0, #0x8]
 8004302: 7241         	strb	r1, [r0, #0x9]
 8004304: 4770         	bx	lr
 8004306: 6041         	str	r1, [r0, #0x4]
 8004308: 7082         	strb	r2, [r0, #0x2]
 800430a: f7ff bff6    	b.w	0x80042fa <firmware_image+0x42fa> @ imm = #-0x14
 800430e: 0000         	movs	r0, r0
 8004310: 4908         	ldr	r1, [pc, #0x20]         @ 0x8004334 <firmware_image+0x4334>
 8004312: 684a         	ldr	r2, [r1, #0x4]
 8004314: f422 4240    	bic	r2, r2, #0xc000
 8004318: 604a         	str	r2, [r1, #0x4]
 800431a: 684a         	ldr	r2, [r1, #0x4]
 800431c: b283         	uxth	r3, r0
 800431e: 431a         	orrs	r2, r3
 8004320: 604a         	str	r2, [r1, #0x4]
 8004322: 6b0a         	ldr	r2, [r1, #0x30]
 8004324: f422 7280    	bic	r2, r2, #0x100
 8004328: 630a         	str	r2, [r1, #0x30]
 800432a: 6b0a         	ldr	r2, [r1, #0x30]
 800432c: ea42 4010    	orr.w	r0, r2, r0, lsr #16
 8004330: 6308         	str	r0, [r1, #0x30]
 8004332: 4770         	bx	lr
 8004334: 1000         	asrs	r0, r0, #0x20
 8004336: 4002         	ands	r2, r0
 8004338: 4a03         	ldr	r2, [pc, #0xc]          @ 0x8004348 <firmware_image+0x4348>
 800433a: 6851         	ldr	r1, [r2, #0x4]
 800433c: f021 01f0    	bic	r1, r1, #0xf0
 8004340: 4301         	orrs	r1, r0
 8004342: 6051         	str	r1, [r2, #0x4]
 8004344: 4770         	bx	lr
 8004346: 0000         	movs	r0, r0
 8004348: 1000         	asrs	r0, r0, #0x20
 800434a: 4002         	ands	r2, r0
 800434c: 4a05         	ldr	r2, [pc, #0x14]         @ 0x8004364 <firmware_image+0x4364>
 800434e: 2900         	cmp	r1, #0x0
 8004350: d003         	beq	0x800435a <firmware_image+0x435a> @ imm = #0x6
 8004352: 6951         	ldr	r1, [r2, #0x14]
 8004354: 4301         	orrs	r1, r0
 8004356: 6151         	str	r1, [r2, #0x14]
 8004358: 4770         	bx	lr
 800435a: 6951         	ldr	r1, [r2, #0x14]
 800435c: 4381         	bics	r1, r0
 800435e: 6151         	str	r1, [r2, #0x14]
 8004360: 4770         	bx	lr
 8004362: 0000         	movs	r0, r0
 8004364: 1000         	asrs	r0, r0, #0x20
 8004366: 4002         	ands	r2, r0
 8004368: 4a03         	ldr	r2, [pc, #0xc]          @ 0x8004378 <firmware_image+0x4378>
 800436a: 6851         	ldr	r1, [r2, #0x4]
 800436c: f421 61e0    	bic	r1, r1, #0x700
 8004370: 4301         	orrs	r1, r0
 8004372: 6051         	str	r1, [r2, #0x4]
 8004374: 4770         	bx	lr
 8004376: 0000         	movs	r0, r0
 8004378: 1000         	asrs	r0, r0, #0x20
 800437a: 4002         	ands	r2, r0
 800437c: 4a05         	ldr	r2, [pc, #0x14]         @ 0x8004394 <firmware_image+0x4394>
 800437e: 2900         	cmp	r1, #0x0
 8004380: d003         	beq	0x800438a <firmware_image+0x438a> @ imm = #0x6
 8004382: 69d1         	ldr	r1, [r2, #0x1c]
 8004384: 4301         	orrs	r1, r0
 8004386: 61d1         	str	r1, [r2, #0x1c]
 8004388: 4770         	bx	lr
 800438a: 69d1         	ldr	r1, [r2, #0x1c]
 800438c: 4381         	bics	r1, r0
 800438e: 61d1         	str	r1, [r2, #0x1c]
 8004390: 4770         	bx	lr
 8004392: 0000         	movs	r0, r0
 8004394: 1000         	asrs	r0, r0, #0x20
 8004396: 4002         	ands	r2, r0
 8004398: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80043b0 <firmware_image+0x43b0>
 800439a: 2900         	cmp	r1, #0x0
 800439c: d003         	beq	0x80043a6 <firmware_image+0x43a6> @ imm = #0x6
 800439e: 6911         	ldr	r1, [r2, #0x10]
 80043a0: 4301         	orrs	r1, r0
 80043a2: 6111         	str	r1, [r2, #0x10]
 80043a4: 4770         	bx	lr
 80043a6: 6911         	ldr	r1, [r2, #0x10]
 80043a8: 4381         	bics	r1, r0
 80043aa: 6111         	str	r1, [r2, #0x10]
 80043ac: 4770         	bx	lr
 80043ae: 0000         	movs	r0, r0
 80043b0: 1000         	asrs	r0, r0, #0x20
 80043b2: 4002         	ands	r2, r0
 80043b4: 4a03         	ldr	r2, [pc, #0xc]          @ 0x80043c4 <firmware_image+0x43c4>
 80043b6: 6851         	ldr	r1, [r2, #0x4]
 80043b8: f421 5160    	bic	r1, r1, #0x3800
 80043bc: 4301         	orrs	r1, r0
 80043be: 6051         	str	r1, [r2, #0x4]
 80043c0: 4770         	bx	lr
 80043c2: 0000         	movs	r0, r0
 80043c4: 1000         	asrs	r0, r0, #0x20
 80043c6: 4002         	ands	r2, r0
 80043c8: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80043e0 <firmware_image+0x43e0>
 80043ca: 2900         	cmp	r1, #0x0
 80043cc: d003         	beq	0x80043d6 <firmware_image+0x43d6> @ imm = #0x6
 80043ce: 6991         	ldr	r1, [r2, #0x18]
 80043d0: 4301         	orrs	r1, r0
 80043d2: 6191         	str	r1, [r2, #0x18]
 80043d4: 4770         	bx	lr
 80043d6: 6991         	ldr	r1, [r2, #0x18]
 80043d8: 4381         	bics	r1, r0
 80043da: 6191         	str	r1, [r2, #0x18]
 80043dc: 4770         	bx	lr
 80043de: 0000         	movs	r0, r0
 80043e0: 1000         	asrs	r0, r0, #0x20
 80043e2: 4002         	ands	r2, r0
 80043e4: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80043fc <firmware_image+0x43fc>
 80043e6: 2900         	cmp	r1, #0x0
 80043e8: d003         	beq	0x80043f2 <firmware_image+0x43f2> @ imm = #0x6
 80043ea: 68d1         	ldr	r1, [r2, #0xc]
 80043ec: 4301         	orrs	r1, r0
 80043ee: 60d1         	str	r1, [r2, #0xc]
 80043f0: 4770         	bx	lr
 80043f2: 68d1         	ldr	r1, [r2, #0xc]
 80043f4: 4381         	bics	r1, r0
 80043f6: 60d1         	str	r1, [r2, #0xc]
 80043f8: 4770         	bx	lr
 80043fa: 0000         	movs	r0, r0
 80043fc: 1000         	asrs	r0, r0, #0x20
 80043fe: 4002         	ands	r2, r0
 8004400: 4770         	bx	lr
 8004402: 0000         	movs	r0, r0
 8004404: 1000         	asrs	r0, r0, #0x20
 8004406: 4002         	ands	r2, r0
 8004408: 4a03         	ldr	r2, [pc, #0xc]          @ 0x8004418 <firmware_image+0x4418>
 800440a: 6851         	ldr	r1, [r2, #0x4]
 800440c: f021 0103    	bic	r1, r1, #0x3
 8004410: 4301         	orrs	r1, r0
 8004412: 6051         	str	r1, [r2, #0x4]
 8004414: 4770         	bx	lr
 8004416: 0000         	movs	r0, r0
 8004418: 1000         	asrs	r0, r0, #0x20
 800441a: 4002         	ands	r2, r0
 800441c: b510         	push	{r4, lr}
 800441e: f000 f829    	bl	0x8004474 <firmware_image+0x4474> @ imm = #0x52
 8004422: 2001         	movs	r0, #0x1
 8004424: f000 f910    	bl	0x8004648 <firmware_image+0x4648> @ imm = #0x220
 8004428: 2001         	movs	r0, #0x1
 800442a: f000 f851    	bl	0x80044d0 <firmware_image+0x44d0> @ imm = #0xa2
 800442e: 2800         	cmp	r0, #0x0
 8004430: d0fa         	beq	0x8004428 <firmware_image+0x4428> @ imm = #-0xc
 8004432: 2000         	movs	r0, #0x0
 8004434: f7ff ff84    	bl	0x8004340 <firmware_image+0x4340> @ imm = #-0xf8
 8004438: 2000         	movs	r0, #0x0
 800443a: f7ff ffbf    	bl	0x80043bc <firmware_image+0x43bc> @ imm = #-0x82
 800443e: f44f 6080    	mov.w	r0, #0x400
 8004442: f7ff ff95    	bl	0x8004370 <firmware_image+0x4370> @ imm = #-0xd6
 8004446: 490a         	ldr	r1, [pc, #0x28]         @ 0x8004470 <firmware_image+0x4470>
 8004448: 2000         	movs	r0, #0x0
 800444a: f000 f90d    	bl	0x8004668 <firmware_image+0x4668> @ imm = #0x21a
 800444e: 2001         	movs	r0, #0x1
 8004450: f000 f91a    	bl	0x8004688 <firmware_image+0x4688> @ imm = #0x234
 8004454: 2019         	movs	r0, #0x19
 8004456: f000 f83b    	bl	0x80044d0 <firmware_image+0x44d0> @ imm = #0x76
 800445a: 2800         	cmp	r0, #0x0
 800445c: d0fa         	beq	0x8004454 <firmware_image+0x4454> @ imm = #-0xc
 800445e: 2002         	movs	r0, #0x2
 8004460: f7ff ffd2    	bl	0x8004408 <firmware_image+0x4408> @ imm = #-0x5c
 8004464: f000 f850    	bl	0x8004508 <firmware_image+0x4508> @ imm = #0xa0
 8004468: 2808         	cmp	r0, #0x8
 800446a: d1fb         	bne	0x8004464 <firmware_image+0x4464> @ imm = #-0xa
 800446c: bd10         	pop	{r4, pc}
 800446e: 0000         	movs	r0, r0
 8004470: 0000         	movs	r0, r0
 8004472: 0804         	lsrs	r4, r0, #0x20
 8004474: 4812         	ldr	r0, [pc, #0x48]         @ 0x80044c0 <firmware_image+0x44c0>
 8004476: 6801         	ldr	r1, [r0]
 8004478: f041 0101    	orr	r1, r1, #0x1
 800447c: 6001         	str	r1, [r0]
 800447e: 6841         	ldr	r1, [r0, #0x4]
 8004480: 4a10         	ldr	r2, [pc, #0x40]         @ 0x80044c4 <firmware_image+0x44c4>
 8004482: 4011         	ands	r1, r2
 8004484: 6041         	str	r1, [r0, #0x4]
 8004486: 6801         	ldr	r1, [r0]
 8004488: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x80044c8 <firmware_image+0x44c8>
 800448a: 4011         	ands	r1, r2
 800448c: 6001         	str	r1, [r0]
 800448e: 6801         	ldr	r1, [r0]
 8004490: f421 2180    	bic	r1, r1, #0x40000
 8004494: 6001         	str	r1, [r0]
 8004496: 6841         	ldr	r1, [r0, #0x4]
 8004498: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x80044cc <firmware_image+0x44cc>
 800449a: 4011         	ands	r1, r2
 800449c: 6041         	str	r1, [r0, #0x4]
 800449e: 6ac1         	ldr	r1, [r0, #0x2c]
 80044a0: f021 010f    	bic	r1, r1, #0xf
 80044a4: 62c1         	str	r1, [r0, #0x2c]
 80044a6: 6b01         	ldr	r1, [r0, #0x30]
 80044a8: f240 1243    	movw	r2, #0x143
 80044ac: 4391         	bics	r1, r2
 80044ae: 6301         	str	r1, [r0, #0x30]
 80044b0: 6b41         	ldr	r1, [r0, #0x34]
 80044b2: f021 0101    	bic	r1, r1, #0x1
 80044b6: 6341         	str	r1, [r0, #0x34]
 80044b8: 2100         	movs	r1, #0x0
 80044ba: 6081         	str	r1, [r0, #0x8]
 80044bc: 4770         	bx	lr
 80044be: 0000         	movs	r0, r0
 80044c0: 1000         	asrs	r0, r0, #0x20
 80044c2: 4002         	ands	r2, r0
 80044c4: 000c         	movs	r4, r1
 80044c6: 083f         	lsrs	r7, r7, #0x20
 80044c8: ffff fef6    	<unknown>
 80044cc: ffff f7c0    	<unknown>
 80044d0: 0941         	lsrs	r1, r0, #0x5
 80044d2: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x8004504 <firmware_image+0x4504>
 80044d4: 2900         	cmp	r1, #0x0
 80044d6: d00c         	beq	0x80044f2 <firmware_image+0x44f2> @ imm = #0x18
 80044d8: 2901         	cmp	r1, #0x1
 80044da: d00c         	beq	0x80044f6 <firmware_image+0x44f6> @ imm = #0x18
 80044dc: 2902         	cmp	r1, #0x2
 80044de: d00c         	beq	0x80044fa <firmware_image+0x44fa> @ imm = #0x18
 80044e0: 6b51         	ldr	r1, [r2, #0x34]
 80044e2: f000 001f    	and	r0, r0, #0x1f
 80044e6: 2201         	movs	r2, #0x1
 80044e8: 4082         	lsls	r2, r0
 80044ea: 420a         	tst	r2, r1
 80044ec: d007         	beq	0x80044fe <firmware_image+0x44fe> @ imm = #0xe
 80044ee: 2001         	movs	r0, #0x1
 80044f0: 4770         	bx	lr
 80044f2: 6811         	ldr	r1, [r2]
 80044f4: e7f5         	b	0x80044e2 <firmware_image+0x44e2> @ imm = #-0x16
 80044f6: 6a11         	ldr	r1, [r2, #0x20]
 80044f8: e7f3         	b	0x80044e2 <firmware_image+0x44e2> @ imm = #-0x1a
 80044fa: 6a51         	ldr	r1, [r2, #0x24]
 80044fc: e7f1         	b	0x80044e2 <firmware_image+0x44e2> @ imm = #-0x1e
 80044fe: 2000         	movs	r0, #0x0
 8004500: 4770         	bx	lr
 8004502: 0000         	movs	r0, r0
 8004504: 1000         	asrs	r0, r0, #0x20
 8004506: 4002         	ands	r2, r0
 8004508: 4802         	ldr	r0, [pc, #0x8]          @ 0x8004514 <firmware_image+0x4514>
 800450a: 6840         	ldr	r0, [r0, #0x4]
 800450c: f000 000c    	and	r0, r0, #0xc
 8004510: 4770         	bx	lr
 8004512: 0000         	movs	r0, r0
 8004514: 1000         	asrs	r0, r0, #0x20
 8004516: 4002         	ands	r2, r0
 8004518: b570         	push	{r4, r5, r6, lr}
 800451a: 4c46         	ldr	r4, [pc, #0x118]        @ 0x8004634 <firmware_image+0x4634>
 800451c: 6861         	ldr	r1, [r4, #0x4]
 800451e: f001 010c    	and	r1, r1, #0xc
 8004522: 4b45         	ldr	r3, [pc, #0x114]        @ 0x8004638 <firmware_image+0x4638>
 8004524: 2900         	cmp	r1, #0x0
 8004526: d025         	beq	0x8004574 <firmware_image+0x4574> @ imm = #0x4a
 8004528: 2904         	cmp	r1, #0x4
 800452a: d025         	beq	0x8004578 <firmware_image+0x4578> @ imm = #0x4a
 800452c: 2908         	cmp	r1, #0x8
 800452e: d025         	beq	0x800457c <firmware_image+0x457c> @ imm = #0x4a
 8004530: 6003         	str	r3, [r0]
 8004532: 6861         	ldr	r1, [r4, #0x4]
 8004534: f001 01f0    	and	r1, r1, #0xf0
 8004538: 0909         	lsrs	r1, r1, #0x4
 800453a: 4a40         	ldr	r2, [pc, #0x100]        @ 0x800463c <firmware_image+0x463c>
 800453c: 5c52         	ldrb	r2, [r2, r1]
 800453e: 6801         	ldr	r1, [r0]
 8004540: 460d         	mov	r5, r1
 8004542: 40d1         	lsrs	r1, r2
 8004544: 6041         	str	r1, [r0, #0x4]
 8004546: 6862         	ldr	r2, [r4, #0x4]
 8004548: f402 62e0    	and	r2, r2, #0x700
 800454c: 0a12         	lsrs	r2, r2, #0x8
 800454e: 4e3b         	ldr	r6, [pc, #0xec]         @ 0x800463c <firmware_image+0x463c>
 8004550: 3e08         	subs	r6, #0x8
 8004552: 5cb2         	ldrb	r2, [r6, r2]
 8004554: fa21 f202    	lsr.w	r2, r1, r2
 8004558: 6082         	str	r2, [r0, #0x8]
 800455a: 6862         	ldr	r2, [r4, #0x4]
 800455c: f402 5260    	and	r2, r2, #0x3800
 8004560: 0ad2         	lsrs	r2, r2, #0xb
 8004562: 5cb2         	ldrb	r2, [r6, r2]
 8004564: 40d1         	lsrs	r1, r2
 8004566: 60c1         	str	r1, [r0, #0xc]
 8004568: 6b22         	ldr	r2, [r4, #0x30]
 800456a: 05d2         	lsls	r2, r2, #0x17
 800456c: d426         	bmi	0x80045bc <firmware_image+0x45bc> @ imm = #0x4c
 800456e: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x8004640 <firmware_image+0x4640>
 8004570: 6102         	str	r2, [r0, #0x10]
 8004572: e03b         	b	0x80045ec <firmware_image+0x45ec> @ imm = #0x76
 8004574: 6003         	str	r3, [r0]
 8004576: e7dc         	b	0x8004532 <firmware_image+0x4532> @ imm = #-0x48
 8004578: 6003         	str	r3, [r0]
 800457a: e7da         	b	0x8004532 <firmware_image+0x4532> @ imm = #-0x4c
 800457c: 6861         	ldr	r1, [r4, #0x4]
 800457e: f401 1270    	and	r2, r1, #0x3c0000
 8004582: 6861         	ldr	r1, [r4, #0x4]
 8004584: f001 6100    	and	r1, r1, #0x8000000
 8004588: 0ec9         	lsrs	r1, r1, #0x1b
 800458a: 0109         	lsls	r1, r1, #0x4
 800458c: eb01 4192    	add.w	r1, r1, r2, lsr #18
 8004590: 290f         	cmp	r1, #0xf
 8004592: d301         	blo	0x8004598 <firmware_image+0x4598> @ imm = #0x2
 8004594: 1c49         	adds	r1, r1, #0x1
 8004596: e000         	b	0x800459a <firmware_image+0x459a> @ imm = #0x0
 8004598: 1c89         	adds	r1, r1, #0x2
 800459a: 6862         	ldr	r2, [r4, #0x4]
 800459c: f402 3280    	and	r2, r2, #0x10000
 80045a0: b142         	cbz	r2, 0x80045b4 <firmware_image+0x45b4> @ imm = #0x10
 80045a2: 6ae2         	ldr	r2, [r4, #0x2c]
 80045a4: f002 020f    	and	r2, r2, #0xf
 80045a8: 1c52         	adds	r2, r2, #0x1
 80045aa: fbb3 f2f2    	udiv	r2, r3, r2
 80045ae: 434a         	muls	r2, r1, r2
 80045b0: 6002         	str	r2, [r0]
 80045b2: e7be         	b	0x8004532 <firmware_image+0x4532> @ imm = #-0x84
 80045b4: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x8004644 <firmware_image+0x4644>
 80045b6: 4351         	muls	r1, r2, r1
 80045b8: 6001         	str	r1, [r0]
 80045ba: e7ba         	b	0x8004532 <firmware_image+0x4532> @ imm = #-0x8c
 80045bc: 6862         	ldr	r2, [r4, #0x4]
 80045be: f3c2 3281    	ubfx	r2, r2, #0xe, #0x2
 80045c2: b132         	cbz	r2, 0x80045d2 <firmware_image+0x45d2> @ imm = #0xc
 80045c4: 2a01         	cmp	r2, #0x1
 80045c6: d007         	beq	0x80045d8 <firmware_image+0x45d8> @ imm = #0xe
 80045c8: 2a02         	cmp	r2, #0x2
 80045ca: d008         	beq	0x80045de <firmware_image+0x45de> @ imm = #0x10
 80045cc: 2a03         	cmp	r2, #0x3
 80045ce: d10d         	bne	0x80045ec <firmware_image+0x45ec> @ imm = #0x1a
 80045d0: e00a         	b	0x80045e8 <firmware_image+0x45e8> @ imm = #0x14
 80045d2: 084a         	lsrs	r2, r1, #0x1
 80045d4: 6102         	str	r2, [r0, #0x10]
 80045d6: e009         	b	0x80045ec <firmware_image+0x45ec> @ imm = #0x12
 80045d8: 088a         	lsrs	r2, r1, #0x2
 80045da: 6102         	str	r2, [r0, #0x10]
 80045dc: e006         	b	0x80045ec <firmware_image+0x45ec> @ imm = #0xc
 80045de: 2206         	movs	r2, #0x6
 80045e0: fbb1 f2f2    	udiv	r2, r1, r2
 80045e4: 6102         	str	r2, [r0, #0x10]
 80045e6: e001         	b	0x80045ec <firmware_image+0x45ec> @ imm = #0x2
 80045e8: 08ca         	lsrs	r2, r1, #0x3
 80045ea: 6102         	str	r2, [r0, #0x10]
 80045ec: 6b22         	ldr	r2, [r4, #0x30]
 80045ee: 0656         	lsls	r6, r2, #0x19
 80045f0: f44f 4200    	mov.w	r2, #0x8000
 80045f4: d403         	bmi	0x80045fe <firmware_image+0x45fe> @ imm = #0x6
 80045f6: f248 0612    	movw	r6, #0x8012
 80045fa: 6146         	str	r6, [r0, #0x14]
 80045fc: e000         	b	0x8004600 <firmware_image+0x4600> @ imm = #0x0
 80045fe: 6142         	str	r2, [r0, #0x14]
 8004600: 6b26         	ldr	r6, [r4, #0x30]
 8004602: 07b6         	lsls	r6, r6, #0x1e
 8004604: d00f         	beq	0x8004626 <firmware_image+0x4626> @ imm = #0x1e
 8004606: 6b21         	ldr	r1, [r4, #0x30]
 8004608: f001 0103    	and	r1, r1, #0x3
 800460c: 2901         	cmp	r1, #0x1
 800460e: d00c         	beq	0x800462a <firmware_image+0x462a> @ imm = #0x18
 8004610: 6b21         	ldr	r1, [r4, #0x30]
 8004612: f001 0103    	and	r1, r1, #0x3
 8004616: 2902         	cmp	r1, #0x2
 8004618: d009         	beq	0x800462e <firmware_image+0x462e> @ imm = #0x12
 800461a: 6b21         	ldr	r1, [r4, #0x30]
 800461c: 43c9         	mvns	r1, r1
 800461e: 0789         	lsls	r1, r1, #0x1e
 8004620: d100         	bne	0x8004624 <firmware_image+0x4624> @ imm = #0x0
 8004622: 6183         	str	r3, [r0, #0x18]
 8004624: bd70         	pop	{r4, r5, r6, pc}
 8004626: 6181         	str	r1, [r0, #0x18]
 8004628: bd70         	pop	{r4, r5, r6, pc}
 800462a: 6185         	str	r5, [r0, #0x18]
 800462c: bd70         	pop	{r4, r5, r6, pc}
 800462e: 6182         	str	r2, [r0, #0x18]
 8004630: bd70         	pop	{r4, r5, r6, pc}
 8004632: 0000         	movs	r0, r0
 8004634: 1000         	asrs	r0, r0, #0x20
 8004636: 4002         	ands	r2, r0
 8004638: 1200         	asrs	r0, r0, #0x8
 800463a: 007a         	lsls	r2, r7, #0x1
 800463c: 0028         	movs	r0, r5
 800463e: 2000         	movs	r0, #0x0
 8004640: 9f80         	ldr	r7, [sp, #0x200]
 8004642: 00d5         	lsls	r5, r2, #0x3
 8004644: 0900         	lsrs	r0, r0, #0x4
 8004646: 003d         	movs	r5, r7
 8004648: 4906         	ldr	r1, [pc, #0x18]         @ 0x8004664 <firmware_image+0x4664>
 800464a: 2800         	cmp	r0, #0x0
 800464c: d004         	beq	0x8004658 <firmware_image+0x4658> @ imm = #0x8
 800464e: 6808         	ldr	r0, [r1]
 8004650: f040 0001    	orr	r0, r0, #0x1
 8004654: 6008         	str	r0, [r1]
 8004656: 4770         	bx	lr
 8004658: 6808         	ldr	r0, [r1]
 800465a: f020 0001    	bic	r0, r0, #0x1
 800465e: 6008         	str	r0, [r1]
 8004660: 4770         	bx	lr
 8004662: 0000         	movs	r0, r0
 8004664: 1000         	asrs	r0, r0, #0x20
 8004666: 4002         	ands	r2, r0
 8004668: b510         	push	{r4, lr}
 800466a: 4a05         	ldr	r2, [pc, #0x14]         @ 0x8004680 <firmware_image+0x4680>
 800466c: 6853         	ldr	r3, [r2, #0x4]
 800466e: 4c05         	ldr	r4, [pc, #0x14]         @ 0x8004684 <firmware_image+0x4684>
 8004670: 4023         	ands	r3, r4
 8004672: 6053         	str	r3, [r2, #0x4]
 8004674: 6853         	ldr	r3, [r2, #0x4]
 8004676: 4308         	orrs	r0, r1
 8004678: 4303         	orrs	r3, r0
 800467a: 6053         	str	r3, [r2, #0x4]
 800467c: bd10         	pop	{r4, pc}
 800467e: 0000         	movs	r0, r0
 8004680: 1000         	asrs	r0, r0, #0x20
 8004682: 4002         	ands	r2, r0
 8004684: ffff f7c2    	<unknown>
 8004688: 4906         	ldr	r1, [pc, #0x18]         @ 0x80046a4 <firmware_image+0x46a4>
 800468a: 2800         	cmp	r0, #0x0
 800468c: d004         	beq	0x8004698 <firmware_image+0x4698> @ imm = #0x8
 800468e: 6808         	ldr	r0, [r1]
 8004690: f040 7080    	orr	r0, r0, #0x1000000
 8004694: 6008         	str	r0, [r1]
 8004696: 4770         	bx	lr
 8004698: 6808         	ldr	r0, [r1]
 800469a: f020 7080    	bic	r0, r0, #0x1000000
 800469e: 6008         	str	r0, [r1]
 80046a0: 4770         	bx	lr
 80046a2: 0000         	movs	r0, r0
 80046a4: 1000         	asrs	r0, r0, #0x20
 80046a6: 4002         	ands	r2, r0
 80046a8: 4770         	bx	lr
 80046aa: 0000         	movs	r0, r0
 80046ac: 4e1e         	ldr	r6, [pc, #0x78]         @ 0x8004728 <firmware_image+0x4728>
 80046ae: 1cb0         	adds	r0, r6, #0x2
 80046b0: f7fc ffdc    	bl	0x800166c <firmware_image+0x166c> @ imm = #-0x3048
 80046b4: 4605         	mov	r5, r0
 80046b6: 1d30         	adds	r0, r6, #0x4
 80046b8: f7fc ffd8    	bl	0x800166c <firmware_image+0x166c> @ imm = #-0x3050
 80046bc: 4604         	mov	r4, r0
 80046be: 1e60         	subs	r0, r4, #0x1
 80046c0: 287c         	cmp	r0, #0x7c
 80046c2: d304         	blo	0x80046ce <firmware_image+0x46ce> @ imm = #0x8
 80046c4: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80046c8: 2003         	movs	r0, #0x3
 80046ca: f002 bc21    	b.w	0x8006f10 <firmware_image+0x6f10> @ imm = #0x2842
 80046ce: 1928         	adds	r0, r5, r4
 80046d0: 2820         	cmp	r0, #0x20
 80046d2: d904         	bls	0x80046de <firmware_image+0x46de> @ imm = #0x8
 80046d4: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80046d8: 2002         	movs	r0, #0x2
 80046da: f002 bc19    	b.w	0x8006f10 <firmware_image+0x6f10> @ imm = #0x2832
 80046de: 0060         	lsls	r0, r4, #0x1
 80046e0: 70b0         	strb	r0, [r6, #0x2]
 80046e2: 2300         	movs	r3, #0x0
 80046e4: 4f10         	ldr	r7, [pc, #0x40]         @ 0x8004728 <firmware_image+0x4728>
 80046e6: 3f80         	subs	r7, #0x80
 80046e8: e009         	b	0x80046fe <firmware_image+0x46fe> @ imm = #0x12
 80046ea: 18e8         	adds	r0, r5, r3
 80046ec: f837 1010    	ldrh.w	r1, [r7, r0, lsl #1]
 80046f0: eb06 0043    	add.w	r0, r6, r3, lsl #1
 80046f4: 1cc0         	adds	r0, r0, #0x3
 80046f6: f000 f85c    	bl	0x80047b2 <firmware_image+0x47b2> @ imm = #0xb8
 80046fa: 1c5b         	adds	r3, r3, #0x1
 80046fc: b2db         	uxtb	r3, r3
 80046fe: 42a3         	cmp	r3, r4
 8004700: d3f3         	blo	0x80046ea <firmware_image+0x46ea> @ imm = #-0x1a
 8004702: 2003         	movs	r0, #0x3
 8004704: eb00 0044    	add.w	r0, r0, r4, lsl #1
 8004708: b2c4         	uxtb	r4, r0
 800470a: 4621         	mov	r1, r4
 800470c: 4806         	ldr	r0, [pc, #0x18]         @ 0x8004728 <firmware_image+0x4728>
 800470e: f002 fb91    	bl	0x8006e34 <firmware_image+0x6e34> @ imm = #0x2722
 8004712: 4601         	mov	r1, r0
 8004714: 1930         	adds	r0, r6, r4
 8004716: f000 f850    	bl	0x80047ba <firmware_image+0x47ba> @ imm = #0xa0
 800471a: 1ca4         	adds	r4, r4, #0x2
 800471c: b2e1         	uxtb	r1, r4
 800471e: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8004722: 4801         	ldr	r0, [pc, #0x4]          @ 0x8004728 <firmware_image+0x4728>
 8004724: f002 bcc4    	b.w	0x80070b0 <firmware_image+0x70b0> @ imm = #0x2988
 8004728: 0478         	lsls	r0, r7, #0x11
 800472a: 2000         	movs	r0, #0x0
 800472c: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8004730: 4e1e         	ldr	r6, [pc, #0x78]         @ 0x80047ac <firmware_image+0x47ac>
 8004732: 1cb0         	adds	r0, r6, #0x2
 8004734: f7fc ff9a    	bl	0x800166c <firmware_image+0x166c> @ imm = #-0x30cc
 8004738: 4605         	mov	r5, r0
 800473a: 1d30         	adds	r0, r6, #0x4
 800473c: f7fc ff96    	bl	0x800166c <firmware_image+0x166c> @ imm = #-0x30d4
 8004740: 4604         	mov	r4, r0
 8004742: 1e60         	subs	r0, r4, #0x1
 8004744: 287c         	cmp	r0, #0x7c
 8004746: d304         	blo	0x8004752 <firmware_image+0x4752> @ imm = #0x8
 8004748: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 800474c: 2003         	movs	r0, #0x3
 800474e: f002 bbdf    	b.w	0x8006f10 <firmware_image+0x6f10> @ imm = #0x27be
 8004752: 1928         	adds	r0, r5, r4
 8004754: 2820         	cmp	r0, #0x20
 8004756: d904         	bls	0x8004762 <firmware_image+0x4762> @ imm = #0x8
 8004758: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 800475c: 2002         	movs	r0, #0x2
 800475e: f002 bbd7    	b.w	0x8006f10 <firmware_image+0x6f10> @ imm = #0x27ae
 8004762: 0060         	lsls	r0, r4, #0x1
 8004764: 70b0         	strb	r0, [r6, #0x2]
 8004766: 2300         	movs	r3, #0x0
 8004768: 4f10         	ldr	r7, [pc, #0x40]         @ 0x80047ac <firmware_image+0x47ac>
 800476a: 3f40         	subs	r7, #0x40
 800476c: e009         	b	0x8004782 <firmware_image+0x4782> @ imm = #0x12
 800476e: 18e8         	adds	r0, r5, r3
 8004770: eb06 0043    	add.w	r0, r6, r3, lsl #1
 8004774: 1cc0         	adds	r0, r0, #0x3
 8004776: f000 f81a    	bl	0x80047ae <firmware_image+0x47ae> @ imm = #0x34
 800477a: 1c5b         	adds	r3, r3, #0x1
 800477c: b2db         	uxtb	r3, r3
 800477e: 42a3         	cmp	r3, r4
 8004780: d3f3         	blo	0x800476a <firmware_image+0x476a> @ imm = #-0x1a
 8004782: 2003         	movs	r0, #0x3
 8004784: eb00 0044    	add.w	r0, r0, r4, lsl #1
 8004788: b2c4         	uxtb	r4, r0
 800478a: 4621         	mov	r1, r4
 800478c: 4806         	ldr	r0, [pc, #0x18]         @ 0x80047a8 <firmware_image+0x47a8>
 800478e: f002 fb4f    	bl	0x8006e30 <firmware_image+0x6e30> @ imm = #0x269e
 8004792: 4601         	mov	r1, r0
 8004794: 1930         	adds	r0, r6, r4
 8004796: f000 f80e    	bl	0x80047b6 <firmware_image+0x47b6> @ imm = #0x1c
 800479a: 1ca4         	adds	r4, r4, #0x2
 800479c: b2e1         	uxtb	r1, r4
 800479e: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80047a2: 4801         	ldr	r0, [pc, #0x4]          @ 0x80047a8 <firmware_image+0x47a8>
 80047a4: f002 bc82    	b.w	0x80070ac <firmware_image+0x70ac> @ imm = #0x2904
 80047a8: 0478         	lsls	r0, r7, #0x11
 80047aa: 2000         	movs	r0, #0x0
 80047ac: 4770         	bx	lr
 80047ae: 0a0a         	lsrs	r2, r1, #0x8
 80047b0: 7002         	strb	r2, [r0]
 80047b2: 7041         	strb	r1, [r0, #0x1]
 80047b4: 4770         	bx	lr
 80047b6: 7001         	strb	r1, [r0]
 80047b8: 0a09         	lsrs	r1, r1, #0x8
 80047ba: 7041         	strb	r1, [r0, #0x1]
 80047bc: 4770         	bx	lr
 80047be: 0000         	movs	r0, r0
 80047c0: b51c         	push	{r2, r3, r4, lr}
 80047c2: 2101         	movs	r1, #0x1
 80047c4: 0588         	lsls	r0, r1, #0x16
 80047c6: f7ff fdc1    	bl	0x800434c <firmware_image+0x434c> @ imm = #-0x47e
 80047ca: 2002         	movs	r0, #0x2
 80047cc: 9000         	str	r0, [sp]
 80047ce: 2000         	movs	r0, #0x0
 80047d0: f88d 0004    	strb.w	r0, [sp, #0x4]
 80047d4: 2103         	movs	r1, #0x3
 80047d6: f88d 1005    	strb.w	r1, [sp, #0x5]
 80047da: f88d 0006    	strb.w	r0, [sp, #0x6]
 80047de: f88d 0007    	strb.w	r0, [sp, #0x7]
 80047e2: 4669         	mov	r1, sp
 80047e4: 4801         	ldr	r0, [pc, #0x4]          @ 0x80047ec <firmware_image+0x47ec>
 80047e6: f7fd ff65    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0x2136
 80047ea: bd1c         	pop	{r2, r3, r4, pc}
 80047ec: 1400         	asrs	r0, r0, #0x10
 80047ee: 4800         	ldr	r0, [pc, #0x0]          @ 0x80047f0 <firmware_image+0x47f0>
 80047f0: b501         	push	{r0, lr}
 80047f2: b081         	sub	sp, #0x4
 80047f4: 9801         	ldr	r0, [sp, #0x4]
 80047f6: 9000         	str	r0, [sp]
 80047f8: 4812         	ldr	r0, [pc, #0x48]         @ 0x8004844 <firmware_image+0x4844>
 80047fa: f9b0 1000    	ldrsh.w	r1, [r0]
 80047fe: f9b0 4812    	ldrsh.w	r4, [r0, #0x812]
 8004802: f9b0 1000    	ldrsh.w	r1, [r0]
 8004806: f9b0 0002    	ldrsh.w	r0, [r0, #0x2]
 800480a: 4349         	muls	r1, r1, r1
 800480c: fb00 1000    	mla	r0, r0, r0, r1
 8004810: 490f         	ldr	r1, [pc, #0x3c]         @ 0x8004850 <firmware_image+0x4850>
 8004812: 4288         	cmp	r0, r1
 8004814: d917         	bls	0x8004846 <firmware_image+0x4846> @ imm = #0x2e
 8004816: 0e00         	lsrs	r0, r0, #0x18
 8004818: 383d         	subs	r0, #0x3d
 800481a: 490e         	ldr	r1, [pc, #0x38]         @ 0x8004854 <firmware_image+0x4854>
 800481c: b2c0         	uxtb	r0, r0
 800481e: f831 1010    	ldrh.w	r1, [r1, r0, lsl #1]
 8004822: f9bd 0004    	ldrsh.w	r0, [sp, #0x4]
 8004826: 4348         	muls	r0, r1, r0
 8004828: 17c2         	asrs	r2, r0, #0x1f
 800482a: eb00 4052    	add.w	r0, r0, r2, lsr #17
 800482e: 13c0         	asrs	r0, r0, #0xf
 8004830: f8ad 0000    	strh.w	r0, [sp]
 8004834: f9bd 0006    	ldrsh.w	r0, [sp, #0x6]
 8004838: 4348         	muls	r0, r1, r0
 800483a: 17c1         	asrs	r1, r0, #0x1f
 800483c: eb00 4051    	add.w	r0, r0, r1, lsr #17
 8004840: 13c0         	asrs	r0, r0, #0xf
 8004842: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8004846: 9800         	ldr	r0, [sp]
 8004848: bd0c         	pop	{r2, r3, pc}
 800484a: 0000         	movs	r0, r0
 800484c: 0258         	lsls	r0, r3, #0x9
 800484e: 2000         	movs	r0, #0x0
 8004850: 9621         	str	r6, [sp, #0x84]
 8004852: 3d75         	subs	r5, #0x75
 8004854: 7320         	strb	r0, [r4, #0xc]
 8004856: 0800         	lsrs	r0, r0, #0x20
 8004858: b533         	push	{r0, r1, r4, r5, lr}
 800485a: b082         	sub	sp, #0x8
 800485c: 4608         	mov	r0, r1
 800485e: f001 f9cf    	bl	0x8005c00 <firmware_image+0x5c00> @ imm = #0x139e
 8004862: 9001         	str	r0, [sp, #0x4]
 8004864: f9bd 1008    	ldrsh.w	r1, [sp, #0x8]
 8004868: f9bd 3004    	ldrsh.w	r3, [sp, #0x4]
 800486c: fb01 f003    	mul	r0, r1, r3
 8004870: f9bd 200a    	ldrsh.w	r2, [sp, #0xa]
 8004874: f9bd 4006    	ldrsh.w	r4, [sp, #0x6]
 8004878: fb02 f504    	mul	r5, r2, r4
 800487c: 4428         	add	r0, r5
 800487e: 17c5         	asrs	r5, r0, #0x1f
 8004880: eb00 4055    	add.w	r0, r0, r5, lsr #17
 8004884: 13c0         	asrs	r0, r0, #0xf
 8004886: f8ad 0000    	strh.w	r0, [sp]
 800488a: 4361         	muls	r1, r4, r1
 800488c: 435a         	muls	r2, r3, r2
 800488e: 1a50         	subs	r0, r2, r1
 8004890: 17c1         	asrs	r1, r0, #0x1f
 8004892: eb00 4051    	add.w	r0, r0, r1, lsr #17
 8004896: 13c0         	asrs	r0, r0, #0xf
 8004898: f8ad 0002    	strh.w	r0, [sp, #0x2]
 800489c: 9800         	ldr	r0, [sp]
 800489e: b004         	add	sp, #0x10
 80048a0: bd30         	pop	{r4, r5, pc}
 80048a2: 0000         	movs	r0, r0
 80048a4: b530         	push	{r4, r5, lr}
 80048a6: 4605         	mov	r5, r0
 80048a8: 2000         	movs	r0, #0x0
 80048aa: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x80048e4 <firmware_image+0x48e4>
 80048ac: e001         	b	0x80048b2 <firmware_image+0x48b2> @ imm = #0x2
 80048ae: 1c40         	adds	r0, r0, #0x1
 80048b0: b2c0         	uxtb	r0, r0
 80048b2: eb00 0440    	add.w	r4, r0, r0, lsl #1
 80048b6: f853 4024    	ldr.w	r4, [r3, r4, lsl #2]
 80048ba: b10c         	cbz	r4, 0x80048c0 <firmware_image+0x48c0> @ imm = #0x2
 80048bc: 2814         	cmp	r0, #0x14
 80048be: d3f6         	blo	0x80048ae <firmware_image+0x48ae> @ imm = #-0x14
 80048c0: 2814         	cmp	r0, #0x14
 80048c2: d00a         	beq	0x80048da <firmware_image+0x48da> @ imm = #0x14
 80048c4: eb00 0440    	add.w	r4, r0, r0, lsl #1
 80048c8: f843 5024    	str.w	r5, [r3, r4, lsl #2]
 80048cc: eb03 0384    	add.w	r3, r3, r4, lsl #2
 80048d0: 8099         	strh	r1, [r3, #0x4]
 80048d2: 80da         	strh	r2, [r3, #0x6]
 80048d4: 2100         	movs	r1, #0x0
 80048d6: 7219         	strb	r1, [r3, #0x8]
 80048d8: bd30         	pop	{r4, r5, pc}
 80048da: 4903         	ldr	r1, [pc, #0xc]          @ 0x80048e8 <firmware_image+0x48e8>
 80048dc: 2001         	movs	r0, #0x1
 80048de: 7008         	strb	r0, [r1]
 80048e0: 2014         	movs	r0, #0x14
 80048e2: bd30         	pop	{r4, r5, pc}
 80048e4: 0308         	lsls	r0, r1, #0xc
 80048e6: 2000         	movs	r0, #0x0
 80048e8: 021c         	lsls	r4, r3, #0x8
 80048ea: 2000         	movs	r0, #0x0
 80048ec: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x8004918 <firmware_image+0x4918>
 80048ee: eb00 0140    	add.w	r1, r0, r0, lsl #1
 80048f2: f853 0021    	ldr.w	r0, [r3, r1, lsl #2]
 80048f6: 2800         	cmp	r0, #0x0
 80048f8: d009         	beq	0x800490e <firmware_image+0x490e> @ imm = #0x12
 80048fa: 2000         	movs	r0, #0x0
 80048fc: 2200         	movs	r2, #0x0
 80048fe: f843 2021    	str.w	r2, [r3, r1, lsl #2]
 8004902: eb03 0181    	add.w	r1, r3, r1, lsl #2
 8004906: 808a         	strh	r2, [r1, #0x4]
 8004908: 80ca         	strh	r2, [r1, #0x6]
 800490a: 720a         	strb	r2, [r1, #0x8]
 800490c: 4770         	bx	lr
 800490e: 4a03         	ldr	r2, [pc, #0xc]          @ 0x800491c <firmware_image+0x491c>
 8004910: 2002         	movs	r0, #0x2
 8004912: 7010         	strb	r0, [r2]
 8004914: 2001         	movs	r0, #0x1
 8004916: e7f1         	b	0x80048fc <firmware_image+0x48fc> @ imm = #-0x1e
 8004918: 0308         	lsls	r0, r1, #0xc
 800491a: 2000         	movs	r0, #0x0
 800491c: 021c         	lsls	r4, r3, #0x8
 800491e: 2000         	movs	r0, #0x0
 8004920: b570         	push	{r4, r5, r6, lr}
 8004922: 2400         	movs	r4, #0x0
 8004924: 4e0d         	ldr	r6, [pc, #0x34]         @ 0x800495c <firmware_image+0x495c>
 8004926: eb04 0044    	add.w	r0, r4, r4, lsl #1
 800492a: eb06 0580    	add.w	r5, r6, r0, lsl #2
 800492e: 7a29         	ldrb	r1, [r5, #0x8]
 8004930: b151         	cbz	r1, 0x8004948 <firmware_image+0x4948> @ imm = #0x14
 8004932: f856 0020    	ldr.w	r0, [r6, r0, lsl #2]
 8004936: 4780         	blx	r0
 8004938: 7a28         	ldrb	r0, [r5, #0x8]
 800493a: 1e40         	subs	r0, r0, #0x1
 800493c: 7228         	strb	r0, [r5, #0x8]
 800493e: 88e8         	ldrh	r0, [r5, #0x6]
 8004940: b910         	cbnz	r0, 0x8004948 <firmware_image+0x4948> @ imm = #0x4
 8004942: 4620         	mov	r0, r4
 8004944: f7ff ffd2    	bl	0x80048ec <firmware_image+0x48ec> @ imm = #-0x5c
 8004948: 1c64         	adds	r4, r4, #0x1
 800494a: b2e4         	uxtb	r4, r4
 800494c: 2c14         	cmp	r4, #0x14
 800494e: d3ea         	blo	0x8004926 <firmware_image+0x4926> @ imm = #-0x2c
 8004950: f000 f807    	bl	0x8004962 <firmware_image+0x4962> @ imm = #0xe
 8004954: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 8004958: f000 b802    	b.w	0x8004960 <firmware_image+0x4960> @ imm = #0x4
 800495c: 0308         	lsls	r0, r1, #0xc
 800495e: 2000         	movs	r0, #0x0
 8004960: 4770         	bx	lr
 8004962: 4770         	bx	lr
 8004964: 4770         	bx	lr
 8004966: 0000         	movs	r0, r0
 8004968: b510         	push	{r4, lr}
 800496a: 2400         	movs	r4, #0x0
 800496c: b2e0         	uxtb	r0, r4
 800496e: f7ff ffbd    	bl	0x80048ec <firmware_image+0x48ec> @ imm = #-0x86
 8004972: 1c64         	adds	r4, r4, #0x1
 8004974: b2a4         	uxth	r4, r4
 8004976: 2c14         	cmp	r4, #0x14
 8004978: d3f8         	blo	0x800496c <firmware_image+0x496c> @ imm = #-0x10
 800497a: 480e         	ldr	r0, [pc, #0x38]         @ 0x80049b4 <firmware_image+0x49b4>
 800497c: 2100         	movs	r1, #0x0
 800497e: 7001         	strb	r1, [r0]
 8004980: 480d         	ldr	r0, [pc, #0x34]         @ 0x80049b8 <firmware_image+0x49b8>
 8004982: 22fa         	movs	r2, #0xfa
 8004984: 6800         	ldr	r0, [r0]
 8004986: fbb0 f0f2    	udiv	r0, r0, r2
 800498a: 1e40         	subs	r0, r0, #0x1
 800498c: f1b0 7f80    	cmp.w	r0, #0x1000000
 8004990: d301         	blo	0x8004996 <firmware_image+0x4996> @ imm = #0x2
 8004992: 2001         	movs	r0, #0x1
 8004994: e009         	b	0x80049aa <firmware_image+0x49aa> @ imm = #0x12
 8004996: f04f 22e0    	mov.w	r2, #0xe000e000
 800499a: 6150         	str	r0, [r2, #0x14]
 800499c: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x80049bc <firmware_image+0x49bc>
 800499e: 20f0         	movs	r0, #0xf0
 80049a0: 7018         	strb	r0, [r3]
 80049a2: 6191         	str	r1, [r2, #0x18]
 80049a4: 2007         	movs	r0, #0x7
 80049a6: 6110         	str	r0, [r2, #0x10]
 80049a8: 2000         	movs	r0, #0x0
 80049aa: 2800         	cmp	r0, #0x0
 80049ac: d000         	beq	0x80049b0 <firmware_image+0x49b0> @ imm = #0x0
 80049ae: e7fe         	b	0x80049ae <firmware_image+0x49ae> @ imm = #-0x4
 80049b0: bd10         	pop	{r4, pc}
 80049b2: 0000         	movs	r0, r0
 80049b4: 021c         	lsls	r4, r3, #0x8
 80049b6: 2000         	movs	r0, #0x0
 80049b8: 000c         	movs	r4, r1
 80049ba: 2000         	movs	r0, #0x0
 80049bc: ed23 e000    	stc	p0, c14, [r3, #-0]!
 80049c0: 4770         	bx	lr
 80049c2: 0000         	movs	r0, r0
 80049c4: 4803         	ldr	r0, [pc, #0xc]          @ 0x80049d4 <firmware_image+0x49d4>
 80049c6: 6801         	ldr	r1, [r0]
 80049c8: f441 4100    	orr	r1, r1, #0x8000
 80049cc: 6001         	str	r1, [r0]
 80049ce: 2004         	movs	r0, #0x4
 80049d0: f7fc b8a6    	b.w	0x8000b20 <firmware_image+0xb20> @ imm = #-0x3eb4
 80049d4: 2408         	movs	r4, #0x8
 80049d6: 4001         	ands	r1, r0
 80049d8: b570         	push	{r4, r5, r6, lr}
 80049da: b086         	sub	sp, #0x18
 80049dc: 4822         	ldr	r0, [pc, #0x88]         @ 0x8004a68 <firmware_image+0x4a68>
 80049de: f7ff fc9b    	bl	0x8004318 <firmware_image+0x4318> @ imm = #-0x6ca
 80049e2: 2101         	movs	r1, #0x1
 80049e4: f44f 00bc    	mov.w	r0, #0x5e0000
 80049e8: f7ff fcb4    	bl	0x8004354 <firmware_image+0x4354> @ imm = #-0x698
 80049ec: 2101         	movs	r1, #0x1
 80049ee: 0248         	lsls	r0, r1, #0x9
 80049f0: f7ff fcee    	bl	0x80043d0 <firmware_image+0x43d0> @ imm = #-0x624
 80049f4: 2401         	movs	r4, #0x1
 80049f6: 9400         	str	r4, [sp]
 80049f8: 2003         	movs	r0, #0x3
 80049fa: f88d 0004    	strb.w	r0, [sp, #0x4]
 80049fe: f88d 0005    	strb.w	r0, [sp, #0x5]
 8004a02: 2500         	movs	r5, #0x0
 8004a04: f88d 5007    	strb.w	r5, [sp, #0x7]
 8004a08: f04f 4690    	mov.w	r6, #0x48000000
 8004a0c: 4669         	mov	r1, sp
 8004a0e: 4630         	mov	r0, r6
 8004a10: f7fd fe54    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x2358
 8004a14: 9400         	str	r4, [sp]
 8004a16: 4669         	mov	r1, sp
 8004a18: 4814         	ldr	r0, [pc, #0x50]         @ 0x8004a6c <firmware_image+0x4a6c>
 8004a1a: f7fd fe4f    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x2362
 8004a1e: 2140         	movs	r1, #0x40
 8004a20: 9100         	str	r1, [sp]
 8004a22: 4669         	mov	r1, sp
 8004a24: 4630         	mov	r0, r6
 8004a26: f7fd fe49    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x236e
 8004a2a: 2110         	movs	r1, #0x10
 8004a2c: 9100         	str	r1, [sp]
 8004a2e: 4669         	mov	r1, sp
 8004a30: 4630         	mov	r0, r6
 8004a32: f7fd fe43    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x237a
 8004a36: a802         	add	r0, sp, #0x8
 8004a38: f7fc f878    	bl	0x8000b2c <firmware_image+0xb2c> @ imm = #-0x3f10
 8004a3c: f88d 4014    	strb.w	r4, [sp, #0x14]
 8004a40: f88d 5015    	strb.w	r5, [sp, #0x15]
 8004a44: f44f 2060    	mov.w	r0, #0xe0000
 8004a48: 9002         	str	r0, [sp, #0x8]
 8004a4a: 02e0         	lsls	r0, r4, #0xb
 8004a4c: 9004         	str	r0, [sp, #0x10]
 8004a4e: 2004         	movs	r0, #0x4
 8004a50: f88d 000c    	strb.w	r0, [sp, #0xc]
 8004a54: a802         	add	r0, sp, #0x8
 8004a56: f7fc f8cb    	bl	0x8000bf0 <firmware_image+0xbf0> @ imm = #-0x3e6a
 8004a5a: 2001         	movs	r0, #0x1
 8004a5c: f7fc f87a    	bl	0x8000b54 <firmware_image+0xb54> @ imm = #-0x3f0c
 8004a60: f7fc f84c    	bl	0x8000afc <firmware_image+0xafc> @ imm = #-0x3f68
 8004a64: b006         	add	sp, #0x18
 8004a66: bd70         	pop	{r4, r5, r6, pc}
 8004a68: 8000         	strh	r0, [r0]
 8004a6a: 0100         	lsls	r0, r0, #0x4
 8004a6c: 0400         	lsls	r0, r0, #0x10
 8004a6e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8004a70 <firmware_image+0x4a70>
 8004a70: 4902         	ldr	r1, [pc, #0x8]          @ 0x8004a7c <firmware_image+0x4a7c>
 8004a72: 4801         	ldr	r0, [pc, #0x4]          @ 0x8004a78 <firmware_image+0x4a78>
 8004a74: 6008         	str	r0, [r1]
 8004a76: 4770         	bx	lr
 8004a78: 1900         	adds	r0, r0, r4
 8004a7a: 0032         	movs	r2, r6
 8004a7c: 2438         	movs	r4, #0x38
 8004a7e: 4001         	ands	r1, r0
 8004a80: b510         	push	{r4, lr}
 8004a82: 2004         	movs	r0, #0x4
 8004a84: f7fc f890    	bl	0x8000ba8 <firmware_image+0xba8> @ imm = #-0x3ee0
 8004a88: 2800         	cmp	r0, #0x0
 8004a8a: d0fa         	beq	0x8004a82 <firmware_image+0x4a82> @ imm = #-0xc
 8004a8c: 2020         	movs	r0, #0x20
 8004a8e: f7fc f895    	bl	0x8000bbc <firmware_image+0xbbc> @ imm = #-0x3ed6
 8004a92: 4909         	ldr	r1, [pc, #0x24]         @ 0x8004ab8 <firmware_image+0x4ab8>
 8004a94: 8008         	strh	r0, [r1]
 8004a96: 201c         	movs	r0, #0x1c
 8004a98: f7fc f890    	bl	0x8000bbc <firmware_image+0xbbc> @ imm = #-0x3ee0
 8004a9c: 4907         	ldr	r1, [pc, #0x1c]         @ 0x8004abc <firmware_image+0x4abc>
 8004a9e: 8008         	strh	r0, [r1]
 8004aa0: 2004         	movs	r0, #0x4
 8004aa2: f7fc f83d    	bl	0x8000b20 <firmware_image+0xb20> @ imm = #-0x3f86
 8004aa6: 2001         	movs	r0, #0x1
 8004aa8: f7fc f900    	bl	0x8000cac <firmware_image+0xcac> @ imm = #-0x3e00
 8004aac: f7fc fe0e    	bl	0x80016cc <firmware_image+0x16cc> @ imm = #-0x33e4
 8004ab0: e8bd 4010    	pop.w	{r4, lr}
 8004ab4: f7fc bde6    	b.w	0x8001684 <firmware_image+0x1684> @ imm = #-0x3434
 8004ab8: 0264         	lsls	r4, r4, #0x9
 8004aba: 2000         	movs	r0, #0x0
 8004abc: 0266         	lsls	r6, r4, #0x9
 8004abe: 2000         	movs	r0, #0x0
 8004ac0: e92d 4ff1    	push.w	{r0, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8004ac4: 2000         	movs	r0, #0x0
 8004ac6: 2300         	movs	r3, #0x0
 8004ac8: 2400         	movs	r4, #0x0
 8004aca: f9bd 1000    	ldrsh.w	r1, [sp]
 8004ace: f643 42e4    	movw	r2, #0x3ce4
 8004ad2: 4351         	muls	r1, r2, r1
 8004ad4: f9bd 2002    	ldrsh.w	r2, [sp, #0x2]
 8004ad8: f242 3528    	movw	r5, #0x2328
 8004adc: 436a         	muls	r2, r5, r2
 8004ade: 4255         	rsbs	r5, r2, #0
 8004ae0: 186a         	adds	r2, r5, r1
 8004ae2: eb02 72d2    	add.w	r2, r2, r2, lsr #31
 8004ae6: 1052         	asrs	r2, r2, #0x1
 8004ae8: 1a69         	subs	r1, r5, r1
 8004aea: eb01 71d1    	add.w	r1, r1, r1, lsr #31
 8004aee: 1049         	asrs	r1, r1, #0x1
 8004af0: 4e4d         	ldr	r6, [pc, #0x134]        @ 0x8004c28 <firmware_image+0x4c28>
 8004af2: 2a00         	cmp	r2, #0x0
 8004af4: da0c         	bge	0x8004b10 <firmware_image+0x4b10> @ imm = #0x18
 8004af6: 2900         	cmp	r1, #0x0
 8004af8: da02         	bge	0x8004b00 <firmware_image+0x4b00> @ imm = #0x4
 8004afa: 2705         	movs	r7, #0x5
 8004afc: 7137         	strb	r7, [r6, #0x4]
 8004afe: e013         	b	0x8004b28 <firmware_image+0x4b28> @ imm = #0x26
 8004b00: 2d00         	cmp	r5, #0x0
 8004b02: dc02         	bgt	0x8004b0a <firmware_image+0x4b0a> @ imm = #0x4
 8004b04: 2704         	movs	r7, #0x4
 8004b06: 7137         	strb	r7, [r6, #0x4]
 8004b08: e00e         	b	0x8004b28 <firmware_image+0x4b28> @ imm = #0x1c
 8004b0a: 2703         	movs	r7, #0x3
 8004b0c: 7137         	strb	r7, [r6, #0x4]
 8004b0e: e00b         	b	0x8004b28 <firmware_image+0x4b28> @ imm = #0x16
 8004b10: 2900         	cmp	r1, #0x0
 8004b12: db02         	blt	0x8004b1a <firmware_image+0x4b1a> @ imm = #0x4
 8004b14: 2702         	movs	r7, #0x2
 8004b16: 7137         	strb	r7, [r6, #0x4]
 8004b18: e006         	b	0x8004b28 <firmware_image+0x4b28> @ imm = #0xc
 8004b1a: 2d00         	cmp	r5, #0x0
 8004b1c: dc02         	bgt	0x8004b24 <firmware_image+0x4b24> @ imm = #0x4
 8004b1e: 2706         	movs	r7, #0x6
 8004b20: 7137         	strb	r7, [r6, #0x4]
 8004b22: e001         	b	0x8004b28 <firmware_image+0x4b28> @ imm = #0x2
 8004b24: 2701         	movs	r7, #0x1
 8004b26: 7137         	strb	r7, [r6, #0x4]
 8004b28: f896 a004    	ldrb.w	r10, [r6, #0x4]
 8004b2c: f9bd 6002    	ldrsh.w	r6, [sp, #0x2]
 8004b30: f242 3928    	movw	r9, #0x2328
 8004b34: fb06 f609    	mul	r6, r6, r9
 8004b38: 4276         	rsbs	r6, r6, #0
 8004b3a: f9bd b000    	ldrsh.w	r11, [sp]
 8004b3e: f643 47e4    	movw	r7, #0x3ce4
 8004b42: fb0b fb07    	mul	r11, r11, r7
 8004b46: eba6 070b    	sub.w	r7, r6, r11
 8004b4a: ea4f 7ce6    	asr.w	r12, r6, #0x1f
 8004b4e: eb06 3cdc    	add.w	r12, r6, r12, lsr #15
 8004b52: 445e         	add	r6, r11
 8004b54: eb07 77d7    	add.w	r7, r7, r7, lsr #31
 8004b58: eb06 76d6    	add.w	r6, r6, r6, lsr #31
 8004b5c: 107f         	asrs	r7, r7, #0x1
 8004b5e: 1076         	asrs	r6, r6, #0x1
 8004b60: 17ff         	asrs	r7, r7, #0x1f
 8004b62: 17f6         	asrs	r6, r6, #0x1f
 8004b64: f240 4865    	movw	r8, #0x465
 8004b68: ea4f 4c6c    	asr.w	r12, r12, #0x11
 8004b6c: f1ba 0f07    	cmp.w	r10, #0x7
 8004b70: d23a         	bhs	0x8004be8 <firmware_image+0x4be8> @ imm = #0x74
 8004b72: e8df f00a    	tbb	[pc, r10]
 8004b76: 0439         	lsls	r1, r7, #0x10
 8004b78: 2815         	cmp	r0, #0x15
 8004b7a: 1504         	asrs	r4, r0, #0x14
 8004b7c: 0028         	movs	r0, r5
 8004b7e: 1a68         	subs	r0, r5, r1
 8004b80: 4448         	add	r0, r9
 8004b82: 17c2         	asrs	r2, r0, #0x1f
 8004b84: eb00 3092    	add.w	r0, r0, r2, lsr #14
 8004b88: eb08 40a0    	add.w	r0, r8, r0, asr #18
 8004b8c: b280         	uxth	r0, r0
 8004b8e: eb01 31d7    	add.w	r1, r1, r7, lsr #15
 8004b92: eb00 4161    	add.w	r1, r0, r1, asr #17
 8004b96: b28b         	uxth	r3, r1
 8004b98: eba3 010c    	sub.w	r1, r3, r12
 8004b9c: b28c         	uxth	r4, r1
 8004b9e: e023         	b	0x8004be8 <firmware_image+0x4be8> @ imm = #0x46
 8004ba0: 1a50         	subs	r0, r2, r1
 8004ba2: 4448         	add	r0, r9
 8004ba4: 17c3         	asrs	r3, r0, #0x1f
 8004ba6: eb00 3093    	add.w	r0, r0, r3, lsr #14
 8004baa: eb08 40a0    	add.w	r0, r8, r0, asr #18
 8004bae: b280         	uxth	r0, r0
 8004bb0: eb01 31d7    	add.w	r1, r1, r7, lsr #15
 8004bb4: eb00 4161    	add.w	r1, r0, r1, asr #17
 8004bb8: b28b         	uxth	r3, r1
 8004bba: eb02 31d6    	add.w	r1, r2, r6, lsr #15
 8004bbe: eba0 4161    	sub.w	r1, r0, r1, asr #17
 8004bc2: b28c         	uxth	r4, r1
 8004bc4: e010         	b	0x8004be8 <firmware_image+0x4be8> @ imm = #0x20
 8004bc6: eba9 0005    	sub.w	r0, r9, r5
 8004bca: 4410         	add	r0, r2
 8004bcc: 17c1         	asrs	r1, r0, #0x1f
 8004bce: eb00 3091    	add.w	r0, r0, r1, lsr #14
 8004bd2: eb08 40a0    	add.w	r0, r8, r0, asr #18
 8004bd6: b280         	uxth	r0, r0
 8004bd8: eb02 31d6    	add.w	r1, r2, r6, lsr #15
 8004bdc: eba0 4161    	sub.w	r1, r0, r1, asr #17
 8004be0: b28c         	uxth	r4, r1
 8004be2: eb0c 0104    	add.w	r1, r12, r4
 8004be6: b28b         	uxth	r3, r1
 8004be8: f640 02c9    	movw	r2, #0x8c9
 8004bec: 490f         	ldr	r1, [pc, #0x3c]         @ 0x8004c2c <firmware_image+0x4c2c>
 8004bee: 880d         	ldrh	r5, [r1]
 8004bf0: f445 5580    	orr	r5, r5, #0x1000
 8004bf4: 800d         	strh	r5, [r1]
 8004bf6: 880d         	ldrh	r5, [r1]
 8004bf8: f425 5500    	bic	r5, r5, #0x2000
 8004bfc: 800d         	strh	r5, [r1]
 8004bfe: 490c         	ldr	r1, [pc, #0x30]         @ 0x8004c30 <firmware_image+0x4c30>
 8004c00: 780f         	ldrb	r7, [r1]
 8004c02: 490a         	ldr	r1, [pc, #0x28]         @ 0x8004c2c <firmware_image+0x4c2c>
 8004c04: 3114         	adds	r1, #0x14
 8004c06: 1d0d         	adds	r5, r1, #0x4
 8004c08: 1d2e         	adds	r6, r5, #0x4
 8004c0a: b127         	cbz	r7, 0x8004c16 <firmware_image+0x4c16> @ imm = #0x8
 8004c0c: 2000         	movs	r0, #0x0
 8004c0e: 6008         	str	r0, [r1]
 8004c10: 6028         	str	r0, [r5]
 8004c12: 6030         	str	r0, [r6]
 8004c14: e002         	b	0x8004c1c <firmware_image+0x4c1c> @ imm = #0x4
 8004c16: 6008         	str	r0, [r1]
 8004c18: 602b         	str	r3, [r5]
 8004c1a: 6034         	str	r4, [r6]
 8004c1c: 4803         	ldr	r0, [pc, #0xc]          @ 0x8004c2c <firmware_image+0x4c2c>
 8004c1e: 3020         	adds	r0, #0x20
 8004c20: 6002         	str	r2, [r0]
 8004c22: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8004c26: 0000         	movs	r0, r0
 8004c28: 02b0         	lsls	r0, r6, #0xa
 8004c2a: 2000         	movs	r0, #0x0
 8004c2c: 2c20         	cmp	r4, #0x20
 8004c2e: 4001         	ands	r1, r0
 8004c30: 0269         	lsls	r1, r5, #0x9
 8004c32: 2000         	movs	r0, #0x0
 8004c34: b510         	push	{r4, lr}
 8004c36: 4c11         	ldr	r4, [pc, #0x44]         @ 0x8004c7c <firmware_image+0x4c7c>
 8004c38: 4b11         	ldr	r3, [pc, #0x44]         @ 0x8004c80 <firmware_image+0x4c80>
 8004c3a: 2801         	cmp	r0, #0x1
 8004c3c: d00d         	beq	0x8004c5a <firmware_image+0x4c5a> @ imm = #0x1a
 8004c3e: 2200         	movs	r2, #0x0
 8004c40: 2101         	movs	r1, #0x1
 8004c42: 4618         	mov	r0, r3
 8004c44: f000 fd71    	bl	0x800572a <firmware_image+0x572a> @ imm = #0xae2
 8004c48: 6820         	ldr	r0, [r4]
 8004c4a: f420 5080    	bic	r0, r0, #0x1000
 8004c4e: 6020         	str	r0, [r4]
 8004c50: 6820         	ldr	r0, [r4]
 8004c52: f440 4000    	orr	r0, r0, #0x8000
 8004c56: 6020         	str	r0, [r4]
 8004c58: bd10         	pop	{r4, pc}
 8004c5a: 6820         	ldr	r0, [r4]
 8004c5c: f440 5080    	orr	r0, r0, #0x1000
 8004c60: 6020         	str	r0, [r4]
 8004c62: 461c         	mov	r4, r3
 8004c64: 2101         	movs	r1, #0x1
 8004c66: 4620         	mov	r0, r4
 8004c68: f000 fcb7    	bl	0x80055da <firmware_image+0x55da> @ imm = #0x96e
 8004c6c: 4620         	mov	r0, r4
 8004c6e: 2201         	movs	r2, #0x1
 8004c70: e8bd 4010    	pop.w	{r4, lr}
 8004c74: 4611         	mov	r1, r2
 8004c76: f000 bd58    	b.w	0x800572a <firmware_image+0x572a> @ imm = #0xab0
 8004c7a: 0000         	movs	r0, r0
 8004c7c: 2408         	movs	r4, #0x8
 8004c7e: 4001         	ands	r1, r0
 8004c80: 2c00         	cmp	r4, #0x0
 8004c82: 4001         	ands	r1, r0
 8004c84: b570         	push	{r4, r5, r6, lr}
 8004c86: 2100         	movs	r1, #0x0
 8004c88: f44f 6090    	mov.w	r0, #0x480
 8004c8c: f7fb ffa2    	bl	0x8000bd4 <firmware_image+0xbd4> @ imm = #-0x40bc
 8004c90: 4c2d         	ldr	r4, [pc, #0xb4]         @ 0x8004d48 <firmware_image+0x4d48>
 8004c92: 2500         	movs	r5, #0x0
 8004c94: 8165         	strh	r5, [r4, #0xa]
 8004c96: 81a5         	strh	r5, [r4, #0xc]
 8004c98: f44f 40e0    	mov.w	r0, #0x7000
 8004c9c: f7fb ff6a    	bl	0x8000b74 <firmware_image+0xb74> @ imm = #-0x412c
 8004ca0: 2001         	movs	r0, #0x1
 8004ca2: f7fb ff71    	bl	0x8000b88 <firmware_image+0xb88> @ imm = #-0x411e
 8004ca6: 2004         	movs	r0, #0x4
 8004ca8: f7fb fff4    	bl	0x8000c94 <firmware_image+0xc94> @ imm = #-0x4018
 8004cac: 2201         	movs	r2, #0x1
 8004cae: 4611         	mov	r1, r2
 8004cb0: 2000         	movs	r0, #0x0
 8004cb2: f7fb ffc3    	bl	0x8000c3c <firmware_image+0xc3c> @ imm = #-0x407a
 8004cb6: 2201         	movs	r2, #0x1
 8004cb8: 2102         	movs	r1, #0x2
 8004cba: 2008         	movs	r0, #0x8
 8004cbc: f7fb ffbe    	bl	0x8000c3c <firmware_image+0xc3c> @ imm = #-0x4084
 8004cc0: 2201         	movs	r2, #0x1
 8004cc2: 2103         	movs	r1, #0x3
 8004cc4: 2006         	movs	r0, #0x6
 8004cc6: f7fb ffb9    	bl	0x8000c3c <firmware_image+0xc3c> @ imm = #-0x408e
 8004cca: 2104         	movs	r1, #0x4
 8004ccc: 2201         	movs	r2, #0x1
 8004cce: 4608         	mov	r0, r1
 8004cd0: f7fb ffb4    	bl	0x8000c3c <firmware_image+0xc3c> @ imm = #-0x4098
 8004cd4: 2004         	movs	r0, #0x4
 8004cd6: f7fb ff23    	bl	0x8000b20 <firmware_image+0xb20> @ imm = #-0x41ba
 8004cda: 2001         	movs	r0, #0x1
 8004cdc: f7fb ffe6    	bl	0x8000cac <firmware_image+0xcac> @ imm = #-0x4034
 8004ce0: 8125         	strh	r5, [r4, #0x8]
 8004ce2: 2004         	movs	r0, #0x4
 8004ce4: f7fb ff60    	bl	0x8000ba8 <firmware_image+0xba8> @ imm = #-0x4140
 8004ce8: 2014         	movs	r0, #0x14
 8004cea: f7fb ff65    	bl	0x8000bb8 <firmware_image+0xbb8> @ imm = #-0x4136
 8004cee: 8961         	ldrh	r1, [r4, #0xa]
 8004cf0: eb01 00d0    	add.w	r0, r1, r0, lsr #3
 8004cf4: 8160         	strh	r0, [r4, #0xa]
 8004cf6: 2018         	movs	r0, #0x18
 8004cf8: f7fb ff5e    	bl	0x8000bb8 <firmware_image+0xbb8> @ imm = #-0x4144
 8004cfc: 89a1         	ldrh	r1, [r4, #0xc]
 8004cfe: eb01 00d0    	add.w	r0, r1, r0, lsr #3
 8004d02: 81a0         	strh	r0, [r4, #0xc]
 8004d04: 2004         	movs	r0, #0x4
 8004d06: f7fb ff09    	bl	0x8000b1c <firmware_image+0xb1c> @ imm = #-0x41ee
 8004d0a: 2001         	movs	r0, #0x1
 8004d0c: f7fb ffcc    	bl	0x8000ca8 <firmware_image+0xca8> @ imm = #-0x4068
 8004d10: 8920         	ldrh	r0, [r4, #0x8]
 8004d12: 1c40         	adds	r0, r0, #0x1
 8004d14: b280         	uxth	r0, r0
 8004d16: 8120         	strh	r0, [r4, #0x8]
 8004d18: 2810         	cmp	r0, #0x10
 8004d1a: d3e0         	blo	0x8004cde <firmware_image+0x4cde> @ imm = #-0x40
 8004d1c: 8961         	ldrh	r1, [r4, #0xa]
 8004d1e: f241 1093    	movw	r0, #0x1193
 8004d22: f5a1 41ea    	sub.w	r1, r1, #0x7500
 8004d26: 3931         	subs	r1, #0x31
 8004d28: 4281         	cmp	r1, r0
 8004d2a: d207         	bhs	0x8004d3c <firmware_image+0x4d3c> @ imm = #0xe
 8004d2c: 89a1         	ldrh	r1, [r4, #0xc]
 8004d2e: f5a1 41ea    	sub.w	r1, r1, #0x7500
 8004d32: 3931         	subs	r1, #0x31
 8004d34: 4281         	cmp	r1, r0
 8004d36: d201         	bhs	0x8004d3c <firmware_image+0x4d3c> @ imm = #0x2
 8004d38: 7025         	strb	r5, [r4]
 8004d3a: bd70         	pop	{r4, r5, r6, pc}
 8004d3c: 2001         	movs	r0, #0x1
 8004d3e: 7020         	strb	r0, [r4]
 8004d40: bd70         	pop	{r4, r5, r6, pc}
 8004d42: 0000         	movs	r0, r0
 8004d44: 02b0         	lsls	r0, r6, #0xa
 8004d46: 2000         	movs	r0, #0x0
 8004d48: b538         	push	{r3, r4, r5, lr}
 8004d4a: 4815         	ldr	r0, [pc, #0x54]         @ 0x8004da0 <firmware_image+0x4da0>
 8004d4c: 6800         	ldr	r0, [r0]
 8004d4e: 4a15         	ldr	r2, [pc, #0x54]         @ 0x8004da4 <firmware_image+0x4da4>
 8004d50: 8951         	ldrh	r1, [r2, #0xa]
 8004d52: eba1 0040    	sub.w	r0, r1, r0, lsl #1
 8004d56: 4c14         	ldr	r4, [pc, #0x50]         @ 0x8004da8 <firmware_image+0x4da8>
 8004d58: 1c61         	adds	r1, r4, #0x1
 8004d5a: 4265         	rsbs	r5, r4, #0
 8004d5c: 0c4b         	lsrs	r3, r1, #0x11
 8004d5e: 42a0         	cmp	r0, r4
 8004d60: dc02         	bgt	0x8004d68 <firmware_image+0x4d68> @ imm = #0x4
 8004d62: f8ad 1000    	strh.w	r1, [sp]
 8004d66: e006         	b	0x8004d76 <firmware_image+0x4d76> @ imm = #0xc
 8004d68: 42a8         	cmp	r0, r5
 8004d6a: db02         	blt	0x8004d72 <firmware_image+0x4d72> @ imm = #0x4
 8004d6c: f8ad 3000    	strh.w	r3, [sp]
 8004d70: e001         	b	0x8004d76 <firmware_image+0x4d76> @ imm = #0x2
 8004d72: f8ad 0000    	strh.w	r0, [sp]
 8004d76: 480a         	ldr	r0, [pc, #0x28]         @ 0x8004da0 <firmware_image+0x4da0>
 8004d78: 1d00         	adds	r0, r0, #0x4
 8004d7a: 6800         	ldr	r0, [r0]
 8004d7c: 8992         	ldrh	r2, [r2, #0xc]
 8004d7e: eba2 0040    	sub.w	r0, r2, r0, lsl #1
 8004d82: 42a0         	cmp	r0, r4
 8004d84: dc02         	bgt	0x8004d8c <firmware_image+0x4d8c> @ imm = #0x4
 8004d86: f8ad 1002    	strh.w	r1, [sp, #0x2]
 8004d8a: e006         	b	0x8004d9a <firmware_image+0x4d9a> @ imm = #0xc
 8004d8c: 42a8         	cmp	r0, r5
 8004d8e: db02         	blt	0x8004d96 <firmware_image+0x4d96> @ imm = #0x4
 8004d90: f8ad 3002    	strh.w	r3, [sp, #0x2]
 8004d94: e001         	b	0x8004d9a <firmware_image+0x4d9a> @ imm = #0x2
 8004d96: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8004d9a: 9800         	ldr	r0, [sp]
 8004d9c: bd38         	pop	{r3, r4, r5, pc}
 8004d9e: 0000         	movs	r0, r0
 8004da0: 243c         	movs	r4, #0x3c
 8004da2: 4001         	ands	r1, r0
 8004da4: 02b0         	lsls	r0, r6, #0xa
 8004da6: 2000         	movs	r0, #0x0
 8004da8: 8000         	strh	r0, [r0]
 8004daa: ffff e92d    	<unknown>
 8004dae: 43f0         	mvns	r0, r6
 8004db0: b08f         	sub	sp, #0x3c
 8004db2: 2101         	movs	r1, #0x1
 8004db4: 02cf         	lsls	r7, r1, #0xb
 8004db6: 4638         	mov	r0, r7
 8004db8: f7ff fb08    	bl	0x80043cc <firmware_image+0x43cc> @ imm = #-0x9f0
 8004dbc: 2101         	movs	r1, #0x1
 8004dbe: f44f 00bc    	mov.w	r0, #0x5e0000
 8004dc2: f7ff fac5    	bl	0x8004350 <firmware_image+0x4350> @ imm = #-0xa76
 8004dc6: f44f 60e0    	mov.w	r0, #0x700
 8004dca: 9001         	str	r0, [sp, #0x4]
 8004dcc: 2602         	movs	r6, #0x2
 8004dce: f88d 6008    	strb.w	r6, [sp, #0x8]
 8004dd2: 2503         	movs	r5, #0x3
 8004dd4: f88d 5009    	strb.w	r5, [sp, #0x9]
 8004dd8: 2400         	movs	r4, #0x0
 8004dda: f88d 400a    	strb.w	r4, [sp, #0xa]
 8004dde: f88d 400b    	strb.w	r4, [sp, #0xb]
 8004de2: f04f 4890    	mov.w	r8, #0x48000000
 8004de6: a901         	add	r1, sp, #0x4
 8004de8: 4640         	mov	r0, r8
 8004dea: f7fd fc65    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0x2736
 8004dee: 2202         	movs	r2, #0x2
 8004df0: 2108         	movs	r1, #0x8
 8004df2: 4640         	mov	r0, r8
 8004df4: f7fd fc9c    	bl	0x8002730 <firmware_image+0x2730> @ imm = #-0x26c8
 8004df8: 2202         	movs	r2, #0x2
 8004dfa: 2109         	movs	r1, #0x9
 8004dfc: 4640         	mov	r0, r8
 8004dfe: f7fd fc97    	bl	0x8002730 <firmware_image+0x2730> @ imm = #-0x26d2
 8004e02: 2202         	movs	r2, #0x2
 8004e04: 210a         	movs	r1, #0xa
 8004e06: 4640         	mov	r0, r8
 8004e08: f7fd fc92    	bl	0x8002730 <firmware_image+0x2730> @ imm = #-0x26dc
 8004e0c: f44f 4060    	mov.w	r0, #0xe000
 8004e10: 9001         	str	r0, [sp, #0x4]
 8004e12: f88d 6008    	strb.w	r6, [sp, #0x8]
 8004e16: f88d 5009    	strb.w	r5, [sp, #0x9]
 8004e1a: f88d 400a    	strb.w	r4, [sp, #0xa]
 8004e1e: f88d 400b    	strb.w	r4, [sp, #0xb]
 8004e22: 4d5c         	ldr	r5, [pc, #0x170]        @ 0x8004f94 <firmware_image+0x4f94>
 8004e24: a901         	add	r1, sp, #0x4
 8004e26: 4628         	mov	r0, r5
 8004e28: f7fd fc46    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0x2774
 8004e2c: 2202         	movs	r2, #0x2
 8004e2e: 210d         	movs	r1, #0xd
 8004e30: fc7d 2202    	ldc2l	p2, c2, [sp], #-8
 8004e34: 210e         	movs	r1, #0xe
 8004e36: 4628         	mov	r0, r5
 8004e38: f7fd fc78    	bl	0x800272c <firmware_image+0x272c> @ imm = #-0x2710
 8004e3c: 2202         	movs	r2, #0x2
 8004e3e: 210f         	movs	r1, #0xf
 8004e40: 4628         	mov	r0, r5
 8004e42: f7fd fc73    	bl	0x800272c <firmware_image+0x272c> @ imm = #-0x271a
 8004e46: f8df 914c    	ldr.w	r9, [pc, #0x14c]        @ 0x8004f94 <firmware_image+0x4f94>
 8004e4a: 4648         	mov	r0, r9
 8004e4c: f000 fbd2    	bl	0x80055f4 <firmware_image+0x55f4> @ imm = #0x7a4
 8004e50: a80c         	add	r0, sp, #0x30
 8004e52: f000 fbb5    	bl	0x80055c0 <firmware_image+0x55c0> @ imm = #0x76a
 8004e56: f8ad 4030    	strh.w	r4, [sp, #0x30]
 8004e5a: 2020         	movs	r0, #0x20
 8004e5c: f8ad 0032    	strh.w	r0, [sp, #0x32]
 8004e60: f640 00ca    	movw	r0, #0x8ca
 8004e64: 900d         	str	r0, [sp, #0x34]
 8004e66: 01f0         	lsls	r0, r6, #0x7
 8004e68: f8ad 0038    	strh.w	r0, [sp, #0x38]
 8004e6c: 2501         	movs	r5, #0x1
 8004e6e: f88d 503a    	strb.w	r5, [sp, #0x3a]
 8004e72: a90c         	add	r1, sp, #0x30
 8004e74: 4648         	mov	r0, r9
 8004e76: f000 fb6b    	bl	0x8005550 <firmware_image+0x5550> @ imm = #0x6d6
 8004e7a: a807         	add	r0, sp, #0x1c
 8004e7c: f000 fd66    	bl	0x800594c <firmware_image+0x594c> @ imm = #0xacc
 8004e80: 2060         	movs	r0, #0x60
 8004e82: f8ad 001c    	strh.w	r0, [sp, #0x1c]
 8004e86: f8ad 501e    	strh.w	r5, [sp, #0x1e]
 8004e8a: f04f 0804    	mov.w	r8, #0x4
 8004e8e: f8ad 8020    	strh.w	r8, [sp, #0x20]
 8004e92: f240 4065    	movw	r0, #0x465
 8004e96: 9009         	str	r0, [sp, #0x24]
 8004e98: f8ad 4028    	strh.w	r4, [sp, #0x28]
 8004e9c: 2608         	movs	r6, #0x8
 8004e9e: f8ad 602a    	strh.w	r6, [sp, #0x2a]
 8004ea2: f8ad 402c    	strh.w	r4, [sp, #0x2c]
 8004ea6: f8ad 402e    	strh.w	r4, [sp, #0x2e]
 8004eaa: a907         	add	r1, sp, #0x1c
 8004eac: 4648         	mov	r0, r9
 8004eae: f000 fc43    	bl	0x8005738 <firmware_image+0x5738> @ imm = #0x886
 8004eb2: a907         	add	r1, sp, #0x1c
 8004eb4: 4648         	mov	r0, r9
 8004eb6: f000 fc83    	bl	0x80057c0 <firmware_image+0x57c0> @ imm = #0x906
 8004eba: a907         	add	r1, sp, #0x1c
 8004ebc: 4648         	mov	r0, r9
 8004ebe: f000 fcc9    	bl	0x8005854 <firmware_image+0x5854> @ imm = #0x992
 8004ec2: a807         	add	r0, sp, #0x1c
 8004ec4: f000 fd42    	bl	0x800594c <firmware_image+0x594c> @ imm = #0xa84
 8004ec8: 2070         	movs	r0, #0x70
 8004eca: f8ad 001c    	strh.w	r0, [sp, #0x1c]
 8004ece: f8ad 501e    	strh.w	r5, [sp, #0x1e]
 8004ed2: f8ad 8020    	strh.w	r8, [sp, #0x20]
 8004ed6: f640 00c9    	movw	r0, #0x8c9
 8004eda: 9009         	str	r0, [sp, #0x24]
 8004edc: f8ad 4028    	strh.w	r4, [sp, #0x28]
 8004ee0: f8ad 602a    	strh.w	r6, [sp, #0x2a]
 8004ee4: f8ad 402c    	strh.w	r4, [sp, #0x2c]
 8004ee8: f8ad 402e    	strh.w	r4, [sp, #0x2e]
 8004eec: a907         	add	r1, sp, #0x1c
 8004eee: 4648         	mov	r0, r9
 8004ef0: f000 fcf4    	bl	0x80058dc <firmware_image+0x58dc> @ imm = #0x9e8
 8004ef4: 2108         	movs	r1, #0x8
 8004ef6: 4648         	mov	r0, r9
 8004ef8: f000 fc5c    	bl	0x80057b4 <firmware_image+0x57b4> @ imm = #0x8b8
 8004efc: 2108         	movs	r1, #0x8
 8004efe: 4648         	mov	r0, r9
 8004f00: f000 fc9e    	bl	0x8005840 <firmware_image+0x5840> @ imm = #0x93c
 8004f04: 2108         	movs	r1, #0x8
 8004f06: 4648         	mov	r0, r9
 8004f08: f000 fce2    	bl	0x80058d0 <firmware_image+0x58d0> @ imm = #0x9c4
 8004f0c: 2108         	movs	r1, #0x8
 8004f0e: 4648         	mov	r0, r9
 8004f10: f000 fd12    	bl	0x8005938 <firmware_image+0x5938> @ imm = #0xa24
 8004f14: a803         	add	r0, sp, #0xc
 8004f16: f000 fb12    	bl	0x800553e <firmware_image+0x553e> @ imm = #0x624
 8004f1a: f8ad 700c    	strh.w	r7, [sp, #0xc]
 8004f1e: 02a8         	lsls	r0, r5, #0xa
 8004f20: f8ad 000e    	strh.w	r0, [sp, #0xe]
 8004f24: f8ad 4010    	strh.w	r4, [sp, #0x10]
 8004f28: 201c         	movs	r0, #0x1c
 8004f2a: f8ad 0012    	strh.w	r0, [sp, #0x12]
 8004f2e: f8ad 4014    	strh.w	r4, [sp, #0x14]
 8004f32: f8ad 4016    	strh.w	r4, [sp, #0x16]
 8004f36: f8ad 4018    	strh.w	r4, [sp, #0x18]
 8004f3a: a903         	add	r1, sp, #0xc
 8004f3c: 4648         	mov	r0, r9
 8004f3e: f000 4648    	and	r6, r0, #0xc8000000
 8004f42: f000 fd0b    	bl	0x800595c <firmware_image+0x595c> @ imm = #0xa16
 8004f46: 2180         	movs	r1, #0x80
 8004f48: 4648         	mov	r0, r9
 8004f4a: f000 fb40    	bl	0x80055ce <firmware_image+0x55ce> @ imm = #0x680
 8004f4e: 2200         	movs	r2, #0x0
 8004f50: 2180         	movs	r1, #0x80
 8004f52: 4648         	mov	r0, r9
 8004f54: f000 fbe3    	bl	0x800571e <firmware_image+0x571e> @ imm = #0x7c6
 8004f58: 2101         	movs	r1, #0x1
 8004f5a: 4648         	mov	r0, r9
 8004f5c: f000 fbc6    	bl	0x80056ec <firmware_image+0x56ec> @ imm = #0x78c
 8004f60: 2101         	movs	r1, #0x1
 8004f62: 4648         	mov	r0, r9
 8004f64: f000 fbce    	bl	0x8005704 <firmware_image+0x5704> @ imm = #0x79c
 8004f68: 2101         	movs	r1, #0x1
 8004f6a: 4648         	mov	r0, r9
 8004f6c: f000 fb2f    	bl	0x80055ce <firmware_image+0x55ce> @ imm = #0x65e
 8004f70: 2200         	movs	r2, #0x0
 8004f72: 2101         	movs	r1, #0x1
 8004f74: 4648         	mov	r0, r9
 8004f76: f000 fbd2    	bl	0x800571e <firmware_image+0x571e> @ imm = #0x7a4
 8004f7a: 2200         	movs	r2, #0x0
 8004f7c: 2110         	movs	r1, #0x10
 8004f7e: 4648         	mov	r0, r9
 8004f80: f000 fbcd    	bl	0x800571e <firmware_image+0x571e> @ imm = #0x79a
 8004f84: b00f         	add	sp, #0x3c
 8004f86: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
 8004f8a: 0000         	movs	r0, r0
 8004f8c: 0400         	lsls	r0, r0, #0x10
 8004f8e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8004f90 <firmware_image+0x4f90>
 8004f90: 2c00         	cmp	r4, #0x0
 8004f92: 4001         	ands	r1, r0
 8004f94: b510         	push	{r4, lr}
 8004f96: 2004         	movs	r0, #0x4
 8004f98: f7fb fe76    	bl	0x8000c88 <firmware_image+0xc88> @ imm = #-0x4314
 8004f9c: 2201         	movs	r2, #0x1
 8004f9e: 4611         	mov	r1, r2
 8004fa0: 2000         	movs	r0, #0x0
 8004fa2: f7fb fe45    	bl	0x8000c30 <firmware_image+0xc30> @ imm = #-0x4376
 8004fa6: 2201         	movs	r2, #0x1
 8004fa8: 2102         	movs	r1, #0x2
 8004faa: 2008         	movs	r0, #0x8
 8004fac: f7fb fe40    	bl	0x8000c30 <firmware_image+0xc30> @ imm = #-0x4380
 8004fb0: 2201         	movs	r2, #0x1
 8004fb2: 2103         	movs	r1, #0x3
 8004fb4: 2006         	movs	r0, #0x6
 8004fb6: f7fb fe3b    	bl	0x8000c30 <firmware_image+0xc30> @ imm = #-0x438a
 8004fba: 2104         	movs	r1, #0x4
 8004fbc: 2201         	movs	r2, #0x1
 8004fbe: 4608         	mov	r0, r1
 8004fc0: f7fb fe36    	bl	0x8000c30 <firmware_image+0xc30> @ imm = #-0x4394
 8004fc4: f44f 5080    	mov.w	r0, #0x1000
 8004fc8: f7fb fdce    	bl	0x8000b68 <firmware_image+0xb68> @ imm = #-0x4464
 8004fcc: e8bd 4010    	pop.w	{r4, lr}
 8004fd0: 2101         	movs	r1, #0x1
 8004fd2: f44f 6090    	mov.w	r0, #0x480
 8004fd6: f7fb bdf7    	b.w	0x8000bc8 <firmware_image+0xbc8> @ imm = #-0x4412
 8004fda: b51c         	push	{r2, r3, r4, lr}
 8004fdc: 2101         	movs	r1, #0x1
 8004fde: 0448         	lsls	r0, r1, #0x11
 8004fe0: f7ff f9b2    	bl	0x8004348 <firmware_image+0x4348> @ imm = #-0xc9c
 8004fe4: f44f 5080    	mov.w	r0, #0x1000
 8004fe8: 9000         	str	r0, [sp]
 8004fea: 2000         	movs	r0, #0x0
 8004fec: f88d 0004    	strb.w	r0, [sp, #0x4]
 8004ff0: 2103         	movs	r1, #0x3
 8004ff2: f88d 0014    	strb.w	r0, [sp, #0x14]
 8004ff6: f8d9 0014    	ldr.w	r0, [r9, #0x14]
 8004ffa: 280a         	cmp	r0, #0xa
 8004ffc: d9e2         	bls	0x8004fc4 <firmware_image+0x4fc4> @ imm = #-0x3c
 8004ffe: 8cf8         	ldrh	r0, [r7, #0x26]
 8005000: 1005         	asrs	r5, r0, #0x20
 8005002: f88d 0006    	strb.w	r0, [sp, #0x6]
 8005006: 2002         	movs	r0, #0x2
 8005008: f88d 0007    	strb.w	r0, [sp, #0x7]
 800500c: 4669         	mov	r1, sp
 800500e: f04f 4090    	mov.w	r0, #0x48000000
 8005012: f7fd fb53    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x295a
 8005016: bd1c         	pop	{r2, r3, r4, pc}
 8005018: b530         	push	{r4, r5, lr}
 800501a: 4818         	ldr	r0, [pc, #0x60]         @ 0x800507c <firmware_image+0x507c>
 800501c: 7800         	ldrb	r0, [r0]
 800501e: 2800         	cmp	r0, #0x0
 8005020: d023         	beq	0x800506a <firmware_image+0x506a> @ imm = #0x46
 8005022: 4817         	ldr	r0, [pc, #0x5c]         @ 0x8005080 <firmware_image+0x5080>
 8005024: 2401         	movs	r4, #0x1
 8005026: 7b01         	ldrb	r1, [r0, #0xc]
 8005028: b101         	cbz	r1, 0x800502c <firmware_image+0x502c> @ imm = #0x0
 800502a: 72c4         	strb	r4, [r0, #0xb]
 800502c: 7a41         	ldrb	r1, [r0, #0x9]
 800502e: 2300         	movs	r3, #0x0
 8005030: 2911         	cmp	r1, #0x11
 8005032: d01b         	beq	0x800506c <firmware_image+0x506c> @ imm = #0x36
 8005034: 2921         	cmp	r1, #0x21
 8005036: d01c         	beq	0x8005072 <firmware_image+0x5072> @ imm = #0x38
 8005038: 7243         	strb	r3, [r0, #0x9]
 800503a: 4912         	ldr	r1, [pc, #0x48]         @ 0x8005084 <firmware_image+0x5084>
 800503c: 4a12         	ldr	r2, [pc, #0x48]         @ 0x8005088 <firmware_image+0x5088>
 800503e: f991 1000    	ldrsb.w	r1, [r1]
 8005042: f9b2 2000    	ldrsh.w	r2, [r2]
 8005046: ea51 0502    	orrs.w	r5, r1, r2
 800504a: d002         	beq	0x8005052 <firmware_image+0x5052> @ imm = #0x4
 800504c: 2903         	cmp	r1, #0x3
 800504e: d012         	beq	0x8005076 <firmware_image+0x5076> @ imm = #0x24
 8005050: b18a         	cbz	r2, 0x8005076 <firmware_image+0x5076> @ imm = #0x22
 8005052: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x800508c <firmware_image+0x508c>
 8005054: 6981         	ldr	r1, [r0, #0x18]
 8005056: 4291         	cmp	r1, r2
 8005058: d201         	bhs	0x800505e <firmware_image+0x505e> @ imm = #0x2
 800505a: 1c49         	adds	r1, r1, #0x1
 800505c: 6181         	str	r1, [r0, #0x18]
 800505e: 490c         	ldr	r1, [pc, #0x30]         @ 0x8005090 <firmware_image+0x5090>
 8005060: 6982         	ldr	r2, [r0, #0x18]
 8005062: 428a         	cmp	r2, r1
 8005064: d301         	blo	0x800506a <firmware_image+0x506a> @ imm = #0x2
 8005066: 6181         	str	r1, [r0, #0x18]
 8005068: 72c4         	strb	r4, [r0, #0xb]
 800506a: bd30         	pop	{r4, r5, pc}
 800506c: 7243         	strb	r3, [r0, #0x9]
 800506e: 72c4         	strb	r4, [r0, #0xb]
 8005070: e7e3         	b	0x800503a <firmware_image+0x503a> @ imm = #-0x3a
 8005072: 7243         	strb	r3, [r0, #0x9]
 8005074: e7e1         	b	0x800503a <firmware_image+0x503a> @ imm = #-0x3e
 8005076: 6183         	str	r3, [r0, #0x18]
 8005078: bd30         	pop	{r4, r5, pc}
 800507a: 0000         	movs	r0, r0
 800507c: 021e         	lsls	r6, r3, #0x8
 800507e: 2000         	movs	r0, #0x0
 8005080: 0148         	lsls	r0, r1, #0x5
 8005082: 2000         	movs	r0, #0x0
 8005084: 006c         	lsls	r4, r5, #0x1
 8005086: 2000         	movs	r0, #0x0
 8005088: 008a         	lsls	r2, r1, #0x2
 800508a: 2000         	movs	r0, #0x0
 800508c: 4240         	rsbs	r0, r0, #0
 800508e: 000f         	movs	r7, r1
 8005090: 49f0         	ldr	r1, [pc, #0x3c0]        @ 0x8005454 <firmware_image+0x5454>
 8005092: 0002         	movs	r2, r0
 8005094: b570         	push	{r4, r5, r6, lr}
 8005096: 4c13         	ldr	r4, [pc, #0x4c]         @ 0x80050e4 <firmware_image+0x50e4>
 8005098: 2500         	movs	r5, #0x0
 800509a: 4813         	ldr	r0, [pc, #0x4c]         @ 0x80050e8 <firmware_image+0x50e8>
 800509c: 7ae2         	ldrb	r2, [r4, #0xb]
 800509e: f44f 5180    	mov.w	r1, #0x1000
 80050a2: 2a00         	cmp	r2, #0x0
 80050a4: d019         	beq	0x80050da <firmware_image+0x50da> @ imm = #0x32
 80050a6: 8aa2         	ldrh	r2, [r4, #0x14]
 80050a8: f64f 73fe    	movw	r3, #0xfffe
 80050ac: 429a         	cmp	r2, r3
 80050ae: d201         	bhs	0x80050b4 <firmware_image+0x50b4> @ imm = #0x2
 80050b0: 1c52         	adds	r2, r2, #0x1
 80050b2: 82a2         	strh	r2, [r4, #0x14]
 80050b4: 8aa2         	ldrh	r2, [r4, #0x14]
 80050b6: 2a4b         	cmp	r2, #0x4b
 80050b8: d905         	bls	0x80050c6 <firmware_image+0x50c6> @ imm = #0xa
 80050ba: 224b         	movs	r2, #0x4b
 80050bc: 82a2         	strh	r2, [r4, #0x14]
 80050be: f7fd fb50    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x2960
 80050c2: 7125         	strb	r5, [r4, #0x4]
 80050c4: bd70         	pop	{r4, r5, r6, pc}
 80050c6: 7920         	ldrb	r0, [r4, #0x4]
 80050c8: 2800         	cmp	r0, #0x0
 80050ca: d1fb         	bne	0x80050c4 <firmware_image+0x50c4> @ imm = #-0xa
 80050cc: 4907         	ldr	r1, [pc, #0x1c]         @ 0x80050ec <firmware_image+0x50ec>
 80050ce: f241 3088    	movw	r0, #0x1388
 80050d2: 8008         	strh	r0, [r1]
 80050d4: 2001         	movs	r0, #0x1
 80050d6: 7120         	strb	r0, [r4, #0x4]
 80050d8: bd70         	pop	{r4, r5, r6, pc}
 80050da: f7fd fb44    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x2978
 80050de: 82a5         	strh	r5, [r4, #0x14]
 80050e0: 7125         	strb	r5, [r4, #0x4]
 80050e2: bd70         	pop	{r4, r5, r6, pc}
 80050e4: 0148         	lsls	r0, r1, #0x5
 80050e6: 2000         	movs	r0, #0x0
 80050e8: 0400         	lsls	r0, r0, #0x10
 80050ea: 4800         	ldr	r0, [pc, #0x0]          @ 0x80050ec <firmware_image+0x50ec>
 80050ec: 003e         	movs	r6, r7
 80050ee: 2000         	movs	r0, #0x0
 80050f0: 4803         	ldr	r0, [pc, #0xc]          @ 0x8005100 <firmware_image+0x5100>
 80050f2: 7800         	ldrb	r0, [r0]
 80050f4: 2800         	cmp	r0, #0x0
 80050f6: d001         	beq	0x80050fc <firmware_image+0x50fc> @ imm = #0x2
 80050f8: f000 b804    	b.w	0x8005104 <firmware_image+0x5104> @ imm = #0x8
 80050fc: 4770         	bx	lr
 80050fe: 0000         	movs	r0, r0
 8005100: 021e         	lsls	r6, r3, #0x8
 8005102: 2000         	movs	r0, #0x0
 8005104: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8005108: f44f 5180    	mov.w	r1, #0x1000
 800510c: f04f 4090    	mov.w	r0, #0x48000000
 8005110: f7fd fb20    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0x29c0
 8005114: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x80051d4 <firmware_image+0x51d4>
 8005116: 7298         	strb	r0, [r3, #0xa]
 8005118: 799c         	ldrb	r4, [r3, #0x6]
 800511a: ea20 0204    	bic.w	r2, r0, r4
 800511e: 721a         	strb	r2, [r3, #0x8]
 8005120: 4615         	mov	r5, r2
 8005122: 4384         	bics	r4, r0
 8005124: 71dc         	strb	r4, [r3, #0x7]
 8005126: 7198         	strb	r0, [r3, #0x6]
 8005128: 2101         	movs	r1, #0x1
 800512a: f64f 7cfe    	movw	r12, #0xfffe
 800512e: f44f 77fa    	mov.w	r7, #0x1f4
 8005132: 2600         	movs	r6, #0x0
 8005134: b1e8         	cbz	r0, 0x8005172 <firmware_image+0x5172> @ imm = #0x3a
 8005136: 89da         	ldrh	r2, [r3, #0xe]
 8005138: 4562         	cmp	r2, r12
 800513a: d201         	bhs	0x8005140 <firmware_image+0x5140> @ imm = #0x2
 800513c: 1c52         	adds	r2, r2, #0x1
 800513e: 81da         	strh	r2, [r3, #0xe]
 8005140: 89da         	ldrh	r2, [r3, #0xe]
 8005142: 42ba         	cmp	r2, r7
 8005144: d901         	bls	0x800514a <firmware_image+0x514a> @ imm = #0x2
 8005146: 7319         	strb	r1, [r3, #0xc]
 8005148: e01e         	b	0x8005188 <firmware_image+0x5188> @ imm = #0x3c
 800514a: 2af0         	cmp	r2, #0xf0
 800514c: d91c         	bls	0x8005188 <firmware_image+0x5188> @ imm = #0x38
 800514e: 4a22         	ldr	r2, [pc, #0x88]         @ 0x80051d8 <firmware_image+0x51d8>
 8005150: 8812         	ldrh	r2, [r2]
 8005152: 2a05         	cmp	r2, #0x5
 8005154: d201         	bhs	0x800515a <firmware_image+0x515a> @ imm = #0x2
 8005156: 7019         	strb	r1, [r3]
 8005158: e016         	b	0x8005188 <firmware_image+0x5188> @ imm = #0x2c
 800515a: 8a5a         	ldrh	r2, [r3, #0x12]
 800515c: b1a2         	cbz	r2, 0x8005188 <firmware_image+0x5188> @ imm = #0x28
 800515e: 78da         	ldrb	r2, [r3, #0x3]
 8005160: b992         	cbnz	r2, 0x8005188 <firmware_image+0x5188> @ imm = #0x24
 8005162: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x80051dc <firmware_image+0x51dc>
 8005164: 7812         	ldrb	r2, [r2]
 8005166: b10a         	cbz	r2, 0x800516c <firmware_image+0x516c> @ imm = #0x2
 8005168: 7099         	strb	r1, [r3, #0x2]
 800516a: e000         	b	0x800516e <firmware_image+0x516e> @ imm = #0x0
 800516c: 7059         	strb	r1, [r3, #0x1]
 800516e: 70d9         	strb	r1, [r3, #0x3]
 8005170: e00a         	b	0x8005188 <firmware_image+0x5188> @ imm = #0x14
 8005172: 8a1a         	ldrh	r2, [r3, #0x10]
 8005174: 4562         	cmp	r2, r12
 8005176: d201         	bhs	0x800517c <firmware_image+0x517c> @ imm = #0x2
 8005178: 1c52         	adds	r2, r2, #0x1
 800517a: 821a         	strh	r2, [r3, #0x10]
 800517c: 8a1a         	ldrh	r2, [r3, #0x10]
 800517e: 2a32         	cmp	r2, #0x32
 8005180: d900         	bls	0x8005184 <firmware_image+0x5184> @ imm = #0x0
 8005182: 8259         	strh	r1, [r3, #0x12]
 8005184: 81de         	strh	r6, [r3, #0xe]
 8005186: 70de         	strb	r6, [r3, #0x3]
 8005188: 795a         	ldrb	r2, [r3, #0x5]
 800518a: b172         	cbz	r2, 0x80051aa <firmware_image+0x51aa> @ imm = #0x1c
 800518c: 2a01         	cmp	r2, #0x1
 800518e: d010         	beq	0x80051b2 <firmware_image+0x51b2> @ imm = #0x20
 8005190: 2a02         	cmp	r2, #0x2
 8005192: d108         	bne	0x80051a6 <firmware_image+0x51a6> @ imm = #0x10
 8005194: b19c         	cbz	r4, 0x80051be <firmware_image+0x51be> @ imm = #0x26
 8005196: 715e         	strb	r6, [r3, #0x5]
 8005198: 8ad8         	ldrh	r0, [r3, #0x16]
 800519a: 28f0         	cmp	r0, #0xf0
 800519c: d20d         	bhs	0x80051ba <firmware_image+0x51ba> @ imm = #0x1a
 800519e: 82de         	strh	r6, [r3, #0x16]
 80051a0: f044 0010    	orr	r0, r4, #0x10
 80051a4: 7258         	strb	r0, [r3, #0x9]
 80051a6: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 80051aa: 2d00         	cmp	r5, #0x0
 80051ac: d0fb         	beq	0x80051a6 <firmware_image+0x51a6> @ imm = #-0xa
 80051ae: 7159         	strb	r1, [r3, #0x5]
 80051b0: e7f9         	b	0x80051a6 <firmware_image+0x51a6> @ imm = #-0xe
 80051b2: 2002         	movs	r0, #0x2
 80051b4: 7158         	strb	r0, [r3, #0x5]
 80051b6: 82de         	strh	r6, [r3, #0x16]
 80051b8: e7f5         	b	0x80051a6 <firmware_image+0x51a6> @ imm = #-0x16
 80051ba: 82de         	strh	r6, [r3, #0x16]
 80051bc: e7f3         	b	0x80051a6 <firmware_image+0x51a6> @ imm = #-0x1a
 80051be: 8ad9         	ldrh	r1, [r3, #0x16]
 80051c0: 1c49         	adds	r1, r1, #0x1
 80051c2: b289         	uxth	r1, r1
 80051c4: 82d9         	strh	r1, [r3, #0x16]
 80051c6: 42b9         	cmp	r1, r7
 80051c8: d3ed         	blo	0x80051a6 <firmware_image+0x51a6> @ imm = #-0x26
 80051ca: 82de         	strh	r6, [r3, #0x16]
 80051cc: f040 0020    	orr	r0, r0, #0x20
 80051d0: 7258         	strb	r0, [r3, #0x9]
 80051d2: e7e8         	b	0x80051a6 <firmware_image+0x51a6> @ imm = #-0x30
 80051d4: 0148         	lsls	r0, r1, #0x5
 80051d6: 2000         	movs	r0, #0x0
 80051d8: 0004         	movs	r4, r0
 80051da: 2000         	movs	r0, #0x0
 80051dc: 0198         	lsls	r0, r3, #0x6
 80051de: 2000         	movs	r0, #0x0
 80051e0: f3af 8000    	nop.w
 80051e4: b50c         	push	{r2, r3, lr}
 80051e6: 2200         	movs	r2, #0x0
 80051e8: 9201         	str	r2, [sp, #0x4]
 80051ea: 9200         	str	r2, [sp]
 80051ec: 481f         	ldr	r0, [pc, #0x7c]         @ 0x800526c <firmware_image+0x526c>
 80051ee: 6801         	ldr	r1, [r0]
 80051f0: f441 3180    	orr	r1, r1, #0x10000
 80051f4: 6001         	str	r1, [r0]
 80051f6: 14c3         	asrs	r3, r0, #0x13
 80051f8: 6801         	ldr	r1, [r0]
 80051fa: f401 3100    	and	r1, r1, #0x20000
 80051fe: 9100         	str	r1, [sp]
 8005200: 9901         	ldr	r1, [sp, #0x4]
 8005202: 1c49         	adds	r1, r1, #0x1
 8005204: 9101         	str	r1, [sp, #0x4]
 8005206: 9900         	ldr	r1, [sp]
 8005208: b911         	cbnz	r1, 0x8005210 <firmware_image+0x5210> @ imm = #0x4
 800520a: 9901         	ldr	r1, [sp, #0x4]
 800520c: 4299         	cmp	r1, r3
 800520e: d1f3         	bne	0x80051f8 <firmware_image+0x51f8> @ imm = #-0x1a
 8005210: 6801         	ldr	r1, [r0]
 8005212: 0389         	lsls	r1, r1, #0xe
 8005214: d502         	bpl	0x800521c <firmware_image+0x521c> @ imm = #0x4
 8005216: 2101         	movs	r1, #0x1
 8005218: 9100         	str	r1, [sp]
 800521a: e000         	b	0x800521e <firmware_image+0x521e> @ imm = #0x0
 800521c: 2901         	cmp	r1, #0x1
 800521e: d121         	bne	0x8005264 <firmware_image+0x5264> @ imm = #0x42
 8005220: 6841         	ldr	r1, [r0, #0x4]
 8005222: 6041         	str	r1, [r0, #0x4]
 8005224: 6841         	ldr	r1, [r0, #0x4]
 8005226: 6041         	str	r1, [r0, #0x4]
 8005228: 6841         	ldr	r1, [r0, #0x4]
 800522a: 6041         	str	r1, [r0, #0x4]
 800522c: 6841         	ldr	r1, [r0, #0x4]
 800522e: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x800526c <firmware_image+0x526c>
 8005230: 4011         	ands	r1, r2
 8005232: 6041         	str	r1, [r0, #0x4]
 8005234: 6841         	ldr	r1, [r0, #0x4]
 8005236: f441 11e8    	orr	r1, r1, #0x1d0000
 800523a: 6041         	str	r1, [r0, #0x4]
 800523c: 6801         	ldr	r1, [r0]
 800523e: f041 7180    	orr	r1, r1, #0x1000000
 8005242: 6001         	str	r1, [r0]
 8005244: 6801         	ldr	r1, [r0]
 8005246: 0189         	lsls	r1, r1, #0x6
 8005248: d5fc         	bpl	0x8005244 <firmware_image+0x5244> @ imm = #-0x8
 800524a: 6841         	ldr	r1, [r0, #0x4]
 800524c: f021 0103    	bic	r1, r1, #0x3
 8005250: 6041         	str	r1, [r0, #0x4]
 8005252: 6841         	ldr	r1, [r0, #0x4]
 8005254: f041 0102    	orr	r1, r1, #0x2
 8005258: 6041         	str	r1, [r0, #0x4]
 800525a: 6841         	ldr	r1, [r0, #0x4]
 800525c: f3c1 0181    	ubfx	r1, r1, #0x2, #0x2
 8005260: 2902         	cmp	r1, #0x2
 8005262: d1fa         	bne	0x800525a <firmware_image+0x525a> @ imm = #-0xc
 8005264: bd0c         	pop	{r2, r3, pc}
 8005266: 0000         	movs	r0, r0
 8005268: 1000         	asrs	r0, r0, #0x20
 800526a: 4002         	ands	r2, r0
 800526c: ffff f7c0    	<unknown>
 8005270: b510         	push	{r4, lr}
 8005272: 481b         	ldr	r0, [pc, #0x6c]         @ 0x80052e0 <firmware_image+0x52e0>
 8005274: 8981         	ldrh	r1, [r0, #0xc]
 8005276: 1c49         	adds	r1, r1, #0x1
 8005278: 8181         	strh	r1, [r0, #0xc]
 800527a: 7981         	ldrb	r1, [r0, #0x6]
 800527c: 4819         	ldr	r0, [pc, #0x64]         @ 0x80052e4 <firmware_image+0x52e4>
 800527e: 7001         	strb	r1, [r0]
 8005280: 2178         	movs	r1, #0x78
 8005282: 7041         	strb	r1, [r0, #0x1]
 8005284: 4918         	ldr	r1, [pc, #0x60]         @ 0x80052e8 <firmware_image+0x52e8>
 8005286: 8809         	ldrh	r1, [r1]
 8005288: 0a0a         	lsrs	r2, r1, #0x8
 800528a: 7082         	strb	r2, [r0, #0x2]
 800528c: 70c1         	strb	r1, [r0, #0x3]
 800528e: 4917         	ldr	r1, [pc, #0x5c]         @ 0x80052ec <firmware_image+0x52ec>
 8005290: 8809         	ldrh	r1, [r1]
 8005292: 0a0a         	lsrs	r2, r1, #0x8
 8005294: 7102         	strb	r2, [r0, #0x4]
 8005296: 7141         	strb	r1, [r0, #0x5]
 8005298: 4915         	ldr	r1, [pc, #0x54]         @ 0x80052f0 <firmware_image+0x52f0>
 800529a: 8809         	ldrh	r1, [r1]
 800529c: 0a0a         	lsrs	r2, r1, #0x8
 800529e: 7182         	strb	r2, [r0, #0x6]
 80052a0: 71c1         	strb	r1, [r0, #0x7]
 80052a2: 4914         	ldr	r1, [pc, #0x50]         @ 0x80052f4 <firmware_image+0x52f4>
 80052a4: 7809         	ldrb	r1, [r1]
 80052a6: 7201         	strb	r1, [r0, #0x8]
 80052a8: 4913         	ldr	r1, [pc, #0x4c]         @ 0x80052f8 <firmware_image+0x52f8>
 80052aa: 7809         	ldrb	r1, [r1]
 80052ac: 7241         	strb	r1, [r0, #0x9]
 80052ae: 4913         	ldr	r1, [pc, #0x4c]         @ 0x80052fc <firmware_image+0x52fc>
 80052b0: 8809         	ldrh	r1, [r1]
 80052b2: 0a0a         	lsrs	r2, r1, #0x8
 80052b4: 7282         	strb	r2, [r0, #0xa]
 80052b6: 72c1         	strb	r1, [r0, #0xb]
 80052b8: 4911         	ldr	r1, [pc, #0x44]         @ 0x8005300 <firmware_image+0x5300>
 80052ba: 7809         	ldrb	r1, [r1]
 80052bc: 7301         	strb	r1, [r0, #0xc]
 80052be: 4911         	ldr	r1, [pc, #0x44]         @ 0x8005304 <firmware_image+0x5304>
 80052c0: 7809         	ldrb	r1, [r1]
 80052c2: 7341         	strb	r1, [r0, #0xd]
 80052c4: 210e         	movs	r1, #0xe
 80052c6: f001 fdb5    	bl	0x8006e34 <firmware_image+0x6e34> @ imm = #0x1b6a
 80052ca: 4601         	mov	r1, r0
 80052cc: 4805         	ldr	r0, [pc, #0x14]         @ 0x80052e4 <firmware_image+0x52e4>
 80052ce: 300e         	adds	r0, #0xe
 80052d0: f7ff fa73    	bl	0x80047ba <firmware_image+0x47ba> @ imm = #-0xb1a
 80052d4: 2110         	movs	r1, #0x10
 80052d6: e8bd 4010    	pop.w	{r4, lr}
 80052da: 4802         	ldr	r0, [pc, #0x8]          @ 0x80052e4 <firmware_image+0x52e4>
 80052dc: f001 bee8    	b.w	0x80070b0 <firmware_image+0x70b0> @ imm = #0x1dd0
 80052e0: 021e         	lsls	r6, r3, #0x8
 80052e2: 2000         	movs	r0, #0x0
 80052e4: 0478         	lsls	r0, r7, #0x11
 80052e6: 2000         	movs	r0, #0x0
 80052e8: 003c         	movs	r4, r7
 80052ea: 2000         	movs	r0, #0x0
 80052ec: 00a2         	lsls	r2, r4, #0x2
 80052ee: 2000         	movs	r0, #0x0
 80052f0: 0096         	lsls	r6, r2, #0x2
 80052f2: 2000         	movs	r0, #0x0
 80052f4: 0072         	lsls	r2, r6, #0x1
 80052f6: 2000         	movs	r0, #0x0
 80052f8: 0071         	lsls	r1, r6, #0x1
 80052fa: 2000         	movs	r0, #0x0
 80052fc: 009a         	lsls	r2, r3, #0x2
 80052fe: 2000         	movs	r0, #0x0
 8005300: 0141         	lsls	r1, r0, #0x5
 8005302: 2000         	movs	r0, #0x0
 8005304: 016e         	lsls	r6, r5, #0x5
 8005306: 2000         	movs	r0, #0x0
 8005308: b510         	push	{r4, lr}
 800530a: 4812         	ldr	r0, [pc, #0x48]         @ 0x8005354 <firmware_image+0x5354>
 800530c: 220a         	movs	r2, #0xa
 800530e: 4912         	ldr	r1, [pc, #0x48]         @ 0x8005358 <firmware_image+0x5358>
 8005310: f7fd f99c    	bl	0x800264c <firmware_image+0x264c> @ imm = #-0x2cc8
 8005314: 8802         	ldrh	r2, [r0]
 8005316: 800a         	strh	r2, [r1]
 8005318: 8842         	ldrh	r2, [r0, #0x2]
 800531a: 804a         	strh	r2, [r1, #0x2]
 800531c: 8882         	ldrh	r2, [r0, #0x4]
 800531e: 808a         	strh	r2, [r1, #0x4]
 8005320: 1d89         	adds	r1, r1, #0x6
 8005322: 88c2         	ldrh	r2, [r0, #0x6]
 8005324: 800a         	strh	r2, [r1]
 8005326: 8902         	ldrh	r2, [r0, #0x8]
 8005328: 804a         	strh	r2, [r1, #0x2]
 800532a: 8942         	ldrh	r2, [r0, #0xa]
 800532c: 808a         	strh	r2, [r1, #0x4]
 800532e: 3982         	subs	r1, #0x82
 8005330: 8982         	ldrh	r2, [r0, #0xc]
 8005332: 80ca         	strh	r2, [r1, #0x6]
 8005334: 89c2         	ldrh	r2, [r0, #0xe]
 8005336: 810a         	strh	r2, [r1, #0x8]
 8005338: 4908         	ldr	r1, [pc, #0x20]         @ 0x800535c <firmware_image+0x535c>
 800533a: 7809         	ldrb	r1, [r1]
 800533c: 2900         	cmp	r1, #0x0
 800533e: d005         	beq	0x800534c <firmware_image+0x534c> @ imm = #0xa
 8005340: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x8005360 <firmware_image+0x5360>
 8005342: 8a01         	ldrh	r1, [r0, #0x10]
 8005344: 8011         	strh	r1, [r2]
 8005346: 4907         	ldr	r1, [pc, #0x1c]         @ 0x8005364 <firmware_image+0x5364>
 8005348: 8a40         	ldrh	r0, [r0, #0x12]
 800534a: 8008         	strh	r0, [r1]
 800534c: bd10         	pop	{r4, pc}
 800534e: 0000         	movs	r0, r0
 8005350: 7c00         	ldrb	r0, [r0, #0x10]
 8005352: 0800         	lsrs	r0, r0, #0x20
 8005354: 02f4         	lsls	r4, r6, #0xb
 8005356: 2000         	movs	r0, #0x0
 8005358: 0210         	lsls	r0, r2, #0x8
 800535a: 2000         	movs	r0, #0x0
 800535c: 021e         	lsls	r6, r3, #0x8
 800535e: 2000         	movs	r0, #0x0
 8005360: 008a         	lsls	r2, r1, #0x2
 8005362: 2000         	movs	r0, #0x0
 8005364: 008c         	lsls	r4, r1, #0x2
 8005366: 2000         	movs	r0, #0x0
 8005368: b510         	push	{r4, lr}
 800536a: b086         	sub	sp, #0x18
 800536c: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x80053cc <firmware_image+0x53cc>
 800536e: f7fd f94b    	bl	0x8002608 <firmware_image+0x2608> @ imm = #-0x2d6a
 8005372: 4917         	ldr	r1, [pc, #0x5c]         @ 0x80053d0 <firmware_image+0x53d0>
 8005374: 8808         	ldrh	r0, [r1]
 8005376: f8ad 0004    	strh.w	r0, [sp, #0x4]
 800537a: 8848         	ldrh	r0, [r1, #0x2]
 800537c: f8ad 0006    	strh.w	r0, [sp, #0x6]
 8005380: 8888         	ldrh	r0, [r1, #0x4]
 8005382: f8ad 0008    	strh.w	r0, [sp, #0x8]
 8005386: 1d89         	adds	r1, r1, #0x6
 8005388: 8808         	ldrh	r0, [r1]
 800538a: f8ad 000a    	strh.w	r0, [sp, #0xa]
 800538e: 8848         	ldrh	r0, [r1, #0x2]
 8005390: f8ad 000c    	strh.w	r0, [sp, #0xc]
 8005394: 8888         	ldrh	r0, [r1, #0x4]
 8005396: f8ad 000e    	strh.w	r0, [sp, #0xe]
 800539a: 3982         	subs	r1, #0x82
 800539c: 88c8         	ldrh	r0, [r1, #0x6]
 800539e: f8ad 0010    	strh.w	r0, [sp, #0x10]
 80053a2: 8908         	ldrh	r0, [r1, #0x8]
 80053a4: f8ad 0012    	strh.w	r0, [sp, #0x12]
 80053a8: 480a         	ldr	r0, [pc, #0x28]         @ 0x80053d4 <firmware_image+0x53d4>
 80053aa: 7800         	ldrb	r0, [r0]
 80053ac: b138         	cbz	r0, 0x80053be <firmware_image+0x53be> @ imm = #0xe
 80053ae: 480a         	ldr	r0, [pc, #0x28]         @ 0x80053d8 <firmware_image+0x53d8>
 80053b0: 8800         	ldrh	r0, [r0]
 80053b2: f8ad 0014    	strh.w	r0, [sp, #0x14]
 80053b6: 4809         	ldr	r0, [pc, #0x24]         @ 0x80053dc <firmware_image+0x53dc>
 80053b8: 8800         	ldrh	r0, [r0]
 80053ba: f8ad 0016    	strh.w	r0, [sp, #0x16]
 80053be: 220a         	movs	r2, #0xa
 80053c0: a901         	add	r1, sp, #0x4
 80053c2: 4620         	mov	r0, r4
 80053c4: f7fd f952    	bl	0x800266c <firmware_image+0x266c> @ imm = #-0x2d5c
 80053c8: b006         	add	sp, #0x18
 80053ca: bd10         	pop	{r4, pc}
 80053cc: 7c00         	ldrb	r0, [r0, #0x10]
 80053ce: 0800         	lsrs	r0, r0, #0x20
 80053d0: 0210         	lsls	r0, r2, #0x8
 80053d2: 2000         	movs	r0, #0x0
 80053d4: 021e         	lsls	r6, r3, #0x8
 80053d6: 2000         	movs	r0, #0x0
 80053d8: 008a         	lsls	r2, r1, #0x2
 80053da: 2000         	movs	r0, #0x0
 80053dc: 008c         	lsls	r4, r1, #0x2
 80053de: 2000         	movs	r0, #0x0
 80053e0: 2100         	movs	r1, #0x0
 80053e2: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x8005418 <firmware_image+0x5418>
 80053e4: eb01 0041    	add.w	r0, r1, r1, lsl #1
 80053e8: f853 2020    	ldr.w	r2, [r3, r0, lsl #2]
 80053ec: b12a         	cbz	r2, 0x80053fa <firmware_image+0x53fa> @ imm = #0xa
 80053ee: eb03 0080    	add.w	r0, r3, r0, lsl #2
 80053f2: 8882         	ldrh	r2, [r0, #0x4]
 80053f4: b132         	cbz	r2, 0x8005404 <firmware_image+0x5404> @ imm = #0xc
 80053f6: 1e52         	subs	r2, r2, #0x1
 80053f8: 8082         	strh	r2, [r0, #0x4]
 80053fa: 1c49         	adds	r1, r1, #0x1
 80053fc: b289         	uxth	r1, r1
 80053fe: 2914         	cmp	r1, #0x14
 8005400: 8082         	strh	r2, [r0, #0x4]
 8005402: 1c49         	adds	r1, r1, #0x1
 8005404: b289         	uxth	r1, r1
 8005406: 2914         	cmp	r1, #0x14
 8005408: d3f0         	blo	0x80053ec <firmware_image+0x53ec> @ imm = #-0x20
 800540a: 4770         	bx	lr
 800540c: 7a02         	ldrb	r2, [r0, #0x8]
 800540e: 1c52         	adds	r2, r2, #0x1
 8005410: 7202         	strb	r2, [r0, #0x8]
 8005412: 88c2         	ldrh	r2, [r0, #0x6]
 8005414: 2a00         	cmp	r2, #0x0
 8005416: d0f4         	beq	0x8005402 <firmware_image+0x5402> @ imm = #-0x18
 8005418: 1e52         	subs	r2, r2, #0x1
 800541a: 8082         	strh	r2, [r0, #0x4]
 800541c: e7f1         	b	0x8005402 <firmware_image+0x5402> @ imm = #-0x1e
 800541e: 0000         	movs	r0, r0
 8005420: 0308         	lsls	r0, r1, #0xc
 8005422: 2000         	movs	r0, #0x0
 8005424: 4812         	ldr	r0, [pc, #0x48]         @ 0x8005470 <firmware_image+0x5470>
 8005426: 6801         	ldr	r1, [r0]
 8005428: f041 0101    	orr	r1, r1, #0x1
 800542c: 6001         	str	r1, [r0]
 800542e: 6841         	ldr	r1, [r0, #0x4]
 8005430: 4a10         	ldr	r2, [pc, #0x40]         @ 0x8005474 <firmware_image+0x5474>
 8005432: 4011         	ands	r1, r2
 8005434: 6041         	str	r1, [r0, #0x4]
 8005436: 6801         	ldr	r1, [r0]
 8005438: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x8005478 <firmware_image+0x5478>
 800543a: 4011         	ands	r1, r2
 800543c: 6001         	str	r1, [r0]
 800543e: 6801         	ldr	r1, [r0]
 8005440: f421 2180    	bic	r1, r1, #0x40000
 8005444: 6001         	str	r1, [r0]
 8005446: 6841         	ldr	r1, [r0, #0x4]
 8005448: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x800547c <firmware_image+0x547c>
 800544a: 4011         	ands	r1, r2
 800544c: 6041         	str	r1, [r0, #0x4]
 800544e: 6ac1         	ldr	r1, [r0, #0x2c]
 8005450: f021 010f    	bic	r1, r1, #0xf
 8005454: 62c1         	str	r1, [r0, #0x2c]
 8005456: 6b01         	ldr	r1, [r0, #0x30]
 8005458: f240 1243    	movw	r2, #0x143
 800545c: 4391         	bics	r1, r2
 800545e: 6301         	str	r1, [r0, #0x30]
 8005460: 6b41         	ldr	r1, [r0, #0x34]
 8005462: f021 0101    	bic	r1, r1, #0x1
 8005466: 6341         	str	r1, [r0, #0x34]
 8005468: 2100         	movs	r1, #0x0
 800546a: 6081         	str	r1, [r0, #0x8]
 800546c: f7ff beb8    	b.w	0x80051e0 <firmware_image+0x51e0> @ imm = #-0x290
 8005470: 1000         	asrs	r0, r0, #0x20
 8005472: 4002         	ands	r2, r0
 8005474: 000c         	movs	r4, r1
 8005476: 083f         	lsrs	r7, r7, #0x20
 8005478: ffff fef6    	<unknown>
 800547c: ffff f7c0    	<unknown>
 8005480: b510         	push	{r4, lr}
 8005482: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x80054b8 <firmware_image+0x54b8>
 8005484: 2101         	movs	r1, #0x1
 8005486: 4620         	mov	r0, r4
 8005488: f000 f944    	bl	0x8005714 <firmware_image+0x5714> @ imm = #0x288
 800548c: b128         	cbz	r0, 0x800549a <firmware_image+0x549a> @ imm = #0xa
 800548e: 2101         	movs	r1, #0x1
 8005490: 4620         	mov	r0, r4
 8005492: f000 f8a2    	bl	0x80055da <firmware_image+0x55da> @ imm = #0x144
 8005496: f7ff fa95    	bl	0x80049c4 <firmware_image+0x49c4> @ imm = #-0xad6
 800549a: 2180         	movs	r1, #0x80
 800549c: 4620         	mov	r0, r4
 800549e: f000 f939    	bl	0x8005714 <firmware_image+0x5714> @ imm = #0x272
 80054a2: 2800         	cmp	r0, #0x0
 80054a4: d007         	beq	0x80054b6 <firmware_image+0x54b6> @ imm = #0xe
 80054a6: 2180         	movs	r1, #0x80
 80054a8: 4620         	mov	r0, r4
 80054aa: f000 f896    	bl	0x80055da <firmware_image+0x55da> @ imm = #0x12c
 80054ae: 4803         	ldr	r0, [pc, #0xc]          @ 0x80054bc <firmware_image+0x54bc>
 80054b0: 8941         	ldrh	r1, [r0, #0xa]
 80054b2: 1c49         	adds	r1, r1, #0x1
 80054b4: 8141         	strh	r1, [r0, #0xa]
 80054b6: bd10         	pop	{r4, pc}
 80054b8: 2c00         	cmp	r4, #0x0
 80054ba: 4001         	ands	r1, r0
 80054bc: 0298         	lsls	r0, r3, #0xa
 80054be: 2000         	movs	r0, #0x0
 80054c0: b510         	push	{r4, lr}
 80054c2: f04f 4080    	mov.w	r0, #0x40000000
 80054c6: 8a01         	ldrh	r1, [r0, #0x10]
 80054c8: f021 0101    	bic	r1, r1, #0x1
 80054cc: 8201         	strh	r1, [r0, #0x10]
 80054ce: 4907         	ldr	r1, [pc, #0x1c]         @ 0x80054ec <firmware_image+0x54ec>
 80054d0: 88c8         	ldrh	r0, [r1, #0x6]
 80054d2: 1c40         	adds	r0, r0, #0x1
 80054d4: 80c8         	strh	r0, [r1, #0x6]
 80054d6: f7fd f997    	bl	0x8002808 <firmware_image+0x2808> @ imm = #-0x2cd2
 80054da: 4805         	ldr	r0, [pc, #0x14]         @ 0x80054f0 <firmware_image+0x54f0>
 80054dc: 7800         	ldrb	r0, [r0]
 80054de: 2800         	cmp	r0, #0x0
 80054e0: d103         	bne	0x80054ea <firmware_image+0x54ea> @ imm = #0x6
 80054e2: e8bd 4010    	pop.w	{r4, lr}
 80054e6: f7fc bed3    	b.w	0x8002290 <firmware_image+0x2290> @ imm = #-0x325a
 80054ea: bd10         	pop	{r4, pc}
 80054ec: 02b0         	lsls	r0, r6, #0xa
 80054ee: 2000         	movs	r0, #0x0
 80054f0: 021e         	lsls	r6, r3, #0x8
 80054f2: 2000         	movs	r0, #0x0
 80054f4: b510         	push	{r4, lr}
 80054f6: 4c09         	ldr	r4, [pc, #0x24]         @ 0x800551c <firmware_image+0x551c>
 80054f8: 2101         	movs	r1, #0x1
 80054fa: 4620         	mov	r0, r4
 80054fc: f000 f90a    	bl	0x8005714 <firmware_image+0x5714> @ imm = #0x214
 8005500: 2800         	cmp	r0, #0x0
 8005502: d009         	beq	0x8005518 <firmware_image+0x5518> @ imm = #0x12
 8005504: 2101         	movs	r1, #0x1
 8005506: 4620         	mov	r0, r4
 8005508: f000 f867    	bl	0x80055da <firmware_image+0x55da> @ imm = #0xce
 800550c: f7fc fb9c    	bl	0x8001c48 <firmware_image+0x1c48> @ imm = #-0x38c8
 8005510: 4803         	ldr	r0, [pc, #0xc]          @ 0x8005520 <firmware_image+0x5520>
 8005512: 8941         	ldrh	r1, [r0, #0xa]
 8005514: 1c49         	adds	r1, r1, #0x1
 8005516: 8141         	strh	r1, [r0, #0xa]
 8005518: bd10         	pop	{r4, pc}
 800551a: 0000         	movs	r0, r0
 800551c: 0400         	lsls	r0, r0, #0x10
 800551e: 4000         	ands	r0, r0
 8005520: 0038         	movs	r0, r7
 8005522: 2000         	movs	r0, #0x0
 8005524: b510         	push	{r4, lr}
 8005526: 880a         	ldrh	r2, [r1]
 8005528: 884b         	ldrh	r3, [r1, #0x2]
 800552a: 88cc         	ldrh	r4, [r1, #0x6]
 800552c: 431a         	orrs	r2, r3
 800552e: 888b         	ldrh	r3, [r1, #0x4]
 8005530: 4323         	orrs	r3, r4
 8005532: 431a         	orrs	r2, r3
 8005534: 890b         	ldrh	r3, [r1, #0x8]
 8005536: 431a         	orrs	r2, r3
 8005538: 894b         	ldrh	r3, [r1, #0xa]
 800553a: 8989         	ldrh	r1, [r1, #0xc]
 800553c: 431a         	orrs	r2, r3
 800553e: 430a         	orrs	r2, r1
 8005540: f8a0 2044    	strh.w	r2, [r0, #0x44]
 8005544: bd10         	pop	{r4, pc}
 8005546: 2100         	movs	r1, #0x0
 8005548: 8001         	strh	r1, [r0]
 800554a: 8041         	strh	r1, [r0, #0x2]
 800554c: 8081         	strh	r1, [r0, #0x4]
 800554e: 80c1         	strh	r1, [r0, #0x6]
 8005550: 8101         	strh	r1, [r0, #0x8]
 8005552: 8141         	strh	r1, [r0, #0xa]
 8005554: 8181         	strh	r1, [r0, #0xc]
 8005556: 4770         	bx	lr
 8005558: b510         	push	{r4, lr}
 800555a: 8802         	ldrh	r2, [r0]
 800555c: 4c14         	ldr	r4, [pc, #0x50]         @ 0x80055b0 <firmware_image+0x55b0>
 800555e: 42a0         	cmp	r0, r4
 8005560: d005         	beq	0x800556e <firmware_image+0x556e> @ imm = #0xa
 8005562: f1b0 4f80    	cmp.w	r0, #0x40000000
 8005566: d002         	beq	0x800556e <firmware_image+0x556e> @ imm = #0x4
 8005568: 4b12         	ldr	r3, [pc, #0x48]         @ 0x80055b4 <firmware_image+0x55b4>
 800556a: 4298         	cmp	r0, r3
 800556c: d103         	bne	0x8005576 <firmware_image+0x5576> @ imm = #0x6
 800556e: f022 0370    	bic	r3, r2, #0x70
 8005572: 884a         	ldrh	r2, [r1, #0x2]
 8005574: 431a         	orrs	r2, r3
 8005576: 4b10         	ldr	r3, [pc, #0x40]         @ 0x80055b8 <firmware_image+0x55b8>
 8005578: 4298         	cmp	r0, r3
 800557a: d003         	beq	0x8005584 <firmware_image+0x5584> @ imm = #0x6
 800557c: f422 7340    	bic	r3, r2, #0x300
 8005580: 890a         	ldrh	r2, [r1, #0x8]
 8005582: 431a         	orrs	r2, r3
 8005584: 8002         	strh	r2, [r0]
 8005586: 684a         	ldr	r2, [r1, #0x4]
 8005588: 62c2         	str	r2, [r0, #0x2c]
 800558a: 880a         	ldrh	r2, [r1]
 800558c: 8502         	strh	r2, [r0, #0x28]
 800558e: 42a0         	cmp	r0, r4
 8005590: d008         	beq	0x80055a4 <firmware_image+0x55a4> @ imm = #0x10
 8005592: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x80055bc <firmware_image+0x55bc>
 8005594: 4290         	cmp	r0, r2
 8005596: d005         	beq	0x80055a4 <firmware_image+0x55a4> @ imm = #0xa
 8005598: 4a09         	ldr	r2, [pc, #0x24]         @ 0x80055c0 <firmware_image+0x55c0>
 800559a: 4290         	cmp	r0, r2
 800559c: d002         	beq	0x80055a4 <firmware_image+0x55a4> @ imm = #0x4
 800559e: 4a09         	ldr	r2, [pc, #0x24]         @ 0x80055c4 <firmware_image+0x55c4>
 80055a0: 4290         	cmp	r0, r2
 80055a2: d101         	bne	0x80055a8 <firmware_image+0x55a8> @ imm = #0x2
 80055a4: 7a89         	ldrb	r1, [r1, #0xa]
 80055a6: 8601         	strh	r1, [r0, #0x30]
 80055a8: 2101         	movs	r1, #0x1
 80055aa: 8281         	strh	r1, [r0, #0x14]
 80055ac: bd10         	pop	{r4, pc}
 80055ae: 0000         	movs	r0, r0
 80055b0: 2c00         	cmp	r4, #0x0
 80055b2: 4001         	ands	r1, r0
 80055b4: 0400         	lsls	r0, r0, #0x10
 80055b6: 4000         	ands	r0, r0
 80055b8: 1000         	asrs	r0, r0, #0x20
 80055ba: 4000         	ands	r0, r0
 80055bc: 4000         	ands	r0, r0
 80055be: 4001         	ands	r1, r0
 80055c0: 4400         	add	r0, r0
 80055c2: 4001         	ands	r1, r0
 80055c4: 4800         	ldr	r0, [pc, #0x0]          @ 0x80055c8 <firmware_image+0x55c8>
 80055c6: 4001         	ands	r1, r0
 80055c8: f04f 31ff    	mov.w	r1, #0xffffffff
 80055cc: 6041         	str	r1, [r0, #0x4]
 80055ce: 2100         	movs	r1, #0x0
 80055d0: 8001         	strh	r1, [r0]
 80055d2: 8101         	strh	r1, [r0, #0x8]
 80055d4: 8041         	strh	r1, [r0, #0x2]
 80055d6: 7281         	strb	r1, [r0, #0xa]
 80055d8: 4770         	bx	lr
 80055da: 43c9         	mvns	r1, r1
 80055dc: 8201         	strh	r1, [r0, #0x10]
 80055de: 4770         	bx	lr
 80055e0: 2900         	cmp	r1, #0x0
 80055e2: d005         	beq	0x80055f0 <firmware_image+0x55f0> @ imm = #0xa
 80055e4: f830 1f44    	ldrh	r1, [r0, #68]!
 80055e8: f441 4100    	orr	r1, r1, #0x8000
 80055ec: 8001         	strh	r1, [r0]
 80055ee: 4770         	bx	lr
 80055f0: f830 1f44    	ldrh	r1, [r0, #68]!
 80055f4: f3c1 010e    	ubfx	r1, r1, #0x0, #0xf
 80055f8: 8001         	strh	r1, [r0]
 80055fa: 4770         	bx	lr
 80055fc: b510         	push	{r4, lr}
 80055fe: 4937         	ldr	r1, [pc, #0xdc]         @ 0x80056dc <firmware_image+0x56dc>
 8005600: 4288         	cmp	r0, r1
 8005602: d10a         	bne	0x800561a <firmware_image+0x561a> @ imm = #0x14
 8005604: 14c4         	asrs	r4, r0, #0x13
 8005606: 2101         	movs	r1, #0x1
 8005608: 4620         	mov	r0, r4
 800560a: f7fe feef    	bl	0x80043ec <firmware_image+0x43ec> @ imm = #-0x1222
 800560e: 4620         	mov	r0, r4
 8005610: e8bd 4010    	pop.w	{r4, lr}
 8005614: 2100         	movs	r1, #0x0
 8005616: f7fe bee9    	b.w	0x80043ec <firmware_image+0x43ec> @ imm = #-0x122e
 800561a: f1b0 4f80    	cmp.w	r0, #0x40000000
 800561e: d00c         	beq	0x800563a <firmware_image+0x563a> @ imm = #0x18
 8005620: 492f         	ldr	r1, [pc, #0xbc]         @ 0x80056e0 <firmware_image+0x56e0>
 8005622: 4288         	cmp	r0, r1
 8005624: d113         	bne	0x800564e <firmware_image+0x564e> @ imm = #0x26
 8005626: 2101         	movs	r1, #0x1
 8005628: 2002         	movs	r0, #0x2
 800562a: f7fe feb9    	bl	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x128e
 800562e: 2100         	movs	r1, #0x0
 8005630: e8bd 4010    	pop.w	{r4, lr}
 8005634: 2002         	movs	r0, #0x2
 8005636: f7fe beb3    	b.w	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x129a
 800563a: 2101         	movs	r1, #0x1
 800563c: 4608         	mov	r0, r1
 800563e: f7fe feaf    	bl	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x12a2
 8005642: 2100         	movs	r1, #0x0
 8005644: e8bd 4010    	pop.w	{r4, lr}
 8005648: 2001         	movs	r0, #0x1
 800564a: f7fe bea9    	b.w	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x12ae
 800564e: 4925         	ldr	r1, [pc, #0x94]         @ 0x80056e4 <firmware_image+0x56e4>
 8005650: 4288         	cmp	r0, r1
 8005652: d109         	bne	0x8005668 <firmware_image+0x5668> @ imm = #0x12
 8005654: 2101         	movs	r1, #0x1
 8005656: 2010         	movs	r0, #0x10
 8005658: f7fe fea2    	bl	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x12bc
 800565c: 2100         	movs	r1, #0x0
 800565e: e8bd 4010    	pop.w	{r4, lr}
 8005662: 2010         	movs	r0, #0x10
 8005664: f7fe be9c    	b.w	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x12c8
 8005668: 491f         	ldr	r1, [pc, #0x7c]         @ 0x80056e8 <firmware_image+0x56e8>
 800566a: 4288         	cmp	r0, r1
 800566c: d10a         	bne	0x8005684 <firmware_image+0x5684> @ imm = #0x14
 800566e: 1584         	asrs	r4, r0, #0x16
 8005670: 2101         	movs	r1, #0x1
 8005672: 4620         	mov	r0, r4
 8005674: f7fe fe94    	bl	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x12d8
 8005678: 4620         	mov	r0, r4
 800567a: e8bd 4010    	pop.w	{r4, lr}
 800567e: 2100         	movs	r1, #0x0
 8005680: f7fe be8e    	b.w	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x12e4
 8005684: 4919         	ldr	r1, [pc, #0x64]         @ 0x80056ec <firmware_image+0x56ec>
 8005686: 4288         	cmp	r0, r1
 8005688: d10a         	bne	0x80056a0 <firmware_image+0x56a0> @ imm = #0x14
 800568a: 2101         	movs	r1, #0x1
 800568c: 040c         	lsls	r4, r1, #0x10
 800568e: 4620         	mov	r0, r4
 8005690: f7fe feac    	bl	0x80043ec <firmware_image+0x43ec> @ imm = #-0x12a8
 8005694: 4620         	mov	r0, r4
 8005696: e8bd 4010    	pop.w	{r4, lr}
 800569a: 2100         	movs	r1, #0x0
 800569c: f7fe bea6    	b.w	0x80043ec <firmware_image+0x43ec> @ imm = #-0x12b4
 80056a0: 4913         	ldr	r1, [pc, #0x4c]         @ 0x80056f0 <firmware_image+0x56f0>
 80056a2: 4288         	cmp	r0, r1
 80056a4: d10a         	bne	0x80056bc <firmware_image+0x56bc> @ imm = #0x14
 80056a6: 2101         	movs	r1, #0x1
 80056a8: 044c         	lsls	r4, r1, #0x11
 80056aa: 4620         	mov	r0, r4
 80056ac: f7fe fe9e    	bl	0x80043ec <firmware_image+0x43ec> @ imm = #-0x12c4
 80056b0: 4620         	mov	r0, r4
 80056b2: e8bd 4010    	pop.w	{r4, lr}
 80056b6: 2100         	movs	r1, #0x0
 80056b8: f7fe be98    	b.w	0x80043ec <firmware_image+0x43ec> @ imm = #-0x12d0
 80056bc: 490d         	ldr	r1, [pc, #0x34]         @ 0x80056f4 <firmware_image+0x56f4>
 80056be: 4288         	cmp	r0, r1
 80056c0: d10a         	bne	0x80056d8 <firmware_image+0x56d8> @ imm = #0x14
 80056c2: 2101         	movs	r1, #0x1
 80056c4: 048c         	lsls	r4, r1, #0x12
 80056c6: 4620         	mov	r0, r4
 80056c8: f7fe fe90    	bl	0x80043ec <firmware_image+0x43ec> @ imm = #-0x12e0
 80056cc: 4620         	mov	r0, r4
 80056ce: e8bd 4010    	pop.w	{r4, lr}
 80056d2: 2100         	movs	r1, #0x0
 80056d4: f7fe be8a    	b.w	0x80043ec <firmware_image+0x43ec> @ imm = #-0x12ec
 80056d8: bd10         	pop	{r4, pc}
 80056da: 0000         	movs	r0, r0
 80056dc: 2c00         	cmp	r4, #0x0
 80056de: 4001         	ands	r1, r0
 80056e0: 0400         	lsls	r0, r0, #0x10
 80056e2: 4000         	ands	r0, r0
 80056e4: 1000         	asrs	r0, r0, #0x20
 80056e6: 4000         	ands	r0, r0
 80056e8: 2000         	movs	r0, #0x0
 80056ea: 4000         	ands	r0, r0
 80056ec: 4000         	ands	r0, r0
 80056ee: 4001         	ands	r1, r0
 80056f0: 4400         	add	r0, r0
 80056f2: 4001         	ands	r1, r0
 80056f4: 4800         	ldr	r0, [pc, #0x0]          @ 0x80056f8 <firmware_image+0x56f8>
 80056f6: 4001         	ands	r1, r0
 80056f8: 2900         	cmp	r1, #0x0
 80056fa: d004         	beq	0x8005706 <firmware_image+0x5706> @ imm = #0x8
 80056fc: 8801         	ldrh	r1, [r0]
 80056fe: f041 0101    	orr	r1, r1, #0x1
 8005702: 8001         	strh	r1, [r0]
 8005704: 4770         	bx	lr
 8005706: 8801         	ldrh	r1, [r0]
 8005708: f021 0101    	bic	r1, r1, #0x1
 800570c: 8001         	strh	r1, [r0]
 800570e: 4770         	bx	lr
 8005710: 8281         	strh	r1, [r0, #0x14]
 8005712: 4770         	bx	lr
 8005714: 8a02         	ldrh	r2, [r0, #0x10]
 8005716: 400a         	ands	r2, r1
 8005718: 8980         	ldrh	r0, [r0, #0xc]
 800571a: 4008         	ands	r0, r1
 800571c: 2a00         	cmp	r2, #0x0
 800571e: d002         	beq	0x8005726 <firmware_image+0x5726> @ imm = #0x4
 8005720: b108         	cbz	r0, 0x8005726 <firmware_image+0x5726> @ imm = #0x2
 8005722: 2001         	movs	r0, #0x1
 8005724: 4770         	bx	lr
 8005726: 2000         	movs	r0, #0x0
 8005728: 4770         	bx	lr
 800572a: 2a00         	cmp	r2, #0x0
 800572c: d003         	beq	0x8005736 <firmware_image+0x5736> @ imm = #0x6
 800572e: 8982         	ldrh	r2, [r0, #0xc]
 8005730: 430a         	orrs	r2, r1
 8005732: 8182         	strh	r2, [r0, #0xc]
 8005734: 4770         	bx	lr
 8005736: 8982         	ldrh	r2, [r0, #0xc]
 8005738: 438a         	bics	r2, r1
 800573a: 8182         	strh	r2, [r0, #0xc]
 800573c: 4770         	bx	lr
 800573e: 0000         	movs	r0, r0
 8005740: b530         	push	{r4, r5, lr}
 8005742: 8c02         	ldrh	r2, [r0, #0x20]
 8005744: f022 0201    	bic	r2, r2, #0x1
 8005748: 8402         	strh	r2, [r0, #0x20]
 800574a: 8c02         	ldrh	r2, [r0, #0x20]
 800574c: 8883         	ldrh	r3, [r0, #0x4]
 800574e: 8b04         	ldrh	r4, [r0, #0x18]
 8005750: f024 0470    	bic	r4, r4, #0x70
 8005754: f024 0503    	bic	r5, r4, #0x3
 8005758: 880c         	ldrh	r4, [r1]
 800575a: 432c         	orrs	r4, r5
 800575c: f022 0202    	bic	r2, r2, #0x2
 8005760: 898d         	ldrh	r5, [r1, #0xc]
 8005762: 4315         	orrs	r5, r2
 8005764: 884a         	ldrh	r2, [r1, #0x2]
 8005766: 432a         	orrs	r2, r5
 8005768: 4d10         	ldr	r5, [pc, #0x40]         @ 0x80057ac <firmware_image+0x57ac>
 800576a: 42a8         	cmp	r0, r5
 800576c: d008         	beq	0x8005780 <firmware_image+0x5780> @ imm = #0x10
 800576e: 4d10         	ldr	r5, [pc, #0x40]         @ 0x80057b0 <firmware_image+0x57b0>
 8005770: 42a8         	cmp	r0, r5
 8005772: d005         	beq	0x8005780 <firmware_image+0x5780> @ imm = #0xa
 8005774: 4d0f         	ldr	r5, [pc, #0x3c]         @ 0x80057b4 <firmware_image+0x57b4>
 8005776: 42a8         	cmp	r0, r5
 8005778: d002         	beq	0x8005780 <firmware_image+0x5780> @ imm = #0x4
 800577a: 4d0f         	ldr	r5, [pc, #0x3c]         @ 0x80057b8 <firmware_image+0x57b8>
 800577c: 42a8         	cmp	r0, r5
 800577e: d10f         	bne	0x80057a0 <firmware_image+0x57a0> @ imm = #0x1e
 8005780: f022 0508    	bic	r5, r2, #0x8
 8005784: 89ca         	ldrh	r2, [r1, #0xe]
 8005786: 432a         	orrs	r2, r5
 8005788: f022 0504    	bic	r5, r2, #0x4
 800578c: 888a         	ldrh	r2, [r1, #0x4]
 800578e: 432a         	orrs	r2, r5
 8005790: f423 7380    	bic	r3, r3, #0x100
 8005794: f423 7300    	bic	r3, r3, #0x200
 8005798: 8a0d         	ldrh	r5, [r1, #0x10]
 800579a: 431d         	orrs	r5, r3
 800579c: 8a4b         	ldrh	r3, [r1, #0x12]
 800579e: 432b         	orrs	r3, r5
 80057a0: 8083         	strh	r3, [r0, #0x4]
 80057a2: 8304         	strh	r4, [r0, #0x18]
 80057a4: 6889         	ldr	r1, [r1, #0x8]
 80057a6: 6341         	str	r1, [r0, #0x34]
 80057a8: 8402         	strh	r2, [r0, #0x20]
 80057aa: bd30         	pop	{r4, r5, pc}
 80057ac: 2c00         	cmp	r4, #0x0
 80057ae: 4001         	ands	r1, r0
 80057b0: 4000         	ands	r0, r0
 80057b2: 4001         	ands	r1, r0
 80057b4: 4400         	add	r0, r0
 80057b6: 4001         	ands	r1, r0
 80057b8: 4800         	ldr	r0, [pc, #0x0]          @ 0x80057bc <firmware_image+0x57bc>
 80057ba: 4001         	ands	r1, r0
 80057bc: 8b02         	ldrh	r2, [r0, #0x18]
 80057be: f022 0208    	bic	r2, r2, #0x8
 80057c2: 430a         	orrs	r2, r1
 80057c4: 8302         	strh	r2, [r0, #0x18]
 80057c6: 4770         	bx	lr
 80057c8: b570         	push	{r4, r5, r6, lr}
 80057ca: 8c02         	ldrh	r2, [r0, #0x20]
 80057cc: f022 0210    	bic	r2, r2, #0x10
 80057d0: 8402         	strh	r2, [r0, #0x20]
 80057d2: 8c02         	ldrh	r2, [r0, #0x20]
 80057d4: 8883         	ldrh	r3, [r0, #0x4]
 80057d6: 8b04         	ldrh	r4, [r0, #0x18]
 80057d8: f424 44e0    	bic	r4, r4, #0x7000
 80057dc: f424 7640    	bic	r6, r4, #0x300
 80057e0: 880d         	ldrh	r5, [r1]
 80057e2: f64f 74ff    	movw	r4, #0xffff
 80057e6: ea04 2505    	and.w	r5, r4, r5, lsl #8
 80057ea: 4335         	orrs	r5, r6
 80057ec: f022 0220    	bic	r2, r2, #0x20
 80057f0: 898e         	ldrh	r6, [r1, #0xc]
 80057f2: ea04 1606    	and.w	r6, r4, r6, lsl #4
 80057f6: 4316         	orrs	r6, r2
 80057f8: 884a         	ldrh	r2, [r1, #0x2]
 80057fa: ea04 1202    	and.w	r2, r4, r2, lsl #4
 80057fe: 4332         	orrs	r2, r6
 8005800: 4e10         	ldr	r6, [pc, #0x40]         @ 0x8005844 <firmware_image+0x5844>
 8005802: 42b0         	cmp	r0, r6
 8005804: d117         	bne	0x8005836 <firmware_image+0x5836> @ imm = #0x2e
 8005806: f022 0680    	bic	r6, r2, #0x80
 800580a: 89ca         	ldrh	r2, [r1, #0xe]
 800580c: ea04 1202    	and.w	r2, r4, r2, lsl #4
 8005810: 4332         	orrs	r2, r6
 8005812: f022 0640    	bic	r6, r2, #0x40
 8005816: 888a         	ldrh	r2, [r1, #0x4]
 8005818: ea04 1202    	and.w	r2, r4, r2, lsl #4
 800581c: 4332         	orrs	r2, r6
 800581e: f423 6380    	bic	r3, r3, #0x400
 8005822: f423 6300    	bic	r3, r3, #0x800
 8005826: 8a0e         	ldrh	r6, [r1, #0x10]
 8005828: ea04 0686    	and.w	r6, r4, r6, lsl #2
 800582c: 431e         	orrs	r6, r3
 800582e: 8a4b         	ldrh	r3, [r1, #0x12]
 8005830: ea04 0383    	and.w	r3, r4, r3, lsl #2
 8005834: 4333         	orrs	r3, r6
 8005836: 8083         	strh	r3, [r0, #0x4]
 8005838: 8305         	strh	r5, [r0, #0x18]
 800583a: 6889         	ldr	r1, [r1, #0x8]
 800583c: 6381         	str	r1, [r0, #0x38]
 800583e: 8402         	strh	r2, [r0, #0x20]
 8005840: bd70         	pop	{r4, r5, r6, pc}
 8005842: 0000         	movs	r0, r0
 8005844: 2c00         	cmp	r4, #0x0
 8005846: 4001         	ands	r1, r0
 8005848: 8b02         	ldrh	r2, [r0, #0x18]
 800584a: f422 6200    	bic	r2, r2, #0x800
 800584e: f64f 73ff    	movw	r3, #0xffff
 8005852: ea03 2101    	and.w	r1, r3, r1, lsl #8
 8005856: 4311         	orrs	r1, r2
 8005858: 8301         	strh	r1, [r0, #0x18]
 800585a: 4770         	bx	lr
 800585c: b570         	push	{r4, r5, r6, lr}
 800585e: 8c02         	ldrh	r2, [r0, #0x20]
 8005860: f422 7280    	bic	r2, r2, #0x100
 8005864: 8402         	strh	r2, [r0, #0x20]
 8005866: 8c02         	ldrh	r2, [r0, #0x20]
 8005868: 8883         	ldrh	r3, [r0, #0x4]
 800586a: 8b84         	ldrh	r4, [r0, #0x1c]
 800586c: f024 0470    	bic	r4, r4, #0x70
 8005870: f024 0403    	bic	r4, r4, #0x3
 8005874: 880d         	ldrh	r5, [r1]
 8005876: 4325         	orrs	r5, r4
 8005878: f422 7200    	bic	r2, r2, #0x200
 800587c: 898e         	ldrh	r6, [r1, #0xc]
 800587e: f64f 74ff    	movw	r4, #0xffff
 8005882: ea04 2606    	and.w	r6, r4, r6, lsl #8
 8005886: 4316         	orrs	r6, r2
 8005888: 884a         	ldrh	r2, [r1, #0x2]
 800588a: ea04 2710    	and.w	r7, r4, r0, lsr #8
 800588e: 90b8         	str	r0, [sp, #0x2e0]
 8005890: d117         	bne	0x80058c2 <firmware_image+0x58c2> @ imm = #0x2e
 8005892: f422 6600    	bic	r6, r2, #0x800
 8005896: 89ca         	ldrh	r2, [r1, #0xe]
 8005898: ea04 2202    	and.w	r2, r4, r2, lsl #8
 800589c: 4332         	orrs	r2, r6
 800589e: f422 6680    	bic	r6, r2, #0x400
 80058a2: 888a         	ldrh	r2, [r1, #0x4]
 80058a4: ea04 2202    	and.w	r2, r4, r2, lsl #8
 80058a8: 4332         	orrs	r2, r6
 80058aa: f423 5380    	bic	r3, r3, #0x1000
 80058ae: f423 5300    	bic	r3, r3, #0x2000
 80058b2: 8a0e         	ldrh	r6, [r1, #0x10]
 80058b4: ea04 1606    	and.w	r6, r4, r6, lsl #4
 80058b8: 431e         	orrs	r6, r3
 80058ba: 8a4b         	ldrh	r3, [r1, #0x12]
 80058bc: ea04 1303    	and.w	r3, r4, r3, lsl #4
 80058c0: 4333         	orrs	r3, r6
 80058c2: 8083         	strh	r3, [r0, #0x4]
 80058c4: 8385         	strh	r5, [r0, #0x1c]
 80058c6: 6889         	ldr	r1, [r1, #0x8]
 80058c8: 63c1         	str	r1, [r0, #0x3c]
 80058ca: 8402         	strh	r2, [r0, #0x20]
 80058cc: bd70         	pop	{r4, r5, r6, pc}
 80058ce: 0000         	movs	r0, r0
 80058d0: 2c00         	cmp	r4, #0x0
 80058d2: 4001         	ands	r1, r0
 80058d4: 8b82         	ldrh	r2, [r0, #0x1c]
 80058d6: f022 0208    	bic	r2, r2, #0x8
 80058da: 430a         	orrs	r2, r1
 80058dc: 8382         	strh	r2, [r0, #0x1c]
 80058de: 4770         	bx	lr
 80058e0: b570         	push	{r4, r5, r6, lr}
 80058e2: 8c02         	ldrh	r2, [r0, #0x20]
 80058e4: f422 5280    	bic	r2, r2, #0x1000
 80058e8: 8402         	strh	r2, [r0, #0x20]
 80058ea: 8c05         	ldrh	r5, [r0, #0x20]
 80058ec: 8882         	ldrh	r2, [r0, #0x4]
 80058ee: 8b83         	ldrh	r3, [r0, #0x1c]
 80058f0: f423 43e0    	bic	r3, r3, #0x7000
 80058f4: f423 7640    	bic	r6, r3, #0x300
 80058f8: 880c         	ldrh	r4, [r1]
 80058fa: f64f 73ff    	movw	r3, #0xffff
 80058fe: ea03 2404    	and.w	r4, r3, r4, lsl #8
 8005902: 4334         	orrs	r4, r6
 8005904: f425 5500    	bic	r5, r5, #0x2000
 8005908: 898e         	ldrh	r6, [r1, #0xc]
 800590a: ea03 3606    	and.w	r6, r3, r6, lsl #12
 800590e: 432e         	orrs	r6, r5
 8005910: 884d         	ldrh	r5, [r1, #0x2]
 8005912: ea03 3505    	and.w	r5, r3, r5, lsl #12
 8005916: 4335         	orrs	r5, r6
 8005918: 4e07         	ldr	r6, [pc, #0x1c]         @ 0x8005938 <firmware_image+0x5938>
 800591a: 42b0         	cmp	r0, r6
 800591c: d105         	bne	0x800592a <firmware_image+0x592a> @ imm = #0xa
 800591e: f422 4680    	bic	r6, r2, #0x4000
 8005922: 8a0a         	ldrh	r2, [r1, #0x10]
 8005924: ea03 1282    	and.w	r2, r3, r2, lsl #6
 8005928: 4332         	orrs	r2, r6
 800592a: 8082         	strh	r2, [r0, #0x4]
 800592c: 8384         	strh	r4, [r0, #0x1c]
 800592e: 6889         	ldr	r1, [r1, #0x8]
 8005930: 6401         	str	r1, [r0, #0x40]
 8005932: 8405         	strh	r5, [r0, #0x20]
 8005934: bd70         	pop	{r4, r5, r6, pc}
 8005936: 0000         	movs	r0, r0
 8005938: 2c00         	cmp	r4, #0x0
 800593a: 4001         	ands	r1, r0
 800593c: 8b82         	ldrh	r2, [r0, #0x1c]
 800593e: f422 6200    	bic	r2, r2, #0x800
 8005942: f64f 73ff    	movw	r3, #0xffff
 8005946: ea03 2101    	and.w	r1, r3, r1, lsl #8
 800594a: 4311         	orrs	r1, r2
 800594c: 8381         	strh	r1, [r0, #0x1c]
 800594e: 4770         	bx	lr
 8005950: 2100         	movs	r1, #0x0
 8005952: 8001         	strh	r1, [r0]
 8005954: 8041         	strh	r1, [r0, #0x2]
 8005956: 8081         	strh	r1, [r0, #0x4]
 8005958: 6081         	str	r1, [r0, #0x8]
 800595a: 8181         	strh	r1, [r0, #0xc]
 800595c: 81c1         	strh	r1, [r0, #0xe]
 800595e: 8201         	strh	r1, [r0, #0x10]
 8005960: 8241         	strh	r1, [r0, #0x12]
 8005962: 4770         	bx	lr
 8005964: 8882         	ldrh	r2, [r0, #0x4]
 8005966: f022 0270    	bic	r2, r2, #0x70
 800596a: 8082         	strh	r2, [r0, #0x4]
 800596c: 8882         	ldrh	r2, [r0, #0x4]
 800596e: 430a         	orrs	r2, r1
 8005970: 8082         	strh	r2, [r0, #0x4]
 8005972: 4770         	bx	lr
 8005974: 6241         	str	r1, [r0, #0x24]
 8005976: 4770         	bx	lr
 8005978: f423 4380    	bic	r3, r3, #0x4000
 800597c: 8003         	strh	r3, [r0]
 800597e: 8803         	ldrh	r3, [r0]
 8005980: f423 4300    	bic	r3, r3, #0x8000
 8005984: f820 3944    	strh	r3, [r0], #-68
 8005988: 2900         	cmp	r1, #0x0
 800598a: d019         	beq	0x80059c0 <firmware_image+0x59c0> @ imm = #0x32
 800598c: 8881         	ldrh	r1, [r0, #0x4]
 800598e: f441 7180    	orr	r1, r1, #0x100
 8005992: 8081         	strh	r1, [r0, #0x4]
 8005994: 8881         	ldrh	r1, [r0, #0x4]
 8005996: f441 6180    	orr	r1, r1, #0x400
 800599a: 8081         	strh	r1, [r0, #0x4]
 800599c: 8881         	ldrh	r1, [r0, #0x4]
 800599e: f441 5180    	orr	r1, r1, #0x1000
 80059a2: 8081         	strh	r1, [r0, #0x4]
 80059a4: b1ca         	cbz	r2, 0x80059da <firmware_image+0x59da> @ imm = #0x32
 80059a6: 8881         	ldrh	r1, [r0, #0x4]
 80059a8: f441 7100    	orr	r1, r1, #0x200
 80059ac: 8081         	strh	r1, [r0, #0x4]
 80059ae: 8881         	ldrh	r1, [r0, #0x4]
 80059b0: f441 6100    	orr	r1, r1, #0x800
 80059b4: 8081         	strh	r1, [r0, #0x4]
 80059b6: 8881         	ldrh	r1, [r0, #0x4]
 80059b8: f441 5100    	orr	r1, r1, #0x2000
 80059bc: 8081         	strh	r1, [r0, #0x4]
 80059be: 4770         	bx	lr
 80059c0: 8881         	ldrh	r1, [r0, #0x4]
 80059c2: f421 7180    	bic	r1, r1, #0x100
 80059c6: 8081         	strh	r1, [r0, #0x4]
 80059c8: 8881         	ldrh	r1, [r0, #0x4]
 80059ca: f421 6180    	bic	r1, r1, #0x400
 80059ce: 8081         	strh	r1, [r0, #0x4]
 80059d0: 8881         	ldrh	r1, [r0, #0x4]
 80059d2: f421 5180    	bic	r1, r1, #0x1000
 80059d6: 8081         	strh	r1, [r0, #0x4]
 80059d8: e7e4         	b	0x80059a4 <firmware_image+0x59a4> @ imm = #-0x38
 80059da: 8881         	ldrh	r1, [r0, #0x4]
 80059dc: f421 7100    	bic	r1, r1, #0x200
 80059e0: 8081         	strh	r1, [r0, #0x4]
 80059e2: 8881         	ldrh	r1, [r0, #0x4]
 80059e4: f421 6100    	bic	r1, r1, #0x800
 80059e8: 8081         	strh	r1, [r0, #0x4]
 80059ea: 8881         	ldrh	r1, [r0, #0x4]
 80059ec: f421 5100    	bic	r1, r1, #0x2000
 80059f0: 8081         	strh	r1, [r0, #0x4]
 80059f2: 4770         	bx	lr
 80059f4: b530         	push	{r4, r5, lr}
 80059f6: 4c26         	ldr	r4, [pc, #0x98]         @ 0x8005a90 <firmware_image+0x5a90>
 80059f8: 7860         	ldrb	r0, [r4, #0x1]
 80059fa: 28c8         	cmp	r0, #0xc8
 80059fc: d201         	bhs	0x8005a02 <firmware_image+0x5a02> @ imm = #0x2
 80059fe: 1c40         	adds	r0, r0, #0x1
 8005a00: 7060         	strb	r0, [r4, #0x1]
 8005a02: 4924         	ldr	r1, [pc, #0x90]         @ 0x8005a94 <firmware_image+0x5a94>
 8005a04: 4a24         	ldr	r2, [pc, #0x90]         @ 0x8005a98 <firmware_image+0x5a98>
 8005a06: 8808         	ldrh	r0, [r1]
 8005a08: 8010         	strh	r0, [r2]
 8005a0a: 2000         	movs	r0, #0x0
 8005a0c: 8008         	strh	r0, [r1]
 8005a0e: 4923         	ldr	r1, [pc, #0x8c]         @ 0x8005a9c <firmware_image+0x5a9c>
 8005a10: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x8005aa0 <firmware_image+0x5aa0>
 8005a12: 880a         	ldrh	r2, [r1]
 8005a14: 801a         	strh	r2, [r3]
 8005a16: 8008         	strh	r0, [r1]
 8005a18: 4922         	ldr	r1, [pc, #0x88]         @ 0x8005aa4 <firmware_image+0x5aa4>
 8005a1a: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x8005aa8 <firmware_image+0x5aa8>
 8005a1c: 880a         	ldrh	r2, [r1]
 8005a1e: 801a         	strh	r2, [r3]
 8005a20: 8008         	strh	r0, [r1]
 8005a22: 4922         	ldr	r1, [pc, #0x88]         @ 0x8005aac <firmware_image+0x5aac>
 8005a24: 4b22         	ldr	r3, [pc, #0x88]         @ 0x8005ab0 <firmware_image+0x5ab0>
 8005a26: 880a         	ldrh	r2, [r1]
 8005a28: 801a         	strh	r2, [r3]
 8005a2a: 8008         	strh	r0, [r1]
 8005a2c: 4921         	ldr	r1, [pc, #0x84]         @ 0x8005ab4 <firmware_image+0x5ab4>
 8005a2e: 4b22         	ldr	r3, [pc, #0x88]         @ 0x8005ab8 <firmware_image+0x5ab8>
 8005a30: 880a         	ldrh	r2, [r1]
 8005a32: 801a         	strh	r2, [r3]
 8005a34: 8008         	strh	r0, [r1]
 8005a36: 4921         	ldr	r1, [pc, #0x84]         @ 0x8005abc <firmware_image+0x5abc>
 8005a38: 4d21         	ldr	r5, [pc, #0x84]         @ 0x8005ac0 <firmware_image+0x5ac0>
 8005a3a: 880b         	ldrh	r3, [r1]
 8005a3c: 802b         	strh	r3, [r5]
 8005a3e: 8008         	strh	r0, [r1]
 8005a40: 4920         	ldr	r1, [pc, #0x80]         @ 0x8005ac4 <firmware_image+0x5ac4>
 8005a42: 4d21         	ldr	r5, [pc, #0x84]         @ 0x8005ac8 <firmware_image+0x5ac8>
 8005a44: 880b         	ldrh	r3, [r1]
 8005a46: 802b         	strh	r3, [r5]
 8005a48: 8008         	strh	r0, [r1]
 8005a4a: 88a1         	ldrh	r1, [r4, #0x4]
 8005a4c: f64f 75fe    	movw	r5, #0xfffe
 8005a50: 42a9         	cmp	r1, r5
 8005a52: d201         	bhs	0x8005a58 <firmware_image+0x5a58> @ imm = #0x2
 8005a54: 1c49         	adds	r1, r1, #0x1
 8005a56: 80a1         	strh	r1, [r4, #0x4]
 8005a58: 88a1         	ldrh	r1, [r4, #0x4]
 8005a5a: 2902         	cmp	r1, #0x2
 8005a5c: d916         	bls	0x8005a8c <firmware_image+0x5a8c> @ imm = #0x2c
 8005a5e: 441a         	add	r2, r3
 8005a60: 2101         	movs	r1, #0x1
 8005a62: 2a7d         	cmp	r2, #0x7d
 8005a64: d204         	bhs	0x8005a70 <firmware_image+0x5a70> @ imm = #0x8
 8005a66: 7862         	ldrb	r2, [r4, #0x1]
 8005a68: 2a05         	cmp	r2, #0x5
 8005a6a: d901         	bls	0x8005a70 <firmware_image+0x5a70> @ imm = #0x2
 8005a6c: 7021         	strb	r1, [r4]
 8005a6e: e001         	b	0x8005a74 <firmware_image+0x5a74> @ imm = #0x2
 8005a70: 7020         	strb	r0, [r4]
 8005a72: 8060         	strh	r0, [r4, #0x2]
 8005a74: 7820         	ldrb	r0, [r4]
 8005a76: b120         	cbz	r0, 0x8005a82 <firmware_image+0x5a82> @ imm = #0x8
 8005a78: 8860         	ldrh	r0, [r4, #0x2]
 8005a7a: 42a8         	cmp	r0, r5
 8005a7c: d201         	bhs	0x8005a82 <firmware_image+0x5a82> @ imm = #0x2
 8005a7e: 1c40         	adds	r0, r0, #0x1
 8005a80: 8060         	strh	r0, [r4, #0x2]
 8005a82: 8860         	ldrh	r0, [r4, #0x2]
 8005a84: 2832         	cmp	r0, #0x32
 8005a86: d901         	bls	0x8005a8c <firmware_image+0x5a8c> @ imm = #0x2
 8005a88: 4810         	ldr	r0, [pc, #0x40]         @ 0x8005acc <firmware_image+0x5acc>
 8005a8a: 7001         	strb	r1, [r0]
 8005a8c: bd30         	pop	{r4, r5, pc}
 8005a8e: 0000         	movs	r0, r0
 8005a90: 0000         	movs	r0, r0
 8005a92: 2000         	movs	r0, #0x0
 8005a94: 02a0         	lsls	r0, r4, #0xa
 8005a96: 2000         	movs	r0, #0x0
 8005a98: 02ac         	lsls	r4, r5, #0xa
 8005a9a: 2000         	movs	r0, #0x0
 8005a9c: 02a2         	lsls	r2, r4, #0xa
 8005a9e: 2000         	movs	r0, #0x0
 8005aa0: 02ae         	lsls	r6, r5, #0xa
 8005aa2: 2000         	movs	r0, #0x0
 8005aa4: 02b6         	lsls	r6, r6, #0xa
 8005aa6: 2000         	movs	r0, #0x0
 8005aa8: 02d0         	lsls	r0, r2, #0xb
 8005aaa: 2000         	movs	r0, #0x0
 8005aac: 022c         	lsls	r4, r5, #0x8
 8005aae: 2000         	movs	r0, #0x0
 8005ab0: 0234         	lsls	r4, r6, #0x8
 8005ab2: 2000         	movs	r0, #0x0
 8005ab4: 0228         	lsls	r0, r5, #0x8
 8005ab6: 2000         	movs	r0, #0x0
 8005ab8: 0230         	lsls	r0, r6, #0x8
 8005aba: 2000         	movs	r0, #0x0
 8005abc: 022a         	lsls	r2, r5, #0x8
 8005abe: 2000         	movs	r0, #0x0
 8005ac0: 0232         	lsls	r2, r6, #0x8
 8005ac2: 2000         	movs	r0, #0x0
 8005ac4: 0226         	lsls	r6, r4, #0x8
 8005ac6: 2000         	movs	r0, #0x0
 8005ac8: 022e         	lsls	r6, r5, #0x8
 8005aca: 2000         	movs	r0, #0x0
 8005acc: 0153         	lsls	r3, r2, #0x5
 8005ace: 2000         	movs	r0, #0x0
 8005ad0: b510         	push	{r4, lr}
 8005ad2: 2101         	movs	r1, #0x1
 8005ad4: 078c         	lsls	r4, r1, #0x1e
 8005ad6: 4620         	mov	r0, r4
 8005ad8: f7ff fd7b    	bl	0x80055d2 <firmware_image+0x55d2> @ imm = #-0x50a
 8005adc: 2200         	movs	r2, #0x0
 8005ade: 2101         	movs	r1, #0x1
 8005ae0: 4620         	mov	r0, r4
 8005ae2: f7ff fe1e    	bl	0x8005722 <firmware_image+0x5722> @ imm = #-0x3c4
 8005ae6: 2100         	movs	r1, #0x0
 8005ae8: 4620         	mov	r0, r4
 8005aea: f7ff ff41    	bl	0x8005970 <firmware_image+0x5970> @ imm = #-0x17e
 8005aee: 4620         	mov	r0, r4
 8005af0: e8bd 4010    	pop.w	{r4, lr}
 8005af4: 2100         	movs	r1, #0x0
 8005af6: f7ff bdfb    	b.w	0x80056f0 <firmware_image+0x56f0> @ imm = #-0x40a
 8005afa: b510         	push	{r4, lr}
 8005afc: 2101         	movs	r1, #0x1
 8005afe: 078c         	lsls	r4, r1, #0x1e
 8005b00: 4620         	mov	r0, r4
 8005b02: f7ff fd66    	bl	0x80055d2 <firmware_image+0x55d2> @ imm = #-0x534
 8005b06: 2201         	movs	r2, #0x1
 8005b08: 4611         	mov	r1, r2
 8005b0a: 4620         	mov	r0, r4
 8005b0c: f7ff fe09    	bl	0x8005722 <firmware_image+0x5722> @ imm = #-0x3ee
 8005b10: 2100         	movs	r1, #0x0
 8005b12: 4620         	mov	r0, r4
 8005b14: f7ff ff2c    	bl	0x8005970 <firmware_image+0x5970> @ imm = #-0x1a8
 8005b18: 4620         	mov	r0, r4
 8005b1a: e8bd 4010    	pop.w	{r4, lr}
 8005b1e: 2101         	movs	r1, #0x1
 8005b20: f7ff bde6    	b.w	0x80056f0 <firmware_image+0x56f0> @ imm = #-0x434
 8005b24: b53e         	push	{r1, r2, r3, r4, r5, lr}
 8005b26: 2101         	movs	r1, #0x1
 8005b28: 4608         	mov	r0, r1
 8005b2a: f7fe fc27    	bl	0x800437c <firmware_image+0x437c> @ imm = #-0x17b2
 8005b2e: f241 1094    	movw	r0, #0x1194
 8005b32: 9001         	str	r0, [sp, #0x4]
 8005b34: 2000         	movs	r0, #0x0
 8005b36: f8ad 0000    	strh.w	r0, [sp]
 8005b3a: f8ad 0008    	strh.w	r0, [sp, #0x8]
 8005b3e: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8005b42: 2003         	movs	r0, #0x3
 8005b44: f88d 000a    	strb.w	r0, [sp, #0xa]
 8005b48: f04f 4480    	mov.w	r4, #0x40000000
 8005b4c: 4669         	mov	r1, sp
 8005b4e: 4620         	mov	r0, r4
 8005b50: f7ff fcfe    	bl	0x8005550 <firmware_image+0x5550> @ imm = #-0x604
 8005b54: 2101         	movs	r1, #0x1
 8005b56: 4620         	mov	r0, r4
 8005b58: f7ff fd3b    	bl	0x80055d2 <firmware_image+0x55d2> @ imm = #-0x58a
 8005b5c: 2200         	movs	r2, #0x0
 8005b5e: 2101         	movs	r1, #0x1
 8005b60: 4620         	mov	r0, r4
 8005b62: f7ff fdde    	bl	0x8005722 <firmware_image+0x5722> @ imm = #-0x444
 8005b66: 2100         	movs	r1, #0x0
 8005b68: 4620         	mov	r0, r4
 8005b6a: f7ff fdc1    	bl	0x80056f0 <firmware_image+0x56f0> @ imm = #-0x47e
 8005b6e: bd3e         	pop	{r1, r2, r3, r4, r5, pc}
 8005b70: b53e         	push	{r1, r2, r3, r4, r5, lr}
 8005b72: 4604         	mov	r4, r0
 8005b74: 2101         	movs	r1, #0x1
 8005b76: 2002         	movs	r0, #0x2
 8005b78: f7fe fc00    	bl	0x800437c <firmware_image+0x437c> @ imm = #-0x1800
 8005b7c: 4d1c         	ldr	r5, [pc, #0x70]         @ 0x8005bf0 <firmware_image+0x5bf0>
 8005b7e: b32c         	cbz	r4, 0x8005bcc <firmware_image+0x5bcc> @ imm = #0x4a
 8005b80: 2023         	movs	r0, #0x23
 8005b82: 491c         	ldr	r1, [pc, #0x70]         @ 0x8005bf4 <firmware_image+0x5bf4>
 8005b84: fbb1 f1f4    	udiv	r1, r1, r4
 8005b88: b289         	uxth	r1, r1
 8005b8a: 9101         	str	r1, [sp, #0x4]
 8005b8c: f8ad 0000    	strh.w	r0, [sp]
 8005b90: 2000         	movs	r0, #0x0
 8005b92: f8ad 0008    	strh.w	r0, [sp, #0x8]
 8005b96: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8005b9a: 2003         	movs	r0, #0x3
 8005b9c: f88d 000a    	strb.w	r0, [sp, #0xa]
 8005ba0: 4669         	mov	r1, sp
 8005ba2: 4628         	mov	r0, r5
 8005ba4: f7ff fcd4    	bl	0x8005550 <firmware_image+0x5550> @ imm = #-0x658
 8005ba8: 2101         	movs	r1, #0x1
 8005baa: 4628         	mov	r0, r5
 8005bac: f7ff fd11    	bl	0x80055d2 <firmware_image+0x55d2> @ imm = #-0x5de
 8005bb0: 2201         	movs	r2, #0x1
 8005bb2: 4611         	mov	r1, r2
 8005bb4: 4628         	mov	r0, r5
 8005bb6: f7ff fdb4    	bl	0x8005722 <firmware_image+0x5722> @ imm = #-0x498
 8005bba: 2100         	movs	r1, #0x0
 8005bbc: 4628         	mov	r0, r5
 8005bbe: f7ff fed7    	bl	0x8005970 <firmware_image+0x5970> @ imm = #-0x252
 8005bc2: 2101         	movs	r1, #0x1
 8005bc4: 4628         	mov	r0, r5
 8005bc6: f7ff fd93    	bl	0x80056f0 <firmware_image+0x56f0> @ imm = #-0x4da
 8005bca: bd3e         	pop	{r1, r2, r3, r4, r5, pc}
 8005bcc: 2101         	movs	r1, #0x1
 8005bce: 4628         	mov	r0, r5
 8005bd0: f7ff fcff    	bl	0x80055d2 <firmware_image+0x55d2> @ imm = #-0x602
 8005bd4: 2200         	movs	r2, #0x0
 8005bd6: 2101         	movs	r1, #0x1
 8005bd8: 4628         	mov	r0, r5
 8005bda: f7ff fda2    	bl	0x8005722 <firmware_image+0x5722> @ imm = #-0x4bc
 8005bde: 2100         	movs	r1, #0x0
 8005be0: 4628         	mov	r0, r5
 8005be2: f7ff fec5    	bl	0x8005970 <firmware_image+0x5970> @ imm = #-0x276
 8005be6: 2100         	movs	r1, #0x0
 8005be8: 4628         	mov	r0, r5
 8005bea: f7ff 0400    	<unknown>
 8005bee: 4000         	ands	r0, r0
 8005bf0: 8480         	strh	r0, [r0, #0x24]
 8005bf2: 001e         	movs	r6, r3
 8005bf4: b508         	push	{r3, lr}
 8005bf6: f500 4100    	add.w	r1, r0, #0x8000
 8005bfa: 0989         	lsrs	r1, r1, #0x6
 8005bfc: f411 7240    	ands	r2, r1, #0x300
 8005c00: b508         	push	{r3, lr}
 8005c02: f500 4100    	add.w	r1, r0, #0x8000
 8005c06: 0989         	lsrs	r1, r1, #0x6
 8005c08: f411 7240    	ands	r2, r1, #0x300
 8005c0c: f3c0 1087    	ubfx	r0, r0, #0x6, #0x8
 8005c10: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x8005c80 <firmware_image+0x5c80>
 8005c12: f1c0 01ff    	rsb.w	r1, r0, #0xff
 8005c16: d01c         	beq	0x8005c52 <firmware_image+0x5c52> @ imm = #0x38
 8005c18: f5b2 7f80    	cmp.w	r2, #0x100
 8005c1c: d024         	beq	0x8005c68 <firmware_image+0x5c68> @ imm = #0x48
 8005c1e: f5b2 7f00    	cmp.w	r2, #0x200
 8005c22: d003         	beq	0x8005c2c <firmware_image+0x5c2c> @ imm = #0x6
 8005c24: f5b2 7f40    	cmp.w	r2, #0x300
 8005c28: d127         	bne	0x8005c7a <firmware_image+0x5c7a> @ imm = #0x4e
 8005c2a: e008         	b	0x8005c3e <firmware_image+0x5c3e> @ imm = #0x10
 8005c2c: f833 0010    	ldrh.w	r0, [r3, r0, lsl #1]
 8005c30: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8005c34: f833 0011    	ldrh.w	r0, [r3, r1, lsl #1]
 8005c38: f8ad 0000    	strh.w	r0, [sp]
 8005c3c: e01d         	b	0x8005c7a <firmware_image+0x5c7a> @ imm = #0x3a
 8005c3e: f833 1011    	ldrh.w	r1, [r3, r1, lsl #1]
 8005c42: f8ad 1002    	strh.w	r1, [sp, #0x2]
 8005c46: f833 0010    	ldrh.w	r0, [r3, r0, lsl #1]
 8005c4a: 4240         	rsbs	r0, r0, #0
 8005c4c: f8ad 0000    	strh.w	r0, [sp]
 8005c50: e013         	b	0x8005c7a <firmware_image+0x5c7a> @ imm = #0x26
 8005c52: f833 0010    	ldrh.w	r0, [r3, r0, lsl #1]
 8005c56: 4240         	rsbs	r0, r0, #0
 8005c58: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8005c5c: f833 0011    	ldrh.w	r0, [r3, r1, lsl #1]
 8005c60: 4240         	rsbs	r0, r0, #0
 8005c62: f8ad 0000    	strh.w	r0, [sp]
 8005c66: e008         	b	0x8005c7a <firmware_image+0x5c7a> @ imm = #0x10
 8005c68: f833 1011    	ldrh.w	r1, [r3, r1, lsl #1]
 8005c6c: 4249         	rsbs	r1, r1, #0
 8005c6e: f8ad 1002    	strh.w	r1, [sp, #0x2]
 8005c72: f833 0010    	ldrh.w	r0, [r3, r0, lsl #1]
 8005c76: f8ad 0000    	strh.w	r0, [sp]
 8005c7a: 9800         	ldr	r0, [sp]
 8005c7c: bd08         	pop	{r3, pc}
 8005c7e: 0000         	movs	r0, r0
 8005c80: 73a6         	strb	r6, [r4, #0xe]
 8005c82: 0800         	lsrs	r0, r0, #0x20
 8005c84: 4921         	ldr	r1, [pc, #0x84]         @ 0x8005d0c <firmware_image+0x5d0c>
 8005c86: 4822         	ldr	r0, [pc, #0x88]         @ 0x8005d10 <firmware_image+0x5d10>
 8005c88: f000 f884    	bl	0x8005d94 <firmware_image+0x5d94> @ imm = #0x108
 8005c8c: 2800         	cmp	r0, #0x0
 8005c8e: d03a         	beq	0x8005d06 <firmware_image+0x5d06> @ imm = #0x74
 8005c90: 4d20         	ldr	r5, [pc, #0x80]         @ 0x8005d14 <firmware_image+0x5d14>
 8005c92: 2100         	movs	r1, #0x0
 8005c94: 4628         	mov	r0, r5
 8005c96: f7fc faad    	bl	0x80021f4 <firmware_image+0x21f4> @ imm = #-0x3aa6
 8005c9a: 4628         	mov	r0, r5
 8005c9c: f7fc fab7    	bl	0x800220e <firmware_image+0x220e> @ imm = #-0x3a92
 8005ca0: 4c1d         	ldr	r4, [pc, #0x74]         @ 0x8005d18 <firmware_image+0x5d18>
 8005ca2: f1c0 0020    	rsb.w	r0, r0, #0x20
 8005ca6: b282         	uxth	r2, r0
 8005ca8: 8062         	strh	r2, [r4, #0x2]
 8005caa: 4e1a         	ldr	r6, [pc, #0x68]         @ 0x8005d14 <firmware_image+0x5d14>
 8005cac: 3e58         	subs	r6, #0x58
 8005cae: b19a         	cbz	r2, 0x8005cd8 <firmware_image+0x5cd8> @ imm = #0x26
 8005cb0: 2100         	movs	r1, #0x0
 8005cb2: 481a         	ldr	r0, [pc, #0x68]         @ 0x8005d1c <firmware_image+0x5d1c>
 8005cb4: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x8005d20 <firmware_image+0x5d20>
 8005cb6: e003         	b	0x8005cc0 <firmware_image+0x5cc0> @ imm = #0x6
 8005cb8: 5c47         	ldrb	r7, [r0, r1]
 8005cba: 545f         	strb	r7, [r3, r1]
 8005cbc: 1c49         	adds	r1, r1, #0x1
 8005cbe: b289         	uxth	r1, r1
 8005cc0: 4291         	cmp	r1, r2
 8005cc2: d3f9         	blo	0x8005cb8 <firmware_image+0x5cb8> @ imm = #-0xe
 8005cc4: 2100         	movs	r1, #0x0
 8005cc6: 4628         	mov	r0, r5
 8005cc8: f7fc fa94    	bl	0x80021f4 <firmware_image+0x21f4> @ imm = #-0x3ad8
 8005ccc: 8861         	ldrh	r1, [r4, #0x2]
 8005cce: 65f1         	str	r1, [r6, #0x5c]
 8005cd0: 2101         	movs	r1, #0x1
 8005cd2: 4628         	mov	r0, r5
 8005cd4: f7fc fa8e    	bl	0x80021f4 <firmware_image+0x21f4> @ imm = #-0x3ae4
 8005cd8: 2100         	movs	r1, #0x0
 8005cda: 4628         	mov	r0, r5
 8005cdc: f7fc fa8a    	bl	0x80021f4 <firmware_image+0x21f4> @ imm = #-0x3aec
 8005ce0: f44f 2070    	mov.w	r0, #0xf0000
 8005ce4: f7fc f9c0    	bl	0x8002068 <firmware_image+0x2068> @ imm = #-0x3c80
 8005ce8: 2120         	movs	r1, #0x20
 8005cea: 65f1         	str	r1, [r6, #0x5c]
 8005cec: 2101         	movs	r1, #0x1
 8005cee: 4628         	mov	r0, r5
 8005cf0: f7fc fa80    	bl	0x80021f4 <firmware_image+0x21f4> @ imm = #-0x3b00
 8005cf4: f001 f8b2    	bl	0x8006e5c <firmware_image+0x6e5c> @ imm = #0x1164
 8005cf8: 4904         	ldr	r1, [pc, #0x10]         @ 0x8005d0c <firmware_image+0x5d0c>
 8005cfa: f04f 30ff    	mov.w	r0, #0xffffffff
 8005cfe: 3120         	adds	r1, #0x20
 8005d00: 6008         	str	r0, [r1]
 8005d02: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8005d06: 0000         	movs	r0, r0
 8005d08: 0104         	lsls	r4, r0, #0x4
 8005d0a: 0004         	movs	r4, r0
 8005d0c: 4400         	add	r0, r0
 8005d0e: 4000         	ands	r0, r0
 8005d10: 0058         	lsls	r0, r3, #0x1
 8005d12: 4002         	ands	r2, r0
 8005d14: 0236         	lsls	r6, r6, #0x8
 8005d16: 2000         	movs	r0, #0x0
 8005d18: 04b0         	lsls	r0, r6, #0x12
 8005d1a: 2000         	movs	r0, #0x0
 8005d1c: 0478         	lsls	r0, r7, #0x11
 8005d1e: 2000         	movs	r0, #0x0
 8005d20: 2a00         	cmp	r2, #0x0
 8005d22: d003         	beq	0x8005d2c <firmware_image+0x5d2c> @ imm = #0x6
 8005d24: 6882         	ldr	r2, [r0, #0x8]
 8005d26: 430a         	orrs	r2, r1
 8005d28: 6082         	str	r2, [r0, #0x8]
 8005d2a: 4770         	bx	lr
 8005d2c: 6882         	ldr	r2, [r0, #0x8]
 8005d2e: 438a         	bics	r2, r1
 8005d30: 6082         	str	r2, [r0, #0x8]
 8005d32: 4770         	bx	lr
 8005d34: b510         	push	{r4, lr}
 8005d36: 490e         	ldr	r1, [pc, #0x38]         @ 0x8005d70 <firmware_image+0x5d70>
 8005d38: 4288         	cmp	r0, r1
 8005d3a: d10a         	bne	0x8005d52 <firmware_image+0x5d52> @ imm = #0x14
 8005d3c: 2101         	movs	r1, #0x1
 8005d3e: 038c         	lsls	r4, r1, #0xe
 8005d40: 4620         	mov	r0, r4
 8005d42: f7fe fb4f    	bl	0x80043e4 <firmware_image+0x43e4> @ imm = #-0x1962
 8005d46: 4620         	mov	r0, r4
 8005d48: e8bd 4010    	pop.w	{r4, lr}
 8005d4c: 2100         	movs	r1, #0x0
 8005d4e: f7fe bb49    	b.w	0x80043e4 <firmware_image+0x43e4> @ imm = #-0x196e
 8005d52: 4908         	ldr	r1, [pc, #0x20]         @ 0x8005d74 <firmware_image+0x5d74>
 8005d54: 4288         	cmp	r0, r1
 8005d56: d10a         	bne	0x8005d6e <firmware_image+0x5d6e> @ imm = #0x14
 8005d58: 2101         	movs	r1, #0x1
 8005d5a: 044c         	lsls	r4, r1, #0x11
 8005d5c: 4620         	mov	r0, r4
 8005d5e: f7fe fb1b    	bl	0x8004398 <firmware_image+0x4398> @ imm = #-0x19ca
 8005d62: 4620         	mov	r0, r4
 8005d64: e8bd 4010    	pop.w	{r4, lr}
 8005d68: 2100         	movs	r1, #0x0
 8005d6a: f7fe bb15    	b.w	0x8004398 <firmware_image+0x4398> @ imm = #-0x19d6
 8005d6e: bd10         	pop	{r4, pc}
 8005d70: 3800         	subs	r0, #0x0
 8005d72: 4001         	ands	r1, r0
 8005d74: 4400         	add	r0, r0
 8005d76: 4000         	ands	r0, r0
 8005d78: 2900         	cmp	r1, #0x0
 8005d7a: d004         	beq	0x8005d86 <firmware_image+0x5d86> @ imm = #0x8
 8005d7c: 6801         	ldr	r1, [r0]
 8005d7e: f041 0101    	orr	r1, r1, #0x1
 8005d82: 6001         	str	r1, [r0]
 8005d84: 4770         	bx	lr
 8005d86: 6801         	ldr	r1, [r0]
 8005d88: f021 0101    	bic	r1, r1, #0x1
 8005d8c: 6001         	str	r1, [r0]
 8005d8e: 4770         	bx	lr
 8005d90: b510         	push	{r4, lr}
 8005d92: f3c1 2307    	ubfx	r3, r1, #0x8, #0x8
 8005d96: 2401         	movs	r4, #0x1
 8005d98: fa04 f201    	lsl.w	r2, r4, r1
 8005d9c: 2b01         	cmp	r3, #0x1
 8005d9e: d00b         	beq	0x8005db8 <firmware_image+0x5db8> @ imm = #0x16
 8005da0: 2b02         	cmp	r3, #0x2
 8005da2: d00c         	beq	0x8005dbe <firmware_image+0x5dbe> @ imm = #0x18
 8005da4: 6883         	ldr	r3, [r0, #0x8]
 8005da6: 4013         	ands	r3, r2
 8005da8: 0c09         	lsrs	r1, r1, #0x10
 8005daa: 408c         	lsls	r4, r1
 8005dac: 69c0         	ldr	r0, [r0, #0x1c]
 8005dae: 4020         	ands	r0, r4
 8005db0: b143         	cbz	r3, 0x8005dc4 <firmware_image+0x5dc4> @ imm = #0x10
 8005db2: b138         	cbz	r0, 0x8005dc4 <firmware_image+0x5dc4> @ imm = #0xe
 8005db4: 2001         	movs	r0, #0x1
 8005db6: bd10         	pop	{r4, pc}
 8005db8: 6803         	ldr	r3, [r0]
 8005dba: 4013         	ands	r3, r2
 8005dbc: e7f4         	b	0x8005da8 <firmware_image+0x5da8> @ imm = #-0x18
 8005dbe: 6843         	ldr	r3, [r0, #0x4]
 8005dc0: 4013         	ands	r3, r2
 8005dc2: e7f1         	b	0x8005da8 <firmware_image+0x5da8> @ imm = #-0x1e
 8005dc4: 2000         	movs	r0, #0x0
 8005dc6: bd10         	pop	{r4, pc}
 8005dc8: f401 437f    	and	r3, r1, #0xff00
 8005dcc: f5b3 7f40    	cmp.w	r3, #0x300
 8005dd0: d003         	beq	0x8005dda <firmware_image+0x5dda> @ imm = #0x6
 8005dd2: f5b3 7f00    	cmp.w	r3, #0x200
 8005dd6: d002         	beq	0x8005dde <firmware_image+0x5dde> @ imm = #0x4
 8005dd8: e002         	b	0x8005de0 <firmware_image+0x5de0> @ imm = #0x4
 8005dda: 3008         	adds	r0, #0x8
 8005ddc: e000         	b	0x8005de0 <firmware_image+0x5de0> @ imm = #0x0
 8005dde: 1d00         	adds	r0, r0, #0x4
 8005de0: 2301         	movs	r3, #0x1
 8005de2: 408b         	lsls	r3, r1
 8005de4: b11a         	cbz	r2, 0x8005dee <firmware_image+0x5dee> @ imm = #0x6
 8005de6: 6801         	ldr	r1, [r0]
 8005de8: 4319         	orrs	r1, r3
 8005dea: 6001         	str	r1, [r0]
 8005dec: 4770         	bx	lr
 8005dee: 6801         	ldr	r1, [r0]
 8005df0: 4399         	bics	r1, r3
 8005df2: 6001         	str	r1, [r0]
 8005df4: 4770         	bx	lr
 8005df6: 0000         	movs	r0, r0
 8005df8: b530         	push	{r4, r5, lr}
 8005dfa: b087         	sub	sp, #0x1c
 8005dfc: 4604         	mov	r4, r0
 8005dfe: 460d         	mov	r5, r1
 8005e00: 6820         	ldr	r0, [r4]
 8005e02: f020 0001    	bic	r0, r0, #0x1
 8005e06: 6020         	str	r0, [r4]
 8005e08: 6860         	ldr	r0, [r4, #0x4]
 8005e0a: f420 5140    	bic	r1, r0, #0x3000
 8005e0e: 68a8         	ldr	r0, [r5, #0x8]
 8005e10: 4308         	orrs	r0, r1
 8005e12: 6060         	str	r0, [r4, #0x4]
 8005e14: 6820         	ldr	r0, [r4]
 8005e16: f241 610c    	movw	r1, #0x160c
 8005e1a: 4388         	bics	r0, r1
 8005e1c: 68ea         	ldr	r2, [r5, #0xc]
 8005e1e: 6869         	ldr	r1, [r5, #0x4]
 8005e20: 4311         	orrs	r1, r2
 8005e22: 692a         	ldr	r2, [r5, #0x10]
 8005e24: 4302         	orrs	r2, r0
 8005e26: 4311         	orrs	r1, r2
 8005e28: 6021         	str	r1, [r4]
 8005e2a: 68a0         	ldr	r0, [r4, #0x8]
 8005e2c: f420 7040    	bic	r0, r0, #0x300
 8005e30: 6969         	ldr	r1, [r5, #0x14]
 8005e32: 4301         	orrs	r1, r0
 8005e34: f7fe fb6a    	bl	0x800450c <firmware_image+0x450c> @ imm = #-0x192c
 8005e38: 4814         	ldr	r0, [pc, #0x50]         @ 0x8005e8c <firmware_image+0x5e8c>
 8005e3a: 4284         	cmp	r4, r0
 8005e3c: d101         	bne	0x8005e42 <firmware_image+0x5e42> @ imm = #0x2
 8005e3e: 9906         	ldr	r1, [sp, #0x18]
 8005e40: e000         	b	0x8005e44 <firmware_image+0x5e44> @ imm = #0x0
 8005e42: 9902         	ldr	r1, [sp, #0x8]
 8005e44: 6820         	ldr	r0, [r4]
 8005e46: 0400         	lsls	r0, r0, #0x10
 8005e48: d508         	bpl	0x8005e5c <firmware_image+0x5e5c> @ imm = #0x10
 8005e4a: 004a         	lsls	r2, r1, #0x1
 8005e4c: 6829         	ldr	r1, [r5]
 8005e4e: fbb2 f0f1    	udiv	r0, r2, r1
 8005e52: fbb2 f3f1    	udiv	r3, r2, r1
 8005e56: fb01 2113    	mls	r1, r1, r3, r2
 8005e5a: e006         	b	0x8005e6a <firmware_image+0x5e6a> @ imm = #0xc
 8005e5c: 682a         	ldr	r2, [r5]
 8005e5e: fbb1 f0f2    	udiv	r0, r1, r2
 8005e62: fbb1 f3f2    	udiv	r3, r1, r2
 8005e66: fb02 1113    	mls	r1, r2, r3, r1
 8005e6a: 682a         	ldr	r2, [r5]
 8005e6c: ebb1 0f52    	cmp.w	r1, r2, lsr #1
 8005e70: d300         	blo	0x8005e74 <firmware_image+0x5e74> @ imm = #0x0
 8005e72: 1c40         	adds	r0, r0, #0x1
 8005e74: 6821         	ldr	r1, [r4]
 8005e76: 0409         	lsls	r1, r1, #0x10
 8005e78: d505         	bpl	0x8005e86 <firmware_image+0x5e86> @ imm = #0xa
 8005e7a: f3c0 0142    	ubfx	r1, r0, #0x1, #0x3
 8005e7e: f64f 72f0    	movw	r2, #0xfff0
 8005e82: 4010         	ands	r0, r2
 8005e84: 4308         	orrs	r0, r1
 8005e86: 81a0         	strh	r0, [r4, #0xc]
 8005e88: b007         	add	sp, #0x1c
 8005e8a: bd30         	pop	{r4, r5, pc}
 8005e8c: 3800         	subs	r0, #0x0
 8005e8e: 4001         	ands	r1, r0
 8005e90: 4770         	bx	lr
 8005e92: e7fe         	b	0x8005e92 <firmware_image+0x5e92> @ imm = #-0x4
 8005e94: b570         	push	{r4, r5, r6, lr}
 8005e96: 4813         	ldr	r0, [pc, #0x4c]         @ 0x8005ee4 <firmware_image+0x5ee4>
 8005e98: 8800         	ldrh	r0, [r0]
 8005e9a: ebc0 00c0    	rsb	r0, r0, r0, lsl #3
 8005e9e: 0080         	lsls	r0, r0, #0x2
 8005ea0: b200         	sxth	r0, r0
 8005ea2: f7fa fbd6    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x5854
 8005ea6: 4a10         	ldr	r2, [pc, #0x40]         @ 0x8005ee8 <firmware_image+0x5ee8>
 8005ea8: 4b10         	ldr	r3, [pc, #0x40]         @ 0x8005eec <firmware_image+0x5eec>
 8005eaa: f7fa fae8    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x5a30
 8005eae: 4e10         	ldr	r6, [pc, #0x40]         @ 0x8005ef0 <firmware_image+0x5ef0>
 8005eb0: 4604         	mov	r4, r0
 8005eb2: 460d         	mov	r5, r1
 8005eb4: 6b70         	ldr	r0, [r6, #0x34]
 8005eb6: f7fa fc15    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x57d6
 8005eba: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x8005ef4 <firmware_image+0x5ef4>
 8005ebc: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x8005ef8 <firmware_image+0x5ef8>
 8005ebe: f7fa fade    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x5a44
 8005ec2: 4622         	mov	r2, r4
 8005ec4: 462b         	mov	r3, r5
 8005ec6: f7fa fa33    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0x5b9a
 8005eca: f7fa fc37    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x5792
 8005ece: 6370         	str	r0, [r6, #0x34]
 8005ed0: f7fa fbd0    	bl	0x8000674 <firmware_image+0x674> @ imm = #-0x5860
 8005ed4: f1a6 0180    	sub.w	r1, r6, #0x80
 8005ed8: 87c8         	strh	r0, [r1, #0x3e]
 8005eda: 8fc8         	ldrh	r0, [r1, #0x3e]
 8005edc: 8788         	strh	r0, [r1, #0x3c]
 8005ede: 8748         	strh	r0, [r1, #0x3a]
 8005ee0: bd70         	pop	{r4, r5, r6, pc}
 8005ee2: 0000         	movs	r0, r0
 8005ee4: 027e         	lsls	r6, r7, #0x9
 8005ee6: 2000         	movs	r0, #0x0
 8005ee8: 999a         	ldr	r1, [sp, #0x268]
 8005eea: 9999         	ldr	r1, [sp, #0x264]
 8005eec: 9999         	ldr	r1, [sp, #0x264]
 8005eee: 3fb9         	subs	r7, #0xb9
 8005ef0: 00e4         	lsls	r4, r4, #0x3
 8005ef2: 2000         	movs	r0, #0x0
 8005ef4: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
 8005ef6: cccc         	ldm	r4!, {r2, r3, r6, r7}
 8005ef8: cccc         	ldm	r4!, {r2, r3, r6, r7}
 8005efa: 3fec         	subs	r7, #0xec
 8005efc: b500         	push	{lr}
 8005efe: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x8005f5c <firmware_image+0x5f5c>
 8005f00: 8fd8         	ldrh	r0, [r3, #0x3e]
 8005f02: f8b3 1040    	ldrh.w	r1, [r3, #0x40]
 8005f06: 1a40         	subs	r0, r0, r1
 8005f08: b200         	sxth	r0, r0
 8005f0a: f000 fa80    	bl	0x800640e <firmware_image+0x640e> @ imm = #0x500
 8005f0e: eb00 01c0    	add.w	r1, r0, r0, lsl #3
 8005f12: eb01 1000    	add.w	r0, r1, r0, lsl #4
 8005f16: f640 51ac    	movw	r1, #0xdac
 8005f1a: eb01 0040    	add.w	r0, r1, r0, lsl #1
 8005f1e: 6758         	str	r0, [r3, #0x74]
 8005f20: f242 7110    	movw	r1, #0x2710
 8005f24: f7fc f9a3    	bl	0x800226e <firmware_image+0x226e> @ imm = #-0x3cba
 8005f28: 6758         	str	r0, [r3, #0x74]
 8005f2a: f9b3 1032    	ldrsh.w	r1, [r3, #0x32]
 8005f2e: 008a         	lsls	r2, r1, #0x2
 8005f30: 4601         	mov	r1, r0
 8005f32: 4610         	mov	r0, r2
 8005f34: f7fc f99b    	bl	0x800226e <firmware_image+0x226e> @ imm = #-0x3cca
 8005f38: 66d8         	str	r0, [r3, #0x6c]
 8005f3a: 6f19         	ldr	r1, [r3, #0x70]
 8005f3c: 1a40         	subs	r0, r0, r1
 8005f3e: 2864         	cmp	r0, #0x64
 8005f40: dd02         	ble	0x8005f48 <firmware_image+0x5f48> @ imm = #0x4
 8005f42: 3164         	adds	r1, #0x64
 8005f44: 66d9         	str	r1, [r3, #0x6c]
 8005f46: e004         	b	0x8005f52 <firmware_image+0x5f52> @ imm = #0x8
 8005f48: f110 0f64    	cmn.w	r0, #0x64
 8005f4c: da01         	bge	0x8005f52 <firmware_image+0x5f52> @ imm = #0x2
 8005f4e: 3964         	subs	r1, #0x64
 8005f50: 66d9         	str	r1, [r3, #0x6c]
 8005f52: 6ed8         	ldr	r0, [r3, #0x6c]
 8005f54: 6718         	str	r0, [r3, #0x70]
 8005f56: 8e58         	ldrh	r0, [r3, #0x32]
 8005f58: 8698         	strh	r0, [r3, #0x34]
 8005f5a: bd00         	pop	{pc}
 8005f5c: 0064         	lsls	r4, r4, #0x1
 8005f5e: 2000         	movs	r0, #0x0
 8005f60: 4770         	bx	lr
 8005f62: 4770         	bx	lr
 8005f64: 4770         	bx	lr
 8005f66: 0000         	movs	r0, r0
 8005f68: b510         	push	{r4, lr}
 8005f6a: 4c0e         	ldr	r4, [pc, #0x38]         @ 0x8005fa4 <firmware_image+0x5fa4>
 8005f6c: 1ca0         	adds	r0, r4, #0x2
 8005f6e: f7fb fb79    	bl	0x8001664 <firmware_image+0x1664> @ imm = #-0x490e
 8005f72: 4603         	mov	r3, r0
 8005f74: 1d20         	adds	r0, r4, #0x4
 8005f76: f7fb fb75    	bl	0x8001664 <firmware_image+0x1664> @ imm = #-0x4916
 8005f7a: f1a4 0180    	sub.w	r1, r4, #0x80
 8005f7e: f821 0013    	strh.w	r0, [r1, r3, lsl #1]
 8005f82: 4618         	mov	r0, r3
 8005f84: f7ff ff84    	bl	0x8005e90 <firmware_image+0x5e90> @ imm = #-0xf8
 8005f88: 2106         	movs	r1, #0x6
 8005f8a: 4620         	mov	r0, r4
 8005f8c: f000 ff4e    	bl	0x8006e2c <firmware_image+0x6e2c> @ imm = #0xe9c
 8005f90: 4601         	mov	r1, r0
 8005f92: 1da0         	adds	r0, r4, #0x6
 8005f94: f7fe fc0d    	bl	0x80047b2 <firmware_image+0x47b2> @ imm = #-0x17e6
 8005f98: 2108         	movs	r1, #0x8
 8005f9a: 4620         	mov	r0, r4
 8005f9c: e8bd 4010    	pop.w	{r4, lr}
 8005fa0: f001 b882    	b.w	0x80070a8 <firmware_image+0x70a8> @ imm = #0x1104
 8005fa4: 0478         	lsls	r0, r7, #0x11
 8005fa6: 2000         	movs	r0, #0x0
 8005fa8: e92d 5ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 8005fac: 48a0         	ldr	r0, [pc, #0x280]        @ 0x8006230 <firmware_image+0x6230>
 8005fae: f8df a27c    	ldr.w	r10, [pc, #0x27c]       @ 0x800622c <firmware_image+0x622c>
 8005fb2: 7881         	ldrb	r1, [r0, #0x2]
 8005fb4: 78c2         	ldrb	r2, [r0, #0x3]
 8005fb6: f89a e000    	ldrb.w	lr, [r10]
 8005fba: eb02 2101    	add.w	r1, r2, r1, lsl #8
 8005fbe: fa0f fb81    	sxth.w	r11, r1
 8005fc2: 7901         	ldrb	r1, [r0, #0x4]
 8005fc4: 7942         	ldrb	r2, [r0, #0x5]
 8005fc6: f890 c008    	ldrb.w	r12, [r0, #0x8]
 8005fca: eb02 2101    	add.w	r1, r2, r1, lsl #8
 8005fce: b20f         	sxth	r7, r1
 8005fd0: 7981         	ldrb	r1, [r0, #0x6]
 8005fd2: 79c2         	ldrb	r2, [r0, #0x7]
 8005fd4: 7a43         	ldrb	r3, [r0, #0x9]
 8005fd6: eb02 2101    	add.w	r1, r2, r1, lsl #8
 8005fda: fa0f f881    	sxth.w	r8, r1
 8005fde: 7a84         	ldrb	r4, [r0, #0xa]
 8005fe0: 7ac5         	ldrb	r5, [r0, #0xb]
 8005fe2: f890 900c    	ldrb.w	r9, [r0, #0xc]
 8005fe6: 7b46         	ldrb	r6, [r0, #0xd]
 8005fe8: 2201         	movs	r2, #0x1
 8005fea: 2100         	movs	r1, #0x0
 8005fec: f1be 0f00    	cmp.w	lr, #0x0
 8005ff0: d075         	beq	0x80060de <firmware_image+0x60de> @ imm = #0xea
 8005ff2: f8ba 1005    	ldrh.w	r1, [r10, #0x5]
 8005ff6: f88d 0006    	strb.w	r0, [sp, #0x6]
 8005ffa: 2002         	movs	r0, #0x2
 8005ffc: f88d 0007    	strb.w	r0, [sp, #0x7]
 8006000: 000a         	movs	r2, r1
 8006002: 1c40         	adds	r0, r0, #0x1
 8006004: f8aa 000a    	strh.w	r0, [r10, #0xa]
 8006008: 488d         	ldr	r0, [pc, #0x234]        @ 0x8006240 <firmware_image+0x6240>
 800600a: 8007         	strh	r7, [r0]
 800600c: 488d         	ldr	r0, [pc, #0x234]        @ 0x8006244 <firmware_image+0x6244>
 800600e: f8a0 8000    	strh.w	r8, [r0]
 8006012: 488d         	ldr	r0, [pc, #0x234]        @ 0x8006248 <firmware_image+0x6248>
 8006014: f880 c000    	strb.w	r12, [r0]
 8006018: 488c         	ldr	r0, [pc, #0x230]        @ 0x800624c <firmware_image+0x624c>
 800601a: 7003         	strb	r3, [r0]
 800601c: 0220         	lsls	r0, r4, #0x8
 800601e: b2ec         	uxtb	r4, r5
 8006020: 4420         	add	r0, r4
 8006022: 4c8b         	ldr	r4, [pc, #0x22c]        @ 0x8006250 <firmware_image+0x6250>
 8006024: 8020         	strh	r0, [r4]
 8006026: 4d8b         	ldr	r5, [pc, #0x22c]        @ 0x8006254 <firmware_image+0x6254>
 8006028: f885 9000    	strb.w	r9, [r5]
 800602c: 488a         	ldr	r0, [pc, #0x228]        @ 0x8006258 <firmware_image+0x6258>
 800602e: 7006         	strb	r6, [r0]
 8006030: 2402         	movs	r4, #0x2
 8006032: 2e02         	cmp	r6, #0x2
 8006034: d101         	bne	0x800603a <firmware_image+0x603a> @ imm = #0x2
 8006036: 4889         	ldr	r0, [pc, #0x224]        @ 0x800625c <firmware_image+0x625c>
 8006038: 8004         	strh	r4, [r0]
 800603a: f89a 0004    	ldrb.w	r0, [r10, #0x4]
 800603e: b120         	cbz	r0, 0x800604a <firmware_image+0x604a> @ imm = #0x8
 8006040: 2801         	cmp	r0, #0x1
 8006042: d006         	beq	0x8006052 <firmware_image+0x6052> @ imm = #0xc
 8006044: e00c         	b	0x8006060 <firmware_image+0x6060> @ imm = #0x18
 8006046: b176         	cbz	r6, 0x8006066 <firmware_image+0x6066> @ imm = #0x1c
 8006048: f88a 2004    	strb.w	r2, [r10, #0x4]
 800604c: e00b         	b	0x8006066 <firmware_image+0x6066> @ imm = #0x16
 800604e: b126         	cbz	r6, 0x800605a <firmware_image+0x605a> @ imm = #0x8
 8006050: f88a 6003    	strb.w	r6, [r10, #0x3]
 8006054: f88a 4004    	strb.w	r4, [r10, #0x4]
 8006058: e005         	b	0x8006066 <firmware_image+0x6066> @ imm = #0xa
 800605a: f88a 1004    	strb.w	r1, [r10, #0x4]
 800605e: e002         	b	0x8006066 <firmware_image+0x6066> @ imm = #0x4
 8006060: b90e         	cbnz	r6, 0x8006066 <firmware_image+0x6066> @ imm = #0x2
 8006062: f88a 1004    	strb.w	r1, [r10, #0x4]
 8006066: 4c7d         	ldr	r4, [pc, #0x1f4]        @ 0x800625c <firmware_image+0x625c>
 8006068: f89a 0003    	ldrb.w	r0, [r10, #0x3]
 800606c: 2603         	movs	r6, #0x3
 800606e: 7827         	ldrb	r7, [r4]
 8006070: 4c71         	ldr	r4, [pc, #0x1c4]        @ 0x8006238 <firmware_image+0x6238>
 8006072: 7b24         	ldrb	r4, [r4, #0xc]
 8006074: 433c         	orrs	r4, r7
 8006076: 2801         	cmp	r0, #0x1
 8006078: d036         	beq	0x80060e8 <firmware_image+0x60e8> @ imm = #0x6c
 800607a: 2802         	cmp	r0, #0x2
 800607c: d03e         	beq	0x80060fc <firmware_image+0x60fc> @ imm = #0x7c
 800607e: 2804         	cmp	r0, #0x4
 8006080: d03f         	beq	0x8006102 <firmware_image+0x6102> @ imm = #0x7e
 8006082: 2808         	cmp	r0, #0x8
 8006084: d025         	beq	0x80060d2 <firmware_image+0x60d2> @ imm = #0x4a
 8006086: f88a 1003    	strb.w	r1, [r10, #0x3]
 800608a: 4975         	ldr	r1, [pc, #0x1d4]        @ 0x8006260 <firmware_image+0x6260>
 800608c: f3cc 0080    	ubfx	r0, r12, #0x2, #0x1
 8006090: 7008         	strb	r0, [r1]
 8006092: f3cc 1001    	ubfx	r0, r12, #0x4, #0x2
 8006096: 7028         	strb	r0, [r5]
 8006098: 4872         	ldr	r0, [pc, #0x1c8]        @ 0x8006264 <firmware_image+0x6264>
 800609a: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x8006268 <firmware_image+0x6268>
 800609c: f003 0101    	and	r1, r3, #0x1
 80060a0: 7011         	strb	r1, [r2]
 80060a2: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x800626c <firmware_image+0x626c>
 80060a4: f3c3 0140    	ubfx	r1, r3, #0x1, #0x1
 80060a8: 7011         	strb	r1, [r2]
 80060aa: 4a71         	ldr	r2, [pc, #0x1c4]        @ 0x8006270 <firmware_image+0x6270>
 80060ac: f3c3 0180    	ubfx	r1, r3, #0x2, #0x1
 80060b0: 7011         	strb	r1, [r2]
 80060b2: 4a70         	ldr	r2, [pc, #0x1c0]        @ 0x8006274 <firmware_image+0x6274>
 80060b4: f3c3 01c0    	ubfx	r1, r3, #0x3, #0x1
 80060b8: 7011         	strb	r1, [r2]
 80060ba: 4a6f         	ldr	r2, [pc, #0x1bc]        @ 0x8006278 <firmware_image+0x6278>
 80060bc: f3c3 1100    	ubfx	r1, r3, #0x4, #0x1
 80060c0: 7011         	strb	r1, [r2]
 80060c2: f3c3 1140    	ubfx	r1, r3, #0x5, #0x1
 80060c6: 7001         	strb	r1, [r0]
 80060c8: 496c         	ldr	r1, [pc, #0x1b0]        @ 0x800627c <firmware_image+0x627c>
 80060ca: 0998         	lsrs	r0, r3, #0x6
 80060cc: 7008         	strb	r0, [r1]
 80060ce: e8bd 9ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
 80060d2: b90c         	cbnz	r4, 0x80060d8 <firmware_image+0x60d8> @ imm = #0x2
 80060d4: 486a         	ldr	r0, [pc, #0x1a8]        @ 0x8006280 <firmware_image+0x6280>
 80060d6: 7002         	strb	r2, [r0]
 80060d8: f88a 6001    	strb.w	r6, [r10, #0x1]
 80060dc: f88a 6002    	strb.w	r6, [r10, #0x2]
 80060e0: f88a 1003    	strb.w	r1, [r10, #0x3]
 80060e4: e7d1         	b	0x800608a <firmware_image+0x608a> @ imm = #-0x5e
 80060e6: e014         	b	0x8006112 <firmware_image+0x6112> @ imm = #0x28
 80060e8: b90c         	cbnz	r4, 0x80060ee <firmware_image+0x60ee> @ imm = #0x2
 80060ea: 4866         	ldr	r0, [pc, #0x198]        @ 0x8006284 <firmware_image+0x6284>
 80060ec: 7002         	strb	r2, [r0]
 80060ee: f88a 6001    	strb.w	r6, [r10, #0x1]
 80060f2: f88a 6002    	strb.w	r6, [r10, #0x2]
 80060f6: f88a 1003    	strb.w	r1, [r10, #0x3]
 80060fa: e7c6         	b	0x800608a <firmware_image+0x608a> @ imm = #-0x74
 80060fc: f88a 1003    	strb.w	r1, [r10, #0x3]
 8006100: e7c3         	b	0x800608a <firmware_image+0x608a> @ imm = #-0x7a
 8006102: b90c         	cbnz	r4, 0x8006108 <firmware_image+0x6108> @ imm = #0x2
 8006104: 4860         	ldr	r0, [pc, #0x180]        @ 0x8006288 <firmware_image+0x6288>
 8006106: 7002         	strb	r2, [r0]
 8006108: f88a 6001    	strb.w	r6, [r10, #0x1]
 800610c: f88a 1003    	strb.w	r1, [r10, #0x3]
 8006110: e7bb         	b	0x800608a <firmware_image+0x608a> @ imm = #-0x8a
 8006112: f8ba e008    	ldrh.w	lr, [r10, #0x8]
 8006116: f10e 0e01    	add.w	lr, lr, #0x1
 800611a: f8aa e008    	strh.w	lr, [r10, #0x8]
 800611e: f8df e16c    	ldr.w	lr, [pc, #0x16c]        @ 0x800628c <firmware_image+0x628c>
 8006122: f8ae b000    	strh.w	r11, [lr]
 8006126: f8df b168    	ldr.w	r11, [pc, #0x168]       @ 0x8006290 <firmware_image+0x6290>
 800612a: f8ab 7000    	strh.w	r7, [r11]
 800612e: 4f43         	ldr	r7, [pc, #0x10c]        @ 0x800623c <firmware_image+0x623c>
 8006130: f8a7 8000    	strh.w	r8, [r7]
 8006134: ea4f 270c    	lsl.w	r7, r12, #0x8
 8006138: b2db         	uxtb	r3, r3
 800613a: 443b         	add	r3, r7
 800613c: 4f40         	ldr	r7, [pc, #0x100]        @ 0x8006240 <firmware_image+0x6240>
 800613e: 803b         	strh	r3, [r7]
 8006140: 4b54         	ldr	r3, [pc, #0x150]        @ 0x8006294 <firmware_image+0x6294>
 8006142: 701c         	strb	r4, [r3]
 8006144: 4b54         	ldr	r3, [pc, #0x150]        @ 0x8006298 <firmware_image+0x6298>
 8006146: 701d         	strb	r5, [r3]
 8006148: ea4f 2309    	lsl.w	r3, r9, #0x8
 800614c: b2f6         	uxtb	r6, r6
 800614e: 4433         	add	r3, r6
 8006150: 4e3e         	ldr	r6, [pc, #0xf8]         @ 0x800624c <firmware_image+0x624c>
 8006152: 8033         	strh	r3, [r6]
 8006154: 7b80         	ldrb	r0, [r0, #0xe]
 8006156: 4e41         	ldr	r6, [pc, #0x104]        @ 0x800625c <firmware_image+0x625c>
 8006158: f000 0303    	and	r3, r0, #0x3
 800615c: 7033         	strb	r3, [r6]
 800615e: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x800629c <firmware_image+0x629c>
 8006160: 09c0         	lsrs	r0, r0, #0x7
 8006162: 7018         	strb	r0, [r3]
 8006164: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x80062a0 <firmware_image+0x62a0>
 8006166: b100         	cbz	r0, 0x800616a <firmware_image+0x616a> @ imm = #0x0
 8006168: 7019         	strb	r1, [r3]
 800616a: 4f4e         	ldr	r7, [pc, #0x138]        @ 0x80062a4 <firmware_image+0x62a4>
 800616c: 7038         	strb	r0, [r7]
 800616e: f004 0001    	and	r0, r4, #0x1
 8006172: b108         	cbz	r0, 0x8006178 <firmware_image+0x6178> @ imm = #0x2
 8006174: 484c         	ldr	r0, [pc, #0x130]        @ 0x80062a8 <firmware_image+0x62a8>
 8006176: 7002         	strb	r2, [r0]
 8006178: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x80062ac <firmware_image+0x62ac>
 800617a: f3c4 0040    	ubfx	r0, r4, #0x1, #0x1
 800617e: 7010         	strb	r0, [r2]
 8006180: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x80062b0 <firmware_image+0x62b0>
 8006182: f3c4 0080    	ubfx	r0, r4, #0x2, #0x1
 8006186: 7010         	strb	r0, [r2]
 8006188: f3c4 00c0    	ubfx	r0, r4, #0x3, #0x1
 800618c: 4a49         	ldr	r2, [pc, #0x124]        @ 0x80062b4 <firmware_image+0x62b4>
 800618e: 8010         	strh	r0, [r2]
 8006190: f8df c124    	ldr.w	r12, [pc, #0x124]       @ 0x80062b8 <firmware_image+0x62b8>
 8006194: 4a49         	ldr	r2, [pc, #0x124]        @ 0x80062bc <firmware_image+0x62bc>
 8006196: 2707         	movs	r7, #0x7
 8006198: f9bc 8000    	ldrsh.w	r8, [r12]
 800619c: 8812         	ldrh	r2, [r2]
 800619e: 4580         	cmp	r8, r0
 80061a0: d006         	beq	0x80061b0 <firmware_image+0x61b0> @ imm = #0xc
 80061a2: 7019         	strb	r1, [r3]
 80061a4: 2a02         	cmp	r2, #0x2
 80061a6: d903         	bls	0x80061b0 <firmware_image+0x61b0> @ imm = #0x6
 80061a8: f88a 7001    	strb.w	r7, [r10, #0x1]
 80061ac: f88a 7002    	strb.w	r7, [r10, #0x2]
 80061b0: f8ac 0000    	strh.w	r0, [r12]
 80061b4: f3c5 1040    	ubfx	r0, r5, #0x5, #0x1
 80061b8: f8df c104    	ldr.w	r12, [pc, #0x104]       @ 0x80062c0 <firmware_image+0x62c0>
 80061bc: f8ac 0000    	strh.w	r0, [r12]
 80061c0: f8df c100    	ldr.w	r12, [pc, #0x100]       @ 0x80062c4 <firmware_image+0x62c4>
 80061c4: f9bc 8000    	ldrsh.w	r8, [r12]
 80061c8: 4580         	cmp	r8, r0
 80061ca: d00b         	beq	0x80061e4 <firmware_image+0x61e4> @ imm = #0x16
 80061cc: 7019         	strb	r1, [r3]
 80061ce: 2a02         	cmp	r2, #0x2
 80061d0: d908         	bls	0x80061e4 <firmware_image+0x61e4> @ imm = #0x10
 80061d2: 2801         	cmp	r0, #0x1
 80061d4: d002         	beq	0x80061dc <firmware_image+0x61dc> @ imm = #0x4
 80061d6: f88a 7001    	strb.w	r7, [r10, #0x1]
 80061da: e003         	b	0x80061e4 <firmware_image+0x61e4> @ imm = #0x6
 80061dc: 491e         	ldr	r1, [pc, #0x78]         @ 0x8006258 <firmware_image+0x6258>
 80061de: f44f 72fa    	mov.w	r2, #0x1f4
 80061e2: 800a         	strh	r2, [r1]
 80061e4: f8ac 0000    	strh.w	r0, [r12]
 80061e8: f3c4 1001    	ubfx	r0, r4, #0x4, #0x2
 80061ec: 7030         	strb	r0, [r6]
 80061ee: 4936         	ldr	r1, [pc, #0xd8]         @ 0x80062c8 <firmware_image+0x62c8>
 80061f0: f3c4 1080    	ubfx	r0, r4, #0x6, #0x1
 80061f4: 7008         	strb	r0, [r1]
 80061f6: 4935         	ldr	r1, [pc, #0xd4]         @ 0x80062cc <firmware_image+0x62cc>
 80061f8: 09e0         	lsrs	r0, r4, #0x7
 80061fa: 7008         	strb	r0, [r1]
 80061fc: 4934         	ldr	r1, [pc, #0xd0]         @ 0x80062d0 <firmware_image+0x62d0>
 80061fe: f005 0001    	and	r0, r5, #0x1
 8006202: 7008         	strb	r0, [r1]
 8006204: 4933         	ldr	r1, [pc, #0xcc]         @ 0x80062d4 <firmware_image+0x62d4>
 8006206: f3c5 0040    	ubfx	r0, r5, #0x1, #0x1
 800620a: 7008         	strb	r0, [r1]
 800620c: 4932         	ldr	r1, [pc, #0xc8]         @ 0x80062d8 <firmware_image+0x62d8>
 800620e: f3c5 0080    	ubfx	r0, r5, #0x2, #0x1
 8006212: 7008         	strb	r0, [r1]
 8006214: 00c0         	lsls	r0, r0, #0x3
 8006216: 7008         	strb	r0, [r1]
 8006218: 4930         	ldr	r1, [pc, #0xc0]         @ 0x80062dc <firmware_image+0x62dc>
 800621a: f3c5 1000    	ubfx	r0, r5, #0x4, #0x1
 800621e: 7008         	strb	r0, [r1]
 8006220: 492f         	ldr	r1, [pc, #0xbc]         @ 0x80062e0 <firmware_image+0x62e0>
 8006222: 09a8         	lsrs	r0, r5, #0x6
 8006224: 7008         	strb	r0, [r1]
 8006226: e8bd 5ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 800622a: f7ff b81f    	b.w	0x800526c <firmware_image+0x526c> @ imm = #-0xfc2
 800622e: 0000         	movs	r0, r0
 8006230: 021e         	lsls	r6, r3, #0x8
 8006232: 2000         	movs	r0, #0x0
 8006234: 0478         	lsls	r0, r7, #0x11
 8006236: 2000         	movs	r0, #0x0
 8006238: 00a4         	lsls	r4, r4, #0x2
 800623a: 2000         	movs	r0, #0x0
 800623c: 0134         	lsls	r4, r6, #0x4
 800623e: 2000         	movs	r0, #0x0
 8006240: 0072         	lsls	r2, r6, #0x1
 8006242: 2000         	movs	r0, #0x0
 8006244: 0071         	lsls	r1, r6, #0x1
 8006246: 2000         	movs	r0, #0x0
 8006248: 009c         	lsls	r4, r3, #0x2
 800624a: 2000         	movs	r0, #0x0
 800624c: 0143         	lsls	r3, r0, #0x5
 800624e: 2000         	movs	r0, #0x0
 8006250: 016e         	lsls	r6, r5, #0x5
 8006252: 2000         	movs	r0, #0x0
 8006254: 003e         	movs	r6, r7
 8006256: 2000         	movs	r0, #0x0
 8006258: 0142         	lsls	r2, r0, #0x5
 800625a: 2000         	movs	r0, #0x0
 800625c: 0169         	lsls	r1, r5, #0x5
 800625e: 2000         	movs	r0, #0x0
 8006260: 0195         	lsls	r5, r2, #0x6
 8006262: 2000         	movs	r0, #0x0
 8006264: 0074         	lsls	r4, r6, #0x1
 8006266: 2000         	movs	r0, #0x0
 8006268: 0076         	lsls	r6, r6, #0x1
 800626a: 2000         	movs	r0, #0x0
 800626c: 007c         	lsls	r4, r7, #0x1
 800626e: 2000         	movs	r0, #0x0
 8006270: 0078         	lsls	r0, r7, #0x1
 8006272: 2000         	movs	r0, #0x0
 8006274: 007a         	lsls	r2, r7, #0x1
 8006276: 2000         	movs	r0, #0x0
 8006278: 007f         	lsls	r7, r7, #0x1
 800627a: 2000         	movs	r0, #0x0
 800627c: 0132         	lsls	r2, r6, #0x4
 800627e: 2000         	movs	r0, #0x0
 8006280: 0149         	lsls	r1, r1, #0x5
 8006282: 2000         	movs	r0, #0x0
 8006284: 0131         	lsls	r1, r6, #0x4
 8006286: 2000         	movs	r0, #0x0
 8006288: 0084         	lsls	r4, r0, #0x2
 800628a: 2000         	movs	r0, #0x0
 800628c: 003c         	movs	r4, r7
 800628e: 2000         	movs	r0, #0x0
 8006290: 0070         	lsls	r0, r6, #0x1
 8006292: 2000         	movs	r0, #0x0
 8006294: 006f         	lsls	r7, r5, #0x1
 8006296: 2000         	movs	r0, #0x0
 8006298: 0067         	lsls	r7, r4, #0x1
 800629a: 2000         	movs	r0, #0x0
 800629c: 006c         	lsls	r4, r5, #0x1
 800629e: 2000         	movs	r0, #0x0
 80062a0: 0130         	lsls	r0, r6, #0x4
 80062a2: 2000         	movs	r0, #0x0
 80062a4: 0153         	lsls	r3, r2, #0x5
 80062a6: 2000         	movs	r0, #0x0
 80062a8: 0148         	lsls	r0, r1, #0x5
 80062aa: 2000         	movs	r0, #0x0
 80062ac: 0168         	lsls	r0, r5, #0x5
 80062ae: 2000         	movs	r0, #0x0
 80062b0: 008a         	lsls	r2, r1, #0x2
 80062b2: 2000         	movs	r0, #0x0
 80062b4: 012c         	lsls	r4, r5, #0x4
 80062b6: 2000         	movs	r0, #0x0
 80062b8: 0004         	movs	r4, r0
 80062ba: 2000         	movs	r0, #0x0
 80062bc: 008c         	lsls	r4, r1, #0x2
 80062be: 2000         	movs	r0, #0x0
 80062c0: 012e         	lsls	r6, r5, #0x4
 80062c2: 2000         	movs	r0, #0x0
 80062c4: 0196         	lsls	r6, r2, #0x6
 80062c6: 2000         	movs	r0, #0x0
 80062c8: 0152         	lsls	r2, r2, #0x5
 80062ca: 2000         	movs	r0, #0x0
 80062cc: 0073         	lsls	r3, r6, #0x1
 80062ce: 2000         	movs	r0, #0x0
 80062d0: 0075         	lsls	r5, r6, #0x1
 80062d2: 2000         	movs	r0, #0x0
 80062d4: 007b         	lsls	r3, r7, #0x1
 80062d6: 2000         	movs	r0, #0x0
 80062d8: 0077         	lsls	r7, r6, #0x1
 80062da: 2000         	movs	r0, #0x0
 80062dc: 0079         	lsls	r1, r7, #0x1
 80062de: 2000         	movs	r0, #0x0
 80062e0: 007e         	lsls	r6, r7, #0x1
 80062e2: 2000         	movs	r0, #0x0
 80062e4: 0049         	lsls	r1, r1, #0x1
 80062e6: ea50 20c1    	orrs.w	r0, r0, r1, lsl #11
 80062ea: bf18         	it	ne
 80062ec: 2004         	movne	r0, #0x4
 80062ee: 0d4a         	lsrs	r2, r1, #0x15
 80062f0: bf18         	it	ne
 80062f2: f040 0001    	orrne	r0, r0, #0x1
 80062f6: f240 72ff    	movw	r2, #0x7ff
 80062fa: ebb2 5f51    	cmp.w	r2, r1, lsr #21
 80062fe: bf08         	it	eq
 8006300: f040 0002    	orreq	r0, r0, #0x2
 8006304: 2801         	cmp	r0, #0x1
 8006306: bf08         	it	eq
 8006308: 2005         	moveq	r0, #0x5
 800630a: 4770         	bx	lr
 800630c: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8006310: 1e4f         	subs	r7, r1, #0x1
 8006312: eb00 01c7    	add.w	r1, r0, r7, lsl #3
 8006316: 4604         	mov	r4, r0
 8006318: e9d1 0100    	ldrd	r0, r1, [r1]
 800631c: 4615         	mov	r5, r2
 800631e: 461e         	mov	r6, r3
 8006320: f037 0206    	bics	r2, r7, #0x6
 8006324: d00d         	beq	0x8006342 <firmware_image+0x6342> @ imm = #0x1a
 8006326: 462a         	mov	r2, r5
 8006328: 4633         	mov	r3, r6
 800632a: f7fa f8aa    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5eac
 800632e: 1e7f         	subs	r7, r7, #0x1
 8006330: eb04 03c7    	add.w	r3, r4, r7, lsl #3
 8006334: e9d3 2300    	ldrd	r2, r3, [r3]
 8006338: f7f9 fffc    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x6008
 800633c: f037 0206    	bics	r2, r7, #0x6
 8006340: d1f1         	bne	0x8006326 <firmware_image+0x6326> @ imm = #-0x1e
 8006342: 2f02         	cmp	r7, #0x2
 8006344: d025         	beq	0x8006392 <firmware_image+0x6392> @ imm = #0x4a
 8006346: 2f04         	cmp	r7, #0x4
 8006348: d013         	beq	0x8006372 <firmware_image+0x6372> @ imm = #0x26
 800634a: 2f06         	cmp	r7, #0x6
 800634c: bf18         	it	ne
 800634e: e8bd 81f0    	popne.w	{r4, r5, r6, r7, r8, pc}
 8006352: 462a         	mov	r2, r5
 8006354: 4633         	mov	r3, r6
 8006356: f7fa f894    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5ed8
 800635a: e9d4 230a    	ldrd	r2, r3, [r4, #40]
 800635e: f7f9 ffe9    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x602e
 8006362: 462a         	mov	r2, r5
 8006364: 4633         	mov	r3, r6
 8006366: f7fa f88c    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5ee8
 800636a: e9d4 2308    	ldrd	r2, r3, [r4, #32]
 800636e: f7f9 ffe1    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x603e
 8006372: 462a         	mov	r2, r5
 8006374: 4633         	mov	r3, r6
 8006376: f7fa f884    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5ef8
 800637a: e9d4 2306    	ldrd	r2, r3, [r4, #24]
 800637e: f7f9 ffd9    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x604e
 8006382: 462a         	mov	r2, r5
 8006384: 4633         	mov	r3, r6
 8006386: f7fa f87c    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5f08
 800638a: e9d4 2304    	ldrd	r2, r3, [r4, #16]
 800638e: f7f9 ffd1    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x605e
 8006392: 462a         	mov	r2, r5
 8006394: f874 e9d4    	<unknown>
 8006398: 2302         	movs	r3, #0x2
 800639a: f7f9 ffc9    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0x606e
 800639e: 462a         	mov	r2, r5
 80063a0: 4633         	mov	r3, r6
 80063a2: f7fa f86c    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x5f28
 80063a6: e9d4 41f0    	ldrd	r4, r1, [r4, #960]
 80063aa: f7f9 bfbf    	b.w	0x800032c <firmware_image+0x32c> @ imm = #-0x6082
 80063ae: 2201         	movs	r2, #0x1
 80063b0: f7f9 bfba    	b.w	0x8000328 <firmware_image+0x328> @ imm = #-0x608c
 80063b4: 2200         	movs	r2, #0x0
 80063b6: 4613         	mov	r3, r2
 80063b8: 4610         	mov	r0, r2
 80063ba: 4611         	mov	r1, r2
 80063bc: f7fa b8cd    	b.w	0x800055a <firmware_image+0x55a> @ imm = #-0x5e66
 80063c0: 4a02         	ldr	r2, [pc, #0x8]          @ 0x80063cc <firmware_image+0x63cc>
 80063c2: 2000         	movs	r0, #0x0
 80063c4: 0711         	lsls	r1, r2, #0x1c
 80063c6: f7fa ba96    	b.w	0x80008f6 <firmware_image+0x8f6> @ imm = #-0x5ad4
 80063ca: 0000         	movs	r0, r0
 80063cc: fd01 ffff    	stc2	p15, c15, [r1, #-1020]
 80063d0: e002         	b	0x80063d8 <firmware_image+0x63d8> @ imm = #0x4
 80063d2: c808         	ldm	r0!, {r3}
 80063d4: 1f12         	subs	r2, r2, #0x4
 80063d6: c108         	stm	r1!, {r3}
 80063d8: 2a00         	cmp	r2, #0x0
 80063da: d1fa         	bne	0x80063d2 <firmware_image+0x63d2> @ imm = #-0xc
 80063dc: 4770         	bx	lr
 80063de: 4770         	bx	lr
 80063e0: 2000         	movs	r0, #0x0
 80063e2: e001         	b	0x80063e8 <firmware_image+0x63e8> @ imm = #0x2
 80063e4: c101         	stm	r1!, {r0}
 80063e6: 1f12         	subs	r2, r2, #0x4
 80063e8: 2a00         	cmp	r2, #0x0
 80063ea: d1fb         	bne	0x80063e4 <firmware_image+0x63e4> @ imm = #-0xa
 80063ec: 4770         	bx	lr
 80063ee: 0000         	movs	r0, r0
 80063f0: 4901         	ldr	r1, [pc, #0x4]          @ 0x80063f8 <firmware_image+0x63f8>
 80063f2: 6008         	str	r0, [r1]
 80063f4: 4770         	bx	lr
 80063f6: 0000         	movs	r0, r0
 80063f8: 02d4         	lsls	r4, r2, #0xb
 80063fa: 2000         	movs	r0, #0x0
 80063fc: 2800         	cmp	r0, #0x0
 80063fe: da01         	bge	0x8006404 <firmware_image+0x6404> @ imm = #0x2
 8006400: 4770         	bx	lr
 8006402: 0000         	movs	r0, r0
 8006404: 4901         	ldr	r1, [pc, #0x4]          @ 0x800640c <firmware_image+0x640c>
 8006406: 6008         	str	r0, [r1]
 8006408: 4770         	bx	lr
 800640a: 0000         	movs	r0, r0
 800640c: 02d4         	lsls	r4, r2, #0xb
 800640e: 2000         	movs	r0, #0x0
 8006410: 2800         	cmp	r0, #0x0
 8006412: da01         	bge	0x8006418 <firmware_image+0x6418> @ imm = #0x2
 8006414: 4240         	rsbs	r0, r0, #0
 8006416: b200         	sxth	r0, r0
 8006418: 4770         	bx	lr
 800641a: 2800         	cmp	r0, #0x0
 800641c: da01         	bge	0x8006422 <firmware_image+0x6422> @ imm = #0x2
 800641e: 4240         	rsbs	r0, r0, #0
 8006420: 2800         	cmp	r0, #0x0
 8006422: da00         	bge	0x8006426 <firmware_image+0x6426> @ imm = #0x0
 8006424: 4240         	rsbs	r0, r0, #0
 8006426: 4770         	bx	lr
 8006428: e92d 4df0    	push.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800642c: 4f8d         	ldr	r7, [pc, #0x234]        @ 0x8006664 <firmware_image+0x6664>
 800642e: f021 4a00    	bic	r10, r1, #0x80000000
 8006432: b086         	sub	sp, #0x18
 8006434: 4605         	mov	r5, r0
 8006436: 460c         	mov	r4, r1
 8006438: 45ba         	cmp	r10, r7
 800643a: db2a         	blt	0x8006492 <firmware_image+0x6492> @ imm = #0x54
 800643c: ebaa 0007    	sub.w	r0, r10, r7
 8006440: 4328         	orrs	r0, r5
 8006442: d00a         	beq	0x800645a <firmware_image+0x645a> @ imm = #0x14
 8006444: 4888         	ldr	r0, [pc, #0x220]        @ 0x8006668 <firmware_image+0x6668>
 8006446: 4582         	cmp	r10, r0
 8006448: dc01         	bgt	0x800644e <firmware_image+0x644e> @ imm = #0x2
 800644a: d11a         	bne	0x8006482 <firmware_image+0x6482> @ imm = #0x34
 800644c: b1cd         	cbz	r5, 0x8006482 <firmware_image+0x6482> @ imm = #0x32
 800644e: b006         	add	sp, #0x18
 8006450: 4628         	mov	r0, r5
 8006452: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006456: f7ff 4b84    	<unknown>
 800645a: 4628         	mov	r0, r5
 800645c: f7fa f811    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5fde
 8006460: 4607         	mov	r7, r0
 8006462: 460e         	mov	r6, r1
 8006464: 4a82         	ldr	r2, [pc, #0x208]        @ 0x8006670 <firmware_image+0x6670>
 8006466: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x8006674 <firmware_image+0x6674>
 8006468: 4628         	mov	r0, r5
 800646a: 4621         	mov	r1, r4
 800646c: f7fa f809    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5fee
 8006470: b006         	add	sp, #0x18
 8006472: 463a         	mov	r2, r7
 8006474: 4633         	mov	r3, r6
 8006476: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800647a: f7f9 bf5b    	b.w	0x8000334 <firmware_image+0x334> @ imm = #-0x614a
 800647e: 2001         	movs	r0, #0x1
 8006480: f7ff ffbc    	bl	0x80063fc <firmware_image+0x63fc> @ imm = #-0x88
 8006484: b006         	add	sp, #0x18
 8006486: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800648a: f7ff bf99    	b.w	0x80063c0 <firmware_image+0x63c0> @ imm = #-0xce
 800648e: 487a         	ldr	r0, [pc, #0x1e8]        @ 0x8006678 <firmware_image+0x6678>
 8006490: 4582         	cmp	r10, r0
 8006492: da42         	bge	0x800651a <firmware_image+0x651a> @ imm = #0x84
 8006494: f1ba 5f79    	cmp.w	r10, #0x3e400000
 8006498: da0b         	bge	0x80064b2 <firmware_image+0x64b2> @ imm = #0x16
 800649a: 4628         	mov	r0, r5
 800649c: f7ff ff22    	bl	0x80062e4 <firmware_image+0x62e4> @ imm = #-0x1bc
 80064a0: 2804         	cmp	r0, #0x4
 80064a2: bf08         	it	eq
 80064a4: f7ff ff92    	bleq	0x80063cc <firmware_image+0x63cc> @ imm = #-0xdc
 80064a8: 4628         	mov	r0, r5
 80064aa: b006         	add	sp, #0x18
 80064ac: 4621         	mov	r1, r4
 80064ae: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80064b2: 462a         	mov	r2, r5
 80064b4: 460b         	mov	r3, r1
 80064b6: 4610         	mov	r0, r2
 80064b8: f7f9 ffe3    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x603a
 80064bc: 4683         	mov	r11, r0
 80064be: 4602         	mov	r2, r0
 80064c0: 486e         	ldr	r0, [pc, #0x1b8]        @ 0x800667c <firmware_image+0x667c>
 80064c2: 460e         	mov	r6, r1
 80064c4: 460b         	mov	r3, r1
 80064c6: 2106         	movs	r1, #0x6
 80064c8: 4478         	add	r0, pc
 80064ca: f7ff ff1f    	bl	0x800630c <firmware_image+0x630c> @ imm = #-0x1c2
 80064ce: 465a         	mov	r2, r11
 80064d0: 4633         	mov	r3, r6
 80064d2: f7f9 ffd6    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x6054
 80064d6: 4680         	mov	r8, r0
 80064d8: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x8006680 <firmware_image+0x6680>
 80064da: 468a         	mov	r10, r1
 80064dc: 465a         	mov	r2, r11
 80064de: 4633         	mov	r3, r6
 80064e0: 2104         	movs	r1, #0x4
 80064e2: 4478         	add	r0, pc
 80064e4: f7ff ff12    	bl	0x800630c <firmware_image+0x630c> @ imm = #-0x1dc
 80064e8: 465a         	mov	r2, r11
 80064ea: 4633         	mov	r3, r6
 80064ec: f7f9 ffc9    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x606e
 80064f0: f7f9 ff1e    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0x61c4
 80064f4: 4602         	mov	r2, r0
 80064f6: 460b         	mov	r3, r1
 80064f8: 4640         	mov	r0, r8
 80064fa: 4651         	mov	r1, r10
 80064fc: f7fa f831    	bl	0x8000562 <firmware_image+0x562> @ imm = #-0x5f9e
 8006500: 462a         	mov	r2, r5
 8006502: 4623         	mov	r3, r4
 8006504: f7f9 ffbb    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x608a
 8006508: b006         	add	sp, #0x18
 800650a: 462a         	mov	r2, r5
 800650c: 4623         	mov	r3, r4
 800650e: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006512: f7f9 bf0d    	b.w	0x8000330 <firmware_image+0x330> @ imm = #-0x61e6
 8006516: 4628         	mov	r0, r5
 8006518: f024 4100    	bic	r1, r4, #0x80000000
 800651c: 2200         	movs	r2, #0x0
 800651e: 463d         	mov	r5, r7
 8006520: 463b         	mov	r3, r7
 8006522: f7f9 ffa9    	bl	0x8000478 <firmware_image+0x478> @ imm = #-0x60ae
 8006526: f04f 32ff    	mov.w	r2, #0xffffffff
 800652a: f7fa f9e8    	bl	0x80008fe <firmware_image+0x8fe> @ imm = #-0x5c30
 800652e: 4606         	mov	r6, r0
 8006530: 4602         	mov	r2, r0
 8006532: 4853         	ldr	r0, [pc, #0x14c]        @ 0x8006680 <firmware_image+0x6680>
 8006534: 460f         	mov	r7, r1
 8006536: 460b         	mov	r3, r1
 8006538: 2106         	movs	r1, #0x6
 800653a: 4478         	add	r0, pc
 800653c: f7ff fee4    	bl	0x8006308 <firmware_image+0x6308> @ imm = #-0x238
 8006540: 4632         	mov	r2, r6
 8006542: 463b         	mov	r3, r7
 8006544: f7f9 ff9b    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x60ca
 8006548: e9cd 0100    	strd	r0, r1, [sp]
 800654c: 484d         	ldr	r0, [pc, #0x134]        @ 0x8006684 <firmware_image+0x6684>
 800654e: 4632         	mov	r2, r6
 8006550: 463b         	mov	r3, r7
 8006552: 2104         	movs	r1, #0x4
 8006554: 4478         	add	r0, pc
 8006556: f7ff fed7    	bl	0x8006308 <firmware_image+0x6308> @ imm = #-0x252
 800655a: 4632         	mov	r2, r6
 800655c: 463b         	mov	r3, r7
 800655e: f7f9 ff8e    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x60e4
 8006562: 2200         	movs	r2, #0x0
 8006564: 462b         	mov	r3, r5
 8006566: f7f9 fee3    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0x623a
 800656a: 4683         	mov	r11, r0
 800656c: 9102         	str	r1, [sp, #0x8]
 800656e: 4630         	mov	r0, r6
 8006570: 4639         	mov	r1, r7
 8006572: f000 fce1    	bl	0x8006f38 <firmware_image+0x6f38> @ imm = #0x9c2
 8006576: 4680         	mov	r8, r0
 8006578: 4843         	ldr	r0, [pc, #0x10c]        @ 0x8006688 <firmware_image+0x6688>
 800657a: 460d         	mov	r5, r1
 800657c: 4550         	cmp	r0, r10
 800657e: dc17         	bgt	0x80065b0 <firmware_image+0x65b0> @ imm = #0x2e
 8006580: e9dd 0100    	ldrd	r0, r1, [sp]
 8006584: 465a         	mov	r2, r11
 8006586: 9b02         	ldr	r3, [sp, #0x8]
 8006588: f7f9 ffeb    	bl	0x8000562 <firmware_image+0x562> @ imm = #-0x602a
 800658c: 4642         	mov	r2, r8
 800658e: 462b         	mov	r3, r5
 8006590: f7f9 ff75    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x6116
 8006594: 4642         	mov	r2, r8
 8006596: 462b         	mov	r3, r5
 8006598: f7f9 feca    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0x626c
 800659c: 2201         	movs	r2, #0x1
 800659e: f7fa f9ae    	bl	0x80008fe <firmware_image+0x8fe> @ imm = #-0x5ca4
 80065a2: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x8006664 <firmware_image+0x6664>
 80065a4: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x8006668 <firmware_image+0x6668>
 80065a6: f7f9 ff64    	bl	0x8000472 <firmware_image+0x472> @ imm = #-0x6138
 80065aa: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x800666c <firmware_image+0x666c>
 80065ac: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x8006670 <firmware_image+0x6670>
 80065ae: e04c         	b	0x800664a <firmware_image+0x664a> @ imm = #0x98
 80065b0: f04f 0a00    	mov.w	r10, #0x0
 80065b4: 4652         	mov	r2, r10
 80065b6: 460b         	mov	r3, r1
 80065b8: 4640         	mov	r0, r8
 80065ba: f7f9 feb9    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0x628e
 80065be: e9cd 1003    	strd	r1, r0, [sp, #12]
 80065c2: 4652         	mov	r2, r10
 80065c4: 462b         	mov	r3, r5
 80065c6: 4610         	mov	r0, r2
 80065c8: 4619         	mov	r1, r3
 80065ca: f7f9 ff58    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x6150
 80065ce: 4632         	mov	r2, r6
 80065d0: 463b         	mov	r3, r7
 80065d2: f7f9 ff51    	bl	0x8000478 <firmware_image+0x478> @ imm = #-0x615e
 80065d6: e9dd 3203    	ldrd	r3, r2, [sp, #12]
 80065da: f7f9 ffc2    	bl	0x8000562 <firmware_image+0x562> @ imm = #-0x607c
 80065de: 4606         	mov	r6, r0
 80065e0: 0100         	lsls	r0, r0, #0x4
 80065e2: 465a         	mov	r2, r11
 80065e4: 9b02         	ldr	r3, [sp, #0x8]
 80065e6: f7f9 ffba    	bl	0x800055e <firmware_image+0x55e> @ imm = #-0x608c
 80065ea: 4683         	mov	r11, r0
 80065ec: 9100         	str	r1, [sp]
 80065ee: 2201         	movs	r2, #0x1
 80065f0: 4630         	mov	r0, r6
 80065f2: 4639         	mov	r1, r7
 80065f4: f7fa f981    	bl	0x80008fa <firmware_image+0x8fa> @ imm = #-0x5cfe
 80065f8: 4a19         	ldr	r2, [pc, #0x64]         @ 0x8006660 <firmware_image+0x6660>
 80065fa: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x8006664 <firmware_image+0x6664>
 80065fc: f7f9 ff3a    	bl	0x8000474 <firmware_image+0x474> @ imm = #-0x618c
 8006600: 4606         	mov	r6, r0
 8006602: 460f         	mov	r7, r1
 8006604: 2201         	movs	r2, #0x1
 8006606: 4640         	mov	r0, r8
 8006608: 4629         	mov	r1, r5
 800660a: f7fa f976    	bl	0x80008fa <firmware_image+0x8fa> @ imm = #-0x5d14
 800660e: 465a         	mov	r2, r11
 8006610: 9b00         	ldr	r3, [sp]
 8006612: f7f9 ff32    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x619c
 8006616: 4632         	mov	r2, r6
 8006618: 463b         	mov	r3, r7
 800661a: f7f9 ff28    	bl	0x800046e <firmware_image+0x46e> @ imm = #-0x61b0
 800661e: 4606         	mov	r6, r0
 8006620: 460f         	mov	r7, r1
 8006622: 2201         	movs	r2, #0x1
 8006624: 4650         	mov	r0, r10
 8006626: 4629         	mov	r1, r5
 8006628: f7fa f967    	bl	0x80008fa <firmware_image+0x8fa> @ imm = #-0x5d32
 800662c: 4d0e         	ldr	r5, [pc, #0x38]         @ 0x8006668 <firmware_image+0x6668>
 800662e: f8df 8058    	ldr.w	r8, [pc, #0x58]         @ 0x8006688 <firmware_image+0x6688>
 8006632: 462a         	mov	r2, r5
 8006634: 4643         	mov	r3, r8
 8006636: f7f9 ff1d    	bl	0x8000474 <firmware_image+0x474> @ imm = #-0x61c6
 800663a: 4632         	mov	r2, r6
 800663c: 463b         	mov	r3, r7
 800663e: f7f9 ff19    	bl	0x8000474 <firmware_image+0x474> @ imm = #-0x61ce
 8006642: 462a         	mov	r2, r5
 8006644: 4643         	mov	r3, r8
 8006646: f7f9 ff15    	bl	0x8000474 <firmware_image+0x474> @ imm = #-0x61d6
 800664a: 2c00         	cmp	r4, #0x0
 800664c: bfd8         	it	le
 800664e: f081 4100    	eorle	r1, r1, #0x80000000
 8006652: b006         	add	sp, #0x18
 8006654: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 8006658: 0000         	movs	r0, r0
 800665a: 3ff0         	subs	r7, #0xf0
 800665c: 0000         	movs	r0, r0
 800665e: 7ff0         	ldrb	r0, [r6, #0x1f]
 8006660: 5c07         	ldrb	r7, [r0, r0]
 8006662: 3314         	adds	r3, #0x14
 8006664: a626         	adr	r6, #152 <firmware_image+0x668e>
 8006666: 3c91         	subs	r4, #0x91
 8006668: 2d18         	cmp	r5, #0x18
 800666a: 5444         	strb	r4, [r0, r1]
 800666c: 21fb         	movs	r1, #0xfb
 800666e: 3ff9         	subs	r7, #0xf9
 8006670: 0000         	movs	r0, r0
 8006672: 3fe0         	subs	r7, #0xe0
 8006674: 10d4         	asrs	r4, r2, #0x3
 8006676: 0000         	movs	r0, r0
 8006678: 10ea         	asrs	r2, r5, #0x3
 800667a: 0000         	movs	r0, r0
 800667c: 105e         	asrs	r6, r3, #0x1
 800667e: 0000         	movs	r0, r0
 8006680: 1074         	asrs	r4, r6, #0x1
 8006682: 0000         	movs	r0, r0
 8006684: 3333         	adds	r3, #0x33
 8006686: 3fef         	subs	r7, #0xef
 8006688: 21fb         	movs	r1, #0xfb
 800668a: 3fe9         	subs	r7, #0xe9
 800668c: e92d 4ff8    	push.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8006690: 4604         	mov	r4, r0
 8006692: 460d         	mov	r5, r1
 8006694: f021 4000    	bic	r0, r1, #0x80000000
 8006698: 9100         	str	r1, [sp]
 800669a: 4973         	ldr	r1, [pc, #0x1cc]        @ 0x8006868 <firmware_image+0x6868>
 800669c: 4281         	cmp	r1, r0
 800669e: dc11         	bgt	0x80066c4 <firmware_image+0x66c4> @ imm = #0x22
 80066a0: 4972         	ldr	r1, [pc, #0x1c8]        @ 0x800686c <firmware_image+0x686c>
 80066a2: 4288         	cmp	r0, r1
 80066a4: dc01         	bgt	0x80066aa <firmware_image+0x66aa> @ imm = #0x2
 80066a6: d106         	bne	0x80066b6 <firmware_image+0x66b6> @ imm = #0xc
 80066a8: b12c         	cbz	r4, 0x80066b6 <firmware_image+0x66b6> @ imm = #0xa
 80066aa: 4620         	mov	r0, r4
 80066ac: 4629         	mov	r1, r5
 80066ae: e8bd 4ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80066b2: f7ff be7c    	b.w	0x80063ae <firmware_image+0x63ae> @ imm = #-0x308
 80066b6: 486e         	ldr	r0, [pc, #0x1b8]        @ 0x8006870 <firmware_image+0x6870>
 80066b8: 2d00         	cmp	r5, #0x0
 80066ba: bfcc         	ite	gt
 80066bc: 496d         	ldrgt	r1, [pc, #0x1b4]        @ 0x8006874 <firmware_image+0x6874>
 80066be: 496e         	ldrle	r1, [pc, #0x1b8]        @ 0x8006878 <firmware_image+0x6878>
 80066c0: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80066c4: 496d         	ldr	r1, [pc, #0x1b4]        @ 0x800687c <firmware_image+0x687c>
 80066c6: 4281         	cmp	r1, r0
 80066c8: dd11         	ble	0x80066ee <firmware_image+0x66ee> @ imm = #0x22
 80066ca: 496d         	ldr	r1, [pc, #0x1b4]        @ 0x8006880 <firmware_image+0x6880>
 80066cc: 4281         	cmp	r1, r0
 80066ce: bfd8         	it	le
 80066d0: f04f 36ff    	movle.w	r6, #0xffffffff
 80066d4: dd6d         	ble	0x80067b2 <firmware_image+0x67b2> @ imm = #0xda
 80066d6: 4620         	mov	r0, r4
 80066d8: 4629         	mov	r1, r5
 80066da: f7ff fdff    	bl	0x80062dc <firmware_image+0x62dc> @ imm = #-0x402
 80066de: 2804         	cmp	r0, #0x4
 80066e0: bf08         	it	eq
 80066e2: f7ff fe6f    	bleq	0x80063c4 <firmware_image+0x63c4> @ imm = #-0x322
 80066e6: 4620         	mov	r0, r4
 80066e8: 4629         	mov	r1, r5
 80066ea: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80066ee: 4965         	ldr	r1, [pc, #0x194]        @ 0x8006884 <firmware_image+0x6884>
 80066f0: 4f65         	ldr	r7, [pc, #0x194]        @ 0x8006888 <firmware_image+0x6888>
 80066f2: f025 4500    	bic	r5, r5, #0x80000000
 80066f6: 4281         	cmp	r1, r0
 80066f8: dd33         	ble	0x8006762 <firmware_image+0x6762> @ imm = #0x66
 80066fa: 4964         	ldr	r1, [pc, #0x190]        @ 0x800688c <firmware_image+0x688c>
 80066fc: 4281         	cmp	r1, r0
 80066fe: dd19         	ble	0x8006734 <firmware_image+0x6734> @ imm = #0x32
 8006700: 2600         	movs	r6, #0x0
 8006702: 4632         	mov	r2, r6
 8006704: f04f 4380    	mov.w	r3, #0x40000000
 8006708: 4620         	mov	r0, r4
 800670a: 4629         	mov	r1, r5
 800670c: f7f9 fe0e    	bl	0x800032c <firmware_image+0x32c> @ imm = #-0x63e4
 8006710: 4680         	mov	r8, r0
 8006712: 468a         	mov	r10, r1
 8006714: 2201         	movs	r2, #0x1
 8006716: 4620         	mov	r0, r4
 8006718: 4629         	mov	r1, r5
 800671a: f7fa f8ee    	bl	0x80008fa <firmware_image+0x8fa> @ imm = #-0x5e24
 800671e: 2200         	movs	r2, #0x0
 8006720: 463b         	mov	r3, r7
 8006722: f7f9 fea4    	bl	0x800046e <firmware_image+0x46e> @ imm = #-0x62b8
 8006726: 4642         	mov	r2, r8
 8006728: 4653         	mov	r3, r10
 800672a: f7f9 ff18    	bl	0x800055e <firmware_image+0x55e> @ imm = #-0x61d0
 800672e: 4604         	mov	r4, r0
 8006730: 460d         	mov	r5, r1
 8006732: e03e         	b	0x80067b2 <firmware_image+0x67b2> @ imm = #0x7c
 8006734: 2601         	movs	r6, #0x1
 8006736: 2200         	movs	r2, #0x0
 8006738: 46ba         	mov	r10, r7
 800673a: 463b         	mov	r3, r7
 800673c: 4620         	mov	r0, r4
 800673e: 4629         	mov	r1, r5
 8006740: f7f9 fdf4    	bl	0x800032c <firmware_image+0x32c> @ imm = #-0x6418
 8006744: 4680         	mov	r8, r0
 8006746: 460f         	mov	r7, r1
 8006748: 2200         	movs	r2, #0x0
 800674a: 4653         	mov	r3, r10
 800674c: 4620         	mov	r0, r4
 800674e: 4629         	mov	r1, r5
 8006750: f7f9 fe8d    	bl	0x800046e <firmware_image+0x46e> @ imm = #-0x62e6
 8006754: 4642         	mov	r2, r8
 8006756: 463b         	mov	r3, r7
 8006758: f7f9 ff01    	bl	0x800055e <firmware_image+0x55e> @ imm = #-0x61fe
 800675c: 4604         	mov	r4, r0
 800675e: 460d         	mov	r5, r1
 8006760: e027         	b	0x80067b2 <firmware_image+0x67b2> @ imm = #0x4e
 8006762: 494b         	ldr	r1, [pc, #0x12c]        @ 0x8006890 <firmware_image+0x6890>
 8006764: 4281         	cmp	r1, r0
 8006766: dd1b         	ble	0x80067a0 <firmware_image+0x67a0> @ imm = #0x36
 8006768: f8df a128    	ldr.w	r10, [pc, #0x128]       @ 0x8006894 <firmware_image+0x6894>
 800676c: 2602         	movs	r6, #0x2
 800676e: 2200         	movs	r2, #0x0
 8006770: 4653         	mov	r3, r10
 8006772: 4620         	mov	r0, r4
 8006774: 4629         	mov	r1, r5
 8006776: f7f9 463b    	<unknown>
 800677a: f7f9 fdd5    	bl	0x8000328 <firmware_image+0x328> @ imm = #-0x6456
 800677e: 4680         	mov	r8, r0
 8006780: 460f         	mov	r7, r1
 8006782: 2200         	movs	r2, #0x0
 8006784: 4653         	mov	r3, r10
 8006786: 4620         	mov	r0, r4
 8006788: 4629         	mov	r1, r5
 800678a: f7f9 fe6e    	bl	0x800046a <firmware_image+0x46a> @ imm = #-0x6324
 800678e: 4642         	mov	r2, r8
 8006790: 463b         	mov	r3, r7
 8006792: f7f9 fee2    	bl	0x800055a <firmware_image+0x55a> @ imm = #-0x623c
 8006796: 4604         	mov	r4, r0
 8006798: 460d         	mov	r5, r1
 800679a: e008         	b	0x80067ae <firmware_image+0x67ae> @ imm = #0x10
 800679c: 2603         	movs	r6, #0x3
 800679e: 4622         	mov	r2, r4
 80067a0: 462b         	mov	r3, r5
 80067a2: 2000         	movs	r0, #0x0
 80067a4: 493b         	ldr	r1, [pc, #0xec]         @ 0x8006894 <firmware_image+0x6894>
 80067a6: f7f9 fed8    	bl	0x800055a <firmware_image+0x55a> @ imm = #-0x6250
 80067aa: 4604         	mov	r4, r0
 80067ac: 460d         	mov	r5, r1
 80067ae: 4622         	mov	r2, r4
 80067b0: 462b         	mov	r3, r5
 80067b2: 4610         	mov	r0, r2
 80067b4: 4619         	mov	r1, r3
 80067b6: f7f9 fe5e    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0x6344
 80067ba: 468b         	mov	r11, r1
 80067bc: 4682         	mov	r10, r0
 80067be: 4602         	mov	r2, r0
 80067c0: 460b         	mov	r3, r1
 80067c2: f7f9 fe58    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0x6350
 80067c6: 4607         	mov	r7, r0
 80067c8: 4602         	mov	r2, r0
 80067ca: 4833         	ldr	r0, [pc, #0xcc]         @ 0x8006898 <firmware_image+0x6898>
 80067cc: 4688         	mov	r8, r1
 80067ce: 460b         	mov	r3, r1
 80067d0: 2106         	movs	r1, #0x6
 80067d2: 4478         	add	r0, pc
 80067d4: f7ff fd94    	bl	0x8006300 <firmware_image+0x6300> @ imm = #-0x4d8
 80067d8: 4652         	mov	r2, r10
 80067da: 465b         	mov	r3, r11
 80067dc: f7f9 fe4b    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0x636a
 80067e0: 4682         	mov	r10, r0
 80067e2: 482e         	ldr	r0, [pc, #0xb8]         @ 0x800689c <firmware_image+0x689c>
 80067e4: 468b         	mov	r11, r1
 80067e6: 463a         	mov	r2, r7
 80067e8: 4643         	mov	r3, r8
 80067ea: 2105         	movs	r1, #0x5
 80067ec: 4478         	add	r0, pc
 80067ee: f7ff fd87    	bl	0x8006300 <firmware_image+0x6300> @ imm = #-0x4f2
 80067f2: 463a         	mov	r2, r7
 80067f4: 4643         	mov	r3, r8
 80067f6: f7f9 fe3e    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0x6384
 80067fa: 4602         	mov	r2, r0
 80067fc: 460b         	mov	r3, r1
 80067fe: 2e00         	cmp	r6, #0x0
 8006800: 4478         	add	r0, pc
 8006802: f7ff fd87    	bl	0x8006314 <firmware_image+0x6314> @ imm = #-0x4f2
 8006806: 463a         	mov	r2, r7
 8006808: 4643         	mov	r3, r8
 800680a: f7f9 fe3e    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x6384
 800680e: 4602         	mov	r2, r0
 8006810: 460b         	mov	r3, r1
 8006812: 2e00         	cmp	r6, #0x0
 8006814: 4650         	mov	r0, r10
 8006816: 4659         	mov	r1, r11
 8006818: da0c         	bge	0x8006834 <firmware_image+0x6834> @ imm = #0x18
 800681a: f7f9 fd8f    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x64e2
 800681e: 4622         	mov	r2, r4
 8006820: 462b         	mov	r3, r5
 8006822: f7f9 fe32    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x639c
 8006826: b001         	add	sp, #0x4
 8006828: 4622         	mov	r2, r4
 800682a: 462b         	mov	r3, r5
 800682c: e8bd 4ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8006830: f7f9 be28    	b.w	0x8000484 <firmware_image+0x484> @ imm = #-0x63b0
 8006834: f7f9 fd82    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x64fc
 8006838: f7f9 fe25    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x63b6
 800683c: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x80068b0 <firmware_image+0x68b0>
 800683e: 447a         	add	r2, pc
 8006840: eb02 03c6    	add.w	r3, r2, r6, lsl #3
 8006844: e9d3 2300    	ldrd	r2, r3, [r3]
 8006848: f7f9 fe17    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x63d2
 800684c: 4622         	mov	r2, r4
 800684e: 462b         	mov	r3, r5
 8006850: f7f9 fe13    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x63da
 8006854: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x80068b4 <firmware_image+0x68b4>
 8006856: 447a         	add	r2, pc
 8006858: eb02 03c6    	add.w	r3, r2, r6, lsl #3
 800685c: e9d3 2300    	ldrd	r2, r3, [r3]
 8006860: f7f9 fe0e    	bl	0x8000480 <firmware_image+0x480> @ imm = #-0x63e4
 8006864: 9a00         	ldr	r2, [sp]
 8006866: 2a00         	cmp	r2, #0x0
 8006868: bfb8         	it	lt
 800686a: f081 4100    	eorlt	r1, r1, #0x80000000
 800686e: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8006872: 0000         	movs	r0, r0
 8006874: 0000         	movs	r0, r0
 8006876: 4410         	add	r0, r2
 8006878: 0000         	movs	r0, r0
 800687a: 7ff0         	ldrb	r0, [r6, #0x1f]
 800687c: 2d18         	cmp	r5, #0x18
 800687e: 5444         	strb	r4, [r0, r1]
 8006880: 21fb         	movs	r1, #0xfb
 8006882: 3ff9         	subs	r7, #0xf9
 8006884: 21fb         	movs	r1, #0xfb
 8006886: bff9         	itett	al                      @ unpredictable IT predicate sequence
 8006888: 0000         	movs	r0, r0
 800688a: 3fdc         	sub<und>	r7, #0xdc
 800688c: 0000         	movs	r0, r0
 800688e: 3e20         	sub	r6, #0x20
 8006890: 0000         	movs	r0, r0
 8006892: 3ff3         	subs	r7, #0xf3
 8006894: 0000         	movs	r0, r0
 8006896: 3ff0         	subs	r7, #0xf0
 8006898: 0000         	movs	r0, r0
 800689a: 3fe6         	subs	r7, #0xe6
 800689c: 8000         	strh	r0, [r0]
 800689e: 4003         	ands	r3, r0
 80068a0: 0000         	movs	r0, r0
 80068a2: 3ff8         	subs	r7, #0xf8
 80068a4: 0000         	movs	r0, r0
 80068a6: bff0         	hint	#0xf
 80068a8: 0e76         	lsrs	r6, r6, #0x19
 80068aa: 0000         	movs	r0, r0
 80068ac: 0e34         	lsrs	r4, r6, #0x18
 80068ae: 0000         	movs	r0, r0
 80068b0: 0dd2         	lsrs	r2, r2, #0x17
 80068b2: 0000         	movs	r0, r0
 80068b4: 0d9a         	lsrs	r2, r3, #0x16
 80068b6: 0000         	movs	r0, r0
 80068b8: e92d 4df0    	push.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 80068bc: 4694         	mov	r12, r2
 80068be: f1cc 0400    	rsb.w	r4, r12, #0x0
 80068c2: f023 4600    	bic	r6, r3, #0x80000000
 80068c6: ea4c 0404    	orr.w	r4, r12, r4
 80068ca: 4f52         	ldr	r7, [pc, #0x148]        @ 0x8006a14 <firmware_image+0x6a14>
 80068cc: ea46 74d4    	orr.w	r4, r6, r4, lsr #31
 80068d0: 469a         	mov	r10, r3
 80068d2: 4688         	mov	r8, r1
 80068d4: f021 4200    	bic	r2, r1, #0x80000000
 80068d8: 42bc         	cmp	r4, r7
 80068da: d806         	bhi	0x80068ea <firmware_image+0x68ea> @ imm = #0xc
 80068dc: 4245         	rsbs	r5, r0, #0
 80068de: ea40 0405    	orr.w	r4, r0, r5
 80068e2: ea42 74d4    	orr.w	r4, r2, r4, lsr #31
 80068e6: 42bc         	cmp	r4, r7
 80068e8: d904         	bls	0x80068f4 <firmware_image+0x68f4> @ imm = #0x8
 80068ea: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 80068ee: 4662         	mov	r2, r12
 80068f0: f7ff bd66    	b.w	0x80063c0 <firmware_image+0x63c0> @ imm = #-0x534
 80068f4: f1aa 5540    	sub.w	r5, r10, #0x30000000
 80068f8: f1a5 657f    	sub.w	r5, r5, #0xff00000
 80068fc: ea55 040c    	orrs.w	r4, r5, r12
 8006900: d00b         	beq	0x800691a <firmware_image+0x691a> @ imm = #0x16
 8006902: 2402         	movs	r4, #0x2
 8006904: ea04 74aa    	and.w	r4, r4, r10, asr #30
 8006908: 4d43         	ldr	r5, [pc, #0x10c]        @ 0x8006a18 <firmware_image+0x6a18>
 800690a: f8df e110    	ldr.w	lr, [pc, #0x110]        @ 0x8006a1c <firmware_image+0x6a1c>
 800690e: ea44 74d8    	orr.w	r4, r4, r8, lsr #31
 8006912: ea52 0b00    	orrs.w	r11, r2, r0
 8006916: d004         	beq	0x8006922 <firmware_image+0x6922> @ imm = #0x8
 8006918: e00c         	b	0x8006934 <firmware_image+0x6934> @ imm = #0x18
 800691a: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800691e: f7ff bebb    	b.w	0x8006698 <firmware_image+0x6698> @ imm = #-0x28a
 8006922: 2c00         	cmp	r4, #0x0
 8006924: bf14         	ite	ne
 8006926: 2c01         	cmpne	r4, #0x1
 8006928: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 800692c: 2c02         	cmp	r4, #0x2
 800692e: d030         	beq	0x8006992 <firmware_image+0x6992> @ imm = #0x60
 8006930: 2c03         	cmp	r4, #0x3
 8006932: d032         	beq	0x800699a <firmware_image+0x699a> @ imm = #0x64
 8006934: ea56 0b0c    	orrs.w	r11, r6, r12
 8006938: d00a         	beq	0x8006950 <firmware_image+0x6950> @ imm = #0x14
 800693a: 42be         	cmp	r6, r7
 800693c: d120         	bne	0x8006980 <firmware_image+0x6980> @ imm = #0x40
 800693e: 42ba         	cmp	r2, r7
 8006940: d109         	bne	0x8006956 <firmware_image+0x6956> @ imm = #0x12
 8006942: f026 4680    	bic	r6, r6, #0x40000000
 8006946: f022 4280    	bic	r2, r2, #0x40000000
 800694a: 4633         	mov	r3, r6
 800694c: 4611         	mov	r1, r2
 800694e: e017         	b	0x8006980 <firmware_image+0x6980> @ imm = #0x2e
 8006950: 2900         	cmp	r1, #0x0
 8006952: db1a         	blt	0x800698a <firmware_image+0x698a> @ imm = #0x34
 8006954: e025         	b	0x80069a2 <firmware_image+0x69a2> @ imm = #0x4a
 8006956: f8df b0c8    	ldr.w	r11, [pc, #0xc8]        @ 0x8006a20 <firmware_image+0x6a20>
 800695a: 44fb         	add	r11, pc
 800695c: 2c00         	cmp	r4, #0x0
 800695e: bf04         	itt	eq
 8006960: e9db 0100    	ldrdeq	r0, r1, [r11]
 8006964: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 8006968: 2c01         	cmp	r4, #0x1
 800696a: bf02         	ittt	eq
 800696c: e9db 0100    	ldrdeq	r0, r1, [r11]
 8006970: f081 4100    	eoreq	r1, r1, #0x80000000
 8006974: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 8006978: 2c02         	cmp	r4, #0x2
 800697a: d00a         	beq	0x8006992 <firmware_image+0x6992> @ imm = #0x14
 800697c: 2c03         	cmp	r4, #0x3
 800697e: d00c         	beq	0x800699a <firmware_image+0x699a> @ imm = #0x18
 8006980: 42ba         	cmp	r2, r7
 8006982: d112         	bne	0x80069aa <firmware_image+0x69aa> @ imm = #0x24
 8006984: f1b8 0f00    	cmp.w	r8, #0x0
 8006988: da0b         	bge	0x80069a2 <firmware_image+0x69a2> @ imm = #0x16
 800698a: 4823         	ldr	r0, [pc, #0x8c]         @ 0x8006a18 <firmware_image+0x6a18>
 800698c: 4925         	ldr	r1, [pc, #0x94]         @ 0x8006a24 <firmware_image+0x6a24>
 800698e: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 8006992: 4628         	mov	r0, r5
 8006994: 4924         	ldr	r1, [pc, #0x90]         @ 0x8006a28 <firmware_image+0x6a28>
 8006996: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 800699a: 4628         	mov	r0, r5
 800699c: 4671         	mov	r1, lr
 800699e: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069a2: 481d         	ldr	r0, [pc, #0x74]         @ 0x8006a18 <firmware_image+0x6a18>
 80069a4: 4921         	ldr	r1, [pc, #0x84]         @ 0x8006a2c <firmware_image+0x6a2c>
 80069a6: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069aa: 1b92         	subs	r2, r2, r6
 80069ac: 1512         	asrs	r2, r2, #0x14
 80069ae: 2a3c         	cmp	r2, #0x3c
 80069b0: bfc4         	itt	gt
 80069b2: 4819         	ldrgt	r0, [pc, #0x64]         @ 0x8006a18 <firmware_image+0x6a18>
 80069b4: 491d         	ldrgt	r1, [pc, #0x74]         @ 0x8006a2c <firmware_image+0x6a2c>
 80069b6: dc0e         	bgt	0x80069d6 <firmware_image+0x69d6> @ imm = #0x1c
 80069b8: f1ba 0f00    	cmp.w	r10, #0x0
 80069bc: bfbe         	ittt	lt
 80069be: f112 0f3c    	cmnlt.w	r2, #0x3c
 80069c2: 2000         	movlt	r0, #0x0
 80069c4: 4662         	movlt	r2, r12
 80069c6: f7f9 fdce    	bl	0x8000566 <firmware_image+0x566> @ imm = #-0x6464
 80069ca: f021 4100    	bic	r1, r1, #0x80000000
 80069ce: f7ff fe61    	bl	0x8006694 <firmware_image+0x6694> @ imm = #-0x33e
 80069d2: 2c00         	cmp	r4, #0x0
 80069d4: bf08         	it	eq
 80069d6: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069da: 2c01         	cmp	r4, #0x1
 80069dc: bf04         	itt	eq
 80069de: f081 4100    	eoreq	r1, r1, #0x80000000
 80069e2: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069e6: 4a11         	ldr	r2, [pc, #0x44]         @ 0x8006a2c <firmware_image+0x6a2c>
 80069e8: 4b11         	ldr	r3, [pc, #0x44]         @ 0x8006a30 <firmware_image+0x6a30>
 80069ea: 2c02         	cmp	r4, #0x2
 80069ec: d007         	beq	0x80069fe <firmware_image+0x69fe> @ imm = #0xe
 80069ee: f7f9 fd42    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0x657c
 80069f2: 462a         	mov	r2, r5
 80069f4: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 80069f8: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x8006a24 <firmware_image+0x6a24>
 80069fa: f7f9 bd3c    	b.w	0x8000476 <firmware_image+0x476> @ imm = #-0x6588
 80069fe: f7f9 fd3a    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0x658c
 8006a02: 462a         	mov	r2, r5
 8006a04: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006a08: 4b06         	ldr	r3, [pc, #0x18]         @ 0x8006a24 <firmware_image+0x6a24>
 8006a0a: f7f9 bd37    	b.w	0x800047c <firmware_image+0x47c> @ imm = #-0x6592
 8006a0e: 0000         	movs	r0, r0
 8006a10: 0000         	movs	r0, r0
 8006a12: 7ff0         	ldrb	r0, [r6, #0x1f]
 8006a14: 2d18         	cmp	r5, #0x18
 8006a16: 5444         	strb	r4, [r0, r1]
 8006a18: 21fb         	movs	r1, #0xfb
 8006a1a: c009         	stm	r0!, {r0, r3}
 8006a1c: 0d2e         	lsrs	r6, r5, #0x14
 8006a1e: 0000         	movs	r0, r0
 8006a20: 21fb         	movs	r1, #0xfb
 8006a22: bff9         	itett	al                      @ unpredictable IT predicate sequence
 8006a24: 21fb         	mov	r1, #0xfb
 8006a26: 4009         	and<und>	r1, r1
 8006a28: 21fb         	mov	r1, #0xfb
 8006a2a: 3ff9         	sub	r7, #0xf9
 8006a2c: 5c07         	ldrb	r7, [r0, r0]
 8006a2e: 3314         	adds	r3, #0x14
 8006a30: a626         	adr	r6, #152 <firmware_image+0x6a5a>
 8006a32: 3ca1         	subs	r4, #0xa1
 8006a34: b570         	push	{r4, r5, r6, lr}
 8006a36: 4e2d         	ldr	r6, [pc, #0xb4]         @ 0x8006aec <firmware_image+0x6aec>
 8006a38: f44f 5100    	mov.w	r1, #0x2000
 8006a3c: 4630         	mov	r0, r6
 8006a3e: f7fb fe85    	bl	0x800274c <firmware_image+0x274c> @ imm = #-0x42f6
 8006a42: b245         	sxtb	r5, r0
 8006a44: 2102         	movs	r1, #0x2
 8006a46: f04f 4090    	mov.w	r0, #0x48000000
 8006a4a: f7fb fe7f    	bl	0x800274c <firmware_image+0x274c> @ imm = #-0x4302
 8006a4e: b244         	sxtb	r4, r0
 8006a50: f44f 4180    	mov.w	r1, #0x4000
 8006a54: 4630         	mov	r0, r6
 8006a56: f7fb fe79    	bl	0x800274c <firmware_image+0x274c> @ imm = #-0x430e
 8006a5a: b241         	sxtb	r1, r0
 8006a5c: 4824         	ldr	r0, [pc, #0x90]         @ 0x8006af0 <firmware_image+0x6af0>
 8006a5e: 2200         	movs	r2, #0x0
 8006a60: 2301         	movs	r3, #0x1
 8006a62: 78c6         	ldrb	r6, [r0, #0x3]
 8006a64: b10e         	cbz	r6, 0x8006a6a <firmware_image+0x6a6a> @ imm = #0x2
 8006a66: 89c6         	ldrh	r6, [r0, #0xe]
 8006a68: b94e         	cbnz	r6, 0x8006a7e <firmware_image+0x6a7e> @ imm = #0x12
 8006a6a: f990 6007    	ldrsb.w	r6, [r0, #0x7]
 8006a6e: 42b5         	cmp	r5, r6
 8006a70: d004         	beq	0x8006a7c <firmware_image+0x6a7c> @ imm = #0x8
 8006a72: 8986         	ldrh	r6, [r0, #0xc]
 8006a74: 81c6         	strh	r6, [r0, #0xe]
 8006a76: 70c3         	strb	r3, [r0, #0x3]
 8006a78: 7102         	strb	r2, [r0, #0x4]
 8006a7a: 7142         	strb	r2, [r0, #0x5]
 8006a7c: 71c5         	strb	r5, [r0, #0x7]
 8006a7e: 7905         	ldrb	r5, [r0, #0x4]
 8006a80: b10d         	cbz	r5, 0x8006a86 <firmware_image+0x6a86> @ imm = #0x2
 8006a82: 8a05         	ldrh	r5, [r0, #0x10]
 8006a84: b94d         	cbnz	r5, 0x8006a9a <firmware_image+0x6a9a> @ imm = #0x12
 8006a86: f990 5008    	ldrsb.w	r5, [r0, #0x8]
 8006a8a: 42ac         	cmp	r4, r5
 8006a8c: d004         	beq	0x8006a98 <firmware_image+0x6a98> @ imm = #0x8
 8006a8e: 8985         	ldrh	r5, [r0, #0xc]
 8006a90: 8205         	strh	r5, [r0, #0x10]
 8006a92: 7103         	strb	r3, [r0, #0x4]
 8006a94: 70c2         	strb	r2, [r0, #0x3]
 8006a96: 7142         	strb	r2, [r0, #0x5]
 8006a98: 7204         	strb	r4, [r0, #0x8]
 8006a9a: 7944         	ldrb	r4, [r0, #0x5]
 8006a9c: b10c         	cbz	r4, 0x8006aa2 <firmware_image+0x6aa2> @ imm = #0x2
 8006a9e: 8a44         	ldrh	r4, [r0, #0x12]
 8006aa0: b94c         	cbnz	r4, 0x8006ab6 <firmware_image+0x6ab6> @ imm = #0x12
 8006aa2: f990 4009    	ldrsb.w	r4, [r0, #0x9]
 8006aa6: 42a1         	cmp	r1, r4
 8006aa8: d004         	beq	0x8006ab4 <firmware_image+0x6ab4> @ imm = #0x8
 8006aaa: 8984         	ldrh	r4, [r0, #0xc]
 8006aac: 8244         	strh	r4, [r0, #0x12]
 8006aae: 7143         	strb	r3, [r0, #0x5]
 8006ab0: 70c2         	strb	r2, [r0, #0x3]
 8006ab2: 7102         	strb	r2, [r0, #0x4]
 8006ab4: 7241         	strb	r1, [r0, #0x9]
 8006ab6: f9b0 100e    	ldrsh.w	r1, [r0, #0xe]
 8006aba: 2900         	cmp	r1, #0x0
 8006abc: dd01         	ble	0x8006ac2 <firmware_image+0x6ac2> @ imm = #0x2
 8006abe: 1e49         	subs	r1, r1, #0x1
 8006ac0: 81c1         	strh	r1, [r0, #0xe]
 8006ac2: f9b0 1010    	ldrsh.w	r1, [r0, #0x10]
 8006ac6: 2900         	cmp	r1, #0x0
 8006ac8: dd01         	ble	0x8006ace <firmware_image+0x6ace> @ imm = #0x2
 8006aca: 1e49         	subs	r1, r1, #0x1
 8006acc: 8201         	strh	r1, [r0, #0x10]
 8006ace: f9b0 1012    	ldrsh.w	r1, [r0, #0x12]
 8006ad2: 2900         	cmp	r1, #0x0
 8006ad4: dd01         	ble	0x8006ada <firmware_image+0x6ada> @ imm = #0x2
 8006ad6: 1e49         	subs	r1, r1, #0x1
 8006ad8: 8241         	strh	r1, [r0, #0x12]
 8006ada: 79c1         	ldrb	r1, [r0, #0x7]
 8006adc: 7a02         	ldrb	r2, [r0, #0x8]
 8006ade: ea41 0142    	orr.w	r1, r1, r2, lsl #1
 8006ae2: 7a40         	ldrb	r0, [r0, #0x9]
 8006ae4: ea41 0080    	orr.w	r0, r1, r0, lsl #2
 8006ae8: b2c0         	uxtb	r0, r0
 8006aea: bd70         	pop	{r4, r5, r6, pc}
 8006aec: 0800         	lsrs	r0, r0, #0x20
 8006aee: 4800         	ldr	r0, [pc, #0x0]          @ 0x8006af0 <firmware_image+0x6af0>
 8006af0: 0268         	lsls	r0, r5, #0x9
 8006af2: 2000         	movs	r0, #0x0
 8006af4: f7fd fc8e    	bl	0x8004414 <firmware_image+0x4414> @ imm = #-0x26e4
 8006af8: f7fc fc0e    	bl	0x8003318 <firmware_image+0x3318> @ imm = #-0x37e4
 8006afc: f7fa feec    	bl	0x80018d8 <firmware_image+0x18d8> @ imm = #-0x5228
 8006b00: 48a3         	ldr	r0, [pc, #0x28c]        @ 0x8006d90 <firmware_image+0x6d90>
 8006b02: f7fb fc61    	bl	0x80023c8 <firmware_image+0x23c8> @ imm = #-0x473e
 8006b06: f7fd fb05    	bl	0x8004114 <firmware_image+0x4114> @ imm = #-0x29f6
 8006b0a: f7fc fd67    	bl	0x80035dc <firmware_image+0x35dc> @ imm = #-0x3532
 8006b0e: f7fe fa66    	bl	0x8004fde <firmware_image+0x4fde> @ imm = #-0x1b34
 8006b12: f7fd fe55    	bl	0x80047c0 <firmware_image+0x47c0> @ imm = #-0x2356
 8006b16: f7fb f8a7    	bl	0x8001c68 <firmware_image+0x1c68> @ imm = #-0x4eb2
 8006b1a: f7fc fb79    	bl	0x8003210 <firmware_image+0x3210> @ imm = #-0x390e
 8006b1e: f7fc fbb7    	bl	0x8003290 <firmware_image+0x3290> @ imm = #-0x3892
 8006b22: f44f 50fa    	mov.w	r0, #0x1f40
 8006b26: f7fb fc4f    	bl	0x80023c8 <firmware_image+0x23c8> @ imm = #-0x4762
 8006b2a: 4d9a         	ldr	r5, [pc, #0x268]        @ 0x8006d94 <firmware_image+0x6d94>
 8006b2c: 2400         	movs	r4, #0x0
 8006b2e: 80ec         	strh	r4, [r5, #0x6]
 8006b30: f04f 4690    	mov.w	r6, #0x48000000
 8006b34: f644 6720    	movw	r7, #0x4e20
 8006b38: 6930         	ldr	r0, [r6, #0x10]
 8006b3a: 04c0         	lsls	r0, r0, #0x13
 8006b3c: d502         	bpl	0x8006b44 <firmware_image+0x6b44> @ imm = #0x4
 8006b3e: 8929         	ldrh	r1, [r5, #0x8]
 8006b40: 1c49         	adds	r1, r1, #0x1
 8006b42: 8129         	strh	r1, [r5, #0x8]
 8006b44: 4638         	mov	r0, r7
 8006b46: f7fb fc3f    	bl	0x80023c8 <firmware_image+0x23c8> @ imm = #-0x4782
 8006b4a: 88e8         	ldrh	r0, [r5, #0x6]
 8006b4c: 1c40         	adds	r0, r0, #0x1
 8006b4e: b281         	uxth	r1, r0
 8006b50: 80e9         	strh	r1, [r5, #0x6]
 8006b52: 2964         	cmp	r1, #0x64
 8006b54: d3f0         	blo	0x8006b38 <firmware_image+0x6b38> @ imm = #-0x20
 8006b56: 8928         	ldrh	r0, [r5, #0x8]
 8006b58: 4e8f         	ldr	r6, [pc, #0x23c]        @ 0x8006d98 <firmware_image+0x6d98>
 8006b5a: f04f 0801    	mov.w	r8, #0x1
 8006b5e: 2802         	cmp	r0, #0x2
 8006b60: d902         	bls	0x8006b68 <firmware_image+0x6b68> @ imm = #0x4
 8006b62: f886 8000    	strb.w	r8, [r6]
 8006b66: e000         	b	0x8006b6a <firmware_image+0x6b6a> @ imm = #0x0
 8006b68: 7034         	strb	r4, [r6]
 8006b6a: f7fe fbcb    	bl	0x8005304 <firmware_image+0x5304> @ imm = #-0x186a
 8006b6e: 80ec         	strh	r4, [r5, #0x6]
 8006b70: 4f8a         	ldr	r7, [pc, #0x228]        @ 0x8006d9c <firmware_image+0x6d9c>
 8006b72: f7fa ff35    	bl	0x80019e0 <firmware_image+0x19e0> @ imm = #-0x5196
 8006b76: 4638         	mov	r0, r7
 8006b78: f7fb fc26    	bl	0x80023c8 <firmware_image+0x23c8> @ imm = #-0x47b4
 8006b7c: f7fa ff22    	bl	0x80019c4 <firmware_image+0x19c4> @ imm = #-0x51bc
 8006b80: 4638         	mov	r0, r7
 8006b82: f7fb fc21    	bl	0x80023c8 <firmware_image+0x23c8> @ imm = #-0x47be
 8006b86: 88e8         	ldrh	r0, [r5, #0x6]
 8006b88: 1c40         	adds	r0, r0, #0x1
 8006b8a: b281         	uxth	r1, r0
 8006b8c: 80e9         	strh	r1, [r5, #0x6]
 8006b8e: 2903         	cmp	r1, #0x3
 8006b90: d3ef         	blo	0x8006b72 <firmware_image+0x6b72> @ imm = #-0x22
 8006b92: 2301         	movs	r3, #0x1
 8006b94: 2200         	movs	r2, #0x0
 8006b96: 2108         	movs	r1, #0x8
 8006b98: f44f 6090    	mov.w	r0, #0x480
 8006b9c: f000 f9f4    	bl	0x8006f88 <firmware_image+0x6f88> @ imm = #0x3e8
 8006ba0: f7fb ff72    	bl	0x8002a88 <firmware_image+0x2a88> @ imm = #-0x411c
 8006ba4: f242 7510    	movw	r5, #0x2710
 8006ba8: 4628         	mov	r0, r5
 8006baa: f7fb fc0d    	bl	0x80023c8 <firmware_image+0x23c8> @ imm = #-0x47e6
 8006bae: f7fa fabb    	bl	0x8001128 <firmware_image+0x1128> @ imm = #-0x5a8a
 8006bb2: 4628         	mov	r0, r5
 8006bb4: f7fb fc08    	bl	0x80023c8 <firmware_image+0x23c8> @ imm = #-0x47f0
 8006bb8: f7fc fc04    	bl	0x80033c4 <firmware_image+0x33c4> @ imm = #-0x37f8
 8006bbc: f7fd fed0    	bl	0x8004960 <firmware_image+0x4960> @ imm = #-0x2260
 8006bc0: 22fa         	movs	r2, #0xfa
 8006bc2: 2100         	movs	r1, #0x0
 8006bc4: fe69 2201    	cdp2	p2, #0x6, c2, c9, c1, #0x0
 8006bc8: 2132         	movs	r1, #0x32
 8006bca: 4875         	ldr	r0, [pc, #0x1d4]        @ 0x8006da0 <firmware_image+0x6da0>
 8006bcc: f7fd fe64    	bl	0x8004898 <firmware_image+0x4898> @ imm = #-0x2338
 8006bd0: 2204         	movs	r2, #0x4
 8006bd2: 2100         	movs	r1, #0x0
 8006bd4: 4873         	ldr	r0, [pc, #0x1cc]        @ 0x8006da4 <firmware_image+0x6da4>
 8006bd6: f7fd fe5f    	bl	0x8004898 <firmware_image+0x4898> @ imm = #-0x2342
 8006bda: 2204         	movs	r2, #0x4
 8006bdc: 2100         	movs	r1, #0x0
 8006bde: 4872         	ldr	r0, [pc, #0x1c8]        @ 0x8006da8 <firmware_image+0x6da8>
 8006be0: f7fd fe5a    	bl	0x8004898 <firmware_image+0x4898> @ imm = #-0x234c
 8006be4: 2204         	movs	r2, #0x4
 8006be6: 2100         	movs	r1, #0x0
 8006be8: 4870         	ldr	r0, [pc, #0x1c0]        @ 0x8006dac <firmware_image+0x6dac>
 8006bea: f7fd fe55    	bl	0x8004898 <firmware_image+0x4898> @ imm = #-0x2356
 8006bee: 2204         	movs	r2, #0x4
 8006bf0: 2100         	movs	r1, #0x0
 8006bf2: 486f         	ldr	r0, [pc, #0x1bc]        @ 0x8006db0 <firmware_image+0x6db0>
 8006bf4: f7fd fe50    	bl	0x8004898 <firmware_image+0x4898> @ imm = #-0x2360
 8006bf8: 2201         	movs	r2, #0x1
 8006bfa: 2119         	movs	r1, #0x19
 8006bfc: 486d         	ldr	r0, [pc, #0x1b4]        @ 0x8006db4 <firmware_image+0x6db4>
 8006bfe: f7fd f7fd    	bl	0x7c04bfc               @ imm = #-0x402006
 8006c02: fe50 2201    	cdp2	p2, #0x5, c2, c0, c1, #0x0
 8006c06: 2119         	movs	r1, #0x19
 8006c08: 486d         	ldr	r0, [pc, #0x1b4]        @ 0x8006dc0 <firmware_image+0x6dc0>
 8006c0a: f7fd fe4b    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x236a
 8006c0e: 2201         	movs	r2, #0x1
 8006c10: 2119         	movs	r1, #0x19
 8006c12: 486c         	ldr	r0, [pc, #0x1b0]        @ 0x8006dc4 <firmware_image+0x6dc4>
 8006c14: f7fd fe46    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x2374
 8006c18: 220f         	movs	r2, #0xf
 8006c1a: 2119         	movs	r1, #0x19
 8006c1c: 486a         	ldr	r0, [pc, #0x1a8]        @ 0x8006dc8 <firmware_image+0x6dc8>
 8006c1e: f7fd fe41    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x237e
 8006c22: 2201         	movs	r2, #0x1
 8006c24: 2100         	movs	r1, #0x0
 8006c26: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x8006dcc <firmware_image+0x6dcc>
 8006c28: f7fd fe3c    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x2388
 8006c2c: 2201         	movs	r2, #0x1
 8006c2e: 2164         	movs	r1, #0x64
 8006c30: 4867         	ldr	r0, [pc, #0x19c]        @ 0x8006dd0 <firmware_image+0x6dd0>
 8006c32: f7fd fe37    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x2392
 8006c36: 2219         	movs	r2, #0x19
 8006c38: 2164         	movs	r1, #0x64
 8006c3a: 4866         	ldr	r0, [pc, #0x198]        @ 0x8006dd4 <firmware_image+0x6dd4>
 8006c3c: f7fd fe32    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x239c
 8006c40: f7fd fe90    	bl	0x8004964 <firmware_image+0x4964> @ imm = #-0x22e0
 8006c44: f44f 6180    	mov.w	r1, #0x400
 8006c48: 2006         	movs	r0, #0x6
 8006c4a: f7fc fab7    	bl	0x80031bc <firmware_image+0x31bc> @ imm = #-0x3a92
 8006c4e: f04f 0907    	mov.w	r9, #0x7
 8006c52: 4f61         	ldr	r7, [pc, #0x184]        @ 0x8006dd8 <firmware_image+0x6dd8>
 8006c54: 4d61         	ldr	r5, [pc, #0x184]        @ 0x8006ddc <firmware_image+0x6ddc>
 8006c56: f8df a188    	ldr.w	r10, [pc, #0x188]       @ 0x8006de0 <firmware_image+0x6de0>
 8006c5a: f7fd fe61    	bl	0x8004920 <firmware_image+0x4920> @ imm = #-0x233e
 8006c5e: f7fc fbd9    	bl	0x8003414 <firmware_image+0x3414> @ imm = #-0x384e
 8006c62: 4860         	ldr	r0, [pc, #0x180]        @ 0x8006de4 <firmware_image+0x6de4>
 8006c64: 7800         	ldrb	r0, [r0]
 8006c66: b388         	cbz	r0, 0x8006ccc <firmware_image+0x6ccc> @ imm = #0x62
 8006c68: 4e5f         	ldr	r6, [pc, #0x17c]        @ 0x8006de8 <firmware_image+0x6de8>
 8006c6a: 7830         	ldrb	r0, [r6]
 8006c6c: bb70         	cbnz	r0, 0x8006ccc <firmware_image+0x6ccc> @ imm = #0x5c
 8006c6e: 485f         	ldr	r0, [pc, #0x17c]        @ 0x8006dec <firmware_image+0x6dec>
 8006c70: 7800         	ldrb	r0, [r0]
 8006c72: b358         	cbz	r0, 0x8006ccc <firmware_image+0x6ccc> @ imm = #0x56
 8006c74: 485e         	ldr	r0, [pc, #0x178]        @ 0x8006df0 <firmware_image+0x6df0>
 8006c76: 495f         	ldr	r1, [pc, #0x17c]        @ 0x8006df4 <firmware_image+0x6df4>
 8006c78: 8802         	ldrh	r2, [r0]
 8006c7a: 800a         	strh	r2, [r1]
 8006c7c: 8842         	ldrh	r2, [r0, #0x2]
 8006c7e: 804a         	strh	r2, [r1, #0x2]
 8006c80: 8880         	ldrh	r0, [r0, #0x4]
 8006c82: 8088         	strh	r0, [r1, #0x4]
 8006c84: 485c         	ldr	r0, [pc, #0x170]        @ 0x8006df8 <firmware_image+0x6df8>
 8006c86: 495d         	ldr	r1, [pc, #0x174]        @ 0x8006dfc <firmware_image+0x6dfc>
 8006c88: 8802         	ldrh	r2, [r0]
 8006c8a: 800a         	strh	r2, [r1]
 8006c8c: 8842         	ldrh	r2, [r0, #0x2]
 8006c8e: 804a         	strh	r2, [r1, #0x2]
 8006c90: 8880         	ldrh	r0, [r0, #0x4]
 8006c92: 8088         	strh	r0, [r1, #0x4]
 8006c94: 485b         	ldr	r0, [pc, #0x16c]        @ 0x8006e04 <firmware_image+0x6e04>
 8006c96: f8df b168    	ldr.w	r11, [pc, #0x168]       @ 0x8006e00 <firmware_image+0x6e00>
 8006c9a: 4659         	mov	r1, r11
 8006c9c: 6800         	ldr	r0, [r0]
 8006c9e: f7f9 fad1    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x6a5e
 8006ca2: f7f9 fced    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x6626
 8006ca6: 4958         	ldr	r1, [pc, #0x160]        @ 0x8006e08 <firmware_image+0x6e08>
 8006ca8: 8008         	strh	r0, [r1]
 8006caa: 4858         	ldr	r0, [pc, #0x160]        @ 0x8006e0c <firmware_image+0x6e0c>
 8006cac: 4659         	mov	r1, r11
 8006cae: 6800         	ldr	r0, [r0]
 8006cb0: f7f9 fac8    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x6a70
 8006cb4: f7f9 fce4    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x6638
 8006cb8: 4955         	ldr	r1, [pc, #0x154]        @ 0x8006e10 <firmware_image+0x6e10>
 8006cba: 8008         	strh	r0, [r1]
 8006cbc: f7fe fb58    	bl	0x8005370 <firmware_image+0x5370> @ imm = #-0x1950
 8006cc0: f886 8000    	strb.w	r8, [r6]
 8006cc4: f887 9000    	strb.w	r9, [r7]
 8006cc8: f885 9000    	strb.w	r9, [r5]
 8006ccc: 4e51         	ldr	r6, [pc, #0x144]        @ 0x8006e14 <firmware_image+0x6e14>
 8006cce: 7830         	ldrb	r0, [r6]
 8006cd0: b178         	cbz	r0, 0x8006cf2 <firmware_image+0x6cf2> @ imm = #0x1e
 8006cd2: 4851         	ldr	r0, [pc, #0x144]        @ 0x8006e18 <firmware_image+0x6e18>
 8006cd4: 8801         	ldrh	r1, [r0]
 8006cd6: b109         	cbz	r1, 0x8006cdc <firmware_image+0x6cdc> @ imm = #0x2
 8006cd8: 8004         	strh	r4, [r0]
 8006cda: e001         	b	0x8006ce0 <firmware_image+0x6ce0> @ imm = #0x2
 8006cdc: f8a0 8000    	strh.w	r8, [r0]
 8006ce0: f7fe fb46    	bl	0x8005370 <firmware_image+0x5370> @ imm = #-0x1974
 8006ce4: f88a 4000    	strb.w	r4, [r10]
 8006ce8: 7034         	strb	r4, [r6]
 8006cea: f887 9000    	strb.w	r9, [r7]
 8006cee: f885 9000    	strb.w	r9, [r5]
 8006cf2: f8df b128    	ldr.w	r11, [pc, #0x128]       @ 0x8006e1c <firmware_image+0x6e1c>
 8006cf6: f89b 0000    	ldrb.w	r0, [r11]
 8006cfa: b1c8         	cbz	r0, 0x8006d30 <firmware_image+0x6d30> @ imm = #0x32
 8006cfc: 4e48         	ldr	r6, [pc, #0x120]        @ 0x8006e20 <firmware_image+0x6e20>
 8006cfe: 8830         	ldrh	r0, [r6]
 8006d00: b108         	cbz	r0, 0x8006d06 <firmware_image+0x6d06> @ imm = #0x2
 8006d02: 8034         	strh	r4, [r6]
 8006d04: e001         	b	0x8006d0a <firmware_image+0x6d0a> @ imm = #0x2
 8006d06: f8a6 8000    	strh.w	r8, [r6]
 8006d0a: f7fe fb31    	bl	0x8005370 <firmware_image+0x5370> @ imm = #-0x199e
 8006d0e: f88a 4000    	strb.w	r4, [r10]
 8006d12: f88b 4000    	strb.w	r4, [r11]
 8006d16: 8830         	ldrh	r0, [r6]
 8006d18: b130         	cbz	r0, 0x8006d28 <firmware_image+0x6d28> @ imm = #0xc
 8006d1a: 4942         	ldr	r1, [pc, #0x108]        @ 0x8006e24 <firmware_image+0x6e24>
 8006d1c: f44f 70fa    	mov.w	r0, #0x1f4
 8006d20: 8008         	strh	r0, [r1]
 8006d22: f885 9000    	strb.w	r9, [r5]
 8006d26: e003         	b	0x8006d30 <firmware_image+0x6d30> @ imm = #0x6
 8006d28: f887 9000    	strb.w	r9, [r7]
 8006d2c: f885 9000    	strb.w	r9, [r5]
 8006d30: 481b         	ldr	r0, [pc, #0x6c]         @ 0x8006da0 <firmware_image+0x6da0>
 8006d32: 7800         	ldrb	r0, [r0]
 8006d34: b9a8         	cbnz	r0, 0x8006d62 <firmware_image+0x6d62> @ imm = #0x2a
 8006d36: 483a         	ldr	r0, [pc, #0xe8]         @ 0x8006e20 <firmware_image+0x6e20>
 8006d38: 8800         	ldrh	r0, [r0]
 8006d3a: b148         	cbz	r0, 0x8006d50 <firmware_image+0x6d50> @ imm = #0x12
 8006d3c: 4e3a         	ldr	r6, [pc, #0xe8]         @ 0x8006e28 <firmware_image+0x6e28>
 8006d3e: 2102         	movs	r1, #0x2
 8006d40: 4630         	mov	r0, r6
 8006d42: f7fb fd0e    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x45e4
 8006d46: 2104         	movs	r1, #0x4
 8006d48: 4630         	mov	r0, r6
 8006d4a: f7fb fd0c    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x45e8
 8006d4e: e008         	b	0x8006d62 <firmware_image+0x6d62> @ imm = #0x10
 8006d50: 4e35         	ldr	r6, [pc, #0xd4]         @ 0x8006e28 <firmware_image+0x6e28>
 8006d52: 2102         	movs	r1, #0x2
 8006d54: 4630         	mov	r0, r6
 8006d56: f7fb fd06    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x45f4
 8006d5a: 2104         	movs	r1, #0x4
 8006d5c: 4630         	mov	r0, r6
 8006d5e: f7fb fd00    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x4600
 8006d62: 4932         	ldr	r1, [pc, #0xc8]         @ 0x8006e2c <firmware_image+0x6e2c>
 8006d64: 7808         	ldrb	r0, [r1]
 8006d66: b140         	cbz	r0, 0x8006d7a <firmware_image+0x6d7a> @ imm = #0x10
 8006d68: 4831         	ldr	r0, [pc, #0xc4]         @ 0x8006e30 <firmware_image+0x6e30>
 8006d6a: f880 8000    	strb.w	r8, [r0]
 8006d6e: 2003         	movs	r0, #0x3
 8006d70: 7038         	strb	r0, [r7]
 8006d72: 7028         	strb	r0, [r5]
 8006d74: f88a 4000    	strb.w	r4, [r10]
 8006d78: 700c         	strb	r4, [r1]
 8006d7a: 482e         	ldr	r0, [pc, #0xb8]         @ 0x8006e34 <firmware_image+0x6e34>
 8006d7c: 7801         	ldrb	r1, [r0]
 8006d7e: b139         	cbz	r1, 0x8006d90 <firmware_image+0x6d90> @ imm = #0xe
 8006d80: 492b         	ldr	r1, [pc, #0xac]         @ 0x8006e30 <firmware_image+0x6e30>
 8006d82: 700c         	strb	r4, [r1]
 8006d84: 2103         	movs	r1, #0x3
 8006d86: 7039         	strb	r1, [r7]
 8006d88: 7029         	strb	r1, [r5]
 8006d8a: f88a 4000    	strb.w	r4, [r10]
 8006d8e: 7004         	strb	r4, [r0]
 8006d90: f7fc fa12    	bl	0x80031b8 <firmware_image+0x31b8> @ imm = #-0x3bdc
 8006d94: e761         	b	0x8006c5a <firmware_image+0x6c5a> @ imm = #-0x13e
 8006d96: 0000         	movs	r0, r0
 8006d98: 1a80         	subs	r0, r0, r2
 8006d9a: 0006         	movs	r6, r0
 8006d9c: 0000         	movs	r0, r0
 8006d9e: 2000         	movs	r0, #0x0
 8006da0: 021e         	lsls	r6, r3, #0x8
 8006da2: 2000         	movs	r0, #0x0
 8006da4: 8480         	strh	r0, [r0, #0x24]
 8006da6: 001e         	movs	r6, r3
 8006da8: 59fd         	ldr	r5, [r7, r7]
 8006daa: 0800         	lsrs	r0, r0, #0x20
 8006dac: 1a85         	subs	r5, r0, r2
 8006dae: 0800         	lsrs	r0, r0, #0x20
 8006db0: 3249         	adds	r2, #0x49
 8006db2: 0800         	lsrs	r0, r0, #0x20
 8006db4: 32cd         	adds	r2, #0xcd
 8006db6: 0800         	lsrs	r0, r0, #0x20
 8006db8: 1ca1         	adds	r1, r4, #0x2
 8006dba: 0800         	lsrs	r0, r0, #0x20
 8006dbc: 50f1         	str	r1, [r6, r3]
 8006dbe: 0800         	lsrs	r0, r0, #0x20
 8006dc0: 5095         	str	r5, [r2, r2]
 8006dc2: 0800         	lsrs	r0, r0, #0x20
 8006dc4: 5019         	str	r1, [r3, r0]
 8006dc6: 0800         	lsrs	r0, r0, #0x20
 8006dc8: 23bd         	movs	r3, #0xbd
 8006dca: 0800         	lsrs	r0, r0, #0x20
 8006dcc: 3851         	subs	r0, #0x51
 8006dce: 0800         	lsrs	r0, r0, #0x20
 8006dd0: 3c7d         	subs	r4, #0x7d
 8006dd2: 0800         	lsrs	r0, r0, #0x20
 8006dd4: 1d81         	adds	r1, r0, #0x6
 8006dd6: 0800         	lsrs	r0, r0, #0x20
 8006dd8: 021f         	lsls	r7, r3, #0x8
 8006dda: 2000         	movs	r0, #0x0
 8006ddc: 0220         	lsls	r0, r4, #0x8
 8006dde: 2000         	movs	r0, #0x0
 8006de0: 006c         	lsls	r4, r5, #0x1
 8006de2: 2000         	movs	r0, #0x0
 8006de4: 0148         	lsls	r0, r1, #0x5
 8006de6: 2000         	movs	r0, #0x0
 8006de8: 0164         	lsls	r4, r4, #0x5
 8006dea: 2000         	movs	r0, #0x0
 8006dec: 0197         	lsls	r7, r2, #0x6
 8006dee: 2000         	movs	r0, #0x0
 8006df0: 01f8         	lsls	r0, r7, #0x7
 8006df2: 2000         	movs	r0, #0x0
 8006df4: 0210         	lsls	r0, r2, #0x8
 8006df6: 2000         	movs	r0, #0x0
 8006df8: 01fe         	lsls	r6, r7, #0x7
 8006dfa: 2000         	movs	r0, #0x0
 8006dfc: 0216         	lsls	r6, r2, #0x8
 8006dfe: 2000         	movs	r0, #0x0
 8006e00: 0000         	movs	r0, r0
 8006e02: 42c8         	cmn	r0, r1
 8006e04: 01cc         	lsls	r4, r1, #0x7
 8006e06: 2000         	movs	r0, #0x0
 8006e08: 019a         	lsls	r2, r3, #0x6
 8006e0a: 2000         	movs	r0, #0x0
 8006e0c: 01c4         	lsls	r4, r0, #0x7
 8006e0e: 2000         	movs	r0, #0x0
 8006e10: 019c         	lsls	r4, r3, #0x6
 8006e12: 2000         	movs	r0, #0x0
 8006e14: 0149         	lsls	r1, r1, #0x5
 8006e16: 2000         	movs	r0, #0x0
 8006e18: 008a         	lsls	r2, r1, #0x2
 8006e1a: 2000         	movs	r0, #0x0
 8006e1c: 014a         	lsls	r2, r1, #0x5
 8006e1e: 2000         	movs	r0, #0x0
 8006e20: 008c         	lsls	r4, r1, #0x2
 8006e22: 2000         	movs	r0, #0x0
 8006e24: 003e         	movs	r6, r7
 8006e26: 2000         	movs	r0, #0x0
 8006e28: 0400         	lsls	r0, r0, #0x10
 8006e2a: 4800         	ldr	r0, [pc, #0x0]          @ 0x8006e2c <firmware_image+0x6e2c>
 8006e2c: 0131         	lsls	r1, r6, #0x4
 8006e2e: 2000         	movs	r0, #0x0
 8006e30: 0067         	lsls	r7, r4, #0x1
 8006e32: 2000         	movs	r0, #0x0
 8006e34: 0132         	lsls	r2, r6, #0x4
 8006e36: 2000         	movs	r0, #0x0
 8006e38: b570         	push	{r4, r5, r6, lr}
 8006e3a: 23ff         	movs	r3, #0xff
 8006e3c: 22ff         	movs	r2, #0xff
 8006e3e: 4d08         	ldr	r5, [pc, #0x20]         @ 0x8006e60 <firmware_image+0x6e60>
 8006e40: f505 7680    	add.w	r6, r5, #0x100
 8006e44: e005         	b	0x8006e52 <firmware_image+0x6e52> @ imm = #0xa
 8006e46: f810 4b01    	ldrb	r4, [r0], #1
 8006e4a: 4054         	eors	r4, r2
 8006e4c: 5d2a         	ldrb	r2, [r5, r4]
 8006e4e: 405a         	eors	r2, r3
 8006e50: 5d33         	ldrb	r3, [r6, r4]
 8006e52: 1e49         	subs	r1, r1, #0x1
 8006e54: b289         	uxth	r1, r1
 8006e56: d2f6         	bhs	0x8006e46 <firmware_image+0x6e46> @ imm = #-0x14
 8006e58: ea42 2003    	orr.w	r0, r2, r3, lsl #8
 8006e5c: bd70         	pop	{r4, r5, r6, pc}
 8006e5e: 0000         	movs	r0, r0
 8006e60: 7120         	strb	r0, [r4, #0x4]
 8006e62: 0800         	lsrs	r0, r0, #0x20
 8006e64: b510         	push	{r4, lr}
 8006e66: f000 f91f    	bl	0x80070a8 <firmware_image+0x70a8> @ imm = #0x23e
 8006e6a: 2802         	cmp	r0, #0x2
 8006e6c: d14a         	bne	0x8006f04 <firmware_image+0x6f04> @ imm = #0x94
 8006e6e: 4826         	ldr	r0, [pc, #0x98]         @ 0x8006f08 <firmware_image+0x6f08>
 8006e70: 7801         	ldrb	r1, [r0]
 8006e72: 4c26         	ldr	r4, [pc, #0x98]         @ 0x8006f0c <firmware_image+0x6f0c>
 8006e74: 4a26         	ldr	r2, [pc, #0x98]         @ 0x8006f10 <firmware_image+0x6f10>
 8006e76: 7820         	ldrb	r0, [r4]
 8006e78: 88d2         	ldrh	r2, [r2, #0x6]
 8006e7a: 4290         	cmp	r0, r2
 8006e7c: d142         	bne	0x8006f04 <firmware_image+0x6f04> @ imm = #0x84
 8006e7e: 4620         	mov	r0, r4
 8006e80: f7ff ffda    	bl	0x8006e38 <firmware_image+0x6e38> @ imm = #-0x4c
 8006e84: 2800         	cmp	r0, #0x0
 8006e86: d13d         	bne	0x8006f04 <firmware_image+0x6f04> @ imm = #0x7a
 8006e88: 7860         	ldrb	r0, [r4, #0x1]
 8006e8a: 2805         	cmp	r0, #0x5
 8006e8c: d026         	beq	0x8006edc <firmware_image+0x6edc> @ imm = #0x4c
 8006e8e: dc08         	bgt	0x8006ea2 <firmware_image+0x6ea2> @ imm = #0x10
 8006e90: 2801         	cmp	r0, #0x1
 8006e92: d013         	beq	0x8006ebc <firmware_image+0x6ebc> @ imm = #0x26
 8006e94: 2802         	cmp	r0, #0x2
 8006e96: d015         	beq	0x8006ec4 <firmware_image+0x6ec4> @ imm = #0x2a
 8006e98: 2803         	cmp	r0, #0x3
 8006e9a: d017         	beq	0x8006ecc <firmware_image+0x6ecc> @ imm = #0x2e
 8006e9c: 2804         	cmp	r0, #0x4
 8006e9e: d108         	bne	0x8006eb2 <firmware_image+0x6eb2> @ imm = #0x10
 8006ea0: e018         	b	0x8006ed4 <firmware_image+0x6ed4> @ imm = #0x30
 8006ea2: 2806         	cmp	r0, #0x6
 8006ea4: d01e         	beq	0x8006ee4 <firmware_image+0x6ee4> @ imm = #0x3c
 8006ea6: 280f         	cmp	r0, #0xf
 8006ea8: d020         	beq	0x8006eec <firmware_image+0x6eec> @ imm = #0x40
 8006eaa: 2810         	cmp	r0, #0x10
 8006eac: d022         	beq	0x8006ef4 <firmware_image+0x6ef4> @ imm = #0x44
 8006eae: 2878         	cmp	r0, #0x78
 8006eb0: d024         	beq	0x8006efc <firmware_image+0x6efc> @ imm = #0x48
 8006eb2: e8bd 4010    	pop.w	{r4, lr}
 8006eb6: 2001         	movs	r0, #0x1
 8006eb8: f000 b82c    	b.w	0x8006f14 <firmware_image+0x6f14> @ imm = #0x58
 8006ebc: e8bd 4010    	pop.w	{r4, lr}
 8006ec0: f7fd bbf2    	b.w	0x80046a8 <firmware_image+0x46a8> @ imm = #-0x281c
 8006ec4: e8bd 4010    	pop.w	{r4, lr}
 8006ec8: f7fd bc74    	b.w	0x80047b4 <firmware_image+0x47b4> @ imm = #-0x2718
 8006ecc: e8bd 4010    	pop.w	{r4, lr}
 8006ed0: f7fd bbec    	b.w	0x80046ac <firmware_image+0x46ac> @ imm = #-0x2828
 8006ed4: e8bd 4010    	pop.w	{r4, lr}
 8006ed8: f7fd bc2a    	b.w	0x8004730 <firmware_image+0x4730> @ imm = #-0x27ac
 8006edc: e8bd 4010    	pop.w	{r4, lr}
 8006ee0: f7ff b846    	b.w	0x8005f70 <firmware_image+0x5f70> @ imm = #-0xf74
 8006ee4: e8bd 4010    	pop.w	{r4, lr}
 8006ee8: f7ff b844    	b.w	0x8005f74 <firmware_image+0x5f74> @ imm = #-0xf78
 8006eec: e8bd 4010    	pop.w	{r4, lr}
 8006ef0: f7ff b83c    	b.w	0x8005f6c <firmware_image+0x5f6c> @ imm = #-0xf88
 8006ef4: e8bd 4010    	pop.w	{r4, lr}
 8006ef8: f7ff b839    	b.w	0x8005f6e <firmware_image+0x5f6e> @ imm = #-0xf8e
 8006efc: e8bd 4010    	pop.w	{r4, lr}
 8006f00: f7ff b858    	b.w	0x8005fb4 <firmware_image+0x5fb4> @ imm = #-0xf50
 8006f04: bd10         	pop	{r4, pc}
 8006f06: 0000         	movs	r0, r0
 8006f08: 0238         	lsls	r0, r7, #0x8
 8006f0a: 2000         	movs	r0, #0x0
 8006f0c: 0478         	lsls	r0, r7, #0x11
 8006f0e: 2000         	movs	r0, #0x0
 8006f10: 021e         	lsls	r6, r3, #0x8
 8006f12: 2000         	movs	r0, #0x0
 8006f14: b510         	push	{r4, lr}
 8006f16: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x8006f40 <firmware_image+0x6f40>
 8006f18: 7861         	ldrb	r1, [r4, #0x1]
 8006f1a: f041 0180    	orr	r1, r1, #0x80
 8006f1e: 7061         	strb	r1, [r4, #0x1]
 8006f20: 70a0         	strb	r0, [r4, #0x2]
 8006f22: 2103         	movs	r1, #0x3
 8006f24: 4620         	mov	r0, r4
 8006f26: f7ff ff87    	bl	0x8006e38 <firmware_image+0x6e38> @ imm = #-0xf2
 8006f2a: 4601         	mov	r1, r0
 8006f2c: 1ce0         	adds	r0, r4, #0x3
 8006f2e: f7fd fc42    	bl	0x80047b6 <firmware_image+0x47b6> @ imm = #-0x277c
 8006f32: 4620         	mov	r0, r4
 8006f34: e8bd 4010    	pop.w	{r4, lr}
 8006f38: 2105         	movs	r1, #0x5
 8006f3a: f000 b8bb    	b.w	0x80070b4 <firmware_image+0x70b4> @ imm = #0x176
 8006f3e: 0000         	movs	r0, r0
 8006f40: 0478         	lsls	r0, r7, #0x11
 8006f42: 2000         	movs	r0, #0x0
 8006f44: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8006f48: 4606         	mov	r6, r0
 8006f4a: 460f         	mov	r7, r1
 8006f4c: f7f9 fcf4    	bl	0x8000938 <firmware_image+0x938> @ imm = #-0x6618
 8006f50: 1e04         	subs	r4, r0, #0x0
 8006f52: 460d         	mov	r5, r1
 8006f54: bf18         	it	ne
 8006f56: 2001         	movne	r0, #0x1
 8006f58: 4328         	orrs	r0, r5
 8006f5a: f020 4000    	bic	r0, r0, #0x80000000
 8006f5e: f1c0 607f    	rsb.w	r0, r0, #0xff00000
 8006f62: f100 40e0    	add.w	r0, r0, #0x70000000
 8006f66: 0fc0         	lsrs	r0, r0, #0x1f
 8006f68: d00e         	beq	0x8006f88 <firmware_image+0x6f88> @ imm = #0x1c
 8006f6a: 1c30         	adds	r0, r6, #0x0
 8006f6c: 4338         	orrs	r0, r7
 8006f6e: f020 4000    	bic	r0, r0, #0x80000000
 8006f72: f1c0 607f    	rsb.w	r0, r0, #0xff00000
 8006f76: f100 40e0    	add.w	r0, r0, #0x70000000
 8006f7a: 0fc0         	lsrs	r0, r0, #0x1f
 8006f7c: bf04         	itt	eq
 8006f7e: 2001         	moveq	r0, #0x1
 8006f80: f7ff fa3e    	bleq	0x8006400 <firmware_image+0x6400> @ imm = #-0xb84
 8006f84: 4620         	mov	r0, r4
 8006f86: 4629         	mov	r1, r5
 8006f88: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8006f8c: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8006f90: b089         	sub	sp, #0x24
 8006f92: 4683         	mov	r11, r0
 8006f94: 460e         	mov	r6, r1
 8006f96: 4615         	mov	r5, r2
 8006f98: 461f         	mov	r7, r3
 8006f9a: 2101         	movs	r1, #0x1
 8006f9c: 044c         	lsls	r4, r1, #0x11
 8006f9e: 4620         	mov	r0, r4
 8006fa0: f7fd f9d6    	bl	0x8004350 <firmware_image+0x4350> @ imm = #-0x2c54
 8006fa4: 2101         	movs	r1, #0x1
 8006fa6: 4620         	mov	r0, r4
 8006fa8: f7fd f9ea    	bl	0x8004380 <firmware_image+0x4380> @ imm = #-0x2c2c
 8006fac: f8df 90e4    	ldr.w	r9, [pc, #0xe4]         @ 0x8007094 <firmware_image+0x7094>
 8006fb0: 4648         	mov	r0, r9
 8006fb2: f7fe fec1    	bl	0x8005d38 <firmware_image+0x5d38> @ imm = #-0x127e
 8006fb6: f04f 4a90    	mov.w	r10, #0x48000000
 8006fba: 2201         	movs	r2, #0x1
 8006fbc: 2102         	movs	r1, #0x2
 8006fbe: 4650         	mov	r0, r10
 8006fc0: f7fb fbb6    	bl	0x8002730 <firmware_image+0x2730> @ imm = #-0x4894
 8006fc4: 2201         	movs	r2, #0x1
 8006fc6: 2103         	movs	r1, #0x3
 8006fc8: 4650         	mov	r0, r10
 8006fca: f7fb 080c    	<unknown>
 8006fce: f8cd 801c    	str.w	r8, [sp, #0x1c]
 8006fd2: 2002         	movs	r0, #0x2
 8006fd4: f88d 0020    	strb.w	r0, [sp, #0x20]
 8006fd8: 2003         	movs	r0, #0x3
 8006fda: f88d 0021    	strb.w	r0, [sp, #0x21]
 8006fde: 2400         	movs	r4, #0x0
 8006fe0: f88d 4022    	strb.w	r4, [sp, #0x22]
 8006fe4: f88d 4023    	strb.w	r4, [sp, #0x23]
 8006fe8: a907         	add	r1, sp, #0x1c
 8006fea: 4650         	mov	r0, r10
 8006fec: f7fb fb62    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0x493c
 8006ff0: 2064         	movs	r0, #0x64
 8006ff2: fb0b fb00    	mul	r11, r11, r0
 8006ff6: f8cd 000a    	str.w	r0, [sp, #0xa]
 8006ffa: 1c40         	adds	r0, r0, #0x1
 8006ffc: f8aa 000a    	strh.w	r0, [r10, #0xa]
 8007000: b004         	add	sp, #0x10
 8007002: 2e08         	cmp	r6, #0x8
 8007004: d031         	beq	0x800706a <firmware_image+0x706a> @ imm = #0x62
 8007006: 2e09         	cmp	r6, #0x9
 8007008: d031         	beq	0x800706e <firmware_image+0x706e> @ imm = #0x62
 800700a: 9402         	str	r4, [sp, #0x8]
 800700c: 2f01         	cmp	r7, #0x1
 800700e: d033         	beq	0x8007078 <firmware_image+0x7078> @ imm = #0x66
 8007010: 2f02         	cmp	r7, #0x2
 8007012: d033         	beq	0x800707c <firmware_image+0x707c> @ imm = #0x66
 8007014: 9403         	str	r4, [sp, #0xc]
 8007016: b375         	cbz	r5, 0x8007076 <firmware_image+0x7076> @ imm = #0x5c
 8007018: 2d01         	cmp	r5, #0x1
 800701a: d035         	beq	0x8007088 <firmware_image+0x7088> @ imm = #0x6a
 800701c: 2d02         	cmp	r5, #0x2
 800701e: d037         	beq	0x8007090 <firmware_image+0x7090> @ imm = #0x6e
 8007020: 9404         	str	r4, [sp, #0x10]
 8007022: 9406         	str	r4, [sp, #0x18]
 8007024: f8cd 8014    	str.w	r8, [sp, #0x14]
 8007028: a901         	add	r1, sp, #0x4
 800702a: 4648         	mov	r0, r9
 800702c: f7fe fee8    	bl	0x8005e00 <firmware_image+0x5e00> @ imm = #-0x1230
 8007030: 2101         	movs	r1, #0x1
 8007032: 4648         	mov	r0, r9
 8007034: f7fe fea4    	bl	0x8005d80 <firmware_image+0x5d80> @ imm = #-0x12b8
 8007038: 2201         	movs	r2, #0x1
 800703a: 4918         	ldr	r1, [pc, #0x60]         @ 0x800709c <firmware_image+0x709c>
 800703c: 4648         	mov	r0, r9
 800703e: f7fe fec7    	bl	0x8005dd0 <firmware_image+0x5dd0> @ imm = #-0x1272
 8007042: f7fb f81f    	bl	0x8002084 <firmware_image+0x2084> @ imm = #-0x4fc2
 8007046: 4916         	ldr	r1, [pc, #0x58]         @ 0x80070a0 <firmware_image+0x70a0>
 8007048: 2220         	movs	r2, #0x20
 800704a: f1a1 0018    	sub.w	r0, r1, #0x18
 800704e: f7fd f95e    	bl	0x800430e <firmware_image+0x430e> @ imm = #-0x2d44
 8007052: 4913         	ldr	r1, [pc, #0x4c]         @ 0x80070a0 <firmware_image+0x70a0>
 8007054: 2220         	movs	r2, #0x20
 8007056: 3120         	adds	r1, #0x20
 8007058: f1a1 002c    	sub.w	r0, r1, #0x2c
 800705c: f7fd f957    	bl	0x800430e <firmware_image+0x430e> @ imm = #-0x2d52
 8007060: 4810         	ldr	r0, [pc, #0x40]         @ 0x80070a4 <firmware_image+0x70a4>
 8007062: 7004         	strb	r4, [r0]
 8007064: b009         	add	sp, #0x24
 8007066: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 800706a: 9402         	str	r4, [sp, #0x8]
 800706c: e7ce         	b	0x800700c <firmware_image+0x700c> @ imm = #-0x64
 800706e: f44f 5080    	mov.w	r0, #0x1000
 8007072: 9002         	str	r0, [sp, #0x8]
 8007074: e7ca         	b	0x800700c <firmware_image+0x700c> @ imm = #-0x6c
 8007076: e005         	b	0x8007084 <firmware_image+0x7084> @ imm = #0xa
 8007078: 9403         	str	r4, [sp, #0xc]
 800707a: e7cc         	b	0x8007016 <firmware_image+0x7016> @ imm = #-0x68
 800707c: f44f 5000    	mov.w	r0, #0x2000
 8007080: 9003         	str	r0, [sp, #0xc]
 8007082: e7c8         	b	0x8007016 <firmware_image+0x7016> @ imm = #-0x70
 8007084: 9404         	str	r4, [sp, #0x10]
 8007086: e7cc         	b	0x8007022 <firmware_image+0x7022> @ imm = #-0x68
 8007088: f44f 60c0    	mov.w	r0, #0x600
 800708c: 9004         	str	r0, [sp, #0x10]
 800708e: e7c8         	b	0x8007022 <firmware_image+0x7022> @ imm = #-0x70
 8007090: f44f 6080    	mov.w	r0, #0x400
 8007094: 9004         	str	r0, [sp, #0x10]
 8007096: e7c4         	b	0x8007022 <firmware_image+0x7022> @ imm = #-0x78
 8007098: 4400         	add	r0, r0
 800709a: 4000         	ands	r0, r0
 800709c: 0104         	lsls	r4, r0, #0x4
 800709e: 0004         	movs	r4, r0
 80070a0: 04b0         	lsls	r0, r6, #0x12
 80070a2: 2000         	movs	r0, #0x0
 80070a4: 0236         	lsls	r6, r6, #0x8
 80070a6: 2000         	movs	r0, #0x0
 80070a8: 4801         	ldr	r0, [pc, #0x4]          @ 0x80070b0 <firmware_image+0x70b0>
 80070aa: 7800         	ldrb	r0, [r0]
 80070ac: 4770         	bx	lr
 80070ae: 0000         	movs	r0, r0
 80070b0: 0236         	lsls	r6, r6, #0x8
 80070b2: 2000         	movs	r0, #0x0
 80070b4: b570         	push	{r4, r5, r6, lr}
 80070b6: b08c         	sub	sp, #0x30
 80070b8: 4604         	mov	r4, r0
 80070ba: 460d         	mov	r5, r1
 80070bc: 2101         	movs	r1, #0x1
 80070be: 4608         	mov	r0, r1
 80070c0: f7fd f948    	bl	0x8004354 <firmware_image+0x4354> @ imm = #-0x2d70
 80070c4: 4e14         	ldr	r6, [pc, #0x50]         @ 0x8007118 <firmware_image+0x7118>
 80070c6: 4630         	mov	r0, r6
 80070c8: f7fb f84a    	bl	0x8002160 <firmware_image+0x2160> @ imm = #-0x4f6c
 80070cc: 4813         	ldr	r0, [pc, #0x4c]         @ 0x800711c <firmware_image+0x711c>
 80070ce: 9001         	str	r0, [sp, #0x4]
 80070d0: 9402         	str	r4, [sp, #0x8]
 80070d2: 2010         	movs	r0, #0x10
 80070d4: 9003         	str	r0, [sp, #0xc]
 80070d6: 9504         	str	r5, [sp, #0x10]
 80070d8: 2080         	movs	r0, #0x80
 80070da: 9006         	str	r0, [sp, #0x18]
 80070dc: 2000         	movs	r0, #0x0
 80070de: 9007         	str	r0, [sp, #0x1c]
 80070e0: 9008         	str	r0, [sp, #0x20]
 80070e2: 9005         	str	r0, [sp, #0x14]
 80070e4: 9009         	str	r0, [sp, #0x24]
 80070e6: f44f 5140    	mov.w	r1, #0x3000
 80070ea: 910a         	str	r1, [sp, #0x28]
 80070ec: 900b         	str	r0, [sp, #0x2c]
 80070ee: a901         	add	r1, sp, #0x4
 80070f0: 4630         	mov	r0, r6
 80070f2: f7fb f8a5    	bl	0x8002240 <firmware_image+0x2240> @ imm = #-0x4eb6
 80070f6: 4809         	ldr	r0, [pc, #0x24]         @ 0x800711c <firmware_image+0x711c>
 80070f8: 2201         	movs	r2, #0x1
 80070fa: 2180         	movs	r1, #0x80
 80070fc: 3828         	subs	r0, #0x28
 80070fe: f7fe fe13    	bl	0x8005d28 <firmware_image+0x5d28> @ imm = #-0x13da
 8007102: 2201         	movs	r2, #0x1
 8007104: 2102         	movs	r1, #0x2
 8007106: 4630         	mov	r0, r6
 8007108: f7fb f890    	bl	0x800222c <firmware_image+0x222c> @ imm = #-0x4ee0
 800710c: 2101         	movs	r1, #0x1
 800710e: 4630         	mov	r0, r6
 8007110: f7fb f872    	bl	0x80021f8 <firmware_image+0x21f8> @ imm = #-0x4f1c
 8007114: b00c         	add	sp, #0x30
 8007116: bd70         	pop	{r4, r5, r6, pc}
 8007118: 0044         	lsls	r4, r0, #0x1
 800711a: 4002         	ands	r2, r0
 800711c: 4428         	add	r0, r5
 800711e: 4000         	ands	r0, r0
 8007120: c100         	<unknown>
 8007122: 4081         	lsls	r1, r0
 8007124: c001         	stm	r0!, {r0}
 8007126: 4180         	sbcs	r0, r0
 8007128: c001         	stm	r0!, {r0}
 800712a: 4180         	sbcs	r0, r0
 800712c: c100         	<unknown>
 800712e: 4081         	lsls	r1, r0
 8007130: c001         	stm	r0!, {r0}
 8007132: 4180         	sbcs	r0, r0
 8007134: c100         	<unknown>
 8007136: 4081         	lsls	r1, r0
 8007138: c100         	<unknown>
 800713a: 4081         	lsls	r1, r0
 800713c: c001         	stm	r0!, {r0}
 800713e: 4180         	sbcs	r0, r0
 8007140: c001         	stm	r0!, {r0}
 8007142: 4180         	sbcs	r0, r0
 8007144: c100         	<unknown>
 8007146: 4081         	lsls	r1, r0
 8007148: c100         	<unknown>
 800714a: 4081         	lsls	r1, r0
 800714c: c001         	stm	r0!, {r0}
 800714e: 4180         	sbcs	r0, r0
 8007150: c100         	<unknown>
 8007152: 4081         	lsls	r1, r0
 8007154: c001         	stm	r0!, {r0}
 8007156: 4180         	sbcs	r0, r0
 8007158: c001         	stm	r0!, {r0}
 800715a: 4180         	sbcs	r0, r0
 800715c: c100         	<unknown>
 800715e: 4081         	lsls	r1, r0
 8007160: c001         	stm	r0!, {r0}
 8007162: 4180         	sbcs	r0, r0
 8007164: c100         	<unknown>
 8007166: 4081         	lsls	r1, r0
 8007168: c100         	<unknown>
 800716a: 4081         	lsls	r1, r0
 800716c: c001         	stm	r0!, {r0}
 800716e: 4180         	sbcs	r0, r0
 8007170: c100         	<unknown>
 8007172: 4081         	lsls	r1, r0
 8007174: c001         	stm	r0!, {r0}
 8007176: 4180         	sbcs	r0, r0
 8007178: c001         	stm	r0!, {r0}
 800717a: 4180         	sbcs	r0, r0
 800717c: c100         	<unknown>
 800717e: 4081         	lsls	r1, r0
 8007180: c100         	<unknown>
 8007182: 4081         	lsls	r1, r0
 8007184: c001         	stm	r0!, {r0}
 8007186: 4180         	sbcs	r0, r0
 8007188: c001         	stm	r0!, {r0}
 800718a: 4180         	sbcs	r0, r0
 800718c: c100         	<unknown>
 800718e: 4081         	lsls	r1, r0
 8007190: c001         	stm	r0!, {r0}
 8007192: 4180         	sbcs	r0, r0
 8007194: c100         	<unknown>
 8007196: 4081         	lsls	r1, r0
 8007198: c100         	<unknown>
 800719a: 4081         	lsls	r1, r0
 800719c: c001         	stm	r0!, {r0}
 800719e: 4180         	sbcs	r0, r0
 80071a0: c001         	stm	r0!, {r0}
 80071a2: 4180         	sbcs	r0, r0
 80071a4: c100         	<unknown>
 80071a6: 4081         	lsls	r1, r0
 80071a8: c100         	<unknown>
 80071aa: 4081         	lsls	r1, r0
 80071ac: c001         	stm	r0!, {r0}
 80071ae: 4180         	sbcs	r0, r0
 80071b0: c100         	<unknown>
 80071b2: 4081         	lsls	r1, r0
 80071b4: c001         	stm	r0!, {r0}
 80071b6: 4180         	sbcs	r0, r0
 80071b8: c001         	stm	r0!, {r0}
 80071ba: 4180         	sbcs	r0, r0
 80071bc: c100         	<unknown>
 80071be: 4081         	lsls	r1, r0
 80071c0: c100         	<unknown>
 80071c2: 4081         	lsls	r1, r0
 80071c4: c001         	stm	r0!, {r0}
 80071c6: 4180         	sbcs	r0, r0
 80071c8: c001         	stm	r0!, {r0}
 80071ca: 4180         	sbcs	r0, r0
 80071cc: c100         	<unknown>
 80071ce: 4081         	lsls	r1, r0
 80071d0: c001         	stm	r0!, {r0}
 80071d2: 4180         	sbcs	r0, r0
 80071d4: c100         	<unknown>
 80071d6: 4081         	lsls	r1, r0
 80071d8: c100         	<unknown>
 80071da: 4081         	lsls	r1, r0
 80071dc: c001         	stm	r0!, {r0}
 80071de: 4180         	sbcs	r0, r0
 80071e0: c100         	<unknown>
 80071e2: 4081         	lsls	r1, r0
 80071e4: c001         	stm	r0!, {r0}
 80071e6: 4180         	sbcs	r0, r0
 80071e8: c001         	stm	r0!, {r0}
 80071ea: 4180         	sbcs	r0, r0
 80071ec: c001         	stm	r0!, {r0}
 80071ee: 4180         	sbcs	r0, r0
 80071f0: c100         	<unknown>
 80071f2: 4081         	lsls	r1, r0
 80071f4: c100         	<unknown>
 80071f6: 4081         	lsls	r1, r0
 80071f8: c001         	stm	r0!, {r0}
 80071fa: 4180         	sbcs	r0, r0
 80071fc: c001         	stm	r0!, {r0}
 80071fe: 4180         	sbcs	r0, r0
 8007200: c100         	<unknown>
 8007202: 4081         	lsls	r1, r0
 8007204: c100         	<unknown>
 8007206: 4081         	lsls	r1, r0
 8007208: c001         	stm	r0!, {r0}
 800720a: 4180         	sbcs	r0, r0
 800720c: c100         	<unknown>
 800720e: 4081         	lsls	r1, r0
 8007210: c001         	stm	r0!, {r0}
 8007212: 4180         	sbcs	r0, r0
 8007214: c001         	stm	r0!, {r0}
 8007216: 4180         	sbcs	r0, r0
 8007218: c100         	<unknown>
 800721a: 4081         	lsls	r1, r0
 800721c: c000         	<unknown>
 800721e: 01c1         	lsls	r1, r0, #0x7
 8007220: 03c3         	lsls	r3, r0, #0xf
 8007222: c202         	stm	r2!, {r1}
 8007224: 06c6         	lsls	r6, r0, #0x1b
 8007226: c707         	stm	r7!, {r0, r1, r2}
 8007228: c505         	stm	r5!, {r0, r2}
 800722a: 04c4         	lsls	r4, r0, #0x13
 800722c: 0ccc         	lsrs	r4, r1, #0x13
 800722e: cd0d         	ldm	r5!, {r0, r2, r3}
 8007230: cf0f         	ldm	r7!, {r0, r1, r2, r3}
 8007232: 0ece         	lsrs	r6, r1, #0x1b
 8007234: ca0a         	ldm	r2!, {r1, r3}
 8007236: 0bcb         	lsrs	r3, r1, #0xf
 8007238: 09c9         	lsrs	r1, r1, #0x7
 800723a: c808         	ldm	r0!, {r3}
 800723c: 18d8         	adds	r0, r3, r3
 800723e: d919         	bls	0x8007274 <firmware_image+0x7274> @ imm = #0x32
 8007240: db1b         	blt	0x800727a <firmware_image+0x727a> @ imm = #0x36
 8007242: 1ada         	subs	r2, r3, r3
 8007244: de1e         	udf	#0x1e
 8007246: 1fdf         	subs	r7, r3, #0x7
 8007248: 1ddd         	adds	r5, r3, #0x7
 800724a: dc1c         	bgt	0x8007286 <firmware_image+0x7286> @ imm = #0x38
 800724c: d414         	bmi	0x8007278 <firmware_image+0x7278> @ imm = #0x28
 800724e: 15d5         	asrs	r5, r2, #0x17
 8007250: 17d7         	asrs	r7, r2, #0x1f
 8007252: d616         	bvs	0x8007282 <firmware_image+0x7282> @ imm = #0x2c
 8007254: 12d2         	asrs	r2, r2, #0xb
 8007256: d313         	blo	0x8007280 <firmware_image+0x7280> @ imm = #0x26
 8007258: d111         	bne	0x800727e <firmware_image+0x727e> @ imm = #0x22
 800725a: 10d0         	asrs	r0, r2, #0x3
 800725c: 30f0         	adds	r0, #0xf0
 800725e: f131 f333    	bl	0x85388c8 <firmware_image+0x5388c8> @ imm = #0x531666
 8007262: 32f2         	adds	r2, #0xf2
 8007264: f636 37f7    	<unknown>
 8007268: 35f5         	adds	r5, #0xf5
 800726a: f434 fc3c    	bl	0x7c3bae6               @ imm = #-0x3cb788
 800726e: 3dfd         	subs	r5, #0xfd
 8007270: 3fff         	subs	r7, #0xff
 8007272: fe3e 3afa    	<unknown>
 8007276: fb3b f939    	<unknown>
 800727a: 38f8         	subs	r0, #0xf8
 800727c: e828 29e9    	<unknown>
 8007280: 2beb         	cmp	r3, #0xeb
 8007282: ea2a 2eee    	bic.w	lr, r10, lr, asr #11
 8007286: ef2f ed2d    	<unknown>
 800728a: 2cec         	cmp	r4, #0xec
 800728c: 24e4         	movs	r4, #0xe4
 800728e: e525         	b	0x8006cdc <firmware_image+0x6cdc> @ imm = #-0x5b6
 8007290: e727         	b	0x80070e2 <firmware_image+0x70e2> @ imm = #-0x1b2
 8007292: 26e6         	movs	r6, #0xe6
 8007294: e222         	b	0x80076dc <firmware_image+0x76dc> @ imm = #0x444
 8007296: 23e3         	movs	r3, #0xe3
 8007298: 21e1         	movs	r1, #0xe1
 800729a: e020         	b	0x80072de <firmware_image+0x72de> @ imm = #0x40
 800729c: 60a0         	str	r0, [r4, #0x8]
 800729e: a161         	adr	r1, #388 <firmware_image+0x7303>
 80072a0: a363         	adr	r3, #396 <firmware_image+0x7307>
 80072a2: 62a2         	str	r2, [r4, #0x28]
 80072a4: a666         	adr	r6, #408 <firmware_image+0x730e>
 80072a6: 67a7         	str	r7, [r4, #0x78]
 80072a8: 65a5         	str	r5, [r4, #0x58]
 80072aa: a464         	adr	r4, #400 <firmware_image+0x7312>
 80072ac: ac6c         	add	r4, sp, #0x1b0
 80072ae: 6dad         	ldr	r5, [r5, #0x58]
 80072b0: 6faf         	ldr	r7, [r5, #0x78]
 80072b2: ae6e         	add	r6, sp, #0x1b8
 80072b4: 6aaa         	ldr	r2, [r5, #0x28]
 80072b6: ab6b         	add	r3, sp, #0x1ac
 80072b8: a969         	add	r1, sp, #0x1a4
 80072ba: 68a8         	ldr	r0, [r5, #0x8]
 80072bc: b878         	<unknown>
 80072be: 79b9         	ldrb	r1, [r7, #0x6]
 80072c0: 7bbb         	ldrb	r3, [r7, #0xe]
 80072c2: ba7a         	rev16	r2, r7
 80072c4: 7ebe         	ldrb	r6, [r7, #0x1a]
 80072c6: bf7f         	itttt	vc
 80072c8: bd7d         	popvc	{r0, r2, r3, r4, r5, r6, pc}
 80072ca: 7cbc         	ldrbvc	r4, [r7, #0x12]
 80072cc: b777         	<unknown>
 80072ce: 76b6         	strbvc	r6, [r6, #0x1a]
 80072d0: b272         	sxtbvc	r2, r6
 80072d2: 73b3         	strb	r3, [r6, #0xe]
 80072d4: 71b1         	strb	r1, [r6, #0x6]
 80072d6: b070         	add	sp, #0x1c0
 80072d8: 9050         	str	r0, [sp, #0x140]
 80072da: 5191         	str	r1, [r2, r6]
 80072dc: 5393         	strh	r3, [r2, r6]
 80072de: 9252         	str	r2, [sp, #0x148]
 80072e0: 5696         	ldrsb	r6, [r2, r2]
 80072e2: 9757         	str	r7, [sp, #0x15c]
 80072e4: 9555         	str	r5, [sp, #0x154]
 80072e6: 5494         	strb	r4, [r2, r2]
 80072e8: 5c9c         	ldrb	r4, [r3, r2]
 80072ea: 9d5d         	ldr	r5, [sp, #0x174]
 80072ec: 9f5f         	ldr	r7, [sp, #0x17c]
 80072ee: 5e9e         	ldrsh	r6, [r3, r2]
 80072f0: 9a5a         	ldr	r2, [sp, #0x168]
 80072f2: 5b9b         	ldrh	r3, [r3, r6]
 80072f4: 5999         	ldr	r1, [r3, r6]
 80072f6: 9858         	ldr	r0, [sp, #0x160]
 80072f8: 4888         	ldr	r0, [pc, #0x220]        @ 0x800751c <firmware_image+0x751c>
 80072fa: 8949         	ldrh	r1, [r1, #0xa]
 80072fc: 8b4b         	ldrh	r3, [r1, #0x1a]
 80072fe: 4a8a         	ldr	r2, [pc, #0x228]        @ 0x8007528 <firmware_image+0x7528>
 8007300: 8e4e         	ldrh	r6, [r1, #0x32]
 8007302: 4f8f         	ldr	r7, [pc, #0x23c]        @ 0x8007540 <firmware_image+0x7540>
 8007304: 4d8d         	ldr	r5, [pc, #0x234]        @ 0x800753c <firmware_image+0x753c>
 8007306: 8c4c         	ldrh	r4, [r1, #0x22]
 8007308: 8444         	strh	r4, [r0, #0x22]
 800730a: 4585         	cmp	sp, r0
 800730c: 4787         	<unknown>
 800730e: 8646         	strh	r6, [r0, #0x32]
 8007310: 4282         	cmp	r2, r0
 8007312: 8343         	strh	r3, [r0, #0x1a]
 8007314: 8141         	strh	r1, [r0, #0xa]
 8007316: 4080         	lsls	r0, r0
 8007318: 7eee         	ldrb	r6, [r5, #0x1b]
 800731a: 7e68         	ldrb	r0, [r5, #0x19]
 800731c: 7d60         	ldrb	r0, [r4, #0x15]
 800731e: 7c5f         	ldrb	r7, [r3, #0x11]
 8007320: 7b63         	ldrb	r3, [r4, #0xd]
 8007322: 7a6e         	ldrb	r6, [r5, #0x9]
 8007324: 797e         	ldrb	r6, [r7, #0x5]
 8007326: 7894         	ldrb	r4, [r2, #0x2]
 8007328: 77af         	strb	r7, [r5, #0x1e]
 800732a: 76cf         	strb	r7, [r1, #0x1b]
 800732c: 75f4         	strb	r4, [r6, #0x17]
 800732e: 751d         	strb	r5, [r3, #0x14]
 8007330: 744b         	strb	r3, [r1, #0x11]
 8007332: 737d         	strb	r5, [r7, #0xd]
 8007334: 7318         	strb	r0, [r3, #0xc]
 8007336: 7251         	strb	r1, [r2, #0x9]
 8007338: 718d         	strb	r5, [r1, #0x6]
 800733a: 70ce         	strb	r6, [r1, #0x3]
 800733c: 7012         	strb	r2, [r2]
 800733e: 6f5a         	ldr	r2, [r3, #0x74]
 8007340: 6ea5         	ldr	r5, [r4, #0x68]
 8007342: 6df4         	ldr	r4, [r6, #0x5c]
 8007344: 6d46         	ldr	r6, [r0, #0x54]
 8007346: 6c9b         	ldr	r3, [r3, #0x48]
 8007348: 6bf3         	ldr	r3, [r6, #0x3c]
 800734a: 6b4e         	ldr	r6, [r1, #0x34]
 800734c: 6aad         	ldr	r5, [r5, #0x28]
 800734e: 6a5d         	ldr	r5, [r3, #0x24]
 8007350: 69bf         	ldr	r7, [r7, #0x18]
 8007352: 6924         	ldr	r4, [r4, #0x10]
 8007354: 688c         	ldr	r4, [r1, #0x8]
 8007356: 67f6         	str	r6, [r6, #0x7c]
 8007358: 6763         	str	r3, [r4, #0x74]
 800735a: 66d2         	str	r2, [r2, #0x6c]
 800735c: 6644         	str	r4, [r0, #0x64]
 800735e: 65b7         	str	r7, [r6, #0x58]
 8007360: 652d         	str	r5, [r5, #0x50]
 8007362: 64a6         	str	r6, [r4, #0x48]
 8007364: 6420         	str	r0, [r4, #0x40]
 8007366: 639c         	str	r4, [r3, #0x38]
 8007368: 635b         	str	r3, [r3, #0x34]
 800736a: 62db         	str	r3, [r3, #0x2c]
 800736c: 625c         	str	r4, [r3, #0x24]
 800736e: 61df         	str	r7, [r3, #0x1c]
 8007370: 6164         	str	r4, [r4, #0x14]
 8007372: 60eb         	str	r3, [r5, #0xc]
 8007374: 6074         	str	r4, [r6, #0x4]
 8007376: 5ffe         	ldrsh	r6, [r7, r7]
 8007378: 5f8a         	ldrsh	r2, [r1, r6]
 800737a: 5f17         	ldrsh	r7, [r2, r4]
 800737c: 5ea6         	ldrsh	r6, [r4, r2]
 800737e: 5e37         	ldrsh	r7, [r6, r0]
 8007380: 5dc9         	ldrb	r1, [r1, r7]
 8007382: 5d5d         	ldrb	r5, [r3, r5]
 8007384: 5d28         	ldrb	r0, [r5, r4]
 8007386: 5cbd         	ldrb	r5, [r7, r2]
 8007388: 5c55         	ldrb	r5, [r2, r1]
 800738a: 5bed         	ldrh	r5, [r5, r7]
 800738c: 5b87         	ldrh	r7, [r0, r6]
 800738e: 5b23         	ldrh	r3, [r4, r4]
 8007390: 5abf         	ldrh	r7, [r7, r2]
 8007392: 5a5d         	ldrh	r5, [r3, r1]
 8007394: 59fc         	ldr	r4, [r7, r7]
 8007396: 599d         	ldr	r5, [r3, r6]
 8007398: 593e         	ldr	r6, [r7, r4]
 800739a: 58e1         	ldr	r1, [r4, r3]
 800739c: 5885         	ldr	r5, [r0, r2]
 800739e: 0000         	movs	r0, r0
 80073a0: 00c9         	lsls	r1, r1, #0x3
 80073a2: 0192         	lsls	r2, r2, #0x6
 80073a4: 025b         	lsls	r3, r3, #0x9
 80073a6: 0324         	lsls	r4, r4, #0xc
 80073a8: 03ed         	lsls	r5, r5, #0xf
 80073aa: 04b6         	lsls	r6, r6, #0x12
 80073ac: 057f         	lsls	r7, r7, #0x15
 80073ae: 0648         	lsls	r0, r1, #0x19
 80073b0: 0711         	lsls	r1, r2, #0x1c
 80073b2: 07d9         	lsls	r1, r3, #0x1f
 80073b4: 08a2         	lsrs	r2, r4, #0x2
 80073b6: 096a         	lsrs	r2, r5, #0x5
 80073b8: 0a33         	lsrs	r3, r6, #0x8
 80073ba: 0afb         	lsrs	r3, r7, #0xb
 80073bc: 0bc4         	lsrs	r4, r0, #0xf
 80073be: 0c8c         	lsrs	r4, r1, #0x12
 80073c0: 0d54         	lsrs	r4, r2, #0x15
 80073c2: 0e1c         	lsrs	r4, r3, #0x18
 80073c4: 0ee3         	lsrs	r3, r4, #0x1b
 80073c6: 0fab         	lsrs	r3, r5, #0x1e
 80073c8: 1072         	asrs	r2, r6, #0x1
 80073ca: 113a         	asrs	r2, r7, #0x4
 80073cc: 1201         	asrs	r1, r0, #0x8
 80073ce: 12c8         	asrs	r0, r1, #0xb
 80073d0: 138f         	asrs	r7, r1, #0xe
 80073d2: 1455         	asrs	r5, r2, #0x11
 80073d4: 151c         	asrs	r4, r3, #0x14
 80073d6: 15e2         	asrs	r2, r4, #0x17
 80073d8: 16a8         	asrs	r0, r5, #0x1a
 80073da: 176e         	asrs	r6, r5, #0x1d
 80073dc: 1833         	adds	r3, r6, r0
 80073de: 18f9         	adds	r1, r7, r3
 80073e0: 19be         	adds	r6, r7, r6
 80073e2: 1a82         	subs	r2, r0, r2
 80073e4: 1b47         	subs	r7, r0, r5
 80073e6: 1c0b         	adds	r3, r1, #0x0
 80073e8: 1ccf         	adds	r7, r1, #0x3
 80073ea: 1d93         	adds	r3, r2, #0x6
 80073ec: 1e57         	subs	r7, r2, #0x1
 80073ee: 1f1a         	subs	r2, r3, #0x4
 80073f0: 1fdd         	subs	r5, r3, #0x7
 80073f2: 209f         	movs	r0, #0x9f
 80073f4: 2161         	movs	r1, #0x61
 80073f6: 2223         	movs	r2, #0x23
 80073f8: 22e5         	movs	r2, #0xe5
 80073fa: 23a6         	movs	r3, #0xa6
 80073fc: 2467         	movs	r4, #0x67
 80073fe: 2528         	movs	r5, #0x28
 8007400: 22e5         	movs	r2, #0xe5
 8007402: 23a6         	movs	r3, #0xa6
 8007404: 2467         	movs	r4, #0x67
 8007406: 2528         	movs	r5, #0x28
 8007408: 25e8         	movs	r5, #0xe8
 800740a: 26a8         	movs	r6, #0xa8
 800740c: 2767         	movs	r7, #0x67
 800740e: 2826         	cmp	r0, #0x26
 8007410: 28e5         	cmp	r0, #0xe5
 8007412: 29a3         	cmp	r1, #0xa3
 8007414: 2a61         	cmp	r2, #0x61
 8007416: 2b1f         	cmp	r3, #0x1f
 8007418: 2bdc         	cmp	r3, #0xdc
 800741a: 2c99         	cmp	r4, #0x99
 800741c: 2d55         	cmp	r5, #0x55
 800741e: 2e11         	cmp	r6, #0x11
 8007420: 2ecc         	cmp	r6, #0xcc
 8007422: 2f87         	cmp	r7, #0x87
 8007424: 3041         	adds	r0, #0x41
 8007426: 30fb         	adds	r0, #0xfb
 8007428: 31b5         	adds	r1, #0xb5
 800742a: 326e         	adds	r2, #0x6e
 800742c: 3326         	adds	r3, #0x26
 800742e: 33df         	adds	r3, #0xdf
 8007430: 3496         	adds	r4, #0x96
 8007432: 354d         	adds	r5, #0x4d
 8007434: 3604         	adds	r6, #0x4
 8007436: 36ba         	adds	r6, #0xba
 8007438: 376f         	adds	r7, #0x6f
 800743a: 3824         	subs	r0, #0x24
 800743c: 38d9         	subs	r0, #0xd9
 800743e: 398c         	subs	r1, #0x8c
 8007440: 3a40         	subs	r2, #0x40
 8007442: 3af2         	subs	r2, #0xf2
 8007444: 3ba5         	subs	r3, #0xa5
 8007446: 3c56         	subs	r4, #0x56
 8007448: 3d07         	subs	r5, #0x7
 800744a: 3db8         	subs	r5, #0xb8
 800744c: 3e68         	subs	r6, #0x68
 800744e: 3f17         	subs	r7, #0x17
 8007450: 3fc5         	subs	r7, #0xc5
 8007452: 4073         	eors	r3, r6
 8007454: 4121         	asrs	r1, r4
 8007456: 41ce         	rors	r6, r1
 8007458: 427a         	rsbs	r2, r7, #0
 800745a: 4325         	orrs	r5, r4
 800745c: 43d0         	mvns	r0, r2
 800745e: 447a         	add	r2, pc
 8007460: 4524         	cmp	r4, r4
 8007462: 45cd         	cmp	sp, r9
 8007464: 4675         	mov	r5, lr
 8007466: 471c         	bx	r3
 8007468: 47c3         	<unknown>
 800746a: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x8007610 <firmware_image+0x7610>
 800746c: 490f         	ldr	r1, [pc, #0x3c]         @ 0x80074ac <firmware_image+0x74ac>
 800746e: 49b4         	ldr	r1, [pc, #0x2d0]        @ 0x8007740 <firmware_image+0x7740>
 8007470: 4a58         	ldr	r2, [pc, #0x160]        @ 0x80075d4 <firmware_image+0x75d4>
 8007472: 4afb         	ldr	r2, [pc, #0x3ec]        @ 0x8007860 <firmware_image+0x7860>
 8007474: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x80076ec <firmware_image+0x76ec>
 8007476: 4c3f         	ldr	r4, [pc, #0xfc]         @ 0x8007574 <firmware_image+0x7574>
 8007478: 4ce0         	ldr	r4, [pc, #0x380]        @ 0x80077fc <firmware_image+0x77fc>
 800747a: 4d81         	ldr	r5, [pc, #0x204]        @ 0x8007680 <firmware_image+0x7680>
 800747c: 4e20         	ldr	r6, [pc, #0x80]         @ 0x8007500 <firmware_image+0x7500>
 800747e: 4ebf         	ldr	r6, [pc, #0x2fc]        @ 0x800777c <firmware_image+0x777c>
 8007480: 4f5d         	ldr	r7, [pc, #0x174]        @ 0x80075f8 <firmware_image+0x75f8>
 8007482: 4ffb         	ldr	r7, [pc, #0x3ec]        @ 0x8007870 <firmware_image+0x7870>
 8007484: 5097         	str	r7, [r2, r2]
 8007486: 5133         	str	r3, [r6, r4]
 8007488: 51ce         	str	r6, [r1, r7]
 800748a: 5268         	strh	r0, [r5, r1]
 800748c: 5302         	strh	r2, [r0, r4]
 800748e: 539b         	strh	r3, [r3, r6]
 8007490: 5432         	strb	r2, [r6, r0]
 8007492: 54c9         	strb	r1, [r1, r3]
 8007494: 5560         	strb	r0, [r4, r5]
 8007496: 55f5         	strb	r5, [r6, r7]
 8007498: 568a         	ldrsb	r2, [r1, r2]
 800749a: 571d         	ldrsb	r5, [r3, r4]
 800749c: 58d3         	ldr	r3, [r2, r3]
 800749e: 5964         	ldr	r4, [r4, r5]
 80074a0: 59f3         	ldr	r3, [r6, r7]
 80074a2: 5a82         	ldrh	r2, [r0, r2]
 80074a4: 5b0f         	ldrh	r7, [r1, r4]
 80074a6: 5b9c         	ldrh	r4, [r3, r6]
 80074a8: 5c28         	ldrb	r0, [r5, r0]
 80074aa: 5cb3         	ldrb	r3, [r6, r2]
 80074ac: 5d3e         	ldrb	r6, [r7, r4]
 80074ae: 5dc7         	ldrb	r7, [r0, r7]
 80074b0: 5e4f         	ldrsh	r7, [r1, r1]
 80074b2: 5ed7         	ldrsh	r7, [r2, r3]
 80074b4: 5f5d         	ldrsh	r5, [r3, r5]
 80074b6: 5fe3         	ldrsh	r3, [r4, r7]
 80074b8: 6068         	str	r0, [r5, #0x4]
 80074ba: 60eb         	str	r3, [r5, #0xc]
 80074bc: 616e         	str	r6, [r5, #0x14]
 80074be: 61f0         	str	r0, [r6, #0x1c]
 80074c0: 6271         	str	r1, [r6, #0x24]
 80074c2: 62f1         	str	r1, [r6, #0x2c]
 80074c4: 6370         	str	r0, [r6, #0x34]
 80074c6: 63ee         	str	r6, [r5, #0x3c]
 80074c8: 646c         	str	r4, [r5, #0x44]
 80074ca: 64e8         	str	r0, [r5, #0x4c]
 80074cc: 6563         	str	r3, [r4, #0x54]
 80074ce: 65dd         	str	r5, [r3, #0x5c]
 80074d0: 6656         	str	r6, [r2, #0x64]
 80074d2: 66cf         	str	r7, [r1, #0x6c]
 80074d4: 6746         	str	r6, [r0, #0x74]
 80074d6: 67bc         	str	r4, [r7, #0x78]
 80074d8: 6832         	ldr	r2, [r6]
 80074da: 68a6         	ldr	r6, [r4, #0x8]
 80074dc: 6919         	ldr	r1, [r3, #0x10]
 80074de: 698b         	ldr	r3, [r1, #0x18]
 80074e0: 69fd         	ldr	r5, [r7, #0x1c]
 80074e2: 6a6d         	ldr	r5, [r5, #0x24]
 80074e4: 6adc         	ldr	r4, [r3, #0x2c]
 80074e6: 6b4a         	ldr	r2, [r1, #0x34]
 80074e8: 6bb7         	ldr	r7, [r6, #0x38]
 80074ea: 6c23         	ldr	r3, [r4, #0x40]
 80074ec: 6c8e         	ldr	r6, [r1, #0x48]
 80074ee: 6cf8         	ldr	r0, [r7, #0x4c]
 80074f0: 6d61         	ldr	r1, [r4, #0x54]
 80074f2: 6dc9         	ldr	r1, [r1, #0x5c]
 80074f4: 6e30         	ldr	r0, [r6, #0x60]
 80074f6: 6e96         	ldr	r6, [r2, #0x68]
 80074f8: 6efb         	ldr	r3, [r7, #0x6c]
 80074fa: 6f5e         	ldr	r6, [r3, #0x74]
 80074fc: 6fc1         	ldr	r1, [r0, #0x7c]
 80074fe: 7022         	strb	r2, [r4]
 8007500: 7083         	strb	r3, [r0, #0x2]
 8007502: 70e2         	strb	r2, [r4, #0x3]
 8007504: 7140         	strb	r0, [r0, #0x5]
 8007506: 719d         	strb	r5, [r3, #0x6]
 8007508: 71f9         	strb	r1, [r7, #0x7]
 800750a: 7254         	strb	r4, [r2, #0x9]
 800750c: 72ae         	strb	r6, [r5, #0xa]
 800750e: 7307         	strb	r7, [r0, #0xc]
 8007510: 735e         	strb	r6, [r3, #0xd]
 8007512: 73b5         	strb	r5, [r6, #0xe]
 8007514: 740a         	strb	r2, [r1, #0x10]
 8007516: 745f         	strb	r7, [r3, #0x11]
 8007518: 74b2         	strb	r2, [r6, #0x12]
 800751a: 7504         	strb	r4, [r0, #0x14]
 800751c: 7555         	strb	r5, [r2, #0x15]
 800751e: 75a5         	strb	r5, [r4, #0x16]
 8007520: 75f3         	strb	r3, [r6, #0x17]
 8007522: 7641         	strb	r1, [r0, #0x19]
 8007524: 768d         	strb	r5, [r1, #0x1a]
 8007526: 76d8         	strb	r0, [r3, #0x1b]
 8007528: 7722         	strb	r2, [r4, #0x1c]
 800752a: 776b         	strb	r3, [r5, #0x1d]
 800752c: 77b3         	strb	r3, [r6, #0x1e]
 800752e: 77fa         	strb	r2, [r7, #0x1f]
 8007530: 783f         	ldrb	r7, [r7]
 8007532: 7884         	ldrb	r4, [r0, #0x2]
 8007534: 78c7         	ldrb	r7, [r0, #0x3]
 8007536: 7909         	ldrb	r1, [r1, #0x4]
 8007538: 794a         	ldrb	r2, [r1, #0x5]
 800753a: 7989         	ldrb	r1, [r1, #0x6]
 800753c: 79c8         	ldrb	r0, [r1, #0x7]
 800753e: 7a05         	ldrb	r5, [r0, #0x8]
 8007540: 7a41         	ldrb	r1, [r0, #0x9]
 8007542: 7a7c         	ldrb	r4, [r7, #0x9]
 8007544: 7ab6         	ldrb	r6, [r6, #0xa]
 8007546: 7aee         	ldrb	r6, [r5, #0xb]
 8007548: 7b26         	ldrb	r6, [r4, #0xc]
 800754a: 7b5c         	ldrb	r4, [r3, #0xd]
 800754c: 7b91         	ldrb	r1, [r2, #0xe]
 800754e: 7bc5         	ldrb	r5, [r0, #0xf]
 8007550: 7bf8         	ldrb	r0, [r7, #0xf]
 8007552: 7c29         	ldrb	r1, [r5, #0x10]
 8007554: 7c59         	ldrb	r1, [r3, #0x11]
 8007556: 7c88         	ldrb	r0, [r1, #0x12]
 8007558: 7cb6         	ldrb	r6, [r6, #0x12]
 800755a: 7ce3         	ldrb	r3, [r4, #0x13]
 800755c: 7d0e         	ldrb	r6, [r1, #0x14]
 800755e: 7d39         	ldrb	r1, [r7, #0x14]
 8007560: 7d62         	ldrb	r2, [r4, #0x15]
 8007562: 7d89         	ldrb	r1, [r1, #0x16]
 8007564: 7db0         	ldrb	r0, [r6, #0x16]
 8007566: 7dd5         	ldrb	r5, [r2, #0x17]
 8007568: 7dfa         	ldrb	r2, [r7, #0x17]
 800756a: 7e1d         	ldrb	r5, [r3, #0x18]
 800756c: 7e3e         	ldrb	r6, [r7, #0x18]
 800756e: 7e5f         	ldrb	r7, [r3, #0x19]
 8007570: 7e7e         	ldrb	r6, [r7, #0x19]
 8007572: 7e9c         	ldrb	r4, [r3, #0x1a]
 8007574: 7eb9         	ldrb	r1, [r7, #0x1a]
 8007576: 7ed5         	ldrb	r5, [r2, #0x1b]
 8007578: 7eef         	ldrb	r7, [r5, #0x1b]
 800757a: 7f09         	ldrb	r1, [r1, #0x1c]
 800757c: 7f21         	ldrb	r1, [r4, #0x1c]
 800757e: 7f37         	ldrb	r7, [r6, #0x1c]
 8007580: 7f4d         	ldrb	r5, [r1, #0x1d]
 8007582: 7f61         	ldrb	r1, [r4, #0x1d]
 8007584: 7f74         	ldrb	r4, [r6, #0x1d]
 8007586: 7f86         	ldrb	r6, [r0, #0x1e]
 8007588: 7f97         	ldrb	r7, [r2, #0x1e]
 800758a: 7fa6         	ldrb	r6, [r4, #0x1e]
 800758c: 7fb4         	ldrb	r4, [r6, #0x1e]
 800758e: 7fc1         	ldrb	r1, [r0, #0x1f]
 8007590: 7fcd         	ldrb	r5, [r1, #0x1f]
 8007592: 7fd8         	ldrb	r0, [r3, #0x1f]
 8007594: 7fe1         	ldrb	r1, [r4, #0x1f]
 8007596: 7fe9         	ldrb	r1, [r5, #0x1f]
 8007598: 7ff0         	ldrb	r0, [r6, #0x1f]
 800759a: 7ff5         	ldrb	r5, [r6, #0x1f]
 800759c: 7ff9         	ldrb	r1, [r7, #0x1f]
 800759e: 7ffd         	ldrb	r5, [r7, #0x1f]
 80075a0: 7ffe         	ldrb	r6, [r7, #0x1f]
 80075a2: 0000         	movs	r0, r0
 80075a4: 5555         	strb	r5, [r2, r5]
 80075a6: 5555         	strb	r5, [r2, r5]
 80075a8: 5555         	strb	r5, [r2, r5]
 80075aa: 3fc5         	subs	r7, #0xc5
 80075ac: 6f7d         	ldr	r5, [r7, #0x74]
 80075ae: 03eb         	lsls	r3, r5, #0xf
 80075b0: d612         	bvs	0x80075d8 <firmware_image+0x75d8> @ imm = #0x24
 80075b2: bfd4         	ite	le
 80075b4: 4455         	addle	r5, r10
 80075b6: 0e88         	lsrgt	r0, r1, #0x1a
 80075b8: c155         	stm	r1!, {r0, r2, r4, r6}
 80075ba: 3fc9         	subs	r7, #0xc9
 80075bc: 8f3b         	ldrh	r3, [r7, #0x38]
 80075be: b568         	push	{r3, r5, r6, lr}
 80075c0: 8228         	strh	r0, [r5, #0x10]
 80075c2: bfa4         	itt	ge
 80075c4: b288         	uxthge	r0, r1
 80075c6: 7501         	strbge	r1, [r0, #0x14]
 80075c8: efe0 3f49    	<unknown>
 80075cc: f709 0dfd    	<unknown>
 80075d0: 3de1         	subs	r5, #0xe1
 80075d2: 3f02         	subs	r7, #0x2
 80075d4: 2d4b         	cmp	r5, #0x4b
 80075d6: 1c8a         	adds	r2, r1, #0x2
 80075d8: 3a27         	subs	r2, #0x27
 80075da: c003         	stm	r0!, {r0, r1}
 80075dc: 8ac8         	ldrh	r0, [r1, #0x16]
 80075de: 9c59         	ldr	r4, [sp, #0x164]
 80075e0: 2ae5         	cmp	r2, #0xe5
 80075e2: 4000         	ands	r0, r0
 80075e4: 0159         	lsls	r1, r3, #0x5
 80075e6: 1b8d         	subs	r5, r1, r6
 80075e8: 066c         	lsls	r4, r5, #0x19
 80075ea: bfe6         	itte	al                      @ unpredictable IT predicate sequence
 80075ec: 9282         	str	r2, [sp, #0x208]
 80075ee: b12e         	cbz	r6, 0x80075fc <firmware_image+0x75fc> @ imm = #0xa
 80075f0: bb4f         	cbnz	r7, 0x8007646 <firmware_image+0x7646> @ imm = #0x52
 80075f2: 0561         	lsls	r1, r4, #0x15
 80075f4: ac67         	add	r4, sp, #0x19c
 80075f6: 3fdd         	subs	r7, #0xdd
 80075f8: 2d18         	cmp	r5, #0x18
 80075fa: 5444         	strb	r4, [r0, r1]
 80075fc: 21fb         	movs	r1, #0xfb
 80075fe: 3fe9         	subs	r7, #0xe9
 8007600: f69b d281    	bl	0x72a2b06               @ imm = #-0xd64afe
 8007604: 730b         	strb	r3, [r1, #0xc]
 8007606: 3fef         	subs	r7, #0xef
 8007608: 2d18         	cmp	r5, #0x18
 800760a: 5444         	strb	r4, [r0, r1]
 800760c: 21fb         	movs	r1, #0xfb
 800760e: 3ff9         	subs	r7, #0xf9
 8007610: 65e2         	str	r2, [r4, #0x5c]
 8007612: 222f         	movs	r2, #0x2f
 8007614: 2b7f         	cmp	r3, #0x7f
 8007616: 3c7a         	subs	r4, #0x7a
 8007618: 5c07         	ldrb	r7, [r0, r0]
 800761a: 3314         	adds	r3, #0x14
 800761c: a626         	adr	r6, #152 <firmware_image+0x7646>
 800761e: 3c81         	subs	r4, #0x81
 8007620: cbbd         	ldm	r3, {r0, r2, r3, r4, r5, r7}
 8007622: 7af0         	ldrb	r0, [r6, #0xb]
 8007624: 0788         	lsls	r0, r1, #0x1e
 8007626: 3c70         	subs	r4, #0x70
 8007628: 5c07         	ldrb	r7, [r0, r0]
 800762a: 3314         	adds	r3, #0x14
 800762c: a626         	adr	r6, #152 <firmware_image+0x7656>
 800762e: 3c91         	subs	r4, #0x91
 8007630: ebc4 9998    	rsb	r9, r4, r8, lsr #6
 8007634: 9999         	ldr	r1, [sp, #0x264]
 8007636: bfc9         	itett	gt
 8007638: 1671         	asrgt	r1, r6, #0x19
 800763a: fe23 71c6    	cdp2le	p1, #0x2, c7, c3, c6, #0x6
 800763e: bfbc         	itt	lt
 8007640: 9a6d         	ldrlt	r2, [sp, #0x1b4]
 8007642: af74         	addlt	r7, sp, #0x1d0
 8007644: b0f2         	subgt	sp, #0x1c8
 8007646: bfb3         	iteet	lt
 8007648: fd9a 52de    	ldc2lt	p2, c5, [r10, #888]
 800764c: de2d         	udf	#0x2d
 800764e: bfad         	iteet	ge
 8007650: 6c2f         	ldrge	r7, [r5, #0x40]
 8007652: 2c6a         	cmplt	r4, #0x6a
 8007654: b444         	pushlt	{r2, r6}
 8007656: bfa2         	ittt	ge
 8007658: 550d         	strbge	r5, [r1, r4]
 800765a: 5555         	strbge	r5, [r2, r5]
 800765c: 5555         	strbge	r5, [r2, r5]
 800765e: 3fd5         	sublt	r7, #0xd5
 8007660: 83ff         	strh	r7, [r7, #0x1e]
 8007662: 9200         	str	r2, [sp]
 8007664: 4924         	ldr	r1, [pc, #0x90]         @ 0x80076f8 <firmware_image+0x76f8>
 8007666: 3fc2         	subs	r7, #0xc2
 8007668: 206e         	movs	r0, #0x6e
 800766a: c54c         	stm	r5!, {r2, r3, r6}
 800766c: 45cd         	cmp	sp, r9
 800766e: 3fb7         	subs	r7, #0xb7
 8007670: 3d51         	subs	r5, #0x51
 8007672: a0d0         	adr	r0, #832 <firmware_image+0x7746>
 8007674: 0d66         	lsrs	r6, r4, #0x15
 8007676: 3fb1         	subs	r7, #0xb1
 8007678: 0deb         	lsrs	r3, r5, #0x17
 800767a: 2476         	movs	r4, #0x76
 800767c: 7b4b         	ldrb	r3, [r1, #0xd]
 800767e: 3fa9         	subs	r7, #0xa9
 8007680: da11         	bge	0x80076a6 <firmware_image+0x76a6> @ imm = #0x22
 8007682: e322         	b	0x8007cca <firmware_image+0x7cca> @ imm = #0x644
 8007684: ad3a         	add	r5, sp, #0xe8
 8007686: 3f90         	subs	r7, #0x90
		...
 8007690: 76b8         	strb	r0, [r7, #0x1a]
 8007692: 0800         	lsrs	r0, r0, #0x20
 8007694: 0000         	movs	r0, r0
 8007696: 2000         	movs	r0, #0x0
 8007698: 0a00         	lsrs	r0, r0, #0x8
 800769a: 0800         	lsrs	r0, r0, #0x20
 800769c: 7708         	strb	r0, [r1, #0x1c]
 800769e: 0800         	lsrs	r0, r0, #0x20
 80076a0: 02d8         	lsls	r0, r3, #0xb
 80076a2: 2000         	movs	r0, #0x0
 80076a4: 07b8         	lsls	r0, r7, #0x1e
 80076a6: 0000         	movs	r0, r0
 80076a8: 63f4         	str	r4, [r6, #0x3c]
 80076aa: 0800         	lsrs	r0, r0, #0x20
 80076ac: 84d1         	strh	r1, [r2, #0x26]
 80076ae: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x8007938 <firmware_image+0x7938>
 80076b0: 6804         	ldr	r4, [r0]
 80076b2: 0109         	lsls	r1, r1, #0x4
 80076b4: 0302         	lsls	r2, r0, #0xc
 80076b6: 0604         	lsls	r4, r0, #0x18
 80076b8: 0807         	lsrs	r7, r0, #0x20
 80076ba: 0c09         	lsrs	r1, r1, #0x10
 80076bc: 1309         	asrs	r1, r1, #0xc
 80076be: 9118         	str	r1, [sp, #0x60]
 80076c0: 1a03         	subs	r3, r0, r0
 80076c2: 3f80         	subs	r7, #0x80
 80076c4: 1a09         	subs	r1, r1, r0
 80076c6: 411c         	asrs	r4, r3
 80076c8: 3c4d         	subs	r4, #0x4d
 80076ca: 3c0f         	subs	r4, #0xf
 80076cc: 4e0f         	ldr	r6, [pc, #0x3c]         @ 0x800770c <firmware_image+0x770c>
 80076ce: 0112         	lsls	r2, r2, #0x4
 80076d0: 1c03         	adds	r3, r0, #0x0
 80076d2: 0320         	lsls	r0, r4, #0xc
 80076d4: cd1e         	ldm	r5!, {r1, r2, r3, r4}
 80076d6: cccc         	ldm	r4!, {r2, r3, r6, r7}
 80076d8: a03e         	adr	r0, #248 <firmware_image+0x771a>
 80076da: 232c         	movs	r3, #0x2c
 80076dc: 06a4         	lsls	r4, r4, #0x1a
 80076de: 2832         	cmp	r0, #0x32
 80076e0: 3232         	adds	r2, #0x32
 80076e2: 14c2         	asrs	r2, r0, #0x13
 80076e4: 5c04         	ldrb	r4, [r0, r0]
 80076e6: 73c0         	strb	r0, [r0, #0xf]
 80076e8: 2945         	cmp	r1, #0x45
 80076ea: 01a2         	lsls	r2, r4, #0x6
 80076ec: 02f4         	lsls	r4, r6, #0xb
 80076ee: 7b17         	ldrb	r7, [r2, #0xc]
 80076f0: 2b02         	cmp	r3, #0x2
 80076f2: b220         	sxth	r0, r4
 80076f4: 0201         	lsls	r1, r0, #0x8
 80076f6: 9659         	str	r6, [sp, #0x164]
 80076f8: 8083         	strh	r3, [r0, #0x4]
 80076fa: 003f         	movs	r7, r7
 80076fc: ffff ffff    	<unknown>
 8007700: ffff ffff    	<unknown>
 8007704: ffff ffff    	<unknown>
 8007708: ffff ffff    	<unknown>
 800770c: ffff ffff    	<unknown>
 8007710: ffff ffff    	<unknown>
 8007714: ffff ffff    	<unknown>
 8007718: ffff ffff    	<unknown>
 800771c: ffff ffff    	<unknown>
 8007720: ffff ffff    	<unknown>
 8007724: ffff ffff    	<unknown>
 8007728: ffff ffff    	<unknown>
 800772c: ffff ffff    	<unknown>
 8007730: ffff ffff    	<unknown>
 8007734: ffff ffff    	<unknown>
 8007738: ffff ffff    	<unknown>
 800773c: ffff ffff    	<unknown>
 8007740: ffff ffff    	<unknown>
 8007744: ffff ffff    	<unknown>
 8007748: ffff ffff    	<unknown>
 800774c: ffff ffff    	<unknown>
 8007750: ffff ffff    	<unknown>
 8007754: ffff ffff    	<unknown>
 8007758: ffff ffff    	<unknown>
 800775c: ffff ffff    	<unknown>
 8007760: ffff ffff    	<unknown>
 8007764: ffff ffff    	<unknown>
 8007768: ffff ffff    	<unknown>
 800776c: ffff ffff    	<unknown>
 8007770: ffff ffff    	<unknown>
 8007774: ffff ffff    	<unknown>
 8007778: ffff ffff    	<unknown>
 800777c: ffff ffff    	<unknown>
 8007780: ffff ffff    	<unknown>
 8007784: ffff ffff    	<unknown>
 8007788: ffff ffff    	<unknown>
 800778c: ffff ffff    	<unknown>
 8007790: ffff ffff    	<unknown>
 8007794: ffff ffff    	<unknown>
 8007798: ffff ffff    	<unknown>
 800779c: ffff ffff    	<unknown>
 80077a0: ffff ffff    	<unknown>
 80077a4: ffff ffff    	<unknown>
 80077a8: ffff ffff    	<unknown>
 80077ac: ffff ffff    	<unknown>
 80077b0: ffff ffff    	<unknown>
 80077b4: ffff ffff    	<unknown>
 80077b8: ffff ffff    	<unknown>
 80077bc: ffff ffff    	<unknown>
 80077c0: ffff ffff    	<unknown>
 80077c4: ffff ffff    	<unknown>
 80077c8: ffff ffff    	<unknown>
 80077cc: ffff ffff    	<unknown>
 80077d0: ffff ffff    	<unknown>
 80077d4: ffff ffff    	<unknown>
 80077d8: ffff ffff    	<unknown>
 80077dc: ffff ffff    	<unknown>
 80077e0: ffff ffff    	<unknown>
 80077e4: ffff ffff    	<unknown>
 80077e8: ffff ffff    	<unknown>
 80077ec: ffff ffff    	<unknown>
 80077f0: ffff ffff    	<unknown>
 80077f4: ffff ffff    	<unknown>
 80077f8: ffff ffff    	<unknown>
 80077fc: ffff ffff    	<unknown>
 8007800: ffff ffff    	<unknown>
 8007804: ffff ffff    	<unknown>
 8007808: ffff ffff    	<unknown>
 800780c: ffff ffff    	<unknown>
 8007810: ffff ffff    	<unknown>
 8007814: ffff ffff    	<unknown>
 8007818: ffff ffff    	<unknown>
 800781c: ffff ffff    	<unknown>
 8007820: ffff ffff    	<unknown>
 8007824: ffff ffff    	<unknown>
 8007828: ffff ffff    	<unknown>
 800782c: ffff ffff    	<unknown>
 8007830: ffff ffff    	<unknown>
 8007834: ffff ffff    	<unknown>
 8007838: ffff ffff    	<unknown>
 800783c: ffff ffff    	<unknown>
 8007840: ffff ffff    	<unknown>
 8007844: ffff ffff    	<unknown>
 8007848: ffff ffff    	<unknown>
 800784c: ffff ffff    	<unknown>
 8007850: ffff ffff    	<unknown>
 8007854: ffff ffff    	<unknown>
 8007858: ffff ffff    	<unknown>
 800785c: ffff ffff    	<unknown>
 8007860: ffff ffff    	<unknown>
 8007864: ffff ffff    	<unknown>
 8007868: ffff ffff    	<unknown>
 800786c: ffff ffff    	<unknown>
 8007870: ffff ffff    	<unknown>
 8007874: ffff ffff    	<unknown>
 8007878: ffff ffff    	<unknown>
 800787c: ffff ffff    	<unknown>
 8007880: ffff ffff    	<unknown>
 8007884: ffff ffff    	<unknown>
 8007888: ffff ffff    	<unknown>
 800788c: ffff ffff    	<unknown>
 8007890: ffff ffff    	<unknown>
 8007894: ffff ffff    	<unknown>
 8007898: ffff ffff    	<unknown>
 800789c: ffff ffff    	<unknown>
 80078a0: ffff ffff    	<unknown>
 80078a4: ffff ffff    	<unknown>
 80078a8: ffff ffff    	<unknown>
 80078ac: ffff ffff    	<unknown>
 80078b0: ffff ffff    	<unknown>
 80078b4: ffff ffff    	<unknown>
 80078b8: ffff ffff    	<unknown>
 80078bc: ffff ffff    	<unknown>
 80078c0: ffff ffff    	<unknown>
 80078c4: ffff ffff    	<unknown>
 80078c8: ffff ffff    	<unknown>
 80078cc: ffff ffff    	<unknown>
 80078d0: ffff ffff    	<unknown>
 80078d4: ffff ffff    	<unknown>
 80078d8: ffff ffff    	<unknown>
 80078dc: ffff ffff    	<unknown>
 80078e0: ffff ffff    	<unknown>
 80078e4: ffff ffff    	<unknown>
 80078e8: ffff ffff    	<unknown>
 80078ec: ffff ffff    	<unknown>
 80078f0: ffff ffff    	<unknown>
 80078f4: ffff ffff    	<unknown>
 80078f8: ffff ffff    	<unknown>
 80078fc: ffff ffff    	<unknown>
 8007900: ffff ffff    	<unknown>
 8007904: ffff ffff    	<unknown>
 8007908: ffff ffff    	<unknown>
 800790c: ffff ffff    	<unknown>
 8007910: ffff ffff    	<unknown>
 8007914: ffff ffff    	<unknown>
 8007918: ffff ffff    	<unknown>
 800791c: ffff ffff    	<unknown>
 8007920: ffff ffff    	<unknown>
 8007924: ffff ffff    	<unknown>
 8007928: ffff ffff    	<unknown>
 800792c: ffff ffff    	<unknown>
 8007930: ffff ffff    	<unknown>
 8007934: ffff ffff    	<unknown>
 8007938: ffff ffff    	<unknown>
 800793c: ffff ffff    	<unknown>
 8007940: ffff ffff    	<unknown>
 8007944: ffff ffff    	<unknown>
 8007948: ffff ffff    	<unknown>
 800794c: ffff ffff    	<unknown>
 8007950: ffff ffff    	<unknown>
 8007954: ffff ffff    	<unknown>
 8007958: ffff ffff    	<unknown>
 800795c: ffff ffff    	<unknown>
 8007960: ffff ffff    	<unknown>
 8007964: ffff ffff    	<unknown>
 8007968: ffff ffff    	<unknown>
 800796c: ffff ffff    	<unknown>
 8007970: ffff ffff    	<unknown>
 8007974: ffff ffff    	<unknown>
 8007978: ffff ffff    	<unknown>
 800797c: ffff ffff    	<unknown>
 8007980: ffff ffff    	<unknown>
 8007984: ffff ffff    	<unknown>
 8007988: ffff ffff    	<unknown>
 800798c: ffff ffff    	<unknown>
 8007990: ffff ffff    	<unknown>
 8007994: ffff ffff    	<unknown>
 8007998: ffff ffff    	<unknown>
 800799c: ffff ffff    	<unknown>
 80079a0: ffff ffff    	<unknown>
 80079a4: ffff ffff    	<unknown>
 80079a8: ffff ffff    	<unknown>
 80079ac: ffff ffff    	<unknown>
 80079b0: ffff ffff    	<unknown>
 80079b4: ffff ffff    	<unknown>
 80079b8: ffff ffff    	<unknown>
 80079bc: ffff ffff    	<unknown>
 80079c0: ffff ffff    	<unknown>
 80079c4: ffff ffff    	<unknown>
 80079c8: ffff ffff    	<unknown>
 80079cc: ffff ffff    	<unknown>
 80079d0: ffff ffff    	<unknown>
 80079d4: ffff ffff    	<unknown>
 80079d8: ffff ffff    	<unknown>
 80079dc: ffff ffff    	<unknown>
 80079e0: ffff ffff    	<unknown>
 80079e4: ffff ffff    	<unknown>
 80079e8: ffff ffff    	<unknown>
 80079ec: ffff ffff    	<unknown>
 80079f0: ffff ffff    	<unknown>
 80079f4: ffff ffff    	<unknown>
 80079f8: ffff ffff    	<unknown>
 80079fc: ffff ffff    	<unknown>
 8007a00: ffff ffff    	<unknown>
 8007a04: ffff ffff    	<unknown>
 8007a08: ffff ffff    	<unknown>
 8007a0c: ffff ffff    	<unknown>
 8007a10: ffff ffff    	<unknown>
 8007a14: ffff ffff    	<unknown>
 8007a18: ffff ffff    	<unknown>
 8007a1c: ffff ffff    	<unknown>
 8007a20: ffff ffff    	<unknown>
 8007a24: ffff ffff    	<unknown>
 8007a28: ffff ffff    	<unknown>
 8007a2c: ffff ffff    	<unknown>
 8007a30: ffff ffff    	<unknown>
 8007a34: ffff ffff    	<unknown>
 8007a38: ffff ffff    	<unknown>
 8007a3c: ffff ffff    	<unknown>
 8007a40: ffff ffff    	<unknown>
 8007a44: ffff ffff    	<unknown>
 8007a48: ffff ffff    	<unknown>
 8007a4c: ffff ffff    	<unknown>
 8007a50: ffff ffff    	<unknown>
 8007a54: ffff ffff    	<unknown>
 8007a58: ffff ffff    	<unknown>
 8007a5c: ffff ffff    	<unknown>
 8007a60: ffff ffff    	<unknown>
 8007a64: ffff ffff    	<unknown>
 8007a68: ffff ffff    	<unknown>
 8007a6c: ffff ffff    	<unknown>
 8007a70: ffff ffff    	<unknown>
 8007a74: ffff ffff    	<unknown>
 8007a78: ffff ffff    	<unknown>
 8007a7c: ffff ffff    	<unknown>
 8007a80: ffff ffff    	<unknown>
 8007a84: ffff ffff    	<unknown>
 8007a88: ffff ffff    	<unknown>
 8007a8c: ffff ffff    	<unknown>
 8007a90: ffff ffff    	<unknown>
 8007a94: ffff ffff    	<unknown>
 8007a98: ffff ffff    	<unknown>
 8007a9c: ffff ffff    	<unknown>
 8007aa0: ffff ffff    	<unknown>
 8007aa4: ffff ffff    	<unknown>
 8007aa8: ffff ffff    	<unknown>
 8007aac: ffff ffff    	<unknown>
 8007ab0: ffff ffff    	<unknown>
 8007ab4: ffff ffff    	<unknown>
 8007ab8: ffff ffff    	<unknown>
 8007abc: ffff ffff    	<unknown>
 8007ac0: ffff ffff    	<unknown>
 8007ac4: ffff ffff    	<unknown>
 8007ac8: ffff ffff    	<unknown>
 8007acc: ffff ffff    	<unknown>
 8007ad0: ffff ffff    	<unknown>
 8007ad4: ffff ffff    	<unknown>
 8007ad8: ffff ffff    	<unknown>
 8007adc: ffff ffff    	<unknown>
 8007ae0: ffff ffff    	<unknown>
 8007ae4: ffff ffff    	<unknown>
 8007ae8: ffff ffff    	<unknown>
 8007aec: ffff ffff    	<unknown>
 8007af0: ffff ffff    	<unknown>
 8007af4: ffff ffff    	<unknown>
 8007af8: ffff ffff    	<unknown>
 8007afc: ffff ffff    	<unknown>
 8007b00: ffff ffff    	<unknown>
 8007b04: ffff ffff    	<unknown>
 8007b08: ffff ffff    	<unknown>
 8007b0c: ffff ffff    	<unknown>
 8007b10: ffff ffff    	<unknown>
 8007b14: ffff ffff    	<unknown>
 8007b18: ffff ffff    	<unknown>
 8007b1c: ffff ffff    	<unknown>
 8007b20: ffff ffff    	<unknown>
 8007b24: ffff ffff    	<unknown>
 8007b28: ffff ffff    	<unknown>
 8007b2c: ffff ffff    	<unknown>
 8007b30: ffff ffff    	<unknown>
 8007b34: ffff ffff    	<unknown>
 8007b38: ffff ffff    	<unknown>
 8007b3c: ffff ffff    	<unknown>
 8007b40: ffff ffff    	<unknown>
 8007b44: ffff ffff    	<unknown>
 8007b48: ffff ffff    	<unknown>
 8007b4c: ffff ffff    	<unknown>
 8007b50: ffff ffff    	<unknown>
 8007b54: ffff ffff    	<unknown>
 8007b58: ffff ffff    	<unknown>
 8007b5c: ffff ffff    	<unknown>
 8007b60: ffff ffff    	<unknown>
 8007b64: ffff ffff    	<unknown>
 8007b68: ffff ffff    	<unknown>
 8007b6c: ffff ffff    	<unknown>
 8007b70: ffff ffff    	<unknown>
 8007b74: ffff ffff    	<unknown>
 8007b78: ffff ffff    	<unknown>
 8007b7c: ffff ffff    	<unknown>
 8007b80: ffff ffff    	<unknown>
 8007b84: ffff ffff    	<unknown>
 8007b88: ffff ffff    	<unknown>
 8007b8c: ffff ffff    	<unknown>
 8007b90: ffff ffff    	<unknown>
 8007b94: ffff ffff    	<unknown>
 8007b98: ffff ffff    	<unknown>
 8007b9c: ffff ffff    	<unknown>
 8007ba0: ffff ffff    	<unknown>
 8007ba4: ffff ffff    	<unknown>
 8007ba8: ffff ffff    	<unknown>
 8007bac: ffff ffff    	<unknown>
 8007bb0: ffff ffff    	<unknown>
 8007bb4: ffff ffff    	<unknown>
 8007bb8: ffff ffff    	<unknown>
 8007bbc: ffff ffff    	<unknown>
 8007bc0: ffff ffff    	<unknown>
 8007bc4: ffff ffff    	<unknown>
 8007bc8: ffff ffff    	<unknown>
 8007bcc: ffff ffff    	<unknown>
 8007bd0: ffff ffff    	<unknown>
 8007bd4: ffff ffff    	<unknown>
 8007bd8: ffff ffff    	<unknown>
 8007bdc: ffff ffff    	<unknown>
 8007be0: ffff ffff    	<unknown>
 8007be4: ffff ffff    	<unknown>
 8007be8: ffff ffff    	<unknown>
 8007bec: ffff ffff    	<unknown>
 8007bf0: ffff ffff    	<unknown>
 8007bf4: ffff ffff    	<unknown>
 8007bf8: ffff ffff    	<unknown>
 8007bfc: 002e         	movs	r6, r5
 8007bfe: ff73 002e    	<unknown>
 8007c02: ff73 20d0    	<unknown>
 8007c06: ffff ffe8    	<unknown>
 8007c0a: ffb5 ffde    	<unknown>
 8007c0e: ff9d ffff    	<unknown>
 8007c12: ffff ffff    	<unknown>
 8007c16: ffff ffff    	<unknown>
 8007c1a: ffff ffff    	<unknown>
 8007c1e: ffff ffff    	<unknown>
 8007c22: ffff ffff    	<unknown>
 8007c26: ffff ffff    	<unknown>
 8007c2a: ffff ffff    	<unknown>
 8007c2e: ffff ffff    	<unknown>
 8007c32: ffff ffff    	<unknown>
 8007c36: ffff ffff    	<unknown>
 8007c3a: ffff ffff    	<unknown>
 8007c3e: ffff ffff    	<unknown>
 8007c42: ffff ffff    	<unknown>
 8007c46: ffff ffff    	<unknown>
 8007c4a: ffff ffff    	<unknown>
 8007c4e: ffff ffff    	<unknown>
 8007c52: ffff ffff    	<unknown>
 8007c56: ffff ffff    	<unknown>
 8007c5a: ffff ffff    	<unknown>
 8007c5e: ffff ffff    	<unknown>
 8007c62: ffff ffff    	<unknown>
 8007c66: ffff ffff    	<unknown>
 8007c6a: ffff ffff    	<unknown>
 8007c6e: ffff ffff    	<unknown>
 8007c72: ffff ffff    	<unknown>
 8007c76: ffff ffff    	<unknown>
 8007c7a: ffff ffff    	<unknown>
 8007c7e: ffff ffff    	<unknown>
 8007c82: ffff ffff    	<unknown>
 8007c86: ffff ffff    	<unknown>
 8007c8a: ffff ffff    	<unknown>
 8007c8e: ffff ffff    	<unknown>
 8007c92: ffff ffff    	<unknown>
 8007c96: ffff ffff    	<unknown>
 8007c9a: ffff ffff    	<unknown>
 8007c9e: ffff ffff    	<unknown>
 8007ca2: ffff ffff    	<unknown>
 8007ca6: ffff ffff    	<unknown>
 8007caa: ffff ffff    	<unknown>
 8007cae: ffff ffff    	<unknown>
 8007cb2: ffff ffff    	<unknown>
 8007cb6: ffff ffff    	<unknown>
 8007cba: ffff ffff    	<unknown>
 8007cbe: ffff ffff    	<unknown>
 8007cc2: ffff ffff    	<unknown>
 8007cc6: ffff ffff    	<unknown>
 8007cca: ffff ffff    	<unknown>
 8007cce: ffff ffff    	<unknown>
 8007cd2: ffff ffff    	<unknown>
 8007cd6: ffff ffff    	<unknown>
 8007cda: ffff ffff    	<unknown>
 8007cde: ffff ffff    	<unknown>
 8007ce2: ffff ffff    	<unknown>
 8007ce6: ffff ffff    	<unknown>
 8007cea: ffff ffff    	<unknown>
 8007cee: ffff ffff    	<unknown>
 8007cf2: ffff ffff    	<unknown>
 8007cf6: ffff ffff    	<unknown>
 8007cfa: ffff ffff    	<unknown>
 8007cfe: ffff ffff    	<unknown>
 8007d02: ffff ffff    	<unknown>
 8007d06: ffff ffff    	<unknown>
 8007d0a: ffff ffff    	<unknown>
 8007d0e: ffff ffff    	<unknown>
 8007d12: ffff ffff    	<unknown>
 8007d16: ffff ffff    	<unknown>
 8007d1a: ffff ffff    	<unknown>
 8007d1e: ffff ffff    	<unknown>
 8007d22: ffff ffff    	<unknown>
 8007d26: ffff ffff    	<unknown>
 8007d2a: ffff ffff    	<unknown>
 8007d2e: ffff ffff    	<unknown>
 8007d32: ffff ffff    	<unknown>
 8007d36: ffff ffff    	<unknown>
 8007d3a: ffff ffff    	<unknown>
 8007d3e: ffff ffff    	<unknown>
 8007d42: ffff ffff    	<unknown>
 8007d46: ffff ffff    	<unknown>
 8007d4a: ffff ffff    	<unknown>
 8007d4e: ffff ffff    	<unknown>
 8007d52: ffff ffff    	<unknown>
 8007d56: ffff ffff    	<unknown>
 8007d5a: ffff ffff    	<unknown>
 8007d5e: ffff ffff    	<unknown>
 8007d62: ffff ffff    	<unknown>
 8007d66: ffff ffff    	<unknown>
 8007d6a: ffff ffff    	<unknown>
 8007d6e: ffff ffff    	<unknown>
 8007d72: ffff ffff    	<unknown>
 8007d76: ffff ffff    	<unknown>
 8007d7a: ffff ffff    	<unknown>
 8007d7e: ffff ffff    	<unknown>
 8007d82: ffff ffff    	<unknown>
 8007d86: ffff ffff    	<unknown>
 8007d8a: ffff ffff    	<unknown>
 8007d8e: ffff ffff    	<unknown>
 8007d92: ffff ffff    	<unknown>
 8007d96: ffff ffff    	<unknown>
 8007d9a: ffff ffff    	<unknown>
 8007d9e: ffff ffff    	<unknown>
 8007da2: ffff ffff    	<unknown>
 8007da6: ffff ffff    	<unknown>
 8007daa: ffff ffff    	<unknown>
 8007dae: ffff ffff    	<unknown>
 8007db2: ffff ffff    	<unknown>
 8007db6: ffff ffff    	<unknown>
 8007dba: ffff ffff    	<unknown>
 8007dbe: ffff ffff    	<unknown>
 8007dc2: ffff ffff    	<unknown>
 8007dc6: ffff ffff    	<unknown>
 8007dca: ffff ffff    	<unknown>
 8007dce: ffff ffff    	<unknown>
 8007dd2: ffff ffff    	<unknown>
 8007dd6: ffff ffff    	<unknown>
 8007dda: ffff ffff    	<unknown>
 8007dde: ffff ffff    	<unknown>
 8007de2: ffff ffff    	<unknown>
 8007de6: ffff ffff    	<unknown>
 8007dea: ffff ffff    	<unknown>
 8007dee: ffff ffff    	<unknown>
 8007df2: ffff ffff    	<unknown>
 8007df6: ffff ffff    	<unknown>
 8007dfa: ffff ffff    	<unknown>
 8007dfe: ffff ffff    	<unknown>
 8007e02: ffff ffff    	<unknown>
 8007e06: ffff ffff    	<unknown>
 8007e0a: ffff ffff    	<unknown>
 8007e0e: ffff ffff    	<unknown>
 8007e12: ffff ffff    	<unknown>
 8007e16: ffff ffff    	<unknown>
 8007e1a: ffff ffff    	<unknown>
 8007e1e: ffff ffff    	<unknown>
 8007e22: ffff ffff    	<unknown>
 8007e26: ffff ffff    	<unknown>
 8007e2a: ffff ffff    	<unknown>
 8007e2e: ffff ffff    	<unknown>
 8007e32: ffff ffff    	<unknown>
 8007e36: ffff ffff    	<unknown>
 8007e3a: ffff ffff    	<unknown>
 8007e3e: ffff ffff    	<unknown>
 8007e42: ffff ffff    	<unknown>
 8007e46: ffff ffff    	<unknown>
 8007e4a: ffff ffff    	<unknown>
 8007e4e: ffff ffff    	<unknown>
 8007e52: ffff ffff    	<unknown>
 8007e56: ffff ffff    	<unknown>
 8007e5a: ffff ffff    	<unknown>
 8007e5e: ffff ffff    	<unknown>
 8007e62: ffff ffff    	<unknown>
 8007e66: ffff ffff    	<unknown>
 8007e6a: ffff ffff    	<unknown>
 8007e6e: ffff ffff    	<unknown>
 8007e72: ffff ffff    	<unknown>
 8007e76: ffff ffff    	<unknown>
 8007e7a: ffff ffff    	<unknown>
 8007e7e: ffff ffff    	<unknown>
 8007e82: ffff ffff    	<unknown>
 8007e86: ffff ffff    	<unknown>
 8007e8a: ffff ffff    	<unknown>
 8007e8e: ffff ffff    	<unknown>
 8007e92: ffff ffff    	<unknown>
 8007e96: ffff ffff    	<unknown>
 8007e9a: ffff ffff    	<unknown>
 8007e9e: ffff ffff    	<unknown>
 8007ea2: ffff ffff    	<unknown>
 8007ea6: ffff ffff    	<unknown>
 8007eaa: ffff ffff    	<unknown>
 8007eae: ffff ffff    	<unknown>
 8007eb2: ffff ffff    	<unknown>
 8007eb6: ffff ffff    	<unknown>
 8007eba: ffff ffff    	<unknown>
 8007ebe: ffff ffff    	<unknown>
 8007ec2: ffff ffff    	<unknown>
 8007ec6: ffff ffff    	<unknown>
 8007eca: ffff ffff    	<unknown>
 8007ece: ffff ffff    	<unknown>
 8007ed2: ffff ffff    	<unknown>
 8007ed6: ffff ffff    	<unknown>
 8007eda: ffff ffff    	<unknown>
 8007ede: ffff ffff    	<unknown>
 8007ee2: ffff ffff    	<unknown>
 8007ee6: ffff ffff    	<unknown>
 8007eea: ffff ffff    	<unknown>
 8007eee: ffff ffff    	<unknown>
 8007ef2: ffff ffff    	<unknown>
 8007ef6: ffff ffff    	<unknown>
 8007efa: ffff ffff    	<unknown>
 8007efe: ffff ffff    	<unknown>
 8007f02: ffff ffff    	<unknown>
 8007f06: ffff ffff    	<unknown>
 8007f0a: ffff ffff    	<unknown>
 8007f0e: ffff ffff    	<unknown>
 8007f12: ffff ffff    	<unknown>
 8007f16: ffff ffff    	<unknown>
 8007f1a: ffff ffff    	<unknown>
 8007f1e: ffff ffff    	<unknown>
 8007f22: ffff ffff    	<unknown>
 8007f26: ffff ffff    	<unknown>
 8007f2a: ffff ffff    	<unknown>
 8007f2e: ffff ffff    	<unknown>
 8007f32: ffff ffff    	<unknown>
 8007f36: ffff ffff    	<unknown>
 8007f3a: ffff ffff    	<unknown>
 8007f3e: ffff ffff    	<unknown>
 8007f42: ffff ffff    	<unknown>
 8007f46: ffff ffff    	<unknown>
 8007f4a: ffff ffff    	<unknown>
 8007f4e: ffff ffff    	<unknown>
 8007f52: ffff ffff    	<unknown>
 8007f56: ffff ffff    	<unknown>
 8007f5a: ffff ffff    	<unknown>
 8007f5e: ffff ffff    	<unknown>
 8007f62: ffff ffff    	<unknown>
 8007f66: ffff ffff    	<unknown>
 8007f6a: ffff ffff    	<unknown>
 8007f6e: ffff ffff    	<unknown>
 8007f72: ffff ffff    	<unknown>
 8007f76: ffff ffff    	<unknown>
 8007f7a: ffff ffff    	<unknown>
 8007f7e: ffff ffff    	<unknown>
 8007f82: ffff ffff    	<unknown>
 8007f86: ffff ffff    	<unknown>
 8007f8a: ffff ffff    	<unknown>
 8007f8e: ffff ffff    	<unknown>
 8007f92: ffff ffff    	<unknown>
 8007f96: ffff ffff    	<unknown>
 8007f9a: ffff ffff    	<unknown>
 8007f9e: ffff ffff    	<unknown>
 8007fa2: ffff ffff    	<unknown>
 8007fa6: ffff ffff    	<unknown>
 8007faa: ffff ffff    	<unknown>
 8007fae: ffff ffff    	<unknown>
 8007fb2: ffff ffff    	<unknown>
 8007fb6: ffff ffff    	<unknown>
 8007fba: ffff ffff    	<unknown>
 8007fbe: ffff ffff    	<unknown>
 8007fc2: ffff ffff    	<unknown>
 8007fc6: ffff ffff    	<unknown>
 8007fca: ffff ffff    	<unknown>
 8007fce: ffff ffff    	<unknown>
 8007fd2: ffff ffff    	<unknown>
 8007fd6: ffff ffff    	<unknown>
 8007fda: ffff ffff    	<unknown>
 8007fde: ffff ffff    	<unknown>
 8007fe2: ffff ffff    	<unknown>
 8007fe6: ffff ffff    	<unknown>
 8007fea: ffff ffff    	<unknown>
 8007fee: ffff ffff    	<unknown>
 8007ff2: ffff ffff    	<unknown>
 8007ff6: ffff ffff    	<unknown>
 8007ffa: ffff ffff    	<unknown>
 8007ffe: ffff ffff    	<unknown>
