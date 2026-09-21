; GD32F130C8 factory firmware - Controller 2
; Source: oriFW2.bin
; Architecture: ARM Cortex-M3 / Thumb-2
; Flash base: 0x08000000
; Reset vector: 0x08000171 -> code begins at 0x08000170
; NOTE: This is a linear disassembly. Embedded literal/data tables may decode as instructions.


/mnt/data/controller2.elf:	file format elf32-littlearm

Disassembly of section .text:

08000000 <firmware_image>:
 8000170: 4806         	ldr	r0, [pc, #0x18]         @ 0x800018c <firmware_image+0x18c>
 8000172: 4780         	blx	r0
 8000174: 4806         	ldr	r0, [pc, #0x18]         @ 0x8000190 <firmware_image+0x190>
 8000176: 4700         	bx	r0
 8000178: e7fe         	b	0x8000178 <firmware_image+0x178> @ imm = #-0x4
 800017a: e7fe         	b	0x800017a <firmware_image+0x17a> @ imm = #-0x4
 800017c: e7fe         	b	0x800017c <firmware_image+0x17c> @ imm = #-0x4
 800017e: e7fe         	b	0x800017e <firmware_image+0x17e> @ imm = #-0x4
 8000180: e7fe         	b	0x8000180 <firmware_image+0x180> @ imm = #-0x4
 8000182: e7fe         	b	0x8000182 <firmware_image+0x182> @ imm = #-0x4
 8000184: e7fe         	b	0x8000184 <firmware_image+0x184> @ imm = #-0x4
 8000186: e7fe         	b	0x8000186 <firmware_image+0x186> @ imm = #-0x4
 8000188: e7fe         	b	0x8000188 <firmware_image+0x188> @ imm = #-0x4
 800018a: e7fe         	b	0x800018a <firmware_image+0x18a> @ imm = #-0x4
 800018c: 5425         	strb	r5, [r4, r0]
 800018e: 0800         	lsrs	r0, r0, #0x20
 8000190: 015b         	lsls	r3, r3, #0x5
 8000192: 0800         	lsrs	r0, r0, #0x20
 8000194: b4f0         	push	{r4, r5, r6, r7}
 8000196: ea80 0201    	eor.w	r2, r0, r1
 800019a: 0fd4         	lsrs	r4, r2, #0x1f
 800019c: 0042         	lsls	r2, r0, #0x1
 800019e: ebb2 0f41    	cmp.w	r2, r1, lsl #1
 80001a2: d202         	bhs	0x80001aa <firmware_image+0x1aa> @ imm = #0x4
 80001a4: 4602         	mov	r2, r0
 80001a6: 4608         	mov	r0, r1
 80001a8: 4611         	mov	r1, r2
 80001aa: 004a         	lsls	r2, r1, #0x1
 80001ac: d042         	beq	0x8000234 <firmware_image+0x234> @ imm = #0x84
 80001ae: 0dc3         	lsrs	r3, r0, #0x17
 80001b0: b2dd         	uxtb	r5, r3
 80001b2: f3c1 52c7    	ubfx	r2, r1, #0x17, #0x8
 80001b6: 1aad         	subs	r5, r5, r2
 80001b8: 2d20         	cmp	r5, #0x20
 80001ba: da35         	bge	0x8000228 <firmware_image+0x228> @ imm = #0x6a
 80001bc: f3c1 0116    	ubfx	r1, r1, #0x0, #0x17
 80001c0: f441 0200    	orr	r2, r1, #0x800000
 80001c4: b104         	cbz	r4, 0x80001c8 <firmware_image+0x1c8> @ imm = #0x0
 80001c6: 4252         	rsbs	r2, r2, #0
 80001c8: f1c5 0620    	rsb.w	r6, r5, #0x20
 80001cc: fa02 f106    	lsl.w	r1, r2, r6
 80001d0: 412a         	asrs	r2, r5
 80001d2: 4410         	add	r0, r2
 80001d4: ebb3 5fd0    	cmp.w	r3, r0, lsr #23
 80001d8: d023         	beq	0x8000222 <firmware_image+0x222> @ imm = #0x46
 80001da: b1c4         	cbz	r4, 0x800020e <firmware_image+0x20e> @ imm = #0x30
 80001dc: 2d01         	cmp	r5, #0x1
 80001de: eba0 50c3    	sub.w	r0, r0, r3, lsl #23
 80001e2: dc09         	bgt	0x80001f8 <firmware_image+0x1f8> @ imm = #0x12
 80001e4: bcf0         	pop	{r4, r5, r6, r7}
 80001e6: f04f 4200    	mov.w	r2, #0x80000000
 80001ea: ea02 52c3    	and.w	r2, r2, r3, lsl #23
 80001ee: b2db         	uxtb	r3, r3
 80001f0: f500 0000    	add.w	r0, r0, #0x800000
 80001f4: f000 bafe    	b.w	0x80007f4 <firmware_image+0x7f4> @ imm = #0x5fc
 80001f8: 0040         	lsls	r0, r0, #0x1
 80001fa: f100 7080    	add.w	r0, r0, #0x1000000
 80001fe: eb00 50c3    	add.w	r0, r0, r3, lsl #23
 8000202: f1a0 7080    	sub.w	r0, r0, #0x1000000
 8000206: ea40 70d1    	orr.w	r0, r0, r1, lsr #31
 800020a: 0049         	lsls	r1, r1, #0x1
 800020c: e009         	b	0x8000222 <firmware_image+0x222> @ imm = #0x12
 800020e: 0849         	lsrs	r1, r1, #0x1
 8000210: ea41 71c0    	orr.w	r1, r1, r0, lsl #31
 8000214: eba0 50c3    	sub.w	r0, r0, r3, lsl #23
 8000218: f500 0000    	add.w	r0, r0, #0x800000
 800021c: 0840         	lsrs	r0, r0, #0x1
 800021e: eb00 50c3    	add.w	r0, r0, r3, lsl #23
 8000222: bcf0         	pop	{r4, r5, r6, r7}
 8000224: f000 badd    	b.w	0x80007e2 <firmware_image+0x7e2> @ imm = #0x5ba
 8000228: 4261         	rsbs	r1, r4, #0
 800022a: 2201         	movs	r2, #0x1
 800022c: eb02 0141    	add.w	r1, r2, r1, lsl #1
 8000230: 1b00         	subs	r0, r0, r4
 8000232: e7f6         	b	0x8000222 <firmware_image+0x222> @ imm = #-0x14
 8000234: bcf0         	pop	{r4, r5, r6, r7}
 8000236: 4770         	bx	lr
 8000238: f081 4100    	eor	r1, r1, #0x80000000
 800023c: e7aa         	b	0x8000194 <firmware_image+0x194> @ imm = #-0xac
 800023e: f080 4000    	eor	r0, r0, #0x80000000
 8000242: e7a7         	b	0x8000194 <firmware_image+0x194> @ imm = #-0xb2
 8000244: ea80 0201    	eor.w	r2, r0, r1
 8000248: b510         	push	{r4, lr}
 800024a: f002 4300    	and	r3, r2, #0x80000000
 800024e: 0040         	lsls	r0, r0, #0x1
 8000250: d022         	beq	0x8000298 <firmware_image+0x298> @ imm = #0x44
 8000252: 004a         	lsls	r2, r1, #0x1
 8000254: d01f         	beq	0x8000296 <firmware_image+0x296> @ imm = #0x3e
 8000256: 0e01         	lsrs	r1, r0, #0x18
 8000258: eb01 6112    	add.w	r1, r1, r2, lsr #24
 800025c: f3c0 0056    	ubfx	r0, r0, #0x1, #0x17
 8000260: f3c2 0256    	ubfx	r2, r2, #0x1, #0x17
 8000264: f440 0000    	orr	r0, r0, #0x800000
 8000268: f442 0200    	orr	r2, r2, #0x800000
 800026c: fba0 2002    	umull	r2, r0, r0, r2
 8000270: 0400         	lsls	r0, r0, #0x10
 8000272: 397f         	subs	r1, #0x7f
 8000274: 0414         	lsls	r4, r2, #0x10
 8000276: d000         	beq	0x800027a <firmware_image+0x27a> @ imm = #0x0
 8000278: 1c40         	adds	r0, r0, #0x1
 800027a: ea50 4012    	orrs.w	r0, r0, r2, lsr #16
 800027e: d401         	bmi	0x8000284 <firmware_image+0x284> @ imm = #0x2
 8000280: 0040         	lsls	r0, r0, #0x1
 8000282: 1e49         	subs	r1, r1, #0x1
 8000284: b2c2         	uxtb	r2, r0
 8000286: 060c         	lsls	r4, r1, #0x18
 8000288: eb04 10d0    	add.w	r0, r4, r0, lsr #7
 800028c: 1c40         	adds	r0, r0, #0x1
 800028e: 0840         	lsrs	r0, r0, #0x1
 8000290: 2a80         	cmp	r2, #0x80
 8000292: d002         	beq	0x800029a <firmware_image+0x29a> @ imm = #0x4
 8000294: e003         	b	0x800029e <firmware_image+0x29e> @ imm = #0x6
 8000296: 2000         	movs	r0, #0x0
 8000298: bd10         	pop	{r4, pc}
 800029a: f020 0001    	bic	r0, r0, #0x1
 800029e: 2900         	cmp	r1, #0x0
 80002a0: da00         	bge	0x80002a4 <firmware_image+0x2a4> @ imm = #0x0
 80002a2: 2000         	movs	r0, #0x0
 80002a4: 4318         	orrs	r0, r3
 80002a6: bd10         	pop	{r4, pc}
 80002a8: b430         	push	{r4, r5}
 80002aa: ea80 0201    	eor.w	r2, r0, r1
 80002ae: f002 4500    	and	r5, r2, #0x80000000
 80002b2: f030 4200    	bics	r2, r0, #0x80000000
 80002b6: f021 4000    	bic	r0, r1, #0x80000000
 80002ba: d013         	beq	0x80002e4 <firmware_image+0x2e4> @ imm = #0x26
 80002bc: b190         	cbz	r0, 0x80002e4 <firmware_image+0x2e4> @ imm = #0x24
 80002be: 0dc3         	lsrs	r3, r0, #0x17
 80002c0: 0dd4         	lsrs	r4, r2, #0x17
 80002c2: f3c2 0116    	ubfx	r1, r2, #0x0, #0x17
 80002c6: f3c0 0016    	ubfx	r0, r0, #0x0, #0x17
 80002ca: 1ae4         	subs	r4, r4, r3
 80002cc: f441 0100    	orr	r1, r1, #0x800000
 80002d0: f440 0200    	orr	r2, r0, #0x800000
 80002d4: 347d         	adds	r4, #0x7d
 80002d6: 4291         	cmp	r1, r2
 80002d8: d301         	blo	0x80002de <firmware_image+0x2de> @ imm = #0x2
 80002da: 1c64         	adds	r4, r4, #0x1
 80002dc: e000         	b	0x80002e0 <firmware_image+0x2e0> @ imm = #0x0
 80002de: 0049         	lsls	r1, r1, #0x1
 80002e0: 2c00         	cmp	r4, #0x0
 80002e2: da02         	bge	0x80002ea <firmware_image+0x2ea> @ imm = #0x4
 80002e4: bc30         	pop	{r4, r5}
 80002e6: 2000         	movs	r0, #0x0
 80002e8: 4770         	bx	lr
 80002ea: f44f 0000    	mov.w	r0, #0x800000
 80002ee: 2300         	movs	r3, #0x0
 80002f0: 4291         	cmp	r1, r2
 80002f2: d301         	blo	0x80002f8 <firmware_image+0x2f8> @ imm = #0x2
 80002f4: 1a89         	subs	r1, r1, r2
 80002f6: 4303         	orrs	r3, r0
 80002f8: 0840         	lsrs	r0, r0, #0x1
 80002fa: ea4f 0141    	lsl.w	r1, r1, #0x1
 80002fe: d1f7         	bne	0x80002f0 <firmware_image+0x2f0> @ imm = #-0x12
 8000300: b151         	cbz	r1, 0x8000318 <firmware_image+0x318> @ imm = #0x14
 8000302: 4291         	cmp	r1, r2
 8000304: d102         	bne	0x800030c <firmware_image+0x30c> @ imm = #0x4
 8000306: f04f 4100    	mov.w	r1, #0x80000000
 800030a: e005         	b	0x8000318 <firmware_image+0x318> @ imm = #0xa
 800030c: d202         	bhs	0x8000314 <firmware_image+0x314> @ imm = #0x4
 800030e: f04f 0101    	mov.w	r1, #0x1
 8000312: e001         	b	0x8000318 <firmware_image+0x318> @ imm = #0x2
 8000314: f06f 0101    	mvn	r1, #0x1
 8000318: eb03 50c4    	add.w	r0, r3, r4, lsl #23
 800031c: 4428         	add	r0, r5
 800031e: bc30         	pop	{r4, r5}
 8000320: f000 ba5f    	b.w	0x80007e2 <firmware_image+0x7e2> @ imm = #0x4be
 8000324: 0042         	lsls	r2, r0, #0x1
 8000326: d005         	beq	0x8000334 <firmware_image+0x334> @ imm = #0xa
 8000328: f3c0 52c7    	ubfx	r2, r0, #0x17, #0x8
 800032c: 4252         	rsbs	r2, r2, #0
 800032e: 4291         	cmp	r1, r2
 8000330: dc01         	bgt	0x8000336 <firmware_image+0x336> @ imm = #0x2
 8000332: 2000         	movs	r0, #0x0
 8000334: 4770         	bx	lr
 8000336: eb00 50c1    	add.w	r0, r0, r1, lsl #23
 800033a: 4770         	bx	lr
 800033c: e92d 4ffe    	push.w	{r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000340: 4680         	mov	r8, r0
 8000342: ea81 0003    	eor.w	r0, r1, r3
 8000346: 0fc0         	lsrs	r0, r0, #0x1f
 8000348: 460c         	mov	r4, r1
 800034a: 9000         	str	r0, [sp]
 800034c: f021 4100    	bic	r1, r1, #0x80000000
 8000350: f023 4500    	bic	r5, r3, #0x80000000
 8000354: ebb8 0002    	subs.w	r0, r8, r2
 8000358: 41a9         	sbcs	r1, r5
 800035a: d205         	bhs	0x8000368 <firmware_image+0x368> @ imm = #0xa
 800035c: 4640         	mov	r0, r8
 800035e: 4621         	mov	r1, r4
 8000360: 4690         	mov	r8, r2
 8000362: 461c         	mov	r4, r3
 8000364: 460b         	mov	r3, r1
 8000366: 4602         	mov	r2, r0
 8000368: f023 4000    	bic	r0, r3, #0x80000000
 800036c: 4310         	orrs	r0, r2
 800036e: d047         	beq	0x8000400 <firmware_image+0x400> @ imm = #0x8e
 8000370: 0d27         	lsrs	r7, r4, #0x14
 8000372: f3c7 000a    	ubfx	r0, r7, #0x0, #0xb
 8000376: f3c3 510a    	ubfx	r1, r3, #0x14, #0xb
 800037a: 9002         	str	r0, [sp, #0x8]
 800037c: 1a40         	subs	r0, r0, r1
 800037e: 9001         	str	r0, [sp, #0x4]
 8000380: 2840         	cmp	r0, #0x40
 8000382: da6b         	bge	0x800045c <firmware_image+0x45c> @ imm = #0xd6
 8000384: f3c3 0013    	ubfx	r0, r3, #0x0, #0x14
 8000388: f440 1b80    	orr	r11, r0, #0x100000
 800038c: 9800         	ldr	r0, [sp]
 800038e: 4692         	mov	r10, r2
 8000390: b120         	cbz	r0, 0x800039c <firmware_image+0x39c> @ imm = #0x8
 8000392: 2300         	movs	r3, #0x0
 8000394: ebd2 0a03    	rsbs	r10, r2, r3
 8000398: eb63 0b0b    	sbc.w	r11, r3, r11
 800039c: 9801         	ldr	r0, [sp, #0x4]
 800039e: 4659         	mov	r1, r11
 80003a0: f1c0 0240    	rsb.w	r2, r0, #0x40
 80003a4: 4650         	mov	r0, r10
 80003a6: f000 f9eb    	bl	0x8000780 <firmware_image+0x780> @ imm = #0x3d6
 80003aa: 4606         	mov	r6, r0
 80003ac: 460d         	mov	r5, r1
 80003ae: 4650         	mov	r0, r10
 80003b0: 4659         	mov	r1, r11
 80003b2: 9a01         	ldr	r2, [sp, #0x4]
 80003b4: f000 fa03    	bl	0x80007be <firmware_image+0x7be> @ imm = #0x406
 80003b8: eb10 0008    	adds.w	r0, r0, r8
 80003bc: 4161         	adcs	r1, r4
 80003be: 2400         	movs	r4, #0x0
 80003c0: ea87 5211    	eor.w	r2, r7, r1, lsr #20
 80003c4: ea84 73e7    	eor.w	r3, r4, r7, asr #31
 80003c8: 431a         	orrs	r2, r3
 80003ca: d040         	beq	0x800044e <firmware_image+0x44e> @ imm = #0x80
 80003cc: 9a00         	ldr	r2, [sp]
 80003ce: b362         	cbz	r2, 0x800042a <firmware_image+0x42a> @ imm = #0x58
 80003d0: 9a01         	ldr	r2, [sp, #0x4]
 80003d2: 2a01         	cmp	r2, #0x1
 80003d4: ea4f 5207    	lsl.w	r2, r7, #0x14
 80003d8: dc15         	bgt	0x8000406 <firmware_image+0x406> @ imm = #0x2a
 80003da: 1b00         	subs	r0, r0, r4
 80003dc: eb61 0102    	sbc.w	r1, r1, r2
 80003e0: f04f 4200    	mov.w	r2, #0x80000000
 80003e4: ea02 5207    	and.w	r2, r2, r7, lsl #20
 80003e8: e9cd 4200    	strd	r4, r2, [sp]
 80003ec: 1c00         	adds	r0, r0, #0x0
 80003ee: f541 1180    	adc	r1, r1, #0x100000
 80003f2: 4632         	mov	r2, r6
 80003f4: 462b         	mov	r3, r5
 80003f6: f000 fa3a    	bl	0x800086e <firmware_image+0x86e> @ imm = #0x474
 80003fa: b003         	add	sp, #0xc
 80003fc: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
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
 80004dc: 0a84         	lsrs	r4, r0, #0xa
 80004de: 0a97         	lsrs	r7, r2, #0xa
 80004e0: ea44 5481    	orr.w	r4, r4, r1, lsl #22
 80004e4: ea47 5783    	orr.w	r7, r7, r3, lsl #22
 80004e8: fba4 6807    	umull	r6, r8, r4, r7
 80004ec: 9502         	str	r5, [sp, #0x8]
 80004ee: 0a8d         	lsrs	r5, r1, #0xa
 80004f0: fb05 8507    	mla	r5, r5, r7, r8
 80004f4: ea4f 2c93    	lsr.w	r12, r3, #0xa
 80004f8: fb04 540c    	mla	r4, r4, r12, r5
 80004fc: 0527         	lsls	r7, r4, #0x14
 80004fe: 9d02         	ldr	r5, [sp, #0x8]
 8000500: ea4f 5806    	lsl.w	r8, r6, #0x14
 8000504: ea47 3716    	orr.w	r7, r7, r6, lsr #12
 8000508: ebb5 0508    	subs.w	r5, r5, r8
 800050c: eb6e 0c07    	sbc.w	r12, lr, r7
 8000510: 0e87         	lsrs	r7, r0, #0x1a
 8000512: 0e92         	lsrs	r2, r2, #0x1a
 8000514: ea47 1781    	orr.w	r7, r7, r1, lsl #6
 8000518: ea42 1283    	orr.w	r2, r2, r3, lsl #6
 800051c: fba7 0102    	umull	r0, r1, r7, r2
 8000520: ebb6 010b    	subs.w	r1, r6, r11
 8000524: eb64 0400    	sbc.w	r4, r4, r0
 8000528: 0d2b         	lsrs	r3, r5, #0x14
 800052a: ea43 330c    	orr.w	r3, r3, r12, lsl #12
 800052e: 185e         	adds	r6, r3, r1
 8000530: eb44 501c    	adc.w	r0, r4, r12, lsr #20
 8000534: 46da         	mov	r10, r11
 8000536: 4651         	mov	r1, r10
 8000538: fbe7 0102    	umlal	r0, r1, r7, r2
 800053c: f3c5 0413    	ubfx	r4, r5, #0x0, #0x14
 8000540: ea4f 330b    	lsl.w	r3, r11, #0xc
 8000544: ea43 5314    	orr.w	r3, r3, r4, lsr #20
 8000548: ea4f 3204    	lsl.w	r2, r4, #0xc
 800054c: 9c01         	ldr	r4, [sp, #0x4]
 800054e: ea43 0306    	orr.w	r3, r3, r6
 8000552: f1a4 040c    	sub.w	r4, r4, #0xc
 8000556: 9402         	str	r4, [sp, #0x8]
 8000558: 9c00         	ldr	r4, [sp]
 800055a: e9cd b400    	strd	r11, r4, [sp]
 800055e: f000 f986    	bl	0x800086e <firmware_image+0x86e> @ imm = #0x30c
 8000562: b003         	add	sp, #0xc
 8000564: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8000568: 2000         	movs	r0, #0x0
 800056a: 4601         	mov	r1, r0
 800056c: e7f9         	b	0x8000562 <firmware_image+0x562> @ imm = #-0xe
 800056e: e92d 4df0    	push.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8000572: ea81 0403    	eor.w	r4, r1, r3
 8000576: f004 4b00    	and	r11, r4, #0x80000000
 800057a: f021 4500    	bic	r5, r1, #0x80000000
 800057e: 4614         	mov	r4, r2
 8000580: f04f 0a00    	mov.w	r10, #0x0
 8000584: f023 4100    	bic	r1, r3, #0x80000000
 8000588: ea50 0205    	orrs.w	r2, r0, r5
 800058c: d020         	beq	0x80005d0 <firmware_image+0x5d0> @ imm = #0x40
 800058e: ea54 0201    	orrs.w	r2, r4, r1
 8000592: d01d         	beq	0x80005d0 <firmware_image+0x5d0> @ imm = #0x3a
 8000594: f3c5 570a    	ubfx	r7, r5, #0x14, #0xb
 8000598: 4602         	mov	r2, r0
 800059a: f3c5 0313    	ubfx	r3, r5, #0x0, #0x14
 800059e: f3c1 0013    	ubfx	r0, r1, #0x0, #0x14
 80005a2: f3c1 560a    	ubfx	r6, r1, #0x14, #0xb
 80005a6: f440 1580    	orr	r5, r0, #0x100000
 80005aa: f443 1380    	orr	r3, r3, #0x100000
 80005ae: eba7 0806    	sub.w	r8, r7, r6
 80005b2: 1b10         	subs	r0, r2, r4
 80005b4: 46d6         	mov	lr, r10
 80005b6: f208 38fd    	addw	r8, r8, #0x3fd
 80005ba: eb73 0005    	sbcs.w	r0, r3, r5
 80005be: d302         	blo	0x80005c6 <firmware_image+0x5c6> @ imm = #0x4
 80005c0: f108 0801    	add.w	r8, r8, #0x1
 80005c4: e001         	b	0x80005ca <firmware_image+0x5ca> @ imm = #0x2
 80005c6: 1892         	adds	r2, r2, r2
 80005c8: 415b         	adcs	r3, r3
 80005ca: f1b8 0f00    	cmp.w	r8, #0x0
 80005ce: da03         	bge	0x80005d8 <firmware_image+0x5d8> @ imm = #0x6
 80005d0: 2000         	movs	r0, #0x0
 80005d2: 4601         	mov	r1, r0
 80005d4: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80005d8: 2000         	movs	r0, #0x0
 80005da: f44f 1180    	mov.w	r1, #0x100000
 80005de: 4606         	mov	r6, r0
 80005e0: 4684         	mov	r12, r0
 80005e2: e00e         	b	0x8000602 <firmware_image+0x602> @ imm = #0x1c
 80005e4: 1b17         	subs	r7, r2, r4
 80005e6: eb73 0705    	sbcs.w	r7, r3, r5
 80005ea: d305         	blo	0x80005f8 <firmware_image+0x5f8> @ imm = #0xa
 80005ec: 1b12         	subs	r2, r2, r4
 80005ee: eb63 0305    	sbc.w	r3, r3, r5
 80005f2: 4306         	orrs	r6, r0
 80005f4: 0849         	lsrs	r1, r1, #0x1
 80005f6: ea4f 0030    	rrx	r0, r0
 80005fa: 1892         	adds	r2, r2, r2
 80005fc: 415b         	adcs	r3, r3
 80005fe: ea50 0701    	orrs.w	r7, r0, r1
 8000602: d1ed         	bne	0x80005e0 <firmware_image+0x5e0> @ imm = #-0x26
 8000604: ea52 0003    	orrs.w	r0, r2, r3
 8000608: d012         	beq	0x8000630 <firmware_image+0x630> @ imm = #0x24
 800060a: ea82 0004    	eor.w	r0, r2, r4
 800060e: ea83 0105    	eor.w	r1, r3, r5
 8000612: 4308         	orrs	r0, r1
 8000614: d005         	beq	0x8000622 <firmware_image+0x622> @ imm = #0xa
 8000616: 1b10         	subs	r0, r2, r4
 8000618: 41ab         	sbcs	r3, r5
 800061a: d206         	bhs	0x800062a <firmware_image+0x62a> @ imm = #0xc
 800061c: 2201         	movs	r2, #0x1
 800061e: 2300         	movs	r3, #0x0
 8000620: e006         	b	0x8000630 <firmware_image+0x630> @ imm = #0xc
 8000622: 2200         	movs	r2, #0x0
 8000624: f04f 4300    	mov.w	r3, #0x80000000
 8000628: e002         	b	0x8000630 <firmware_image+0x630> @ imm = #0x4
 800062a: f06f 0201    	mvn	r2, #0x1
 800062e: 1053         	asrs	r3, r2, #0x1
 8000630: eb1a 0006    	adds.w	r0, r10, r6
 8000634: eb4c 5108    	adc.w	r1, r12, r8, lsl #20
 8000638: eb10 000a    	adds.w	r0, r0, r10
 800063c: eb41 010b    	adc.w	r1, r1, r11
 8000640: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8000644: f000 b902    	b.w	0x800084c <firmware_image+0x84c> @ imm = #0x204
 8000648: 0fc1         	lsrs	r1, r0, #0x1f
 800064a: ea80 70e0    	eor.w	r0, r0, r0, asr #31
 800064e: 4408         	add	r0, r1
 8000650: 07ca         	lsls	r2, r1, #0x1f
 8000652: 2396         	movs	r3, #0x96
 8000654: 2100         	movs	r1, #0x0
 8000656: f000 b8cb    	b.w	0x80007f0 <firmware_image+0x7f0> @ imm = #0x196
 800065a: b50e         	push	{r1, r2, r3, lr}
 800065c: 0fc1         	lsrs	r1, r0, #0x1f
 800065e: ea80 70e0    	eor.w	r0, r0, r0, asr #31
 8000662: 4408         	add	r0, r1
 8000664: 07ca         	lsls	r2, r1, #0x1f
 8000666: 2100         	movs	r1, #0x0
 8000668: f240 4333    	movw	r3, #0x433
 800066c: e88d 000e    	stm.w	sp, {r1, r2, r3}
 8000670: 460a         	mov	r2, r1
 8000672: 460b         	mov	r3, r1
 8000674: f000 f8f9    	bl	0x800086a <firmware_image+0x86a> @ imm = #0x1f2
 8000678: b003         	add	sp, #0xc
 800067a: bd00         	pop	{pc}
 800067c: f000 4200    	and	r2, r0, #0x80000000
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
 8000788: f1c2 0320    	rsb.w	r3, r2, #0x20
 800078c: fa20 f303    	lsr.w	r3, r0, r3
 8000790: 4319         	orrs	r1, r3
 8000792: 4090         	lsls	r0, r2
 8000794: 4770         	bx	lr
 8000796: 2a20         	cmp	r2, #0x20
 8000798: db04         	blt	0x80007a4 <firmware_image+0x7a4> @ imm = #0x8
 800079a: 3a20         	subs	r2, #0x20
 800079c: fa21 f002    	lsr.w	r0, r1, r2
 80007a0: 2100         	movs	r1, #0x0
 80007a2: 4770         	bx	lr
 80007a4: fa21 f302    	lsr.w	r3, r1, r2
 80007a8: 40d0         	lsrs	r0, r2
 80007aa: f1c2 0220    	rsb.w	r2, r2, #0x20
 80007ae: 4091         	lsls	r1, r2
 80007b0: 4308         	orrs	r0, r1
 80007b2: 4619         	mov	r1, r3
 80007b4: 4770         	bx	lr
 80007b6: 2a20         	cmp	r2, #0x20
 80007b8: db06         	blt	0x80007c8 <firmware_image+0x7c8> @ imm = #0xc
 80007ba: 17cb         	asrs	r3, r1, #0x1f
 80007bc: 3a20         	subs	r2, #0x20
 80007be: fa41 f002    	asr.w	r0, r1, r2
 80007c2: ea43 73e0    	orr.w	r3, r3, r0, asr #31
 80007c6: e006         	b	0x80007d6 <firmware_image+0x7d6> @ imm = #0xc
 80007c8: fa41 f302    	asr.w	r3, r1, r2
 80007cc: 40d0         	lsrs	r0, r2
 80007ce: f1c2 0220    	rsb.w	r2, r2, #0x20
 80007d2: 4091         	lsls	r1, r2
 80007d4: 4308         	orrs	r0, r1
 80007d6: 4619         	mov	r1, r3
 80007d8: 4770         	bx	lr
 80007da: 2900         	cmp	r1, #0x0
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
 8000c30: 2404         	movs	r4, #0x4
 8000c32: 4001         	ands	r1, r0
 8000c34: f7fd fff1    	bl	0x7ffec1a               @ imm = #-0x201e
 8000c38: b570         	push	{r4, r5, r6, lr}
 8000c3a: 2507         	movs	r5, #0x7
 8000c3c: 2809         	cmp	r0, #0x9
 8000c3e: d90b         	bls	0x8000c58 <firmware_image+0xc58> @ imm = #0x16
 8000c40: 4e12         	ldr	r6, [pc, #0x48]         @ 0x8000c8c <firmware_image+0xc8c>
 8000c42: 6834         	ldr	r4, [r6]
 8000c44: f1a0 030a    	sub.w	r3, r0, #0xa
 8000c48: eb03 0343    	add.w	r3, r3, r3, lsl #1
 8000c4c: 409d         	lsls	r5, r3
 8000c4e: 43ac         	bics	r4, r5
 8000c50: 409a         	lsls	r2, r3
 8000c52: 4314         	orrs	r4, r2
 8000c54: 6034         	str	r4, [r6]
 8000c56: e009         	b	0x8000c6c <firmware_image+0xc6c> @ imm = #0x12
 8000c58: 4e0c         	ldr	r6, [pc, #0x30]         @ 0x8000c8c <firmware_image+0xc8c>
 8000c5a: 1d36         	adds	r6, r6, #0x4
 8000c5c: 6834         	ldr	r4, [r6]
 8000c5e: eb00 0340    	add.w	r3, r0, r0, lsl #1
 8000c62: 409d         	lsls	r5, r3
 8000c64: 43ac         	bics	r4, r5
 8000c66: 409a         	lsls	r2, r3
 8000c68: 4314         	orrs	r4, r2
 8000c6a: 6034         	str	r4, [r6]
 8000c6c: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x8000c8c <firmware_image+0xc8c>
 8000c6e: 342c         	adds	r4, #0x2c
 8000c70: 6822         	ldr	r2, [r4]
 8000c72: f3c2 5301    	ubfx	r3, r2, #0x14, #0x2
 8000c76: 1ac9         	subs	r1, r1, r3
 8000c78: 1c89         	adds	r1, r1, #0x2
 8000c7a: eb01 0181    	add.w	r1, r1, r1, lsl #2
 8000c7e: 231f         	movs	r3, #0x1f
 8000c80: 408b         	lsls	r3, r1
 8000c82: 439a         	bics	r2, r3
 8000c84: 4088         	lsls	r0, r1
 8000c86: 4302         	orrs	r2, r0
 8000c88: 6022         	str	r2, [r4]
 8000c8a: bd70         	pop	{r4, r5, r6, pc}
 8000c8c: 240c         	movs	r4, #0xc
 8000c8e: 4001         	ands	r1, r0
 8000c90: 4a04         	ldr	r2, [pc, #0x10]         @ 0x8000ca4 <firmware_image+0xca4>
 8000c92: 6811         	ldr	r1, [r2]
 8000c94: f421 1140    	bic	r1, r1, #0x300000
 8000c98: 1e40         	subs	r0, r0, #0x1
 8000c9a: ea41 5000    	orr.w	r0, r1, r0, lsl #20
 8000c9e: 6010         	str	r0, [r2]
 8000ca0: 4770         	bx	lr
 8000ca2: 0000         	movs	r0, r0
 8000ca4: 2438         	movs	r4, #0x38
 8000ca6: 4001         	ands	r1, r0
 8000ca8: 4906         	ldr	r1, [pc, #0x18]         @ 0x8000cc4 <firmware_image+0xcc4>
 8000caa: 2800         	cmp	r0, #0x0
 8000cac: d004         	beq	0x8000cb8 <firmware_image+0xcb8> @ imm = #0x8
 8000cae: 6808         	ldr	r0, [r1]
 8000cb0: f440 1002    	orr	r0, r0, #0x208000
 8000cb4: 6008         	str	r0, [r1]
 8000cb6: 4770         	bx	lr
 8000cb8: 6808         	ldr	r0, [r1]
 8000cba: f420 1002    	bic	r0, r0, #0x208000
 8000cbe: 6008         	str	r0, [r1]
 8000cc0: 4770         	bx	lr
 8000cc2: 0000         	movs	r0, r0
 8000cc4: 2408         	movs	r4, #0x8
 8000cc6: 4001         	ands	r1, r0
 8000cc8: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000ccc: b085         	sub	sp, #0x14
 8000cce: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x80010bc <firmware_image+0x10bc>
 8000cd0: 220e         	movs	r2, #0xe
 8000cd2: 213b         	movs	r1, #0x3b
 8000cd4: 2068         	movs	r0, #0x68
 8000cd6: f001 ff21    	bl	0x8002b1c <firmware_image+0x2b1c> @ imm = #0x1e42
 8000cda: 48f8         	ldr	r0, [pc, #0x3e0]        @ 0x80010bc <firmware_image+0x10bc>
 8000cdc: f8df 83e0    	ldr.w	r8, [pc, #0x3e0]        @ 0x80010c0 <firmware_image+0x10c0>
 8000ce0: 7841         	ldrb	r1, [r0, #0x1]
 8000ce2: 7802         	ldrb	r2, [r0]
 8000ce4: ea41 2102    	orr.w	r1, r1, r2, lsl #8
 8000ce8: b209         	sxth	r1, r1
 8000cea: f8a8 100e    	strh.w	r1, [r8, #0xe]
 8000cee: 78c2         	ldrb	r2, [r0, #0x3]
 8000cf0: 7883         	ldrb	r3, [r0, #0x2]
 8000cf2: ea42 2203    	orr.w	r2, r2, r3, lsl #8
 8000cf6: b212         	sxth	r2, r2
 8000cf8: f8a8 2010    	strh.w	r2, [r8, #0x10]
 8000cfc: 7943         	ldrb	r3, [r0, #0x5]
 8000cfe: 7904         	ldrb	r4, [r0, #0x4]
 8000d00: ea43 2304    	orr.w	r3, r3, r4, lsl #8
 8000d04: b21b         	sxth	r3, r3
 8000d06: f8a8 3012    	strh.w	r3, [r8, #0x12]
 8000d0a: 7a44         	ldrb	r4, [r0, #0x9]
 8000d0c: 7a05         	ldrb	r5, [r0, #0x8]
 8000d0e: ea44 2405    	orr.w	r4, r4, r5, lsl #8
 8000d12: b224         	sxth	r4, r4
 8000d14: f8a8 4014    	strh.w	r4, [r8, #0x14]
 8000d18: 7ac5         	ldrb	r5, [r0, #0xb]
 8000d1a: 7a86         	ldrb	r6, [r0, #0xa]
 8000d1c: ea45 2506    	orr.w	r5, r5, r6, lsl #8
 8000d20: b22d         	sxth	r5, r5
 8000d22: f8a8 5016    	strh.w	r5, [r8, #0x16]
 8000d26: 7b46         	ldrb	r6, [r0, #0xd]
 8000d28: 7b00         	ldrb	r0, [r0, #0xc]
 8000d2a: ea46 2000    	orr.w	r0, r6, r0, lsl #8
 8000d2e: b200         	sxth	r0, r0
 8000d30: f8a8 0018    	strh.w	r0, [r8, #0x18]
 8000d34: f9b8 601a    	ldrsh.w	r6, [r8, #0x1a]
 8000d38: f04f 0a01    	mov.w	r10, #0x1
 8000d3c: 428e         	cmp	r6, r1
 8000d3e: d122         	bne	0x8000d86 <firmware_image+0xd86> @ imm = #0x44
 8000d40: f9b8 601c    	ldrsh.w	r6, [r8, #0x1c]
 8000d44: 4296         	cmp	r6, r2
 8000d46: d11e         	bne	0x8000d86 <firmware_image+0xd86> @ imm = #0x3c
 8000d48: f9b8 601e    	ldrsh.w	r6, [r8, #0x1e]
 8000d4c: 429e         	cmp	r6, r3
 8000d4e: d11a         	bne	0x8000d86 <firmware_image+0xd86> @ imm = #0x34
 8000d50: f9b8 6020    	ldrsh.w	r6, [r8, #0x20]
 8000d54: 42a6         	cmp	r6, r4
 8000d56: d116         	bne	0x8000d86 <firmware_image+0xd86> @ imm = #0x2c
 8000d58: f9b8 4022    	ldrsh.w	r4, [r8, #0x22]
 8000d5c: 42ac         	cmp	r4, r5
 8000d5e: d112         	bne	0x8000d86 <firmware_image+0xd86> @ imm = #0x24
 8000d60: f9b8 4024    	ldrsh.w	r4, [r8, #0x24]
 8000d64: 4284         	cmp	r4, r0
 8000d66: d10e         	bne	0x8000d86 <firmware_image+0xd86> @ imm = #0x1c
 8000d68: f8b8 000c    	ldrh.w	r0, [r8, #0xc]
 8000d6c: f64f 74fe    	movw	r4, #0xfffe
 8000d70: 42a0         	cmp	r0, r4
 8000d72: d202         	bhs	0x8000d7a <firmware_image+0xd7a> @ imm = #0x4
 8000d74: 1c40         	adds	r0, r0, #0x1
 8000d76: f8a8 000c    	strh.w	r0, [r8, #0xc]
 8000d7a: f8b8 000c    	ldrh.w	r0, [r8, #0xc]
 8000d7e: 2832         	cmp	r0, #0x32
 8000d80: d901         	bls	0x8000d86 <firmware_image+0xd86> @ imm = #0x2
 8000d82: f888 a000    	strb.w	r10, [r8]
 8000d86: f898 4000    	ldrb.w	r4, [r8]
 8000d8a: 48ce         	ldr	r0, [pc, #0x338]        @ 0x80010c4 <firmware_image+0x10c4>
 8000d8c: f04f 0900    	mov.w	r9, #0x0
 8000d90: 2c01         	cmp	r4, #0x1
 8000d92: d004         	beq	0x8000d9e <firmware_image+0xd9e> @ imm = #0x8
 8000d94: 7800         	ldrb	r0, [r0]
 8000d96: b150         	cbz	r0, 0x8000dae <firmware_image+0xdae> @ imm = #0x14
 8000d98: f888 9002    	strb.w	r9, [r8, #0x2]
 8000d9c: e009         	b	0x8000db2 <firmware_image+0xdb2> @ imm = #0x12
 8000d9e: 7800         	ldrb	r0, [r0]
 8000da0: b110         	cbz	r0, 0x8000da8 <firmware_image+0xda8> @ imm = #0x4
 8000da2: f888 a002    	strb.w	r10, [r8, #0x2]
 8000da6: e004         	b	0x8000db2 <firmware_image+0xdb2> @ imm = #0x8
 8000da8: f888 a001    	strb.w	r10, [r8, #0x1]
 8000dac: e001         	b	0x8000db2 <firmware_image+0xdb2> @ imm = #0x2
 8000dae: f888 9001    	strb.w	r9, [r8, #0x1]
 8000db2: 4248         	rsbs	r0, r1, #0
 8000db4: f44f 4100    	mov.w	r1, #0x8000
 8000db8: 1e4e         	subs	r6, r1, #0x1
 8000dba: 4288         	cmp	r0, r1
 8000dbc: db00         	blt	0x8000dc0 <firmware_image+0xdc0> @ imm = #0x0
 8000dbe: 4630         	mov	r0, r6
 8000dc0: 4cc1         	ldr	r4, [pc, #0x304]        @ 0x80010c8 <firmware_image+0x10c8>
 8000dc2: 1c67         	adds	r7, r4, #0x1
 8000dc4: 42a0         	cmp	r0, r4
 8000dc6: dc00         	bgt	0x8000dca <firmware_image+0xdca> @ imm = #0x0
 8000dc8: 4638         	mov	r0, r7
 8000dca: 4dbd         	ldr	r5, [pc, #0x2f4]        @ 0x80010c0 <firmware_image+0x10c0>
 8000dcc: 3570         	adds	r5, #0x70
 8000dce: 8028         	strh	r0, [r5]
 8000dd0: 4610         	mov	r0, r2
 8000dd2: 4288         	cmp	r0, r1
 8000dd4: db00         	blt	0x8000dd8 <firmware_image+0xdd8> @ imm = #0x0
 8000dd6: 4630         	mov	r0, r6
 8000dd8: 42a0         	cmp	r0, r4
 8000dda: dc00         	bgt	0x8000dde <firmware_image+0xdde> @ imm = #0x0
 8000ddc: 4638         	mov	r0, r7
 8000dde: 8068         	strh	r0, [r5, #0x2]
 8000de0: 4258         	rsbs	r0, r3, #0
 8000de2: f5b0 4f00    	cmp.w	r0, #0x8000
 8000de6: db00         	blt	0x8000dea <firmware_image+0xdea> @ imm = #0x0
 8000de8: 4630         	mov	r0, r6
 8000dea: f510 4f00    	cmn.w	r0, #0x8000
 8000dee: dc00         	bgt	0x8000df2 <firmware_image+0xdf2> @ imm = #0x0
 8000df0: 4638         	mov	r0, r7
 8000df2: 80a8         	strh	r0, [r5, #0x4]
 8000df4: f000 fae0    	bl	0x80013b8 <firmware_image+0x13b8> @ imm = #0x5c0
 8000df8: f8a8 000a    	strh.w	r0, [r8, #0xa]
 8000dfc: f7ff fc2d    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x7a6
 8000e00: 4ab2         	ldr	r2, [pc, #0x2c8]        @ 0x80010cc <firmware_image+0x10cc>
 8000e02: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x80010d0 <firmware_image+0x10d0>
 8000e04: f7ff fb3f    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x982
 8000e08: 4604         	mov	r4, r0
 8000e0a: 460d         	mov	r5, r1
 8000e0c: f8d8 0028    	ldr.w	r0, [r8, #0x28]
 8000e10: f7ff fc6c    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x728
 8000e14: 4aaf         	ldr	r2, [pc, #0x2bc]        @ 0x80010d4 <firmware_image+0x10d4>
 8000e16: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x80010d8 <firmware_image+0x10d8>
 8000e18: f7ff fb35    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x996
 8000e1c: 4622         	mov	r2, r4
 8000e1e: 462b         	mov	r3, r5
 8000e20: f7ff fa8a    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0xaec
 8000e24: f7ff fc8e    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x6e4
 8000e28: f8c8 0028    	str.w	r0, [r8, #0x28]
 8000e2c: 49a4         	ldr	r1, [pc, #0x290]        @ 0x80010c0 <firmware_image+0x10c0>
 8000e2e: f9b8 b014    	ldrsh.w	r11, [r8, #0x14]
 8000e32: 3182         	adds	r1, #0x82
 8000e34: f9b1 0000    	ldrsh.w	r0, [r1]
 8000e38: 4458         	add	r0, r11
 8000e3a: 4240         	rsbs	r0, r0, #0
 8000e3c: f44f 4200    	mov.w	r2, #0x8000
 8000e40: 4290         	cmp	r0, r2
 8000e42: db00         	blt	0x8000e46 <firmware_image+0xe46> @ imm = #0x0
 8000e44: 4630         	mov	r0, r6
 8000e46: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x80010c8 <firmware_image+0x10c8>
 8000e48: 4298         	cmp	r0, r3
 8000e4a: dc00         	bgt	0x8000e4e <firmware_image+0xe4e> @ imm = #0x0
 8000e4c: 4638         	mov	r0, r7
 8000e4e: 4c9c         	ldr	r4, [pc, #0x270]        @ 0x80010c0 <firmware_image+0x10c0>
 8000e50: 3476         	adds	r4, #0x76
 8000e52: 8020         	strh	r0, [r4]
 8000e54: f9b1 5002    	ldrsh.w	r5, [r1, #0x2]
 8000e58: f9b8 0016    	ldrsh.w	r0, [r8, #0x16]
 8000e5c: 9004         	str	r0, [sp, #0x10]
 8000e5e: 1b40         	subs	r0, r0, r5
 8000e60: 4290         	cmp	r0, r2
 8000e62: db00         	blt	0x8000e66 <firmware_image+0xe66> @ imm = #0x0
 8000e64: 4630         	mov	r0, r6
 8000e66: 4298         	cmp	r0, r3
 8000e68: dc00         	bgt	0x8000e6c <firmware_image+0xe6c> @ imm = #0x0
 8000e6a: 4638         	mov	r0, r7
 8000e6c: 8060         	strh	r0, [r4, #0x2]
 8000e6e: f9b1 1004    	ldrsh.w	r1, [r1, #0x4]
 8000e72: f9b8 0018    	ldrsh.w	r0, [r8, #0x18]
 8000e76: 9003         	str	r0, [sp, #0xc]
 8000e78: 4408         	add	r0, r1
 8000e7a: 4240         	rsbs	r0, r0, #0
 8000e7c: 4290         	cmp	r0, r2
 8000e7e: db00         	blt	0x8000e82 <firmware_image+0xe82> @ imm = #0x0
 8000e80: 4630         	mov	r0, r6
 8000e82: 4298         	cmp	r0, r3
 8000e84: dc00         	bgt	0x8000e88 <firmware_image+0xe88> @ imm = #0x0
 8000e86: 4638         	mov	r0, r7
 8000e88: 80a0         	strh	r0, [r4, #0x4]
 8000e8a: f9b8 000e    	ldrsh.w	r0, [r8, #0xe]
 8000e8e: 4240         	rsbs	r0, r0, #0
 8000e90: f7ff fbe3    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x83a
 8000e94: 4a91         	ldr	r2, [pc, #0x244]        @ 0x80010dc <firmware_image+0x10dc>
 8000e96: 4b92         	ldr	r3, [pc, #0x248]        @ 0x80010e0 <firmware_image+0x10e0>
 8000e98: f7ff faf5    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xa16
 8000e9c: 4604         	mov	r4, r0
 8000e9e: 460d         	mov	r5, r1
 8000ea0: f8d8 004c    	ldr.w	r0, [r8, #0x4c]
 8000ea4: f7ff fc22    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x7bc
 8000ea8: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x80010e4 <firmware_image+0x10e4>
 8000eaa: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x80010e8 <firmware_image+0x10e8>
 8000eac: f7ff faeb    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xa2a
 8000eb0: 4622         	mov	r2, r4
 8000eb2: 462b         	mov	r3, r5
 8000eb4: f7ff fa40    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0xb80
 8000eb8: f7ff fc44    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x778
 8000ebc: f8c8 004c    	str.w	r0, [r8, #0x4c]
 8000ec0: 9002         	str	r0, [sp, #0x8]
 8000ec2: f9b8 0010    	ldrsh.w	r0, [r8, #0x10]
 8000ec6: f7ff fbc8    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x870
 8000eca: 4a84         	ldr	r2, [pc, #0x210]        @ 0x80010dc <firmware_image+0x10dc>
 8000ecc: 4b84         	ldr	r3, [pc, #0x210]        @ 0x80010e0 <firmware_image+0x10e0>
 8000ece: f7ff fada    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xa4c
 8000ed2: 4604         	mov	r4, r0
 8000ed4: 460d         	mov	r5, r1
 8000ed6: f8d8 0050    	ldr.w	r0, [r8, #0x50]
 8000eda: f7ff fc07    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x7f2
 8000ede: 4a81         	ldr	r2, [pc, #0x204]        @ 0x80010e4 <firmware_image+0x10e4>
 8000ee0: 4b81         	ldr	r3, [pc, #0x204]        @ 0x80010e8 <firmware_image+0x10e8>
 8000ee2: f7ff fad0    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xa60
 8000ee6: 4622         	mov	r2, r4
 8000ee8: 462b         	mov	r3, r5
 8000eea: f7ff fa25    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0xbb6
 8000eee: f7ff fc29    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x7ae
 8000ef2: f8c8 0050    	str.w	r0, [r8, #0x50]
 8000ef6: 9001         	str	r0, [sp, #0x4]
 8000ef8: f9b8 0012    	ldrsh.w	r0, [r8, #0x12]
 8000efc: 4240         	rsbs	r0, r0, #0
 8000efe: f7ff fbac    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x8a8
 8000f02: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x80010dc <firmware_image+0x10dc>
 8000f04: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f06: f7ff fabe    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xa84
 8000f0a: 4604         	mov	r4, r0
 8000f0c: 460d         	mov	r5, r1
 8000f0e: f8d8 0054    	ldr.w	r0, [r8, #0x54]
 8000f12: f7ff fbeb    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x82a
 8000f16: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x80010e4 <firmware_image+0x10e4>
 8000f18: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x80010e8 <firmware_image+0x10e8>
 8000f1a: f7ff fab4    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xa98
 8000f1e: 4622         	mov	r2, r4
 8000f20: 462b         	mov	r3, r5
 8000f22: f7ff fa09    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0xbee
 8000f26: f7ff fc0d    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x7e6
 8000f2a: f8c8 0054    	str.w	r0, [r8, #0x54]
 8000f2e: 9000         	str	r0, [sp]
 8000f30: f1cb 0000    	rsb.w	r0, r11, #0x0
 8000f34: f7ff fb91    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x8de
 8000f38: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x80010dc <firmware_image+0x10dc>
 8000f3a: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f3c: f7ff faa3    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xaba
 8000f40: 4604         	mov	r4, r0
 8000f42: 460d         	mov	r5, r1
 8000f44: f8d8 0058    	ldr.w	r0, [r8, #0x58]
 8000f48: f7ff fbd0    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x860
 8000f4c: 4a65         	ldr	r2, [pc, #0x194]        @ 0x80010e4 <firmware_image+0x10e4>
 8000f4e: 4b66         	ldr	r3, [pc, #0x198]        @ 0x80010e8 <firmware_image+0x10e8>
 8000f50: f7ff fa99    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xace
 8000f54: 4622         	mov	r2, r4
 8000f56: 462b         	mov	r3, r5
 8000f58: f7ff f9ee    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0xc24
 8000f5c: f7ff fbf2    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x81c
 8000f60: 4607         	mov	r7, r0
 8000f62: f8c8 0058    	str.w	r0, [r8, #0x58]
 8000f66: 9804         	ldr	r0, [sp, #0x10]
 8000f68: f7ff fb77    	bl	0x800065a <firmware_image+0x65a> @ imm = #-0x912
 8000f6c: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0x80010dc <firmware_image+0x10dc>
 8000f6e: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f70: f7ff fa89    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xaee
 8000f74: 4604         	mov	r4, r0
 8000f76: 460d         	mov	r5, r1
 8000f78: f8d8 005c    	ldr.w	r0, [r8, #0x5c]
 8000f7c: f7ff fbb6    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x894
 8000f80: f7ff fa7f    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0xb02
 8000f84: 4622         	mov	r2, r4
 8000f86: 462b         	mov	r3, r5
 8000f88: f7ff f9d4    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0xc58
 8000f8c: f7ff fbd8    	bl	0x8000740 <firmware_image+0x740> @ imm = #-0x850
 8000f90: 4606         	mov	r6, r0
 8000f92: f8c8 005c    	str.w	r0, [r8, #0x5c]
 8000f96: 9803         	ldr	r0, [sp, #0xc]
 8000f98: 4240         	rsbs	r0, r0, #0
 8000f9a: f7ff fb5c    	bl	0x8000656 <firmware_image+0x656> @ imm = #-0x948
 8000f9e: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x80010d8 <firmware_image+0x10d8>
 8000fa0: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x80010dc <firmware_image+0x10dc>
 8000fa2: f7ff fa6e    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0xb24
 8000fa6: 4604         	mov	r4, r0
 8000fa8: 460d         	mov	r5, r1
 8000faa: f8d8 0060    	ldr.w	r0, [r8, #0x60]
 8000fae: f7ff fb9b    	bl	0x80006e8 <firmware_image+0x6e8> @ imm = #-0x8ca
 8000fb2: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x80010e0 <firmware_image+0x10e0>
 8000fb4: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x80010e4 <firmware_image+0x10e4>
 8000fb6: f7ff fa64    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0xb38
 8000fba: 4622         	mov	r2, r4
 8000fbc: 462b         	mov	r3, r5
 8000fbe: f7ff f9b9    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0xc8e
 8000fc2: f7ff fbbd    	bl	0x8000740 <firmware_image+0x740> @ imm = #-0x886
 8000fc6: c605         	stm	r6!, {r0, r2}
 8000fc8: f8c8 0060    	str.w	r0, [r8, #0x60]
 8000fcc: 9802         	ldr	r0, [sp, #0x8]
 8000fce: f7ff fb53    	bl	0x8000678 <firmware_image+0x678> @ imm = #-0x95a
 8000fd2: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x80010bc <firmware_image+0x10bc>
 8000fd4: 3464         	adds	r4, #0x64
 8000fd6: 8020         	strh	r0, [r4]
 8000fd8: 9801         	ldr	r0, [sp, #0x4]
 8000fda: f7ff fb4d    	bl	0x8000678 <firmware_image+0x678> @ imm = #-0x966
 8000fde: 8060         	strh	r0, [r4, #0x2]
 8000fe0: 9800         	ldr	r0, [sp]
 8000fe2: f7ff fb49    	bl	0x8000678 <firmware_image+0x678> @ imm = #-0x96e
 8000fe6: 80a0         	strh	r0, [r4, #0x4]
 8000fe8: 4638         	mov	r0, r7
 8000fea: f7ff fb45    	bl	0x8000678 <firmware_image+0x678> @ imm = #-0x976
 8000fee: 1da7         	adds	r7, r4, #0x6
 8000ff0: fa0f fb80    	sxth.w	r11, r0
 8000ff4: f8a7 b000    	strh.w	r11, [r7]
 8000ff8: 0a90         	lsrs	r0, r2, #0xa
 8000ffa: 2000         	movs	r0, #0x0
 8000ffc: 0171         	lsls	r1, r6, #0x5
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
 80011bc: f9b5 0000    	ldrsh.w	r0, [r5]
 80011c0: f7ff fa44    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xb78
 80011c4: 4e73         	ldr	r6, [pc, #0x1cc]        @ 0x8001394 <firmware_image+0x1394>
 80011c6: 4631         	mov	r1, r6
 80011c8: f7ff f83c    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0xf88
 80011cc: 4607         	mov	r7, r0
 80011ce: f9b5 0002    	ldrsh.w	r0, [r5, #0x2]
 80011d2: f7ff fa3b    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xb8a
 80011d6: 4631         	mov	r1, r6
 80011d8: f7ff f834    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0xf98
 80011dc: f7ff fa34    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xb98
 80011e0: 4631         	mov	r1, r6
 80011e2: f7ff f82d    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0xfa6
 80011e6: 4606         	mov	r6, r0
 80011e8: 496a         	ldr	r1, [pc, #0x1a8]        @ 0x8001394 <firmware_image+0x1394>
 80011ea: 4628         	mov	r0, r5
 80011ec: f7ff f828    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0xfb0
 80011f0: f7ff fa44    	bl	0x800067c <firmware_image+0x67c> @ imm = #-0xb78
 80011f4: 4968         	ldr	r1, [pc, #0x1a0]        @ 0x8001398 <firmware_image+0x1398>
 80011f6: 6008         	str	r0, [r1]
 80011f8: 4968         	ldr	r1, [pc, #0x1a0]        @ 0x800139c <firmware_image+0x139c>
 80011fa: f44f 7367    	mov.w	r3, #0x39c
 80011fe: 680a         	ldr	r2, [r1]
 8001200: 435a         	muls	r2, r3, r2
 8001202: eb00 03c0    	add.w	r3, r0, r0, lsl #3
 8001206: eb03 1000    	add.w	r0, r3, r0, lsl #4
 800120a: eb02 0080    	add.w	r0, r2, r0, lsl #2
 800120e: 1280         	asrs	r0, r0, #0xa
 8001210: 6008         	str	r0, [r1]
 8001212: 4c5d         	ldr	r4, [pc, #0x174]        @ 0x8001388 <firmware_image+0x1388>
 8001214: 1fa4         	subs	r4, r4, #0x6
 8001216: f9b4 0000    	ldrsh.w	r0, [r4]
 800121a: f7ff fa15    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xbd6
 800121e: 4683         	mov	r11, r0
 8001220: f9b4 0002    	ldrsh.w	r0, [r4, #0x2]
 8001224: f7ff fa10    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xbe0
 8001228: 4682         	mov	r10, r0
 800122a: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 800122e: f7ff fa0b    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xbea
 8001232: 9002         	str	r0, [sp, #0x8]
 8001234: 9902         	ldr	r1, [sp, #0x8]
 8001236: 4608         	mov	r0, r1
 8001238: f7ff f802    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0xffc
 800123c: 4604         	mov	r4, r0
 800123e: 4651         	mov	r1, r10
 8001240: 4650         	mov	r0, r10
 8001242: f7fe fffd    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x1006
 8001246: 4680         	mov	r8, r0
 8001248: 4659         	mov	r1, r11
 800124a: 4658         	mov	r0, r11
 800124c: f7fe fff8    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x1010
 8001250: 4641         	mov	r1, r8
 8001252: f7fe ff9d    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x10c6
 8001256: 4621         	mov	r1, r4
 8001258: f7fe ff9a    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x10cc
 800125c: f7ff fa46    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0xb74
 8001260: f005 fe6e    	bl	0x8006f40 <firmware_image+0x6f40> @ imm = #0x5cdc
 8001264: f7ff fa6e    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0xb24
 8001268: 4c47         	ldr	r4, [pc, #0x11c]        @ 0x8001388 <firmware_image+0x1388>
 800126a: 3c76         	subs	r4, #0x76
 800126c: 64a0         	str	r0, [r4, #0x48]
 800126e: 4601         	mov	r1, r0
 8001270: 4658         	mov	r0, r11
 8001272: f7ff f817    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0xfd2
 8001276: f7ff fa39    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0xb8e
 800127a: f005 f8d5    	bl	0x8006428 <firmware_image+0x6428> @ imm = #0x51aa
 800127e: f8df 8120    	ldr.w	r8, [pc, #0x120]        @ 0x80013a0 <firmware_image+0x13a0>
 8001282: f04f 4980    	mov.w	r9, #0x40000000
 8001286: 464a         	mov	r2, r9
 8001288: 4643         	mov	r3, r8
 800128a: f7ff f8fc    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xe08
 800128e: f7ff fa59    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0xb4e
 8001292: 6420         	str	r0, [r4, #0x40]
 8001294: 4650         	mov	r0, r10
 8001296: 6ca1         	ldr	r1, [r4, #0x48]
 8001298: f7ff f804    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0xff8
 800129c: f7ff fa26    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0xbb4
 80012a0: f005 f8c2    	bl	0x8006428 <firmware_image+0x6428> @ imm = #0x5184
 80012a4: 464a         	mov	r2, r9
 80012a6: 4643         	mov	r3, r8
 80012a8: f7ff f8ed    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xe26
 80012ac: f7ff fa4a    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0xb6c
 80012b0: 6460         	str	r0, [r4, #0x44]
 80012b2: 9902         	ldr	r1, [sp, #0x8]
 80012b4: 465b         	mov	r3, r11
 80012b6: e9cd a100    	strd	r10, r1, [sp]
 80012ba: 4632         	mov	r2, r6
 80012bc: 4629         	mov	r1, r5
 80012be: 4638         	mov	r0, r7
 80012c0: f001 fdfc    	bl	0x8002ebc <firmware_image+0x2ebc> @ imm = #0x1bf8
 80012c4: 4837         	ldr	r0, [pc, #0xdc]         @ 0x80013a4 <firmware_image+0x13a4>
 80012c6: f001 fd65    	bl	0x8002d94 <firmware_image+0x2d94> @ imm = #0x1aca
 80012ca: f9b4 0006    	ldrsh.w	r0, [r4, #0x6]
 80012ce: f7ff f9bb    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xc8a
 80012d2: 4605         	mov	r5, r0
 80012d4: 9003         	str	r0, [sp, #0xc]
 80012d6: 4833         	ldr	r0, [pc, #0xcc]         @ 0x80013a4 <firmware_image+0x13a4>
 80012d8: f8df b0cc    	ldr.w	r11, [pc, #0xcc]        @ 0x80013a8 <firmware_image+0x13a8>
 80012dc: 6800         	ldr	r0, [r0]
 80012de: 4659         	mov	r1, r11
 80012e0: f7fe ffae    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x10a4
 80012e4: 4629         	mov	r1, r5
 80012e6: f7fe ffa5    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x10b6
 80012ea: 63e0         	str	r0, [r4, #0x3c]
 80012ec: 6c60         	ldr	r0, [r4, #0x44]
 80012ee: f7ff f9fd    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0xc06
 80012f2: 4f2e         	ldr	r7, [pc, #0xb8]         @ 0x80013ac <firmware_image+0x13ac>
 80012f4: f8df 80b8    	ldr.w	r8, [pc, #0xb8]         @ 0x80013b0 <firmware_image+0x13b0>
 80012f8: 463a         	mov	r2, r7
 80012fa: 4643         	mov	r3, r8
 80012fc: f7ff f8c3    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xe7a
 8001300: 4605         	mov	r5, r0
 8001302: 460e         	mov	r6, r1
 8001304: 6b20         	ldr	r0, [r4, #0x30]
 8001306: f7ff f9f1    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0xc1e
 800130a: f8df a0a8    	ldr.w	r10, [pc, #0xa8]        @ 0x80013b4 <firmware_image+0x13b4>
 800130e: ea4f 0967    	asr.w	r9, r7, #0x1
 8001312: 464a         	mov	r2, r9
 8001314: 4653         	mov	r3, r10
 8001316: f7ff f8b6    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xe94
 800131a: 462a         	mov	r2, r5
 800131c: 4633         	mov	r3, r6
 800131e: f7ff f80b    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0xfea
 8001322: f7ff fa0f    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0xbe2
 8001326: 4605         	mov	r5, r0
 8001328: 6320         	str	r0, [r4, #0x30]
 800132a: f9b4 0008    	ldrsh.w	r0, [r4, #0x8]
 800132e: f7ff f98b    	bl	0x8000648 <firmware_image+0x648> @ imm = #-0xcea
 8001332: 4659         	mov	r1, r11
 8001334: f7fe ffb6    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x1094
 8001338: 4629         	mov	r1, r5
 800133a: f7fe ff7e    	bl	0x800023a <firmware_image+0x23a> @ imm = #-0x1104
 800133e: 62e0         	str	r0, [r4, #0x2c]
 8001340: 6c20         	ldr	r0, [r4, #0x40]
 8001342: f080 4000    	eor	r0, r0, #0x80000000
 8001346: f7ff f9d1    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0xc5e
 800134a: 463a         	mov	r2, r7
 800134c: 4643         	mov	r3, r8
 800134e: f7ff f89a    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xecc
 8001352: 4605         	mov	r5, r0
 8001354: 460e         	mov	r6, r1
 8001356: 6ba0         	ldr	r0, [r4, #0x38]
 8001358: f7ff f9c8    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0xc70
 800135c: 464a         	mov	r2, r9
 800135e: 4653         	mov	r3, r10
 8001360: f7ff f891    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0xede
 8001364: 462a         	mov	r2, r5
 8001366: 4633         	mov	r3, r6
 8001368: f7fe ffe6    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x1034
 800136c: f7ff f9ea    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0xc2c
 8001370: 4605         	mov	r5, r0
 8001372: 63a0         	str	r0, [r4, #0x38]
 8001374: 4659         	mov	r1, r11
 8001376: 9803         	ldr	r0, [sp, #0xc]
 8001378: f7fe ff94    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x10d8
 800137c: 4629         	mov	r1, r5
 800137e: f7fe ff5c    	bl	0x800023a <firmware_image+0x23a> @ imm = #-0x1148
 8001382: 6360         	str	r0, [r4, #0x34]
 8001384: e8bd 9fff    	pop.w	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
 8001388: 020a         	lsls	r2, r1, #0x8
 800138a: 2000         	movs	r0, #0x0
 800138c: 0096         	lsls	r6, r2, #0x2
 800138e: 2000         	movs	r0, #0x0
 8001390: a058         	adr	r0, #352 <firmware_image+0x13ec>
 8001392: 398b         	subs	r1, #0x8b
 8001394: 4000         	ands	r0, r0
 8001396: 461c         	mov	r4, r3
 8001398: 0100         	lsls	r0, r0, #0x4
 800139a: 2000         	movs	r0, #0x0
 800139c: 0138         	lsls	r0, r7, #0x4
 800139e: 2000         	movs	r0, #0x0
 80013a0: a5dc         	adr	r5, #880 <firmware_image+0x1480>
 80013a2: 404c         	eors	r4, r1
 80013a4: 02e8         	lsls	r0, r5, #0xb
 80013a6: 2000         	movs	r0, #0x0
 80013a8: 0000         	movs	r0, r0
 80013aa: 42c8         	cmn	r0, r1
 80013ac: 999a         	ldr	r1, [sp, #0x268]
 80013ae: 9999         	ldr	r1, [sp, #0x264]
 80013b0: 9999         	ldr	r1, [sp, #0x264]
 80013b2: 3fb9         	subs	r7, #0xb9
 80013b4: cccc         	ldm	r4!, {r2, r3, r6, r7}
 80013b6: 3fec         	subs	r7, #0xec
 80013b8: 4807         	ldr	r0, [pc, #0x1c]         @ 0x80013d8 <firmware_image+0x13d8>
 80013ba: 79c1         	ldrb	r1, [r0, #0x7]
 80013bc: 7980         	ldrb	r0, [r0, #0x6]
 80013be: ea41 2000    	orr.w	r0, r1, r0, lsl #8
 80013c2: b200         	sxth	r0, r0
 80013c4: f243 0184    	movw	r1, #0x3084
 80013c8: 4408         	add	r0, r1
 80013ca: f44f 71aa    	mov.w	r1, #0x154
 80013ce: fb90 f0f1    	sdiv	r0, r0, r1
 80013d2: b200         	sxth	r0, r0
 80013d4: 4770         	bx	lr
 80013d6: 0000         	movs	r0, r0
 80013d8: 02d8         	lsls	r0, r3, #0xb
 80013da: 2000         	movs	r0, #0x0
 80013dc: e92d 5ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 80013e0: f7ff f982    	bl	0x80006e8 <firmware_image+0x6e8> @ imm = #-0xcfc
 80013e4: 4f90         	ldr	r7, [pc, #0x240]        @ 0x8001628 <firmware_image+0x1628>
 80013e6: 4b91         	ldr	r3, [pc, #0x244]        @ 0x800162c <firmware_image+0x162c>
 80013e8: 463a         	mov	r2, r7
 80013ea: f7ff f84a    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0xf6c
 80013ee: 4c90         	ldr	r4, [pc, #0x240]        @ 0x8001630 <firmware_image+0x1630>
 80013f0: 4605         	mov	r5, r0
 80013f2: 460e         	mov	r6, r1
 80013f4: 6be0         	ldr	r0, [r4, #0x3c]
 80013f6: f7ff f977    	bl	0x80006e8 <firmware_image+0x6e8> @ imm = #-0xd12
 80013fa: 463a         	mov	r2, r7
 80013fc: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x8001634 <firmware_image+0x1634>
 80013fe: f7ff f977    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xd12
 8001402: 463a         	mov	r2, r7
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
 8001664: 3333         	adds	r3, #0x33
 8001666: 3ff3         	subs	r7, #0xf3
 8001668: 0000         	movs	r0, r0
 800166a: 41f0         	rors	r0, r6
 800166c: 0000         	movs	r0, r0
 800166e: c1f0         	stm	r1!, {r4, r5, r6, r7}
 8001670: 7801         	ldrb	r1, [r0]
 8001672: f64f 72ff    	movw	r2, #0xffff
 8001676: ea02 2101    	and.w	r1, r2, r1, lsl #8
 800167a: 7840         	ldrb	r0, [r0, #0x1]
 800167c: 4408         	add	r0, r1
 800167e: b280         	uxth	r0, r0
 8001680: 4770         	bx	lr
 8001682: 0000         	movs	r0, r0
 8001684: b510         	push	{r4, lr}
 8001686: 480e         	ldr	r0, [pc, #0x38]         @ 0x80016c0 <firmware_image+0x16c0>
 8001688: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x80016bc <firmware_image+0x16bc>
 800168a: 8881         	ldrh	r1, [r0, #0x4]
 800168c: 6903         	ldr	r3, [r0, #0x10]
 800168e: f834 2011    	ldrh.w	r2, [r4, r1, lsl #1]
 8001692: 1a9b         	subs	r3, r3, r2
 8001694: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x80016c4 <firmware_image+0x16c4>
 8001696: 8812         	ldrh	r2, [r2]
 8001698: f824 2011    	strh.w	r2, [r4, r1, lsl #1]
 800169c: 441a         	add	r2, r3
 800169e: 6102         	str	r2, [r0, #0x10]
 80016a0: 17d3         	asrs	r3, r2, #0x1f
 80016a2: eb02 6253    	add.w	r2, r2, r3, lsr #25
 80016a6: 09d2         	lsrs	r2, r2, #0x7
 80016a8: 80c2         	strh	r2, [r0, #0x6]
 80016aa: 1c49         	adds	r1, r1, #0x1
 80016ac: b289         	uxth	r1, r1
 80016ae: 8081         	strh	r1, [r0, #0x4]
 80016b0: 2980         	cmp	r1, #0x80
 80016b2: d301         	blo	0x80016b8 <firmware_image+0x16b8> @ imm = #0x2
 80016b4: 2100         	movs	r1, #0x0
 80016b6: 8081         	strh	r1, [r0, #0x4]
 80016b8: bd10         	pop	{r4, pc}
 80016ba: 0000         	movs	r0, r0
 80016bc: 0590         	lsls	r0, r2, #0x16
 80016be: 2000         	movs	r0, #0x0
 80016c0: 0298         	lsls	r0, r3, #0xa
 80016c2: 2000         	movs	r0, #0x0
 80016c4: 0266         	lsls	r6, r4, #0x9
 80016c6: 2000         	movs	r0, #0x0
 80016c8: e7fe         	b	0x80016c8 <firmware_image+0x16c8> @ imm = #-0x4
 80016ca: 0000         	movs	r0, r0
 80016cc: b510         	push	{r4, lr}
 80016ce: 480c         	ldr	r0, [pc, #0x30]         @ 0x8001700 <firmware_image+0x1700>
 80016d0: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x80016fc <firmware_image+0x16fc>
 80016d2: 8801         	ldrh	r1, [r0]
 80016d4: 68c3         	ldr	r3, [r0, #0xc]
 80016d6: f834 2011    	ldrh.w	r2, [r4, r1, lsl #1]
 80016da: 1a9b         	subs	r3, r3, r2
 80016dc: 4a09         	ldr	r2, [pc, #0x24]         @ 0x8001704 <firmware_image+0x1704>
 80016de: 8812         	ldrh	r2, [r2]
 80016e0: f824 2011    	strh.w	r2, [r4, r1, lsl #1]
 80016e4: 441a         	add	r2, r3
 80016e6: 60c2         	str	r2, [r0, #0xc]
 80016e8: 0952         	lsrs	r2, r2, #0x5
 80016ea: 8042         	strh	r2, [r0, #0x2]
 80016ec: 1c49         	adds	r1, r1, #0x1
 80016ee: b289         	uxth	r1, r1
 80016f0: 8001         	strh	r1, [r0]
 80016f2: 2920         	cmp	r1, #0x20
 80016f4: d301         	blo	0x80016fa <firmware_image+0x16fa> @ imm = #0x2
 80016f6: 2100         	movs	r1, #0x0
 80016f8: 8001         	strh	r1, [r0]
 80016fa: bd10         	pop	{r4, pc}
 80016fc: 0550         	lsls	r0, r2, #0x15
 80016fe: 2000         	movs	r0, #0x0
 8001700: 0298         	lsls	r0, r3, #0xa
 8001702: 2000         	movs	r0, #0x0
 8001704: 0264         	lsls	r4, r4, #0x9
 8001706: 2000         	movs	r0, #0x0
 8001708: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 800170c: 4836         	ldr	r0, [pc, #0xd8]         @ 0x80017e8 <firmware_image+0x17e8>
 800170e: 2701         	movs	r7, #0x1
 8001710: 4e36         	ldr	r6, [pc, #0xd8]         @ 0x80017ec <firmware_image+0x17ec>
 8001712: 7800         	ldrb	r0, [r0]
 8001714: 2800         	cmp	r0, #0x0
 8001716: d026         	beq	0x8001766 <firmware_image+0x1766> @ imm = #0x4c
 8001718: 4835         	ldr	r0, [pc, #0xd4]         @ 0x80017f0 <firmware_image+0x17f0>
 800171a: f242 71f6    	movw	r1, #0x27f6
 800171e: 8800         	ldrh	r0, [r0]
 8001720: 4348         	muls	r0, r1, r0
 8001722: 213f         	movs	r1, #0x3f
 8001724: eb01 30d0    	add.w	r0, r1, r0, lsr #15
 8001728: b200         	sxth	r0, r0
 800172a: 83f0         	strh	r0, [r6, #0x1e]
 800172c: 7931         	ldrb	r1, [r6, #0x4]
 800172e: b391         	cbz	r1, 0x8001796 <firmware_image+0x1796> @ imm = #0x64
 8001730: f7fe ff95    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x10d6
 8001734: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x80017f4 <firmware_image+0x17f4>
 8001736: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x80017f8 <firmware_image+0x17f8>
 8001738: f7fe fea7    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x12b2
 800173c: 4604         	mov	r4, r0
 800173e: 460d         	mov	r5, r1
 8001740: 6eb0         	ldr	r0, [r6, #0x68]
 8001742: f7fe ffd5    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x1056
 8001746: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x80017fc <firmware_image+0x17fc>
 8001748: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x8001800 <firmware_image+0x1800>
 800174a: f7fe fe9e    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x12c4
 800174e: 4622         	mov	r2, r4
 8001750: 462b         	mov	r3, r5
 8001752: f7fe fdf3    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x141a
 8001756: f7fe fff7    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x1012
 800175a: 66b0         	str	r0, [r6, #0x68]
 800175c: 6eb0         	ldr	r0, [r6, #0x68]
 800175e: f7fe ff8f    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x10e2
 8001762: 3096         	adds	r0, #0x96
 8001764: 8430         	strh	r0, [r6, #0x20]
 8001766: 4827         	ldr	r0, [pc, #0x9c]         @ 0x8001804 <firmware_image+0x1804>
 8001768: f242 7110    	movw	r1, #0x2710
 800176c: 8800         	ldrh	r0, [r0]
 800176e: 4341         	muls	r1, r0, r1
 8001770: f5c0 4000    	rsb.w	r0, r0, #0x8000
 8001774: fb91 f1f0    	sdiv	r1, r1, r0
 8001778: 481c         	ldr	r0, [pc, #0x70]         @ 0x80017ec <firmware_image+0x17ec>
 800177a: 3080         	adds	r0, #0x80
 800177c: 6301         	str	r1, [r0, #0x30]
 800177e: 3880         	subs	r0, #0x80
 8001780: f5b1 5ffa    	cmp.w	r1, #0x1f40
 8001784: 8d80         	ldrh	r0, [r0, #0x2c]
 8001786: d20c         	bhs	0x80017a2 <firmware_image+0x17a2> @ imm = #0x18
 8001788: f640 32b8    	movw	r2, #0xbb8
 800178c: 4290         	cmp	r0, r2
 800178e: d20c         	bhs	0x80017aa <firmware_image+0x17aa> @ imm = #0x18
 8001790: 1c40         	adds	r0, r0, #0x1
 8001792: 85b0         	strh	r0, [r6, #0x2c]
 8001794: e009         	b	0x80017aa <firmware_image+0x17aa> @ imm = #0x12
 8001796: e7ff         	b	0x8001798 <firmware_image+0x1798> @ imm = #-0x2
 8001798: f7fe ff58    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0x1150
 800179c: 66b0         	str	r0, [r6, #0x68]
 800179e: 7137         	strb	r7, [r6, #0x4]
 80017a0: e7dc         	b	0x800175c <firmware_image+0x175c> @ imm = #-0x48
 80017a2: 2801         	cmp	r0, #0x1
 80017a4: d901         	bls	0x80017aa <firmware_image+0x17aa> @ imm = #0x2
 80017a6: 1e40         	subs	r0, r0, #0x1
 80017a8: 85b0         	strh	r0, [r6, #0x2c]
 80017aa: 8db0         	ldrh	r0, [r6, #0x2c]
 80017ac: f640 3254    	movw	r2, #0xb54
 80017b0: 4290         	cmp	r0, r2
 80017b2: d900         	bls	0x80017b6 <firmware_image+0x17b6> @ imm = #0x0
 80017b4: 7177         	strb	r7, [r6, #0x5]
 80017b6: 480d         	ldr	r0, [pc, #0x34]         @ 0x80017ec <firmware_image+0x17ec>
 80017b8: f241 7270    	movw	r2, #0x1770
 80017bc: 4291         	cmp	r1, r2
 80017be: 8dc0         	ldrh	r0, [r0, #0x2e]
 80017c0: d205         	bhs	0x80017ce <firmware_image+0x17ce> @ imm = #0xa
 80017c2: f5b0 6ffa    	cmp.w	r0, #0x7d0
 80017c6: d206         	bhs	0x80017d6 <firmware_image+0x17d6> @ imm = #0xc
 80017c8: 1c40         	adds	r0, r0, #0x1
 80017ca: 85f0         	strh	r0, [r6, #0x2e]
 80017cc: e003         	b	0x80017d6 <firmware_image+0x17d6> @ imm = #0x6
 80017ce: 2801         	cmp	r0, #0x1
 80017d0: d901         	bls	0x80017d6 <firmware_image+0x17d6> @ imm = #0x2
 80017d2: 1e40         	subs	r0, r0, #0x1
 80017d4: 85f0         	strh	r0, [r6, #0x2e]
 80017d6: 8df0         	ldrh	r0, [r6, #0x2e]
 80017d8: f240 716c    	movw	r1, #0x76c
 80017dc: 4288         	cmp	r0, r1
 80017de: d900         	bls	0x80017e2 <firmware_image+0x17e2> @ imm = #0x0
 80017e0: 71b7         	strb	r7, [r6, #0x6]
 80017e2: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 80017e6: 0000         	movs	r0, r0
 80017e8: 021e         	lsls	r6, r3, #0x8
 80017ea: 2000         	movs	r0, #0x0
 80017ec: 0064         	lsls	r4, r4, #0x1
 80017ee: 2000         	movs	r0, #0x0
 80017f0: 029a         	lsls	r2, r3, #0xa
 80017f2: 2000         	movs	r0, #0x0
 80017f4: 432d         	orrs	r5, r5
 80017f6: eb1c 36e2    	adds.w	r6, r12, r2, asr #15
 80017fa: 3f1a         	subs	r7, #0x1a
 80017fc: a71e         	adr	r7, #120 <firmware_image+0x181e>
 80017fe: 48e8         	ldr	r0, [pc, #0x3a0]        @ 0x8001ba0 <firmware_image+0x1ba0>
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
 8001ee4: f1bc 0f00    	cmp.w	r12, #0x0
 8001ee8: d032         	beq	0x8001f50 <firmware_image+0x1f50> @ imm = #0x64
 8001eea: 42a9         	cmp	r1, r5
 8001eec: d930         	bls	0x8001f50 <firmware_image+0x1f50> @ imm = #0x60
 8001eee: 2801         	cmp	r0, #0x1
 8001ef0: d02e         	beq	0x8001f50 <firmware_image+0x1f50> @ imm = #0x5c
 8001ef2: 2a01         	cmp	r2, #0x1
 8001ef4: d012         	beq	0x8001f1c <firmware_image+0x1f1c> @ imm = #0x24
 8001ef6: 2a07         	cmp	r2, #0x7
 8001ef8: d010         	beq	0x8001f1c <firmware_image+0x1f1c> @ imm = #0x20
 8001efa: 2a0d         	cmp	r2, #0xd
 8001efc: d00e         	beq	0x8001f1c <firmware_image+0x1f1c> @ imm = #0x1c
 8001efe: 2a13         	cmp	r2, #0x13
 8001f00: d00c         	beq	0x8001f1c <firmware_image+0x1f1c> @ imm = #0x18
 8001f02: 2a19         	cmp	r2, #0x19
 8001f04: d00a         	beq	0x8001f1c <firmware_image+0x1f1c> @ imm = #0x14
 8001f06: 2a04         	cmp	r2, #0x4
 8001f08: d015         	beq	0x8001f36 <firmware_image+0x1f36> @ imm = #0x2a
 8001f0a: 2a0a         	cmp	r2, #0xa
 8001f0c: d013         	beq	0x8001f36 <firmware_image+0x1f36> @ imm = #0x26
 8001f0e: 2a10         	cmp	r2, #0x10
 8001f10: d011         	beq	0x8001f36 <firmware_image+0x1f36> @ imm = #0x22
 8001f12: 2a16         	cmp	r2, #0x16
 8001f14: d00f         	beq	0x8001f36 <firmware_image+0x1f36> @ imm = #0x1e
 8001f16: 2a1c         	cmp	r2, #0x1c
 8001f18: d00d         	beq	0x8001f36 <firmware_image+0x1f36> @ imm = #0x1a
 8001f1a: e053         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0xa6
 8001f1c: 2110         	movs	r1, #0x10
 8001f1e: 4620         	mov	r0, r4
 8001f20: f000 fc1f    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x83e
 8001f24: 2108         	movs	r1, #0x8
 8001f26: 4620         	mov	r0, r4
 8001f28: f000 fc1d    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x83a
 8001f2c: 4641         	mov	r1, r8
 8001f2e: 4648         	mov	r0, r9
 8001f30: f000 fc17    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x82e
 8001f34: e046         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x8c
 8001f36: 2110         	movs	r1, #0x10
 8001f38: 4620         	mov	r0, r4
 8001f3a: f000 fc12    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x824
 8001f3e: 2108         	movs	r1, #0x8
 8001f40: 4620         	mov	r0, r4
 8001f42: f000 fc0e    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x81c
 8001f46: 4641         	mov	r1, r8
 8001f48: 4648         	mov	r0, r9
 8001f4a: f000 fc0a    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x814
 8001f4e: e039         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x72
 8001f50: b358         	cbz	r0, 0x8001faa <firmware_image+0x1faa> @ imm = #0x56
 8001f52: 42a9         	cmp	r1, r5
 8001f54: d936         	bls	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x6c
 8001f56: f241 00cc    	movw	r0, #0x10cc
 8001f5a: 4283         	cmp	r3, r0
 8001f5c: da26         	bge	0x8001fac <firmware_image+0x1fac> @ imm = #0x4c
 8001f5e: 2a01         	cmp	r2, #0x1
 8001f60: d00a         	beq	0x8001f78 <firmware_image+0x1f78> @ imm = #0x14
 8001f62: 2a0b         	cmp	r2, #0xb
 8001f64: d008         	beq	0x8001f78 <firmware_image+0x1f78> @ imm = #0x10
 8001f66: 2a15         	cmp	r2, #0x15
 8001f68: d006         	beq	0x8001f78 <firmware_image+0x1f78> @ imm = #0xc
 8001f6a: 2a06         	cmp	r2, #0x6
 8001f6c: d011         	beq	0x8001f92 <firmware_image+0x1f92> @ imm = #0x22
 8001f6e: 2a10         	cmp	r2, #0x10
 8001f70: d00f         	beq	0x8001f92 <firmware_image+0x1f92> @ imm = #0x1e
 8001f72: 2a1a         	cmp	r2, #0x1a
 8001f74: d00d         	beq	0x8001f92 <firmware_image+0x1f92> @ imm = #0x1a
 8001f76: e025         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x4a
 8001f78: 2110         	movs	r1, #0x10
 8001f7a: 4620         	mov	r0, r4
 8001f7c: f000 fbf1    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x7e2
 8001f80: 2108         	movs	r1, #0x8
 8001f82: 4620         	mov	r0, r4
 8001f84: f000 fbef    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x7de
 8001f88: 4641         	mov	r1, r8
 8001f8a: 4648         	mov	r0, r9
 8001f8c: f000 fbe9    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x7d2
 8001f90: e018         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x30
 8001f92: 2110         	movs	r1, #0x10
 8001f94: 4620         	mov	r0, r4
 8001f96: f000 fbe4    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x7c8
 8001f9a: 2108         	movs	r1, #0x8
 8001f9c: 4620         	mov	r0, r4
 8001f9e: f000 fbe0    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x7c0
 8001fa2: 4641         	mov	r1, r8
 8001fa4: 4648         	mov	r0, r9
 8001fa6: f000 fbdc    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x7b8
 8001faa: e00b         	b	0x8001fc4 <firmware_image+0x1fc4> @ imm = #0x16
 8001fac: 2110         	movs	r1, #0x10
 8001fae: 4620         	mov	r0, r4
 8001fb0: f000 fbd7    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x7ae
 8001fb4: 2108         	movs	r1, #0x8
 8001fb6: 4620         	mov	r0, r4
 8001fb8: f000 fbd5    	bl	0x8002766 <firmware_image+0x2766> @ imm = #0x7aa
 8001fbc: 4641         	mov	r1, r8
 8001fbe: 4648         	mov	r0, r9
 8001fc0: f000 fbcf    	bl	0x8002762 <firmware_image+0x2762> @ imm = #0x79e
 8001fc4: 4812         	ldr	r0, [pc, #0x48]         @ 0x8002010 <firmware_image+0x2010>
 8001fc6: 7800         	ldrb	r0, [r0]
 8001fc8: 2800         	cmp	r0, #0x0
 8001fca: d010         	beq	0x8001fee <firmware_image+0x1fee> @ imm = #0x20
 8001fcc: 88b0         	ldrh	r0, [r6, #0x4]
 8001fce: 1c40         	adds	r0, r0, #0x1
 8001fd0: b280         	uxth	r0, r0
 8001fd2: 80b0         	strh	r0, [r6, #0x4]
 8001fd4: 281e         	cmp	r0, #0x1e
 8001fd6: d901         	bls	0x8001fdc <firmware_image+0x1fdc> @ imm = #0x2
 8001fd8: 2001         	movs	r0, #0x1
 8001fda: 80b0         	strh	r0, [r6, #0x4]
 8001fdc: 480d         	ldr	r0, [pc, #0x34]         @ 0x8002014 <firmware_image+0x2014>
 8001fde: 7800         	ldrb	r0, [r0]
 8001fe0: 2802         	cmp	r0, #0x2
 8001fe2: d904         	bls	0x8001fee <firmware_image+0x1fee> @ imm = #0x8
 8001fe4: 6838         	ldr	r0, [r7]
 8001fe6: 42a8         	cmp	r0, r5
 8001fe8: d201         	bhs	0x8001fee <firmware_image+0x1fee> @ imm = #0x2
 8001fea: 2000         	movs	r0, #0x0
 8001fec: 80b0         	strh	r0, [r6, #0x4]
 8001fee: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
 8001ff2: 0000         	movs	r0, r0
 8001ff4: 0084         	lsls	r4, r0, #0x2
 8001ff6: 2000         	movs	r0, #0x0
 8001ff8: 0400         	lsls	r0, r0, #0x10
 8001ffa: 4800         	ldr	r0, [pc, #0x0]          @ 0x8001ffc <firmware_image+0x1ffc>
 8001ffc: 0167         	lsls	r7, r4, #0x5
 8001ffe: 2000         	movs	r0, #0x0
 8002000: 0114         	lsls	r4, r2, #0x4
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
 8002078: 4901         	ldr	r1, [pc, #0x4]          @ 0x8002080 <firmware_image+0x2080>
 800207a: 6048         	str	r0, [r1, #0x4]
 800207c: 4770         	bx	lr
 800207e: 0000         	movs	r0, r0
 8002080: 0000         	movs	r0, r0
 8002082: 4002         	ands	r2, r0
 8002084: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002088: b08c         	sub	sp, #0x30
 800208a: 2101         	movs	r1, #0x1
 800208c: 4608         	mov	r0, r1
 800208e: f002 f961    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x22c2
 8002092: 4f30         	ldr	r7, [pc, #0xc0]         @ 0x8002154 <firmware_image+0x2154>
 8002094: 4638         	mov	r0, r7
 8002096: f000 f863    	bl	0x8002160 <firmware_image+0x2160> @ imm = #0xc6
 800209a: 482f         	ldr	r0, [pc, #0xbc]         @ 0x8002158 <firmware_image+0x2158>
 800209c: 9001         	str	r0, [sp, #0x4]
 800209e: 482f         	ldr	r0, [pc, #0xbc]         @ 0x800215c <firmware_image+0x215c>
 80020a0: 9002         	str	r0, [sp, #0x8]
 80020a2: 2010         	movs	r0, #0x10
 80020a4: 9003         	str	r0, [sp, #0xc]
 80020a6: 2520         	movs	r5, #0x20
 80020a8: 9504         	str	r5, [sp, #0x10]
 80020aa: 2680         	movs	r6, #0x80
 80020ac: 9606         	str	r6, [sp, #0x18]
 80020ae: 2400         	movs	r4, #0x0
 80020b0: 9407         	str	r4, [sp, #0x1c]
 80020b2: 9408         	str	r4, [sp, #0x20]
 80020b4: 9405         	str	r4, [sp, #0x14]
 80020b6: 9409         	str	r4, [sp, #0x24]
 80020b8: f44f 5040    	mov.w	r0, #0x3000
 80020bc: 900a         	str	r0, [sp, #0x28]
 80020be: 940b         	str	r4, [sp, #0x2c]
 80020c0: a901         	add	r1, sp, #0x4
 80020c2: 4638         	mov	r0, r7
 80020c4: f000 f8bc    	bl	0x8002240 <firmware_image+0x2240> @ imm = #0x178
 80020c8: f8df 808c    	ldr.w	r8, [pc, #0x8c]         @ 0x8002158 <firmware_image+0x2158>
 80020cc: 2201         	movs	r2, #0x1
 80020ce: f1a8 0828    	sub.w	r8, r8, #0x28
 80020d2: 2180         	movs	r1, #0x80
 80020d4: 4640         	mov	r0, r8
 80020d6: f003 fe27    	bl	0x8005d28 <firmware_image+0x5d28> @ imm = #0x3c4e
 80020da: 2201         	movs	r2, #0x1
 80020dc: 2102         	movs	r1, #0x2
 80020de: 4638         	mov	r0, r7
 80020e0: f000 f8a4    	bl	0x800222c <firmware_image+0x222c> @ imm = #0x148
 80020e4: 2101         	movs	r1, #0x1
 80020e6: 4638         	mov	r0, r7
 80020e8: f000 f886    	bl	0x80021f8 <firmware_image+0x21f8> @ imm = #0x10c
 80020ec: 4f19         	ldr	r7, [pc, #0x64]         @ 0x8002154 <firmware_image+0x2154>
 80020ee: 3714         	adds	r7, #0x14
 80020f0: 4638         	mov	r0, r7
 80020f2: f000 f835    	bl	0x8002160 <firmware_image+0x2160> @ imm = #0x6a
 80020f6: 4818         	ldr	r0, [pc, #0x60]         @ 0x8002158 <firmware_image+0x2158>
 80020f8: 1f00         	subs	r0, r0, #0x4
 80020fa: 9001         	str	r0, [sp, #0x4]
 80020fc: 4817         	ldr	r0, [pc, #0x5c]         @ 0x800215c <firmware_image+0x215c>
 80020fe: 3820         	subs	r0, #0x20
 8002100: 9002         	str	r0, [sp, #0x8]
 8002102: 9403         	str	r4, [sp, #0xc]
 8002104: 9504         	str	r5, [sp, #0x10]
 8002106: 9606         	str	r6, [sp, #0x18]
 8002108: 9407         	str	r4, [sp, #0x1c]
 800210a: 9408         	str	r4, [sp, #0x20]
 800210c: 9405         	str	r4, [sp, #0x14]
 800210e: 9509         	str	r5, [sp, #0x24]
 8002110: 0228         	lsls	r0, r5, #0x8
 8002112: 900a         	str	r0, [sp, #0x28]
 8002114: 940b         	str	r4, [sp, #0x2c]
 8002116: a901         	add	r1, sp, #0x4
 8002118: 4638         	mov	r0, r7
 800211a: f000 f891    	bl	0x8002240 <firmware_image+0x2240> @ imm = #0x122
 800211e: 2201         	movs	r2, #0x1
 8002120: 2140         	movs	r1, #0x40
 8002122: 4640         	mov	r0, r8
 8002124: f003 fe00    	bl	0x8005d28 <firmware_image+0x5d28> @ imm = #0x3c00
 8002128: 2201         	movs	r2, #0x1
 800212a: 2102         	movs	r1, #0x2
 800212c: 4638         	mov	r0, r7
 800212e: f000 f87d    	bl	0x800222c <firmware_image+0x222c> @ imm = #0xfa
 8002132: 2201         	movs	r2, #0x1
 8002134: 2104         	movs	r1, #0x4
 8002136: 4638         	mov	r0, r7
 8002138: f000 f878    	bl	0x800222c <firmware_image+0x222c> @ imm = #0xf0
 800213c: 2201         	movs	r2, #0x1
 800213e: 2108         	movs	r1, #0x8
 8002140: 4638         	mov	r0, r7
 8002142: f000 f873    	bl	0x800222c <firmware_image+0x222c> @ imm = #0xe6
 8002146: 2101         	movs	r1, #0x1
 8002148: 4638         	mov	r0, r7
 800214a: f000 f855    	bl	0x80021f8 <firmware_image+0x21f8> @ imm = #0xaa
 800214e: b00c         	add	sp, #0x30
 8002150: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8002154: 0044         	lsls	r4, r0, #0x1
 8002156: 4002         	ands	r2, r0
 8002158: 4428         	add	r0, r5
 800215a: 4000         	ands	r0, r0
 800215c: 04d0         	lsls	r0, r2, #0x13
 800215e: 2000         	movs	r0, #0x0
 8002160: 6801         	ldr	r1, [r0]
 8002162: f64f 72fe    	movw	r2, #0xfffe
 8002166: 4011         	ands	r1, r2
 8002168: 6001         	str	r1, [r0]
 800216a: 2100         	movs	r1, #0x0
 800216c: 6001         	str	r1, [r0]
 800216e: 6041         	str	r1, [r0, #0x4]
 8002170: 6081         	str	r1, [r0, #0x8]
 8002172: 60c1         	str	r1, [r0, #0xc]
 8002174: 491f         	ldr	r1, [pc, #0x7c]         @ 0x80021f4 <firmware_image+0x21f4>
 8002176: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x80021f4 <firmware_image+0x21f4>
 8002178: 3908         	subs	r1, #0x8
 800217a: 4290         	cmp	r0, r2
 800217c: d104         	bne	0x8002188 <firmware_image+0x2188> @ imm = #0x8
 800217e: 6848         	ldr	r0, [r1, #0x4]
 8002180: f040 000f    	orr	r0, r0, #0xf
 8002184: 6048         	str	r0, [r1, #0x4]
 8002186: 4770         	bx	lr
 8002188: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x80021f4 <firmware_image+0x21f4>
 800218a: 3214         	adds	r2, #0x14
 800218c: 4290         	cmp	r0, r2
 800218e: d104         	bne	0x800219a <firmware_image+0x219a> @ imm = #0x8
 8002190: 6848         	ldr	r0, [r1, #0x4]
 8002192: f040 00f0    	orr	r0, r0, #0xf0
 8002196: 6048         	str	r0, [r1, #0x4]
 8002198: 4770         	bx	lr
 800219a: 4a16         	ldr	r2, [pc, #0x58]         @ 0x80021f4 <firmware_image+0x21f4>
 800219c: 3228         	adds	r2, #0x28
 800219e: 4290         	cmp	r0, r2
 80021a0: d104         	bne	0x80021ac <firmware_image+0x21ac> @ imm = #0x8
 80021a2: 6848         	ldr	r0, [r1, #0x4]
 80021a4: f440 6070    	orr	r0, r0, #0xf00
 80021a8: 6048         	str	r0, [r1, #0x4]
 80021aa: 4770         	bx	lr
 80021ac: 4a11         	ldr	r2, [pc, #0x44]         @ 0x80021f4 <firmware_image+0x21f4>
 80021ae: 323c         	adds	r2, #0x3c
 80021b0: 4290         	cmp	r0, r2
 80021b2: d104         	bne	0x80021be <firmware_image+0x21be> @ imm = #0x8
 80021b4: 6848         	ldr	r0, [r1, #0x4]
 80021b6: f440 4070    	orr	r0, r0, #0xf000
 80021ba: 6048         	str	r0, [r1, #0x4]
 80021bc: 4770         	bx	lr
 80021be: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x80021f4 <firmware_image+0x21f4>
 80021c0: 3250         	adds	r2, #0x50
 80021c2: 4290         	cmp	r0, r2
 80021c4: d104         	bne	0x80021d0 <firmware_image+0x21d0> @ imm = #0x8
 80021c6: 6848         	ldr	r0, [r1, #0x4]
 80021c8: f440 2070    	orr	r0, r0, #0xf0000
 80021cc: 6048         	str	r0, [r1, #0x4]
 80021ce: 4770         	bx	lr
 80021d0: 4a08         	ldr	r2, [pc, #0x20]         @ 0x80021f4 <firmware_image+0x21f4>
 80021d2: 3264         	adds	r2, #0x64
 80021d4: 4290         	cmp	r0, r2
 80021d6: d104         	bne	0x80021e2 <firmware_image+0x21e2> @ imm = #0x8
 80021d8: 6848         	ldr	r0, [r1, #0x4]
 80021da: f440 0070    	orr	r0, r0, #0xf00000
 80021de: 6048         	str	r0, [r1, #0x4]
 80021e0: 4770         	bx	lr
 80021e2: 4a04         	ldr	r2, [pc, #0x10]         @ 0x80021f4 <firmware_image+0x21f4>
 80021e4: 3278         	adds	r2, #0x78
 80021e6: 4290         	cmp	r0, r2
 80021e8: d1fa         	bne	0x80021e0 <firmware_image+0x21e0> @ imm = #-0xc
 80021ea: 6848         	ldr	r0, [r1, #0x4]
 80021ec: f040 6070    	orr	r0, r0, #0xf000000
 80021f0: 6048         	str	r0, [r1, #0x4]
 80021f2: 4770         	bx	lr
 80021f4: 0008         	movs	r0, r1
 80021f6: 4002         	ands	r2, r0
 80021f8: 2900         	cmp	r1, #0x0
 80021fa: d004         	beq	0x8002206 <firmware_image+0x2206> @ imm = #0x8
 80021fc: 6801         	ldr	r1, [r0]
 80021fe: f041 0101    	orr	r1, r1, #0x1
 8002202: 6001         	str	r1, [r0]
 8002204: 4770         	bx	lr
 8002206: 6801         	ldr	r1, [r0]
 8002208: f64f 72fe    	movw	r2, #0xfffe
 800220c: 4011         	ands	r1, r2
 800220e: 6001         	str	r1, [r0]
 8002210: 4770         	bx	lr
 8002212: 6840         	ldr	r0, [r0, #0x4]
 8002214: b280         	uxth	r0, r0
 8002216: 4770         	bx	lr
 8002218: 4903         	ldr	r1, [pc, #0xc]          @ 0x8002228 <firmware_image+0x2228>
 800221a: 6809         	ldr	r1, [r1]
 800221c: 4201         	tst	r1, r0
 800221e: d001         	beq	0x8002224 <firmware_image+0x2224> @ imm = #0x2
 8002220: 2001         	movs	r0, #0x1
 8002222: 4770         	bx	lr
 8002224: 2000         	movs	r0, #0x0
 8002226: 4770         	bx	lr
 8002228: 0000         	movs	r0, r0
 800222a: 4002         	ands	r2, r0
 800222c: 2a00         	cmp	r2, #0x0
 800222e: d003         	beq	0x8002238 <firmware_image+0x2238> @ imm = #0x6
 8002230: 6802         	ldr	r2, [r0]
 8002232: 430a         	orrs	r2, r1
 8002234: 6002         	str	r2, [r0]
 8002236: 4770         	bx	lr
 8002238: 6802         	ldr	r2, [r0]
 800223a: 438a         	bics	r2, r1
 800223c: 6002         	str	r2, [r0]
 800223e: 4770         	bx	lr
 8002240: b530         	push	{r4, r5, lr}
 8002242: 6802         	ldr	r2, [r0]
 8002244: f647 73f0    	movw	r3, #0x7ff0
 8002248: 439a         	bics	r2, r3
 800224a: 6a0c         	ldr	r4, [r1, #0x20]
 800224c: 688b         	ldr	r3, [r1, #0x8]
 800224e: 4323         	orrs	r3, r4
 8002250: e9d1 4504    	ldrd	r4, r5, [r1, #16]
 8002254: 432c         	orrs	r4, r5
 8002256: 4323         	orrs	r3, r4
 8002258: 698c         	ldr	r4, [r1, #0x18]
 800225a: 4323         	orrs	r3, r4
 800225c: 69cc         	ldr	r4, [r1, #0x1c]
 800225e: 4323         	orrs	r3, r4
 8002260: 6a4c         	ldr	r4, [r1, #0x24]
 8002262: 4323         	orrs	r3, r4
 8002264: 6a8c         	ldr	r4, [r1, #0x28]
 8002266: 4323         	orrs	r3, r4
 8002268: 4313         	orrs	r3, r2
 800226a: 6003         	str	r3, [r0]
 800226c: 68ca         	ldr	r2, [r1, #0xc]
 800226e: 6042         	str	r2, [r0, #0x4]
 8002270: 680a         	ldr	r2, [r1]
 8002272: 6082         	str	r2, [r0, #0x8]
 8002274: 6849         	ldr	r1, [r1, #0x4]
 8002276: 60c1         	str	r1, [r0, #0xc]
 8002278: bd30         	pop	{r4, r5, pc}
 800227a: 4602         	mov	r2, r0
 800227c: dc03         	bgt	0x8002286 <firmware_image+0x2286> @ imm = #0x6
 800227e: 4240         	rsbs	r0, r0, #0
 8002280: 4282         	cmp	r2, r0
 8002282: db00         	blt	0x8002286 <firmware_image+0x2286> @ imm = #0x0
 8002284: 4610         	mov	r0, r2
 8002286: 4770         	bx	lr
 8002288: 4770         	bx	lr
 800228a: 0000         	movs	r0, r0
 800228c: b530         	push	{r4, r5, lr}
 800228e: 4835         	ldr	r0, [pc, #0xd4]         @ 0x8002364 <firmware_image+0x2364>
 8002290: 6800         	ldr	r0, [r0]
 8002292: 4935         	ldr	r1, [pc, #0xd4]         @ 0x8002368 <firmware_image+0x2368>
 8002294: f000 0002    	and	r0, r0, #0x2
 8002298: 8088         	strh	r0, [r1, #0x4]
 800229a: 88cb         	ldrh	r3, [r1, #0x6]
 800229c: 461d         	mov	r5, r3
 800229e: 4383         	bics	r3, r0
 80022a0: 814b         	strh	r3, [r1, #0xa]
 80022a2: 461c         	mov	r4, r3
 80022a4: ea20 0205    	bic.w	r2, r0, r5
 80022a8: 810a         	strh	r2, [r1, #0x8]
 80022aa: 80c8         	strh	r0, [r1, #0x6]
 80022ac: f64f 73ff    	movw	r3, #0xffff
 80022b0: 2800         	cmp	r0, #0x0
 80022b2: d005         	beq	0x80022c0 <firmware_image+0x22c0> @ imm = #0xa
 80022b4: 8a08         	ldrh	r0, [r1, #0x10]
 80022b6: 4298         	cmp	r0, r3
 80022b8: d207         	bhs	0x80022ca <firmware_image+0x22ca> @ imm = #0xe
 80022ba: 1c40         	adds	r0, r0, #0x1
 80022bc: 8208         	strh	r0, [r1, #0x10]
 80022be: e004         	b	0x80022ca <firmware_image+0x22ca> @ imm = #0x8
 80022c0: 8a48         	ldrh	r0, [r1, #0x12]
 80022c2: 4298         	cmp	r0, r3
 80022c4: d201         	bhs	0x80022ca <firmware_image+0x22ca> @ imm = #0x2
 80022c6: 1c40         	adds	r0, r0, #0x1
 80022c8: 8248         	strh	r0, [r1, #0x12]
 80022ca: 2300         	movs	r3, #0x0
 80022cc: b172         	cbz	r2, 0x80022ec <firmware_image+0x22ec> @ imm = #0x1c
 80022ce: 820b         	strh	r3, [r1, #0x10]
 80022d0: 8a48         	ldrh	r0, [r1, #0x12]
 80022d2: 81c8         	strh	r0, [r1, #0xe]
 80022d4: 3851         	subs	r0, #0x51
 80022d6: 2822         	cmp	r0, #0x22
 80022d8: d208         	bhs	0x80022ec <firmware_image+0x22ec> @ imm = #0x10
 80022da: 7848         	ldrb	r0, [r1, #0x1]
 80022dc: b930         	cbnz	r0, 0x80022ec <firmware_image+0x22ec> @ imm = #0xc
 80022de: 2001         	movs	r0, #0x1
 80022e0: 7048         	strb	r0, [r1, #0x1]
 80022e2: 614b         	str	r3, [r1, #0x14]
 80022e4: 700b         	strb	r3, [r1]
 80022e6: 6988         	ldr	r0, [r1, #0x18]
 80022e8: 1c40         	adds	r0, r0, #0x1
 80022ea: 6188         	str	r0, [r1, #0x18]
 80022ec: 2c00         	cmp	r4, #0x0
 80022ee: d012         	beq	0x8002316 <firmware_image+0x2316> @ imm = #0x24
 80022f0: 824b         	strh	r3, [r1, #0x12]
 80022f2: 8a08         	ldrh	r0, [r1, #0x10]
 80022f4: 8188         	strh	r0, [r1, #0xc]
 80022f6: 784a         	ldrb	r2, [r1, #0x1]
 80022f8: 2a00         	cmp	r2, #0x0
 80022fa: d00c         	beq	0x8002316 <firmware_image+0x2316> @ imm = #0x18
 80022fc: 1e82         	subs	r2, r0, #0x2
 80022fe: 2a04         	cmp	r2, #0x4
 8002300: d814         	bhi	0x800232c <firmware_image+0x232c> @ imm = #0x28
 8002302: 7808         	ldrb	r0, [r1]
 8002304: 2817         	cmp	r0, #0x17
 8002306: d207         	bhs	0x8002318 <firmware_image+0x2318> @ imm = #0xe
 8002308: 694a         	ldr	r2, [r1, #0x14]
 800230a: 0052         	lsls	r2, r2, #0x1
 800230c: f022 0201    	bic	r2, r2, #0x1
 8002310: 614a         	str	r2, [r1, #0x14]
 8002312: 1c40         	adds	r0, r0, #0x1
 8002314: 7008         	strb	r0, [r1]
 8002316: bd30         	pop	{r4, r5, pc}
 8002318: 694a         	ldr	r2, [r1, #0x14]
 800231a: 0052         	lsls	r2, r2, #0x1
 800231c: f022 0201    	bic	r2, r2, #0x1
 8002320: 614a         	str	r2, [r1, #0x14]
 8002322: 1c40         	adds	r0, r0, #0x1
 8002324: 7008         	strb	r0, [r1]
 8002326: 61ca         	str	r2, [r1, #0x1c]
 8002328: 704b         	strb	r3, [r1, #0x1]
 800232a: bd30         	pop	{r4, r5, pc}
 800232c: 1f80         	subs	r0, r0, #0x6
 800232e: 2806         	cmp	r0, #0x6
 8002330: d214         	bhs	0x800235c <firmware_image+0x235c> @ imm = #0x28
 8002332: 7808         	ldrb	r0, [r1]
 8002334: 2817         	cmp	r0, #0x17
 8002336: d207         	bhs	0x8002348 <firmware_image+0x2348> @ imm = #0xe
 8002338: 694a         	ldr	r2, [r1, #0x14]
 800233a: 0052         	lsls	r2, r2, #0x1
 800233c: f042 0201    	orr	r2, r2, #0x1
 8002340: 614a         	str	r2, [r1, #0x14]
 8002342: 1c40         	adds	r0, r0, #0x1
 8002344: 7008         	strb	r0, [r1]
 8002346: bd30         	pop	{r4, r5, pc}
 8002348: 694a         	ldr	r2, [r1, #0x14]
 800234a: 0052         	lsls	r2, r2, #0x1
 800234c: f042 0201    	orr	r2, r2, #0x1
 8002350: 614a         	str	r2, [r1, #0x14]
 8002352: 1c40         	adds	r0, r0, #0x1
 8002354: 7008         	strb	r0, [r1]
 8002356: 61ca         	str	r2, [r1, #0x1c]
 8002358: 704b         	strb	r3, [r1, #0x1]
 800235a: bd30         	pop	{r4, r5, pc}
 800235c: 704b         	strb	r3, [r1, #0x1]
 800235e: 614b         	str	r3, [r1, #0x14]
 8002360: 700b         	strb	r3, [r1]
 8002362: bd30         	pop	{r4, r5, pc}
 8002364: 1410         	asrs	r0, r2, #0x10
 8002366: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002368 <firmware_image+0x2368>
 8002368: 016c         	lsls	r4, r5, #0x5
 800236a: 2000         	movs	r0, #0x0
 800236c: 4a11         	ldr	r2, [pc, #0x44]         @ 0x80023b4 <firmware_image+0x23b4>
 800236e: 2300         	movs	r3, #0x0
 8002370: 4610         	mov	r0, r2
 8002372: 78d1         	ldrb	r1, [r2, #0x3]
 8002374: 69c0         	ldr	r0, [r0, #0x1c]
 8002376: 2900         	cmp	r1, #0x0
 8002378: d004         	beq	0x8002384 <firmware_image+0x2384> @ imm = #0x8
 800237a: 2901         	cmp	r1, #0x1
 800237c: d006         	beq	0x800238c <firmware_image+0x238c> @ imm = #0xc
 800237e: 2902         	cmp	r1, #0x2
 8002380: d10e         	bne	0x80023a0 <firmware_image+0x23a0> @ imm = #0x1c
 8002382: e00b         	b	0x800239c <firmware_image+0x239c> @ imm = #0x16
 8002384: b160         	cbz	r0, 0x80023a0 <firmware_image+0x23a0> @ imm = #0x18
 8002386: 2101         	movs	r1, #0x1
 8002388: 70d1         	strb	r1, [r2, #0x3]
 800238a: e009         	b	0x80023a0 <firmware_image+0x23a0> @ imm = #0x12
 800238c: b120         	cbz	r0, 0x8002398 <firmware_image+0x2398> @ imm = #0x8
 800238e: 7891         	ldrb	r1, [r2, #0x2]
 8002390: 6251         	str	r1, [r2, #0x24]
 8002392: 2102         	movs	r1, #0x2
 8002394: 70d1         	strb	r1, [r2, #0x3]
 8002396: e003         	b	0x80023a0 <firmware_image+0x23a0> @ imm = #0x6
 8002398: 70d3         	strb	r3, [r2, #0x3]
 800239a: e001         	b	0x80023a0 <firmware_image+0x23a0> @ imm = #0x2
 800239c: b900         	cbnz	r0, 0x80023a0 <firmware_image+0x23a0> @ imm = #0x0
 800239e: 70d3         	strb	r3, [r2, #0x3]
 80023a0: b128         	cbz	r0, 0x80023ae <firmware_image+0x23ae> @ imm = #0xa
 80023a2: f000 000f    	and	r0, r0, #0xf
 80023a6: 6210         	str	r0, [r2, #0x20]
 80023a8: 7090         	strb	r0, [r2, #0x2]
 80023aa: 61d3         	str	r3, [r2, #0x1c]
 80023ac: 4770         	bx	lr
 80023ae: 6213         	str	r3, [r2, #0x20]
 80023b0: 7093         	strb	r3, [r2, #0x2]
 80023b2: 4770         	bx	lr
 80023b4: 016c         	lsls	r4, r5, #0x5
 80023b6: 2000         	movs	r0, #0x0
 80023b8: 4803         	ldr	r0, [pc, #0xc]          @ 0x80023c8 <firmware_image+0x23c8>
 80023ba: 7800         	ldrb	r0, [r0]
 80023bc: 2800         	cmp	r0, #0x0
 80023be: d101         	bne	0x80023c4 <firmware_image+0x23c4> @ imm = #0x2
 80023c0: f7ff bfd4    	b.w	0x800236c <firmware_image+0x236c> @ imm = #-0x58
 80023c4: 4770         	bx	lr
 80023c6: 0000         	movs	r0, r0
 80023c8: 021e         	lsls	r6, r3, #0x8
 80023ca: 2000         	movs	r0, #0x0
 80023cc: 1e40         	subs	r0, r0, #0x1
 80023ce: 1c41         	adds	r1, r0, #0x1
 80023d0: d1fc         	bne	0x80023cc <firmware_image+0x23cc> @ imm = #-0x8
 80023d2: 4770         	bx	lr
 80023d4: b510         	push	{r4, lr}
 80023d6: f44f 5480    	mov.w	r4, #0x1000
 80023da: 4620         	mov	r0, r4
 80023dc: f000 f810    	bl	0x8002400 <firmware_image+0x2400> @ imm = #0x20
 80023e0: 2800         	cmp	r0, #0x0
 80023e2: d006         	beq	0x80023f2 <firmware_image+0x23f2> @ imm = #0xc
 80023e4: f001 f9cf    	bl	0x8003786 <firmware_image+0x3786> @ imm = #0x139e
 80023e8: 4620         	mov	r0, r4
 80023ea: e8bd 4010    	pop.w	{r4, lr}
 80023ee: f000 b801    	b.w	0x80023f4 <firmware_image+0x23f4> @ imm = #0x2
 80023f2: bd10         	pop	{r4, pc}
 80023f4: 4901         	ldr	r1, [pc, #0x4]          @ 0x80023fc <firmware_image+0x23fc>
 80023f6: 6008         	str	r0, [r1]
 80023f8: 4770         	bx	lr
 80023fa: 0000         	movs	r0, r0
 80023fc: 0414         	lsls	r4, r2, #0x10
 80023fe: 4001         	ands	r1, r0
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
 800241c: 0414         	lsls	r4, r2, #0x10
 800241e: 4001         	ands	r1, r0
 8002420: 4901         	ldr	r1, [pc, #0x4]          @ 0x8002428 <firmware_image+0x2428>
 8002422: 60c8         	str	r0, [r1, #0xc]
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
 80024d0: 2000         	movs	r0, #0x0
 80024d2: 4002         	ands	r2, r0
 80024d4: 4804         	ldr	r0, [pc, #0x10]         @ 0x80024e8 <firmware_image+0x24e8>
 80024d6: 6901         	ldr	r1, [r0, #0x10]
 80024d8: 0609         	lsls	r1, r1, #0x18
 80024da: d503         	bpl	0x80024e4 <firmware_image+0x24e4> @ imm = #0x6
 80024dc: 4903         	ldr	r1, [pc, #0xc]          @ 0x80024ec <firmware_image+0x24ec>
 80024de: 6041         	str	r1, [r0, #0x4]
 80024e0: 4903         	ldr	r1, [pc, #0xc]          @ 0x80024f0 <firmware_image+0x24f0>
 80024e2: 6041         	str	r1, [r0, #0x4]
 80024e4: 4770         	bx	lr
 80024e6: 0000         	movs	r0, r0
 80024e8: 2000         	movs	r0, #0x0
 80024ea: 4002         	ands	r2, r0
 80024ec: 0123         	lsls	r3, r4, #0x4
 80024ee: 4567         	cmp	r7, r12
 80024f0: 89ab         	ldrh	r3, [r5, #0xc]
 80024f2: cdef         	ldm	r5, {r0, r1, r2, r3, r5, r6, r7}
 80024f4: b500         	push	{lr}
 80024f6: 4603         	mov	r3, r0
 80024f8: f7ff ffb6    	bl	0x8002468 <firmware_image+0x2468> @ imm = #-0x94
 80024fc: 1e5b         	subs	r3, r3, #0x1
 80024fe: 2801         	cmp	r0, #0x1
 8002500: d101         	bne	0x8002506 <firmware_image+0x2506> @ imm = #0x2
 8002502: 2b00         	cmp	r3, #0x0
 8002504: d1f8         	bne	0x80024f8 <firmware_image+0x24f8> @ imm = #-0x10
 8002506: 2801         	cmp	r0, #0x1
 8002508: d100         	bne	0x800250c <firmware_image+0x250c> @ imm = #0x0
 800250a: 2004         	movs	r0, #0x4
 800250c: bd00         	pop	{pc}
 800250e: 0000         	movs	r0, r0
 8002510: 4903         	ldr	r1, [pc, #0xc]          @ 0x8002520 <firmware_image+0x2520>
 8002512: 2000         	movs	r0, #0x0
 8002514: 8008         	strh	r0, [r1]
 8002516: 8048         	strh	r0, [r1, #0x2]
 8002518: 4902         	ldr	r1, [pc, #0x8]          @ 0x8002524 <firmware_image+0x2524>
 800251a: 8008         	strh	r0, [r1]
 800251c: 8048         	strh	r0, [r1, #0x2]
 800251e: 4770         	bx	lr
 8002520: 025c         	lsls	r4, r3, #0x9
 8002522: 2000         	movs	r0, #0x0
 8002524: 0240         	lsls	r0, r0, #0x9
 8002526: 2000         	movs	r0, #0x0
 8002528: b570         	push	{r4, r5, r6, lr}
 800252a: f002 fc0d    	bl	0x8004d48 <firmware_image+0x4d48> @ imm = #0x281a
 800252e: 491d         	ldr	r1, [pc, #0x74]         @ 0x80025a4 <firmware_image+0x25a4>
 8002530: 6008         	str	r0, [r1]
 8002532: f7ff fbf7    	bl	0x8001d24 <firmware_image+0x1d24> @ imm = #-0x812
 8002536: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x80025a8 <firmware_image+0x25a8>
 8002538: 6020         	str	r0, [r4]
 800253a: f000 f915    	bl	0x8002768 <firmware_image+0x2768> @ imm = #0x22a
 800253e: 4601         	mov	r1, r0
 8002540: 6820         	ldr	r0, [r4]
 8002542: f001 fe95    	bl	0x8004270 <firmware_image+0x4270> @ imm = #0x1d2a
 8002546: 4d19         	ldr	r5, [pc, #0x64]         @ 0x80025ac <firmware_image+0x25ac>
 8002548: 6028         	str	r0, [r5]
 800254a: 4c19         	ldr	r4, [pc, #0x64]         @ 0x80025b0 <firmware_image+0x25b0>
 800254c: f9b5 0000    	ldrsh.w	r0, [r5]
 8002550: f9b4 1000    	ldrsh.w	r1, [r4]
 8002554: 4348         	muls	r0, r1, r0
 8002556: f242 7110    	movw	r1, #0x2710
 800255a: fb90 f0f1    	sdiv	r0, r0, r1
 800255e: 215e         	movs	r1, #0x5e
 8002560: 4348         	muls	r0, r1, r0
 8002562: f003 ff5d    	bl	0x8006420 <firmware_image+0x6420> @ imm = #0x3eba
 8002566: 4e13         	ldr	r6, [pc, #0x4c]         @ 0x80025b4 <firmware_image+0x25b4>
 8002568: 60f0         	str	r0, [r6, #0xc]
 800256a: f9b5 1002    	ldrsh.w	r1, [r5, #0x2]
 800256e: 4a12         	ldr	r2, [pc, #0x48]         @ 0x80025b8 <firmware_image+0x25b8>
 8002570: 2000         	movs	r0, #0x0
 8002572: f001 f937    	bl	0x80037e4 <firmware_image+0x37e4> @ imm = #0x126e
 8002576: 8060         	strh	r0, [r4, #0x2]
 8002578: f9b6 0002    	ldrsh.w	r0, [r6, #0x2]
 800257c: 68f1         	ldr	r1, [r6, #0xc]
 800257e: f000 ffed    	bl	0x800355c <firmware_image+0x355c> @ imm = #0xfda
 8002582: 8020         	strh	r0, [r4]
 8002584: 6820         	ldr	r0, [r4]
 8002586: f002 f935    	bl	0x80047f4 <firmware_image+0x47f4> @ imm = #0x226a
 800258a: 6020         	str	r0, [r4]
 800258c: f000 f8ec    	bl	0x8002768 <firmware_image+0x2768> @ imm = #0x1d8
 8002590: 4601         	mov	r1, r0
 8002592: 6820         	ldr	r0, [r4]
 8002594: f002 f95e    	bl	0x8004854 <firmware_image+0x4854> @ imm = #0x22bc
 8002598: 4908         	ldr	r1, [pc, #0x20]         @ 0x80025bc <firmware_image+0x25bc>
 800259a: 6008         	str	r0, [r1]
 800259c: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 80025a0: f002 ba8c    	b.w	0x8004abc <firmware_image+0x4abc> @ imm = #0x2518
 80025a4: 024c         	lsls	r4, r1, #0x9
 80025a6: 2000         	movs	r0, #0x0
 80025a8: 0250         	lsls	r0, r2, #0x9
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
 80025d8: 7101         	strb	r1, [r0, #0x4]
 80025da: 490a         	ldr	r1, [pc, #0x28]         @ 0x8002604 <firmware_image+0x2604>
 80025dc: 7809         	ldrb	r1, [r1]
 80025de: b159         	cbz	r1, 0x80025f8 <firmware_image+0x25f8> @ imm = #0x16
 80025e0: 7901         	ldrb	r1, [r0, #0x4]
 80025e2: 7141         	strb	r1, [r0, #0x5]
 80025e4: 4770         	bx	lr
 80025e6: f041 0101    	orr	r1, r1, #0x1
 80025ea: 7101         	strb	r1, [r0, #0x4]
 80025ec: e7ef         	b	0x80025ce <firmware_image+0x25ce> @ imm = #-0x22
 80025ee: 7901         	ldrb	r1, [r0, #0x4]
 80025f0: f041 0102    	orr	r1, r1, #0x2
 80025f4: 7101         	strb	r1, [r0, #0x4]
 80025f6: e7f0         	b	0x80025da <firmware_image+0x25da> @ imm = #-0x20
 80025f8: 7901         	ldrb	r1, [r0, #0x4]
 80025fa: 7181         	strb	r1, [r0, #0x6]
 80025fc: 4770         	bx	lr
 80025fe: 0000         	movs	r0, r0
 8002600: 013d         	lsls	r5, r7, #0x4
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
 800264e: f000 0013    	and	r0, r0, #0x13
 8002652: 1ca4         	adds	r4, r4, #0x2
 8002654: 1c5b         	adds	r3, r3, #0x1
 8002656: b29b         	uxth	r3, r3
 8002658: 4293         	cmp	r3, r2
 800265a: d3f5         	blo	0x8002648 <firmware_image+0x2648> @ imm = #-0x16
 800265c: bd10         	pop	{r4, pc}
 800265e: 8800         	ldrh	r0, [r0]
 8002660: 4770         	bx	lr
 8002662: 0000         	movs	r0, r0
 8002664: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002668: 4688         	mov	r8, r1
 800266a: 4617         	mov	r7, r2
 800266c: f7ff ff2c    	bl	0x80024c8 <firmware_image+0x24c8> @ imm = #-0x1a8
 8002670: 2034         	movs	r0, #0x34
 8002672: f7ff fecf    	bl	0x8002414 <firmware_image+0x2414> @ imm = #-0x262
 8002676: 4d0b         	ldr	r5, [pc, #0x2c]         @ 0x80026a4 <firmware_image+0x26a4>
 8002678: 2400         	movs	r4, #0x0
 800267a: 4e0b         	ldr	r6, [pc, #0x2c]         @ 0x80026a8 <firmware_image+0x26a8>
 800267c: e00c         	b	0x8002698 <firmware_image+0x2698> @ imm = #0x18
 800267e: f838 1014    	ldrh.w	r1, [r8, r4, lsl #1]
 8002682: 4628         	mov	r0, r5
 8002684: f7ff ff06    	bl	0x8002494 <firmware_image+0x2494> @ imm = #-0x1f4
 8002688: 7030         	strb	r0, [r6]
 800268a: 1cad         	adds	r5, r5, #0x2
 800268c: 7830         	ldrb	r0, [r6]
 800268e: 2034         	movs	r0, #0x34
 8002690: f7ff fec0    	bl	0x8002414 <firmware_image+0x2414> @ imm = #-0x280
 8002694: 1c64         	adds	r4, r4, #0x1
 8002696: b2a4         	uxth	r4, r4
 8002698: 42bc         	cmp	r4, r7
 800269a: d3f0         	blo	0x800267e <firmware_image+0x267e> @ imm = #-0x20
 800269c: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80026a0: f7ff bef0    	b.w	0x8002484 <firmware_image+0x2484> @ imm = #-0x220
 80026a4: 7c00         	ldrb	r0, [r0, #0x10]
 80026a6: 0800         	lsrs	r0, r0, #0x20
 80026a8: 0144         	lsls	r4, r0, #0x5
 80026aa: 2000         	movs	r0, #0x0
 80026ac: b5f0         	push	{r4, r5, r6, r7, lr}
 80026ae: 2200         	movs	r2, #0x0
 80026b0: 2601         	movs	r6, #0x1
 80026b2: 2503         	movs	r5, #0x3
 80026b4: 680c         	ldr	r4, [r1]
 80026b6: fa06 f302    	lsl.w	r3, r6, r2
 80026ba: 421c         	tst	r4, r3
 80026bc: d02e         	beq	0x800271c <firmware_image+0x271c> @ imm = #0x5c
 80026be: 790c         	ldrb	r4, [r1, #0x4]
 80026c0: 2c01         	cmp	r4, #0x1
 80026c2: d001         	beq	0x80026c8 <firmware_image+0x26c8> @ imm = #0x2
 80026c4: 2c02         	cmp	r4, #0x2
 80026c6: d114         	bne	0x80026f2 <firmware_image+0x26f2> @ imm = #0x28
 80026c8: 6887         	ldr	r7, [r0, #0x8]
 80026ca: 0054         	lsls	r4, r2, #0x1
 80026cc: fa05 fc04    	lsl.w	r12, r5, r4
 80026d0: ea27 070c    	bic.w	r7, r7, r12
 80026d4: 6087         	str	r7, [r0, #0x8]
 80026d6: 794f         	ldrb	r7, [r1, #0x5]
 80026d8: 40a7         	lsls	r7, r4
 80026da: 6884         	ldr	r4, [r0, #0x8]
 80026dc: 4327         	orrs	r7, r4
 80026de: 6087         	str	r7, [r0, #0x8]
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
 8002710: 6007         	str	r7, [r0]
 8002712: 790c         	ldrb	r4, [r1, #0x4]
 8002714: 409c         	lsls	r4, r3
 8002716: 6803         	ldr	r3, [r0]
 8002718: 431c         	orrs	r4, r3
 800271a: 6004         	str	r4, [r0]
 800271c: 1c52         	adds	r2, r2, #0x1
 800271e: 2a10         	cmp	r2, #0x10
 8002720: d3c8         	blo	0x80026b4 <firmware_image+0x26b4> @ imm = #-0x70
 8002722: bdf0         	pop	{r4, r5, r6, r7, pc}
 8002724: b510         	push	{r4, lr}
 8002726: 074b         	lsls	r3, r1, #0x1d
 8002728: 0edb         	lsrs	r3, r3, #0x1b
 800272a: 409a         	lsls	r2, r3
 800272c: 08c9         	lsrs	r1, r1, #0x3
 800272e: eb00 0081    	add.w	r0, r0, r1, lsl #2
 8002732: 6a01         	ldr	r1, [r0, #0x20]
 8002734: 240f         	movs	r4, #0xf
 8002736: 409c         	lsls	r4, r3
 8002738: 43a1         	bics	r1, r4
 800273a: 6201         	str	r1, [r0, #0x20]
 800273c: 6a01         	ldr	r1, [r0, #0x20]
 800273e: 4311         	orrs	r1, r2
 8002740: 6201         	str	r1, [r0, #0x20]
 8002742: bd10         	pop	{r4, pc}
 8002744: 6900         	ldr	r0, [r0, #0x10]
 8002746: 4208         	tst	r0, r1
 8002748: d001         	beq	0x800274e <firmware_image+0x274e> @ imm = #0x2
 800274a: 2001         	movs	r0, #0x1
 800274c: 4770         	bx	lr
 800274e: 2000         	movs	r0, #0x0
 8002750: 4770         	bx	lr
 8002752: 6281         	str	r1, [r0, #0x28]
 8002754: 4770         	bx	lr
 8002756: 6181         	str	r1, [r0, #0x18]
 8002758: 4770         	bx	lr
 800275a: 0000         	movs	r0, r0
 800275c: 4801         	ldr	r0, [pc, #0x4]          @ 0x8002764 <firmware_image+0x2764>
 800275e: f9b0 002c    	ldrsh.w	r0, [r0, #0x2c]
 8002762: 4770         	bx	lr
 8002764: 0268         	lsls	r0, r5, #0x9
 8002766: 2000         	movs	r0, #0x0
 8002768: e92d 41fc    	push.w	{r2, r3, r4, r5, r6, r7, r8, lr}
 800276c: 2400         	movs	r4, #0x0
 800276e: 2500         	movs	r5, #0x0
 8002770: 2101         	movs	r1, #0x1
 8002772: f44f 00bc    	mov.w	r0, #0x5e0000
 8002776: f001 fde5    	bl	0x8004344 <firmware_image+0x4344> @ imm = #0x1bca
 800277a: 2700         	movs	r7, #0x0
 800277c: f88d 7004    	strb.w	r7, [sp, #0x4]
 8002780: 2003         	movs	r0, #0x3
 8002782: f88d 0005    	strb.w	r0, [sp, #0x5]
 8002786: f88d 7006    	strb.w	r7, [sp, #0x6]
 800278a: 2601         	movs	r6, #0x1
 800278c: f88d 6007    	strb.w	r6, [sp, #0x7]
 8002790: 0370         	lsls	r0, r6, #0xd
 8002792: 9000         	str	r0, [sp]
 8002794: f8df 8058    	ldr.w	r8, [pc, #0x58]         @ 0x80027f0 <firmware_image+0x27f0>
 8002798: 4669         	mov	r1, sp
 800279a: 4640         	mov	r0, r8
 800279c: f7ff ff86    	bl	0x80026ac <firmware_image+0x26ac> @ imm = #-0xf4
 80027a0: 2102         	movs	r1, #0x2
 80027a2: 9100         	str	r1, [sp]
 80027a4: 4669         	mov	r1, sp
 80027a6: f04f 4090    	mov.w	r0, #0x48000000
 80027aa: f7ff ff7d    	bl	0x80026a8 <firmware_image+0x26a8> @ imm = #-0x106
 80027ae: 03b0         	lsls	r0, r6, #0xe
 80027b0: 9000         	str	r0, [sp]
 80027b2: f88d 7004    	strb.w	r7, [sp, #0x4]
 80027b6: 4669         	mov	r1, sp
 80027b8: 4640         	mov	r0, r8
 80027ba: f7ff ff75    	bl	0x80026a8 <firmware_image+0x26a8> @ imm = #-0x116
 80027be: f44f 67fa    	mov.w	r7, #0x7d0
 80027c2: f004 f931    	bl	0x8006a28 <firmware_image+0x6a28> @ imm = #0x4262
 80027c6: b108         	cbz	r0, 0x80027cc <firmware_image+0x27cc> @ imm = #0x2
 80027c8: 2807         	cmp	r0, #0x7
 80027ca: d101         	bne	0x80027d0 <firmware_image+0x27d0> @ imm = #0x2
 80027cc: 1c6d         	adds	r5, r5, #0x1
 80027ce: b2ed         	uxtb	r5, r5
 80027d0: 4638         	mov	r0, r7
 80027d2: f7ff fdf3    	bl	0x80023bc <firmware_image+0x23bc> @ imm = #-0x41a
 80027d6: 1c64         	adds	r4, r4, #0x1
 80027d8: b2e4         	uxtb	r4, r4
 80027da: 2c64         	cmp	r4, #0x64
 80027dc: d3f1         	blo	0x80027c2 <firmware_image+0x27c2> @ imm = #-0x1e
 80027de: 2d50         	cmp	r5, #0x50
 80027e0: d901         	bls	0x80027e6 <firmware_image+0x27e6> @ imm = #0x2
 80027e2: 4803         	ldr	r0, [pc, #0xc]          @ 0x80027f0 <firmware_image+0x27f0>
 80027e4: 7046         	strb	r6, [r0, #0x1]
 80027e6: e8bd 81fc    	pop.w	{r2, r3, r4, r5, r6, r7, r8, pc}
 80027ea: 0000         	movs	r0, r0
 80027ec: 0800         	lsrs	r0, r0, #0x20
 80027ee: 4800         	ldr	r0, [pc, #0x0]          @ 0x80027f0 <firmware_image+0x27f0>
 80027f0: 0268         	lsls	r0, r5, #0x9
 80027f2: 2000         	movs	r0, #0x0
 80027f4: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 80027f8: f004 f916    	bl	0x8006a28 <firmware_image+0x6a28> @ imm = #0x422c
 80027fc: 4c7d         	ldr	r4, [pc, #0x1f4]        @ 0x80029f4 <firmware_image+0x29f4>
 80027fe: 70a0         	strb	r0, [r4, #0x2]
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
 8002820: 081a         	lsrs	r2, r3, #0x20
 8002822: 0c10         	lsrs	r0, r2, #0x10
 8002824: 0416         	lsls	r6, r2, #0x10
 8002826: 0012         	movs	r2, r2
 8002828: f646 21aa    	movw	r1, #0x6aaa
 800282c: 85a1         	strh	r1, [r4, #0x2c]
 800282e: e01f         	b	0x8002870 <firmware_image+0x2870> @ imm = #0x3e
 8002830: f249 5154    	movw	r1, #0x9554
 8002834: 85a1         	strh	r1, [r4, #0x2c]
 8002836: e01b         	b	0x8002870 <firmware_image+0x2870> @ imm = #0x36
 8002838: f46f 4180    	mvn	r1, #0x4000
 800283c: 85a1         	strh	r1, [r4, #0x2c]
 800283e: e017         	b	0x8002870 <firmware_image+0x2870> @ imm = #0x2e
 8002840: 85a5         	strh	r5, [r4, #0x2c]
 8002842: e015         	b	0x8002870 <firmware_image+0x2870> @ imm = #0x2a
 8002844: f241 5156    	movw	r1, #0x1556
 8002848: 85a1         	strh	r1, [r4, #0x2c]
 800284a: e011         	b	0x8002870 <firmware_image+0x2870> @ imm = #0x22
 800284c: f44f 4180    	mov.w	r1, #0x4000
 8002850: 85a1         	strh	r1, [r4, #0x2c]
 8002852: e00d         	b	0x8002870 <firmware_image+0x2870> @ imm = #0x1a
 8002854: 8aa1         	ldrh	r1, [r4, #0x14]
 8002856: 1c49         	adds	r1, r1, #0x1
 8002858: b289         	uxth	r1, r1
 800285a: 82a1         	strh	r1, [r4, #0x14]
 800285c: eb01 0341    	add.w	r3, r1, r1, lsl #1
 8002860: ebc3 11c1    	rsb	r1, r3, r1, lsl #7
 8002864: f44f 537a    	mov.w	r3, #0x3e80
 8002868: ebb3 0f41    	cmp.w	r3, r1, lsl #1
 800286c: d200         	bhs	0x8002870 <firmware_image+0x2870> @ imm = #0x0
 800286e: 7062         	strb	r2, [r4, #0x1]
 8002870: f9b4 101e    	ldrsh.w	r1, [r4, #0x1e]
 8002874: 2600         	movs	r6, #0x0
 8002876: 1c4b         	adds	r3, r1, #0x1
 8002878: 83e3         	strh	r3, [r4, #0x1e]
 800287a: f5b1 6f48    	cmp.w	r1, #0xc80
 800287e: dd03         	ble	0x8002888 <firmware_image+0x2888> @ imm = #0x6
 8002880: 83e6         	strh	r6, [r4, #0x1e]
 8002882: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002884: 82e1         	strh	r1, [r4, #0x16]
 8002886: 83a6         	strh	r6, [r4, #0x1c]
 8002888: 79a1         	ldrb	r1, [r4, #0x6]
 800288a: 4281         	cmp	r1, r0
 800288c: d07d         	beq	0x800298a <firmware_image+0x298a> @ imm = #0xfa
 800288e: f04f 33ff    	mov.w	r3, #0xffffffff
 8002892: 2807         	cmp	r0, #0x7
 8002894: d25e         	bhs	0x8002954 <firmware_image+0x2954> @ imm = #0xbc
 8002896: e8df f000    	tbb	[pc, r0]
 800289a: 135d         	asrs	r5, r3, #0xd
 800289c: 2231         	movs	r2, #0x31
 800289e: 044f         	lsls	r7, r1, #0x11
 80028a0: 0040         	lsls	r0, r0, #0x1
 80028a2: 2904         	cmp	r1, #0x4
 80028a4: d002         	beq	0x80028ac <firmware_image+0x28ac> @ imm = #0x4
 80028a6: 2901         	cmp	r1, #0x1
 80028a8: d005         	beq	0x80028b6 <firmware_image+0x28b6> @ imm = #0xa
 80028aa: e053         	b	0x8002954 <firmware_image+0x2954> @ imm = #0xa6
 80028ac: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028ae: 1c49         	adds	r1, r1, #0x1
 80028b0: 83a1         	strh	r1, [r4, #0x1c]
 80028b2: 7022         	strb	r2, [r4]
 80028b4: e04e         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x9c
 80028b6: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028b8: 1e49         	subs	r1, r1, #0x1
 80028ba: 83a1         	strh	r1, [r4, #0x1c]
 80028bc: 7023         	strb	r3, [r4]
 80028be: e049         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x92
 80028c0: 2905         	cmp	r1, #0x5
 80028c2: d002         	beq	0x80028ca <firmware_image+0x28ca> @ imm = #0x4
 80028c4: 2903         	cmp	r1, #0x3
 80028c6: d005         	beq	0x80028d4 <firmware_image+0x28d4> @ imm = #0xa
 80028c8: e044         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x88
 80028ca: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028cc: 1c49         	adds	r1, r1, #0x1
 80028ce: 83a1         	strh	r1, [r4, #0x1c]
 80028d0: 7022         	strb	r2, [r4]
 80028d2: e03f         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x7e
 80028d4: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028d6: 1e49         	subs	r1, r1, #0x1
 80028d8: 83a1         	strh	r1, [r4, #0x1c]
 80028da: 7023         	strb	r3, [r4]
 80028dc: e03a         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x74
 80028de: 2901         	cmp	r1, #0x1
 80028e0: d002         	beq	0x80028e8 <firmware_image+0x28e8> @ imm = #0x4
 80028e2: 2902         	cmp	r1, #0x2
 80028e4: d005         	beq	0x80028f2 <firmware_image+0x28f2> @ imm = #0xa
 80028e6: e035         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x6a
 80028e8: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028ea: 1c49         	adds	r1, r1, #0x1
 80028ec: 83a1         	strh	r1, [r4, #0x1c]
 80028ee: 7022         	strb	r2, [r4]
 80028f0: e030         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x60
 80028f2: 8ba1         	ldrh	r1, [r4, #0x1c]
 80028f4: 1e49         	subs	r1, r1, #0x1
 80028f6: 83a1         	strh	r1, [r4, #0x1c]
 80028f8: 7023         	strb	r3, [r4]
 80028fa: e02b         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x56
 80028fc: 2903         	cmp	r1, #0x3
 80028fe: d002         	beq	0x8002906 <firmware_image+0x2906> @ imm = #0x4
 8002900: 2906         	cmp	r1, #0x6
 8002902: d005         	beq	0x8002910 <firmware_image+0x2910> @ imm = #0xa
 8002904: e026         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x4c
 8002906: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002908: 1c49         	adds	r1, r1, #0x1
 800290a: 83a1         	strh	r1, [r4, #0x1c]
 800290c: 7022         	strb	r2, [r4]
 800290e: e021         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x42
 8002910: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002912: 1e49         	subs	r1, r1, #0x1
 8002914: 83a1         	strh	r1, [r4, #0x1c]
 8002916: 7023         	strb	r3, [r4]
 8002918: e01c         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x38
 800291a: 2902         	cmp	r1, #0x2
 800291c: d002         	beq	0x8002924 <firmware_image+0x2924> @ imm = #0x4
 800291e: 2904         	cmp	r1, #0x4
 8002920: d005         	beq	0x800292e <firmware_image+0x292e> @ imm = #0xa
 8002922: e017         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x2e
 8002924: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002926: 1c49         	adds	r1, r1, #0x1
 8002928: 83a1         	strh	r1, [r4, #0x1c]
 800292a: 7022         	strb	r2, [r4]
 800292c: e012         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x24
 800292e: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002930: 1e49         	subs	r1, r1, #0x1
 8002932: 83a1         	strh	r1, [r4, #0x1c]
 8002934: 7023         	strb	r3, [r4]
 8002936: e00d         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x1a
 8002938: 2906         	cmp	r1, #0x6
 800293a: d002         	beq	0x8002942 <firmware_image+0x2942> @ imm = #0x4
 800293c: 2905         	cmp	r1, #0x5
 800293e: d005         	beq	0x800294c <firmware_image+0x294c> @ imm = #0xa
 8002940: e008         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x10
 8002942: 8ba1         	ldrh	r1, [r4, #0x1c]
 8002944: 1c49         	adds	r1, r1, #0x1
 8002946: 83a1         	strh	r1, [r4, #0x1c]
 8002948: 7022         	strb	r2, [r4]
 800294a: e003         	b	0x8002954 <firmware_image+0x2954> @ imm = #0x6
 800294c: 8ba1         	ldrh	r1, [r4, #0x1c]
 800294e: 1e49         	subs	r1, r1, #0x1
 8002950: 83a1         	strh	r1, [r4, #0x1c]
 8002952: 7023         	strb	r3, [r4]
 8002954: 8c23         	ldrh	r3, [r4, #0x20]
 8002956: 8463         	strh	r3, [r4, #0x22]
 8002958: 8ca1         	ldrh	r1, [r4, #0x24]
 800295a: 8421         	strh	r1, [r4, #0x20]
 800295c: ebc1 07c1    	rsb	r7, r1, r1, lsl #3
 8002960: eb01 0cc1    	add.w	r12, r1, r1, lsl #3
 8002964: eb07 0787    	add.w	r7, r7, r7, lsl #2
 8002968: eb0c 1c01    	add.w	r12, r12, r1, lsl #4
 800296c: eb07 074c    	add.w	r7, r7, r12, lsl #1
 8002970: ebc3 1303    	rsb	r3, r3, r3, lsl #4
 8002974: 443b         	add	r3, r7
 8002976: 2764         	movs	r7, #0x64
 8002978: fbb3 f3f7    	udiv	r3, r3, r7
 800297c: b29b         	uxth	r3, r3
 800297e: 84e3         	strh	r3, [r4, #0x26]
 8002980: f642 27aa    	movw	r7, #0x2aaa
 8002984: fbb7 f7f3    	udiv	r7, r7, r3
 8002988: e000         	b	0x800298c <firmware_image+0x298c> @ imm = #0x0
 800298a: e00b         	b	0x80029a4 <firmware_image+0x29a4> @ imm = #0x16
 800298c: f994 3000    	ldrsb.w	r3, [r4]
 8002990: 435f         	muls	r7, r3, r7
 8002992: 8527         	strh	r7, [r4, #0x28]
 8002994: f24b 4701    	movw	r7, #0xb401
 8002998: 437b         	muls	r3, r7, r3
 800299a: fb93 f1f1    	sdiv	r1, r3, r1
 800299e: 8321         	strh	r1, [r4, #0x18]
 80029a0: 84a6         	strh	r6, [r4, #0x24]
 80029a2: 8566         	strh	r6, [r4, #0x2a]
 80029a4: 8ca1         	ldrh	r1, [r4, #0x24]
 80029a6: f64f 73ff    	movw	r3, #0xffff
 80029aa: 4299         	cmp	r1, r3
 80029ac: d201         	bhs	0x80029b2 <firmware_image+0x29b2> @ imm = #0x2
 80029ae: 1c49         	adds	r1, r1, #0x1
 80029b0: 84a1         	strh	r1, [r4, #0x24]
 80029b2: 71a0         	strb	r0, [r4, #0x6]
 80029b4: 8ca0         	ldrh	r0, [r4, #0x24]
 80029b6: 28c8         	cmp	r0, #0xc8
 80029b8: d223         	bhs	0x8002a02 <firmware_image+0x2a02> @ imm = #0x46
 80029ba: 72a2         	strb	r2, [r4, #0xa]
 80029bc: f9b4 0028    	ldrsh.w	r0, [r4, #0x28]
 80029c0: 2802         	cmp	r0, #0x2
 80029c2: dd01         	ble	0x80029c8 <firmware_image+0x29c8> @ imm = #0x2
 80029c4: 8365         	strh	r5, [r4, #0x1a]
 80029c6: e005         	b	0x80029d4 <firmware_image+0x29d4> @ imm = #0xa
 80029c8: f110 0f02    	cmn.w	r0, #0x2
 80029cc: da02         	bge	0x80029d4 <firmware_image+0x29d4> @ imm = #0x4
 80029ce: f241 5055    	movw	r0, #0x1555
 80029d2: 8360         	strh	r0, [r4, #0x1a]
 80029d4: f9b4 002a    	ldrsh.w	r0, [r4, #0x2a]
 80029d8: f7fd fe41    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x237e
 80029dc: f021 4100    	bic	r1, r1, #0x80000000
 80029e0: 2200         	movs	r2, #0x0
 80029e2: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x8002a10 <firmware_image+0x2a10>
 80029e4: f7fd fe98    	bl	0x8000718 <firmware_image+0x718> @ imm = #-0x22d0
 80029e8: d203         	bhs	0x80029f2 <firmware_image+0x29f2> @ imm = #0x6
 80029ea: 8d60         	ldrh	r0, [r4, #0x2a]
 80029ec: 8d21         	ldrh	r1, [r4, #0x28]
 80029ee: 4408         	add	r0, r1
 80029f0: 8560         	strh	r0, [r4, #0x2a]
 80029f2: 8da0         	ldrh	r0, [r4, #0x2c]
 80029f4: 8d61         	ldrh	r1, [r4, #0x2a]
 80029f6: 4408         	add	r0, r1
 80029f8: 8b61         	ldrh	r1, [r4, #0x1a]
 80029fa: 4408         	add	r0, r1
 80029fc: 85a0         	strh	r0, [r4, #0x2c]
 80029fe: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8002a02: 8366         	strh	r6, [r4, #0x1a]
 8002a04: 72a6         	strb	r6, [r4, #0xa]
 8002a06: e7fa         	b	0x80029fe <firmware_image+0x29fe> @ imm = #-0xc
 8002a08: 0268         	lsls	r0, r5, #0x9
 8002a0a: 2000         	movs	r0, #0x0
 8002a0c: eaab ffff    	<unknown>
 8002a10: 5500         	strb	r0, [r0, r4]
 8002a12: 40c5         	lsrs	r5, r0
 8002a14: e7fe         	b	0x8002a14 <firmware_image+0x2a14> @ imm = #-0x4
 8002a16: 0000         	movs	r0, r0
 8002a18: 480c         	ldr	r0, [pc, #0x30]         @ 0x8002a4c <firmware_image+0x2a4c>
 8002a1a: 490d         	ldr	r1, [pc, #0x34]         @ 0x8002a50 <firmware_image+0x2a50>
 8002a1c: 8d02         	ldrh	r2, [r0, #0x28]
 8002a1e: 2a00         	cmp	r2, #0x0
 8002a20: d009         	beq	0x8002a36 <firmware_image+0x2a36> @ imm = #0x12
 8002a22: 6481         	str	r1, [r0, #0x48]
 8002a24: f44f 617a    	mov.w	r1, #0xfa0
 8002a28: 64c1         	str	r1, [r0, #0x4c]
 8002a2a: f240 61a4    	movw	r1, #0x6a4
 8002a2e: 6501         	str	r1, [r0, #0x50]
 8002a30: 2128         	movs	r1, #0x28
 8002a32: 6541         	str	r1, [r0, #0x54]
 8002a34: 4770         	bx	lr
 8002a36: 6481         	str	r1, [r0, #0x48]
 8002a38: f640 31b8    	movw	r1, #0xbb8
 8002a3c: 64c1         	str	r1, [r0, #0x4c]
 8002a3e: f44f 717a    	mov.w	r1, #0x3e8
 8002a42: 6501         	str	r1, [r0, #0x50]
 8002a44: 211e         	movs	r1, #0x1e
 8002a46: 6541         	str	r1, [r0, #0x54]
 8002a48: 4770         	bx	lr
 8002a4a: 0000         	movs	r0, r0
 8002a4c: 0064         	lsls	r4, r4, #0x1
 8002a4e: 2000         	movs	r0, #0x0
 8002a50: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
 8002a52: 3ecc         	subs	r6, #0xcc
 8002a54: b510         	push	{r4, lr}
 8002a56: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x8002a8c <firmware_image+0x2a8c>
 8002a58: 2140         	movs	r1, #0x40
 8002a5a: 4620         	mov	r0, r4
 8002a5c: f7ff fe81    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x2fe
 8002a60: f000 f98f    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x31e
 8002a64: 2180         	movs	r1, #0x80
 8002a66: 4620         	mov	r0, r4
 8002a68: f7ff fe7b    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x30a
 8002a6c: f000 f989    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x312
 8002a70: 2140         	movs	r1, #0x40
 8002a72: 4620         	mov	r0, r4
 8002a74: f7ff fe77    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x312
 8002a78: f000 f983    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x306
 8002a7c: 2140         	movs	r1, #0x40
 8002a7e: 4620         	mov	r0, r4
 8002a80: f7ff fe6f    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x322
 8002a84: e8bd 4010    	pop.w	{r4, lr}
 8002a88: f000 b97b    	b.w	0x8002d82 <firmware_image+0x2d82> @ imm = #0x2f6
 8002a8c: 0400         	lsls	r0, r0, #0x10
 8002a8e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002a90 <firmware_image+0x2a90>
 8002a90: b51c         	push	{r2, r3, r4, lr}
 8002a92: 2101         	movs	r1, #0x1
 8002a94: f44f 00bc    	mov.w	r0, #0x5e0000
 8002a98: f001 fc5c    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x18b8
 8002a9c: 2002         	movs	r0, #0x2
 8002a9e: f88d 0005    	strb.w	r0, [sp, #0x5]
 8002aa2: 2001         	movs	r0, #0x1
 8002aa4: f88d 0004    	strb.w	r0, [sp, #0x4]
 8002aa8: f88d 0006    	strb.w	r0, [sp, #0x6]
 8002aac: 2000         	movs	r0, #0x0
 8002aae: f88d 0007    	strb.w	r0, [sp, #0x7]
 8002ab2: 2040         	movs	r0, #0x40
 8002ab4: 9000         	str	r0, [sp]
 8002ab6: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x8002ae0 <firmware_image+0x2ae0>
 8002ab8: 4669         	mov	r1, sp
 8002aba: 4620         	mov	r0, r4
 8002abc: f7ff fdfe    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x404
 8002ac0: 2180         	movs	r1, #0x80
 8002ac2: 9100         	str	r1, [sp]
 8002ac4: 4669         	mov	r1, sp
 8002ac6: 4620         	mov	r0, r4
 8002ac8: f7ff fdf8    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x410
 8002acc: 2140         	movs	r1, #0x40
 8002ace: 4620         	mov	r0, r4
 8002ad0: f7ff fe49    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x36e
 8002ad4: 2180         	movs	r1, #0x80
 8002ad6: 4620         	mov	r0, r4
 8002ad8: f7ff fe45    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x376
 8002adc: bd1c         	pop	{r2, r3, r4, pc}
 8002ade: 0000         	movs	r0, r0
 8002ae0: 0400         	lsls	r0, r0, #0x10
 8002ae2: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002ae4 <firmware_image+0x2ae4>
 8002ae4: b510         	push	{r4, lr}
 8002ae6: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x8002b1c <firmware_image+0x2b1c>
 8002ae8: 2140         	movs	r1, #0x40
 8002aea: 4620         	mov	r0, r4
 8002aec: f7ff fe39    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x38e
 8002af0: f000 f947    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x28e
 8002af4: 2180         	movs	r1, #0x80
 8002af6: 4620         	mov	r0, r4
 8002af8: f7ff fe35    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x396
 8002afc: f000 f941    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x282
 8002b00: 2140         	movs	r1, #0x40
 8002b02: 4620         	mov	r0, r4
 8002b04: f7ff fe2f    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x3a2
 8002b08: f000 f93b    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x276
 8002b0c: 2140         	movs	r1, #0x40
 8002b0e: 4620         	mov	r0, r4
 8002b10: f7ff fe27    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x3b2
 8002b14: e8bd 4010    	pop.w	{r4, lr}
 8002b18: f000 b933    	b.w	0x8002d82 <firmware_image+0x2d82> @ imm = #0x266
 8002b1c: 0400         	lsls	r0, r0, #0x10
 8002b1e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002b20 <firmware_image+0x2b20>
 8002b20: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002b24: 4606         	mov	r6, r0
 8002b26: 460f         	mov	r7, r1
 8002b28: 4614         	mov	r4, r2
 8002b2a: 461d         	mov	r5, r3
 8002b2c: f000 f888    	bl	0x8002c40 <firmware_image+0x2c40> @ imm = #0x110
 8002b30: b1b0         	cbz	r0, 0x8002b60 <firmware_image+0x2b60> @ imm = #0x2c
 8002b32: 0670         	lsls	r0, r6, #0x19
 8002b34: 0e00         	lsrs	r0, r0, #0x18
 8002b36: f000 f857    	bl	0x8002be8 <firmware_image+0x2be8> @ imm = #0xae
 8002b3a: f000 f8cb    	bl	0x8002cd4 <firmware_image+0x2cd4> @ imm = #0x196
 8002b3e: b190         	cbz	r0, 0x8002b66 <firmware_image+0x2b66> @ imm = #0x24
 8002b40: 4638         	mov	r0, r7
 8002b42: f000 f851    	bl	0x8002be8 <firmware_image+0x2be8> @ imm = #0xa2
 8002b46: f000 f8c5    	bl	0x8002cd4 <firmware_image+0x2cd4> @ imm = #0x18a
 8002b4a: f000 f879    	bl	0x8002c40 <firmware_image+0x2c40> @ imm = #0xf2
 8002b4e: 2001         	movs	r0, #0x1
 8002b50: eb00 0046    	add.w	r0, r0, r6, lsl #1
 8002b54: b2c0         	uxtb	r0, r0
 8002b56: f000 f847    	bl	0x8002be8 <firmware_image+0x2be8> @ imm = #0x8e
 8002b5a: f000 f8bb    	bl	0x8002cd4 <firmware_image+0x2cd4> @ imm = #0x176
 8002b5e: e010         	b	0x8002b82 <firmware_image+0x2b82> @ imm = #0x20
 8002b60: 2000         	movs	r0, #0x0
 8002b62: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8002b66: f000 f897    	bl	0x8002c98 <firmware_image+0x2c98> @ imm = #0x12e
 8002b6a: 2000         	movs	r0, #0x0
 8002b6c: e7f9         	b	0x8002b62 <firmware_image+0x2b62> @ imm = #-0xe
 8002b6e: f000 f811    	bl	0x8002b94 <firmware_image+0x2b94> @ imm = #0x22
 8002b72: 7028         	strb	r0, [r5]
 8002b74: 2c01         	cmp	r4, #0x1
 8002b76: d00a         	beq	0x8002b8e <firmware_image+0x2b8e> @ imm = #0x14
 8002b78: f7ff ff6c    	bl	0x8002a54 <firmware_image+0x2a54> @ imm = #-0x128
 8002b7c: 1c6d         	adds	r5, r5, #0x1
 8002b7e: 1e64         	subs	r4, r4, #0x1
 8002b80: b2e4         	uxtb	r4, r4
 8002b82: 2c00         	cmp	r4, #0x0
 8002b84: d1f3         	bne	0x8002b6e <firmware_image+0x2b6e> @ imm = #-0x1a
 8002b86: f000 f887    	bl	0x8002c98 <firmware_image+0x2c98> @ imm = #0x10e
 8002b8a: 2001         	movs	r0, #0x1
 8002b8c: e7e9         	b	0x8002b62 <firmware_image+0x2b62> @ imm = #-0x2e
 8002b8e: f7ff ffa9    	bl	0x8002ae4 <firmware_image+0x2ae4> @ imm = #-0xae
 8002b92: e7f3         	b	0x8002b7c <firmware_image+0x2b7c> @ imm = #-0x1a
 8002b94: b570         	push	{r4, r5, r6, lr}
 8002b96: 2508         	movs	r5, #0x8
 8002b98: 2400         	movs	r4, #0x0
 8002b9a: 4e12         	ldr	r6, [pc, #0x48]         @ 0x8002be4 <firmware_image+0x2be4>
 8002b9c: 2180         	movs	r1, #0x80
 8002b9e: 4630         	mov	r0, r6
 8002ba0: f7ff fde1    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x43e
 8002ba4: e014         	b	0x8002bd0 <firmware_image+0x2bd0> @ imm = #0x28
 8002ba6: 0660         	lsls	r0, r4, #0x19
 8002ba8: 0e04         	lsrs	r4, r0, #0x18
 8002baa: 2140         	movs	r1, #0x40
 8002bac: 4630         	mov	r0, r6
 8002bae: f7ff fdd8    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x450
 8002bb2: f000 f8e6    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x1cc
 8002bb6: 2140         	movs	r1, #0x40
 8002bb8: 4630         	mov	r0, r6
 8002bba: f7ff fdd4    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x458
 8002bbe: f000 f8e0    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x1c0
 8002bc2: 2180         	movs	r1, #0x80
 8002bc4: 4630         	mov	r0, r6
 8002bc6: f7ff fdc5    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0x476
 8002bca: b108         	cbz	r0, 0x8002bd0 <firmware_image+0x2bd0> @ imm = #0x2
 8002bcc: f044 0401    	orr	r4, r4, #0x1
 8002bd0: 1e6d         	subs	r5, r5, #0x1
 8002bd2: b2ed         	uxtb	r5, r5
 8002bd4: d2e7         	bhs	0x8002ba6 <firmware_image+0x2ba6> @ imm = #-0x32
 8002bd6: 2140         	movs	r1, #0x40
 8002bd8: 4630         	mov	r0, r6
 8002bda: f7ff fdc2    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x47c
 8002bde: 4620         	mov	r0, r4
 8002be0: bd70         	pop	{r4, r5, r6, pc}
 8002be2: 0000         	movs	r0, r0
 8002be4: 0400         	lsls	r0, r0, #0x10
 8002be6: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002be8 <firmware_image+0x2be8>
 8002be8: b570         	push	{r4, r5, r6, lr}
 8002bea: 4605         	mov	r5, r0
 8002bec: 2408         	movs	r4, #0x8
 8002bee: 4e13         	ldr	r6, [pc, #0x4c]         @ 0x8002c3c <firmware_image+0x2c3c>
 8002bf0: e01a         	b	0x8002c28 <firmware_image+0x2c28> @ imm = #0x34
 8002bf2: 2140         	movs	r1, #0x40
 8002bf4: 4630         	mov	r0, r6
 8002bf6: f7ff f8c2    	bl	0x8001d7e <firmware_image+0x1d7e> @ imm = #-0xe7c
 8002bfa: 0628         	lsls	r0, r5, #0x18
 8002bfc: d504         	bpl	0x8002c08 <firmware_image+0x2c08> @ imm = #0x8
 8002bfe: 2180         	movs	r1, #0x80
 8002c00: d504         	bpl	0x8002c0c <firmware_image+0x2c0c> @ imm = #0x8
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
 8002c48: f7ff fd8d    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x4e6
 8002c4c: f000 f899    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x132
 8002c50: 2140         	movs	r1, #0x40
 8002c52: 4620         	mov	r0, r4
 8002c54: f7ff fd87    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x4f2
 8002c58: f000 f893    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x126
 8002c5c: 2180         	movs	r1, #0x80
 8002c5e: 4620         	mov	r0, r4
 8002c60: f7ff fd78    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0x510
 8002c64: b160         	cbz	r0, 0x8002c80 <firmware_image+0x2c80> @ imm = #0x18
 8002c66: 2180         	movs	r1, #0x80
 8002c68: 4620         	mov	r0, r4
 8002c6a: f7ff fd7a    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x50c
 8002c6e: f000 f888    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x110
 8002c72: 2180         	movs	r1, #0x80
 8002c74: 4620         	mov	r0, r4
 8002c76: f7ff fd6d    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0x526
 8002c7a: b118         	cbz	r0, 0x8002c84 <firmware_image+0x2c84> @ imm = #0x6
 8002c7c: 2000         	movs	r0, #0x0
 8002c7e: bd10         	pop	{r4, pc}
 8002c80: 2000         	movs	r0, #0x0
 8002c82: bd10         	pop	{r4, pc}
 8002c84: 2180         	movs	r1, #0x80
 8002c86: 4620         	mov	r0, r4
 8002c88: f7ff fd6b    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x52a
 8002c8c: f000 f879    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0xf2
 8002c90: 2001         	movs	r0, #0x1
 8002c92: bd10         	pop	{r4, pc}
 8002c94: 0400         	lsls	r0, r0, #0x10
 8002c96: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002c98 <firmware_image+0x2c98>
 8002c98: b510         	push	{r4, lr}
 8002c9a: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x8002cd0 <firmware_image+0x2cd0>
 8002c9c: 2140         	movs	r1, #0x40
 8002c9e: 4620         	mov	r0, r4
 8002ca0: f7ff fd5f    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x542
 8002ca4: f000 f86d    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0xda
 8002ca8: 2180         	movs	r1, #0x80
 8002caa: 4620         	mov	r0, r4
 8002cac: f7ff fd59    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x54e
 8002cb0: f000 f867    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0xce
 8002cb4: 2140         	movs	r1, #0x40
 8002cb6: 4620         	mov	r0, r4
 8002cb8: f7ff fd55    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x556
 8002cbc: f000 f861    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0xc2
 8002cc0: 2180         	movs	r1, #0x80
 8002cc2: 4620         	mov	r0, r4
 8002cc4: f7ff fd4f    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x562
 8002cc8: e8bd 4010    	pop.w	{r4, lr}
 8002ccc: f000 b859    	b.w	0x8002d82 <firmware_image+0x2d82> @ imm = #0xb2
 8002cd0: 0400         	lsls	r0, r0, #0x10
 8002cd2: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002cd4 <firmware_image+0x2cd4>
 8002cd4: b510         	push	{r4, lr}
 8002cd6: 4c12         	ldr	r4, [pc, #0x48]         @ 0x8002d20 <firmware_image+0x2d20>
 8002cd8: 2140         	movs	r1, #0x40
 8002cda: 4620         	mov	r0, r4
 8002cdc: f7ff fd41    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x57e
 8002ce0: f000 f84f    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x9e
 8002ce4: 2180         	movs	r1, #0x80
 8002ce6: 4620         	mov	r0, r4
 8002ce8: f7ff fd3d    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x586
 8002cec: f000 f849    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x92
 8002cf0: 2140         	movs	r1, #0x40
 8002cf2: 4620         	mov	r0, r4
 8002cf4: f7ff fd37    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x592
 8002cf8: f000 f843    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x86
 8002cfc: 2180         	movs	r1, #0x80
 8002cfe: 4620         	mov	r0, r4
 8002d00: f7ff fd28    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0x5b0
 8002d04: b128         	cbz	r0, 0x8002d12 <firmware_image+0x2d12> @ imm = #0xa
 8002d06: 2140         	movs	r1, #0x40
 8002d08: 4620         	mov	r0, r4
 8002d0a: f7ff fd2a    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x5ac
 8002d0e: 2000         	movs	r0, #0x0
 8002d10: bd10         	pop	{r4, pc}
 8002d12: 2140         	movs	r1, #0x40
 8002d14: 4620         	mov	r0, r4
 8002d16: f7ff fd24    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x5b8
 8002d1a: 2001         	movs	r0, #0x1
 8002d1c: bd10         	pop	{r4, pc}
 8002d1e: 0000         	movs	r0, r0
 8002d20: 0400         	lsls	r0, r0, #0x10
 8002d22: 4800         	ldr	r0, [pc, #0x0]          @ 0x8002d24 <firmware_image+0x2d24>
 8002d24: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002d28: 4604         	mov	r4, r0
 8002d2a: 460f         	mov	r7, r1
 8002d2c: 4616         	mov	r6, r2
 8002d2e: 461d         	mov	r5, r3
 8002d30: f7ff ff86    	bl	0x8002c40 <firmware_image+0x2c40> @ imm = #-0xf4
 8002d34: b168         	cbz	r0, 0x8002d52 <firmware_image+0x2d52> @ imm = #0x1a
 8002d36: 0660         	lsls	r0, r4, #0x19
 8002d38: 0e00         	lsrs	r0, r0, #0x18
 8002d3a: f7ff ff55    	bl	0x8002be8 <firmware_image+0x2be8> @ imm = #-0x156
 8002d3e: f7ff ffc9    	bl	0x8002cd4 <firmware_image+0x2cd4> @ imm = #-0x6e
 8002d42: b148         	cbz	r0, 0x8002d58 <firmware_image+0x2d58> @ imm = #0x12
 8002d44: 4638         	mov	r0, r7
 8002d46: f7ff ff4f    	bl	0x8002be8 <firmware_image+0x2be8> @ imm = #-0x162
 8002d4a: f7ff ffc3    	bl	0x8002cd4 <firmware_image+0x2cd4> @ imm = #-0x7a
 8002d4e: 2400         	movs	r4, #0x0
 8002d50: e00d         	b	0x8002d6e <firmware_image+0x2d6e> @ imm = #0x1a
 8002d52: 2000         	movs	r0, #0x0
 8002d54: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8002d58: f7ff ff9e    	bl	0x8002c98 <firmware_image+0x2c98> @ imm = #-0xc4
 8002d5c: 2000         	movs	r0, #0x0
 8002d5e: e7f9         	b	0x8002d54 <firmware_image+0x2d54> @ imm = #-0xe
 8002d60: 5d28         	ldrb	r0, [r5, r4]
 8002d62: f7ff ff41    	bl	0x8002be8 <firmware_image+0x2be8> @ imm = #-0x17e
 8002d66: f7ff ffb5    	bl	0x8002cd4 <firmware_image+0x2cd4> @ imm = #-0x96
 8002d6a: b130         	cbz	r0, 0x8002d7a <firmware_image+0x2d7a> @ imm = #0xc
 8002d6c: 1c64         	adds	r4, r4, #0x1
 8002d6e: 42b4         	cmp	r4, r6
 8002d70: dbf6         	blt	0x8002d60 <firmware_image+0x2d60> @ imm = #-0x14
 8002d72: f7ff ff91    	bl	0x8002c98 <firmware_image+0x2c98> @ imm = #-0xde
 8002d76: 2001         	movs	r0, #0x1
 8002d78: e7ec         	b	0x8002d54 <firmware_image+0x2d54> @ imm = #-0x28
 8002d7a: f7ff ff8d    	bl	0x8002c98 <firmware_image+0x2c98> @ imm = #-0xe6
 8002d7e: 2000         	movs	r0, #0x0
 8002d80: e7e8         	b	0x8002d54 <firmware_image+0x2d54> @ imm = #-0x30
 8002d82: b508         	push	{r3, lr}
 8002d84: 2003         	movs	r0, #0x3
 8002d86: 9000         	str	r0, [sp]
 8002d88: e002         	b	0x8002d90 <firmware_image+0x2d90> @ imm = #0x4
 8002d8a: 9800         	ldr	r0, [sp]
 8002d8c: 1e40         	subs	r0, r0, #0x1
 8002d8e: 9000         	str	r0, [sp]
 8002d90: 9800         	ldr	r0, [sp]
 8002d92: 2800         	cmp	r0, #0x0
 8002d94: d1f9         	bne	0x8002d8a <firmware_image+0x2d8a> @ imm = #-0xe
 8002d96: bd08         	pop	{r3, pc}
 8002d98: e92d 4ff8    	push.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8002d9c: 4606         	mov	r6, r0
 8002d9e: 4f45         	ldr	r7, [pc, #0x114]        @ 0x8002eb4 <firmware_image+0x2eb4>
 8002da0: 68f9         	ldr	r1, [r7, #0xc]
 8002da2: 4688         	mov	r8, r1
 8002da4: 4640         	mov	r0, r8
 8002da6: f7fd fa4d    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2b66
 8002daa: 68b9         	ldr	r1, [r7, #0x8]
 8002dac: 4604         	mov	r4, r0
 8002dae: 4689         	mov	r9, r1
 8002db0: 4648         	mov	r0, r9
 8002db2: f7fd fa47    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2b72
 8002db6: 4621         	mov	r1, r4
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
 8002ec0: e9dd 8912    	ldrd	r8, r9, [sp, #72]
 8002ec4: 4cb4         	ldr	r4, [pc, #0x2d0]        @ 0x8003198 <firmware_image+0x3198>
 8002ec6: 6826         	ldr	r6, [r4]
 8002ec8: 6865         	ldr	r5, [r4, #0x4]
 8002eca: 68a0         	ldr	r0, [r4, #0x8]
 8002ecc: 9002         	str	r0, [sp, #0x8]
 8002ece: 68e0         	ldr	r0, [r4, #0xc]
 8002ed0: 9001         	str	r0, [sp, #0x4]
 8002ed2: 4649         	mov	r1, r9
 8002ed4: 4648         	mov	r0, r9
 8002ed6: f7fd f9b1    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2c9e
 8002eda: 4682         	mov	r10, r0
 8002edc: 4641         	mov	r1, r8
 8002ede: 4640         	mov	r0, r8
 8002ee0: f7fd f9ac    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2ca8
 8002ee4: 4683         	mov	r11, r0
 8002ee6: 4639         	mov	r1, r7
 8002ee8: 4638         	mov	r0, r7
 8002eea: f7fd f9a7    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2cb2
 8002eee: 4659         	mov	r1, r11
 8002ef0: f7fd f94c    	bl	0x800018c <firmware_image+0x18c> @ imm = #-0x2d68
 8002ef4: 4651         	mov	r1, r10
 8002ef6: f7fd f949    	bl	0x800018c <firmware_image+0x18c> @ imm = #-0x2d6e
 8002efa: f7fd fbf5    	bl	0x80006e8 <firmware_image+0x6e8> @ imm = #-0x2816
 8002efe: f004 f81d    	bl	0x8006f3c <firmware_image+0x6f3c> @ imm = #0x403a
 8002f02: f7fd fc1d    	bl	0x8000740 <firmware_image+0x740> @ imm = #-0x27c6
 8002f06: 4682         	mov	r10, r0
 8002f08: 4651         	mov	r1, r10
 8002f0a: 4638         	mov	r0, r7
 8002f0c: f7fd f9c8    	bl	0x80002a0 <firmware_image+0x2a0> @ imm = #-0x2c70
 8002f10: 9008         	str	r0, [sp, #0x20]
 8002f12: 4651         	mov	r1, r10
 8002f14: 4640         	mov	r0, r8
 8002f16: f7fd f9c3    	bl	0x80002a0 <firmware_image+0x2a0> @ imm = #-0x2c7a
 8002f1a: 9012         	str	r0, [sp, #0x48]
 8002f1c: 4651         	mov	r1, r10
 8002f1e: 4648         	mov	r0, r9
 8002f20: f7fd f9be    	bl	0x80002a0 <firmware_image+0x2a0> @ imm = #-0x2c84
 8002f24: 9013         	str	r0, [sp, #0x4c]
 8002f26: 68a1         	ldr	r1, [r4, #0x8]
 8002f28: 6820         	ldr	r0, [r4]
 8002f2a: 4688         	mov	r8, r1
 8002f2c: 9004         	str	r0, [sp, #0x10]
 8002f2e: f7fd f985    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2cf6
 8002f32: 4607         	mov	r7, r0
 8002f34: 68e1         	ldr	r1, [r4, #0xc]
 8002f36: 6860         	ldr	r0, [r4, #0x4]
 8002f38: 4689         	mov	r9, r1
 8002f3a: 4683         	mov	r11, r0
 8002f3c: f7fd f97e    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d04
 8002f40: 4639         	mov	r1, r7
 8002f42: f7fd f975    	bl	0x8000230 <firmware_image+0x230> @ imm = #-0x2d16
 8002f46: 2101         	movs	r1, #0x1
 8002f48: f7fd f9e8    	bl	0x800031c <firmware_image+0x31c> @ imm = #-0x2c30
 8002f4c: 4607         	mov	r7, r0
 8002f4e: 4649         	mov	r1, r9
 8002f50: 4640         	mov	r0, r8
 8002f52: f7fd f973    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d1a
 8002f56: 4682         	mov	r10, r0
 8002f58: 4659         	mov	r1, r11
 8002f5a: 9804         	ldr	r0, [sp, #0x10]
 8002f5c: f7fd f96e    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d24
 8002f60: 4651         	mov	r1, r10
 8002f62: f7fd f913    	bl	0x800018c <firmware_image+0x18c> @ imm = #-0x2dda
 8002f66: 2101         	movs	r1, #0x1
 8002f68: f7fd f9d8    	bl	0x800031c <firmware_image+0x31c> @ imm = #-0x2c50
 8002f6c: 4682         	mov	r10, r0
 8002f6e: 4649         	mov	r1, r9
 8002f70: 4648         	mov	r0, r9
 8002f72: f7fd f963    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d3a
 8002f76: 9000         	str	r0, [sp]
 8002f78: 4641         	mov	r1, r8
 8002f7a: 4640         	mov	r0, r8
 8002f7c: f7fd f95e    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d44
 8002f80: 4680         	mov	r8, r0
 8002f82: 4659         	mov	r1, r11
 8002f84: 4658         	mov	r0, r11
 8002f86: f7fd f959    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d4e
 8002f8a: 9904         	ldr	r1, [sp, #0x10]
 8002f8c: 4681         	mov	r9, r0
 8002f8e: 4608         	mov	r0, r1
 8002f90: f7fd f954    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d58
 8002f94: 4649         	mov	r1, r9
 8002f96: f7fd f94b    	bl	0x8000230 <firmware_image+0x230> @ imm = #-0x2d6a
 8002f9a: 4641         	mov	r1, r8
 8002f9c: f7fd f948    	bl	0x8000230 <firmware_image+0x230> @ imm = #-0x2d70
 8002fa0: 9900         	ldr	r1, [sp]
 8002fa2: f7fd f8f3    	bl	0x800018c <firmware_image+0x18c> @ imm = #-0x2e1a
 8002fa6: 4680         	mov	r8, r0
 8002fa8: 4651         	mov	r1, r10
 8002faa: 9813         	ldr	r0, [sp, #0x4c]
 8002fac: f7fd f946    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x2d74
 8002fb0: 4681         	mov	r9, r0
 8002fb2: 4641         	mov	r1, r8
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
 800308c: 4680         	mov	r8, r0
 800308e: 9907         	ldr	r1, [sp, #0x1c]
 8003090: 9802         	ldr	r0, [sp, #0x8]
 8003092: f7fd f8d5    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2e56
 8003096: 4681         	mov	r9, r0
 8003098: 4631         	mov	r1, r6
 800309a: 4650         	mov	r0, r10
 800309c: f7fd f8d0    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2e60
 80030a0: 4649         	mov	r1, r9
 80030a2: f7fd f875    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2f16
 80030a6: 4641         	mov	r1, r8
 80030a8: f7fd f8c4    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x2e78
 80030ac: 493c         	ldr	r1, [pc, #0xf0]         @ 0x80031a0 <firmware_image+0x31a0>
 80030ae: f7fd f8c7    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2e72
 80030b2: 4629         	mov	r1, r5
 80030b4: f7fd f86c    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2f28
 80030b8: 4680         	mov	r8, r0
 80030ba: 6060         	str	r0, [r4, #0x4]
 80030bc: 4650         	mov	r0, r10
 80030be: 9901         	ldr	r1, [sp, #0x4]
 80030c0: f7fd f8be    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2e84
 80030c4: 9000         	str	r0, [sp]
 80030c6: 4628         	mov	r0, r5
 80030c8: 9907         	ldr	r1, [sp, #0x1c]
 80030ca: f7fd f8b9    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2e8e
 80030ce: 4681         	mov	r9, r0
 80030d0: 4659         	mov	r1, r11
 80030d2: 4630         	mov	r0, r6
 80030d4: f7fd f8b4    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2e98
 80030d8: 4649         	mov	r1, r9
 80030da: f7fd f8ab    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x2eaa
 80030de: 9900         	ldr	r1, [sp]
 80030e0: f7fd f856    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2f54
 80030e4: 492e         	ldr	r1, [pc, #0xb8]         @ 0x80031a0 <firmware_image+0x31a0>
 80030e6: f7fd f8ab    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2eaa
 80030ea: 9902         	ldr	r1, [sp, #0x8]
 80030ec: f7fd f850    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2f60
 80030f0: 4681         	mov	r9, r0
 80030f2: 60a0         	str	r0, [r4, #0x8]
 80030f4: 4650         	mov	r0, r10
 80030f6: 9902         	ldr	r1, [sp, #0x8]
 80030f8: f7fd f8a2    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2ebc
 80030fc: 4682         	mov	r10, r0
 80030fe: 4659         	mov	r1, r11
 8003100: 4628         	mov	r0, r5
 8003102: f7fd f89d    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2ec6
 8003106: 4605         	mov	r5, r0
 8003108: 4630         	mov	r0, r6
 800310a: 9907         	ldr	r1, [sp, #0x1c]
 800310c: f7fd f898    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2ed0
 8003110: 4629         	mov	r1, r5
 8003112: f7fd f83d    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2f86
 8003116: 4651         	mov	r1, r10
 8003118: f7fd f88c    	bl	0x8000234 <firmware_image+0x234> @ imm = #-0x2ee8
 800311c: 4920         	ldr	r1, [pc, #0x80]         @ 0x80031a0 <firmware_image+0x31a0>
 800311e: f7fd f88f    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2ee2
 8003122: 9901         	ldr	r1, [sp, #0x4]
 8003124: f7fd f834    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2f98
 8003128: 60e0         	str	r0, [r4, #0xc]
 800312a: 4601         	mov	r1, r0
 800312c: f7fd f888    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2ef0
 8003130: 4605         	mov	r5, r0
 8003132: 4649         	mov	r1, r9
 8003134: 4648         	mov	r0, r9
 8003136: f7fd f883    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2efa
 800313a: 4606         	mov	r6, r0
 800313c: 4641         	mov	r1, r8
 800313e: 4640         	mov	r0, r8
 8003140: f7fd f87e    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2f04
 8003144: 4680         	mov	r8, r0
 8003146: 4639         	mov	r1, r7
 8003148: 4638         	mov	r0, r7
 800314a: f7fd f879    	bl	0x8000240 <firmware_image+0x240> @ imm = #-0x2f0e
 800314e: 4641         	mov	r1, r8
 8003150: f7fd f81e    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2fc4
 8003154: 4631         	mov	r1, r6
 8003156: f7fd f81b    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2fca
 800315a: 4629         	mov	r1, r5
 800315c: f7fd f818    	bl	0x8000190 <firmware_image+0x190> @ imm = #-0x2fd0
 8003160: f7fd fac4    	bl	0x80006ec <firmware_image+0x6ec> @ imm = #-0x2a78
 8003164: f003 feec    	bl	0x8006f40 <firmware_image+0x6f40> @ imm = #0x3dd8
 8003168: f7fd faec    	bl	0x8000744 <firmware_image+0x744> @ imm = #-0x2a28
 800316c: 4605         	mov	r5, r0
 800316e: 4629         	mov	r1, r5
 8003170: 6820         	ldr	r0, [r4]
 8003172: f7fd f897    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x2ed2
 8003176: 6020         	str	r0, [r4]
 8003178: 4629         	mov	r1, r5
 800317a: 6860         	ldr	r0, [r4, #0x4]
 800317c: f7fd f892    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x2edc
 8003180: 6060         	str	r0, [r4, #0x4]
 8003182: 4629         	mov	r1, r5
 8003184: 68a0         	ldr	r0, [r4, #0x8]
 8003186: f7fd f88d    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x2ee6
 800318a: 60a0         	str	r0, [r4, #0x8]
 800318c: 4629         	mov	r1, r5
 800318e: 68e0         	ldr	r0, [r4, #0xc]
 8003190: f7fd f888    	bl	0x80002a4 <firmware_image+0x2a4> @ imm = #-0x2ef0
 8003194: 60e0         	str	r0, [r4, #0xc]
 8003196: b009         	add	sp, #0x24
 8003198: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 800319c: 0044         	lsls	r4, r0, #0x1
 800319e: 2000         	movs	r0, #0x0
 80031a0: 126f         	asrs	r7, r5, #0x9
 80031a2: 3b03         	subs	r3, #0x3
 80031a4: 4902         	ldr	r1, [pc, #0x8]          @ 0x80031b0 <firmware_image+0x31b0>
 80031a6: f64c 40cc    	movw	r0, #0xcccc
 80031aa: 6008         	str	r0, [r1]
 80031ac: 4770         	bx	lr
 80031ae: 0000         	movs	r0, r0
 80031b0: 3000         	adds	r0, #0x0
 80031b2: 4000         	ands	r0, r0
 80031b4: f000 b814    	b.w	0x80031e0 <firmware_image+0x31e0> @ imm = #0x28
 80031b8: b570         	push	{r4, r5, r6, lr}
 80031ba: 4605         	mov	r5, r0
 80031bc: 460c         	mov	r4, r1
 80031be: f245 5055    	movw	r0, #0x5555
 80031c2: f000 f821    	bl	0x8003208 <firmware_image+0x3208> @ imm = #0x42
 80031c6: 4628         	mov	r0, r5
 80031c8: f000 f812    	bl	0x80031f0 <firmware_image+0x31f0> @ imm = #0x24
 80031cc: 4620         	mov	r0, r4
 80031ce: f000 f815    	bl	0x80031fc <firmware_image+0x31fc> @ imm = #0x2a
 80031d2: f000 f805    	bl	0x80031e0 <firmware_image+0x31e0> @ imm = #0xa
 80031d6: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 80031da: f7ff bfe3    	b.w	0x80031a4 <firmware_image+0x31a4> @ imm = #-0x3a
 80031de: 0000         	movs	r0, r0
 80031e0: 4902         	ldr	r1, [pc, #0x8]          @ 0x80031ec <firmware_image+0x31ec>
 80031e2: f64a 20aa    	movw	r0, #0xaaaa
 80031e6: 6008         	str	r0, [r1]
 80031e8: 4770         	bx	lr
 80031ea: 0000         	movs	r0, r0
 80031ec: 3000         	adds	r0, #0x0
 80031ee: 4000         	ands	r0, r0
 80031f0: 4901         	ldr	r1, [pc, #0x4]          @ 0x80031f8 <firmware_image+0x31f8>
 80031f2: 6048         	str	r0, [r1, #0x4]
 80031f4: 4770         	bx	lr
 80031f6: 0000         	movs	r0, r0
 80031f8: 3000         	adds	r0, #0x0
 80031fa: 4000         	ands	r0, r0
 80031fc: 4901         	ldr	r1, [pc, #0x4]          @ 0x8003204 <firmware_image+0x3204>
 80031fe: 6088         	str	r0, [r1, #0x8]
 8003200: 4770         	bx	lr
 8003202: 0000         	movs	r0, r0
 8003204: 3000         	adds	r0, #0x0
 8003206: 4000         	ands	r0, r0
 8003208: 4901         	ldr	r1, [pc, #0x4]          @ 0x8003210 <firmware_image+0x3210>
 800320a: 6008         	str	r0, [r1]
 800320c: 4770         	bx	lr
 800320e: 0000         	movs	r0, r0
 8003210: 3000         	adds	r0, #0x0
 8003212: 4000         	ands	r0, r0
 8003214: b51c         	push	{r2, r3, r4, lr}
 8003216: 2101         	movs	r1, #0x1
 8003218: 0448         	lsls	r0, r1, #0x11
 800321a: f001 f899    	bl	0x8004350 <firmware_image+0x4350> @ imm = #0x1132
 800321e: f44f 6000    	mov.w	r0, #0x800
 8003222: 9000         	str	r0, [sp]
 8003224: 2000         	movs	r0, #0x0
 8003226: f88d 0004    	strb.w	r0, [sp, #0x4]
 800322a: 2103         	movs	r1, #0x3
 800322c: f88d 1005    	strb.w	r1, [sp, #0x5]
 8003230: f88d 0006    	strb.w	r0, [sp, #0x6]
 8003234: f88d 0007    	strb.w	r0, [sp, #0x7]
 8003238: 4669         	mov	r1, sp
 800323a: f04f 4090    	mov.w	r0, #0x48000000
 800323e: f7ff fa3b    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0xb8a
 8003242: bd1c         	pop	{r2, r3, r4, pc}
 8003244: b510         	push	{r4, lr}
 8003246: f44f 6100    	mov.w	r1, #0x800
 800324a: f04f 4090    	mov.w	r0, #0x48000000
 800324e: f7ff fa7f    	bl	0x8002750 <firmware_image+0x2750> @ imm = #-0xb02
 8003252: 490f         	ldr	r1, [pc, #0x3c]         @ 0x8003290 <firmware_image+0x3290>
 8003254: 2300         	movs	r3, #0x0
 8003256: 2401         	movs	r4, #0x1
 8003258: 780a         	ldrb	r2, [r1]
 800325a: b122         	cbz	r2, 0x8003266 <firmware_image+0x3266> @ imm = #0x8
 800325c: 2a01         	cmp	r2, #0x1
 800325e: d007         	beq	0x8003270 <firmware_image+0x3270> @ imm = #0xe
 8003260: 2a02         	cmp	r2, #0x2
 8003262: d111         	bne	0x8003288 <firmware_image+0x3288> @ imm = #0x22
 8003264: e00b         	b	0x800327e <firmware_image+0x327e> @ imm = #0x16
 8003266: b108         	cbz	r0, 0x800326c <firmware_image+0x326c> @ imm = #0x2
 8003268: 704b         	strb	r3, [r1, #0x1]
 800326a: e00d         	b	0x8003288 <firmware_image+0x3288> @ imm = #0x1a
 800326c: 700c         	strb	r4, [r1]
 800326e: e00b         	b	0x8003288 <firmware_image+0x3288> @ imm = #0x16
 8003270: b108         	cbz	r0, 0x8003276 <firmware_image+0x3276> @ imm = #0x2
 8003272: 700b         	strb	r3, [r1]
 8003274: e008         	b	0x8003288 <firmware_image+0x3288> @ imm = #0x10
 8003276: 704c         	strb	r4, [r1, #0x1]
 8003278: 2002         	movs	r0, #0x2
 800327a: 7008         	strb	r0, [r1]
 800327c: e004         	b	0x8003288 <firmware_image+0x3288> @ imm = #0x8
 800327e: b110         	cbz	r0, 0x8003286 <firmware_image+0x3286> @ imm = #0x4
 8003280: 700b         	strb	r3, [r1]
 8003282: 704b         	strb	r3, [r1, #0x1]
 8003284: e000         	b	0x8003288 <firmware_image+0x3288> @ imm = #0x0
 8003286: 704c         	strb	r4, [r1, #0x1]
 8003288: e8bd 4010    	pop.w	{r4, lr}
 800328c: f7ff b998    	b.w	0x80025c0 <firmware_image+0x25c0> @ imm = #-0xcd0
 8003290: 013d         	lsls	r5, r7, #0x4
 8003292: 2000         	movs	r0, #0x0
 8003294: b51c         	push	{r2, r3, r4, lr}
 8003296: 2101         	movs	r1, #0x1
 8003298: 04c8         	lsls	r0, r1, #0x13
 800329a: f001 f859    	bl	0x8004350 <firmware_image+0x4350> @ imm = #0x10b2
 800329e: f44f 4000    	mov.w	r0, #0x8000
 80032a2: 9000         	str	r0, [sp]
 80032a4: 2000         	movs	r0, #0x0
 80032a6: f88d 0004    	strb.w	r0, [sp, #0x4]
 80032aa: 2103         	movs	r1, #0x3
 80032ac: f88d 1005    	strb.w	r1, [sp, #0x5]
 80032b0: f88d 0006    	strb.w	r0, [sp, #0x6]
 80032b4: f88d 0007    	strb.w	r0, [sp, #0x7]
 80032b8: 4669         	mov	r1, sp
 80032ba: 4802         	ldr	r0, [pc, #0x8]          @ 0x80032c4 <firmware_image+0x32c4>
 80032bc: f7ff f9fc    	bl	0x80026b8 <firmware_image+0x26b8> @ imm = #-0xc08
 80032c0: bd1c         	pop	{r2, r3, r4, pc}
 80032c2: 0000         	movs	r0, r0
 80032c4: 0800         	lsrs	r0, r0, #0x20
 80032c6: 4800         	ldr	r0, [pc, #0x0]          @ 0x80032c8 <firmware_image+0x32c8>
 80032c8: b510         	push	{r4, lr}
 80032ca: f44f 4100    	mov.w	r1, #0x8000
 80032ce: 4811         	ldr	r0, [pc, #0x44]         @ 0x8003314 <firmware_image+0x3314>
 80032d0: f7ff fa3e    	bl	0x8002750 <firmware_image+0x2750> @ imm = #-0xb84
 80032d4: 4910         	ldr	r1, [pc, #0x40]         @ 0x8003318 <firmware_image+0x3318>
 80032d6: 2300         	movs	r3, #0x0
 80032d8: 2401         	movs	r4, #0x1
 80032da: 788a         	ldrb	r2, [r1, #0x2]
 80032dc: b122         	cbz	r2, 0x80032e8 <firmware_image+0x32e8> @ imm = #0x8
 80032de: 2a01         	cmp	r2, #0x1
 80032e0: d007         	beq	0x80032f2 <firmware_image+0x32f2> @ imm = #0xe
 80032e2: 2a02         	cmp	r2, #0x2
 80032e4: d111         	bne	0x800330a <firmware_image+0x330a> @ imm = #0x22
 80032e6: e00b         	b	0x8003300 <firmware_image+0x3300> @ imm = #0x16
 80032e8: b108         	cbz	r0, 0x80032ee <firmware_image+0x32ee> @ imm = #0x2
 80032ea: 70cb         	strb	r3, [r1, #0x3]
 80032ec: e00d         	b	0x800330a <firmware_image+0x330a> @ imm = #0x1a
 80032ee: 708c         	strb	r4, [r1, #0x2]
 80032f0: 708b         	strb	r3, [r1, #0x2]
 80032f2: e008         	b	0x8003306 <firmware_image+0x3306> @ imm = #0x10
 80032f4: 70cc         	strb	r4, [r1, #0x3]
 80032f6: 2002         	movs	r0, #0x2
 80032f8: 7088         	strb	r0, [r1, #0x2]
 80032fa: e004         	b	0x8003306 <firmware_image+0x3306> @ imm = #0x8
 80032fc: b110         	cbz	r0, 0x8003304 <firmware_image+0x3304> @ imm = #0x4
 80032fe: 708b         	strb	r3, [r1, #0x2]
 8003300: 70cb         	strb	r3, [r1, #0x3]
 8003302: e000         	b	0x8003306 <firmware_image+0x3306> @ imm = #0x0
 8003304: 70cc         	strb	r4, [r1, #0x3]
 8003306: e8bd 4010    	pop.w	{r4, lr}
 800330a: f7ff b957    	b.w	0x80025bc <firmware_image+0x25bc> @ imm = #-0xd52
 800330e: 0000         	movs	r0, r0
 8003310: 0800         	lsrs	r0, r0, #0x20
 8003312: 4800         	ldr	r0, [pc, #0x0]          @ 0x8003314 <firmware_image+0x3314>
 8003314: 013d         	lsls	r5, r7, #0x4
 8003316: 2000         	movs	r0, #0x0
 8003318: e92d 41fc    	push.w	{r2, r3, r4, r5, r6, r7, r8, lr}
 800331c: 2101         	movs	r1, #0x1
 800331e: f44f 2060    	mov.w	r0, #0xe0000
 8003322: f001 f813    	bl	0x800434c <firmware_image+0x434c> @ imm = #0x1026
 8003326: f248 0480    	movw	r4, #0x8080
 800332a: 9400         	str	r4, [sp]
 800332c: 2501         	movs	r5, #0x1
 800332e: f88d 5004    	strb.w	r5, [sp, #0x4]
 8003332: 2703         	movs	r7, #0x3
 8003334: f88d 7005    	strb.w	r7, [sp, #0x5]
 8003338: 2600         	movs	r6, #0x0
 800333a: f88d 6006    	strb.w	r6, [sp, #0x6]
 800333e: f04f 4890    	mov.w	r8, #0x48000000
 8003342: 4669         	mov	r1, sp
 8003344: 4640         	mov	r0, r8
 8003346: f7ff f9b5    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0xc96
 800334a: 4621         	mov	r1, r4
 800334c: 4640         	mov	r0, r8
 800334e: f7ff fa06    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0xbf4
 8003352: 203e         	movs	r0, #0x3e
 8003354: 9000         	str	r0, [sp]
 8003356: f88d 5004    	strb.w	r5, [sp, #0x4]
 800335a: f88d 7005    	strb.w	r7, [sp, #0x5]
 800335e: f88d 6006    	strb.w	r6, [sp, #0x6]
 8003362: 4c05         	ldr	r4, [pc, #0x14]         @ 0x8003378 <firmware_image+0x3378>
 8003364: 4669         	mov	r1, sp
 8003366: 4620         	mov	r0, r4
 8003368: f7ff f9a4    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0xcb8
 800336c: 213e         	movs	r1, #0x3e
 800336e: 4620         	mov	r0, r4
 8003370: f7ff f9f5    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0xc16
 8003374: e8bd 81fc    	pop.w	{r2, r3, r4, r5, r6, r7, r8, pc}
 8003378: 0400         	lsls	r0, r0, #0x10
 800337a: 4800         	ldr	r0, [pc, #0x0]          @ 0x800337c <firmware_image+0x337c>
 800337c: b510         	push	{r4, lr}
 800337e: f002 fba7    	bl	0x8005ad0 <firmware_image+0x5ad0> @ imm = #0x274e
 8003382: f000 fa1f    	bl	0x80037c4 <firmware_image+0x37c4> @ imm = #0x43e
 8003386: f7ff f8c1    	bl	0x800250c <firmware_image+0x250c> @ imm = #-0xe7e
 800338a: f001 fe05    	bl	0x8004f98 <firmware_image+0x4f98> @ imm = #0x1c0a
 800338e: 2001         	movs	r0, #0x1
 8003390: f001 fc4c    	bl	0x8004c2c <firmware_image+0x4c2c> @ imm = #0x1898
 8003394: f000 f918    	bl	0x80035c8 <firmware_image+0x35c8> @ imm = #0x230
 8003398: e8bd 4010    	pop.w	{r4, lr}
 800339c: 2101         	movs	r1, #0x1
 800339e: 4801         	ldr	r0, [pc, #0x4]          @ 0x80033a4 <firmware_image+0x33a4>
 80033a0: f002 b91a    	b.w	0x80055d8 <firmware_image+0x55d8> @ imm = #0x2234
 80033a4: 2c00         	cmp	r4, #0x0
 80033a6: 4001         	ands	r1, r0
 80033a8: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80033c0 <firmware_image+0x33c0>
 80033aa: 2900         	cmp	r1, #0x0
 80033ac: d003         	beq	0x80033b6 <firmware_image+0x33b6> @ imm = #0x6
 80033ae: 6851         	ldr	r1, [r2, #0x4]
 80033b0: 4301         	orrs	r1, r0
 80033b2: 6051         	str	r1, [r2, #0x4]
 80033b4: 4770         	bx	lr
 80033b6: 6851         	ldr	r1, [r2, #0x4]
 80033b8: 4381         	bics	r1, r0
 80033ba: 6051         	str	r1, [r2, #0x4]
 80033bc: 4770         	bx	lr
 80033be: 0000         	movs	r0, r0
 80033c0: 2000         	movs	r0, #0x0
 80033c2: e004         	b	0x80033ce <firmware_image+0x33ce> @ imm = #0x8
 80033c4: b510         	push	{r4, lr}
 80033c6: f7ff f9d3    	bl	0x8002770 <firmware_image+0x2770> @ imm = #-0xc5a
 80033ca: f001 fced    	bl	0x8004da8 <firmware_image+0x4da8> @ imm = #0x19da
 80033ce: f001 faff    	bl	0x80049d0 <firmware_image+0x49d0> @ imm = #0x15fe
 80033d2: f001 fc53    	bl	0x8004c7c <firmware_image+0x4c7c> @ imm = #0x18a6
 80033d6: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x8003400 <firmware_image+0x3400>
 80033d8: 490a         	ldr	r1, [pc, #0x28]         @ 0x8003404 <firmware_image+0x3404>
 80033da: 480b         	ldr	r0, [pc, #0x2c]         @ 0x8003408 <firmware_image+0x3408>
 80033dc: f000 f9d2    	bl	0x8003784 <firmware_image+0x3784> @ imm = #0x3a4
 80033e0: 2101         	movs	r1, #0x1
 80033e2: 0288         	lsls	r0, r1, #0xa
 80033e4: f7ff ffe0    	bl	0x80033a8 <firmware_image+0x33a8> @ imm = #-0x40
 80033e8: f000 f8ee    	bl	0x80035c8 <firmware_image+0x35c8> @ imm = #0x1dc
 80033ec: f001 fb3c    	bl	0x8004a68 <firmware_image+0x4a68> @ imm = #0x1678
 80033f0: f000 f9c6    	bl	0x8003780 <firmware_image+0x3780> @ imm = #0x38c
 80033f4: f002 fb96    	bl	0x8005b24 <firmware_image+0x5b24> @ imm = #0x272c
 80033f8: e8bd 4010    	pop.w	{r4, lr}
 80033fc: f002 bb7d    	b.w	0x8005afa <firmware_image+0x5afa> @ imm = #0x26fa
 8003400: f002 bb7d    	b.w	0x8005afe <firmware_image+0x5afe> @ imm = #0x26fa
 8003404: 0530         	lsls	r0, r6, #0x14
 8003406: 2000         	movs	r0, #0x0
 8003408: 04f0         	lsls	r0, r6, #0x13
 800340a: 2000         	movs	r0, #0x0
 800340c: 0510         	lsls	r0, r2, #0x14
 800340e: 2000         	movs	r0, #0x0
 8003410: b5f8         	push	{r3, r4, r5, r6, r7, lr}
 8003412: 4c21         	ldr	r4, [pc, #0x84]         @ 0x8003498 <firmware_image+0x3498>
 8003414: 7820         	ldrb	r0, [r4]
 8003416: 4f21         	ldr	r7, [pc, #0x84]         @ 0x800349c <firmware_image+0x349c>
 8003418: 4d21         	ldr	r5, [pc, #0x84]         @ 0x80034a0 <firmware_image+0x34a0>
 800341a: 4e22         	ldr	r6, [pc, #0x88]         @ 0x80034a4 <firmware_image+0x34a4>
 800341c: 2805         	cmp	r0, #0x5
 800341e: d211         	bhs	0x8003444 <firmware_image+0x3444> @ imm = #0x22
 8003420: e8df f000    	tbb	[pc, r0]
 8003424: 1103         	asrs	r3, r0, #0x4
 8003426: 1916         	adds	r6, r2, r4
 8003428: 0023         	movs	r3, r4
 800342a: f001 fb27    	bl	0x8004a7c <firmware_image+0x4a7c> @ imm = #0x164e
 800342e: 481e         	ldr	r0, [pc, #0x78]         @ 0x80034a8 <firmware_image+0x34a8>
 8003430: 7839         	ldrb	r1, [r7]
 8003432: 7800         	ldrb	r0, [r0]
 8003434: 4308         	orrs	r0, r1
 8003436: 7829         	ldrb	r1, [r5]
 8003438: 4308         	orrs	r0, r1
 800343a: d103         	bne	0x8003444 <firmware_image+0x3444> @ imm = #0x6
 800343c: 7830         	ldrb	r0, [r6]
 800343e: 2801         	cmp	r0, #0x1
 8003440: d100         	bne	0x8003444 <firmware_image+0x3444> @ imm = #0x0
 8003442: 7020         	strb	r0, [r4]
 8003444: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 8003446: f7ff ff9b    	bl	0x8003380 <firmware_image+0x3380> @ imm = #-0xca
 800344a: 2002         	movs	r0, #0x2
 800344c: 7020         	strb	r0, [r4]
 800344e: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 8003450: 2003         	movs	r0, #0x3
 8003452: 7020         	strb	r0, [r4]
 8003454: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 8003456: 7828         	ldrb	r0, [r5]
 8003458: 7839         	ldrb	r1, [r7]
 800345a: 4308         	orrs	r0, r1
 800345c: d102         	bne	0x8003464 <firmware_image+0x3464> @ imm = #0x4
 800345e: 7830         	ldrb	r0, [r6]
 8003460: 2800         	cmp	r0, #0x0
 8003462: d1f7         	bne	0x8003454 <firmware_image+0x3454> @ imm = #-0x12
 8003464: 2004         	movs	r0, #0x4
 8003466: 7020         	strb	r0, [r4]
 8003468: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 800346a: 2100         	movs	r1, #0x0
 800346c: 480f         	ldr	r0, [pc, #0x3c]         @ 0x80034ac <firmware_image+0x34ac>
 800346e: f002 f8b5    	bl	0x80055dc <firmware_image+0x55dc> @ imm = #0x216a
 8003472: 2000         	movs	r0, #0x0
 8003474: f001 fbdc    	bl	0x8004c30 <firmware_image+0x4c30> @ imm = #0x17b8
 8003478: 480d         	ldr	r0, [pc, #0x34]         @ 0x80034b0 <firmware_image+0x34b0>
 800347a: 2500         	movs	r5, #0x0
 800347c: 8045         	strh	r5, [r0, #0x2]
 800347e: 8005         	strh	r5, [r0]
 8003480: 6800         	ldr	r0, [r0]
 8003482: 9000         	str	r0, [sp]
 8003484: f001 fb1a    	bl	0x8004abc <firmware_image+0x4abc> @ imm = #0x1634
 8003488: f001 faf0    	bl	0x8004a6c <firmware_image+0x4a6c> @ imm = #0x15e0
 800348c: f002 fb37    	bl	0x8005afe <firmware_image+0x5afe> @ imm = #0x266e
 8003490: 7025         	strb	r5, [r4]
 8003492: 7035         	strb	r5, [r6]
 8003494: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 8003496: 0000         	movs	r0, r0
 8003498: 0260         	lsls	r0, r4, #0x9
 800349a: 2000         	movs	r0, #0x0
 800349c: 0296         	lsls	r6, r2, #0xa
 800349e: 2000         	movs	r0, #0x0
 80034a0: 0269         	lsls	r1, r5, #0x9
 80034a2: 2000         	movs	r0, #0x0
 80034a4: 023a         	lsls	r2, r7, #0x8
 80034a6: 2000         	movs	r0, #0x0
 80034a8: 02b0         	lsls	r0, r6, #0xa
 80034aa: 2000         	movs	r0, #0x0
 80034ac: 2c00         	cmp	r4, #0x0
 80034ae: 4001         	ands	r1, r0
 80034b0: 025c         	lsls	r4, r3, #0x9
 80034b2: 2000         	movs	r0, #0x0
 80034b4: b510         	push	{r4, lr}
 80034b6: 481e         	ldr	r0, [pc, #0x78]         @ 0x8003530 <firmware_image+0x3530>
 80034b8: 89c1         	ldrh	r1, [r0, #0xe]
 80034ba: 1c49         	adds	r1, r1, #0x1
 80034bc: 81c1         	strh	r1, [r0, #0xe]
 80034be: 7981         	ldrb	r1, [r0, #0x6]
 80034c0: 481c         	ldr	r0, [pc, #0x70]         @ 0x8003534 <firmware_image+0x3534>
 80034c2: 7001         	strb	r1, [r0]
 80034c4: 2178         	movs	r1, #0x78
 80034c6: 7041         	strb	r1, [r0, #0x1]
 80034c8: 491b         	ldr	r1, [pc, #0x6c]         @ 0x8003538 <firmware_image+0x3538>
 80034ca: 8809         	ldrh	r1, [r1]
 80034cc: 0a0a         	lsrs	r2, r1, #0x8
 80034ce: 7082         	strb	r2, [r0, #0x2]
 80034d0: 70c1         	strb	r1, [r0, #0x3]
 80034d2: 491a         	ldr	r1, [pc, #0x68]         @ 0x800353c <firmware_image+0x353c>
 80034d4: 8809         	ldrh	r1, [r1]
 80034d6: 0a0a         	lsrs	r2, r1, #0x8
 80034d8: 7102         	strb	r2, [r0, #0x4]
 80034da: 7141         	strb	r1, [r0, #0x5]
 80034dc: 4918         	ldr	r1, [pc, #0x60]         @ 0x8003540 <firmware_image+0x3540>
 80034de: 8809         	ldrh	r1, [r1]
 80034e0: 0a0a         	lsrs	r2, r1, #0x8
 80034e2: 7182         	strb	r2, [r0, #0x6]
 80034e4: 71c1         	strb	r1, [r0, #0x7]
 80034e6: 4917         	ldr	r1, [pc, #0x5c]         @ 0x8003544 <firmware_image+0x3544>
 80034e8: 8809         	ldrh	r1, [r1]
 80034ea: 0a0a         	lsrs	r2, r1, #0x8
 80034ec: 7202         	strb	r2, [r0, #0x8]
 80034ee: 7241         	strb	r1, [r0, #0x9]
 80034f0: 4915         	ldr	r1, [pc, #0x54]         @ 0x8003548 <firmware_image+0x3548>
 80034f2: 7809         	ldrb	r1, [r1]
 80034f4: 7281         	strb	r1, [r0, #0xa]
 80034f6: 4915         	ldr	r1, [pc, #0x54]         @ 0x800354c <firmware_image+0x354c>
 80034f8: 7809         	ldrb	r1, [r1]
 80034fa: 72c1         	strb	r1, [r0, #0xb]
 80034fc: 4914         	ldr	r1, [pc, #0x50]         @ 0x8003550 <firmware_image+0x3550>
 80034fe: 8809         	ldrh	r1, [r1]
 8003500: 0a0a         	lsrs	r2, r1, #0x8
 8003502: 7302         	strb	r2, [r0, #0xc]
 8003504: 7341         	strb	r1, [r0, #0xd]
 8003506: 4913         	ldr	r1, [pc, #0x4c]         @ 0x8003554 <firmware_image+0x3554>
 8003508: 7809         	ldrb	r1, [r1]
 800350a: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x8003558 <firmware_image+0x3558>
 800350c: 7812         	ldrb	r2, [r2]
 800350e: ea41 11c2    	orr.w	r1, r1, r2, lsl #7
 8003512: 7381         	strb	r1, [r0, #0xe]
 8003514: 210f         	movs	r1, #0xf
 8003516: f003 fc8d    	bl	0x8006e34 <firmware_image+0x6e34> @ imm = #0x391a
 800351a: 4601         	mov	r1, r0
 800351c: 4805         	ldr	r0, [pc, #0x14]         @ 0x8003534 <firmware_image+0x3534>
 800351e: 300f         	adds	r0, #0xf
 8003520: f001 f94b    	bl	0x80047ba <firmware_image+0x47ba> @ imm = #0x1296
 8003524: 2111         	movs	r1, #0x11
 8003526: e8bd 4010    	pop.w	{r4, lr}
 800352a: 4802         	ldr	r0, [pc, #0x8]          @ 0x8003534 <firmware_image+0x3534>
 800352c: f003 bdc0    	b.w	0x80070b0 <firmware_image+0x70b0> @ imm = #0x3b80
 8003530: 021e         	lsls	r6, r3, #0x8
 8003532: 2000         	movs	r0, #0x0
 8003534: 0478         	lsls	r0, r7, #0x11
 8003536: 2000         	movs	r0, #0x0
 8003538: 0084         	lsls	r4, r0, #0x2
 800353a: 2000         	movs	r0, #0x0
 800353c: 003c         	movs	r4, r7
 800353e: 2000         	movs	r0, #0x0
 8003540: 00a2         	lsls	r2, r4, #0x2
 8003542: 2000         	movs	r0, #0x0
 8003544: 0096         	lsls	r6, r2, #0x2
 8003546: 2000         	movs	r0, #0x0
 8003548: 0070         	lsls	r0, r6, #0x1
 800354a: 2000         	movs	r0, #0x0
 800354c: 006f         	lsls	r7, r5, #0x1
 800354e: 2000         	movs	r0, #0x0
 8003550: 009a         	lsls	r2, r3, #0x2
 8003552: 2000         	movs	r0, #0x0
 8003554: 0141         	lsls	r1, r0, #0x5
 8003556: 2000         	movs	r0, #0x0
 8003558: 0067         	lsls	r7, r4, #0x1
 800355a: 2000         	movs	r0, #0x0
 800355c: 4816         	ldr	r0, [pc, #0x58]         @ 0x80035b8 <firmware_image+0x35b8>
 800355e: f9b0 0000    	ldrsh.w	r0, [r0]
 8003562: f44f 727a    	mov.w	r2, #0x3e8
 8003566: fb91 f1f2    	sdiv	r1, r1, r2
 800356a: 4a14         	ldr	r2, [pc, #0x50]         @ 0x80035bc <firmware_image+0x35bc>
 800356c: 6091         	str	r1, [r2, #0x8]
 800356e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x80035c0 <firmware_image+0x35c0>
 8003570: 881b         	ldrh	r3, [r3]
 8003572: 4299         	cmp	r1, r3
 8003574: dd18         	ble	0x80035a8 <firmware_image+0x35a8> @ imm = #0x30
 8003576: 8811         	ldrh	r1, [r2]
 8003578: 29fa         	cmp	r1, #0xfa
 800357a: d201         	bhs	0x8003580 <firmware_image+0x3580> @ imm = #0x2
 800357c: 1c49         	adds	r1, r1, #0x1
 800357e: 8011         	strh	r1, [r2]
 8003580: 8811         	ldrh	r1, [r2]
 8003582: 4288         	cmp	r0, r1
 8003584: dd02         	ble	0x800358c <firmware_image+0x358c> @ imm = #0x4
 8003586: 1a40         	subs	r0, r0, r1
 8003588: b200         	sxth	r0, r0
 800358a: 4770         	bx	lr
 800358c: 2800         	cmp	r0, #0x0
 800358e: dd02         	ble	0x8003596 <firmware_image+0x3596> @ imm = #0x4
 8003590: 3820         	subs	r0, #0x20
 8003592: b200         	sxth	r0, r0
 8003594: 4770         	bx	lr
 8003596: 424a         	rsbs	r2, r1, #0
 8003598: 4290         	cmp	r0, r2
 800359a: dd02         	ble	0x80035a2 <firmware_image+0x35a2> @ imm = #0x4
 800359c: 3020         	adds	r0, #0x20
 800359e: b200         	sxth	r0, r0
 80035a0: 4770         	bx	lr
 80035a2: 4408         	add	r0, r1
 80035a4: b200         	sxth	r0, r0
 80035a6: 4770         	bx	lr
 80035a8: 4906         	ldr	r1, [pc, #0x18]         @ 0x80035c4 <firmware_image+0x35c4>
 80035aa: 8809         	ldrh	r1, [r1]
 80035ac: 4408         	add	r0, r1
 80035ae: b200         	sxth	r0, r0
 80035b0: 2120         	movs	r1, #0x20
 80035b2: 8011         	strh	r1, [r2]
 80035b4: 4770         	bx	lr
 80035b6: 0000         	movs	r0, r0
 80035b8: 0258         	lsls	r0, r3, #0x9
 80035ba: 2000         	movs	r0, #0x0
 80035bc: 023c         	lsls	r4, r7, #0x8
 80035be: 2000         	movs	r0, #0x0
 80035c0: 008e         	lsls	r6, r1, #0x2
 80035c2: 2000         	movs	r0, #0x0
 80035c4: 00aa         	lsls	r2, r5, #0x2
 80035c6: 2000         	movs	r0, #0x0
 80035c8: e7fe         	b	0x80035c8 <firmware_image+0x35c8> @ imm = #-0x4
 80035ca: 0000         	movs	r0, r0
 80035cc: 2201         	movs	r2, #0x1
 80035ce: 2100         	movs	r1, #0x0
 80035d0: 4801         	ldr	r0, [pc, #0x4]          @ 0x80035d8 <firmware_image+0x35d8>
 80035d2: f002 b9d1    	b.w	0x8005978 <firmware_image+0x5978> @ imm = #0x23a2
 80035d6: 0000         	movs	r0, r0
 80035d8: 2c00         	cmp	r4, #0x0
 80035da: 4001         	ands	r1, r0
 80035dc: 4770         	bx	lr
 80035de: 0000         	movs	r0, r0
 80035e0: b5f8         	push	{r3, r4, r5, r6, r7, lr}
 80035e2: 2100         	movs	r1, #0x0
 80035e4: f04f 6000    	mov.w	r0, #0x8000000
 80035e8: f000 f8c2    	bl	0x8003770 <firmware_image+0x3770> @ imm = #0x184
 80035ec: f44f 60a0    	mov.w	r0, #0x500
 80035f0: f000 f8b4    	bl	0x800375c <firmware_image+0x375c> @ imm = #0x168
 80035f4: 492d         	ldr	r1, [pc, #0xb4]         @ 0x80036ac <firmware_image+0x36ac>
 80035f6: 20b0         	movs	r0, #0xb0
 80035f8: 270f         	movs	r7, #0xf
 80035fa: 7008         	strb	r0, [r1]
 80035fc: 200d         	movs	r0, #0xd
 80035fe: f88d 0000    	strb.w	r0, [sp]
 8003602: 2500         	movs	r5, #0x0
 8003604: f88d 5001    	strb.w	r5, [sp, #0x1]
 8003608: 2401         	movs	r4, #0x1
 800360a: f88d 4002    	strb.w	r4, [sp, #0x2]
 800360e: f88d 4003    	strb.w	r4, [sp, #0x3]
 8003612: 4668         	mov	r0, sp
 8003614: f000 f84c    	bl	0x80036b0 <firmware_image+0x36b0> @ imm = #0x98
 8003618: 200c         	movs	r0, #0xc
 800361a: f88d 0000    	strb.w	r0, [sp]
 800361e: f88d 5001    	strb.w	r5, [sp, #0x1]
 8003622: f88d 4002    	strb.w	r4, [sp, #0x2]
 8003626: f88d 4003    	strb.w	r4, [sp, #0x3]
 800362a: 4668         	mov	r0, sp
 800362c: f000 f840    	bl	0x80036b0 <firmware_image+0x36b0> @ imm = #0x80
 8003630: 201c         	movs	r0, #0x1c
 8003632: f88d 0000    	strb.w	r0, [sp]
 8003636: f88d 4001    	strb.w	r4, [sp, #0x1]
 800363a: 2602         	movs	r6, #0x2
 800363c: f88d 6002    	strb.w	r6, [sp, #0x2]
 8003640: f88d 4003    	strb.w	r4, [sp, #0x3]
 8003644: 4668         	mov	r0, sp
 8003646: f000 f833    	bl	0x80036b0 <firmware_image+0x36b0> @ imm = #0x66
 800364a: f88d 7000    	strb.w	r7, [sp]
 800364e: f88d 5001    	strb.w	r5, [sp, #0x1]
 8003652: f88d 6002    	strb.w	r6, [sp, #0x2]
 8003656: f88d 4003    	strb.w	r4, [sp, #0x3]
 800365a: 4668         	mov	r0, sp
 800365c: f000 f828    	bl	0x80036b0 <firmware_image+0x36b0> @ imm = #0x50
 8003660: 2010         	movs	r0, #0x10
 8003662: f88d 0000    	strb.w	r0, [sp]
 8003666: f88d 5001    	strb.w	r5, [sp, #0x1]
 800366a: f88d 4003    	strb.w	r4, [sp, #0x3]
 800366e: 4668         	mov	r0, sp
 8003670: f000 f81c    	bl	0x80036ac <firmware_image+0x36ac> @ imm = #0x38
 8003674: 200b         	movs	r0, #0xb
 8003676: f88d 0000    	strb.w	r0, [sp]
 800367a: f88d 6001    	strb.w	r6, [sp, #0x1]
 800367e: f88d 5002    	strb.w	r5, [sp, #0x2]
 8003682: f88d 4003    	strb.w	r4, [sp, #0x3]
 8003686: 4668         	mov	r0, sp
 8003688: f000 f810    	bl	0x80036ac <firmware_image+0x36ac> @ imm = #0x20
 800368c: 2007         	movs	r0, #0x7
 800368e: f88d 0000    	strb.w	r0, [sp]
 8003692: f88d 5001    	strb.w	r5, [sp, #0x1]
 8003696: f88d 6002    	strb.w	r6, [sp, #0x2]
 800369a: f88d 4003    	strb.w	r4, [sp, #0x3]
 800369e: 4668         	mov	r0, sp
 80036a0: f000 f804    	bl	0x80036ac <firmware_image+0x36ac> @ imm = #0x8
 80036a4: bdf8         	pop	{r3, r4, r5, r6, r7, pc}
 80036a6: 0000         	movs	r0, r0
 80036a8: ed23 e000    	stc	p0, c14, [r3, #-0]!
 80036ac: b570         	push	{r4, r5, r6, lr}
 80036ae: 2100         	movs	r1, #0x0
 80036b0: 2200         	movs	r2, #0x0
 80036b2: 78c4         	ldrb	r4, [r0, #0x3]
 80036b4: 2501         	movs	r5, #0x1
 80036b6: 7803         	ldrb	r3, [r0]
 80036b8: 2c00         	cmp	r4, #0x0
 80036ba: d041         	beq	0x8003740 <firmware_image+0x3740> @ imm = #0x82
 80036bc: 4c25         	ldr	r4, [pc, #0x94]         @ 0x8003754 <firmware_image+0x3754>
 80036be: 6826         	ldr	r6, [r4]
 80036c0: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036c4: 2e07         	cmp	r6, #0x7
 80036c6: d014         	beq	0x80036f2 <firmware_image+0x36f2> @ imm = #0x28
 80036c8: 6826         	ldr	r6, [r4]
 80036ca: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036ce: 2e06         	cmp	r6, #0x6
 80036d0: d011         	beq	0x80036f6 <firmware_image+0x36f6> @ imm = #0x22
 80036d2: 6826         	ldr	r6, [r4]
 80036d4: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036d8: 2e05         	cmp	r6, #0x5
 80036da: d00f         	beq	0x80036fc <firmware_image+0x36fc> @ imm = #0x1e
 80036dc: 6826         	ldr	r6, [r4]
 80036de: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036e2: 2e04         	cmp	r6, #0x4
 80036e4: d00d         	beq	0x8003702 <firmware_image+0x3702> @ imm = #0x1a
 80036e6: 6824         	ldr	r4, [r4]
 80036e8: f3c4 2402    	ubfx	r4, r4, #0x8, #0x3
 80036ec: 2c03         	cmp	r4, #0x3
 80036ee: d00b         	beq	0x8003708 <firmware_image+0x3708> @ imm = #0x16
 80036f0: e00b         	b	0x800370a <firmware_image+0x370a> @ imm = #0x16
 80036f2: 2204         	movs	r2, #0x4
 80036f4: e009         	b	0x800370a <firmware_image+0x370a> @ imm = #0x12
 80036f6: 2101         	movs	r1, #0x1
 80036f8: 2203         	movs	r2, #0x3
 80036fa: e006         	b	0x800370a <firmware_image+0x370a> @ imm = #0xc
 80036fc: 2102         	movs	r1, #0x2
 80036fe: 2202         	movs	r2, #0x2
 8003700: e003         	b	0x800370a <firmware_image+0x370a> @ imm = #0x6
 8003702: 2103         	movs	r1, #0x3
 8003704: 2201         	movs	r2, #0x1
 8003706: e000         	b	0x800370a <firmware_image+0x370a> @ imm = #0x0
 8003708: 2104         	movs	r1, #0x4
 800370a: 7844         	ldrb	r4, [r0, #0x1]
 800370c: f1c1 0104    	rsb.w	r1, r1, #0x4
 8003710: 408c         	lsls	r4, r1
 8003712: f1c2 0604    	rsb.w	r6, r2, #0x4
 8003716: 7881         	ldrb	r1, [r0, #0x2]
 8003718: 220f         	movs	r2, #0xf
 800371a: 40f2         	lsrs	r2, r6
 800371c: 4011         	ands	r1, r2
 800371e: 4321         	orrs	r1, r4
 8003720: 0109         	lsls	r1, r1, #0x4
 8003722: f103 23e0    	add.w	r3, r3, #0xe000e000
 8003726: f883 1400    	strb.w	r1, [r3, #0x400]
 800372a: 7800         	ldrb	r0, [r0]
 800372c: f000 011f    	and	r1, r0, #0x1f
 8003730: 408d         	lsls	r5, r1
 8003732: 0940         	lsrs	r0, r0, #0x5
 8003734: 0080         	lsls	r0, r0, #0x2
 8003736: f100 20e0    	add.w	r0, r0, #0xe000e000
 800373a: f8c0 5100    	str.w	r5, [r0, #0x100]
 800373e: bd70         	pop	{r4, r5, r6, pc}
 8003740: f003 001f    	and	r0, r3, #0x1f
 8003744: 4085         	lsls	r5, r0
 8003746: 0958         	lsrs	r0, r3, #0x5
 8003748: 0080         	lsls	r0, r0, #0x2
 800374a: f100 20e0    	add.w	r0, r0, #0xe000e000
 800374e: f8c0 5180    	str.w	r5, [r0, #0x180]
 8003752: bd70         	pop	{r4, r5, r6, pc}
 8003754: ed0c e000    	stc	p0, c14, [r12, #-0]
 8003758: 4902         	ldr	r1, [pc, #0x8]          @ 0x8003764 <firmware_image+0x3764>
 800375a: 4308         	orrs	r0, r1
 800375c: 4902         	ldr	r1, [pc, #0x8]          @ 0x8003768 <firmware_image+0x3768>
 800375e: 6008         	str	r0, [r1]
 8003760: 4770         	bx	lr
 8003762: 0000         	movs	r0, r0
 8003764: 0000         	movs	r0, r0
 8003766: 05fa         	lsls	r2, r7, #0x17
 8003768: ed0c e000    	stc	p0, c14, [r12, #-0]
 800376c: 4a02         	ldr	r2, [pc, #0x8]          @ 0x8003778 <firmware_image+0x3778>
 800376e: 4011         	ands	r1, r2
 8003770: 4301         	orrs	r1, r0
 8003772: 4802         	ldr	r0, [pc, #0x8]          @ 0x800377c <firmware_image+0x377c>
 8003774: 6001         	str	r1, [r0]
 8003776: 4770         	bx	lr
 8003778: ff80 1fff    	<unknown>
 800377c: ed08 e000    	stc	p0, c14, [r8, #-0]
 8003780: 4770         	bx	lr
 8003782: 4770         	bx	lr
 8003784: 2000         	movs	r0, #0x0
 8003786: 6148         	str	r0, [r1, #0x14]
 8003788: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x80037bc <firmware_image+0x37bc>
 800378a: 8010         	strh	r0, [r2]
 800378c: 2264         	movs	r2, #0x64
 800378e: 800a         	strh	r2, [r1]
 8003790: f44f 6280    	mov.w	r2, #0x400
 8003794: 804a         	strh	r2, [r1, #0x2]
 8003796: 2232         	movs	r2, #0x32
 8003798: 808a         	strh	r2, [r1, #0x4]
 800379a: f44f 5200    	mov.w	r2, #0x2000
 800379e: 80ca         	strh	r2, [r1, #0x6]
 80037a0: 8308         	strh	r0, [r1, #0x18]
 80037a2: 834a         	strh	r2, [r1, #0x1a]
 80037a4: 61c8         	str	r0, [r1, #0x1c]
 80037a6: f248 0001    	movw	r0, #0x8001
 80037aa: 8108         	strh	r0, [r1, #0x8]
 80037ac: 1e80         	subs	r0, r0, #0x2
 80037ae: 8148         	strh	r0, [r1, #0xa]
 80037b0: 4803         	ldr	r0, [pc, #0xc]          @ 0x80037c0 <firmware_image+0x37c0>
 80037b2: 60c8         	str	r0, [r1, #0xc]
 80037b4: 4240         	rsbs	r0, r0, #0
 80037b6: 6108         	str	r0, [r1, #0x10]
 80037b8: 4770         	bx	lr
 80037ba: 0000         	movs	r0, r0
 80037bc: 0262         	lsls	r2, r4, #0x9
 80037be: 2000         	movs	r0, #0x0
 80037c0: 2000         	movs	r0, #0x0
 80037c2: f000 4903    	and	r9, r0, #0x83000000
 80037c6: 2000         	movs	r0, #0x0
 80037c8: 6148         	str	r0, [r1, #0x14]
 80037ca: 4903         	ldr	r1, [pc, #0xc]          @ 0x80037d8 <firmware_image+0x37d8>
 80037cc: 6148         	str	r0, [r1, #0x14]
 80037ce: 4903         	ldr	r1, [pc, #0xc]          @ 0x80037dc <firmware_image+0x37dc>
 80037d0: 6148         	str	r0, [r1, #0x14]
 80037d2: 4770         	bx	lr
 80037d4: 0530         	lsls	r0, r6, #0x14
 80037d6: 2000         	movs	r0, #0x0
 80037d8: 0510         	lsls	r0, r2, #0x14
 80037da: 2000         	movs	r0, #0x0
 80037dc: 04f0         	lsls	r0, r6, #0x13
 80037de: 2000         	movs	r0, #0x0
 80037e0: b570         	push	{r4, r5, r6, lr}
 80037e2: 1a40         	subs	r0, r0, r1
 80037e4: f9b2 4000    	ldrsh.w	r4, [r2]
 80037e8: 4344         	muls	r4, r0, r4
 80037ea: f9b2 3004    	ldrsh.w	r3, [r2, #0x4]
 80037ee: 2b00         	cmp	r3, #0x0
 80037f0: d00d         	beq	0x800380e <firmware_image+0x380e> @ imm = #0x1a
 80037f2: 4343         	muls	r3, r0, r3
 80037f4: 6950         	ldr	r0, [r2, #0x14]
 80037f6: 17c1         	asrs	r1, r0, #0x1f
 80037f8: 18c0         	adds	r0, r0, r3
 80037fa: eb41 71e3    	adc.w	r1, r1, r3, asr #31
 80037fe: 6913         	ldr	r3, [r2, #0x10]
 8003800: 18c0         	adds	r0, r0, r3
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
 800389c: 7f20         	ldrb	r0, [r4, #0x1c]
 800389e: 2803         	cmp	r0, #0x3
 80038a0: d002         	beq	0x80038a8 <firmware_image+0x38a8> @ imm = #0x4
 80038a2: 7e60         	ldrb	r0, [r4, #0x19]
 80038a4: 2803         	cmp	r0, #0x3
 80038a6: d115         	bne	0x80038d4 <firmware_image+0x38d4> @ imm = #0x2a
 80038a8: 8011         	strh	r1, [r2]
 80038aa: e013         	b	0x80038d4 <firmware_image+0x38d4> @ imm = #0x26
 80038ac: 7ea0         	ldrb	r0, [r4, #0x1a]
 80038ae: 2801         	cmp	r0, #0x1
 80038b0: d002         	beq	0x80038b8 <firmware_image+0x38b8> @ imm = #0x4
 80038b2: 7ee3         	ldrb	r3, [r4, #0x1b]
 80038b4: 2b01         	cmp	r3, #0x1
 80038b6: d103         	bne	0x80038c0 <firmware_image+0x38c0> @ imm = #0x6
 80038b8: 7f23         	ldrb	r3, [r4, #0x1c]
 80038ba: 7e66         	ldrb	r6, [r4, #0x19]
 80038bc: 4333         	orrs	r3, r6
 80038be: d008         	beq	0x80038d2 <firmware_image+0x38d2> @ imm = #0x10
 80038c0: 7ee3         	ldrb	r3, [r4, #0x1b]
 80038c2: 4318         	orrs	r0, r3
 80038c4: d106         	bne	0x80038d4 <firmware_image+0x38d4> @ imm = #0xc
 80038c6: 7f20         	ldrb	r0, [r4, #0x1c]
 80038c8: 2803         	cmp	r0, #0x3
 80038ca: d002         	beq	0x80038d2 <firmware_image+0x38d2> @ imm = #0x4
 80038cc: 7e60         	ldrb	r0, [r4, #0x19]
 80038ce: 2803         	cmp	r0, #0x3
 80038d0: d100         	bne	0x80038d4 <firmware_image+0x38d4> @ imm = #0x0
 80038d2: 8011         	strh	r1, [r2]
 80038d4: 7ea0         	ldrb	r0, [r4, #0x1a]
 80038d6: 7720         	strb	r0, [r4, #0x1c]
 80038d8: 7ee0         	ldrb	r0, [r4, #0x1b]
 80038da: 7660         	strb	r0, [r4, #0x19]
 80038dc: f9b4 003e    	ldrsh.w	r0, [r4, #0x3e]
 80038e0: f9b4 1040    	ldrsh.w	r1, [r4, #0x40]
 80038e4: 1a40         	subs	r0, r0, r1
 80038e6: eb00 70d0    	add.w	r0, r0, r0, lsr #31
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
 8003a5e: f020 0008    	bic	r0, r0, #0x8
 8003a62: 7320         	strb	r0, [r4, #0xc]
 8003a64: 7b20         	ldrb	r0, [r4, #0xc]
 8003a66: f020 0030    	bic	r0, r0, #0x30
 8003a6a: 497f         	ldr	r1, [pc, #0x1fc]        @ 0x8003c68 <firmware_image+0x3c68>
 8003a6c: 7809         	ldrb	r1, [r1]
 8003a6e: ea40 1001    	orr.w	r0, r0, r1, lsl #4
 8003a72: b2c0         	uxtb	r0, r0
 8003a74: 7320         	strb	r0, [r4, #0xc]
 8003a76: 7831         	ldrb	r1, [r6]
 8003a78: 2901         	cmp	r1, #0x1
 8003a7a: d038         	beq	0x8003aee <firmware_image+0x3aee> @ imm = #0x70
 8003a7c: f020 0040    	bic	r0, r0, #0x40
 8003a80: 7320         	strb	r0, [r4, #0xc]
 8003a82: e000         	b	0x8003a86 <firmware_image+0x3a86> @ imm = #0x0
 8003a84: e063         	b	0x8003b4e <firmware_image+0x3b4e> @ imm = #0xc6
 8003a86: 4879         	ldr	r0, [pc, #0x1e4]        @ 0x8003c6c <firmware_image+0x3c6c>
 8003a88: 7800         	ldrb	r0, [r0]
 8003a8a: 2801         	cmp	r0, #0x1
 8003a8c: d033         	beq	0x8003af6 <firmware_image+0x3af6> @ imm = #0x66
 8003a8e: 7b20         	ldrb	r0, [r4, #0xc]
 8003a90: f020 0080    	bic	r0, r0, #0x80
 8003a94: 7320         	strb	r0, [r4, #0xc]
 8003a96: f898 0000    	ldrb.w	r0, [r8]
 8003a9a: 2801         	cmp	r0, #0x1
 8003a9c: d030         	beq	0x8003b00 <firmware_image+0x3b00> @ imm = #0x60
 8003a9e: 7ae0         	ldrb	r0, [r4, #0xb]
 8003aa0: f020 0001    	bic	r0, r0, #0x1
 8003aa4: 72e0         	strb	r0, [r4, #0xb]
 8003aa6: f899 0000    	ldrb.w	r0, [r9]
 8003aaa: 2801         	cmp	r0, #0x1
 8003aac: d02d         	beq	0x8003b0a <firmware_image+0x3b0a> @ imm = #0x5a
 8003aae: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ab0: f020 0002    	bic	r0, r0, #0x2
 8003ab4: 72e0         	strb	r0, [r4, #0xb]
 8003ab6: 7838         	ldrb	r0, [r7]
 8003ab8: 2801         	cmp	r0, #0x1
 8003aba: d02b         	beq	0x8003b14 <firmware_image+0x3b14> @ imm = #0x56
 8003abc: 7ae0         	ldrb	r0, [r4, #0xb]
 8003abe: f020 0004    	bic	r0, r0, #0x4
 8003ac2: 72e0         	strb	r0, [r4, #0xb]
 8003ac4: 7820         	ldrb	r0, [r4]
 8003ac6: 2801         	cmp	r0, #0x1
 8003ac8: d029         	beq	0x8003b1e <firmware_image+0x3b1e> @ imm = #0x52
 8003aca: 7ae0         	ldrb	r0, [r4, #0xb]
 8003acc: f020 0008    	bic	r0, r0, #0x8
 8003ad0: 72e0         	strb	r0, [r4, #0xb]
 8003ad2: 7860         	ldrb	r0, [r4, #0x1]
 8003ad4: 2801         	cmp	r0, #0x1
 8003ad6: d027         	beq	0x8003b28 <firmware_image+0x3b28> @ imm = #0x4e
 8003ad8: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ada: f020 0010    	bic	r0, r0, #0x10
 8003ade: 72e0         	strb	r0, [r4, #0xb]
 8003ae0: 8d20         	ldrh	r0, [r4, #0x28]
 8003ae2: b330         	cbz	r0, 0x8003b32 <firmware_image+0x3b32> @ imm = #0x4c
 8003ae4: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ae6: f040 0020    	orr	r0, r0, #0x20
 8003aea: 72e0         	strb	r0, [r4, #0xb]
 8003aec: e025         	b	0x8003b3a <firmware_image+0x3b3a> @ imm = #0x4a
 8003aee: f040 0040    	orr	r0, r0, #0x40
 8003af2: 7320         	strb	r0, [r4, #0xc]
 8003af4: e7c5         	b	0x8003a82 <firmware_image+0x3a82> @ imm = #-0x76
 8003af6: 7b20         	ldrb	r0, [r4, #0xc]
 8003af8: f040 0080    	orr	r0, r0, #0x80
 8003afc: 7320         	strb	r0, [r4, #0xc]
 8003afe: e7ca         	b	0x8003a96 <firmware_image+0x3a96> @ imm = #-0x6c
 8003b00: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b02: f040 0001    	orr	r0, r0, #0x1
 8003b06: 72e0         	strb	r0, [r4, #0xb]
 8003b08: e7cd         	b	0x8003aa6 <firmware_image+0x3aa6> @ imm = #-0x66
 8003b0a: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b0c: f040 0002    	orr	r0, r0, #0x2
 8003b10: 72e0         	strb	r0, [r4, #0xb]
 8003b12: e7d0         	b	0x8003ab6 <firmware_image+0x3ab6> @ imm = #-0x60
 8003b14: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b16: f040 0004    	orr	r0, r0, #0x4
 8003b1a: 72e0         	strb	r0, [r4, #0xb]
 8003b1c: e7d2         	b	0x8003ac4 <firmware_image+0x3ac4> @ imm = #-0x5c
 8003b1e: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b20: f040 0008    	orr	r0, r0, #0x8
 8003b24: 72e0         	strb	r0, [r4, #0xb]
 8003b26: e7d4         	b	0x8003ad2 <firmware_image+0x3ad2> @ imm = #-0x58
 8003b28: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b2a: f040 0010    	orr	r0, r0, #0x10
 8003b2e: 72e0         	strb	r0, [r4, #0xb]
 8003b30: e7d6         	b	0x8003ae0 <firmware_image+0x3ae0> @ imm = #-0x54
 8003b32: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b34: f020 0020    	bic	r0, r0, #0x20
 8003b38: 72e0         	strb	r0, [r4, #0xb]
 8003b3a: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b3c: f020 00c0    	bic	r0, r0, #0xc0
 8003b40: 7a21         	ldrb	r1, [r4, #0x8]
 8003b42: ea40 1081    	orr.w	r0, r0, r1, lsl #6
 8003b46: 72e0         	strb	r0, [r4, #0xb]
 8003b48: f7ff fcb4    	bl	0x80034b4 <firmware_image+0x34b4> @ imm = #-0x698
 8003b4c: e04c         	b	0x8003be8 <firmware_image+0x3be8> @ imm = #0x98
 8003b4e: 4848         	ldr	r0, [pc, #0x120]        @ 0x8003c70 <firmware_image+0x3c70>
 8003b50: 7800         	ldrb	r0, [r0]
 8003b52: b120         	cbz	r0, 0x8003b5e <firmware_image+0x3b5e> @ imm = #0x8
 8003b54: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b56: f040 0004    	orr	r0, r0, #0x4
 8003b5a: 73a0         	strb	r0, [r4, #0xe]
 8003b5c: e003         	b	0x8003b66 <firmware_image+0x3b66> @ imm = #0x6
 8003b5e: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b60: f020 0004    	bic	r0, r0, #0x4
 8003b64: 73a0         	strb	r0, [r4, #0xe]
 8003b66: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b68: f020 0030    	bic	r0, r0, #0x30
 8003b6c: 4941         	ldr	r1, [pc, #0x104]        @ 0x8003c74 <firmware_image+0x3c74>
 8003b6e: 7809         	ldrb	r1, [r1]
 8003b70: ea40 1001    	orr.w	r0, r0, r1, lsl #4
 8003b74: b2c0         	uxtb	r0, r0
 8003b76: 73a0         	strb	r0, [r4, #0xe]
 8003b78: 7831         	ldrb	r1, [r6]
 8003b7a: 2901         	cmp	r1, #0x1
 8003b7c: d03a         	beq	0x8003bf4 <firmware_image+0x3bf4> @ imm = #0x74
 8003b7e: f020 0040    	bic	r0, r0, #0x40
 8003b82: 73a0         	strb	r0, [r4, #0xe]
 8003b84: f898 0000    	ldrb.w	r0, [r8]
 8003b88: 2801         	cmp	r0, #0x1
 8003b8a: d037         	beq	0x8003bfc <firmware_image+0x3bfc> @ imm = #0x6e
 8003b8c: 7b60         	ldrb	r0, [r4, #0xd]
 8003b8e: f020 0001    	bic	r0, r0, #0x1
 8003b92: 7360         	strb	r0, [r4, #0xd]
 8003b94: f899 0000    	ldrb.w	r0, [r9]
 8003b98: 2801         	cmp	r0, #0x1
 8003b9a: d034         	beq	0x8003c06 <firmware_image+0x3c06> @ imm = #0x68
 8003b9c: 7b60         	ldrb	r0, [r4, #0xd]
 8003b9e: f020 0002    	bic	r0, r0, #0x2
 8003ba2: 7360         	strb	r0, [r4, #0xd]
 8003ba4: 7838         	ldrb	r0, [r7]
 8003ba6: 2801         	cmp	r0, #0x1
 8003ba8: d032         	beq	0x8003c10 <firmware_image+0x3c10> @ imm = #0x64
 8003baa: 7b60         	ldrb	r0, [r4, #0xd]
 8003bac: f020 0004    	bic	r0, r0, #0x4
 8003bb0: 7360         	strb	r0, [r4, #0xd]
 8003bb2: 7820         	ldrb	r0, [r4]
 8003bb4: 2801         	cmp	r0, #0x1
 8003bb6: d030         	beq	0x8003c1a <firmware_image+0x3c1a> @ imm = #0x60
 8003bb8: 7b60         	ldrb	r0, [r4, #0xd]
 8003bba: f020 0008    	bic	r0, r0, #0x8
 8003bbe: 7360         	strb	r0, [r4, #0xd]
 8003bc0: 7860         	ldrb	r0, [r4, #0x1]
 8003bc2: 2801         	cmp	r0, #0x1
 8003bc4: d02e         	beq	0x8003c24 <firmware_image+0x3c24> @ imm = #0x5c
 8003bc6: 7b60         	ldrb	r0, [r4, #0xd]
 8003bc8: f020 0010    	bic	r0, r0, #0x10
 8003bcc: 7360         	strb	r0, [r4, #0xd]
 8003bce: 2901         	cmp	r1, #0x1
 8003bd0: d02d         	beq	0x8003c2e <firmware_image+0x3c2e> @ imm = #0x5a
 8003bd2: 7b60         	ldrb	r0, [r4, #0xd]
 8003bd4: f020 0020    	bic	r0, r0, #0x20
 8003bd8: 7360         	strb	r0, [r4, #0xd]
 8003bda: 7b60         	ldrb	r0, [r4, #0xd]
 8003bdc: f020 00c0    	bic	r0, r0, #0xc0
 8003be0: 7a21         	ldrb	r1, [r4, #0x8]
 8003be2: ea40 1081    	orr.w	r0, r0, r1, lsl #6
 8003be6: 7360         	strb	r0, [r4, #0xd]
 8003be8: f834 0f42    	ldrh	r0, [r4, #66]!
 8003bec: 1c40         	adds	r0, r0, #0x1
 8003bee: 8020         	strh	r0, [r4]
 8003bf0: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
 8003bf4: f040 0040    	orr	r0, r0, #0x40
 8003bf8: 73a0         	strb	r0, [r4, #0xe]
 8003bfa: e7c3         	b	0x8003b84 <firmware_image+0x3b84> @ imm = #-0x7a
 8003bfc: 7b60         	ldrb	r0, [r4, #0xd]
 8003bfe: f040 7b60    	orr	r11, r0, #0x3800000
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
 8003ca0: 2332         	movs	r3, #0x32
 8003ca2: 2514         	movs	r5, #0x14
 8003ca4: f646 7b54    	movw	r11, #0x6f54
 8003ca8: 2801         	cmp	r0, #0x1
 8003caa: d06e         	beq	0x8003d8a <firmware_image+0x3d8a> @ imm = #0xdc
 8003cac: 2802         	cmp	r0, #0x2
 8003cae: d06d         	beq	0x8003d8c <firmware_image+0x3d8c> @ imm = #0xda
 8003cb0: 2803         	cmp	r0, #0x3
 8003cb2: d06c         	beq	0x8003d8e <firmware_image+0x3d8e> @ imm = #0xd8
 8003cb4: f88a 6000    	strb.w	r6, [r10]
 8003cb8: f8c9 6044    	str.w	r6, [r9, #0x44]
 8003cbc: f8c9 602c    	str.w	r6, [r9, #0x2c]
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
 8003d28: 6828         	ldr	r0, [r5]
 8003d2a: f7fc fa87    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x3af2
 8003d2e: f7fc fca3    	bl	0x8000678 <firmware_image+0x678> @ imm = #-0x36ba
 8003d32: b200         	sxth	r0, r0
 8003d34: f002 fb72    	bl	0x800641c <firmware_image+0x641c> @ imm = #0x26e4
 8003d38: f641 514c    	movw	r1, #0x1d4c
 8003d3c: 4288         	cmp	r0, r1
 8003d3e: da30         	bge	0x8003da2 <firmware_image+0x3da2> @ imm = #0x60
 8003d40: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d42: b1f8         	cbz	r0, 0x8003d84 <firmware_image+0x3d84> @ imm = #0x3e
 8003d44: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 8003d48: dd29         	ble	0x8003d9e <firmware_image+0x3d9e> @ imm = #0x52
 8003d4a: 48d3         	ldr	r0, [pc, #0x34c]        @ 0x8004098 <firmware_image+0x4098>
 8003d4c: 7800         	ldrb	r0, [r0]
 8003d4e: b9b8         	cbnz	r0, 0x8003d80 <firmware_image+0x3d80> @ imm = #0x2e
 8003d50: 48d2         	ldr	r0, [pc, #0x348]        @ 0x800409c <firmware_image+0x409c>
 8003d52: 7800         	ldrb	r0, [r0]
 8003d54: b9a0         	cbnz	r0, 0x8003d80 <firmware_image+0x3d80> @ imm = #0x28
 8003d56: 48d2         	ldr	r0, [pc, #0x348]        @ 0x80040a0 <firmware_image+0x40a0>
 8003d58: 7800         	ldrb	r0, [r0]
 8003d5a: b988         	cbnz	r0, 0x8003d80 <firmware_image+0x3d80> @ imm = #0x22
 8003d5c: 48d1         	ldr	r0, [pc, #0x344]        @ 0x80040a4 <firmware_image+0x40a4>
 8003d5e: 7800         	ldrb	r0, [r0]
 8003d60: b970         	cbnz	r0, 0x8003d80 <firmware_image+0x3d80> @ imm = #0x1c
 8003d62: 7cf8         	ldrb	r0, [r7, #0x13]
 8003d64: b960         	cbnz	r0, 0x8003d80 <firmware_image+0x3d80> @ imm = #0x18
 8003d66: 7d78         	ldrb	r0, [r7, #0x15]
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
 8003e14: 4558         	cmp	r0, r11
 8003e16: dd18         	ble	0x8003e4a <firmware_image+0x3e4a> @ imm = #0x30
 8003e18: f8c9 b02c    	str.w	r11, [r9, #0x2c]
 8003e1c: f8c9 600c    	str.w	r6, [r9, #0xc]
 8003e20: 8cf8         	ldrh	r0, [r7, #0x26]
 8003e22: b130         	cbz	r0, 0x8003e32 <firmware_image+0x3e32> @ imm = #0xc
 8003e24: 7239         	strb	r1, [r7, #0x8]
 8003e26: f8c8 2000    	str.w	r2, [r8]
 8003e2a: 65bb         	str	r3, [r7, #0x58]
 8003e2c: 65fd         	str	r5, [r7, #0x5c]
 8003e2e: 663e         	str	r6, [r7, #0x60]
 8003e30: e00e         	b	0x8003e50 <firmware_image+0x3e50> @ imm = #0x1c
 8003e32: 2003         	movs	r0, #0x3
 8003e34: 7238         	strb	r0, [r7, #0x8]
 8003e36: 6cb8         	ldr	r0, [r7, #0x48]
 8003e38: f8c8 0000    	str.w	r0, [r8]
 8003e3c: 6cf8         	ldr	r0, [r7, #0x4c]
 8003e3e: 65b8         	str	r0, [r7, #0x58]
 8003e40: 6d38         	ldr	r0, [r7, #0x50]
 8003e42: 65f8         	str	r0, [r7, #0x5c]
 8003e44: 6d78         	ldr	r0, [r7, #0x54]
 8003e46: 6638         	str	r0, [r7, #0x60]
 8003e48: e002         	b	0x8003e50 <firmware_image+0x3e50> @ imm = #0x4
 8003e4a: 3064         	adds	r0, #0x64
 8003e4c: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003e50: 4892         	ldr	r0, [pc, #0x248]        @ 0x800409c <firmware_image+0x409c>
 8003e52: 7800         	ldrb	r0, [r0]
 8003e54: 2801         	cmp	r0, #0x1
 8003e56: d005         	beq	0x8003e64 <firmware_image+0x3e64> @ imm = #0xa
 8003e58: 7878         	ldrb	r0, [r7, #0x1]
 8003e5a: b918         	cbnz	r0, 0x8003e64 <firmware_image+0x3e64> @ imm = #0x6
 8003e5c: 488e         	ldr	r0, [pc, #0x238]        @ 0x8004098 <firmware_image+0x4098>
 8003e5e: 7800         	ldrb	r0, [r0]
 8003e60: 2800         	cmp	r0, #0x0
 8003e62: d09e         	beq	0x8003da2 <firmware_image+0x3da2> @ imm = #-0xc4
 8003e64: 8cf8         	ldrh	r0, [r7, #0x26]
 8003e66: 2800         	cmp	r0, #0x0
 8003e68: d09b         	beq	0x8003da2 <firmware_image+0x3da2> @ imm = #-0xca
 8003e6a: f88a 6000    	strb.w	r6, [r10]
 8003e6e: 723e         	strb	r6, [r7, #0x8]
 8003e70: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003e74: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003e78: e71e         	b	0x8003cb8 <firmware_image+0x3cb8> @ imm = #-0x1c4
 8003e7a: f8d9 001c    	ldr.w	r0, [r9, #0x1c]
 8003e7e: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8003e82: 0100         	lsls	r0, r0, #0x4
 8003e84: f7fc fbe5    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x3836
 8003e88: 2200         	movs	r2, #0x0
 8003e8a: 4b89         	ldr	r3, [pc, #0x224]        @ 0x80040b0 <firmware_image+0x40b0>
 8003e8c: f7fc fb69    	bl	0x8000562 <firmware_image+0x562> @ imm = #-0x392e
 8003e90: 4604         	mov	r4, r0
 8003e92: 460d         	mov	r5, r1
 8003e94: f9b7 0036    	ldrsh.w	r0, [r7, #0x36]
 8003e98: f9b7 1038    	ldrsh.w	r1, [r7, #0x38]
 8003e9c: 1a41         	subs	r1, r0, r1
 8003e9e: eb01 0141    	add.w	r1, r1, r1, lsl #1
 8003ea2: eb00 0041    	add.w	r0, r0, r1, lsl #1
 8003ea6: 2132         	movs	r1, #0x32
 8003ea8: 4348         	muls	r0, r1, r0
 8003eaa: 2164         	movs	r1, #0x64
 8003eac: fb90 f0f1    	sdiv	r0, r0, r1
 8003eb0: f7fc fbcf    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x3862
 8003eb4: 4622         	mov	r2, r4
 8003eb6: 462b         	mov	r3, r5
 8003eb8: f7fc fa3a    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0x3b8c
 8003ebc: f7fc fbf3    	bl	0x80006a6 <firmware_image+0x6a6> @ imm = #-0x381a
 8003ec0: f8c9 0024    	str.w	r0, [r9, #0x24]
 8003ec4: 486c         	ldr	r0, [pc, #0x1b0]        @ 0x8004078 <firmware_image+0x4078>
 8003ec6: 465a         	mov	r2, r11
 8003ec8: 497a         	ldr	r1, [pc, #0x1e8]        @ 0x80040b4 <firmware_image+0x40b4>
 8003eca: 30a4         	adds	r0, #0xa4
 8003ecc: f7fd ff1c    	bl	0x8001d08 <firmware_image+0x1d08> @ imm = #-0x21c8
 8003ed0: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003ed4: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003ed8: f002 fa9e    	bl	0x8006418 <firmware_image+0x6418> @ imm = #0x253c
 8003edc: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003ee0: 486e         	ldr	r0, [pc, #0x1b8]        @ 0x800409c <firmware_image+0x409c>
 8003ee2: 7800         	ldrb	r0, [r0]
 8003ee4: 2801         	cmp	r0, #0x1
 8003ee6: d004         	beq	0x8003ef2 <firmware_image+0x3ef2> @ imm = #0x8
 8003ee8: 7878         	ldrb	r0, [r7, #0x1]
 8003eea: b910         	cbnz	r0, 0x8003ef2 <firmware_image+0x3ef2> @ imm = #0x4
 8003eec: 486a         	ldr	r0, [pc, #0x1a8]        @ 0x8004098 <firmware_image+0x4098>
 8003eee: 7800         	ldrb	r0, [r0]
 8003ef0: b130         	cbz	r0, 0x8003f00 <firmware_image+0x3f00> @ imm = #0xc
 8003ef2: f88a 6000    	strb.w	r6, [r10]
 8003ef6: 723e         	strb	r6, [r7, #0x8]
 8003ef8: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003efc: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003f00: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x80040a8 <firmware_image+0x40a8>
 8003f02: 7800         	ldrb	r0, [r0]
 8003f04: b300         	cbz	r0, 0x8003f48 <firmware_image+0x3f48> @ imm = #0x40
 8003f06: f8d9 0010    	ldr.w	r0, [r9, #0x10]
 8003f0a: f648 21ce    	movw	r1, #0x8ace
 8003f0e: 4288         	cmp	r0, r1
 8003f10: d202         	bhs	0x8003f18 <firmware_image+0x3f18> @ imm = #0x4
 8003f12: 1c40         	adds	r0, r0, #0x1
 8003f14: f8c9 0010    	str.w	r0, [r9, #0x10]
 8003f18: f8d9 0010    	ldr.w	r0, [r9, #0x10]
 8003f1c: 2805         	cmp	r0, #0x5
 8003f1e: d9ab         	bls	0x8003e78 <firmware_image+0x3e78> @ imm = #-0xaa
 8003f20: 2003         	movs	r0, #0x3
 8003f22: 7238         	strb	r0, [r7, #0x8]
 8003f24: 6cb8         	ldr	r0, [r7, #0x48]
 8003f26: f8c8 0000    	str.w	r0, [r8]
 8003f2a: 6cf8         	ldr	r0, [r7, #0x4c]
 8003f2c: 65b8         	str	r0, [r7, #0x58]
 8003f2e: 6d38         	ldr	r0, [r7, #0x50]
 8003f30: 65f8         	str	r0, [r7, #0x5c]
 8003f32: 6d78         	ldr	r0, [r7, #0x54]
 8003f34: 6638         	str	r0, [r7, #0x60]
 8003f36: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003f3a: f002 fa6d    	bl	0x8006418 <firmware_image+0x6418> @ imm = #0x24da
 8003f3e: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003f42: f8c9 6014    	str.w	r6, [r9, #0x14]
 8003f46: e6b7         	b	0x8003cb8 <firmware_image+0x3cb8> @ imm = #-0x292
 8003f48: f8c9 6010    	str.w	r6, [r9, #0x10]
 8003f4c: e6b4         	b	0x8003cb8 <firmware_image+0x3cb8> @ imm = #-0x298
 8003f4e: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003f52: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003f56: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 8003f5a: 2800         	cmp	r0, #0x0
 8003f5c: da09         	bge	0x8003f72 <firmware_image+0x3f72> @ imm = #0x12
 8003f5e: 7ab8         	ldrb	r0, [r7, #0xa]
 8003f60: 2864         	cmp	r0, #0x64
 8003f62: d201         	bhs	0x8003f68 <firmware_image+0x3f68> @ imm = #0x2
 8003f64: 1c40         	adds	r0, r0, #0x1
 8003f66: 72b8         	strb	r0, [r7, #0xa]
 8003f68: 7ab8         	ldrb	r0, [r7, #0xa]
 8003f6a: 2814         	cmp	r0, #0x14
 8003f6c: d902         	bls	0x8003f74 <firmware_image+0x3f74> @ imm = #0x4
 8003f6e: 723e         	strb	r6, [r7, #0x8]
 8003f70: e000         	b	0x8003f74 <firmware_image+0x3f74> @ imm = #0x0
 8003f72: 72be         	strb	r6, [r7, #0xa]
 8003f74: 7978         	ldrb	r0, [r7, #0x5]
 8003f76: 2801         	cmp	r0, #0x1
 8003f78: d00e         	beq	0x8003f98 <firmware_image+0x3f98> @ imm = #0x1c
 8003f7a: 79b8         	ldrb	r0, [r7, #0x6]
 8003f7c: 2801         	cmp	r0, #0x1
 8003f7e: d00b         	beq	0x8003f98 <firmware_image+0x3f98> @ imm = #0x16
 8003f80: 79f8         	ldrb	r0, [r7, #0x7]
 8003f82: 2801         	cmp	r0, #0x1
 8003f84: d008         	beq	0x8003f98 <firmware_image+0x3f98> @ imm = #0x10
 8003f86: 8cf8         	ldrh	r0, [r7, #0x26]
 8003f88: b1a0         	cbz	r0, 0x8003fb4 <firmware_image+0x3fb4> @ imm = #0x28
 8003f8a: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003f8e: 4558         	cmp	r0, r11
 8003f90: dd0d         	ble	0x8003fae <firmware_image+0x3fae> @ imm = #0x1a
 8003f92: f8c9 b02c    	str.w	r11, [r9, #0x2c]
 8003f96: e00d         	b	0x8003fb4 <firmware_image+0x3fb4> @ imm = #0x1a
 8003f98: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003f9c: 280a         	cmp	r0, #0xa
 8003f9e: dd03         	ble	0x8003fa8 <firmware_image+0x3fa8> @ imm = #0x6
 8003fa0: 380a         	subs	r0, #0xa
 8003fa2: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003fa6: e005         	b	0x8003fb4 <firmware_image+0x3fb4> @ imm = #0xa
 8003fa8: f8c9 602c    	str.w	r6, [r9, #0x2c]
 8003fac: e002         	b	0x8003fb4 <firmware_image+0x3fb4> @ imm = #0x4
 8003fae: 30c8         	adds	r0, #0xc8
 8003fb0: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003fb4: 4840         	ldr	r0, [pc, #0x100]        @ 0x80040b8 <firmware_image+0x40b8>
 8003fb6: 4c41         	ldr	r4, [pc, #0x104]        @ 0x80040bc <firmware_image+0x40bc>
 8003fb8: 7800         	ldrb	r0, [r0]
 8003fba: 7824         	ldrb	r4, [r4]
 8003fbc: 4320         	orrs	r0, r4
 8003fbe: d011         	beq	0x8003fe4 <firmware_image+0x3fe4> @ imm = #0x22
 8003fc0: f8c9 6014    	str.w	r6, [r9, #0x14]
 8003fc4: 4835         	ldr	r0, [pc, #0xd4]         @ 0x800409c <firmware_image+0x409c>
 8003fc6: 7800         	ldrb	r0, [r0]
 8003fc8: 2801         	cmp	r0, #0x1
 8003fca: d003         	beq	0x8003fd4 <firmware_image+0x3fd4> @ imm = #0x6
 8003fcc: 4832         	ldr	r0, [pc, #0xc8]         @ 0x8004098 <firmware_image+0x4098>
 8003fce: 7800         	ldrb	r0, [r0]
 8003fd0: 2800         	cmp	r0, #0x0
 8003fd2: d0b8         	beq	0x8003f46 <firmware_image+0x3f46> @ imm = #-0x90
 8003fd4: f88a 6000    	strb.w	r6, [r10]
 8003fd8: 723e         	strb	r6, [r7, #0x8]
 8003fda: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003fde: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003fe2: e669         	b	0x8003cb8 <firmware_image+0x3cb8> @ imm = #-0x32e
 8003fe4: f8d9 0014    	ldr.w	r0, [r9, #0x14]
 8003fe8: f648 24ce    	movw	r4, #0x8ace
 8003fec: 42a0         	cmp	r0, r4
 8003fee: d202         	bhs	0x8003ff6 <firmware_image+0x3ff6> @ imm = #0x4
 8003ff0: 1c40         	adds	r0, r0, #0x1
 8003ff2: f8c9 a010    	str.w	r10, [r9, #0x10]
 8003ff6: f8d4 b014    	ldr.w	r11, [r4, #0x14]
 8003ffa: 69a0         	ldr	r0, [r4, #0x18]
 8003ffc: 9003         	str	r0, [sp, #0xc]
 8003ffe: 69e0         	ldr	r0, [r4, #0x1c]
 8004000: 0014         	movs	r4, r2
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
 800403e: f8c9 4240    	str.w	r4, [r9, #0x240]
 8004042: 4281         	cmp	r1, r0
 8004044: da01         	bge	0x800404a <firmware_image+0x404a> @ imm = #0x2
 8004046: f8c9 0044    	str.w	r0, [r9, #0x44]
 800404a: f8b9 0044    	ldrh.w	r0, [r9, #0x44]
 800404e: 491e         	ldr	r1, [pc, #0x78]         @ 0x80040c8 <firmware_image+0x40c8>
 8004050: b200         	sxth	r0, r0
 8004052: 8008         	strh	r0, [r1]
 8004054: 491d         	ldr	r1, [pc, #0x74]         @ 0x80040cc <firmware_image+0x40cc>
 8004056: f9b1 1000    	ldrsh.w	r1, [r1]
 800405a: f8a7 1044    	strh.w	r1, [r7, #0x44]
 800405e: 1a40         	subs	r0, r0, r1
 8004060: 17c1         	asrs	r1, r0, #0x1f
 8004062: eb00 6091    	add.w	r0, r0, r1, lsr #26
 8004066: 1180         	asrs	r0, r0, #0x6
 8004068: f8a7 0046    	strh.w	r0, [r7, #0x46]
 800406c: 4818         	ldr	r0, [pc, #0x60]         @ 0x80040d0 <firmware_image+0x40d0>
 800406e: 6800         	ldr	r0, [r0]
 8004070: f5b0 7f16    	cmp.w	r0, #0x258
 8004074: dd3a         	ble	0x80040ec <firmware_image+0x40ec> @ imm = #0x74
 8004076: f9b7 003e    	ldrsh.w	r0, [r7, #0x3e]
 800407a: f110 0fc8    	cmn.w	r0, #0xc8
 800407e: e029         	b	0x80040d4 <firmware_image+0x40d4> @ imm = #0x52
 8004080: 0064         	lsls	r4, r4, #0x1
 8004082: 2000         	movs	r0, #0x0
 8004084: 01f8         	lsls	r0, r7, #0x7
 8004086: 2000         	movs	r0, #0x0
 8004088: 023a         	lsls	r2, r7, #0x8
 800408a: 2000         	movs	r0, #0x0
 800408c: 0060         	lsls	r0, r4, #0x1
 800408e: 2000         	movs	r0, #0x0
 8004090: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
 8004092: 3f4c         	subs	r7, #0x4c
 8004094: 0152         	lsls	r2, r2, #0x5
 8004096: 2000         	movs	r0, #0x0
 8004098: 0000         	movs	r0, r0
 800409a: 42c8         	cmn	r0, r1
 800409c: 01c8         	lsls	r0, r1, #0x7
 800409e: 2000         	movs	r0, #0x0
 80040a0: 0198         	lsls	r0, r3, #0x6
 80040a2: 2000         	movs	r0, #0x0
 80040a4: 0167         	lsls	r7, r4, #0x5
 80040a6: 2000         	movs	r0, #0x0
 80040a8: 0196         	lsls	r6, r2, #0x6
 80040aa: 2000         	movs	r0, #0x0
 80040ac: 0195         	lsls	r5, r2, #0x6
 80040ae: 2000         	movs	r0, #0x0
 80040b0: 0141         	lsls	r1, r0, #0x5
 80040b2: 2000         	movs	r0, #0x0
 80040b4: 0000         	movs	r0, r0
 80040b6: 4040         	eors	r0, r0
 80040b8: 8800         	ldrh	r0, [r0]
 80040ba: 40c3         	lsrs	r3, r0
 80040bc: 90ac         	str	r0, [sp, #0x2b0]
 80040be: ffff 0142    	<unknown>
 80040c2: 2000         	movs	r0, #0x0
 80040c4: 0143         	lsls	r3, r0, #0x5
 80040c6: 2000         	movs	r0, #0x0
 80040c8: 023e         	lsls	r6, r7, #0x8
 80040ca: 2000         	movs	r0, #0x0
 80040cc: 0258         	lsls	r0, r3, #0x9
 80040ce: 2000         	movs	r0, #0x0
 80040d0: 0244         	lsls	r4, r0, #0x9
 80040d2: 2000         	movs	r0, #0x0
 80040d4: dc03         	bgt	0x80040de <firmware_image+0x40de> @ imm = #0x6
 80040d6: f9b7 003e    	ldrsh.w	r0, [r7, #0x3e]
 80040da: 28c8         	cmp	r0, #0xc8
 80040dc: da06         	bge	0x80040ec <firmware_image+0x40ec> @ imm = #0xc
 80040de: 8e38         	ldrh	r0, [r7, #0x30]
 80040e0: f5b0 7f7a    	cmp.w	r0, #0x3e8
 80040e4: 8638         	strh	r0, [r7, #0x30]
 80040e6: e003         	b	0x80040f0 <firmware_image+0x40f0> @ imm = #0x6
 80040e8: 8e38         	ldrh	r0, [r7, #0x30]
 80040ea: b108         	cbz	r0, 0x80040f0 <firmware_image+0x40f0> @ imm = #0x2
 80040ec: 1e40         	subs	r0, r0, #0x1
 80040ee: 8638         	strh	r0, [r7, #0x30]
 80040f0: 8e38         	ldrh	r0, [r7, #0x30]
 80040f2: f240 31de    	movw	r1, #0x3de
 80040f6: 4288         	cmp	r0, r1
 80040f8: d906         	bls	0x8004108 <firmware_image+0x4108> @ imm = #0xc
 80040fa: 2001         	movs	r0, #0x1
 80040fc: 71f8         	strb	r0, [r7, #0x7]
 80040fe: 4904         	ldr	r1, [pc, #0x10]         @ 0x8004110 <firmware_image+0x4110>
 8004100: 200a         	movs	r0, #0xa
 8004102: 7008         	strb	r0, [r1]
 8004104: e8bd 9ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
 8004108: 280a         	cmp	r0, #0xa
 800410a: d2fb         	bhs	0x8004104 <firmware_image+0x4104> @ imm = #-0xa
 800410c: 71fe         	strb	r6, [r7, #0x7]
 800410e: e7f9         	b	0x8004104 <firmware_image+0x4104> @ imm = #-0xe
 8004110: 021f         	lsls	r7, r3, #0x8
 8004112: 2000         	movs	r0, #0x0
 8004114: b57c         	push	{r2, r3, r4, r5, r6, lr}
 8004116: 2101         	movs	r1, #0x1
 8004118: 0488         	lsls	r0, r1, #0x12
 800411a: f000 f917    	bl	0x800434c <firmware_image+0x434c> @ imm = #0x22e
 800411e: f44f 5480    	mov.w	r4, #0x1000
 8004122: 9400         	str	r4, [sp]
 8004124: 2001         	movs	r0, #0x1
 8004126: f88d 0004    	strb.w	r0, [sp, #0x4]
 800412a: 2003         	movs	r0, #0x3
 800412c: f88d 0005    	strb.w	r0, [sp, #0x5]
 8004130: 2000         	movs	r0, #0x0
 8004132: f88d 0006    	strb.w	r0, [sp, #0x6]
 8004136: 4d05         	ldr	r5, [pc, #0x14]         @ 0x800414c <firmware_image+0x414c>
 8004138: 4669         	mov	r1, sp
 800413a: 4628         	mov	r0, r5
 800413c: f7fe faba    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0x1a8c
 8004140: 4621         	mov	r1, r4
 8004142: 4628         	mov	r0, r5
 8004144: f7fe fb0b    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x19ea
 8004148: bd7c         	pop	{r2, r3, r4, r5, r6, pc}
 800414a: 0000         	movs	r0, r0
 800414c: 0400         	lsls	r0, r0, #0x10
 800414e: 4800         	ldr	r0, [pc, #0x0]          @ 0x8004150 <firmware_image+0x4150>
 8004150: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8004154: 4e3e         	ldr	r6, [pc, #0xf8]         @ 0x8004250 <firmware_image+0x4250>
 8004156: f106 0780    	add.w	r7, r6, #0x80
 800415a: 6df0         	ldr	r0, [r6, #0x5c]
 800415c: 69f9         	ldr	r1, [r7, #0x1c]
 800415e: 4348         	muls	r0, r1, r0
 8004160: f7fc fa79    	bl	0x8000656 <firmware_image+0x656> @ imm = #-0x3b0e
 8004164: 2200         	movs	r2, #0x0
 8004166: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x8004254 <firmware_image+0x4254>
 8004168: f7fc f9fd    	bl	0x8000566 <firmware_image+0x566> @ imm = #-0x3c06
 800416c: 4604         	mov	r4, r0
 800416e: 460d         	mov	r5, r1
 8004170: f9b6 1036    	ldrsh.w	r1, [r6, #0x36]
 8004174: 6db0         	ldr	r0, [r6, #0x58]
 8004176: 4348         	muls	r0, r1, r0
 8004178: f7fc fa6d    	bl	0x8000656 <firmware_image+0x656> @ imm = #-0x3b26
 800417c: f8df 80d8    	ldr.w	r8, [pc, #0xd8]         @ 0x8004258 <firmware_image+0x4258>
 8004180: 2200         	movs	r2, #0x0
 8004182: 4643         	mov	r3, r8
 8004184: f7fc f9ef    	bl	0x8000566 <firmware_image+0x566> @ imm = #-0x3c22
 8004188: 4622         	mov	r2, r4
 800418a: 462b         	mov	r3, r5
 800418c: f7fc f8d2    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x3e5c
 8004190: f7fc fa8b    	bl	0x80006aa <firmware_image+0x6aa> @ imm = #-0x3aea
 8004194: 67b0         	str	r0, [r6, #0x78]
 8004196: 6e30         	ldr	r0, [r6, #0x60]
 8004198: f7fc fa54    	bl	0x8000644 <firmware_image+0x644> @ imm = #-0x3b58
 800419c: 6bb9         	ldr	r1, [r7, #0x38]
 800419e: f7fc f84d    	bl	0x800023c <firmware_image+0x23c> @ imm = #-0x3f66
 80041a2: f7fc faa1    	bl	0x80006e8 <firmware_image+0x6e8> @ imm = #-0x3abe
 80041a6: 2200         	movs	r2, #0x0
 80041a8: 4643         	mov	r3, r8
 80041aa: f7fc f9dc    	bl	0x8000566 <firmware_image+0x566> @ imm = #-0x3c48
 80041ae: f7fc fa7c    	bl	0x80006aa <firmware_image+0x6aa> @ imm = #-0x3b08
 80041b2: 67f0         	str	r0, [r6, #0x7c]
 80041b4: f247 7209    	movw	r2, #0x7709
 80041b8: 4251         	rsbs	r1, r2, #0
 80041ba: 1f38         	subs	r0, r7, #0x4
 80041bc: f7fd fda6    	bl	0x8001d0c <firmware_image+0x1d0c> @ imm = #-0x24b4
 80041c0: 4408         	add	r0, r1
 80041c2: 6ef1         	ldr	r1, [r6, #0x6c]
 80041c4: 1a40         	subs	r0, r0, r1
 80041c6: f640 713c    	movw	r1, #0xf3c
 80041ca: 4348         	muls	r0, r1, r0
 80041cc: f9b6 1020    	ldrsh.w	r1, [r6, #0x20]
 80041d0: fb90 f0f1    	sdiv	r0, r0, r1
 80041d4: 6038         	str	r0, [r7]
 80041d6: f646 7454    	movw	r4, #0x6f54
 80041da: 4265         	rsbs	r5, r4, #0
 80041dc: 4622         	mov	r2, r4
 80041de: 4629         	mov	r1, r5
 80041e0: 4638         	mov	r0, r7
 80041e2: f7fd fd91    	bl	0x8001d08 <firmware_image+0x1d08> @ imm = #-0x24de
 80041e6: 6838         	ldr	r0, [r7]
 80041e8: 62b8         	str	r0, [r7, #0x28]
 80041ea: f9b6 0020    	ldrsh.w	r0, [r6, #0x20]
 80041ee: f640 5148    	movw	r1, #0xd48
 80041f2: 4288         	cmp	r0, r1
 80041f4: da03         	bge	0x80041fe <firmware_image+0x41fe> @ imm = #0x6
 80041f6: f44f 7016    	mov.w	r0, #0x258
 80041fa: 8570         	strh	r0, [r6, #0x2a]
 80041fc: e002         	b	0x8004204 <firmware_image+0x4204> @ imm = #0x4
 80041fe: f44f 6096    	mov.w	r0, #0x4b0
 8004202: 8570         	strh	r0, [r6, #0x2a]
 8004204: 4811         	ldr	r0, [pc, #0x44]         @ 0x800424c <firmware_image+0x424c>
 8004206: 4622         	mov	r2, r4
 8004208: 4629         	mov	r1, r5
 800420a: 30a8         	adds	r0, #0xa8
 800420c: f7fd fd7c    	bl	0x8001d08 <firmware_image+0x1d08> @ imm = #-0x2508
 8004210: 6ab8         	ldr	r0, [r7, #0x28]
 8004212: f7fc fa1e    	bl	0x8000652 <firmware_image+0x652> @ imm = #-0x3bc4
 8004216: 4a10         	ldr	r2, [pc, #0x40]         @ 0x8004258 <firmware_image+0x4258>
 8004218: 4b10         	ldr	r3, [pc, #0x40]         @ 0x800425c <firmware_image+0x425c>
 800421a: f7fc f930    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x3da0
 800421e: 4604         	mov	r4, r0
 8004220: 460d         	mov	r5, r1
 8004222: 6c38         	ldr	r0, [r7, #0x40]
 8004224: f7fc fa5e    	bl	0x80006e4 <firmware_image+0x6e4> @ imm = #-0x3b44
 8004228: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x8004260 <firmware_image+0x4260>
 800422a: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x8004264 <firmware_image+0x4264>
 800422c: f7fc f927    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x3db2
 8004230: 4622         	mov	r2, r4
 8004232: 462b         	mov	r3, r5
 8004234: f7fc f87c    	bl	0x8000330 <firmware_image+0x330> @ imm = #-0x3f08
 8004238: f7fc fa80    	bl	0x800073c <firmware_image+0x73c> @ imm = #-0x3b00
 800423c: 6438         	str	r0, [r7, #0x40]
 800423e: f7fc fa19    	bl	0x8000674 <firmware_image+0x674> @ imm = #-0x3bce
 8004242: b200         	sxth	r0, r0
 8004244: 6278         	str	r0, [r7, #0x24]
 8004246: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 800424a: 0000         	movs	r0, r0
 800424c: 0064         	lsls	r4, r4, #0x1
 800424e: 2000         	movs	r0, #0x0
 8004250: 8800         	ldrh	r0, [r0]
 8004252: 40c3         	lsrs	r3, r0
 8004254: 0000         	movs	r0, r0
 8004256: 4059         	eors	r1, r3
 8004258: 47ae         	<unknown>
 800425a: 7ae1         	ldrb	r1, [r4, #0xb]
 800425c: ae14         	add	r6, sp, #0x50
 800425e: 3fef         	subs	r7, #0xef
 8004260: 147b         	asrs	r3, r7, #0x11
 8004262: 47ae         	<unknown>
 8004264: 7ae1         	ldrb	r1, [r4, #0xb]
 8004266: 3f84         	subs	r7, #0x84
 8004268: b5f3         	push	{r0, r1, r4, r5, r6, r7, lr}
 800426a: b082         	sub	sp, #0x8
 800426c: 4608         	mov	r0, r1
 800426e: f001 fcc1    	bl	0x8005bf4 <firmware_image+0x5bf4> @ imm = #0x1982
 8004272: 9000         	str	r0, [sp]
 8004274: f9bd 1008    	ldrsh.w	r1, [sp, #0x8]
 8004278: f9bd 3000    	ldrsh.w	r3, [sp]
 800427c: fb01 f003    	mul	r0, r1, r3
 8004280: f9bd 200a    	ldrsh.w	r2, [sp, #0xa]
 8004284: f9bd 4002    	ldrsh.w	r4, [sp, #0x2]
 8004288: fb02 f504    	mul	r5, r2, r4
 800428c: 1b40         	subs	r0, r0, r5
 800428e: 17c5         	asrs	r5, r0, #0x1f
 8004290: eb00 4055    	add.w	r0, r0, r5, lsr #17
 8004294: 13c0         	asrs	r0, r0, #0xf
 8004296: f647 76ff    	movw	r6, #0x7fff
 800429a: f44f 4c00    	mov.w	r12, #0x8000
 800429e: 43f5         	mvns	r5, r6
 80042a0: 4560         	cmp	r0, r12
 80042a2: db01         	blt	0x80042a8 <firmware_image+0x42a8> @ imm = #0x2
 80042a4: 4630         	mov	r0, r6
 80042a6: e004         	b	0x80042b2 <firmware_image+0x42b2> @ imm = #0x8
 80042a8: 42a8         	cmp	r0, r5
 80042aa: da01         	bge	0x80042b0 <firmware_image+0x42b0> @ imm = #0x2
 80042ac: 4628         	mov	r0, r5
 80042ae: e000         	b	0x80042b2 <firmware_image+0x42b2> @ imm = #0x0
 80042b0: b200         	sxth	r0, r0
 80042b2: f8ad 0004    	strh.w	r0, [sp, #0x4]
 80042b6: 4f0e         	ldr	r7, [pc, #0x38]         @ 0x80042f0 <firmware_image+0x42f0>
 80042b8: 42a8         	cmp	r0, r5
 80042ba: d101         	bne	0x80042c0 <firmware_image+0x42c0> @ imm = #0x2
 80042bc: f8ad 7004    	strh.w	r7, [sp, #0x4]
 80042c0: 4361         	muls	r1, r4, r1
 80042c2: 435a         	muls	r2, r3, r2
 80042c4: 1888         	adds	r0, r1, r2
 80042c6: 17c1         	asrs	r1, r0, #0x1f
 80042c8: eb00 4051    	add.w	r0, r0, r1, lsr #17
 80042cc: 13c1         	asrs	r1, r0, #0xf
 80042ce: 4561         	cmp	r1, r12
 80042d0: db01         	blt	0x80042d6 <firmware_image+0x42d6> @ imm = #0x2
 80042d2: 4630         	mov	r0, r6
 80042d4: e003         	b	0x80042de <firmware_image+0x42de> @ imm = #0x6
 80042d6: 4628         	mov	r0, r5
 80042d8: 4281         	cmp	r1, r0
 80042da: db00         	blt	0x80042de <firmware_image+0x42de> @ imm = #0x0
 80042dc: b208         	sxth	r0, r1
 80042de: f8ad 0006    	strh.w	r0, [sp, #0x6]
 80042e2: 42a8         	cmp	r0, r5
 80042e4: d101         	bne	0x80042ea <firmware_image+0x42ea> @ imm = #0x2
 80042e6: f8ad 7006    	strh.w	r7, [sp, #0x6]
 80042ea: 9801         	ldr	r0, [sp, #0x4]
 80042ec: b004         	add	sp, #0x10
 80042ee: bdf0         	pop	{r4, r5, r6, r7, pc}
 80042f0: 8001         	strh	r1, [r0]
 80042f2: ffff 4770    	<unknown>
 80042f6: 2100         	movs	r1, #0x0
 80042f8: 7001         	strb	r1, [r0]
 80042fa: 7041         	strb	r1, [r0, #0x1]
 80042fc: 7201         	strb	r1, [r0, #0x8]
 80042fe: 7241         	strb	r1, [r0, #0x9]
 8004300: 4770         	bx	lr
 8004302: 6041         	str	r1, [r0, #0x4]
 8004304: 7082         	strb	r2, [r0, #0x2]
 8004306: f7ff bff6    	b.w	0x80042f6 <firmware_image+0x42f6> @ imm = #-0x14
 800430a: 0000         	movs	r0, r0
 800430c: 4908         	ldr	r1, [pc, #0x20]         @ 0x8004330 <firmware_image+0x4330>
 800430e: 684a         	ldr	r2, [r1, #0x4]
 8004310: f422 4240    	bic	r2, r2, #0xc000
 8004314: 604a         	str	r2, [r1, #0x4]
 8004316: 684a         	ldr	r2, [r1, #0x4]
 8004318: b283         	uxth	r3, r0
 800431a: 431a         	orrs	r2, r3
 800431c: 604a         	str	r2, [r1, #0x4]
 800431e: 6b0a         	ldr	r2, [r1, #0x30]
 8004320: f422 7280    	bic	r2, r2, #0x100
 8004324: 630a         	str	r2, [r1, #0x30]
 8004326: 6b0a         	ldr	r2, [r1, #0x30]
 8004328: ea42 4010    	orr.w	r0, r2, r0, lsr #16
 800432c: 6308         	str	r0, [r1, #0x30]
 800432e: 4770         	bx	lr
 8004330: 1000         	asrs	r0, r0, #0x20
 8004332: 4002         	ands	r2, r0
 8004334: 4a03         	ldr	r2, [pc, #0xc]          @ 0x8004344 <firmware_image+0x4344>
 8004336: 6851         	ldr	r1, [r2, #0x4]
 8004338: f021 01f0    	bic	r1, r1, #0xf0
 800433c: 4301         	orrs	r1, r0
 800433e: 6051         	str	r1, [r2, #0x4]
 8004340: 4770         	bx	lr
 8004342: 0000         	movs	r0, r0
 8004344: 1000         	asrs	r0, r0, #0x20
 8004346: 4002         	ands	r2, r0
 8004348: 4a05         	ldr	r2, [pc, #0x14]         @ 0x8004360 <firmware_image+0x4360>
 800434a: 2900         	cmp	r1, #0x0
 800434c: d003         	beq	0x8004356 <firmware_image+0x4356> @ imm = #0x6
 800434e: 6951         	ldr	r1, [r2, #0x14]
 8004350: 4301         	orrs	r1, r0
 8004352: 6151         	str	r1, [r2, #0x14]
 8004354: 4770         	bx	lr
 8004356: 6951         	ldr	r1, [r2, #0x14]
 8004358: 4381         	bics	r1, r0
 800435a: 6151         	str	r1, [r2, #0x14]
 800435c: 4770         	bx	lr
 800435e: 0000         	movs	r0, r0
 8004360: 1000         	asrs	r0, r0, #0x20
 8004362: 4002         	ands	r2, r0
 8004364: 4a03         	ldr	r2, [pc, #0xc]          @ 0x8004374 <firmware_image+0x4374>
 8004366: 6851         	ldr	r1, [r2, #0x4]
 8004368: f421 61e0    	bic	r1, r1, #0x700
 800436c: 4301         	orrs	r1, r0
 800436e: 6051         	str	r1, [r2, #0x4]
 8004370: 4770         	bx	lr
 8004372: 0000         	movs	r0, r0
 8004374: 1000         	asrs	r0, r0, #0x20
 8004376: 4002         	ands	r2, r0
 8004378: 4a05         	ldr	r2, [pc, #0x14]         @ 0x8004390 <firmware_image+0x4390>
 800437a: 2900         	cmp	r1, #0x0
 800437c: d003         	beq	0x8004386 <firmware_image+0x4386> @ imm = #0x6
 800437e: 69d1         	ldr	r1, [r2, #0x1c]
 8004380: 4301         	orrs	r1, r0
 8004382: 61d1         	str	r1, [r2, #0x1c]
 8004384: 4770         	bx	lr
 8004386: 69d1         	ldr	r1, [r2, #0x1c]
 8004388: 4381         	bics	r1, r0
 800438a: 61d1         	str	r1, [r2, #0x1c]
 800438c: 4770         	bx	lr
 800438e: 0000         	movs	r0, r0
 8004390: 1000         	asrs	r0, r0, #0x20
 8004392: 4002         	ands	r2, r0
 8004394: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80043ac <firmware_image+0x43ac>
 8004396: 2900         	cmp	r1, #0x0
 8004398: d003         	beq	0x80043a2 <firmware_image+0x43a2> @ imm = #0x6
 800439a: 6911         	ldr	r1, [r2, #0x10]
 800439c: 4301         	orrs	r1, r0
 800439e: 6111         	str	r1, [r2, #0x10]
 80043a0: 4770         	bx	lr
 80043a2: 6911         	ldr	r1, [r2, #0x10]
 80043a4: 4381         	bics	r1, r0
 80043a6: 6111         	str	r1, [r2, #0x10]
 80043a8: 4770         	bx	lr
 80043aa: 0000         	movs	r0, r0
 80043ac: 1000         	asrs	r0, r0, #0x20
 80043ae: 4002         	ands	r2, r0
 80043b0: 4a03         	ldr	r2, [pc, #0xc]          @ 0x80043c0 <firmware_image+0x43c0>
 80043b2: 6851         	ldr	r1, [r2, #0x4]
 80043b4: f421 5160    	bic	r1, r1, #0x3800
 80043b8: 4301         	orrs	r1, r0
 80043ba: 6051         	str	r1, [r2, #0x4]
 80043bc: 4770         	bx	lr
 80043be: 0000         	movs	r0, r0
 80043c0: 1000         	asrs	r0, r0, #0x20
 80043c2: 4002         	ands	r2, r0
 80043c4: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80043dc <firmware_image+0x43dc>
 80043c6: 2900         	cmp	r1, #0x0
 80043c8: d003         	beq	0x80043d2 <firmware_image+0x43d2> @ imm = #0x6
 80043ca: 6991         	ldr	r1, [r2, #0x18]
 80043cc: 4301         	orrs	r1, r0
 80043ce: 6191         	str	r1, [r2, #0x18]
 80043d0: 4770         	bx	lr
 80043d2: 6991         	ldr	r1, [r2, #0x18]
 80043d4: 4381         	bics	r1, r0
 80043d6: 6191         	str	r1, [r2, #0x18]
 80043d8: 4770         	bx	lr
 80043da: 0000         	movs	r0, r0
 80043dc: 1000         	asrs	r0, r0, #0x20
 80043de: 4002         	ands	r2, r0
 80043e0: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80043f8 <firmware_image+0x43f8>
 80043e2: 2900         	cmp	r1, #0x0
 80043e4: d003         	beq	0x80043ee <firmware_image+0x43ee> @ imm = #0x6
 80043e6: 68d1         	ldr	r1, [r2, #0xc]
 80043e8: 4301         	orrs	r1, r0
 80043ea: 60d1         	str	r1, [r2, #0xc]
 80043ec: 4770         	bx	lr
 80043ee: 68d1         	ldr	r1, [r2, #0xc]
 80043f0: 4381         	bics	r1, r0
 80043f2: 60d1         	str	r1, [r2, #0xc]
 80043f4: 4770         	bx	lr
 80043f6: 0000         	movs	r0, r0
 80043f8: 1000         	asrs	r0, r0, #0x20
 80043fa: 4002         	ands	r2, r0
 80043fc: 4a03         	ldr	r2, [pc, #0xc]          @ 0x800440c <firmware_image+0x440c>
 80043fe: 6851         	ldr	r1, [r2, #0x4]
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
 8004544: f402 62e0    	and	r2, r2, #0x700
 8004548: 0a12         	lsrs	r2, r2, #0x8
 800454a: 4e3b         	ldr	r6, [pc, #0xec]         @ 0x8004638 <firmware_image+0x4638>
 800454c: 3e08         	subs	r6, #0x8
 800454e: 5cb2         	ldrb	r2, [r6, r2]
 8004550: fa21 f202    	lsr.w	r2, r1, r2
 8004554: 6082         	str	r2, [r0, #0x8]
 8004556: 6862         	ldr	r2, [r4, #0x4]
 8004558: f402 5260    	and	r2, r2, #0x3800
 800455c: 0ad2         	lsrs	r2, r2, #0xb
 800455e: 5cb2         	ldrb	r2, [r6, r2]
 8004560: 40d1         	lsrs	r1, r2
 8004562: 60c1         	str	r1, [r0, #0xc]
 8004564: 6b22         	ldr	r2, [r4, #0x30]
 8004566: 05d2         	lsls	r2, r2, #0x17
 8004568: d426         	bmi	0x80045b8 <firmware_image+0x45b8> @ imm = #0x4c
 800456a: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x800463c <firmware_image+0x463c>
 800456c: 6102         	str	r2, [r0, #0x10]
 800456e: e03b         	b	0x80045e8 <firmware_image+0x45e8> @ imm = #0x76
 8004570: 6003         	str	r3, [r0]
 8004572: e7dc         	b	0x800452e <firmware_image+0x452e> @ imm = #-0x48
 8004574: 6003         	str	r3, [r0]
 8004576: e7da         	b	0x800452e <firmware_image+0x452e> @ imm = #-0x4c
 8004578: 6861         	ldr	r1, [r4, #0x4]
 800457a: f401 1270    	and	r2, r1, #0x3c0000
 800457e: 6861         	ldr	r1, [r4, #0x4]
 8004580: f001 6100    	and	r1, r1, #0x8000000
 8004584: 0ec9         	lsrs	r1, r1, #0x1b
 8004586: 0109         	lsls	r1, r1, #0x4
 8004588: eb01 4192    	add.w	r1, r1, r2, lsr #18
 800458c: 290f         	cmp	r1, #0xf
 800458e: d301         	blo	0x8004594 <firmware_image+0x4594> @ imm = #0x2
 8004590: 1c49         	adds	r1, r1, #0x1
 8004592: e000         	b	0x8004596 <firmware_image+0x4596> @ imm = #0x0
 8004594: 1c89         	adds	r1, r1, #0x2
 8004596: 6862         	ldr	r2, [r4, #0x4]
 8004598: f402 3280    	and	r2, r2, #0x10000
 800459c: b142         	cbz	r2, 0x80045b0 <firmware_image+0x45b0> @ imm = #0x10
 800459e: 6ae2         	ldr	r2, [r4, #0x2c]
 80045a0: f002 020f    	and	r2, r2, #0xf
 80045a4: 1c52         	adds	r2, r2, #0x1
 80045a6: fbb3 f2f2    	udiv	r2, r3, r2
 80045aa: 434a         	muls	r2, r1, r2
 80045ac: 6002         	str	r2, [r0]
 80045ae: e7be         	b	0x800452e <firmware_image+0x452e> @ imm = #-0x84
 80045b0: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x8004640 <firmware_image+0x4640>
 80045b2: 4351         	muls	r1, r2, r1
 80045b4: 6001         	str	r1, [r0]
 80045b6: e7ba         	b	0x800452e <firmware_image+0x452e> @ imm = #-0x8c
 80045b8: 6862         	ldr	r2, [r4, #0x4]
 80045ba: f3c2 3281    	ubfx	r2, r2, #0xe, #0x2
 80045be: b132         	cbz	r2, 0x80045ce <firmware_image+0x45ce> @ imm = #0xc
 80045c0: 2a01         	cmp	r2, #0x1
 80045c2: d007         	beq	0x80045d4 <firmware_image+0x45d4> @ imm = #0xe
 80045c4: 2a02         	cmp	r2, #0x2
 80045c6: d008         	beq	0x80045da <firmware_image+0x45da> @ imm = #0x10
 80045c8: 2a03         	cmp	r2, #0x3
 80045ca: d10d         	bne	0x80045e8 <firmware_image+0x45e8> @ imm = #0x1a
 80045cc: e00a         	b	0x80045e4 <firmware_image+0x45e4> @ imm = #0x14
 80045ce: 084a         	lsrs	r2, r1, #0x1
 80045d0: 6102         	str	r2, [r0, #0x10]
 80045d2: e009         	b	0x80045e8 <firmware_image+0x45e8> @ imm = #0x12
 80045d4: 088a         	lsrs	r2, r1, #0x2
 80045d6: 6102         	str	r2, [r0, #0x10]
 80045d8: e006         	b	0x80045e8 <firmware_image+0x45e8> @ imm = #0xc
 80045da: 2206         	movs	r2, #0x6
 80045dc: fbb1 f2f2    	udiv	r2, r1, r2
 80045e0: 6102         	str	r2, [r0, #0x10]
 80045e2: e001         	b	0x80045e8 <firmware_image+0x45e8> @ imm = #0x2
 80045e4: 08ca         	lsrs	r2, r1, #0x3
 80045e6: 6102         	str	r2, [r0, #0x10]
 80045e8: 6b22         	ldr	r2, [r4, #0x30]
 80045ea: 0656         	lsls	r6, r2, #0x19
 80045ec: f44f 4200    	mov.w	r2, #0x8000
 80045f0: d403         	bmi	0x80045fa <firmware_image+0x45fa> @ imm = #0x6
 80045f2: f248 0612    	movw	r6, #0x8012
 80045f6: 6146         	str	r6, [r0, #0x14]
 80045f8: e000         	b	0x80045fc <firmware_image+0x45fc> @ imm = #0x0
 80045fa: 6142         	str	r2, [r0, #0x14]
 80045fc: 6b26         	ldr	r6, [r4, #0x30]
 80045fe: 07b6         	lsls	r6, r6, #0x1e
 8004600: d00f         	beq	0x8004622 <firmware_image+0x4622> @ imm = #0x1e
 8004602: 6b21         	ldr	r1, [r4, #0x30]
 8004604: f001 0103    	and	r1, r1, #0x3
 8004608: 2901         	cmp	r1, #0x1
 800460a: d00c         	beq	0x8004626 <firmware_image+0x4626> @ imm = #0x18
 800460c: 6b21         	ldr	r1, [r4, #0x30]
 800460e: f001 0103    	and	r1, r1, #0x3
 8004612: 2902         	cmp	r1, #0x2
 8004614: d009         	beq	0x800462a <firmware_image+0x462a> @ imm = #0x12
 8004616: 6b21         	ldr	r1, [r4, #0x30]
 8004618: 43c9         	mvns	r1, r1
 800461a: 0789         	lsls	r1, r1, #0x1e
 800461c: d100         	bne	0x8004620 <firmware_image+0x4620> @ imm = #0x0
 800461e: 6183         	str	r3, [r0, #0x18]
 8004620: bd70         	pop	{r4, r5, r6, pc}
 8004622: 6181         	str	r1, [r0, #0x18]
 8004624: bd70         	pop	{r4, r5, r6, pc}
 8004626: 6185         	str	r5, [r0, #0x18]
 8004628: bd70         	pop	{r4, r5, r6, pc}
 800462a: 6182         	str	r2, [r0, #0x18]
 800462c: bd70         	pop	{r4, r5, r6, pc}
 800462e: 0000         	movs	r0, r0
 8004630: 1000         	asrs	r0, r0, #0x20
 8004632: 4002         	ands	r2, r0
 8004634: 1200         	asrs	r0, r0, #0x8
 8004636: 007a         	lsls	r2, r7, #0x1
 8004638: 0028         	movs	r0, r5
 800463a: 2000         	movs	r0, #0x0
 800463c: 9f80         	ldr	r7, [sp, #0x200]
 800463e: 00d5         	lsls	r5, r2, #0x3
 8004640: 0900         	lsrs	r0, r0, #0x4
 8004642: 003d         	movs	r5, r7
 8004644: 4906         	ldr	r1, [pc, #0x18]         @ 0x8004660 <firmware_image+0x4660>
 8004646: 2800         	cmp	r0, #0x0
 8004648: d004         	beq	0x8004654 <firmware_image+0x4654> @ imm = #0x8
 800464a: 6808         	ldr	r0, [r1]
 800464c: f040 0001    	orr	r0, r0, #0x1
 8004650: 6008         	str	r0, [r1]
 8004652: 4770         	bx	lr
 8004654: 6808         	ldr	r0, [r1]
 8004656: f020 0001    	bic	r0, r0, #0x1
 800465a: 6008         	str	r0, [r1]
 800465c: 4770         	bx	lr
 800465e: 0000         	movs	r0, r0
 8004660: 1000         	asrs	r0, r0, #0x20
 8004662: 4002         	ands	r2, r0
 8004664: b510         	push	{r4, lr}
 8004666: 4a05         	ldr	r2, [pc, #0x14]         @ 0x800467c <firmware_image+0x467c>
 8004668: 6853         	ldr	r3, [r2, #0x4]
 800466a: 4c05         	ldr	r4, [pc, #0x14]         @ 0x8004680 <firmware_image+0x4680>
 800466c: 4023         	ands	r3, r4
 800466e: 6053         	str	r3, [r2, #0x4]
 8004670: 6853         	ldr	r3, [r2, #0x4]
 8004672: 4308         	orrs	r0, r1
 8004674: 4303         	orrs	r3, r0
 8004676: 6053         	str	r3, [r2, #0x4]
 8004678: bd10         	pop	{r4, pc}
 800467a: 0000         	movs	r0, r0
 800467c: 1000         	asrs	r0, r0, #0x20
 800467e: 4002         	ands	r2, r0
 8004680: ffff f7c2    	<unknown>
 8004684: 4906         	ldr	r1, [pc, #0x18]         @ 0x80046a0 <firmware_image+0x46a0>
 8004686: 2800         	cmp	r0, #0x0
 8004688: d004         	beq	0x8004694 <firmware_image+0x4694> @ imm = #0x8
 800468a: 6808         	ldr	r0, [r1]
 800468c: f040 7080    	orr	r0, r0, #0x1000000
 8004690: 6008         	str	r0, [r1]
 8004692: 4770         	bx	lr
 8004694: 6808         	ldr	r0, [r1]
 8004696: f020 7080    	bic	r0, r0, #0x1000000
 800469a: 6008         	str	r0, [r1]
 800469c: 4770         	bx	lr
 800469e: 0000         	movs	r0, r0
 80046a0: 1000         	asrs	r0, r0, #0x20
 80046a2: 4002         	ands	r2, r0
 80046a4: 4770         	bx	lr
 80046a6: 0000         	movs	r0, r0
 80046a8: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
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
 8004764: 4f10         	ldr	r7, [pc, #0x40]         @ 0x80047a8 <firmware_image+0x47a8>
 8004766: 3f40         	subs	r7, #0x40
 8004768: e009         	b	0x800477e <firmware_image+0x477e> @ imm = #0x12
 800476a: 18e8         	adds	r0, r5, r3
 800476c: f837 1010    	ldrh.w	r1, [r7, r0, lsl #1]
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
 8004910: 2001         	movs	r0, #0x1
 8004912: e7f1         	b	0x80048f8 <firmware_image+0x48f8> @ imm = #-0x1e
 8004914: 0308         	lsls	r0, r1, #0xc
 8004916: 2000         	movs	r0, #0x0
 8004918: 021c         	lsls	r4, r3, #0x8
 800491a: 2000         	movs	r0, #0x0
 800491c: b570         	push	{r4, r5, r6, lr}
 800491e: 2400         	movs	r4, #0x0
 8004920: 4e0d         	ldr	r6, [pc, #0x34]         @ 0x8004958 <firmware_image+0x4958>
 8004922: eb04 0044    	add.w	r0, r4, r4, lsl #1
 8004926: eb06 0580    	add.w	r5, r6, r0, lsl #2
 800492a: 7a29         	ldrb	r1, [r5, #0x8]
 800492c: b151         	cbz	r1, 0x8004944 <firmware_image+0x4944> @ imm = #0x14
 800492e: f856 0020    	ldr.w	r0, [r6, r0, lsl #2]
 8004932: 4780         	blx	r0
 8004934: 7a28         	ldrb	r0, [r5, #0x8]
 8004936: 1e40         	subs	r0, r0, #0x1
 8004938: 7228         	strb	r0, [r5, #0x8]
 800493a: 88e8         	ldrh	r0, [r5, #0x6]
 800493c: b910         	cbnz	r0, 0x8004944 <firmware_image+0x4944> @ imm = #0x4
 800493e: 4620         	mov	r0, r4
 8004940: f7ff ffd2    	bl	0x80048e8 <firmware_image+0x48e8> @ imm = #-0x5c
 8004944: 1c64         	adds	r4, r4, #0x1
 8004946: b2e4         	uxtb	r4, r4
 8004948: 2c14         	cmp	r4, #0x14
 800494a: d3ea         	blo	0x8004922 <firmware_image+0x4922> @ imm = #-0x2c
 800494c: f000 f807    	bl	0x800495e <firmware_image+0x495e> @ imm = #0xe
 8004950: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 8004954: f000 b802    	b.w	0x800495c <firmware_image+0x495c> @ imm = #0x4
 8004958: 0308         	lsls	r0, r1, #0xc
 800495a: 2000         	movs	r0, #0x0
 800495c: 4770         	bx	lr
 800495e: 4770         	bx	lr
 8004960: 4770         	bx	lr
 8004962: 0000         	movs	r0, r0
 8004964: b510         	push	{r4, lr}
 8004966: 2400         	movs	r4, #0x0
 8004968: b2e0         	uxtb	r0, r4
 800496a: f7ff ffbd    	bl	0x80048e8 <firmware_image+0x48e8> @ imm = #-0x86
 800496e: 1c64         	adds	r4, r4, #0x1
 8004970: b2a4         	uxth	r4, r4
 8004972: 2c14         	cmp	r4, #0x14
 8004974: d3f8         	blo	0x8004968 <firmware_image+0x4968> @ imm = #-0x10
 8004976: 480e         	ldr	r0, [pc, #0x38]         @ 0x80049b0 <firmware_image+0x49b0>
 8004978: 2100         	movs	r1, #0x0
 800497a: 7001         	strb	r1, [r0]
 800497c: 480d         	ldr	r0, [pc, #0x34]         @ 0x80049b4 <firmware_image+0x49b4>
 800497e: 22fa         	movs	r2, #0xfa
 8004980: 6800         	ldr	r0, [r0]
 8004982: fbb0 f0f2    	udiv	r0, r0, r2
 8004986: 1e40         	subs	r0, r0, #0x1
 8004988: f1b0 7f80    	cmp.w	r0, #0x1000000
 800498c: d301         	blo	0x8004992 <firmware_image+0x4992> @ imm = #0x2
 800498e: 2001         	movs	r0, #0x1
 8004990: e009         	b	0x80049a6 <firmware_image+0x49a6> @ imm = #0x12
 8004992: f04f 22e0    	mov.w	r2, #0xe000e000
 8004996: 6150         	str	r0, [r2, #0x14]
 8004998: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x80049b8 <firmware_image+0x49b8>
 800499a: 20f0         	movs	r0, #0xf0
 800499c: 7018         	strb	r0, [r3]
 800499e: 6191         	str	r1, [r2, #0x18]
 80049a0: 2007         	movs	r0, #0x7
 80049a2: 6110         	str	r0, [r2, #0x10]
 80049a4: 2000         	movs	r0, #0x0
 80049a6: 2800         	cmp	r0, #0x0
 80049a8: d000         	beq	0x80049ac <firmware_image+0x49ac> @ imm = #0x0
 80049aa: e7fe         	b	0x80049aa <firmware_image+0x49aa> @ imm = #-0x4
 80049ac: bd10         	pop	{r4, pc}
 80049ae: 0000         	movs	r0, r0
 80049b0: 021c         	lsls	r4, r3, #0x8
 80049b2: 2000         	movs	r0, #0x0
 80049b4: 000c         	movs	r4, r1
 80049b6: 2000         	movs	r0, #0x0
 80049b8: ed23 e000    	stc	p0, c14, [r3, #-0]!
 80049bc: 4770         	bx	lr
 80049be: 0000         	movs	r0, r0
 80049c0: 4803         	ldr	r0, [pc, #0xc]          @ 0x80049d0 <firmware_image+0x49d0>
 80049c2: 6801         	ldr	r1, [r0]
 80049c4: f441 4100    	orr	r1, r1, #0x8000
 80049c8: 6001         	str	r1, [r0]
 80049ca: 2004         	movs	r0, #0x4
 80049cc: 2408         	movs	r4, #0x8
 80049ce: 4001         	ands	r1, r0
 80049d0: b570         	push	{r4, r5, r6, lr}
 80049d2: b086         	sub	sp, #0x18
 80049d4: 4822         	ldr	r0, [pc, #0x88]         @ 0x8004a60 <firmware_image+0x4a60>
 80049d6: f7ff fc9b    	bl	0x8004310 <firmware_image+0x4310> @ imm = #-0x6ca
 80049da: 2101         	movs	r1, #0x1
 80049dc: f44f 00bc    	mov.w	r0, #0x5e0000
 80049e0: f7ff fcb4    	bl	0x800434c <firmware_image+0x434c> @ imm = #-0x698
 80049e4: 2101         	movs	r1, #0x1
 80049e6: 0248         	lsls	r0, r1, #0x9
 80049e8: f7ff fcee    	bl	0x80043c8 <firmware_image+0x43c8> @ imm = #-0x624
 80049ec: 2401         	movs	r4, #0x1
 80049ee: 9400         	str	r4, [sp]
 80049f0: 2003         	movs	r0, #0x3
 80049f2: f88d 0004    	strb.w	r0, [sp, #0x4]
 80049f6: f88d 0005    	strb.w	r0, [sp, #0x5]
 80049fa: 2500         	movs	r5, #0x0
 80049fc: f88d 5007    	strb.w	r5, [sp, #0x7]
 8004a00: f04f 4690    	mov.w	r6, #0x48000000
 8004a04: 4669         	mov	r1, sp
 8004a06: 4630         	mov	r0, r6
 8004a08: f7fd fe54    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0x2358
 8004a0c: 9400         	str	r4, [sp]
 8004a0e: 4669         	mov	r1, sp
 8004a10: 4814         	ldr	r0, [pc, #0x50]         @ 0x8004a64 <firmware_image+0x4a64>
 8004a12: f7fd fe4f    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0x2362
 8004a16: 2140         	movs	r1, #0x40
 8004a18: 9100         	str	r1, [sp]
 8004a1a: 4669         	mov	r1, sp
 8004a1c: 4630         	mov	r0, r6
 8004a1e: f7fd fe49    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0x236e
 8004a22: 2110         	movs	r1, #0x10
 8004a24: 9100         	str	r1, [sp]
 8004a26: 4669         	mov	r1, sp
 8004a28: 4630         	mov	r0, r6
 8004a2a: f7fd fe43    	bl	0x80026b4 <firmware_image+0x26b4> @ imm = #-0x237a
 8004a2e: a802         	add	r0, sp, #0x8
 8004a30: f7fc f878    	bl	0x8000b24 <firmware_image+0xb24> @ imm = #-0x3f10
 8004a34: f88d 4014    	strb.w	r4, [sp, #0x14]
 8004a38: f88d 5015    	strb.w	r5, [sp, #0x15]
 8004a3c: f44f 2060    	mov.w	r0, #0xe0000
 8004a40: 9002         	str	r0, [sp, #0x8]
 8004a42: 02e0         	lsls	r0, r4, #0xb
 8004a44: 9004         	str	r0, [sp, #0x10]
 8004a46: 2004         	movs	r0, #0x4
 8004a48: f88d 000c    	strb.w	r0, [sp, #0xc]
 8004a4c: a802         	add	r0, sp, #0x8
 8004a4e: f7fc f8cb    	bl	0x8000be8 <firmware_image+0xbe8> @ imm = #-0x3e6a
 8004a52: 2001         	movs	r0, #0x1
 8004a54: f7fc f87a    	bl	0x8000b4c <firmware_image+0xb4c> @ imm = #-0x3f0c
 8004a58: f7fc f84c    	bl	0x8000af4 <firmware_image+0xaf4> @ imm = #-0x3f68
 8004a5c: b006         	add	sp, #0x18
 8004a5e: bd70         	pop	{r4, r5, r6, pc}
 8004a60: 8000         	strh	r0, [r0]
 8004a62: 0100         	lsls	r0, r0, #0x4
 8004a64: 0400         	lsls	r0, r0, #0x10
 8004a66: 4800         	ldr	r0, [pc, #0x0]          @ 0x8004a68 <firmware_image+0x4a68>
 8004a68: 4902         	ldr	r1, [pc, #0x8]          @ 0x8004a74 <firmware_image+0x4a74>
 8004a6a: 4801         	ldr	r0, [pc, #0x4]          @ 0x8004a70 <firmware_image+0x4a70>
 8004a6c: 6008         	str	r0, [r1]
 8004a6e: 4770         	bx	lr
 8004a70: 1900         	adds	r0, r0, r4
 8004a72: 0032         	movs	r2, r6
 8004a74: 2438         	movs	r4, #0x38
 8004a76: 4001         	ands	r1, r0
 8004a78: f7fc f890    	bl	0x8000b9c <firmware_image+0xb9c> @ imm = #-0x3ee0
 8004a7c: 2800         	cmp	r0, #0x0
 8004a7e: d0fa         	beq	0x8004a76 <firmware_image+0x4a76> @ imm = #-0xc
 8004a80: 2020         	movs	r0, #0x20
 8004a82: f7fc f895    	bl	0x8000bb0 <firmware_image+0xbb0> @ imm = #-0x3ed6
 8004a86: 4909         	ldr	r1, [pc, #0x24]         @ 0x8004aac <firmware_image+0x4aac>
 8004a88: 8008         	strh	r0, [r1]
 8004a8a: 201c         	movs	r0, #0x1c
 8004a8c: f7fc f890    	bl	0x8000bb0 <firmware_image+0xbb0> @ imm = #-0x3ee0
 8004a90: 4907         	ldr	r1, [pc, #0x1c]         @ 0x8004ab0 <firmware_image+0x4ab0>
 8004a92: 8008         	strh	r0, [r1]
 8004a94: 2004         	movs	r0, #0x4
 8004a96: f7fc f83d    	bl	0x8000b14 <firmware_image+0xb14> @ imm = #-0x3f86
 8004a9a: 2001         	movs	r0, #0x1
 8004a9c: f7fc f900    	bl	0x8000ca0 <firmware_image+0xca0> @ imm = #-0x3e00
 8004aa0: f7fc fe0e    	bl	0x80016c0 <firmware_image+0x16c0> @ imm = #-0x33e4
 8004aa4: e8bd 4010    	pop.w	{r4, lr}
 8004aa8: f7fc bde6    	b.w	0x8001678 <firmware_image+0x1678> @ imm = #-0x3434
 8004aac: 0264         	lsls	r4, r4, #0x9
 8004aae: 2000         	movs	r0, #0x0
 8004ab0: 0266         	lsls	r6, r4, #0x9
 8004ab2: 2000         	movs	r0, #0x0
 8004ab4: e92d 4ff1    	push.w	{r0, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8004ab8: 2000         	movs	r0, #0x0
 8004aba: 2300         	movs	r3, #0x0
 8004abc: 2400         	movs	r4, #0x0
 8004abe: f9bd 1000    	ldrsh.w	r1, [sp]
 8004ac2: f643 42e4    	movw	r2, #0x3ce4
 8004ac6: 4351         	muls	r1, r2, r1
 8004ac8: f9bd 2002    	ldrsh.w	r2, [sp, #0x2]
 8004acc: f242 3528    	movw	r5, #0x2328
 8004ad0: 436a         	muls	r2, r5, r2
 8004ad2: 4255         	rsbs	r5, r2, #0
 8004ad4: 186a         	adds	r2, r5, r1
 8004ad6: eb02 72d2    	add.w	r2, r2, r2, lsr #31
 8004ada: 1052         	asrs	r2, r2, #0x1
 8004adc: 1a69         	subs	r1, r5, r1
 8004ade: eb01 71d1    	add.w	r1, r1, r1, lsr #31
 8004ae2: 1049         	asrs	r1, r1, #0x1
 8004ae4: 4e4d         	ldr	r6, [pc, #0x134]        @ 0x8004c1c <firmware_image+0x4c1c>
 8004ae6: 2a00         	cmp	r2, #0x0
 8004ae8: da0c         	bge	0x8004b04 <firmware_image+0x4b04> @ imm = #0x18
 8004aea: 2900         	cmp	r1, #0x0
 8004aec: da02         	bge	0x8004af4 <firmware_image+0x4af4> @ imm = #0x4
 8004aee: 2705         	movs	r7, #0x5
 8004af0: 7137         	strb	r7, [r6, #0x4]
 8004af2: e013         	b	0x8004b1c <firmware_image+0x4b1c> @ imm = #0x26
 8004af4: 2d00         	cmp	r5, #0x0
 8004af6: dc02         	bgt	0x8004afe <firmware_image+0x4afe> @ imm = #0x4
 8004af8: 2704         	movs	r7, #0x4
 8004afa: 7137         	strb	r7, [r6, #0x4]
 8004afc: e00e         	b	0x8004b1c <firmware_image+0x4b1c> @ imm = #0x1c
 8004afe: 2703         	movs	r7, #0x3
 8004b00: 7137         	strb	r7, [r6, #0x4]
 8004b02: e00b         	b	0x8004b1c <firmware_image+0x4b1c> @ imm = #0x16
 8004b04: 2900         	cmp	r1, #0x0
 8004b06: db02         	blt	0x8004b0e <firmware_image+0x4b0e> @ imm = #0x4
 8004b08: 2702         	movs	r7, #0x2
 8004b0a: 7137         	strb	r7, [r6, #0x4]
 8004b0c: e006         	b	0x8004b1c <firmware_image+0x4b1c> @ imm = #0xc
 8004b0e: 2d00         	cmp	r5, #0x0
 8004b10: dc02         	bgt	0x8004b18 <firmware_image+0x4b18> @ imm = #0x4
 8004b12: 2706         	movs	r7, #0x6
 8004b14: 7137         	strb	r7, [r6, #0x4]
 8004b16: e001         	b	0x8004b1c <firmware_image+0x4b1c> @ imm = #0x2
 8004b18: 2701         	movs	r7, #0x1
 8004b1a: 7137         	strb	r7, [r6, #0x4]
 8004b1c: f896 a004    	ldrb.w	r10, [r6, #0x4]
 8004b20: f9bd 6002    	ldrsh.w	r6, [sp, #0x2]
 8004b24: f242 3928    	movw	r9, #0x2328
 8004b28: fb06 f609    	mul	r6, r6, r9
 8004b2c: 4276         	rsbs	r6, r6, #0
 8004b2e: f9bd b000    	ldrsh.w	r11, [sp]
 8004b32: f643 47e4    	movw	r7, #0x3ce4
 8004b36: fb0b fb07    	mul	r11, r11, r7
 8004b3a: eba6 070b    	sub.w	r7, r6, r11
 8004b3e: ea4f 7ce6    	asr.w	r12, r6, #0x1f
 8004b42: eb06 3cdc    	add.w	r12, r6, r12, lsr #15
 8004b46: 445e         	add	r6, r11
 8004b48: eb07 77d7    	add.w	r7, r7, r7, lsr #31
 8004b4c: eb06 76d6    	add.w	r6, r6, r6, lsr #31
 8004b50: 107f         	asrs	r7, r7, #0x1
 8004b52: 1076         	asrs	r6, r6, #0x1
 8004b54: 17ff         	asrs	r7, r7, #0x1f
 8004b56: 17f6         	asrs	r6, r6, #0x1f
 8004b58: f240 4865    	movw	r8, #0x465
 8004b5c: ea4f 4c6c    	asr.w	r12, r12, #0x11
 8004b60: f1ba 0f07    	cmp.w	r10, #0x7
 8004b64: d23a         	bhs	0x8004bdc <firmware_image+0x4bdc> @ imm = #0x74
 8004b66: e8df f00a    	tbb	[pc, r10]
 8004b6a: 0439         	lsls	r1, r7, #0x10
 8004b6c: 2815         	cmp	r0, #0x15
 8004b6e: 1504         	asrs	r4, r0, #0x14
 8004b70: 0028         	movs	r0, r5
 8004b72: 1a68         	subs	r0, r5, r1
 8004b74: 4448         	add	r0, r9
 8004b76: 17c2         	asrs	r2, r0, #0x1f
 8004b78: eb00 3092    	add.w	r0, r0, r2, lsr #14
 8004b7c: eb08 40a0    	add.w	r0, r8, r0, asr #18
 8004b80: b280         	uxth	r0, r0
 8004b82: eb01 31d7    	add.w	r1, r1, r7, lsr #15
 8004b86: eb00 4161    	add.w	r1, r0, r1, asr #17
 8004b8a: b28b         	uxth	r3, r1
 8004b8c: eba3 010c    	sub.w	r1, r3, r12
 8004b90: b28c         	uxth	r4, r1
 8004b92: e023         	b	0x8004bdc <firmware_image+0x4bdc> @ imm = #0x46
 8004b94: 1a50         	subs	r0, r2, r1
 8004b96: 4448         	add	r0, r9
 8004b98: 17c3         	asrs	r3, r0, #0x1f
 8004b9a: eb00 3093    	add.w	r0, r0, r3, lsr #14
 8004b9e: eb08 40a0    	add.w	r0, r8, r0, asr #18
 8004ba2: b280         	uxth	r0, r0
 8004ba4: eb01 31d7    	add.w	r1, r1, r7, lsr #15
 8004ba8: eb00 4161    	add.w	r1, r0, r1, asr #17
 8004bac: b28b         	uxth	r3, r1
 8004bae: eb02 31d6    	add.w	r1, r2, r6, lsr #15
 8004bb2: eba0 4161    	sub.w	r1, r0, r1, asr #17
 8004bb6: b28c         	uxth	r4, r1
 8004bb8: e010         	b	0x8004bdc <firmware_image+0x4bdc> @ imm = #0x20
 8004bba: eba9 0005    	sub.w	r0, r9, r5
 8004bbe: 4410         	add	r0, r2
 8004bc0: 17c1         	asrs	r1, r0, #0x1f
 8004bc2: eb00 3091    	add.w	r0, r0, r1, lsr #14
 8004bc6: eb08 40a0    	add.w	r0, r8, r0, asr #18
 8004bca: b280         	uxth	r0, r0
 8004bcc: eb02 31d6    	add.w	r1, r2, r6, lsr #15
 8004bd0: eba0 4161    	sub.w	r1, r0, r1, asr #17
 8004bd4: b28c         	uxth	r4, r1
 8004bd6: eb0c 0104    	add.w	r1, r12, r4
 8004bda: b28b         	uxth	r3, r1
 8004bdc: f640 02c9    	movw	r2, #0x8c9
 8004be0: 490f         	ldr	r1, [pc, #0x3c]         @ 0x8004c20 <firmware_image+0x4c20>
 8004be2: 880d         	ldrh	r5, [r1]
 8004be4: f445 5580    	orr	r5, r5, #0x1000
 8004be8: 800d         	strh	r5, [r1]
 8004bea: 880d         	ldrh	r5, [r1]
 8004bec: f425 5500    	bic	r5, r5, #0x2000
 8004bf0: 800d         	strh	r5, [r1]
 8004bf2: 490c         	ldr	r1, [pc, #0x30]         @ 0x8004c24 <firmware_image+0x4c24>
 8004bf4: 780f         	ldrb	r7, [r1]
 8004bf6: 490a         	ldr	r1, [pc, #0x28]         @ 0x8004c20 <firmware_image+0x4c20>
 8004bf8: 3114         	adds	r1, #0x14
 8004bfa: 1d0d         	adds	r5, r1, #0x4
 8004bfc: 1d2e         	adds	r6, r5, #0x4
 8004bfe: b127         	cbz	r7, 0x8004c0a <firmware_image+0x4c0a> @ imm = #0x8
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
 8004c38: d00d         	beq	0x8004c56 <firmware_image+0x4c56> @ imm = #0x1a
 8004c3a: 2200         	movs	r2, #0x0
 8004c3c: 2101         	movs	r1, #0x1
 8004c3e: 4618         	mov	r0, r3
 8004c40: f000 fd71    	bl	0x8005726 <firmware_image+0x5726> @ imm = #0xae2
 8004c44: 6820         	ldr	r0, [r4]
 8004c46: f420 5080    	bic	r0, r0, #0x1000
 8004c4a: 6020         	str	r0, [r4]
 8004c4c: 6820         	ldr	r0, [r4]
 8004c4e: f440 4000    	orr	r0, r0, #0x8000
 8004c52: 6020         	str	r0, [r4]
 8004c54: bd10         	pop	{r4, pc}
 8004c56: 6820         	ldr	r0, [r4]
 8004c58: f440 5080    	orr	r0, r0, #0x1000
 8004c5c: 6020         	str	r0, [r4]
 8004c5e: 461c         	mov	r4, r3
 8004c60: 2101         	movs	r1, #0x1
 8004c62: 4620         	mov	r0, r4
 8004c64: f000 fcb7    	bl	0x80055d6 <firmware_image+0x55d6> @ imm = #0x96e
 8004c68: 4620         	mov	r0, r4
 8004c6a: 2201         	movs	r2, #0x1
 8004c6c: e8bd 4010    	pop.w	{r4, lr}
 8004c70: 4611         	mov	r1, r2
 8004c72: f000 bd58    	b.w	0x8005726 <firmware_image+0x5726> @ imm = #0xab0
 8004c76: 0000         	movs	r0, r0
 8004c78: 2408         	movs	r4, #0x8
 8004c7a: 4001         	ands	r1, r0
 8004c7c: 2c00         	cmp	r4, #0x0
 8004c7e: 4001         	ands	r1, r0
 8004c80: b570         	push	{r4, r5, r6, lr}
 8004c82: 2100         	movs	r1, #0x0
 8004c84: f44f 6090    	mov.w	r0, #0x480
 8004c88: f7fb ffa2    	bl	0x8000bd0 <firmware_image+0xbd0> @ imm = #-0x40bc
 8004c8c: 4c2d         	ldr	r4, [pc, #0xb4]         @ 0x8004d44 <firmware_image+0x4d44>
 8004c8e: 2500         	movs	r5, #0x0
 8004c90: 8165         	strh	r5, [r4, #0xa]
 8004c92: 81a5         	strh	r5, [r4, #0xc]
 8004c94: f44f 40e0    	mov.w	r0, #0x7000
 8004c98: f7fb ff6a    	bl	0x8000b70 <firmware_image+0xb70> @ imm = #-0x412c
 8004c9c: 2001         	movs	r0, #0x1
 8004c9e: f7fb ff71    	bl	0x8000b84 <firmware_image+0xb84> @ imm = #-0x411e
 8004ca2: 2004         	movs	r0, #0x4
 8004ca4: f7fb fff4    	bl	0x8000c90 <firmware_image+0xc90> @ imm = #-0x4018
 8004ca8: 2201         	movs	r2, #0x1
 8004caa: 4611         	mov	r1, r2
 8004cac: 2000         	movs	r0, #0x0
 8004cae: f7fb ffc3    	bl	0x8000c38 <firmware_image+0xc38> @ imm = #-0x407a
 8004cb2: 2201         	movs	r2, #0x1
 8004cb4: 2102         	movs	r1, #0x2
 8004cb6: 2008         	movs	r0, #0x8
 8004cb8: f7fb ffbe    	bl	0x8000c38 <firmware_image+0xc38> @ imm = #-0x4084
 8004cbc: 2201         	movs	r2, #0x1
 8004cbe: 2103         	movs	r1, #0x3
 8004cc0: 2006         	movs	r0, #0x6
 8004cc2: f7fb ffb9    	bl	0x8000c38 <firmware_image+0xc38> @ imm = #-0x408e
 8004cc6: 2104         	movs	r1, #0x4
 8004cc8: 2201         	movs	r2, #0x1
 8004cca: 4608         	mov	r0, r1
 8004ccc: f7fb ffb4    	bl	0x8000c38 <firmware_image+0xc38> @ imm = #-0x4098
 8004cd0: 2004         	movs	r0, #0x4
 8004cd2: f7fb ff23    	bl	0x8000b1c <firmware_image+0xb1c> @ imm = #-0x41ba
 8004cd6: 2001         	movs	r0, #0x1
 8004cd8: f7fb ffe6    	bl	0x8000ca8 <firmware_image+0xca8> @ imm = #-0x4034
 8004cdc: 8125         	strh	r5, [r4, #0x8]
 8004cde: 2004         	movs	r0, #0x4
 8004ce0: f7fb ff60    	bl	0x8000ba4 <firmware_image+0xba4> @ imm = #-0x4140
 8004ce4: 2800         	cmp	r0, #0x0
 8004ce6: d0fa         	beq	0x8004cde <firmware_image+0x4cde> @ imm = #-0xc
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
 8004e30: 4628         	mov	r0, r5
 8004e32: f7fd fc7d    	bl	0x8002730 <firmware_image+0x2730> @ imm = #-0x2706
 8004e36: 2202         	movs	r2, #0x2
 8004e38: 210e         	movs	r1, #0xe
 8004e3a: 4628         	mov	r0, r5
 8004e3c: f7fd fc78    	bl	0x8002730 <firmware_image+0x2730> @ imm = #-0x2710
 8004e40: 2202         	movs	r2, #0x2
 8004e42: 210f         	movs	r1, #0xf
 8004e44: 4628         	mov	r0, r5
 8004e46: f7fd fc73    	bl	0x8002730 <firmware_image+0x2730> @ imm = #-0x271a
 8004e4a: f8df 914c    	ldr.w	r9, [pc, #0x14c]        @ 0x8004f98 <firmware_image+0x4f98>
 8004e4e: 4648         	mov	r0, r9
 8004e50: f000 fbd2    	bl	0x80055f8 <firmware_image+0x55f8> @ imm = #0x7a4
 8004e54: a80c         	add	r0, sp, #0x30
 8004e56: f000 fbb5    	bl	0x80055c4 <firmware_image+0x55c4> @ imm = #0x76a
 8004e5a: f8ad 4030    	strh.w	r4, [sp, #0x30]
 8004e5e: 2020         	movs	r0, #0x20
 8004e60: f8ad 0032    	strh.w	r0, [sp, #0x32]
 8004e64: f640 00ca    	movw	r0, #0x8ca
 8004e68: 900d         	str	r0, [sp, #0x34]
 8004e6a: 01f0         	lsls	r0, r6, #0x7
 8004e6c: f8ad 0038    	strh.w	r0, [sp, #0x38]
 8004e70: 2501         	movs	r5, #0x1
 8004e72: f88d 503a    	strb.w	r5, [sp, #0x3a]
 8004e76: a90c         	add	r1, sp, #0x30
 8004e78: 4648         	mov	r0, r9
 8004e7a: f000 fb6b    	bl	0x8005554 <firmware_image+0x5554> @ imm = #0x6d6
 8004e7e: a807         	add	r0, sp, #0x1c
 8004e80: f000 fd66    	bl	0x8005950 <firmware_image+0x5950> @ imm = #0xacc
 8004e84: 2060         	movs	r0, #0x60
 8004e86: f8ad 001c    	strh.w	r0, [sp, #0x1c]
 8004e8a: f8ad 501e    	strh.w	r5, [sp, #0x1e]
 8004e8e: f04f 0804    	mov.w	r8, #0x4
 8004e92: f8ad 8020    	strh.w	r8, [sp, #0x20]
 8004e96: f240 4065    	movw	r0, #0x465
 8004e9a: 9009         	str	r0, [sp, #0x24]
 8004e9c: f8ad 4028    	strh.w	r4, [sp, #0x28]
 8004ea0: 2608         	movs	r6, #0x8
 8004ea2: f8ad 602a    	strh.w	r6, [sp, #0x2a]
 8004ea6: f8ad 402c    	strh.w	r4, [sp, #0x2c]
 8004eaa: f8ad 402e    	strh.w	r4, [sp, #0x2e]
 8004eae: a907         	add	r1, sp, #0x1c
 8004eb0: 4648         	mov	r0, r9
 8004eb2: f000 fc43    	bl	0x800573c <firmware_image+0x573c> @ imm = #0x886
 8004eb6: a907         	add	r1, sp, #0x1c
 8004eb8: 4648         	mov	r0, r9
 8004eba: f000 fc83    	bl	0x80057c4 <firmware_image+0x57c4> @ imm = #0x906
 8004ebe: a907         	add	r1, sp, #0x1c
 8004ec0: 4648         	mov	r0, r9
 8004ec2: f000 fcc9    	bl	0x8005858 <firmware_image+0x5858> @ imm = #0x992
 8004ec6: a807         	add	r0, sp, #0x1c
 8004ec8: f000 fd42    	bl	0x8005950 <firmware_image+0x5950> @ imm = #0xa84
 8004ecc: 2070         	movs	r0, #0x70
 8004ece: f8ad 001c    	strh.w	r0, [sp, #0x1c]
 8004ed2: f8ad 501e    	strh.w	r5, [sp, #0x1e]
 8004ed6: f8ad 8020    	strh.w	r8, [sp, #0x20]
 8004eda: f640 00c9    	movw	r0, #0x8c9
 8004ede: 9009         	str	r0, [sp, #0x24]
 8004ee0: f8ad 4028    	strh.w	r4, [sp, #0x28]
 8004ee4: f8ad 602a    	strh.w	r6, [sp, #0x2a]
 8004ee8: f8ad 402c    	strh.w	r4, [sp, #0x2c]
 8004eec: f8ad 402e    	strh.w	r4, [sp, #0x2e]
 8004ef0: a907         	add	r1, sp, #0x1c
 8004ef2: 4648         	mov	r0, r9
 8004ef4: f000 fcf4    	bl	0x80058e0 <firmware_image+0x58e0> @ imm = #0x9e8
 8004ef8: 2108         	movs	r1, #0x8
 8004efa: 4648         	mov	r0, r9
 8004efc: f000 fc5c    	bl	0x80057b8 <firmware_image+0x57b8> @ imm = #0x8b8
 8004f00: 2108         	movs	r1, #0x8
 8004f02: 4648         	mov	r0, r9
 8004f04: f000 fc9e    	bl	0x8005844 <firmware_image+0x5844> @ imm = #0x93c
 8004f08: 2108         	movs	r1, #0x8
 8004f0a: 4648         	mov	r0, r9
 8004f0c: f000 fce2    	bl	0x80058d4 <firmware_image+0x58d4> @ imm = #0x9c4
 8004f10: 2108         	movs	r1, #0x8
 8004f12: 4648         	mov	r0, r9
 8004f14: f000 fd12    	bl	0x800593c <firmware_image+0x593c> @ imm = #0xa24
 8004f18: a803         	add	r0, sp, #0xc
 8004f1a: f000 fb12    	bl	0x8005542 <firmware_image+0x5542> @ imm = #0x624
 8004f1e: f8ad 700c    	strh.w	r7, [sp, #0xc]
 8004f22: 02a8         	lsls	r0, r5, #0xa
 8004f24: f8ad 000e    	strh.w	r0, [sp, #0xe]
 8004f28: f8ad 4010    	strh.w	r4, [sp, #0x10]
 8004f2c: 201c         	movs	r0, #0x1c
 8004f2e: f8ad 0012    	strh.w	r0, [sp, #0x12]
 8004f32: f8ad 4014    	strh.w	r4, [sp, #0x14]
 8004f36: f8ad 4016    	strh.w	r4, [sp, #0x16]
 8004f3a: f8ad 4018    	strh.w	r4, [sp, #0x18]
 8004f3e: a903         	add	r1, sp, #0xc
 8004f40: 4648         	mov	r0, r9
 8004f42: f000 faed    	bl	0x8005520 <firmware_image+0x5520> @ imm = #0x5da
 8004f46: 2120         	movs	r1, #0x20
 8004f48: 4648         	mov	r0, r9
 8004f4a: f000 fd0b    	bl	0x8005964 <firmware_image+0x5964> @ imm = #0xa16
 8004f4e: 2180         	movs	r1, #0x80
 8004f50: 4648         	mov	r0, r9
 8004f52: f000 fb40    	bl	0x80055d6 <firmware_image+0x55d6> @ imm = #0x680
 8004f56: 2200         	movs	r2, #0x0
 8004f58: 2180         	movs	r1, #0x80
 8004f5a: 4648         	mov	r0, r9
 8004f5c: f000 fbe3    	bl	0x8005726 <firmware_image+0x5726> @ imm = #0x7c6
 8004f60: 2101         	movs	r1, #0x1
 8004f62: 4648         	mov	r0, r9
 8004f64: f000 fbc6    	bl	0x80056f4 <firmware_image+0x56f4> @ imm = #0x78c
 8004f68: 2101         	movs	r1, #0x1
 8004f6a: 4648         	mov	r0, r9
 8004f6c: f000 fbce    	bl	0x800570c <firmware_image+0x570c> @ imm = #0x79c
 8004f70: 2101         	movs	r1, #0x1
 8004f72: 4648         	mov	r0, r9
 8004f74: 2200         	movs	r2, #0x0
 8004f76: 2101         	movs	r1, #0x1
 8004f78: 4648         	mov	r0, r9
 8004f7a: f000 fbd2    	bl	0x8005722 <firmware_image+0x5722> @ imm = #0x7a4
 8004f7e: 2200         	movs	r2, #0x0
 8004f80: 2110         	movs	r1, #0x10
 8004f82: 4648         	mov	r0, r9
 8004f84: f000 fbcd    	bl	0x8005722 <firmware_image+0x5722> @ imm = #0x79a
 8004f88: b00f         	add	sp, #0x3c
 8004f8a: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
 8004f8e: 0000         	movs	r0, r0
 8004f90: 0400         	lsls	r0, r0, #0x10
 8004f92: 4800         	ldr	r0, [pc, #0x0]          @ 0x8004f94 <firmware_image+0x4f94>
 8004f94: 2c00         	cmp	r4, #0x0
 8004f96: 4001         	ands	r1, r0
 8004f98: b510         	push	{r4, lr}
 8004f9a: 2004         	movs	r0, #0x4
 8004f9c: f7fb fe76    	bl	0x8000c8c <firmware_image+0xc8c> @ imm = #-0x4314
 8004fa0: 2201         	movs	r2, #0x1
 8004fa2: 4611         	mov	r1, r2
 8004fa4: 2000         	movs	r0, #0x0
 8004fa6: f7fb fe45    	bl	0x8000c34 <firmware_image+0xc34> @ imm = #-0x4376
 8004faa: 2201         	movs	r2, #0x1
 8004fac: 2102         	movs	r1, #0x2
 8004fae: 2008         	movs	r0, #0x8
 8004fb0: f7fb fe40    	bl	0x8000c34 <firmware_image+0xc34> @ imm = #-0x4380
 8004fb4: 2201         	movs	r2, #0x1
 8004fb6: 2103         	movs	r1, #0x3
 8004fb8: 2006         	movs	r0, #0x6
 8004fba: f7fb fe3b    	bl	0x8000c34 <firmware_image+0xc34> @ imm = #-0x438a
 8004fbe: 2104         	movs	r1, #0x4
 8004fc0: 2201         	movs	r2, #0x1
 8004fc2: 4608         	mov	r0, r1
 8004fc4: f7fb fe36    	bl	0x8000c34 <firmware_image+0xc34> @ imm = #-0x4394
 8004fc8: f44f 5080    	mov.w	r0, #0x1000
 8004fcc: f7fb fdce    	bl	0x8000b6c <firmware_image+0xb6c> @ imm = #-0x4464
 8004fd0: e8bd 4010    	pop.w	{r4, lr}
 8004fd4: 2101         	movs	r1, #0x1
 8004fd6: f44f 6090    	mov.w	r0, #0x480
 8004fda: f7fb bdf7    	b.w	0x8000bcc <firmware_image+0xbcc> @ imm = #-0x4412
 8004fde: b51c         	push	{r2, r3, r4, lr}
 8004fe0: 2101         	movs	r1, #0x1
 8004fe2: 0448         	lsls	r0, r1, #0x11
 8004fe4: f7ff f9b2    	bl	0x800434c <firmware_image+0x434c> @ imm = #-0xc9c
 8004fe8: f44f 5080    	mov.w	r0, #0x1000
 8004fec: 9000         	str	r0, [sp]
 8004fee: 2000         	movs	r0, #0x0
 8004ff0: f88d 0004    	strb.w	r0, [sp, #0x4]
 8004ff4: 2103         	movs	r1, #0x3
 8004ff6: f88d 0014    	strb.w	r0, [sp, #0x14]
 8004ffa: f8d9 0014    	ldr.w	r0, [r9, #0x14]
 8004ffe: 280a         	cmp	r0, #0xa
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
 800521c: 9200         	str	r2, [sp]
 800521e: 9900         	ldr	r1, [sp]
 8005220: 2901         	cmp	r1, #0x1
 8005222: d121         	bne	0x8005268 <firmware_image+0x5268> @ imm = #0x42
 8005224: 6841         	ldr	r1, [r0, #0x4]
 8005226: 6041         	str	r1, [r0, #0x4]
 8005228: 6841         	ldr	r1, [r0, #0x4]
 800522a: 6041         	str	r1, [r0, #0x4]
 800522c: 6841         	ldr	r1, [r0, #0x4]
 800522e: 6041         	str	r1, [r0, #0x4]
 8005230: 6841         	ldr	r1, [r0, #0x4]
 8005232: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x8005270 <firmware_image+0x5270>
 8005234: 4011         	ands	r1, r2
 8005236: 6041         	str	r1, [r0, #0x4]
 8005238: 6841         	ldr	r1, [r0, #0x4]
 800523a: f441 11e8    	orr	r1, r1, #0x1d0000
 800523e: 6041         	str	r1, [r0, #0x4]
 8005240: 6801         	ldr	r1, [r0]
 8005242: f041 7180    	orr	r1, r1, #0x1000000
 8005246: 6001         	str	r1, [r0]
 8005248: 6801         	ldr	r1, [r0]
 800524a: 0189         	lsls	r1, r1, #0x6
 800524c: d5fc         	bpl	0x8005248 <firmware_image+0x5248> @ imm = #-0x8
 800524e: 6841         	ldr	r1, [r0, #0x4]
 8005250: f021 0103    	bic	r1, r1, #0x3
 8005254: 6041         	str	r1, [r0, #0x4]
 8005256: 6841         	ldr	r1, [r0, #0x4]
 8005258: f041 0102    	orr	r1, r1, #0x2
 800525c: 6041         	str	r1, [r0, #0x4]
 800525e: 6841         	ldr	r1, [r0, #0x4]
 8005260: f3c1 0181    	ubfx	r1, r1, #0x2, #0x2
 8005264: 2902         	cmp	r1, #0x2
 8005266: d1fa         	bne	0x800525e <firmware_image+0x525e> @ imm = #-0xc
 8005268: bd0c         	pop	{r2, r3, pc}
 800526a: 0000         	movs	r0, r0
 800526c: 1000         	asrs	r0, r0, #0x20
 800526e: 4002         	ands	r2, r0
 8005270: ffff f7c0    	<unknown>
 8005274: b510         	push	{r4, lr}
 8005276: 481b         	ldr	r0, [pc, #0x6c]         @ 0x80052e4 <firmware_image+0x52e4>
 8005278: 8981         	ldrh	r1, [r0, #0xc]
 800527a: 1c49         	adds	r1, r1, #0x1
 800527c: 8181         	strh	r1, [r0, #0xc]
 800527e: 7981         	ldrb	r1, [r0, #0x6]
 8005280: 4819         	ldr	r0, [pc, #0x64]         @ 0x80052e8 <firmware_image+0x52e8>
 8005282: 7001         	strb	r1, [r0]
 8005284: 2178         	movs	r1, #0x78
 8005286: 7041         	strb	r1, [r0, #0x1]
 8005288: 4918         	ldr	r1, [pc, #0x60]         @ 0x80052ec <firmware_image+0x52ec>
 800528a: 8809         	ldrh	r1, [r1]
 800528c: 0a0a         	lsrs	r2, r1, #0x8
 800528e: 7082         	strb	r2, [r0, #0x2]
 8005290: 70c1         	strb	r1, [r0, #0x3]
 8005292: 4917         	ldr	r1, [pc, #0x5c]         @ 0x80052f0 <firmware_image+0x52f0>
 8005294: 8809         	ldrh	r1, [r1]
 8005296: 0a0a         	lsrs	r2, r1, #0x8
 8005298: 7102         	strb	r2, [r0, #0x4]
 800529a: 7141         	strb	r1, [r0, #0x5]
 800529c: 4915         	ldr	r1, [pc, #0x54]         @ 0x80052f4 <firmware_image+0x52f4>
 800529e: 8809         	ldrh	r1, [r1]
 80052a0: 0a0a         	lsrs	r2, r1, #0x8
 80052a2: 7182         	strb	r2, [r0, #0x6]
 80052a4: 71c1         	strb	r1, [r0, #0x7]
 80052a6: 4914         	ldr	r1, [pc, #0x50]         @ 0x80052f8 <firmware_image+0x52f8>
 80052a8: 7809         	ldrb	r1, [r1]
 80052aa: 7201         	strb	r1, [r0, #0x8]
 80052ac: 4913         	ldr	r1, [pc, #0x4c]         @ 0x80052fc <firmware_image+0x52fc>
 80052ae: 7809         	ldrb	r1, [r1]
 80052b0: 7241         	strb	r1, [r0, #0x9]
 80052b2: 4913         	ldr	r1, [pc, #0x4c]         @ 0x8005300 <firmware_image+0x5300>
 80052b4: 8809         	ldrh	r1, [r1]
 80052b6: 0a0a         	lsrs	r2, r1, #0x8
 80052b8: 7282         	strb	r2, [r0, #0xa]
 80052ba: 72c1         	strb	r1, [r0, #0xb]
 80052bc: 4911         	ldr	r1, [pc, #0x44]         @ 0x8005304 <firmware_image+0x5304>
 80052be: 7809         	ldrb	r1, [r1]
 80052c0: 7301         	strb	r1, [r0, #0xc]
 80052c2: 4911         	ldr	r1, [pc, #0x44]         @ 0x8005308 <firmware_image+0x5308>
 80052c4: 7809         	ldrb	r1, [r1]
 80052c6: 7341         	strb	r1, [r0, #0xd]
 80052c8: 210e         	movs	r1, #0xe
 80052ca: f001 fdb5    	bl	0x8006e38 <firmware_image+0x6e38> @ imm = #0x1b6a
 80052ce: 4601         	mov	r1, r0
 80052d0: 4805         	ldr	r0, [pc, #0x14]         @ 0x80052e8 <firmware_image+0x52e8>
 80052d2: 300e         	adds	r0, #0xe
 80052d4: f7ff fa73    	bl	0x80047be <firmware_image+0x47be> @ imm = #-0xb1a
 80052d8: 2110         	movs	r1, #0x10
 80052da: e8bd 4010    	pop.w	{r4, lr}
 80052de: 4802         	ldr	r0, [pc, #0x8]          @ 0x80052e8 <firmware_image+0x52e8>
 80052e0: f001 bee8    	b.w	0x80070b4 <firmware_image+0x70b4> @ imm = #0x1dd0
 80052e4: 021e         	lsls	r6, r3, #0x8
 80052e6: 2000         	movs	r0, #0x0
 80052e8: 0478         	lsls	r0, r7, #0x11
 80052ea: 2000         	movs	r0, #0x0
 80052ec: 003c         	movs	r4, r7
 80052ee: 2000         	movs	r0, #0x0
 80052f0: 00a2         	lsls	r2, r4, #0x2
 80052f2: 2000         	movs	r0, #0x0
 80052f4: 0096         	lsls	r6, r2, #0x2
 80052f6: 2000         	movs	r0, #0x0
 80052f8: 0072         	lsls	r2, r6, #0x1
 80052fa: 2000         	movs	r0, #0x0
 80052fc: 0071         	lsls	r1, r6, #0x1
 80052fe: 2000         	movs	r0, #0x0
 8005300: 009a         	lsls	r2, r3, #0x2
 8005302: 2000         	movs	r0, #0x0
 8005304: 0141         	lsls	r1, r0, #0x5
 8005306: 2000         	movs	r0, #0x0
 8005308: 016e         	lsls	r6, r5, #0x5
 800530a: 2000         	movs	r0, #0x0
 800530c: b510         	push	{r4, lr}
 800530e: 4812         	ldr	r0, [pc, #0x48]         @ 0x8005358 <firmware_image+0x5358>
 8005310: 220a         	movs	r2, #0xa
 8005312: 4912         	ldr	r1, [pc, #0x48]         @ 0x800535c <firmware_image+0x535c>
 8005314: f7fd f99c    	bl	0x8002650 <firmware_image+0x2650> @ imm = #-0x2cc8
 8005318: 4810         	ldr	r0, [pc, #0x40]         @ 0x800535c <firmware_image+0x535c>
 800531a: 4911         	ldr	r1, [pc, #0x44]         @ 0x8005360 <firmware_image+0x5360>
 800531c: 8802         	ldrh	r2, [r0]
 800531e: 800a         	strh	r2, [r1]
 8005320: 8842         	ldrh	r2, [r0, #0x2]
 8005322: 804a         	strh	r2, [r1, #0x2]
 8005324: 8882         	ldrh	r2, [r0, #0x4]
 8005326: 808a         	strh	r2, [r1, #0x4]
 8005328: 1d89         	adds	r1, r1, #0x6
 800532a: 88c2         	ldrh	r2, [r0, #0x6]
 800532c: 800a         	strh	r2, [r1]
 800532e: 8902         	ldrh	r2, [r0, #0x8]
 8005330: 804a         	strh	r2, [r1, #0x2]
 8005332: 8942         	ldrh	r2, [r0, #0xa]
 8005334: 808a         	strh	r2, [r1, #0x4]
 8005336: 3982         	subs	r1, #0x82
 8005338: 8982         	ldrh	r2, [r0, #0xc]
 800533a: 80ca         	strh	r2, [r1, #0x6]
 800533c: 89c2         	ldrh	r2, [r0, #0xe]
 800533e: 810a         	strh	r2, [r1, #0x8]
 8005340: 4908         	ldr	r1, [pc, #0x20]         @ 0x8005364 <firmware_image+0x5364>
 8005342: 7809         	ldrb	r1, [r1]
 8005344: 2900         	cmp	r1, #0x0
 8005346: d005         	beq	0x8005354 <firmware_image+0x5354> @ imm = #0xa
 8005348: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x8005368 <firmware_image+0x5368>
 800534a: 8a01         	ldrh	r1, [r0, #0x10]
 800534c: 8011         	strh	r1, [r2]
 800534e: 4907         	ldr	r1, [pc, #0x1c]         @ 0x800536c <firmware_image+0x536c>
 8005350: 8a40         	ldrh	r0, [r0, #0x12]
 8005352: 8008         	strh	r0, [r1]
 8005354: bd10         	pop	{r4, pc}
 8005356: 0000         	movs	r0, r0
 8005358: 7c00         	ldrb	r0, [r0, #0x10]
 800535a: 0800         	lsrs	r0, r0, #0x20
 800535c: 02f4         	lsls	r4, r6, #0xb
 800535e: 2000         	movs	r0, #0x0
 8005360: 0210         	lsls	r0, r2, #0x8
 8005362: 2000         	movs	r0, #0x0
 8005364: 021e         	lsls	r6, r3, #0x8
 8005366: 2000         	movs	r0, #0x0
 8005368: 008a         	lsls	r2, r1, #0x2
 800536a: 2000         	movs	r0, #0x0
 800536c: 008c         	lsls	r4, r1, #0x2
 800536e: 2000         	movs	r0, #0x0
 8005370: b510         	push	{r4, lr}
 8005372: b086         	sub	sp, #0x18
 8005374: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x80053d4 <firmware_image+0x53d4>
 8005376: f7fd f94b    	bl	0x8002610 <firmware_image+0x2610> @ imm = #-0x2d6a
 800537a: 4917         	ldr	r1, [pc, #0x5c]         @ 0x80053d8 <firmware_image+0x53d8>
 800537c: 8808         	ldrh	r0, [r1]
 800537e: f8ad 0004    	strh.w	r0, [sp, #0x4]
 8005382: 8848         	ldrh	r0, [r1, #0x2]
 8005384: f8ad 0006    	strh.w	r0, [sp, #0x6]
 8005388: 8888         	ldrh	r0, [r1, #0x4]
 800538a: f8ad 0008    	strh.w	r0, [sp, #0x8]
 800538e: 1d89         	adds	r1, r1, #0x6
 8005390: 8808         	ldrh	r0, [r1]
 8005392: f8ad 000a    	strh.w	r0, [sp, #0xa]
 8005396: 8848         	ldrh	r0, [r1, #0x2]
 8005398: f8ad 000c    	strh.w	r0, [sp, #0xc]
 800539c: 8888         	ldrh	r0, [r1, #0x4]
 800539e: f8ad 000e    	strh.w	r0, [sp, #0xe]
 80053a2: 3982         	subs	r1, #0x82
 80053a4: 88c8         	ldrh	r0, [r1, #0x6]
 80053a6: f8ad 0010    	strh.w	r0, [sp, #0x10]
 80053aa: 8908         	ldrh	r0, [r1, #0x8]
 80053ac: f8ad 0012    	strh.w	r0, [sp, #0x12]
 80053b0: 480a         	ldr	r0, [pc, #0x28]         @ 0x80053dc <firmware_image+0x53dc>
 80053b2: 7800         	ldrb	r0, [r0]
 80053b4: b138         	cbz	r0, 0x80053c6 <firmware_image+0x53c6> @ imm = #0xe
 80053b6: 480a         	ldr	r0, [pc, #0x28]         @ 0x80053e0 <firmware_image+0x53e0>
 80053b8: 8800         	ldrh	r0, [r0]
 80053ba: f8ad 0014    	strh.w	r0, [sp, #0x14]
 80053be: 4809         	ldr	r0, [pc, #0x24]         @ 0x80053e4 <firmware_image+0x53e4>
 80053c0: 8800         	ldrh	r0, [r0]
 80053c2: f8ad 0016    	strh.w	r0, [sp, #0x16]
 80053c6: 220a         	movs	r2, #0xa
 80053c8: a901         	add	r1, sp, #0x4
 80053ca: 4620         	mov	r0, r4
 80053cc: b006         	add	sp, #0x18
 80053ce: bd10         	pop	{r4, pc}
 80053d0: 7c00         	ldrb	r0, [r0, #0x10]
 80053d2: 0800         	lsrs	r0, r0, #0x20
 80053d4: 0210         	lsls	r0, r2, #0x8
 80053d6: 2000         	movs	r0, #0x0
 80053d8: 021e         	lsls	r6, r3, #0x8
 80053da: 2000         	movs	r0, #0x0
 80053dc: 008a         	lsls	r2, r1, #0x2
 80053de: 2000         	movs	r0, #0x0
 80053e0: 008c         	lsls	r4, r1, #0x2
 80053e2: 2000         	movs	r0, #0x0
 80053e4: 2100         	movs	r1, #0x0
 80053e6: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x800541c <firmware_image+0x541c>
 80053e8: eb01 0041    	add.w	r0, r1, r1, lsl #1
 80053ec: f853 2020    	ldr.w	r2, [r3, r0, lsl #2]
 80053f0: b12a         	cbz	r2, 0x80053fe <firmware_image+0x53fe> @ imm = #0xa
 80053f2: eb03 0080    	add.w	r0, r3, r0, lsl #2
 80053f6: 8882         	ldrh	r2, [r0, #0x4]
 80053f8: b132         	cbz	r2, 0x8005408 <firmware_image+0x5408> @ imm = #0xc
 80053fa: 1e52         	subs	r2, r2, #0x1
 80053fc: 8082         	strh	r2, [r0, #0x4]
 80053fe: 1c49         	adds	r1, r1, #0x1
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
 8005830: 4333         	orrs	r3, r6
 8005832: 8083         	strh	r3, [r0, #0x4]
 8005834: 8305         	strh	r5, [r0, #0x18]
 8005836: 6889         	ldr	r1, [r1, #0x8]
 8005838: 6381         	str	r1, [r0, #0x38]
 800583a: 8402         	strh	r2, [r0, #0x20]
 800583c: bd70         	pop	{r4, r5, r6, pc}
 800583e: 0000         	movs	r0, r0
 8005840: 2c00         	cmp	r4, #0x0
 8005842: 4001         	ands	r1, r0
 8005844: 8b02         	ldrh	r2, [r0, #0x18]
 8005846: f422 6200    	bic	r2, r2, #0x800
 800584a: f64f 73ff    	movw	r3, #0xffff
 800584e: ea03 2101    	and.w	r1, r3, r1, lsl #8
 8005852: 4311         	orrs	r1, r2
 8005854: 8301         	strh	r1, [r0, #0x18]
 8005856: 4770         	bx	lr
 8005858: b570         	push	{r4, r5, r6, lr}
 800585a: 8c02         	ldrh	r2, [r0, #0x20]
 800585c: f422 7280    	bic	r2, r2, #0x100
 8005860: 8402         	strh	r2, [r0, #0x20]
 8005862: 8c02         	ldrh	r2, [r0, #0x20]
 8005864: 8883         	ldrh	r3, [r0, #0x4]
 8005866: 8b84         	ldrh	r4, [r0, #0x1c]
 8005868: f024 0470    	bic	r4, r4, #0x70
 800586c: f024 0403    	bic	r4, r4, #0x3
 8005870: 880d         	ldrh	r5, [r1]
 8005872: 4325         	orrs	r5, r4
 8005874: f422 7200    	bic	r2, r2, #0x200
 8005878: 898e         	ldrh	r6, [r1, #0xc]
 800587a: f64f 74ff    	movw	r4, #0xffff
 800587e: ea04 2606    	and.w	r6, r4, r6, lsl #8
 8005882: 4316         	orrs	r6, r2
 8005884: 884a         	ldrh	r2, [r1, #0x2]
 8005886: ea04 2202    	and.w	r2, r4, r2, lsl #8
 800588a: 4332         	orrs	r2, r6
 800588c: 4e10         	ldr	r6, [pc, #0x40]         @ 0x80058d0 <firmware_image+0x58d0>
 800588e: 42b0         	cmp	r0, r6
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
 80058fa: f64f 2404    	movw	r4, #0xfa04
 80058fe: 4334         	orrs	r4, r6
 8005900: f425 5500    	bic	r5, r5, #0x2000
 8005904: 898e         	ldrh	r6, [r1, #0xc]
 8005906: ea03 3606    	and.w	r6, r3, r6, lsl #12
 800590a: 432e         	orrs	r6, r5
 800590c: 884d         	ldrh	r5, [r1, #0x2]
 800590e: ea03 3505    	and.w	r5, r3, r5, lsl #12
 8005912: 4335         	orrs	r5, r6
 8005914: 4e07         	ldr	r6, [pc, #0x1c]         @ 0x8005934 <firmware_image+0x5934>
 8005916: 42b0         	cmp	r0, r6
 8005918: d105         	bne	0x8005926 <firmware_image+0x5926> @ imm = #0xa
 800591a: f422 4680    	bic	r6, r2, #0x4000
 800591e: 8a0a         	ldrh	r2, [r1, #0x10]
 8005920: ea03 1282    	and.w	r2, r3, r2, lsl #6
 8005924: 4332         	orrs	r2, r6
 8005926: 8082         	strh	r2, [r0, #0x4]
 8005928: 8384         	strh	r4, [r0, #0x1c]
 800592a: 6889         	ldr	r1, [r1, #0x8]
 800592c: 6401         	str	r1, [r0, #0x40]
 800592e: 8405         	strh	r5, [r0, #0x20]
 8005930: bd70         	pop	{r4, r5, r6, pc}
 8005932: 0000         	movs	r0, r0
 8005934: 2c00         	cmp	r4, #0x0
 8005936: 4001         	ands	r1, r0
 8005938: 8b82         	ldrh	r2, [r0, #0x1c]
 800593a: f422 6200    	bic	r2, r2, #0x800
 800593e: f64f 73ff    	movw	r3, #0xffff
 8005942: ea03 2101    	and.w	r1, r3, r1, lsl #8
 8005946: 4311         	orrs	r1, r2
 8005948: 8381         	strh	r1, [r0, #0x1c]
 800594a: 4770         	bx	lr
 800594c: 2100         	movs	r1, #0x0
 800594e: 8001         	strh	r1, [r0]
 8005950: 8041         	strh	r1, [r0, #0x2]
 8005952: 8081         	strh	r1, [r0, #0x4]
 8005954: 6081         	str	r1, [r0, #0x8]
 8005956: 8181         	strh	r1, [r0, #0xc]
 8005958: 81c1         	strh	r1, [r0, #0xe]
 800595a: 8201         	strh	r1, [r0, #0x10]
 800595c: 8241         	strh	r1, [r0, #0x12]
 800595e: 4770         	bx	lr
 8005960: 8882         	ldrh	r2, [r0, #0x4]
 8005962: f022 0270    	bic	r2, r2, #0x70
 8005966: 8082         	strh	r2, [r0, #0x4]
 8005968: 8882         	ldrh	r2, [r0, #0x4]
 800596a: 430a         	orrs	r2, r1
 800596c: 8082         	strh	r2, [r0, #0x4]
 800596e: 4770         	bx	lr
 8005970: 6241         	str	r1, [r0, #0x24]
 8005972: 4770         	bx	lr
 8005974: f830 3f44    	ldrh	r3, [r0, #68]!
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
 8005bea: f7ff fd81    	bl	0x80056f0 <firmware_image+0x56f0> @ imm = #-0x4fe
 8005bee: bd3e         	pop	{r1, r2, r3, r4, r5, pc}
 8005bf0: 0400         	lsls	r0, r0, #0x10
 8005bf2: 4000         	ands	r0, r0
 8005bf4: 8480         	strh	r0, [r0, #0x24]
 8005bf6: 001e         	movs	r6, r3
 8005bf8: b508         	push	{r3, lr}
 8005bfa: f500 4100    	add.w	r1, r0, #0x8000
 8005bfe: 0989         	lsrs	r1, r1, #0x6
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
 8005c84: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8005c88: 4921         	ldr	r1, [pc, #0x84]         @ 0x8005d10 <firmware_image+0x5d10>
 8005c8a: 4822         	ldr	r0, [pc, #0x88]         @ 0x8005d14 <firmware_image+0x5d14>
 8005c8c: f000 f884    	bl	0x8005d98 <firmware_image+0x5d98> @ imm = #0x108
 8005c90: 2800         	cmp	r0, #0x0
 8005c92: d03a         	beq	0x8005d0a <firmware_image+0x5d0a> @ imm = #0x74
 8005c94: 4d20         	ldr	r5, [pc, #0x80]         @ 0x8005d18 <firmware_image+0x5d18>
 8005c96: 2100         	movs	r1, #0x0
 8005c98: 4628         	mov	r0, r5
 8005c9a: f7fc faad    	bl	0x80021f8 <firmware_image+0x21f8> @ imm = #-0x3aa6
 8005c9e: 4628         	mov	r0, r5
 8005ca0: f7fc fab7    	bl	0x8002212 <firmware_image+0x2212> @ imm = #-0x3a92
 8005ca4: 4c1d         	ldr	r4, [pc, #0x74]         @ 0x8005d1c <firmware_image+0x5d1c>
 8005ca6: f1c0 0020    	rsb.w	r0, r0, #0x20
 8005caa: b282         	uxth	r2, r0
 8005cac: 8062         	strh	r2, [r4, #0x2]
 8005cae: 4e1a         	ldr	r6, [pc, #0x68]         @ 0x8005d18 <firmware_image+0x5d18>
 8005cb0: 3e58         	subs	r6, #0x58
 8005cb2: b19a         	cbz	r2, 0x8005cdc <firmware_image+0x5cdc> @ imm = #0x26
 8005cb4: 2100         	movs	r1, #0x0
 8005cb6: 481a         	ldr	r0, [pc, #0x68]         @ 0x8005d20 <firmware_image+0x5d20>
 8005cb8: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x8005d24 <firmware_image+0x5d24>
 8005cba: e003         	b	0x8005cc4 <firmware_image+0x5cc4> @ imm = #0x6
 8005cbc: 5c47         	ldrb	r7, [r0, r1]
 8005cbe: 545f         	strb	r7, [r3, r1]
 8005cc0: 1c49         	adds	r1, r1, #0x1
 8005cc2: b289         	uxth	r1, r1
 8005cc4: 4291         	cmp	r1, r2
 8005cc6: d3f9         	blo	0x8005cbc <firmware_image+0x5cbc> @ imm = #-0xe
 8005cc8: 2100         	movs	r1, #0x0
 8005cca: 4628         	mov	r0, r5
 8005ccc: f7fc fa94    	bl	0x80021f8 <firmware_image+0x21f8> @ imm = #-0x3ad8
 8005cd0: 8861         	ldrh	r1, [r4, #0x2]
 8005cd2: 65f1         	str	r1, [r6, #0x5c]
 8005cd4: 2101         	movs	r1, #0x1
 8005cd6: 4628         	mov	r0, r5
 8005cd8: f7fc fa8e    	bl	0x80021f8 <firmware_image+0x21f8> @ imm = #-0x3ae4
 8005cdc: 2100         	movs	r1, #0x0
 8005cde: 4628         	mov	r0, r5
 8005ce0: f7fc fa8a    	bl	0x80021f8 <firmware_image+0x21f8> @ imm = #-0x3aec
 8005ce4: f7fc f9c0    	bl	0x8002068 <firmware_image+0x2068> @ imm = #-0x3c80
 8005ce8: 2120         	movs	r1, #0x20
 8005cea: 65f1         	str	r1, [r6, #0x5c]
 8005cec: 2101         	movs	r1, #0x1
 8005cee: 4628         	mov	r0, r5
 8005cf0: f7fc fa80    	bl	0x80021f4 <firmware_image+0x21f4> @ imm = #-0x3b00
 8005cf4: 2002         	movs	r0, #0x2
 8005cf6: 7020         	strb	r0, [r4]
 8005cf8: f001 f8b2    	bl	0x8006e60 <firmware_image+0x6e60> @ imm = #0x1164
 8005cfc: 4904         	ldr	r1, [pc, #0x10]         @ 0x8005d10 <firmware_image+0x5d10>
 8005cfe: f04f 30ff    	mov.w	r0, #0xffffffff
 8005d02: 3120         	adds	r1, #0x20
 8005d04: 6008         	str	r0, [r1]
 8005d06: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8005d0a: 0000         	movs	r0, r0
 8005d0c: 0104         	lsls	r4, r0, #0x4
 8005d0e: 0004         	movs	r4, r0
 8005d10: 4400         	add	r0, r0
 8005d12: 4000         	ands	r0, r0
 8005d14: 0058         	lsls	r0, r3, #0x1
 8005d16: 4002         	ands	r2, r0
 8005d18: 0236         	lsls	r6, r6, #0x8
 8005d1a: 2000         	movs	r0, #0x0
 8005d1c: 04b0         	lsls	r0, r6, #0x12
 8005d1e: 2000         	movs	r0, #0x0
 8005d20: 0478         	lsls	r0, r7, #0x11
 8005d22: 2000         	movs	r0, #0x0
 8005d24: 2a00         	cmp	r2, #0x0
 8005d26: d003         	beq	0x8005d30 <firmware_image+0x5d30> @ imm = #0x6
 8005d28: 6882         	ldr	r2, [r0, #0x8]
 8005d2a: 430a         	orrs	r2, r1
 8005d2c: 6082         	str	r2, [r0, #0x8]
 8005d2e: 4770         	bx	lr
 8005d30: 6882         	ldr	r2, [r0, #0x8]
 8005d32: 438a         	bics	r2, r1
 8005d34: 6082         	str	r2, [r0, #0x8]
 8005d36: 4770         	bx	lr
 8005d38: b510         	push	{r4, lr}
 8005d3a: 490e         	ldr	r1, [pc, #0x38]         @ 0x8005d74 <firmware_image+0x5d74>
 8005d3c: 4288         	cmp	r0, r1
 8005d3e: d10a         	bne	0x8005d56 <firmware_image+0x5d56> @ imm = #0x14
 8005d40: 2101         	movs	r1, #0x1
 8005d42: 038c         	lsls	r4, r1, #0xe
 8005d44: 4620         	mov	r0, r4
 8005d46: f7fe fb4f    	bl	0x80043e8 <firmware_image+0x43e8> @ imm = #-0x1962
 8005d4a: 4620         	mov	r0, r4
 8005d4c: e8bd 4010    	pop.w	{r4, lr}
 8005d50: 2100         	movs	r1, #0x0
 8005d52: f7fe bb49    	b.w	0x80043e8 <firmware_image+0x43e8> @ imm = #-0x196e
 8005d56: 4908         	ldr	r1, [pc, #0x20]         @ 0x8005d78 <firmware_image+0x5d78>
 8005d58: 4288         	cmp	r0, r1
 8005d5a: d10a         	bne	0x8005d72 <firmware_image+0x5d72> @ imm = #0x14
 8005d5c: 2101         	movs	r1, #0x1
 8005d5e: 044c         	lsls	r4, r1, #0x11
 8005d60: 4620         	mov	r0, r4
 8005d62: f7fe fb1b    	bl	0x800439c <firmware_image+0x439c> @ imm = #-0x19ca
 8005d66: 4620         	mov	r0, r4
 8005d68: e8bd 4010    	pop.w	{r4, lr}
 8005d6c: 2100         	movs	r1, #0x0
 8005d6e: f7fe bb15    	b.w	0x800439c <firmware_image+0x439c> @ imm = #-0x19d6
 8005d72: bd10         	pop	{r4, pc}
 8005d74: 3800         	subs	r0, #0x0
 8005d76: 4001         	ands	r1, r0
 8005d78: 4400         	add	r0, r0
 8005d7a: 4000         	ands	r0, r0
 8005d7c: 2900         	cmp	r1, #0x0
 8005d7e: d004         	beq	0x8005d8a <firmware_image+0x5d8a> @ imm = #0x8
 8005d80: 6801         	ldr	r1, [r0]
 8005d82: f041 0101    	orr	r1, r1, #0x1
 8005d86: 6001         	str	r1, [r0]
 8005d88: 4770         	bx	lr
 8005d8a: 6801         	ldr	r1, [r0]
 8005d8c: f021 0101    	bic	r1, r1, #0x1
 8005d90: 6001         	str	r1, [r0]
 8005d92: 4770         	bx	lr
 8005d94: b510         	push	{r4, lr}
 8005d96: f3c1 2307    	ubfx	r3, r1, #0x8, #0x8
 8005d9a: 2401         	movs	r4, #0x1
 8005d9c: fa04 f201    	lsl.w	r2, r4, r1
 8005da0: 2b01         	cmp	r3, #0x1
 8005da2: d00b         	beq	0x8005dbc <firmware_image+0x5dbc> @ imm = #0x16
 8005da4: 2b02         	cmp	r3, #0x2
 8005da6: d00c         	beq	0x8005dc2 <firmware_image+0x5dc2> @ imm = #0x18
 8005da8: 6883         	ldr	r3, [r0, #0x8]
 8005daa: 4013         	ands	r3, r2
 8005dac: 0c09         	lsrs	r1, r1, #0x10
 8005dae: 408c         	lsls	r4, r1
 8005db0: 69c0         	ldr	r0, [r0, #0x1c]
 8005db2: 4020         	ands	r0, r4
 8005db4: b143         	cbz	r3, 0x8005dc8 <firmware_image+0x5dc8> @ imm = #0x10
 8005db6: b138         	cbz	r0, 0x8005dc8 <firmware_image+0x5dc8> @ imm = #0xe
 8005db8: 2001         	movs	r0, #0x1
 8005dba: bd10         	pop	{r4, pc}
 8005dbc: 6803         	ldr	r3, [r0]
 8005dbe: 4013         	ands	r3, r2
 8005dc0: e7f4         	b	0x8005dac <firmware_image+0x5dac> @ imm = #-0x18
 8005dc2: 6843         	ldr	r3, [r0, #0x4]
 8005dc4: 4013         	ands	r3, r2
 8005dc6: e7f1         	b	0x8005dac <firmware_image+0x5dac> @ imm = #-0x1e
 8005dc8: 2000         	movs	r0, #0x0
 8005dca: bd10         	pop	{r4, pc}
 8005dcc: f401 437f    	and	r3, r1, #0xff00
 8005dd0: f5b3 7f40    	cmp.w	r3, #0x300
 8005dd4: d003         	beq	0x8005dde <firmware_image+0x5dde> @ imm = #0x6
 8005dd6: f5b3 7f00    	cmp.w	r3, #0x200
 8005dda: d002         	beq	0x8005de2 <firmware_image+0x5de2> @ imm = #0x4
 8005ddc: e002         	b	0x8005de4 <firmware_image+0x5de4> @ imm = #0x4
 8005dde: 3008         	adds	r0, #0x8
 8005de0: e000         	b	0x8005de4 <firmware_image+0x5de4> @ imm = #0x0
 8005de2: 1d00         	adds	r0, r0, #0x4
 8005de4: 2301         	movs	r3, #0x1
 8005de6: 408b         	lsls	r3, r1
 8005de8: b11a         	cbz	r2, 0x8005df2 <firmware_image+0x5df2> @ imm = #0x6
 8005dea: 6801         	ldr	r1, [r0]
 8005dec: 4319         	orrs	r1, r3
 8005dee: 6001         	str	r1, [r0]
 8005df0: 4770         	bx	lr
 8005df2: 6801         	ldr	r1, [r0]
 8005df4: 4399         	bics	r1, r3
 8005df6: 6001         	str	r1, [r0]
 8005df8: 4770         	bx	lr
 8005dfa: 0000         	movs	r0, r0
 8005dfc: b530         	push	{r4, r5, lr}
 8005dfe: b087         	sub	sp, #0x1c
 8005e00: 4604         	mov	r4, r0
 8005e02: 460d         	mov	r5, r1
 8005e04: 6820         	ldr	r0, [r4]
 8005e06: f020 0001    	bic	r0, r0, #0x1
 8005e0a: 6020         	str	r0, [r4]
 8005e0c: 6860         	ldr	r0, [r4, #0x4]
 8005e0e: f420 5140    	bic	r1, r0, #0x3000
 8005e12: 68a8         	ldr	r0, [r5, #0x8]
 8005e14: 4308         	orrs	r0, r1
 8005e16: 6060         	str	r0, [r4, #0x4]
 8005e18: 6820         	ldr	r0, [r4]
 8005e1a: f241 610c    	movw	r1, #0x160c
 8005e1e: 4388         	bics	r0, r1
 8005e20: 68ea         	ldr	r2, [r5, #0xc]
 8005e22: 6869         	ldr	r1, [r5, #0x4]
 8005e24: 4311         	orrs	r1, r2
 8005e26: 692a         	ldr	r2, [r5, #0x10]
 8005e28: 4302         	orrs	r2, r0
 8005e2a: 4311         	orrs	r1, r2
 8005e2c: 6021         	str	r1, [r4]
 8005e2e: 68a0         	ldr	r0, [r4, #0x8]
 8005e30: f420 7040    	bic	r0, r0, #0x300
 8005e34: 6969         	ldr	r1, [r5, #0x14]
 8005e36: 4301         	orrs	r1, r0
 8005e38: 60a1         	str	r1, [r4, #0x8]
 8005e3a: 4668         	mov	r0, sp
 8005e3c: f7fe fb6a    	bl	0x8004514 <firmware_image+0x4514> @ imm = #-0x192c
 8005e40: 4814         	ldr	r0, [pc, #0x50]         @ 0x8005e94 <firmware_image+0x5e94>
 8005e42: 4284         	cmp	r4, r0
 8005e44: d101         	bne	0x8005e4a <firmware_image+0x5e4a> @ imm = #0x2
 8005e46: 9906         	ldr	r1, [sp, #0x18]
 8005e48: e000         	b	0x8005e4c <firmware_image+0x5e4c> @ imm = #0x0
 8005e4a: 9902         	ldr	r1, [sp, #0x8]
 8005e4c: 6820         	ldr	r0, [r4]
 8005e4e: 0400         	lsls	r0, r0, #0x10
 8005e50: d508         	bpl	0x8005e64 <firmware_image+0x5e64> @ imm = #0x10
 8005e52: 004a         	lsls	r2, r1, #0x1
 8005e54: 6829         	ldr	r1, [r5]
 8005e56: fbb2 f0f1    	udiv	r0, r2, r1
 8005e5a: fbb2 f3f1    	udiv	r3, r2, r1
 8005e5e: fb01 2113    	mls	r1, r1, r3, r2
 8005e62: e006         	b	0x8005e72 <firmware_image+0x5e72> @ imm = #0xc
 8005e64: 682a         	ldr	r2, [r5]
 8005e66: fbb1 f0f2    	udiv	r0, r1, r2
 8005e6a: fbb1 f3f2    	udiv	r3, r1, r2
 8005e6e: fb02 1113    	mls	r1, r2, r3, r1
 8005e72: 682a         	ldr	r2, [r5]
 8005e74: ebb1 0f52    	cmp.w	r1, r2, lsr #1
 8005e78: d300         	blo	0x8005e7c <firmware_image+0x5e7c> @ imm = #0x0
 8005e7a: 1c40         	adds	r0, r0, #0x1
 8005e7c: 6821         	ldr	r1, [r4]
 8005e7e: 0409         	lsls	r1, r1, #0x10
 8005e80: d505         	bpl	0x8005e8e <firmware_image+0x5e8e> @ imm = #0xa
 8005e82: f3c0 0142    	ubfx	r1, r0, #0x1, #0x3
 8005e86: f64f 72f0    	movw	r2, #0xfff0
 8005e8a: 4010         	ands	r0, r2
 8005e8c: 4308         	orrs	r0, r1
 8005e8e: 81a0         	strh	r0, [r4, #0xc]
 8005e90: b007         	add	sp, #0x1c
 8005e92: bd30         	pop	{r4, r5, pc}
 8005e94: 3800         	subs	r0, #0x0
 8005e96: 4001         	ands	r1, r0
 8005e98: 4770         	bx	lr
 8005e9a: e7fe         	b	0x8005e9a <firmware_image+0x5e9a> @ imm = #-0x4
 8005e9c: b570         	push	{r4, r5, r6, lr}
 8005e9e: 4813         	ldr	r0, [pc, #0x4c]         @ 0x8005eec <firmware_image+0x5eec>
 8005ea0: 8800         	ldrh	r0, [r0]
 8005ea2: ebc0 00c0    	rsb	r0, r0, r0, lsl #3
 8005ea6: 0080         	lsls	r0, r0, #0x2
 8005ea8: b200         	sxth	r0, r0
 8005eaa: f7fa 4b10    	<unknown>
 8005eae: f7fa fae8    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5a30
 8005eb2: 4e10         	ldr	r6, [pc, #0x40]         @ 0x8005ef4 <firmware_image+0x5ef4>
 8005eb4: 4604         	mov	r4, r0
 8005eb6: 460d         	mov	r5, r1
 8005eb8: 6b70         	ldr	r0, [r6, #0x34]
 8005eba: f7fa fc15    	bl	0x80006e8 <firmware_image+0x6e8> @ imm = #-0x57d6
 8005ebe: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x8005ef8 <firmware_image+0x5ef8>
 8005ec0: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x8005efc <firmware_image+0x5efc>
 8005ec2: f7fa fade    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5a44
 8005ec6: 4622         	mov	r2, r4
 8005ec8: 462b         	mov	r3, r5
 8005eca: f7fa fa33    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x5b9a
 8005ece: f7fa fc37    	bl	0x8000740 <firmware_image+0x740> @ imm = #-0x5792
 8005ed2: 6370         	str	r0, [r6, #0x34]
 8005ed4: f7fa fbd0    	bl	0x8000678 <firmware_image+0x678> @ imm = #-0x5860
 8005ed8: f1a6 0180    	sub.w	r1, r6, #0x80
 8005edc: 87c8         	strh	r0, [r1, #0x3e]
 8005ede: 8fc8         	ldrh	r0, [r1, #0x3e]
 8005ee0: 8788         	strh	r0, [r1, #0x3c]
 8005ee2: 8748         	strh	r0, [r1, #0x3a]
 8005ee4: bd70         	pop	{r4, r5, r6, pc}
 8005ee6: 0000         	movs	r0, r0
 8005ee8: 027e         	lsls	r6, r7, #0x9
 8005eea: 2000         	movs	r0, #0x0
 8005eec: 999a         	ldr	r1, [sp, #0x268]
 8005eee: 9999         	ldr	r1, [sp, #0x264]
 8005ef0: 9999         	ldr	r1, [sp, #0x264]
 8005ef2: 3fb9         	subs	r7, #0xb9
 8005ef4: 00e4         	lsls	r4, r4, #0x3
 8005ef6: 2000         	movs	r0, #0x0
 8005ef8: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
 8005efa: cccc         	ldm	r4!, {r2, r3, r6, r7}
 8005efc: cccc         	ldm	r4!, {r2, r3, r6, r7}
 8005efe: 3fec         	subs	r7, #0xec
 8005f00: b500         	push	{lr}
 8005f02: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x8005f60 <firmware_image+0x5f60>
 8005f04: 8fd8         	ldrh	r0, [r3, #0x3e]
 8005f06: f8b3 1040    	ldrh.w	r1, [r3, #0x40]
 8005f0a: 1a40         	subs	r0, r0, r1
 8005f0c: b200         	sxth	r0, r0
 8005f0e: f000 fa80    	bl	0x8006412 <firmware_image+0x6412> @ imm = #0x500
 8005f12: eb00 01c0    	add.w	r1, r0, r0, lsl #3
 8005f16: eb01 1000    	add.w	r0, r1, r0, lsl #4
 8005f1a: f640 51ac    	movw	r1, #0xdac
 8005f1e: eb01 0040    	add.w	r0, r1, r0, lsl #1
 8005f22: 6758         	str	r0, [r3, #0x74]
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
 8006044: 2802         	cmp	r0, #0x2
 8006046: d110         	bne	0x800606a <firmware_image+0x606a> @ imm = #0x20
 8006048: e00c         	b	0x8006064 <firmware_image+0x6064> @ imm = #0x18
 800604a: b176         	cbz	r6, 0x800606a <firmware_image+0x606a> @ imm = #0x1c
 800604c: f88a 2004    	strb.w	r2, [r10, #0x4]
 8006050: e00b         	b	0x800606a <firmware_image+0x606a> @ imm = #0x16
 8006052: b126         	cbz	r6, 0x800605e <firmware_image+0x605e> @ imm = #0x8
 8006054: f88a 6003    	strb.w	r6, [r10, #0x3]
 8006058: f88a 4004    	strb.w	r4, [r10, #0x4]
 800605c: e005         	b	0x800606a <firmware_image+0x606a> @ imm = #0xa
 800605e: f88a 1004    	strb.w	r1, [r10, #0x4]
 8006062: e002         	b	0x800606a <firmware_image+0x606a> @ imm = #0x4
 8006064: b90e         	cbnz	r6, 0x800606a <firmware_image+0x606a> @ imm = #0x2
 8006066: f88a 1004    	strb.w	r1, [r10, #0x4]
 800606a: 4c7d         	ldr	r4, [pc, #0x1f4]        @ 0x8006260 <firmware_image+0x6260>
 800606c: f89a 0003    	ldrb.w	r0, [r10, #0x3]
 8006070: 2603         	movs	r6, #0x3
 8006072: 7827         	ldrb	r7, [r4]
 8006074: 4c71         	ldr	r4, [pc, #0x1c4]        @ 0x800623c <firmware_image+0x623c>
 8006076: 7b24         	ldrb	r4, [r4, #0xc]
 8006078: 433c         	orrs	r4, r7
 800607a: 2801         	cmp	r0, #0x1
 800607c: d036         	beq	0x80060ec <firmware_image+0x60ec> @ imm = #0x6c
 800607e: 2802         	cmp	r0, #0x2
 8006080: d03e         	beq	0x8006100 <firmware_image+0x6100> @ imm = #0x7c
 8006082: 2804         	cmp	r0, #0x4
 8006084: d03f         	beq	0x8006106 <firmware_image+0x6106> @ imm = #0x7e
 8006086: 2808         	cmp	r0, #0x8
 8006088: d025         	beq	0x80060d6 <firmware_image+0x60d6> @ imm = #0x4a
 800608a: f88a 1003    	strb.w	r1, [r10, #0x3]
 800608e: 4975         	ldr	r1, [pc, #0x1d4]        @ 0x8006264 <firmware_image+0x6264>
 8006090: f3cc 0080    	ubfx	r0, r12, #0x2, #0x1
 8006094: 7008         	strb	r0, [r1]
 8006096: f3cc 1001    	ubfx	r0, r12, #0x4, #0x2
 800609a: 7028         	strb	r0, [r5]
 800609c: 4872         	ldr	r0, [pc, #0x1c8]        @ 0x8006268 <firmware_image+0x6268>
 800609e: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x800626c <firmware_image+0x626c>
 80060a0: f003 0101    	and	r1, r3, #0x1
 80060a4: 7011         	strb	r1, [r2]
 80060a6: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x8006270 <firmware_image+0x6270>
 80060a8: f3c3 0140    	ubfx	r1, r3, #0x1, #0x1
 80060ac: 7011         	strb	r1, [r2]
 80060ae: 4a71         	ldr	r2, [pc, #0x1c4]        @ 0x8006274 <firmware_image+0x6274>
 80060b0: f3c3 0180    	ubfx	r1, r3, #0x2, #0x1
 80060b4: 7011         	strb	r1, [r2]
 80060b6: 4a70         	ldr	r2, [pc, #0x1c0]        @ 0x8006278 <firmware_image+0x6278>
 80060b8: f3c3 01c0    	ubfx	r1, r3, #0x3, #0x1
 80060bc: 7011         	strb	r1, [r2]
 80060be: 4a6f         	ldr	r2, [pc, #0x1bc]        @ 0x800627c <firmware_image+0x627c>
 80060c0: f3c3 1100    	ubfx	r1, r3, #0x4, #0x1
 80060c4: 7011         	strb	r1, [r2]
 80060c6: f3c3 1140    	ubfx	r1, r3, #0x5, #0x1
 80060ca: 7001         	strb	r1, [r0]
 80060cc: 496c         	ldr	r1, [pc, #0x1b0]        @ 0x8006280 <firmware_image+0x6280>
 80060ce: 0998         	lsrs	r0, r3, #0x6
 80060d0: 7008         	strb	r0, [r1]
 80060d2: e8bd 9ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
 80060d6: b90c         	cbnz	r4, 0x80060dc <firmware_image+0x60dc> @ imm = #0x2
 80060d8: 486a         	ldr	r0, [pc, #0x1a8]        @ 0x8006284 <firmware_image+0x6284>
 80060da: 7002         	strb	r2, [r0]
 80060dc: f88a 6001    	strb.w	r6, [r10, #0x1]
 80060e0: f88a 6002    	strb.w	r6, [r10, #0x2]
 80060e4: f88a 1003    	strb.w	r1, [r10, #0x3]
 80060e8: e7d1         	b	0x800608e <firmware_image+0x608e> @ imm = #-0x5e
 80060ea: e014         	b	0x8006116 <firmware_image+0x6116> @ imm = #0x28
 80060ec: b90c         	cbnz	r4, 0x80060f2 <firmware_image+0x60f2> @ imm = #0x2
 80060ee: 4866         	ldr	r0, [pc, #0x198]        @ 0x8006288 <firmware_image+0x6288>
 80060f0: 7002         	strb	r2, [r0]
 80060f2: f88a 6001    	strb.w	r6, [r10, #0x1]
 80060f6: f88a 6002    	strb.w	r6, [r10, #0x2]
 80060fa: f88a 1003    	strb.w	r1, [r10, #0x3]
 80060fe: e7c6         	b	0x800608e <firmware_image+0x608e> @ imm = #-0x74
 8006100: f88a 1003    	strb.w	r1, [r10, #0x3]
 8006104: e7c3         	b	0x800608e <firmware_image+0x608e> @ imm = #-0x7a
 8006106: b90c         	cbnz	r4, 0x800610c <firmware_image+0x610c> @ imm = #0x2
 8006108: 4860         	ldr	r0, [pc, #0x180]        @ 0x800628c <firmware_image+0x628c>
 800610a: 7002         	strb	r2, [r0]
 800610c: f88a 6001    	strb.w	r6, [r10, #0x1]
 8006110: f88a 1003    	strb.w	r1, [r10, #0x3]
 8006114: e7bb         	b	0x800608e <firmware_image+0x608e> @ imm = #-0x8a
 8006116: f8ba e008    	ldrh.w	lr, [r10, #0x8]
 800611a: f10e 0e01    	add.w	lr, lr, #0x1
 800611e: f8aa e008    	strh.w	lr, [r10, #0x8]
 8006122: f8df e16c    	ldr.w	lr, [pc, #0x16c]        @ 0x8006290 <firmware_image+0x6290>
 8006126: f8ae b000    	strh.w	r11, [lr]
 800612a: f8df b168    	ldr.w	r11, [pc, #0x168]       @ 0x8006294 <firmware_image+0x6294>
 800612e: f8ab 7000    	strh.w	r7, [r11]
 8006132: 4f43         	ldr	r7, [pc, #0x10c]        @ 0x8006240 <firmware_image+0x6240>
 8006134: f8a7 8000    	strh.w	r8, [r7]
 8006138: ea4f 270c    	lsl.w	r7, r12, #0x8
 800613c: b2db         	uxtb	r3, r3
 800613e: 443b         	add	r3, r7
 8006140: 4f40         	ldr	r7, [pc, #0x100]        @ 0x8006244 <firmware_image+0x6244>
 8006142: 803b         	strh	r3, [r7]
 8006144: 4b54         	ldr	r3, [pc, #0x150]        @ 0x8006298 <firmware_image+0x6298>
 8006146: 701c         	strb	r4, [r3]
 8006148: 4b54         	ldr	r3, [pc, #0x150]        @ 0x800629c <firmware_image+0x629c>
 800614a: 701d         	strb	r5, [r3]
 800614c: ea4f 2309    	lsl.w	r3, r9, #0x8
 8006150: b2f6         	uxtb	r6, r6
 8006152: 4433         	add	r3, r6
 8006154: 4e3e         	ldr	r6, [pc, #0xf8]         @ 0x8006250 <firmware_image+0x6250>
 8006156: 8033         	strh	r3, [r6]
 8006158: 7b80         	ldrb	r0, [r0, #0xe]
 800615a: 4e41         	ldr	r6, [pc, #0x104]        @ 0x8006260 <firmware_image+0x6260>
 800615c: f000 0303    	and	r3, r0, #0x3
 8006160: 7033         	strb	r3, [r6]
 8006162: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x80062a0 <firmware_image+0x62a0>
 8006164: 09c0         	lsrs	r0, r0, #0x7
 8006166: 7018         	strb	r0, [r3]
 8006168: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x80062a4 <firmware_image+0x62a4>
 800616a: b100         	cbz	r0, 0x800616e <firmware_image+0x616e> @ imm = #0x0
 800616c: 7019         	strb	r1, [r3]
 800616e: 4f4e         	ldr	r7, [pc, #0x138]        @ 0x80062a8 <firmware_image+0x62a8>
 8006170: 7038         	strb	r0, [r7]
 8006172: f004 0001    	and	r0, r4, #0x1
 8006176: b108         	cbz	r0, 0x800617c <firmware_image+0x617c> @ imm = #0x2
 8006178: 484c         	ldr	r0, [pc, #0x130]        @ 0x80062ac <firmware_image+0x62ac>
 800617a: 7002         	strb	r2, [r0]
 800617c: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x80062b0 <firmware_image+0x62b0>
 800617e: f3c4 0040    	ubfx	r0, r4, #0x1, #0x1
 8006182: 7010         	strb	r0, [r2]
 8006184: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x80062b4 <firmware_image+0x62b4>
 8006186: f3c4 0080    	ubfx	r0, r4, #0x2, #0x1
 800618a: 7010         	strb	r0, [r2]
 800618c: f3c4 00c0    	ubfx	r0, r4, #0x3, #0x1
 8006190: 4a49         	ldr	r2, [pc, #0x124]        @ 0x80062b8 <firmware_image+0x62b8>
 8006192: 8010         	strh	r0, [r2]
 8006194: f8df c124    	ldr.w	r12, [pc, #0x124]       @ 0x80062bc <firmware_image+0x62bc>
 8006198: 4a49         	ldr	r2, [pc, #0x124]        @ 0x80062c0 <firmware_image+0x62c0>
 800619a: 2707         	movs	r7, #0x7
 800619c: f9bc 8000    	ldrsh.w	r8, [r12]
 80061a0: 8812         	ldrh	r2, [r2]
 80061a2: 4580         	cmp	r8, r0
 80061a4: d006         	beq	0x80061b4 <firmware_image+0x61b4> @ imm = #0xc
 80061a6: 7019         	strb	r1, [r3]
 80061a8: 2a02         	cmp	r2, #0x2
 80061aa: d903         	bls	0x80061b4 <firmware_image+0x61b4> @ imm = #0x6
 80061ac: f88a 7001    	strb.w	r7, [r10, #0x1]
 80061b0: f88a 7002    	strb.w	r7, [r10, #0x2]
 80061b4: f8ac 0000    	strh.w	r0, [r12]
 80061b8: f3c5 1040    	ubfx	r0, r5, #0x5, #0x1
 80061bc: f8df c104    	ldr.w	r12, [pc, #0x104]       @ 0x80062c4 <firmware_image+0x62c4>
 80061c0: f8ac 0000    	strh.w	r0, [r12]
 80061c4: f8df c100    	ldr.w	r12, [pc, #0x100]       @ 0x80062c8 <firmware_image+0x62c8>
 80061c8: f9bc 8000    	ldrsh.w	r8, [r12]
 80061cc: 4580         	cmp	r8, r0
 80061ce: d00b         	beq	0x80061e8 <firmware_image+0x61e8> @ imm = #0x16
 80061d0: 7019         	strb	r1, [r3]
 80061d2: 2a02         	cmp	r2, #0x2
 80061d4: d908         	bls	0x80061e8 <firmware_image+0x61e8> @ imm = #0x10
 80061d6: 2801         	cmp	r0, #0x1
 80061d8: d002         	beq	0x80061e0 <firmware_image+0x61e0> @ imm = #0x4
 80061da: f88a 7001    	strb.w	r7, [r10, #0x1]
 80061de: e003         	b	0x80061e8 <firmware_image+0x61e8> @ imm = #0x6
 80061e0: 491e         	ldr	r1, [pc, #0x78]         @ 0x800625c <firmware_image+0x625c>
 80061e2: f44f 72fa    	mov.w	r2, #0x1f4
 80061e6: 800a         	strh	r2, [r1]
 80061e8: f8ac 0000    	strh.w	r0, [r12]
 80061ec: f3c4 1001    	ubfx	r0, r4, #0x4, #0x2
 80061f0: 7030         	strb	r0, [r6]
 80061f2: 4936         	ldr	r1, [pc, #0xd8]         @ 0x80062cc <firmware_image+0x62cc>
 80061f4: f3c4 1080    	ubfx	r0, r4, #0x6, #0x1
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
 8006214: 4931         	ldr	r1, [pc, #0xc4]         @ 0x80062dc <firmware_image+0x62dc>
 8006216: f3c5 00c0    	ubfx	r0, r5, #0x3, #0x1
 800621a: 7008         	strb	r0, [r1]
 800621c: 4930         	ldr	r1, [pc, #0xc0]         @ 0x80062e0 <firmware_image+0x62e0>
 800621e: f3c5 1000    	ubfx	r0, r5, #0x4, #0x1
 8006222: 7008         	strb	r0, [r1]
 8006224: 492f         	ldr	r1, [pc, #0xbc]         @ 0x80062e4 <firmware_image+0x62e4>
 8006226: 09a8         	lsrs	r0, r5, #0x6
 8006228: 7008         	strb	r0, [r1]
 800622a: e8bd 5ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 800622e: f7ff b81f    	b.w	0x8005270 <firmware_image+0x5270> @ imm = #-0xfc2
 8006232: 0000         	movs	r0, r0
 8006234: 021e         	lsls	r6, r3, #0x8
 8006236: 2000         	movs	r0, #0x0
 8006238: 0478         	lsls	r0, r7, #0x11
 800623a: 2000         	movs	r0, #0x0
 800623c: 00a4         	lsls	r4, r4, #0x2
 800623e: 2000         	movs	r0, #0x0
 8006240: 0134         	lsls	r4, r6, #0x4
 8006242: 2000         	movs	r0, #0x0
 8006244: 0072         	lsls	r2, r6, #0x1
 8006246: 2000         	movs	r0, #0x0
 8006248: 0071         	lsls	r1, r6, #0x1
 800624a: 2000         	movs	r0, #0x0
 800624c: 009c         	lsls	r4, r3, #0x2
 800624e: 2000         	movs	r0, #0x0
 8006250: 0143         	lsls	r3, r0, #0x5
 8006252: 2000         	movs	r0, #0x0
 8006254: 016e         	lsls	r6, r5, #0x5
 8006256: 2000         	movs	r0, #0x0
 8006258: 003e         	movs	r6, r7
 800625a: 2000         	movs	r0, #0x0
 800625c: 0142         	lsls	r2, r0, #0x5
 800625e: 2000         	movs	r0, #0x0
 8006260: 0169         	lsls	r1, r5, #0x5
 8006262: 2000         	movs	r0, #0x0
 8006264: 0195         	lsls	r5, r2, #0x6
 8006266: 2000         	movs	r0, #0x0
 8006268: 0074         	lsls	r4, r6, #0x1
 800626a: 2000         	movs	r0, #0x0
 800626c: 0076         	lsls	r6, r6, #0x1
 800626e: 2000         	movs	r0, #0x0
 8006270: 007c         	lsls	r4, r7, #0x1
 8006272: 2000         	movs	r0, #0x0
 8006274: 0078         	lsls	r0, r7, #0x1
 8006276: 2000         	movs	r0, #0x0
 8006278: 007a         	lsls	r2, r7, #0x1
 800627a: 2000         	movs	r0, #0x0
 800627c: 007f         	lsls	r7, r7, #0x1
 800627e: 2000         	movs	r0, #0x0
 8006280: 0132         	lsls	r2, r6, #0x4
 8006282: 2000         	movs	r0, #0x0
 8006284: 0149         	lsls	r1, r1, #0x5
 8006286: 2000         	movs	r0, #0x0
 8006288: 0131         	lsls	r1, r6, #0x4
 800628a: 2000         	movs	r0, #0x0
 800628c: 0084         	lsls	r4, r0, #0x2
 800628e: 2000         	movs	r0, #0x0
 8006290: 003c         	movs	r4, r7
 8006292: 2000         	movs	r0, #0x0
 8006294: 0070         	lsls	r0, r6, #0x1
 8006296: 2000         	movs	r0, #0x0
 8006298: 006f         	lsls	r7, r5, #0x1
 800629a: 2000         	movs	r0, #0x0
 800629c: 0067         	lsls	r7, r4, #0x1
 800629e: 2000         	movs	r0, #0x0
 80062a0: 006c         	lsls	r4, r5, #0x1
 80062a2: 2000         	movs	r0, #0x0
 80062a4: 0130         	lsls	r0, r6, #0x4
 80062a6: 2000         	movs	r0, #0x0
 80062a8: 0153         	lsls	r3, r2, #0x5
 80062aa: 2000         	movs	r0, #0x0
 80062ac: 0148         	lsls	r0, r1, #0x5
 80062ae: 2000         	movs	r0, #0x0
 80062b0: 0168         	lsls	r0, r5, #0x5
 80062b2: 2000         	movs	r0, #0x0
 80062b4: 008a         	lsls	r2, r1, #0x2
 80062b6: 2000         	movs	r0, #0x0
 80062b8: 012c         	lsls	r4, r5, #0x4
 80062ba: 2000         	movs	r0, #0x0
 80062bc: 0004         	movs	r4, r0
 80062be: 2000         	movs	r0, #0x0
 80062c0: 008c         	lsls	r4, r1, #0x2
 80062c2: 2000         	movs	r0, #0x0
 80062c4: 012e         	lsls	r6, r5, #0x4
 80062c6: 2000         	movs	r0, #0x0
 80062c8: 0196         	lsls	r6, r2, #0x6
 80062ca: 2000         	movs	r0, #0x0
 80062cc: 0152         	lsls	r2, r2, #0x5
 80062ce: 2000         	movs	r0, #0x0
 80062d0: 0073         	lsls	r3, r6, #0x1
 80062d2: 2000         	movs	r0, #0x0
 80062d4: 0075         	lsls	r5, r6, #0x1
 80062d6: 2000         	movs	r0, #0x0
 80062d8: 007b         	lsls	r3, r7, #0x1
 80062da: 2000         	movs	r0, #0x0
 80062dc: 0077         	lsls	r7, r6, #0x1
 80062de: 2000         	movs	r0, #0x0
 80062e0: 0079         	lsls	r1, r7, #0x1
 80062e2: 2000         	movs	r0, #0x0
 80062e4: 007e         	lsls	r6, r7, #0x1
 80062e6: 2000         	movs	r0, #0x0
 80062e8: 0049         	lsls	r1, r1, #0x1
 80062ea: ea50 20c1    	orrs.w	r0, r0, r1, lsl #11
 80062ee: bf18         	it	ne
 80062f0: 2004         	movne	r0, #0x4
 80062f2: 0d4a         	lsrs	r2, r1, #0x15
 80062f4: bf18         	it	ne
 80062f6: f040 0001    	orrne	r0, r0, #0x1
 80062fa: f240 72ff    	movw	r2, #0x7ff
 80062fe: ebb2 5f51    	cmp.w	r2, r1, lsr #21
 8006302: bf08         	it	eq
 8006304: f040 0002    	orreq	r0, r0, #0x2
 8006308: 2801         	cmp	r0, #0x1
 800630a: bf08         	it	eq
 800630c: 2005         	moveq	r0, #0x5
 800630e: 4770         	bx	lr
 8006310: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8006314: 1e4f         	subs	r7, r1, #0x1
 8006316: eb00 01c7    	add.w	r1, r0, r7, lsl #3
 800631a: 4604         	mov	r4, r0
 800631c: e9d1 0100    	ldrd	r0, r1, [r1]
 8006320: 4615         	mov	r5, r2
 8006322: 461e         	mov	r6, r3
 8006324: f037 0206    	bics	r2, r7, #0x6
 8006328: d00d         	beq	0x8006346 <firmware_image+0x6346> @ imm = #0x1a
 800632a: 462a         	mov	r2, r5
 800632c: 4633         	mov	r3, r6
 800632e: f7fa f8aa    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x5eac
 8006332: 1e7f         	subs	r7, r7, #0x1
 8006334: eb04 03c7    	add.w	r3, r4, r7, lsl #3
 8006338: e9d3 2300    	ldrd	r2, r3, [r3]
 800633c: f7f9 fffc    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x6008
 8006340: f037 0206    	bics	r2, r7, #0x6
 8006344: d1f1         	bne	0x800632a <firmware_image+0x632a> @ imm = #-0x1e
 8006346: 2f02         	cmp	r7, #0x2
 8006348: d025         	beq	0x8006396 <firmware_image+0x6396> @ imm = #0x4a
 800634a: 2f04         	cmp	r7, #0x4
 800634c: d013         	beq	0x8006376 <firmware_image+0x6376> @ imm = #0x26
 800634e: 2f06         	cmp	r7, #0x6
 8006350: bf18         	it	ne
 8006352: e8bd 81f0    	popne.w	{r4, r5, r6, r7, r8, pc}
 8006356: 462a         	mov	r2, r5
 8006358: 4633         	mov	r3, r6
 800635a: f7fa f894    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x5ed8
 800635e: e9d4 230a    	ldrd	r2, r3, [r4, #40]
 8006362: f7f9 ffe9    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x602e
 8006366: 462a         	mov	r2, r5
 8006368: 4633         	mov	r3, r6
 800636a: f7fa f88c    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x5ee8
 800636e: e9d4 2308    	ldrd	r2, r3, [r4, #32]
 8006372: f7f9 ffe1    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x603e
 8006376: 462a         	mov	r2, r5
 8006378: f884 e9d4    	strb.w	lr, [r4, #0x9d4]
 800637c: 2306         	movs	r3, #0x6
 800637e: f7f9 ffd9    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x604e
 8006382: 462a         	mov	r2, r5
 8006384: 4633         	mov	r3, r6
 8006386: f7fa f87c    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5f08
 800638a: e9d4 2304    	ldrd	r2, r3, [r4, #16]
 800638e: f7f9 ffd1    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x605e
 8006392: 462a         	mov	r2, r5
 8006394: 4633         	mov	r3, r6
 8006396: f7fa f874    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5f18
 800639a: e9d4 2302    	ldrd	r2, r3, [r4, #8]
 800639e: f7f9 ffc9    	bl	0x8000334 <firmware_image+0x334> @ imm = #-0x606e
 80063a2: 462a         	mov	r2, r5
 80063a4: 4633         	mov	r3, r6
 80063a6: f7fa f86c    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x5f28
 80063aa: e9d4 2300    	ldrd	r2, r3, [r4]
 80063ae: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80063b2: f7f9 bfbf    	b.w	0x8000334 <firmware_image+0x334> @ imm = #-0x6082
 80063b6: 2201         	movs	r2, #0x1
 80063b8: f7fa baa3    	b.w	0x8000902 <firmware_image+0x902> @ imm = #-0x5aba
 80063bc: f7f9 bfba    	b.w	0x8000334 <firmware_image+0x334> @ imm = #-0x608c
 80063c0: 2200         	movs	r2, #0x0
 80063c2: 4613         	mov	r3, r2
 80063c4: 4610         	mov	r0, r2
 80063c6: 4611         	mov	r1, r2
 80063c8: f7fa b8cd    	b.w	0x8000566 <firmware_image+0x566> @ imm = #-0x5e66
 80063cc: 4a02         	ldr	r2, [pc, #0x8]          @ 0x80063d8 <firmware_image+0x63d8>
 80063ce: 2000         	movs	r0, #0x0
 80063d0: 0711         	lsls	r1, r2, #0x1c
 80063d2: f7fa ba96    	b.w	0x8000902 <firmware_image+0x902> @ imm = #-0x5ad4
 80063d6: 0000         	movs	r0, r0
 80063d8: fd01 ffff    	stc2	p15, c15, [r1, #-1020]
 80063dc: e002         	b	0x80063e4 <firmware_image+0x63e4> @ imm = #0x4
 80063de: c808         	ldm	r0!, {r3}
 80063e0: 1f12         	subs	r2, r2, #0x4
 80063e2: c108         	stm	r1!, {r3}
 80063e4: 2a00         	cmp	r2, #0x0
 80063e6: d1fa         	bne	0x80063de <firmware_image+0x63de> @ imm = #-0xc
 80063e8: 4770         	bx	lr
 80063ea: 4770         	bx	lr
 80063ec: 2000         	movs	r0, #0x0
 80063ee: e001         	b	0x80063f4 <firmware_image+0x63f4> @ imm = #0x2
 80063f0: c101         	stm	r1!, {r0}
 80063f2: 1f12         	subs	r2, r2, #0x4
 80063f4: 2a00         	cmp	r2, #0x0
 80063f6: d1fb         	bne	0x80063f0 <firmware_image+0x63f0> @ imm = #-0xa
 80063f8: 4770         	bx	lr
 80063fa: 0000         	movs	r0, r0
 80063fc: 4901         	ldr	r1, [pc, #0x4]          @ 0x8006404 <firmware_image+0x6404>
 80063fe: 6008         	str	r0, [r1]
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
 8006420: b200         	sxth	r0, r0
 8006422: 4770         	bx	lr
 8006424: 2800         	cmp	r0, #0x0
 8006426: da00         	bge	0x800642a <firmware_image+0x642a> @ imm = #0x0
 8006428: 4240         	rsbs	r0, r0, #0
 800642a: 4770         	bx	lr
 800642c: e92d 4df0    	push.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006430: 4f8d         	ldr	r7, [pc, #0x234]        @ 0x8006668 <firmware_image+0x6668>
 8006432: f021 4a00    	bic	r10, r1, #0x80000000
 8006436: b086         	sub	sp, #0x18
 8006438: 4605         	mov	r5, r0
 800643a: 460c         	mov	r4, r1
 800643c: 45ba         	cmp	r10, r7
 800643e: db2a         	blt	0x8006496 <firmware_image+0x6496> @ imm = #0x54
 8006440: ebaa 0007    	sub.w	r0, r10, r7
 8006444: 4328         	orrs	r0, r5
 8006446: d00a         	beq	0x800645e <firmware_image+0x645e> @ imm = #0x14
 8006448: 4888         	ldr	r0, [pc, #0x220]        @ 0x800666c <firmware_image+0x666c>
 800644a: 4582         	cmp	r10, r0
 800644c: dc01         	bgt	0x8006452 <firmware_image+0x6452> @ imm = #0x2
 800644e: d11a         	bne	0x8006486 <firmware_image+0x6486> @ imm = #0x34
 8006450: b1cd         	cbz	r5, 0x8006486 <firmware_image+0x6486> @ imm = #0x32
 8006452: b006         	add	sp, #0x18
 8006454: 4628         	mov	r0, r5
 8006456: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800645a: f7ff bfb0    	b.w	0x80063be <firmware_image+0x63be> @ imm = #-0xa0
 800645e: 4a84         	ldr	r2, [pc, #0x210]        @ 0x8006670 <firmware_image+0x6670>
 8006460: 4b84         	ldr	r3, [pc, #0x210]        @ 0x8006674 <firmware_image+0x6674>
 8006462: 4628         	mov	r0, r5
 8006464: f7fa f811    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5fde
 8006468: 4607         	mov	r7, r0
 800646a: 460e         	mov	r6, r1
 800646c: 4a82         	ldr	r2, [pc, #0x208]        @ 0x8006678 <firmware_image+0x6678>
 800646e: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x800667c <firmware_image+0x667c>
 8006470: 4628         	mov	r0, r5
 8006472: 4621         	mov	r1, r4
 8006474: f7fa f809    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5fee
 8006478: b006         	add	sp, #0x18
 800647a: 463a         	mov	r2, r7
 800647c: 4633         	mov	r3, r6
 800647e: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006482: f7f9 bf5b    	b.w	0x800033c <firmware_image+0x33c> @ imm = #-0x614a
 8006486: 2001         	movs	r0, #0x1
 8006488: f7ff ffbc    	bl	0x8006404 <firmware_image+0x6404> @ imm = #-0x88
 800648c: b006         	add	sp, #0x18
 800648e: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006492: f7ff bf99    	b.w	0x80063c8 <firmware_image+0x63c8> @ imm = #-0xce
 8006496: 487a         	ldr	r0, [pc, #0x1e8]        @ 0x8006680 <firmware_image+0x6680>
 8006498: 4582         	cmp	r10, r0
 800649a: da42         	bge	0x8006522 <firmware_image+0x6522> @ imm = #0x84
 800649c: f1ba 5f79    	cmp.w	r10, #0x3e400000
 80064a0: da0b         	bge	0x80064ba <firmware_image+0x64ba> @ imm = #0x16
 80064a2: 4628         	mov	r0, r5
 80064a4: f7ff ff22    	bl	0x80062ec <firmware_image+0x62ec> @ imm = #-0x1bc
 80064a8: 2804         	cmp	r0, #0x4
 80064aa: bf08         	it	eq
 80064ac: f7ff ff92    	bleq	0x80063d4 <firmware_image+0x63d4> @ imm = #-0xdc
 80064b0: 4628         	mov	r0, r5
 80064b2: b006         	add	sp, #0x18
 80064b4: 4621         	mov	r1, r4
 80064b6: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80064ba: 462a         	mov	r2, r5
 80064bc: 460b         	mov	r3, r1
 80064be: 4610         	mov	r0, r2
 80064c0: f7f9 ffe3    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x603a
 80064c4: 4683         	mov	r11, r0
 80064c6: 4602         	mov	r2, r0
 80064c8: 486e         	ldr	r0, [pc, #0x1b8]        @ 0x8006684 <firmware_image+0x6684>
 80064ca: 460e         	mov	r6, r1
 80064cc: 460b         	mov	r3, r1
 80064ce: 2106         	movs	r1, #0x6
 80064d0: 4478         	add	r0, pc
 80064d2: f7ff ff1f    	bl	0x8006314 <firmware_image+0x6314> @ imm = #-0x1c2
 80064d6: 465a         	mov	r2, r11
 80064d8: 4633         	mov	r3, r6
 80064da: f7f9 ffd6    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x6054
 80064de: 4680         	mov	r8, r0
 80064e0: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x8006688 <firmware_image+0x6688>
 80064e2: 468a         	mov	r10, r1
 80064e4: 465a         	mov	r2, r11
 80064e6: 4633         	mov	r3, r6
 80064e8: 2104         	movs	r1, #0x4
 80064ea: 4478         	add	r0, pc
 80064ec: f7ff ff12    	bl	0x8006314 <firmware_image+0x6314> @ imm = #-0x1dc
 80064f0: 465a         	mov	r2, r11
 80064f2: 4633         	mov	r3, r6
 80064f4: f7f9 ffc9    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x606e
 80064f8: f7f9 ff1e    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x61c4
 80064fc: 4602         	mov	r2, r0
 80064fe: 460b         	mov	r3, r1
 8006500: 4640         	mov	r0, r8
 8006502: 4651         	mov	r1, r10
 8006504: f7fa f831    	bl	0x800056a <firmware_image+0x56a> @ imm = #-0x5f9e
 8006508: 462a         	mov	r2, r5
 800650a: 4623         	mov	r3, r4
 800650c: f7f9 ffbb    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x608a
 8006510: b006         	add	sp, #0x18
 8006512: 462a         	mov	r2, r5
 8006514: 4623         	mov	r3, r4
 8006516: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800651a: f7f9 bf0d    	b.w	0x8000338 <firmware_image+0x338> @ imm = #-0x61e6
 800651e: 4628         	mov	r0, r5
 8006520: f024 4100    	bic	r1, r4, #0x80000000
 8006524: 2200         	movs	r2, #0x0
 8006526: 463d         	mov	r5, r7
 8006528: 463b         	mov	r3, r7
 800652a: f7f9 ffa9    	bl	0x8000480 <firmware_image+0x480> @ imm = #-0x60ae
 800652e: f04f 32ff    	mov.w	r2, #0xffffffff
 8006532: f7fa f9e8    	bl	0x8000906 <firmware_image+0x906> @ imm = #-0x5c30
 8006536: 4606         	mov	r6, r0
 8006538: 4602         	mov	r2, r0
 800653a: 4853         	ldr	r0, [pc, #0x14c]        @ 0x8006688 <firmware_image+0x6688>
 800653c: 460f         	mov	r7, r1
 800653e: 460b         	mov	r3, r1
 8006540: 2106         	movs	r1, #0x6
 8006542: 4478         	add	r0, pc
 8006544: f7ff fee4    	bl	0x8006310 <firmware_image+0x6310> @ imm = #-0x238
 8006548: 4632         	mov	r2, r6
 800654a: 463b         	mov	r3, r7
 800654c: f7f9 ff9b    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x60ca
 8006550: e9cd 0100    	strd	r0, r1, [sp]
 8006554: 484d         	ldr	r0, [pc, #0x134]        @ 0x800668c <firmware_image+0x668c>
 8006556: 4632         	mov	r2, r6
 8006558: 463b         	mov	r3, r7
 800655a: 2104         	movs	r1, #0x4
 800655c: 4478         	add	r0, pc
 800655e: f7ff fed7    	bl	0x8006310 <firmware_image+0x6310> @ imm = #-0x252
 8006562: 4632         	mov	r2, r6
 8006564: 463b         	mov	r3, r7
 8006566: f7f9 ff8e    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x60e4
 800656a: 2200         	movs	r2, #0x0
 800656c: 462b         	mov	r3, r5
 800656e: f7f9 fee3    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x623a
 8006572: 4683         	mov	r11, r0
 8006574: 9102         	str	r1, [sp, #0x8]
 8006576: 4630         	mov	r0, r6
 8006578: 4639         	mov	r1, r7
 800657a: f000 fce1    	bl	0x8006f40 <firmware_image+0x6f40> @ imm = #0x9c2
 800657e: 4680         	mov	r8, r0
 8006580: 4843         	ldr	r0, [pc, #0x10c]        @ 0x8006690 <firmware_image+0x6690>
 8006582: 460d         	mov	r5, r1
 8006584: 4550         	cmp	r0, r10
 8006586: dc17         	bgt	0x80065b8 <firmware_image+0x65b8> @ imm = #0x2e
 8006588: e9dd 0100    	ldrd	r0, r1, [sp]
 800658c: 465a         	mov	r2, r11
 800658e: 9b02         	ldr	r3, [sp, #0x8]
 8006590: f7f9 ffeb    	bl	0x800056a <firmware_image+0x56a> @ imm = #-0x602a
 8006594: 4642         	mov	r2, r8
 8006596: 462b         	mov	r3, r5
 8006598: f7f9 ff75    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x6116
 800659c: 4642         	mov	r2, r8
 800659e: 462b         	mov	r3, r5
 80065a0: f7f9 feca    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x626c
 80065a4: 2201         	movs	r2, #0x1
 80065a6: f7fa f9ae    	bl	0x8000906 <firmware_image+0x906> @ imm = #-0x5ca4
 80065aa: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x800666c <firmware_image+0x666c>
 80065ac: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x8006670 <firmware_image+0x6670>
 80065ae: f7f9 ff64    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x6138
 80065b2: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x8006674 <firmware_image+0x6674>
 80065b4: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x8006678 <firmware_image+0x6678>
 80065b6: e04c         	b	0x8006652 <firmware_image+0x6652> @ imm = #0x98
 80065b8: f04f 0a00    	mov.w	r10, #0x0
 80065bc: 4652         	mov	r2, r10
 80065be: 460b         	mov	r3, r1
 80065c0: 4640         	mov	r0, r8
 80065c2: f7f9 feb9    	bl	0x8000338 <firmware_image+0x338> @ imm = #-0x628e
 80065c6: e9cd 1003    	strd	r1, r0, [sp, #12]
 80065ca: 4652         	mov	r2, r10
 80065cc: 462b         	mov	r3, r5
 80065ce: 4610         	mov	r0, r2
 80065d0: 4619         	mov	r1, r3
 80065d2: f7f9 ff58    	bl	0x8000486 <firmware_image+0x486> @ imm = #-0x6150
 80065d6: 4632         	mov	r2, r6
 80065d8: ff51 e9dd    	<unknown>
 80065dc: 3203         	adds	r2, #0x3
 80065de: f7f9 ffc2    	bl	0x8000566 <firmware_image+0x566> @ imm = #-0x607c
 80065e2: 4606         	mov	r6, r0
 80065e4: 460f         	mov	r7, r1
 80065e6: e9dd 0100    	ldrd	r0, r1, [sp]
 80065ea: 465a         	mov	r2, r11
 80065ec: 9b02         	ldr	r3, [sp, #0x8]
 80065ee: f7f9 ffba    	bl	0x8000566 <firmware_image+0x566> @ imm = #-0x608c
 80065f2: 4683         	mov	r11, r0
 80065f4: 9100         	str	r1, [sp]
 80065f6: 2201         	movs	r2, #0x1
 80065f8: 4630         	mov	r0, r6
 80065fa: 4639         	mov	r1, r7
 80065fc: f7fa f981    	bl	0x8000902 <firmware_image+0x902> @ imm = #-0x5cfe
 8006600: 4a19         	ldr	r2, [pc, #0x64]         @ 0x8006668 <firmware_image+0x6668>
 8006602: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x800666c <firmware_image+0x666c>
 8006604: f7f9 ff3a    	bl	0x800047c <firmware_image+0x47c> @ imm = #-0x618c
 8006608: 4606         	mov	r6, r0
 800660a: 460f         	mov	r7, r1
 800660c: 2201         	movs	r2, #0x1
 800660e: 4640         	mov	r0, r8
 8006610: 4629         	mov	r1, r5
 8006612: f7fa f976    	bl	0x8000902 <firmware_image+0x902> @ imm = #-0x5d14
 8006616: 465a         	mov	r2, r11
 8006618: 9b00         	ldr	r3, [sp]
 800661a: f7f9 ff32    	bl	0x8000482 <firmware_image+0x482> @ imm = #-0x619c
 800661e: 4632         	mov	r2, r6
 8006620: 463b         	mov	r3, r7
 8006622: f7f9 ff28    	bl	0x8000476 <firmware_image+0x476> @ imm = #-0x61b0
 8006626: 4606         	mov	r6, r0
 8006628: 460f         	mov	r7, r1
 800662a: 2201         	movs	r2, #0x1
 800662c: 4650         	mov	r0, r10
 800662e: 4629         	mov	r1, r5
 8006630: f7fa f967    	bl	0x8000902 <firmware_image+0x902> @ imm = #-0x5d32
 8006634: 4d0e         	ldr	r5, [pc, #0x38]         @ 0x8006670 <firmware_image+0x6670>
 8006636: f8df 8058    	ldr.w	r8, [pc, #0x58]         @ 0x8006690 <firmware_image+0x6690>
 800663a: 462a         	mov	r2, r5
 800663c: 4643         	mov	r3, r8
 800663e: f7f9 ff1d    	bl	0x800047c <firmware_image+0x47c> @ imm = #-0x61c6
 8006642: 4632         	mov	r2, r6
 8006644: ff19 462a    	<unknown>
 8006648: 4643         	mov	r3, r8
 800664a: f7f9 ff15    	bl	0x8000478 <firmware_image+0x478> @ imm = #-0x61d6
 800664e: 2c00         	cmp	r4, #0x0
 8006650: bfd8         	it	le
 8006652: f081 4100    	eorle	r1, r1, #0x80000000
 8006656: b006         	add	sp, #0x18
 8006658: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 800665c: 0000         	movs	r0, r0
 800665e: 3ff0         	subs	r7, #0xf0
 8006660: 0000         	movs	r0, r0
 8006662: 7ff0         	ldrb	r0, [r6, #0x1f]
 8006664: 5c07         	ldrb	r7, [r0, r0]
 8006666: 3314         	adds	r3, #0x14
 8006668: a626         	adr	r6, #152 <firmware_image+0x6692>
 800666a: 3c91         	subs	r4, #0x91
 800666c: 2d18         	cmp	r5, #0x18
 800666e: 5444         	strb	r4, [r0, r1]
 8006670: 21fb         	movs	r1, #0xfb
 8006672: 3ff9         	subs	r7, #0xf9
 8006674: 0000         	movs	r0, r0
 8006676: 3fe0         	subs	r7, #0xe0
 8006678: 10d4         	asrs	r4, r2, #0x3
 800667a: 0000         	movs	r0, r0
 800667c: 10ea         	asrs	r2, r5, #0x3
 800667e: 0000         	movs	r0, r0
 8006680: 105e         	asrs	r6, r3, #0x1
 8006682: 0000         	movs	r0, r0
 8006684: 1074         	asrs	r4, r6, #0x1
 8006686: 0000         	movs	r0, r0
 8006688: 3333         	adds	r3, #0x33
 800668a: 3fef         	subs	r7, #0xef
 800668c: 21fb         	movs	r1, #0xfb
 800668e: 3fe9         	subs	r7, #0xe9
 8006690: e92d 4ff8    	push.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8006694: 4604         	mov	r4, r0
 8006696: 460d         	mov	r5, r1
 8006698: f021 4000    	bic	r0, r1, #0x80000000
 800669c: 9100         	str	r1, [sp]
 800669e: 4973         	ldr	r1, [pc, #0x1cc]        @ 0x800686c <firmware_image+0x686c>
 80066a0: 4281         	cmp	r1, r0
 80066a2: dc11         	bgt	0x80066c8 <firmware_image+0x66c8> @ imm = #0x22
 80066a4: 4972         	ldr	r1, [pc, #0x1c8]        @ 0x8006870 <firmware_image+0x6870>
 80066a6: 4288         	cmp	r0, r1
 80066a8: dc01         	bgt	0x80066ae <firmware_image+0x66ae> @ imm = #0x2
 80066aa: d106         	bne	0x80066ba <firmware_image+0x66ba> @ imm = #0xc
 80066ac: b12c         	cbz	r4, 0x80066ba <firmware_image+0x66ba> @ imm = #0xa
 80066ae: 4620         	mov	r0, r4
 80066b0: 4629         	mov	r1, r5
 80066b2: e8bd 4ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80066b6: f7ff be7c    	b.w	0x80063b2 <firmware_image+0x63b2> @ imm = #-0x308
 80066ba: 486e         	ldr	r0, [pc, #0x1b8]        @ 0x8006874 <firmware_image+0x6874>
 80066bc: 2d00         	cmp	r5, #0x0
 80066be: bfcc         	ite	gt
 80066c0: 496d         	ldrgt	r1, [pc, #0x1b4]        @ 0x8006878 <firmware_image+0x6878>
 80066c2: 496e         	ldrle	r1, [pc, #0x1b8]        @ 0x800687c <firmware_image+0x687c>
 80066c4: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80066c8: 496d         	ldr	r1, [pc, #0x1b4]        @ 0x8006880 <firmware_image+0x6880>
 80066ca: 4281         	cmp	r1, r0
 80066cc: dd11         	ble	0x80066f2 <firmware_image+0x66f2> @ imm = #0x22
 80066ce: 496d         	ldr	r1, [pc, #0x1b4]        @ 0x8006884 <firmware_image+0x6884>
 80066d0: 4281         	cmp	r1, r0
 80066d2: bfd8         	it	le
 80066d4: f04f 36ff    	movle.w	r6, #0xffffffff
 80066d8: dd6d         	ble	0x80067b6 <firmware_image+0x67b6> @ imm = #0xda
 80066da: 4620         	mov	r0, r4
 80066dc: 4629         	mov	r1, r5
 80066de: f7ff fdff    	bl	0x80062e0 <firmware_image+0x62e0> @ imm = #-0x402
 80066e2: 2804         	cmp	r0, #0x4
 80066e4: bf08         	it	eq
 80066e6: f7ff fe6f    	bleq	0x80063c8 <firmware_image+0x63c8> @ imm = #-0x322
 80066ea: 4620         	mov	r0, r4
 80066ec: 4629         	mov	r1, r5
 80066ee: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80066f2: 4965         	ldr	r1, [pc, #0x194]        @ 0x8006888 <firmware_image+0x6888>
 80066f4: 4f65         	ldr	r7, [pc, #0x194]        @ 0x800688c <firmware_image+0x688c>
 80066f6: f025 4500    	bic	r5, r5, #0x80000000
 80066fa: 4281         	cmp	r1, r0
 80066fc: dd33         	ble	0x8006766 <firmware_image+0x6766> @ imm = #0x66
 80066fe: 4964         	ldr	r1, [pc, #0x190]        @ 0x8006890 <firmware_image+0x6890>
 8006700: 4281         	cmp	r1, r0
 8006702: dd19         	ble	0x8006738 <firmware_image+0x6738> @ imm = #0x32
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
 8006776: f7f9 fe80    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x6300
 800677a: 2200         	movs	r2, #0x0
 800677c: 463b         	mov	r3, r7
 800677e: f7f9 fdd5    	bl	0x800032c <firmware_image+0x32c> @ imm = #-0x6456
 8006782: 4680         	mov	r8, r0
 8006784: 460f         	mov	r7, r1
 8006786: 2200         	movs	r2, #0x0
 8006788: 4653         	mov	r3, r10
 800678a: 4620         	mov	r0, r4
 800678c: 4629         	mov	r1, r5
 800678e: f7f9 fe6e    	bl	0x800046e <firmware_image+0x46e> @ imm = #-0x6324
 8006792: 4642         	mov	r2, r8
 8006794: 463b         	mov	r3, r7
 8006796: f7f9 fee2    	bl	0x800055e <firmware_image+0x55e> @ imm = #-0x623c
 800679a: 4604         	mov	r4, r0
 800679c: 460d         	mov	r5, r1
 800679e: e008         	b	0x80067b2 <firmware_image+0x67b2> @ imm = #0x10
 80067a0: 2603         	movs	r6, #0x3
 80067a2: 4622         	mov	r2, r4
 80067a4: 462b         	mov	r3, r5
 80067a6: 2000         	movs	r0, #0x0
 80067a8: 493b         	ldr	r1, [pc, #0xec]         @ 0x8006898 <firmware_image+0x6898>
 80067aa: f7f9 fed8    	bl	0x800055e <firmware_image+0x55e> @ imm = #-0x6250
 80067ae: 4604         	mov	r4, r0
 80067b0: 460d         	mov	r5, r1
 80067b2: 4622         	mov	r2, r4
 80067b4: 462b         	mov	r3, r5
 80067b6: 4610         	mov	r0, r2
 80067b8: 4619         	mov	r1, r3
 80067ba: f7f9 fe5e    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x6344
 80067be: 468b         	mov	r11, r1
 80067c0: 4682         	mov	r10, r0
 80067c2: 4602         	mov	r2, r0
 80067c4: 460b         	mov	r3, r1
 80067c6: f7f9 fe58    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x6350
 80067ca: 4607         	mov	r7, r0
 80067cc: 4602         	mov	r2, r0
 80067ce: 4833         	ldr	r0, [pc, #0xcc]         @ 0x800689c <firmware_image+0x689c>
 80067d0: 4688         	mov	r8, r1
 80067d2: 460b         	mov	r3, r1
 80067d4: 2106         	movs	r1, #0x6
 80067d6: 4478         	add	r0, pc
 80067d8: f7ff fd94    	bl	0x8006304 <firmware_image+0x6304> @ imm = #-0x4d8
 80067dc: 4652         	mov	r2, r10
 80067de: 465b         	mov	r3, r11
 80067e0: f7f9 fe4b    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x636a
 80067e4: 4682         	mov	r10, r0
 80067e6: 482e         	ldr	r0, [pc, #0xb8]         @ 0x80068a0 <firmware_image+0x68a0>
 80067e8: 468b         	mov	r11, r1
 80067ea: 463a         	mov	r2, r7
 80067ec: 4643         	mov	r3, r8
 80067ee: 2105         	movs	r1, #0x5
 80067f0: 4478         	add	r0, pc
 80067f2: f7ff fd87    	bl	0x8006304 <firmware_image+0x6304> @ imm = #-0x4f2
 80067f6: 463a         	mov	r2, r7
 80067f8: 4643         	mov	r3, r8
 80067fa: f7f9 fe3e    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x6384
 80067fe: 4602         	mov	r2, r0
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
 8006838: 4622         	mov	r2, r4
 800683a: 462b         	mov	r3, r5
 800683c: f7f9 fe25    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x63b6
 8006840: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x80068b4 <firmware_image+0x68b4>
 8006842: 447a         	add	r2, pc
 8006844: eb02 03c6    	add.w	r3, r2, r6, lsl #3
 8006848: e9d3 2300    	ldrd	r2, r3, [r3]
 800684c: f7f9 fe17    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x63d2
 8006850: 4622         	mov	r2, r4
 8006852: 462b         	mov	r3, r5
 8006854: f7f9 fe13    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x63da
 8006858: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x80068b8 <firmware_image+0x68b8>
 800685a: 447a         	add	r2, pc
 800685c: eb02 03c6    	add.w	r3, r2, r6, lsl #3
 8006860: e9d3 2300    	ldrd	r2, r3, [r3]
 8006864: f7f9 fe0e    	bl	0x8000484 <firmware_image+0x484> @ imm = #-0x63e4
 8006868: 9a00         	ldr	r2, [sp]
 800686a: 2a00         	cmp	r2, #0x0
 800686c: bfb8         	it	lt
 800686e: f081 4100    	eorlt	r1, r1, #0x80000000
 8006872: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8006876: 0000         	movs	r0, r0
 8006878: 0000         	movs	r0, r0
 800687a: 4410         	add	r0, r2
 800687c: 0000         	movs	r0, r0
 800687e: 7ff0         	ldrb	r0, [r6, #0x1f]
 8006880: 2d18         	cmp	r5, #0x18
 8006882: 5444         	strb	r4, [r0, r1]
 8006884: 21fb         	movs	r1, #0xfb
 8006886: 3ff9         	subs	r7, #0xf9
 8006888: 21fb         	movs	r1, #0xfb
 800688a: bff9         	itett	al                      @ unpredictable IT predicate sequence
 800688c: 0000         	movs	r0, r0
 800688e: 3fdc         	sub<und>	r7, #0xdc
 8006890: 0000         	movs	r0, r0
 8006892: 3e20         	sub	r6, #0x20
 8006894: 0000         	movs	r0, r0
 8006896: 3ff3         	subs	r7, #0xf3
 8006898: 0000         	movs	r0, r0
 800689a: 3ff0         	subs	r7, #0xf0
 800689c: 0000         	movs	r0, r0
 800689e: 3fe6         	subs	r7, #0xe6
 80068a0: 8000         	strh	r0, [r0]
 80068a2: 4003         	ands	r3, r0
 80068a4: 0000         	movs	r0, r0
 80068a6: 3ff8         	subs	r7, #0xf8
 80068a8: 0000         	movs	r0, r0
 80068aa: bff0         	hint	#0xf
 80068ac: 0e76         	lsrs	r6, r6, #0x19
 80068ae: 0000         	movs	r0, r0
 80068b0: 0e34         	lsrs	r4, r6, #0x18
 80068b2: 0000         	movs	r0, r0
 80068b4: 0dd2         	lsrs	r2, r2, #0x17
 80068b6: 0000         	movs	r0, r0
 80068b8: 0d9a         	lsrs	r2, r3, #0x16
 80068ba: 0000         	movs	r0, r0
 80068bc: e92d 4df0    	push.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 80068c0: 4694         	mov	r12, r2
 80068c2: f1cc 0400    	rsb.w	r4, r12, #0x0
 80068c6: f023 4600    	bic	r6, r3, #0x80000000
 80068ca: ea4c 0404    	orr.w	r4, r12, r4
 80068ce: 4f52         	ldr	r7, [pc, #0x148]        @ 0x8006a18 <firmware_image+0x6a18>
 80068d0: ea46 74d4    	orr.w	r4, r6, r4, lsr #31
 80068d4: 469a         	mov	r10, r3
 80068d6: 4688         	mov	r8, r1
 80068d8: f021 4200    	bic	r2, r1, #0x80000000
 80068dc: 42bc         	cmp	r4, r7
 80068de: d806         	bhi	0x80068ee <firmware_image+0x68ee> @ imm = #0xc
 80068e0: 4245         	rsbs	r5, r0, #0
 80068e2: ea40 0405    	orr.w	r4, r0, r5
 80068e6: ea42 74d4    	orr.w	r4, r2, r4, lsr #31
 80068ea: 42bc         	cmp	r4, r7
 80068ec: d904         	bls	0x80068f8 <firmware_image+0x68f8> @ imm = #0x8
 80068ee: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 80068f2: 4662         	mov	r2, r12
 80068f4: f7ff bd66    	b.w	0x80063c4 <firmware_image+0x63c4> @ imm = #-0x534
 80068f8: f1aa 5540    	sub.w	r5, r10, #0x30000000
 80068fc: f1a5 657f    	sub.w	r5, r5, #0xff00000
 8006900: ea55 040c    	orrs.w	r4, r5, r12
 8006904: d00b         	beq	0x800691e <firmware_image+0x691e> @ imm = #0x16
 8006906: 2402         	movs	r4, #0x2
 8006908: ea04 74aa    	and.w	r4, r4, r10, asr #30
 800690c: 4d43         	ldr	r5, [pc, #0x10c]        @ 0x8006a1c <firmware_image+0x6a1c>
 800690e: f8df e110    	ldr.w	lr, [pc, #0x110]        @ 0x8006a20 <firmware_image+0x6a20>
 8006912: ea44 74d8    	orr.w	r4, r4, r8, lsr #31
 8006916: ea52 0b00    	orrs.w	r11, r2, r0
 800691a: d004         	beq	0x8006926 <firmware_image+0x6926> @ imm = #0x8
 800691c: e00c         	b	0x8006938 <firmware_image+0x6938> @ imm = #0x18
 800691e: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006922: f7ff bebb    	b.w	0x800669c <firmware_image+0x669c> @ imm = #-0x28a
 8006926: 2c00         	cmp	r4, #0x0
 8006928: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
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
 80069c4: 4601         	movlt	r1, r0
 80069c6: db06         	blt	0x80069d6 <firmware_image+0x69d6> @ imm = #0xc
 80069c8: 4662         	mov	r2, r12
 80069ca: f7f9 fdce    	bl	0x800056a <firmware_image+0x56a> @ imm = #-0x6464
 80069ce: f021 4100    	bic	r1, r1, #0x80000000
 80069d2: f7ff fe61    	bl	0x8006698 <firmware_image+0x6698> @ imm = #-0x33e
 80069d6: 2c00         	cmp	r4, #0x0
 80069d8: bf08         	it	eq
 80069da: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069de: 2c01         	cmp	r4, #0x1
 80069e0: bf04         	itt	eq
 80069e2: f081 4100    	eoreq	r1, r1, #0x80000000
 80069e6: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069ea: 4a11         	ldr	r2, [pc, #0x44]         @ 0x8006a30 <firmware_image+0x6a30>
 80069ec: 4b11         	ldr	r3, [pc, #0x44]         @ 0x8006a34 <firmware_image+0x6a34>
 80069ee: 2c02         	cmp	r4, #0x2
 80069f0: d007         	beq	0x8006a02 <firmware_image+0x6a02> @ imm = #0xe
 80069f2: f7f9 fd42    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x657c
 80069f6: 462a         	mov	r2, r5
 80069f8: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 80069fc: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x8006a28 <firmware_image+0x6a28>
 80069fe: f7f9 bd3c    	b.w	0x800047a <firmware_image+0x47a> @ imm = #-0x6588
 8006a02: f7f9 fd3a    	bl	0x800047a <firmware_image+0x47a> @ imm = #-0x658c
 8006a06: 462a         	mov	r2, r5
 8006a08: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006a0c: 4b06         	ldr	r3, [pc, #0x18]         @ 0x8006a28 <firmware_image+0x6a28>
 8006a0e: f7f9 bd37    	b.w	0x8000480 <firmware_image+0x480> @ imm = #-0x6592
 8006a12: 0000         	movs	r0, r0
 8006a14: 0000         	movs	r0, r0
 8006a16: 7ff0         	ldrb	r0, [r6, #0x1f]
 8006a18: 2d18         	cmp	r5, #0x18
 8006a1a: 5444         	strb	r4, [r0, r1]
 8006a1c: 21fb         	movs	r1, #0xfb
 8006a1e: c009         	stm	r0!, {r0, r3}
 8006a20: 0d2e         	lsrs	r6, r5, #0x14
 8006a22: 0000         	movs	r0, r0
 8006a24: 21fb         	movs	r1, #0xfb
 8006a26: bff9         	itett	al                      @ unpredictable IT predicate sequence
 8006a28: 21fb         	mov	r1, #0xfb
 8006a2a: 4009         	and<und>	r1, r1
 8006a2c: 21fb         	mov	r1, #0xfb
 8006a2e: 3ff9         	sub	r7, #0xf9
 8006a30: 5c07         	ldrb	r7, [r0, r0]
 8006a32: 3314         	adds	r3, #0x14
 8006a34: a626         	adr	r6, #152 <firmware_image+0x6a5e>
 8006a36: 3ca1         	subs	r4, #0xa1
 8006a38: b570         	push	{r4, r5, r6, lr}
 8006a3a: 4e2d         	ldr	r6, [pc, #0xb4]         @ 0x8006af0 <firmware_image+0x6af0>
 8006a3c: f44f 5100    	mov.w	r1, #0x2000
 8006a40: 4630         	mov	r0, r6
 8006a42: f7fb fe85    	bl	0x8002750 <firmware_image+0x2750> @ imm = #-0x42f6
 8006a46: b245         	sxtb	r5, r0
 8006a48: 2102         	movs	r1, #0x2
 8006a4a: f04f 4090    	mov.w	r0, #0x48000000
 8006a4e: f7fb fe7f    	bl	0x8002750 <firmware_image+0x2750> @ imm = #-0x4302
 8006a52: b244         	sxtb	r4, r0
 8006a54: f44f 4180    	mov.w	r1, #0x4000
 8006a58: 4630         	mov	r0, r6
 8006a5a: f7fb fe79    	bl	0x8002750 <firmware_image+0x2750> @ imm = #-0x430e
 8006a5e: b241         	sxtb	r1, r0
 8006a60: 4824         	ldr	r0, [pc, #0x90]         @ 0x8006af4 <firmware_image+0x6af4>
 8006a62: 2200         	movs	r2, #0x0
 8006a64: 2301         	movs	r3, #0x1
 8006a66: 78c6         	ldrb	r6, [r0, #0x3]
 8006a68: b10e         	cbz	r6, 0x8006a6e <firmware_image+0x6a6e> @ imm = #0x2
 8006a6a: 89c6         	ldrh	r6, [r0, #0xe]
 8006a6c: b94e         	cbnz	r6, 0x8006a82 <firmware_image+0x6a82> @ imm = #0x12
 8006a6e: f990 6007    	ldrsb.w	r6, [r0, #0x7]
 8006a72: 42b5         	cmp	r5, r6
 8006a74: d004         	beq	0x8006a80 <firmware_image+0x6a80> @ imm = #0x8
 8006a76: 8986         	ldrh	r6, [r0, #0xc]
 8006a78: 81c6         	strh	r6, [r0, #0xe]
 8006a7a: 70c3         	strb	r3, [r0, #0x3]
 8006a7c: 7102         	strb	r2, [r0, #0x4]
 8006a7e: 7142         	strb	r2, [r0, #0x5]
 8006a80: 71c5         	strb	r5, [r0, #0x7]
 8006a82: 7905         	ldrb	r5, [r0, #0x4]
 8006a84: b10d         	cbz	r5, 0x8006a8a <firmware_image+0x6a8a> @ imm = #0x2
 8006a86: 8a05         	ldrh	r5, [r0, #0x10]
 8006a88: b94d         	cbnz	r5, 0x8006a9e <firmware_image+0x6a9e> @ imm = #0x12
 8006a8a: f990 5008    	ldrsb.w	r5, [r0, #0x8]
 8006a8e: 42ac         	cmp	r4, r5
 8006a90: d004         	beq	0x8006a9c <firmware_image+0x6a9c> @ imm = #0x8
 8006a92: 8985         	ldrh	r5, [r0, #0xc]
 8006a94: 8205         	strh	r5, [r0, #0x10]
 8006a96: 7103         	strb	r3, [r0, #0x4]
 8006a98: 70c2         	strb	r2, [r0, #0x3]
 8006a9a: 7142         	strb	r2, [r0, #0x5]
 8006a9c: 7204         	strb	r4, [r0, #0x8]
 8006a9e: 7944         	ldrb	r4, [r0, #0x5]
 8006aa0: b10c         	cbz	r4, 0x8006aa6 <firmware_image+0x6aa6> @ imm = #0x2
 8006aa2: 8a44         	ldrh	r4, [r0, #0x12]
 8006aa4: b94c         	cbnz	r4, 0x8006aba <firmware_image+0x6aba> @ imm = #0x12
 8006aa6: f990 4009    	ldrsb.w	r4, [r0, #0x9]
 8006aaa: 42a1         	cmp	r1, r4
 8006aac: d004         	beq	0x8006ab8 <firmware_image+0x6ab8> @ imm = #0x8
 8006aae: 8984         	ldrh	r4, [r0, #0xc]
 8006ab0: 8244         	strh	r4, [r0, #0x12]
 8006ab2: 7143         	strb	r3, [r0, #0x5]
 8006ab4: 70c2         	strb	r2, [r0, #0x3]
 8006ab6: 7102         	strb	r2, [r0, #0x4]
 8006ab8: 7241         	strb	r1, [r0, #0x9]
 8006aba: f9b0 100e    	ldrsh.w	r1, [r0, #0xe]
 8006abe: 2900         	cmp	r1, #0x0
 8006ac0: dd01         	ble	0x8006ac6 <firmware_image+0x6ac6> @ imm = #0x2
 8006ac2: 1e49         	subs	r1, r1, #0x1
 8006ac4: 81c1         	strh	r1, [r0, #0xe]
 8006ac6: f9b0 1010    	ldrsh.w	r1, [r0, #0x10]
 8006aca: 2900         	cmp	r1, #0x0
 8006acc: dd01         	ble	0x8006ad2 <firmware_image+0x6ad2> @ imm = #0x2
 8006ace: 1e49         	subs	r1, r1, #0x1
 8006ad0: 8201         	strh	r1, [r0, #0x10]
 8006ad2: f9b0 1012    	ldrsh.w	r1, [r0, #0x12]
 8006ad6: 2900         	cmp	r1, #0x0
 8006ad8: dd01         	ble	0x8006ade <firmware_image+0x6ade> @ imm = #0x2
 8006ada: 1e49         	subs	r1, r1, #0x1
 8006adc: 8241         	strh	r1, [r0, #0x12]
 8006ade: 79c1         	ldrb	r1, [r0, #0x7]
 8006ae0: 7a02         	ldrb	r2, [r0, #0x8]
 8006ae2: ea41 0142    	orr.w	r1, r1, r2, lsl #1
 8006ae6: 7a40         	ldrb	r0, [r0, #0x9]
 8006ae8: ea41 0080    	orr.w	r0, r1, r0, lsl #2
 8006aec: b2c0         	uxtb	r0, r0
 8006aee: bd70         	pop	{r4, r5, r6, pc}
 8006af0: 0800         	lsrs	r0, r0, #0x20
 8006af2: 4800         	ldr	r0, [pc, #0x0]          @ 0x8006af4 <firmware_image+0x6af4>
 8006af4: 0268         	lsls	r0, r5, #0x9
 8006af6: 2000         	movs	r0, #0x0
 8006af8: f7fd fc8e    	bl	0x8004418 <firmware_image+0x4418> @ imm = #-0x26e4
 8006afc: f7fc fc0e    	bl	0x800331c <firmware_image+0x331c> @ imm = #-0x37e4
 8006b00: f7fa feec    	bl	0x80018dc <firmware_image+0x18dc> @ imm = #-0x5228
 8006b04: 48a3         	ldr	r0, [pc, #0x28c]        @ 0x8006d94 <firmware_image+0x6d94>
 8006b06: f7fb fc61    	bl	0x80023cc <firmware_image+0x23cc> @ imm = #-0x473e
 8006b0a: f7fd fb05    	bl	0x8004118 <firmware_image+0x4118> @ imm = #-0x29f6
 8006b0e: f7fc fd67    	bl	0x80035e0 <firmware_image+0x35e0> @ imm = #-0x3532
 8006b12: f7fe fa66    	bl	0x8004fe2 <firmware_image+0x4fe2> @ imm = #-0x1b34
 8006b16: f7fd fe55    	bl	0x80047c4 <firmware_image+0x47c4> @ imm = #-0x2356
 8006b1a: f7fb f8a7    	bl	0x8001c6c <firmware_image+0x1c6c> @ imm = #-0x4eb2
 8006b1e: f7fc fb79    	bl	0x8003214 <firmware_image+0x3214> @ imm = #-0x390e
 8006b22: f7fc fbb7    	bl	0x8003294 <firmware_image+0x3294> @ imm = #-0x3892
 8006b26: f44f 50fa    	mov.w	r0, #0x1f40
 8006b2a: f7fb fc4f    	bl	0x80023cc <firmware_image+0x23cc> @ imm = #-0x4762
 8006b2e: 4d9a         	ldr	r5, [pc, #0x268]        @ 0x8006d98 <firmware_image+0x6d98>
 8006b30: 2400         	movs	r4, #0x0
 8006b32: 80ec         	strh	r4, [r5, #0x6]
 8006b34: f04f 4690    	mov.w	r6, #0x48000000
 8006b38: f644 6720    	movw	r7, #0x4e20
 8006b3c: 6930         	ldr	r0, [r6, #0x10]
 8006b3e: 04c0         	lsls	r0, r0, #0x13
 8006b40: d502         	bpl	0x8006b48 <firmware_image+0x6b48> @ imm = #0x4
 8006b42: 8929         	ldrh	r1, [r5, #0x8]
 8006b44: 1c49         	adds	r1, r1, #0x1
 8006b46: 8129         	strh	r1, [r5, #0x8]
 8006b48: 4638         	mov	r0, r7
 8006b4a: f7fb fc3f    	bl	0x80023cc <firmware_image+0x23cc> @ imm = #-0x4782
 8006b4e: 88e8         	ldrh	r0, [r5, #0x6]
 8006b50: 1c40         	adds	r0, r0, #0x1
 8006b52: b281         	uxth	r1, r0
 8006b54: 80e9         	strh	r1, [r5, #0x6]
 8006b56: 2964         	cmp	r1, #0x64
 8006b58: d3f0         	blo	0x8006b3c <firmware_image+0x6b3c> @ imm = #-0x20
 8006b5a: 8928         	ldrh	r0, [r5, #0x8]
 8006b5c: 4e8f         	ldr	r6, [pc, #0x23c]        @ 0x8006d9c <firmware_image+0x6d9c>
 8006b5e: f04f 0801    	mov.w	r8, #0x1
 8006b62: 2802         	cmp	r0, #0x2
 8006b64: d902         	bls	0x8006b6c <firmware_image+0x6b6c> @ imm = #0x4
 8006b66: f886 8000    	strb.w	r8, [r6]
 8006b6a: e000         	b	0x8006b6e <firmware_image+0x6b6e> @ imm = #0x0
 8006b6c: 7034         	strb	r4, [r6]
 8006b6e: f7fe fbcb    	bl	0x8005308 <firmware_image+0x5308> @ imm = #-0x186a
 8006b72: 80ec         	strh	r4, [r5, #0x6]
 8006b74: 4f8a         	ldr	r7, [pc, #0x228]        @ 0x8006da0 <firmware_image+0x6da0>
 8006b76: f7fa ff35    	bl	0x80019e4 <firmware_image+0x19e4> @ imm = #-0x5196
 8006b7a: 4638         	mov	r0, r7
 8006b7c: f7fb fc26    	bl	0x80023cc <firmware_image+0x23cc> @ imm = #-0x47b4
 8006b80: f7fa ff22    	bl	0x80019c8 <firmware_image+0x19c8> @ imm = #-0x51bc
 8006b84: 4638         	mov	r0, r7
 8006b86: f7fb fc21    	bl	0x80023cc <firmware_image+0x23cc> @ imm = #-0x47be
 8006b8a: 88e8         	ldrh	r0, [r5, #0x6]
 8006b8c: 1c40         	adds	r0, r0, #0x1
 8006b8e: b281         	uxth	r1, r0
 8006b90: 80e9         	strh	r1, [r5, #0x6]
 8006b92: 2903         	cmp	r1, #0x3
 8006b94: d3ef         	blo	0x8006b76 <firmware_image+0x6b76> @ imm = #-0x22
 8006b96: 2301         	movs	r3, #0x1
 8006b98: 2200         	movs	r2, #0x0
 8006b9a: 2108         	movs	r1, #0x8
 8006b9c: f44f 6090    	mov.w	r0, #0x480
 8006ba0: f000 f9f4    	bl	0x8006f8c <firmware_image+0x6f8c> @ imm = #0x3e8
 8006ba4: f7fb ff72    	bl	0x8002a8c <firmware_image+0x2a8c> @ imm = #-0x411c
 8006ba8: f242 7510    	movw	r5, #0x2710
 8006bac: 4628         	mov	r0, r5
 8006bae: f7fb fc0d    	bl	0x80023cc <firmware_image+0x23cc> @ imm = #-0x47e6
 8006bb2: f7fa fabb    	bl	0x800112c <firmware_image+0x112c> @ imm = #-0x5a8a
 8006bb6: 4628         	mov	r0, r5
 8006bb8: f7fb fc08    	bl	0x80023cc <firmware_image+0x23cc> @ imm = #-0x47f0
 8006bbc: f7fc fc04    	bl	0x80033c8 <firmware_image+0x33c8> @ imm = #-0x37f8
 8006bc0: f7fd fed0    	bl	0x8004964 <firmware_image+0x4964> @ imm = #-0x2260
 8006bc4: 22fa         	movs	r2, #0xfa
 8006bc6: 2100         	movs	r1, #0x0
 8006bc8: 4876         	ldr	r0, [pc, #0x1d8]        @ 0x8006da4 <firmware_image+0x6da4>
 8006bca: f7fd fe69    	bl	0x80048a0 <firmware_image+0x48a0> @ imm = #-0x232e
 8006bce: 2201         	movs	r2, #0x1
 8006bd0: 2132         	movs	r1, #0x32
 8006bd2: 4875         	ldr	r0, [pc, #0x1d4]        @ 0x8006da8 <firmware_image+0x6da8>
 8006bd4: f7fd fe64    	bl	0x80048a0 <firmware_image+0x48a0> @ imm = #-0x2338
 8006bd8: 2204         	movs	r2, #0x4
 8006bda: 2100         	movs	r1, #0x0
 8006bdc: 4873         	ldr	r0, [pc, #0x1cc]        @ 0x8006dac <firmware_image+0x6dac>
 8006bde: f7fd fe5f    	bl	0x80048a0 <firmware_image+0x48a0> @ imm = #-0x2342
 8006be2: 2204         	movs	r2, #0x4
 8006be4: 2100         	movs	r1, #0x0
 8006be6: 4872         	ldr	r0, [pc, #0x1c8]        @ 0x8006db0 <firmware_image+0x6db0>
 8006be8: f7fd fe5a    	bl	0x80048a0 <firmware_image+0x48a0> @ imm = #-0x234c
 8006bec: 2204         	movs	r2, #0x4
 8006bee: 2100         	movs	r1, #0x0
 8006bf0: 4870         	ldr	r0, [pc, #0x1c0]        @ 0x8006db4 <firmware_image+0x6db4>
 8006bf2: f7fd fe55    	bl	0x80048a0 <firmware_image+0x48a0> @ imm = #-0x2356
 8006bf6: 2204         	movs	r2, #0x4
 8006bf8: 2100         	movs	r1, #0x0
 8006bfa: 486f         	ldr	r0, [pc, #0x1bc]        @ 0x8006db8 <firmware_image+0x6db8>
 8006bfc: f7fd fe50    	bl	0x80048a0 <firmware_image+0x48a0> @ imm = #-0x2360
 8006c00: f7fd fe50    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x2360
 8006c04: 2201         	movs	r2, #0x1
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
 8006cc8: 4e51         	ldr	r6, [pc, #0x144]        @ 0x8006e10 <firmware_image+0x6e10>
 8006cca: 7830         	ldrb	r0, [r6]
 8006ccc: b178         	cbz	r0, 0x8006cee <firmware_image+0x6cee> @ imm = #0x1e
 8006cce: 4851         	ldr	r0, [pc, #0x144]        @ 0x8006e14 <firmware_image+0x6e14>
 8006cd0: 8801         	ldrh	r1, [r0]
 8006cd2: b109         	cbz	r1, 0x8006cd8 <firmware_image+0x6cd8> @ imm = #0x2
 8006cd4: 8004         	strh	r4, [r0]
 8006cd6: e001         	b	0x8006cdc <firmware_image+0x6cdc> @ imm = #0x2
 8006cd8: f8a0 8000    	strh.w	r8, [r0]
 8006cdc: f7fe fb46    	bl	0x800536c <firmware_image+0x536c> @ imm = #-0x1974
 8006ce0: f88a 4000    	strb.w	r4, [r10]
 8006ce4: 7034         	strb	r4, [r6]
 8006ce6: f887 9000    	strb.w	r9, [r7]
 8006cea: f885 9000    	strb.w	r9, [r5]
 8006cee: f8df b128    	ldr.w	r11, [pc, #0x128]       @ 0x8006e18 <firmware_image+0x6e18>
 8006cf2: f89b 0000    	ldrb.w	r0, [r11]
 8006cf6: b1c8         	cbz	r0, 0x8006d2c <firmware_image+0x6d2c> @ imm = #0x32
 8006cf8: 4e48         	ldr	r6, [pc, #0x120]        @ 0x8006e1c <firmware_image+0x6e1c>
 8006cfa: 8830         	ldrh	r0, [r6]
 8006cfc: b108         	cbz	r0, 0x8006d02 <firmware_image+0x6d02> @ imm = #0x2
 8006cfe: 8034         	strh	r4, [r6]
 8006d00: e001         	b	0x8006d06 <firmware_image+0x6d06> @ imm = #0x2
 8006d02: f8a6 8000    	strh.w	r8, [r6]
 8006d06: f7fe fb31    	bl	0x800536c <firmware_image+0x536c> @ imm = #-0x199e
 8006d0a: f88a 4000    	strb.w	r4, [r10]
 8006d0e: f88b 4000    	strb.w	r4, [r11]
 8006d12: 8830         	ldrh	r0, [r6]
 8006d14: b130         	cbz	r0, 0x8006d24 <firmware_image+0x6d24> @ imm = #0xc
 8006d16: 4942         	ldr	r1, [pc, #0x108]        @ 0x8006e20 <firmware_image+0x6e20>
 8006d18: f44f 70fa    	mov.w	r0, #0x1f4
 8006d1c: 8008         	strh	r0, [r1]
 8006d1e: f885 9000    	strb.w	r9, [r5]
 8006d22: e003         	b	0x8006d2c <firmware_image+0x6d2c> @ imm = #0x6
 8006d24: f887 9000    	strb.w	r9, [r7]
 8006d28: f885 9000    	strb.w	r9, [r5]
 8006d2c: 481b         	ldr	r0, [pc, #0x6c]         @ 0x8006d9c <firmware_image+0x6d9c>
 8006d2e: 7800         	ldrb	r0, [r0]
 8006d30: b9a8         	cbnz	r0, 0x8006d5e <firmware_image+0x6d5e> @ imm = #0x2a
 8006d32: 483a         	ldr	r0, [pc, #0xe8]         @ 0x8006e1c <firmware_image+0x6e1c>
 8006d34: 8800         	ldrh	r0, [r0]
 8006d36: b148         	cbz	r0, 0x8006d4c <firmware_image+0x6d4c> @ imm = #0x12
 8006d38: 4e3a         	ldr	r6, [pc, #0xe8]         @ 0x8006e24 <firmware_image+0x6e24>
 8006d3a: 2102         	movs	r1, #0x2
 8006d3c: 4630         	mov	r0, r6
 8006d3e: f7fb fd0e    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x45e4
 8006d42: 2104         	movs	r1, #0x4
 8006d44: 4630         	mov	r0, r6
 8006d46: f7fb fd0c    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x45e8
 8006d4a: e008         	b	0x8006d5e <firmware_image+0x6d5e> @ imm = #0x10
 8006d4c: 4e35         	ldr	r6, [pc, #0xd4]         @ 0x8006e24 <firmware_image+0x6e24>
 8006d4e: 2102         	movs	r1, #0x2
 8006d50: 4630         	mov	r0, r6
 8006d52: f7fb fd06    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x45f4
 8006d56: 2104         	movs	r1, #0x4
 8006d58: 4630         	mov	r0, r6
 8006d5a: f7fb fd00    	bl	0x800275e <firmware_image+0x275e> @ imm = #-0x4600
 8006d5e: 4932         	ldr	r1, [pc, #0xc8]         @ 0x8006e28 <firmware_image+0x6e28>
 8006d60: 7808         	ldrb	r0, [r1]
 8006d62: b140         	cbz	r0, 0x8006d76 <firmware_image+0x6d76> @ imm = #0x10
 8006d64: 4831         	ldr	r0, [pc, #0xc4]         @ 0x8006e2c <firmware_image+0x6e2c>
 8006d66: f880 8000    	strb.w	r8, [r0]
 8006d6a: 2003         	movs	r0, #0x3
 8006d6c: 7038         	strb	r0, [r7]
 8006d6e: 7028         	strb	r0, [r5]
 8006d70: f88a 4000    	strb.w	r4, [r10]
 8006d74: 700c         	strb	r4, [r1]
 8006d76: 482e         	ldr	r0, [pc, #0xb8]         @ 0x8006e30 <firmware_image+0x6e30>
 8006d78: 7801         	ldrb	r1, [r0]
 8006d7a: b139         	cbz	r1, 0x8006d8c <firmware_image+0x6d8c> @ imm = #0xe
 8006d7c: 2103         	movs	r1, #0x3
 8006d7e: 7039         	strb	r1, [r7]
 8006d80: 7029         	strb	r1, [r5]
 8006d82: f88a 4000    	strb.w	r4, [r10]
 8006d86: 7004         	strb	r4, [r0]
 8006d88: f7fc fa12    	bl	0x80031b0 <firmware_image+0x31b0> @ imm = #-0x3bdc
 8006d8c: e761         	b	0x8006c52 <firmware_image+0x6c52> @ imm = #-0x13e
 8006d8e: 0000         	movs	r0, r0
 8006d90: 1a80         	subs	r0, r0, r2
 8006d92: 0006         	movs	r6, r0
 8006d94: 0000         	movs	r0, r0
 8006d96: 2000         	movs	r0, #0x0
 8006d98: 021e         	lsls	r6, r3, #0x8
 8006d9a: 2000         	movs	r0, #0x0
 8006d9c: 8480         	strh	r0, [r0, #0x24]
 8006d9e: 001e         	movs	r6, r3
 8006da0: 59fd         	ldr	r5, [r7, r7]
 8006da2: 0800         	lsrs	r0, r0, #0x20
 8006da4: 1a85         	subs	r5, r0, r2
 8006da6: 0800         	lsrs	r0, r0, #0x20
 8006da8: 3249         	adds	r2, #0x49
 8006daa: 0800         	lsrs	r0, r0, #0x20
 8006dac: 32cd         	adds	r2, #0xcd
 8006dae: 0800         	lsrs	r0, r0, #0x20
 8006db0: 1ca1         	adds	r1, r4, #0x2
 8006db2: 0800         	lsrs	r0, r0, #0x20
 8006db4: 50f1         	str	r1, [r6, r3]
 8006db6: 0800         	lsrs	r0, r0, #0x20
 8006db8: 5095         	str	r5, [r2, r2]
 8006dba: 0800         	lsrs	r0, r0, #0x20
 8006dbc: 5019         	str	r1, [r3, r0]
 8006dbe: 0800         	lsrs	r0, r0, #0x20
 8006dc0: 23bd         	movs	r3, #0xbd
 8006dc2: 0800         	lsrs	r0, r0, #0x20
 8006dc4: 3851         	subs	r0, #0x51
 8006dc6: 0800         	lsrs	r0, r0, #0x20
 8006dc8: 3c7d         	subs	r4, #0x7d
 8006dca: 0800         	lsrs	r0, r0, #0x20
 8006dcc: 1d81         	adds	r1, r0, #0x6
 8006dce: 0800         	lsrs	r0, r0, #0x20
 8006dd0: 021f         	lsls	r7, r3, #0x8
 8006dd2: 2000         	movs	r0, #0x0
 8006dd4: 0220         	lsls	r0, r4, #0x8
 8006dd6: 2000         	movs	r0, #0x0
 8006dd8: 006c         	lsls	r4, r5, #0x1
 8006dda: 2000         	movs	r0, #0x0
 8006ddc: 0148         	lsls	r0, r1, #0x5
 8006dde: 2000         	movs	r0, #0x0
 8006de0: 0164         	lsls	r4, r4, #0x5
 8006de2: 2000         	movs	r0, #0x0
 8006de4: 0197         	lsls	r7, r2, #0x6
 8006de6: 2000         	movs	r0, #0x0
 8006de8: 01f8         	lsls	r0, r7, #0x7
 8006dea: 2000         	movs	r0, #0x0
 8006dec: 0210         	lsls	r0, r2, #0x8
 8006dee: 2000         	movs	r0, #0x0
 8006df0: 01fe         	lsls	r6, r7, #0x7
 8006df2: 2000         	movs	r0, #0x0
 8006df4: 0216         	lsls	r6, r2, #0x8
 8006df6: 2000         	movs	r0, #0x0
 8006df8: 0000         	movs	r0, r0
 8006dfa: 42c8         	cmn	r0, r1
 8006dfc: 01cc         	lsls	r4, r1, #0x7
 8006dfe: 2000         	movs	r0, #0x0
 8006e00: 019a         	lsls	r2, r3, #0x6
 8006e02: 2000         	movs	r0, #0x0
 8006e04: 01c4         	lsls	r4, r0, #0x7
 8006e06: 2000         	movs	r0, #0x0
 8006e08: 019c         	lsls	r4, r3, #0x6
 8006e0a: 2000         	movs	r0, #0x0
 8006e0c: 0149         	lsls	r1, r1, #0x5
 8006e0e: 2000         	movs	r0, #0x0
 8006e10: 008a         	lsls	r2, r1, #0x2
 8006e12: 2000         	movs	r0, #0x0
 8006e14: 014a         	lsls	r2, r1, #0x5
 8006e16: 2000         	movs	r0, #0x0
 8006e18: 008c         	lsls	r4, r1, #0x2
 8006e1a: 2000         	movs	r0, #0x0
 8006e1c: 003e         	movs	r6, r7
 8006e1e: 2000         	movs	r0, #0x0
 8006e20: 0400         	lsls	r0, r0, #0x10
 8006e22: 4800         	ldr	r0, [pc, #0x0]          @ 0x8006e24 <firmware_image+0x6e24>
 8006e24: 0131         	lsls	r1, r6, #0x4
 8006e26: 2000         	movs	r0, #0x0
 8006e28: 0067         	lsls	r7, r4, #0x1
 8006e2a: 2000         	movs	r0, #0x0
 8006e2c: 0132         	lsls	r2, r6, #0x4
 8006e2e: 2000         	movs	r0, #0x0
 8006e30: b570         	push	{r4, r5, r6, lr}
 8006e32: 23ff         	movs	r3, #0xff
 8006e34: 22ff         	movs	r2, #0xff
 8006e36: 4d08         	ldr	r5, [pc, #0x20]         @ 0x8006e58 <firmware_image+0x6e58>
 8006e38: f505 7680    	add.w	r6, r5, #0x100
 8006e3c: e005         	b	0x8006e4a <firmware_image+0x6e4a> @ imm = #0xa
 8006e3e: f810 4b01    	ldrb	r4, [r0], #1
 8006e42: 4054         	eors	r4, r2
 8006e44: 5d2a         	ldrb	r2, [r5, r4]
 8006e46: 405a         	eors	r2, r3
 8006e48: 5d33         	ldrb	r3, [r6, r4]
 8006e4a: 1e49         	subs	r1, r1, #0x1
 8006e4c: b289         	uxth	r1, r1
 8006e4e: d2f6         	bhs	0x8006e3e <firmware_image+0x6e3e> @ imm = #-0x14
 8006e50: ea42 2003    	orr.w	r0, r2, r3, lsl #8
 8006e54: bd70         	pop	{r4, r5, r6, pc}
 8006e56: 0000         	movs	r0, r0
 8006e58: b510         	push	{r4, lr}
 8006e5a: f000 f91f    	bl	0x800709c <firmware_image+0x709c> @ imm = #0x23e
 8006e5e: 2802         	cmp	r0, #0x2
 8006e60: d14a         	bne	0x8006ef8 <firmware_image+0x6ef8> @ imm = #0x94
 8006e62: 4826         	ldr	r0, [pc, #0x98]         @ 0x8006efc <firmware_image+0x6efc>
 8006e64: 7801         	ldrb	r1, [r0]
 8006e66: 4c26         	ldr	r4, [pc, #0x98]         @ 0x8006f00 <firmware_image+0x6f00>
 8006e68: 4a26         	ldr	r2, [pc, #0x98]         @ 0x8006f04 <firmware_image+0x6f04>
 8006e6a: 7820         	ldrb	r0, [r4]
 8006e6c: 88d2         	ldrh	r2, [r2, #0x6]
 8006e6e: 4290         	cmp	r0, r2
 8006e70: d142         	bne	0x8006ef8 <firmware_image+0x6ef8> @ imm = #0x84
 8006e72: 4620         	mov	r0, r4
 8006e74: f7ff ffda    	bl	0x8006e2c <firmware_image+0x6e2c> @ imm = #-0x4c
 8006e78: 2800         	cmp	r0, #0x0
 8006e7a: d13d         	bne	0x8006ef8 <firmware_image+0x6ef8> @ imm = #0x7a
 8006e7c: 7860         	ldrb	r0, [r4, #0x1]
 8006e7e: 2805         	cmp	r0, #0x5
 8006e80: d026         	beq	0x8006ed0 <firmware_image+0x6ed0> @ imm = #0x4c
 8006e82: dc08         	bgt	0x8006e96 <firmware_image+0x6e96> @ imm = #0x10
 8006e84: 2801         	cmp	r0, #0x1
 8006e86: d013         	beq	0x8006eb0 <firmware_image+0x6eb0> @ imm = #0x26
 8006e88: 2802         	cmp	r0, #0x2
 8006e8a: d015         	beq	0x8006eb8 <firmware_image+0x6eb8> @ imm = #0x2a
 8006e8c: 2803         	cmp	r0, #0x3
 8006e8e: d017         	beq	0x8006ec0 <firmware_image+0x6ec0> @ imm = #0x2e
 8006e90: 2804         	cmp	r0, #0x4
 8006e92: d108         	bne	0x8006ea6 <firmware_image+0x6ea6> @ imm = #0x10
 8006e94: e018         	b	0x8006ec8 <firmware_image+0x6ec8> @ imm = #0x30
 8006e96: 2806         	cmp	r0, #0x6
 8006e98: d01e         	beq	0x8006ed8 <firmware_image+0x6ed8> @ imm = #0x3c
 8006e9a: 280f         	cmp	r0, #0xf
 8006e9c: d020         	beq	0x8006ee0 <firmware_image+0x6ee0> @ imm = #0x40
 8006e9e: 2810         	cmp	r0, #0x10
 8006ea0: d022         	beq	0x8006ee8 <firmware_image+0x6ee8> @ imm = #0x44
 8006ea2: 2878         	cmp	r0, #0x78
 8006ea4: d024         	beq	0x8006ef0 <firmware_image+0x6ef0> @ imm = #0x48
 8006ea6: e8bd 4010    	pop.w	{r4, lr}
 8006eaa: 2001         	movs	r0, #0x1
 8006eac: f000 b82c    	b.w	0x8006f08 <firmware_image+0x6f08> @ imm = #0x58
 8006eb0: e8bd 4010    	pop.w	{r4, lr}
 8006eb4: f7fd bbf2    	b.w	0x800469c <firmware_image+0x469c> @ imm = #-0x281c
 8006eb8: e8bd 4010    	pop.w	{r4, lr}
 8006ebc: f7fd bc74    	b.w	0x80047a8 <firmware_image+0x47a8> @ imm = #-0x2718
 8006ec0: e8bd 4010    	pop.w	{r4, lr}
 8006ec4: f7fd bbec    	b.w	0x80046a0 <firmware_image+0x46a0> @ imm = #-0x2828
 8006ec8: e8bd 4010    	pop.w	{r4, lr}
 8006ecc: f7fd bc2a    	b.w	0x8004724 <firmware_image+0x4724> @ imm = #-0x27ac
 8006ed0: e8bd 4010    	pop.w	{r4, lr}
 8006ed4: f7ff b846    	b.w	0x8005f64 <firmware_image+0x5f64> @ imm = #-0xf74
 8006ed8: e8bd 4010    	pop.w	{r4, lr}
 8006edc: f7ff b844    	b.w	0x8005f68 <firmware_image+0x5f68> @ imm = #-0xf78
 8006ee0: e8bd 4010    	pop.w	{r4, lr}
 8006ee4: f7ff b83c    	b.w	0x8005f60 <firmware_image+0x5f60> @ imm = #-0xf88
 8006ee8: e8bd 4010    	pop.w	{r4, lr}
 8006eec: f7ff b839    	b.w	0x8005f62 <firmware_image+0x5f62> @ imm = #-0xf8e
 8006ef0: e8bd 4010    	pop.w	{r4, lr}
 8006ef4: f7ff b858    	b.w	0x8005fa8 <firmware_image+0x5fa8> @ imm = #-0xf50
 8006ef8: bd10         	pop	{r4, pc}
 8006efa: 0000         	movs	r0, r0
 8006efc: 0238         	lsls	r0, r7, #0x8
 8006efe: 2000         	movs	r0, #0x0
 8006f00: 0478         	lsls	r0, r7, #0x11
 8006f02: 2000         	movs	r0, #0x0
 8006f04: 021e         	lsls	r6, r3, #0x8
 8006f06: 2000         	movs	r0, #0x0
 8006f08: b510         	push	{r4, lr}
 8006f0a: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x8006f34 <firmware_image+0x6f34>
 8006f0c: 7861         	ldrb	r1, [r4, #0x1]
 8006f0e: f041 0180    	orr	r1, r1, #0x80
 8006f12: 7061         	strb	r1, [r4, #0x1]
 8006f14: 70a0         	strb	r0, [r4, #0x2]
 8006f16: 2103         	movs	r1, #0x3
 8006f18: 4620         	mov	r0, r4
 8006f1a: f7ff ff87    	bl	0x8006e2c <firmware_image+0x6e2c> @ imm = #-0xf2
 8006f1e: 4601         	mov	r1, r0
 8006f20: 1ce0         	adds	r0, r4, #0x3
 8006f22: f7fd fc42    	bl	0x80047aa <firmware_image+0x47aa> @ imm = #-0x277c
 8006f26: 4620         	mov	r0, r4
 8006f28: e8bd 4010    	pop.w	{r4, lr}
 8006f2c: 2105         	movs	r1, #0x5
 8006f2e: f000 b8bb    	b.w	0x80070a8 <firmware_image+0x70a8> @ imm = #0x176
 8006f32: 0000         	movs	r0, r0
 8006f34: 0478         	lsls	r0, r7, #0x11
 8006f36: 2000         	movs	r0, #0x0
 8006f38: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8006f3c: 4606         	mov	r6, r0
 8006f3e: 460f         	mov	r7, r1
 8006f40: f7f9 fcf4    	bl	0x800092c <firmware_image+0x92c> @ imm = #-0x6618
 8006f44: 1e04         	subs	r4, r0, #0x0
 8006f46: 460d         	mov	r5, r1
 8006f48: bf18         	it	ne
 8006f4a: 2001         	movne	r0, #0x1
 8006f4c: 4328         	orrs	r0, r5
 8006f4e: f020 4000    	bic	r0, r0, #0x80000000
 8006f52: f1c0 607f    	rsb.w	r0, r0, #0xff00000
 8006f56: f100 40e0    	add.w	r0, r0, #0x70000000
 8006f5a: 0fc0         	lsrs	r0, r0, #0x1f
 8006f5c: d00e         	beq	0x8006f7c <firmware_image+0x6f7c> @ imm = #0x1c
 8006f5e: 1c30         	adds	r0, r6, #0x0
 8006f60: bf18         	it	ne
 8006f62: 2001         	movne	r0, #0x1
 8006f64: 4338         	orrs	r0, r7
 8006f66: f020 4000    	bic	r0, r0, #0x80000000
 8006f6a: f1c0 607f    	rsb.w	r0, r0, #0xff00000
 8006f6e: f100 40e0    	add.w	r0, r0, #0x70000000
 8006f72: 0fc0         	lsrs	r0, r0, #0x1f
 8006f74: bf04         	itt	eq
 8006f76: 2001         	moveq	r0, #0x1
 8006f78: f7ff fa3e    	bleq	0x80063f8 <firmware_image+0x63f8> @ imm = #-0xb84
 8006f7c: 4620         	mov	r0, r4
 8006f7e: 4629         	mov	r1, r5
 8006f80: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8006f84: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8006f88: b089         	sub	sp, #0x24
 8006f8a: 4683         	mov	r11, r0
 8006f8c: 460e         	mov	r6, r1
 8006f8e: 4615         	mov	r5, r2
 8006f90: 461f         	mov	r7, r3
 8006f92: 2101         	movs	r1, #0x1
 8006f94: 044c         	lsls	r4, r1, #0x11
 8006f96: 4620         	mov	r0, r4
 8006f98: f7fd f9d6    	bl	0x8004348 <firmware_image+0x4348> @ imm = #-0x2c54
 8006f9c: 2101         	movs	r1, #0x1
 8006f9e: 4620         	mov	r0, r4
 8006fa0: f7fd f9ea    	bl	0x8004378 <firmware_image+0x4378> @ imm = #-0x2c2c
 8006fa4: f8df 90e4    	ldr.w	r9, [pc, #0xe4]         @ 0x800708c <firmware_image+0x708c>
 8006fa8: 4648         	mov	r0, r9
 8006faa: f7fe fec1    	bl	0x8005d30 <firmware_image+0x5d30> @ imm = #-0x127e
 8006fae: f04f 4a90    	mov.w	r10, #0x48000000
 8006fb2: 2201         	movs	r2, #0x1
 8006fb4: 2102         	movs	r1, #0x2
 8006fb6: 4650         	mov	r0, r10
 8006fb8: f7fb fbb6    	bl	0x8002728 <firmware_image+0x2728> @ imm = #-0x4894
 8006fbc: 2201         	movs	r2, #0x1
 8006fbe: 2103         	movs	r1, #0x3
 8006fc0: 4650         	mov	r0, r10
 8006fc2: f7fb fbb1    	bl	0x8002728 <firmware_image+0x2728> @ imm = #-0x489e
 8006fc6: f04f 080c    	mov.w	r8, #0xc
 8006fca: f8cd 801c    	str.w	r8, [sp, #0x1c]
 8006fce: 2002         	movs	r0, #0x2
 8006fd0: f88d 0020    	strb.w	r0, [sp, #0x20]
 8006fd4: 2003         	movs	r0, #0x3
 8006fd6: f88d 0021    	strb.w	r0, [sp, #0x21]
 8006fda: 2400         	movs	r4, #0x0
 8006fdc: f88d 4022    	strb.w	r4, [sp, #0x22]
 8006fe0: f88d 4023    	strb.w	r4, [sp, #0x23]
 8006fe4: a907         	add	r1, sp, #0x1c
 8006fe6: 4650         	mov	r0, r10
 8006fe8: f7fb fb62    	bl	0x80026b0 <firmware_image+0x26b0> @ imm = #-0x493c
 8006fec: 2064         	movs	r0, #0x64
 8006fee: fb0b fb00    	mul	r11, r11, r0
 8006ff2: f8cd 000a    	str.w	r0, [sp, #0xa]
 8006ff6: 1c40         	adds	r0, r0, #0x1
 8006ff8: f8aa 000a    	strh.w	r0, [r10, #0xa]
 8006ffc: 488d         	ldr	r0, [pc, #0x234]        @ 0x8007234 <firmware_image+0x7234>
 8006ffe: 8007         	strh	r7, [r0]
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
 80070ac: 0236         	lsls	r6, r6, #0x8
 80070ae: 2000         	movs	r0, #0x0
 80070b0: b570         	push	{r4, r5, r6, lr}
 80070b2: b08c         	sub	sp, #0x30
 80070b4: 4604         	mov	r4, r0
 80070b6: 460d         	mov	r5, r1
 80070b8: 2101         	movs	r1, #0x1
 80070ba: 4608         	mov	r0, r1
 80070bc: f7fd f948    	bl	0x8004350 <firmware_image+0x4350> @ imm = #-0x2d70
 80070c0: 4e14         	ldr	r6, [pc, #0x50]         @ 0x8007114 <firmware_image+0x7114>
 80070c2: 4630         	mov	r0, r6
 80070c4: f7fb f84a    	bl	0x800215c <firmware_image+0x215c> @ imm = #-0x4f6c
 80070c8: 4813         	ldr	r0, [pc, #0x4c]         @ 0x8007118 <firmware_image+0x7118>
 80070ca: 9001         	str	r0, [sp, #0x4]
 80070cc: 9402         	str	r4, [sp, #0x8]
 80070ce: 2010         	movs	r0, #0x10
 80070d0: 9003         	str	r0, [sp, #0xc]
 80070d2: 9504         	str	r5, [sp, #0x10]
 80070d4: 2080         	movs	r0, #0x80
 80070d6: 9006         	str	r0, [sp, #0x18]
 80070d8: 2000         	movs	r0, #0x0
 80070da: 9007         	str	r0, [sp, #0x1c]
 80070dc: 9008         	str	r0, [sp, #0x20]
 80070de: 9005         	str	r0, [sp, #0x14]
 80070e0: 9009         	str	r0, [sp, #0x24]
 80070e2: f44f 5140    	mov.w	r1, #0x3000
 80070e6: 910a         	str	r1, [sp, #0x28]
 80070e8: 900b         	str	r0, [sp, #0x2c]
 80070ea: a901         	add	r1, sp, #0x4
 80070ec: 4630         	mov	r0, r6
 80070ee: f7fb f8a5    	bl	0x800223c <firmware_image+0x223c> @ imm = #-0x4eb6
 80070f2: 4809         	ldr	r0, [pc, #0x24]         @ 0x8007118 <firmware_image+0x7118>
 80070f4: 2201         	movs	r2, #0x1
 80070f6: 2180         	movs	r1, #0x80
 80070f8: 3828         	subs	r0, #0x28
 80070fa: f7fe 2102    	<unknown>
 80070fe: 4630         	mov	r0, r6
 8007100: f7fb f890    	bl	0x8002224 <firmware_image+0x2224> @ imm = #-0x4ee0
 8007104: 2101         	movs	r1, #0x1
 8007106: 4630         	mov	r0, r6
 8007108: f7fb f872    	bl	0x80021f0 <firmware_image+0x21f0> @ imm = #-0x4f1c
 800710c: b00c         	add	sp, #0x30
 800710e: bd70         	pop	{r4, r5, r6, pc}
 8007110: 0044         	lsls	r4, r0, #0x1
 8007112: 4002         	ands	r2, r0
 8007114: 4428         	add	r0, r5
 8007116: 4000         	ands	r0, r0
 8007118: c100         	<unknown>
 800711a: 4081         	lsls	r1, r0
 800711c: c001         	stm	r0!, {r0}
 800711e: 4180         	sbcs	r0, r0
 8007120: c001         	stm	r0!, {r0}
 8007122: 4180         	sbcs	r0, r0
 8007124: c100         	<unknown>
 8007126: 4081         	lsls	r1, r0
 8007128: c001         	stm	r0!, {r0}
 800712a: 4180         	sbcs	r0, r0
 800712c: c100         	<unknown>
 800712e: 4081         	lsls	r1, r0
 8007130: c100         	<unknown>
 8007132: 4081         	lsls	r1, r0
 8007134: c001         	stm	r0!, {r0}
 8007136: 4180         	sbcs	r0, r0
 8007138: c001         	stm	r0!, {r0}
 800713a: 4180         	sbcs	r0, r0
 800713c: c100         	<unknown>
 800713e: 4081         	lsls	r1, r0
 8007140: c100         	<unknown>
 8007142: 4081         	lsls	r1, r0
 8007144: c001         	stm	r0!, {r0}
 8007146: 4180         	sbcs	r0, r0
 8007148: c100         	<unknown>
 800714a: 4081         	lsls	r1, r0
 800714c: c001         	stm	r0!, {r0}
 800714e: 4180         	sbcs	r0, r0
 8007150: c001         	stm	r0!, {r0}
 8007152: 4180         	sbcs	r0, r0
 8007154: c100         	<unknown>
 8007156: 4081         	lsls	r1, r0
 8007158: c001         	stm	r0!, {r0}
 800715a: 4180         	sbcs	r0, r0
 800715c: c100         	<unknown>
 800715e: 4081         	lsls	r1, r0
 8007160: c100         	<unknown>
 8007162: 4081         	lsls	r1, r0
 8007164: c001         	stm	r0!, {r0}
 8007166: 4180         	sbcs	r0, r0
 8007168: c100         	<unknown>
 800716a: 4081         	lsls	r1, r0
 800716c: c001         	stm	r0!, {r0}
 800716e: 4180         	sbcs	r0, r0
 8007170: c001         	stm	r0!, {r0}
 8007172: 4180         	sbcs	r0, r0
 8007174: c100         	<unknown>
 8007176: 4081         	lsls	r1, r0
 8007178: c100         	<unknown>
 800717a: 4081         	lsls	r1, r0
 800717c: c001         	stm	r0!, {r0}
 800717e: 4180         	sbcs	r0, r0
 8007180: c001         	stm	r0!, {r0}
 8007182: 4180         	sbcs	r0, r0
 8007184: c100         	<unknown>
 8007186: 4081         	lsls	r1, r0
 8007188: c001         	stm	r0!, {r0}
 800718a: 4180         	sbcs	r0, r0
 800718c: c100         	<unknown>
 800718e: 4081         	lsls	r1, r0
 8007190: c100         	<unknown>
 8007192: 4081         	lsls	r1, r0
 8007194: c001         	stm	r0!, {r0}
 8007196: 4180         	sbcs	r0, r0
 8007198: c001         	stm	r0!, {r0}
 800719a: 4180         	sbcs	r0, r0
 800719c: c100         	<unknown>
 800719e: 4081         	lsls	r1, r0
 80071a0: c100         	<unknown>
 80071a2: 4081         	lsls	r1, r0
 80071a4: c001         	stm	r0!, {r0}
 80071a6: 4180         	sbcs	r0, r0
 80071a8: c100         	<unknown>
 80071aa: 4081         	lsls	r1, r0
 80071ac: c001         	stm	r0!, {r0}
 80071ae: 4180         	sbcs	r0, r0
 80071b0: c001         	stm	r0!, {r0}
 80071b2: 4180         	sbcs	r0, r0
 80071b4: c100         	<unknown>
 80071b6: 4081         	lsls	r1, r0
 80071b8: c100         	<unknown>
 80071ba: 4081         	lsls	r1, r0
 80071bc: c001         	stm	r0!, {r0}
 80071be: 4180         	sbcs	r0, r0
 80071c0: c001         	stm	r0!, {r0}
 80071c2: 4180         	sbcs	r0, r0
 80071c4: c100         	<unknown>
 80071c6: 4081         	lsls	r1, r0
 80071c8: c001         	stm	r0!, {r0}
 80071ca: 4180         	sbcs	r0, r0
 80071cc: c100         	<unknown>
 80071ce: 4081         	lsls	r1, r0
 80071d0: c100         	<unknown>
 80071d2: 4081         	lsls	r1, r0
 80071d4: c001         	stm	r0!, {r0}
 80071d6: 4180         	sbcs	r0, r0
 80071d8: c100         	<unknown>
 80071da: 4081         	lsls	r1, r0
 80071dc: c001         	stm	r0!, {r0}
 80071de: 4180         	sbcs	r0, r0
 80071e0: c001         	stm	r0!, {r0}
 80071e2: 4180         	sbcs	r0, r0
 80071e4: c100         	<unknown>
 80071e6: 4081         	lsls	r1, r0
 80071e8: c001         	stm	r0!, {r0}
 80071ea: 4180         	sbcs	r0, r0
 80071ec: c100         	<unknown>
 80071ee: 4081         	lsls	r1, r0
 80071f0: c100         	<unknown>
 80071f2: 4081         	lsls	r1, r0
 80071f4: c001         	stm	r0!, {r0}
 80071f6: 4180         	sbcs	r0, r0
 80071f8: c001         	stm	r0!, {r0}
 80071fa: 4180         	sbcs	r0, r0
 80071fc: c100         	<unknown>
 80071fe: 4081         	lsls	r1, r0
 8007200: c100         	<unknown>
 8007202: 4081         	lsls	r1, r0
 8007204: c001         	stm	r0!, {r0}
 8007206: 4180         	sbcs	r0, r0
 8007208: c100         	<unknown>
 800720a: 4081         	lsls	r1, r0
 800720c: c001         	stm	r0!, {r0}
 800720e: 4180         	sbcs	r0, r0
 8007210: c001         	stm	r0!, {r0}
 8007212: 4180         	sbcs	r0, r0
 8007214: c100         	<unknown>
 8007216: 4081         	lsls	r1, r0
 8007218: c000         	<unknown>
 800721a: 01c1         	lsls	r1, r0, #0x7
 800721c: 03c3         	lsls	r3, r0, #0xf
 800721e: c202         	stm	r2!, {r1}
 8007220: 06c6         	lsls	r6, r0, #0x1b
 8007222: c707         	stm	r7!, {r0, r1, r2}
 8007224: c505         	stm	r5!, {r0, r2}
 8007226: 04c4         	lsls	r4, r0, #0x13
 8007228: 0ccc         	lsrs	r4, r1, #0x13
 800722a: cd0d         	ldm	r5!, {r0, r2, r3}
 800722c: cf0f         	ldm	r7!, {r0, r1, r2, r3}
 800722e: 0ece         	lsrs	r6, r1, #0x1b
 8007230: ca0a         	ldm	r2!, {r1, r3}
 8007232: 0bcb         	lsrs	r3, r1, #0xf
 8007234: 09c9         	lsrs	r1, r1, #0x7
 8007236: c808         	ldm	r0!, {r3}
 8007238: 18d8         	adds	r0, r3, r3
 800723a: d919         	bls	0x8007270 <firmware_image+0x7270> @ imm = #0x32
 800723c: db1b         	blt	0x8007276 <firmware_image+0x7276> @ imm = #0x36
 800723e: 1ada         	subs	r2, r3, r3
 8007240: de1e         	udf	#0x1e
 8007242: 1fdf         	subs	r7, r3, #0x7
 8007244: 1ddd         	adds	r5, r3, #0x7
 8007246: dc1c         	bgt	0x8007282 <firmware_image+0x7282> @ imm = #0x38
 8007248: d414         	bmi	0x8007274 <firmware_image+0x7274> @ imm = #0x28
 800724a: 15d5         	asrs	r5, r2, #0x17
 800724c: 17d7         	asrs	r7, r2, #0x1f
 800724e: d616         	bvs	0x800727e <firmware_image+0x727e> @ imm = #0x2c
 8007250: 12d2         	asrs	r2, r2, #0xb
 8007252: d313         	blo	0x800727c <firmware_image+0x727c> @ imm = #0x26
 8007254: d111         	bne	0x800727a <firmware_image+0x727a> @ imm = #0x22
 8007256: 10d0         	asrs	r0, r2, #0x3
 8007258: 30f0         	adds	r0, #0xf0
 800725a: f131 f333    	bl	0x85388c4 <firmware_image+0x5388c4> @ imm = #0x531666
 800725e: 32f2         	adds	r2, #0xf2
 8007260: f636 37f7    	<unknown>
 8007264: 35f5         	adds	r5, #0xf5
 8007266: f434 fc3c    	bl	0x7c3bae2               @ imm = #-0x3cb788
 800726a: 3dfd         	subs	r5, #0xfd
 800726c: 3fff         	subs	r7, #0xff
 800726e: fe3e 3afa    	<unknown>
 8007272: fb3b f939    	<unknown>
 8007276: 38f8         	subs	r0, #0xf8
 8007278: e828 29e9    	<unknown>
 800727c: 2beb         	cmp	r3, #0xeb
 800727e: ea2a 2eee    	bic.w	lr, r10, lr, asr #11
 8007282: ef2f ed2d    	<unknown>
 8007286: 2cec         	cmp	r4, #0xec
 8007288: 24e4         	movs	r4, #0xe4
 800728a: e525         	b	0x8006cd8 <firmware_image+0x6cd8> @ imm = #-0x5b6
 800728c: e727         	b	0x80070de <firmware_image+0x70de> @ imm = #-0x1b2
 800728e: 26e6         	movs	r6, #0xe6
 8007290: e222         	b	0x80076d8 <firmware_image+0x76d8> @ imm = #0x444
 8007292: 23e3         	movs	r3, #0xe3
 8007294: 21e1         	movs	r1, #0xe1
 8007296: e020         	b	0x80072da <firmware_image+0x72da> @ imm = #0x40
 8007298: 60a0         	str	r0, [r4, #0x8]
 800729a: a161         	adr	r1, #388 <firmware_image+0x72ff>
 800729c: a363         	adr	r3, #396 <firmware_image+0x7303>
 800729e: 62a2         	str	r2, [r4, #0x28]
 80072a0: a666         	adr	r6, #408 <firmware_image+0x730a>
 80072a2: 67a7         	str	r7, [r4, #0x78]
 80072a4: 65a5         	str	r5, [r4, #0x58]
 80072a6: a464         	adr	r4, #400 <firmware_image+0x730e>
 80072a8: ac6c         	add	r4, sp, #0x1b0
 80072aa: 6dad         	ldr	r5, [r5, #0x58]
 80072ac: 6faf         	ldr	r7, [r5, #0x78]
 80072ae: ae6e         	add	r6, sp, #0x1b8
 80072b0: 6aaa         	ldr	r2, [r5, #0x28]
 80072b2: ab6b         	add	r3, sp, #0x1ac
 80072b4: a969         	add	r1, sp, #0x1a4
 80072b6: 68a8         	ldr	r0, [r5, #0x8]
 80072b8: b878         	<unknown>
 80072ba: 79b9         	ldrb	r1, [r7, #0x6]
 80072bc: 7bbb         	ldrb	r3, [r7, #0xe]
 80072be: ba7a         	rev16	r2, r7
 80072c0: 7ebe         	ldrb	r6, [r7, #0x1a]
 80072c2: bf7f         	itttt	vc
 80072c4: bd7d         	popvc	{r0, r2, r3, r4, r5, r6, pc}
 80072c6: 7cbc         	ldrbvc	r4, [r7, #0x12]
 80072c8: 74b4         	strbvc	r4, [r6, #0x12]
 80072ca: b575         	pushvc	{r0, r2, r4, r5, r6, lr}
 80072cc: b777         	<unknown>
 80072ce: 76b6         	strb	r6, [r6, #0x1a]
 80072d0: b272         	sxtb	r2, r6
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
 800730c: 4282         	cmp	r2, r0
 800730e: 8343         	strh	r3, [r0, #0x1a]
 8007310: 8141         	strh	r1, [r0, #0xa]
 8007312: 4080         	lsls	r0, r0
 8007314: 7eee         	ldrb	r6, [r5, #0x1b]
 8007316: 7e68         	ldrb	r0, [r5, #0x19]
 8007318: 7d60         	ldrb	r0, [r4, #0x15]
 800731a: 7c5f         	ldrb	r7, [r3, #0x11]
 800731c: 7b63         	ldrb	r3, [r4, #0xd]
 800731e: 7a6e         	ldrb	r6, [r5, #0x9]
 8007320: 797e         	ldrb	r6, [r7, #0x5]
 8007322: 7894         	ldrb	r4, [r2, #0x2]
 8007324: 77af         	strb	r7, [r5, #0x1e]
 8007326: 76cf         	strb	r7, [r1, #0x1b]
 8007328: 75f4         	strb	r4, [r6, #0x17]
 800732a: 751d         	strb	r5, [r3, #0x14]
 800732c: 744b         	strb	r3, [r1, #0x11]
 800732e: 737d         	strb	r5, [r7, #0xd]
 8007330: 7318         	strb	r0, [r3, #0xc]
 8007332: 7251         	strb	r1, [r2, #0x9]
 8007334: 718d         	strb	r5, [r1, #0x6]
 8007336: 70ce         	strb	r6, [r1, #0x3]
 8007338: 7012         	strb	r2, [r2]
 800733a: 6f5a         	ldr	r2, [r3, #0x74]
 800733c: 6ea5         	ldr	r5, [r4, #0x68]
 800733e: 6df4         	ldr	r4, [r6, #0x5c]
 8007340: 6d46         	ldr	r6, [r0, #0x54]
 8007342: 6c9b         	ldr	r3, [r3, #0x48]
 8007344: 6bf3         	ldr	r3, [r6, #0x3c]
 8007346: 6b4e         	ldr	r6, [r1, #0x34]
 8007348: 6aad         	ldr	r5, [r5, #0x28]
 800734a: 6a5d         	ldr	r5, [r3, #0x24]
 800734c: 69bf         	ldr	r7, [r7, #0x18]
 800734e: 6924         	ldr	r4, [r4, #0x10]
 8007350: 688c         	ldr	r4, [r1, #0x8]
 8007352: 67f6         	str	r6, [r6, #0x7c]
 8007354: 6763         	str	r3, [r4, #0x74]
 8007356: 66d2         	str	r2, [r2, #0x6c]
 8007358: 6644         	str	r4, [r0, #0x64]
 800735a: 65b7         	str	r7, [r6, #0x58]
 800735c: 652d         	str	r5, [r5, #0x50]
 800735e: 64a6         	str	r6, [r4, #0x48]
 8007360: 6420         	str	r0, [r4, #0x40]
 8007362: 639c         	str	r4, [r3, #0x38]
 8007364: 625c         	str	r4, [r3, #0x24]
 8007366: 61df         	str	r7, [r3, #0x1c]
 8007368: 6164         	str	r4, [r4, #0x14]
 800736a: 60eb         	str	r3, [r5, #0xc]
 800736c: 6074         	str	r4, [r6, #0x4]
 800736e: 5ffe         	ldrsh	r6, [r7, r7]
 8007370: 5f8a         	ldrsh	r2, [r1, r6]
 8007372: 5f17         	ldrsh	r7, [r2, r4]
 8007374: 5ea6         	ldrsh	r6, [r4, r2]
 8007376: 5e37         	ldrsh	r7, [r6, r0]
 8007378: 5dc9         	ldrb	r1, [r1, r7]
 800737a: 5d5d         	ldrb	r5, [r3, r5]
 800737c: 5d28         	ldrb	r0, [r5, r4]
 800737e: 5cbd         	ldrb	r5, [r7, r2]
 8007380: 5c55         	ldrb	r5, [r2, r1]
 8007382: 5bed         	ldrh	r5, [r5, r7]
 8007384: 5b87         	ldrh	r7, [r0, r6]
 8007386: 5b23         	ldrh	r3, [r4, r4]
 8007388: 5abf         	ldrh	r7, [r7, r2]
 800738a: 5a5d         	ldrh	r5, [r3, r1]
 800738c: 59fc         	ldr	r4, [r7, r7]
 800738e: 599d         	ldr	r5, [r3, r6]
 8007390: 593e         	ldr	r6, [r7, r4]
 8007392: 58e1         	ldr	r1, [r4, r3]
 8007394: 5885         	ldr	r5, [r0, r2]
 8007396: 0000         	movs	r0, r0
 8007398: 00c9         	lsls	r1, r1, #0x3
 800739a: 0192         	lsls	r2, r2, #0x6
 800739c: 025b         	lsls	r3, r3, #0x9
 800739e: 0324         	lsls	r4, r4, #0xc
 80073a0: 03ed         	lsls	r5, r5, #0xf
 80073a2: 04b6         	lsls	r6, r6, #0x12
 80073a4: 057f         	lsls	r7, r7, #0x15
 80073a6: 0648         	lsls	r0, r1, #0x19
 80073a8: 0711         	lsls	r1, r2, #0x1c
 80073aa: 07d9         	lsls	r1, r3, #0x1f
 80073ac: 08a2         	lsrs	r2, r4, #0x2
 80073ae: 096a         	lsrs	r2, r5, #0x5
 80073b0: 0a33         	lsrs	r3, r6, #0x8
 80073b2: 0afb         	lsrs	r3, r7, #0xb
 80073b4: 0bc4         	lsrs	r4, r0, #0xf
 80073b6: 0c8c         	lsrs	r4, r1, #0x12
 80073b8: 0d54         	lsrs	r4, r2, #0x15
 80073ba: 0e1c         	lsrs	r4, r3, #0x18
 80073bc: 0ee3         	lsrs	r3, r4, #0x1b
 80073be: 0fab         	lsrs	r3, r5, #0x1e
 80073c0: 1072         	asrs	r2, r6, #0x1
 80073c2: 113a         	asrs	r2, r7, #0x4
 80073c4: 1201         	asrs	r1, r0, #0x8
 80073c6: 12c8         	asrs	r0, r1, #0xb
 80073c8: 138f         	asrs	r7, r1, #0xe
 80073ca: 1455         	asrs	r5, r2, #0x11
 80073cc: 151c         	asrs	r4, r3, #0x14
 80073ce: 15e2         	asrs	r2, r4, #0x17
 80073d0: 16a8         	asrs	r0, r5, #0x1a
 80073d2: 176e         	asrs	r6, r5, #0x1d
 80073d4: 1833         	adds	r3, r6, r0
 80073d6: 18f9         	adds	r1, r7, r3
 80073d8: 19be         	adds	r6, r7, r6
 80073da: 1a82         	subs	r2, r0, r2
 80073dc: 1b47         	subs	r7, r0, r5
 80073de: 1c0b         	adds	r3, r1, #0x0
 80073e0: 1ccf         	adds	r7, r1, #0x3
 80073e2: 1d93         	adds	r3, r2, #0x6
 80073e4: 1fdd         	subs	r5, r3, #0x7
 80073e6: 209f         	movs	r0, #0x9f
 80073e8: 2161         	movs	r1, #0x61
 80073ea: 2223         	movs	r2, #0x23
 80073ec: 22e5         	movs	r2, #0xe5
 80073ee: 23a6         	movs	r3, #0xa6
 80073f0: 2467         	movs	r4, #0x67
 80073f2: 2528         	movs	r5, #0x28
 80073f4: 25e8         	movs	r5, #0xe8
 80073f6: 26a8         	movs	r6, #0xa8
 80073f8: 2767         	movs	r7, #0x67
 80073fa: 2826         	cmp	r0, #0x26
 80073fc: 28e5         	cmp	r0, #0xe5
 80073fe: 29a3         	cmp	r1, #0xa3
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
 800746c: 4a58         	ldr	r2, [pc, #0x160]        @ 0x80075d0 <firmware_image+0x75d0>
 800746e: 4afb         	ldr	r2, [pc, #0x3ec]        @ 0x800785c <firmware_image+0x785c>
 8007470: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x80076e8 <firmware_image+0x76e8>
 8007472: 4c3f         	ldr	r4, [pc, #0xfc]         @ 0x8007570 <firmware_image+0x7570>
 8007474: 4ce0         	ldr	r4, [pc, #0x380]        @ 0x80077f8 <firmware_image+0x77f8>
 8007476: 4d81         	ldr	r5, [pc, #0x204]        @ 0x800767c <firmware_image+0x767c>
 8007478: 4e20         	ldr	r6, [pc, #0x80]         @ 0x80074fc <firmware_image+0x74fc>
 800747a: 4ebf         	ldr	r6, [pc, #0x2fc]        @ 0x8007778 <firmware_image+0x7778>
 800747c: 4f5d         	ldr	r7, [pc, #0x174]        @ 0x80075f4 <firmware_image+0x75f4>
 800747e: 4ffb         	ldr	r7, [pc, #0x3ec]        @ 0x800786c <firmware_image+0x786c>
 8007480: 5097         	str	r7, [r2, r2]
 8007482: 5133         	str	r3, [r6, r4]
 8007484: 51ce         	str	r6, [r1, r7]
 8007486: 5268         	strh	r0, [r5, r1]
 8007488: 5302         	strh	r2, [r0, r4]
 800748a: 539b         	strh	r3, [r3, r6]
 800748c: 5432         	strb	r2, [r6, r0]
 800748e: 54c9         	strb	r1, [r1, r3]
 8007490: 5560         	strb	r0, [r4, r5]
 8007492: 55f5         	strb	r5, [r6, r7]
 8007494: 568a         	ldrsb	r2, [r1, r2]
 8007496: 571d         	ldrsb	r5, [r3, r4]
 8007498: 57b0         	ldrsb	r0, [r6, r6]
 800749a: 5842         	ldr	r2, [r0, r1]
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
 80075f0: b8c5         	<unknown>
 80075f2: 3fb3         	sub<und>	r7, #0xb3
 80075f4: bb4f         	cbnz	r7, 0x800764a <firmware_image+0x764a> @ imm = #0x52
 80075f6: 0561         	lsls	r1, r4, #0x15
 80075f8: ac67         	add	r4, sp, #0x19c
 80075fa: 3fdd         	subs	r7, #0xdd
 80075fc: 2d18         	cmp	r5, #0x18
 80075fe: 5444         	strb	r4, [r0, r1]
 8007600: 21fb         	movs	r1, #0xfb
 8007602: 3fe9         	subs	r7, #0xe9
 8007604: f69b d281    	bl	0x72a2b0a               @ imm = #-0xd64afe
 8007608: 730b         	strb	r3, [r1, #0xc]
 800760a: 3fef         	subs	r7, #0xef
 800760c: 2d18         	cmp	r5, #0x18
 800760e: 5444         	strb	r4, [r0, r1]
 8007610: 21fb         	movs	r1, #0xfb
 8007612: 3ff9         	subs	r7, #0xf9
 8007614: 65e2         	str	r2, [r4, #0x5c]
 8007616: 222f         	movs	r2, #0x2f
 8007618: 2b7f         	cmp	r3, #0x7f
 800761a: 3c7a         	subs	r4, #0x7a
 800761c: 5c07         	ldrb	r7, [r0, r0]
 800761e: 3314         	adds	r3, #0x14
 8007620: a626         	adr	r6, #152 <firmware_image+0x764a>
 8007622: 3c81         	subs	r4, #0x81
 8007624: cbbd         	ldm	r3, {r0, r2, r3, r4, r5, r7}
 8007626: 7af0         	ldrb	r0, [r6, #0xb]
 8007628: 0788         	lsls	r0, r1, #0x1e
 800762a: 3c70         	subs	r4, #0x70
 800762c: 5c07         	ldrb	r7, [r0, r0]
 800762e: 3314         	adds	r3, #0x14
 8007630: a626         	adr	r6, #152 <firmware_image+0x765a>
 8007632: 3c91         	subs	r4, #0x91
 8007634: ebc4 9998    	rsb	r9, r4, r8, lsr #6
 8007638: 9999         	ldr	r1, [sp, #0x264]
 800763a: bfc9         	itett	gt
 800763c: 1671         	asrgt	r1, r6, #0x19
 800763e: fe23 71c6    	cdp2le	p1, #0x2, c7, c3, c6, #0x6
 8007642: bfbc         	itt	lt
 8007644: 9a6d         	ldrlt	r2, [sp, #0x1b4]
 8007646: af74         	addlt	r7, sp, #0x1d0
 8007648: b0f2         	subgt	sp, #0x1c8
 800764a: bfb3         	iteet	lt
 800764c: fd9a 52de    	ldc2lt	p2, c5, [r10, #888]
 8007650: de2d         	udf	#0x2d
 8007652: bfad         	iteet	ge
 8007654: 6c2f         	ldrge	r7, [r5, #0x40]
 8007656: 2c6a         	cmplt	r4, #0x6a
 8007658: b444         	pushlt	{r2, r6}
 800765a: bfa2         	ittt	ge
 800765c: 550d         	strbge	r5, [r1, r4]
 800765e: 5555         	strbge	r5, [r2, r5]
 8007660: 5555         	strbge	r5, [r2, r5]
 8007662: 3fd5         	sublt	r7, #0xd5
 8007664: 83ff         	strh	r7, [r7, #0x1e]
 8007666: 9200         	str	r2, [sp]
 8007668: 4924         	ldr	r1, [pc, #0x90]         @ 0x80076fc <firmware_image+0x76fc>
 800766a: 3fc2         	subs	r7, #0xc2
 800766c: 206e         	movs	r0, #0x6e
 800766e: c54c         	stm	r5!, {r2, r3, r6}
 8007670: 45cd         	cmp	sp, r9
 8007672: 3fb7         	subs	r7, #0xb7
 8007674: 3d51         	subs	r5, #0x51
 8007676: a0d0         	adr	r0, #832 <firmware_image+0x774a>
 8007678: 0d66         	lsrs	r6, r4, #0x15
 800767a: 3fb1         	subs	r7, #0xb1
 800767c: 0deb         	lsrs	r3, r5, #0x17
 800767e: 2476         	movs	r4, #0x76
 8007680: 7b4b         	ldrb	r3, [r1, #0xd]
 8007682: 3fa9         	subs	r7, #0xa9
 8007684: da11         	bge	0x80076aa <firmware_image+0x76aa> @ imm = #0x22
 8007686: e322         	b	0x8007cce <firmware_image+0x7cce> @ imm = #0x644
 8007688: ad3a         	add	r5, sp, #0xe8
 800768a: 3f90         	subs	r7, #0x90
		...
 8007694: 76b8         	strb	r0, [r7, #0x1a]
 8007696: 0800         	lsrs	r0, r0, #0x20
 8007698: 0000         	movs	r0, r0
 800769a: 2000         	movs	r0, #0x0
 800769c: 02d8         	lsls	r0, r3, #0xb
 800769e: 0000         	movs	r0, r0
 80076a0: 0a00         	lsrs	r0, r0, #0x8
 80076a2: 0800         	lsrs	r0, r0, #0x20
 80076a4: 7708         	strb	r0, [r1, #0x1c]
 80076a6: 0800         	lsrs	r0, r0, #0x20
 80076a8: 02d8         	lsls	r0, r3, #0xb
 80076aa: 2000         	movs	r0, #0x0
 80076ac: 07b8         	lsls	r0, r7, #0x1e
 80076ae: 0000         	movs	r0, r0
 80076b0: 63f4         	str	r4, [r6, #0x3c]
 80076b2: 0800         	lsrs	r0, r0, #0x20
 80076b4: 84d1         	strh	r1, [r2, #0x26]
 80076b6: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x8007940 <firmware_image+0x7940>
 80076b8: 6804         	ldr	r4, [r0]
 80076ba: 0109         	lsls	r1, r1, #0x4
 80076bc: 0302         	lsls	r2, r0, #0xc
 80076be: 0604         	lsls	r4, r0, #0x18
 80076c0: 0807         	lsrs	r7, r0, #0x20
 80076c2: 0c09         	lsrs	r1, r1, #0x10
 80076c4: 1309         	asrs	r1, r1, #0xc
 80076c6: 9118         	str	r1, [sp, #0x60]
 80076c8: 1a03         	subs	r3, r0, r0
 80076ca: 3f80         	subs	r7, #0x80
 80076cc: 1a09         	subs	r1, r1, r0
 80076ce: 411c         	asrs	r4, r3
 80076d0: 3c4d         	subs	r4, #0x4d
 80076d2: 3c0f         	subs	r4, #0xf
 80076d4: 4e0f         	ldr	r6, [pc, #0x3c]         @ 0x8007714 <firmware_image+0x7714>
 80076d6: 0112         	lsls	r2, r2, #0x4
 80076d8: 1c03         	adds	r3, r0, #0x0
 80076da: 0320         	lsls	r0, r4, #0xc
 80076dc: cd1e         	ldm	r5!, {r1, r2, r3, r4}
 80076de: cccc         	ldm	r4!, {r2, r3, r6, r7}
 80076e0: a03e         	adr	r0, #248 <firmware_image+0x7722>
 80076e2: 232c         	movs	r3, #0x2c
 80076e4: 06a4         	lsls	r4, r4, #0x1a
 80076e6: 2832         	cmp	r0, #0x32
 80076e8: 3232         	adds	r2, #0x32
 80076ea: 14c2         	asrs	r2, r0, #0x13
 80076ec: 5c04         	ldrb	r4, [r0, r0]
 80076ee: 73c0         	strb	r0, [r0, #0xf]
 80076f0: 2945         	cmp	r1, #0x45
 80076f2: 01a2         	lsls	r2, r4, #0x6
 80076f4: 02f4         	lsls	r4, r6, #0xb
 80076f6: 7b17         	ldrb	r7, [r2, #0xc]
 80076f8: 2b02         	cmp	r3, #0x2
 80076fa: b220         	sxth	r0, r4
 80076fc: 0201         	lsls	r1, r0, #0x8
 80076fe: 9659         	str	r6, [sp, #0x164]
 8007700: 8083         	strh	r3, [r0, #0x4]
 8007702: 003f         	movs	r7, r7
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
 8007ff6: ffff b004    	<unknown>
 8007ffa: 2e08         	cmp	r6, #0x8
 8007ffc: d031         	beq	0x8008062 <firmware_image+0x8062> @ imm = #0x62
 8007ffe: 2e09         	cmp	r6, #0x9
