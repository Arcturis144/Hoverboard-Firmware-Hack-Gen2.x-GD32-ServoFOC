; GD32F130C8 factory firmware - B/slave controller
; Source: oriFWB.bin
; Architecture: ARM Cortex-M3 / Thumb-2
; Flash base: 0x08000000
; Reset vector: 0x08000171 -> code begins at 0x08000170
; NOTE: Linear disassembly. Embedded literal/data tables may decode as instructions.


/mnt/data/controllerB.elf:	file format elf32-littlearm

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
 80005f4: ea4c 0c01    	orr.w	r12, r12, r1
 80005f8: 0849         	lsrs	r1, r1, #0x1
 80005fa: ea4f 0030    	rrx	r0, r0
 80005fe: 1892         	adds	r2, r2, r2
 8000600: 415b         	adcs	r3, r3
 8000602: ea50 0701    	orrs.w	r7, r0, r1
 8000606: d1ed         	bne	0x80005e4 <firmware_image+0x5e4> @ imm = #-0x26
 8000608: ea52 0003    	orrs.w	r0, r2, r3
 800060c: d012         	beq	0x8000634 <firmware_image+0x634> @ imm = #0x24
 800060e: ea82 0004    	eor.w	r0, r2, r4
 8000612: ea83 0105    	eor.w	r1, r3, r5
 8000616: 4308         	orrs	r0, r1
 8000618: d005         	beq	0x8000626 <firmware_image+0x626> @ imm = #0xa
 800061a: 1b10         	subs	r0, r2, r4
 800061c: 41ab         	sbcs	r3, r5
 800061e: d206         	bhs	0x800062e <firmware_image+0x62e> @ imm = #0xc
 8000620: 2201         	movs	r2, #0x1
 8000622: 2300         	movs	r3, #0x0
 8000624: e006         	b	0x8000634 <firmware_image+0x634> @ imm = #0xc
 8000626: 2200         	movs	r2, #0x0
 8000628: f04f 4300    	mov.w	r3, #0x80000000
 800062c: e002         	b	0x8000634 <firmware_image+0x634> @ imm = #0x4
 800062e: f06f 0201    	mvn	r2, #0x1
 8000632: 1053         	asrs	r3, r2, #0x1
 8000634: eb1a 0006    	adds.w	r0, r10, r6
 8000638: eb4c 5108    	adc.w	r1, r12, r8, lsl #20
 800063c: eb10 000a    	adds.w	r0, r0, r10
 8000640: eb41 010b    	adc.w	r1, r1, r11
 8000644: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8000648: f000 b902    	b.w	0x8000850 <firmware_image+0x850> @ imm = #0x204
 800064c: 0fc1         	lsrs	r1, r0, #0x1f
 800064e: ea80 70e0    	eor.w	r0, r0, r0, asr #31
 8000652: 4408         	add	r0, r1
 8000654: 07ca         	lsls	r2, r1, #0x1f
 8000656: 2396         	movs	r3, #0x96
 8000658: 2100         	movs	r1, #0x0
 800065a: f000 b8cb    	b.w	0x80007f4 <firmware_image+0x7f4> @ imm = #0x196
 800065e: b50e         	push	{r1, r2, r3, lr}
 8000660: 0fc1         	lsrs	r1, r0, #0x1f
 8000662: ea80 70e0    	eor.w	r0, r0, r0, asr #31
 8000666: 4408         	add	r0, r1
 8000668: 07ca         	lsls	r2, r1, #0x1f
 800066a: 2100         	movs	r1, #0x0
 800066c: f240 4333    	movw	r3, #0x433
 8000670: e88d 000e    	stm.w	sp, {r1, r2, r3}
 8000674: 460a         	mov	r2, r1
 8000676: 460b         	mov	r3, r1
 8000678: f000 f8f9    	bl	0x800086e <firmware_image+0x86e> @ imm = #0x1f2
 800067c: b003         	add	sp, #0xc
 800067e: bd00         	pop	{pc}
 8000680: f000 4200    	and	r2, r0, #0x80000000
 8000684: f020 4000    	bic	r0, r0, #0x80000000
 8000688: 0dc1         	lsrs	r1, r0, #0x17
 800068a: f3c0 0016    	ubfx	r0, r0, #0x0, #0x17
 800068e: f440 0000    	orr	r0, r0, #0x800000
 8000692: 297f         	cmp	r1, #0x7f
 8000694: da01         	bge	0x800069a <firmware_image+0x69a> @ imm = #0x2
 8000696: 2000         	movs	r0, #0x0
 8000698: 4770         	bx	lr
 800069a: 2996         	cmp	r1, #0x96
 800069c: dc03         	bgt	0x80006a6 <firmware_image+0x6a6> @ imm = #0x6
 800069e: f1c1 0196    	rsb.w	r1, r1, #0x96
 80006a2: 40c8         	lsrs	r0, r1
 80006a4: e001         	b	0x80006aa <firmware_image+0x6aa> @ imm = #0x2
 80006a6: 3996         	subs	r1, #0x96
 80006a8: 4088         	lsls	r0, r1
 80006aa: 2a00         	cmp	r2, #0x0
 80006ac: d0f4         	beq	0x8000698 <firmware_image+0x698> @ imm = #-0x18
 80006ae: 4240         	rsbs	r0, r0, #0
 80006b0: 4770         	bx	lr
 80006b2: b570         	push	{r4, r5, r6, lr}
 80006b4: f3c1 520a    	ubfx	r2, r1, #0x14, #0xb
 80006b8: f001 4500    	and	r5, r1, #0x80000000
 80006bc: 2400         	movs	r4, #0x0
 80006be: f3c1 0113    	ubfx	r1, r1, #0x0, #0x14
 80006c2: f240 33ff    	movw	r3, #0x3ff
 80006c6: f441 1180    	orr	r1, r1, #0x100000
 80006ca: 429a         	cmp	r2, r3
 80006cc: da01         	bge	0x80006d2 <firmware_image+0x6d2> @ imm = #0x2
 80006ce: 2000         	movs	r0, #0x0
 80006d0: bd70         	pop	{r4, r5, r6, pc}
 80006d2: f240 4333    	movw	r3, #0x433
 80006d6: 429a         	cmp	r2, r3
 80006d8: f2a2 4233    	subw	r2, r2, #0x433
 80006dc: dc03         	bgt	0x80006e6 <firmware_image+0x6e6> @ imm = #0x6
 80006de: 4252         	rsbs	r2, r2, #0
 80006e0: f000 f85d    	bl	0x800079e <firmware_image+0x79e> @ imm = #0xba
 80006e4: e000         	b	0x80006e8 <firmware_image+0x6e8> @ imm = #0x0
 80006e6: 4090         	lsls	r0, r2
 80006e8: 432c         	orrs	r4, r5
 80006ea: d0f1         	beq	0x80006d0 <firmware_image+0x6d0> @ imm = #-0x1e
 80006ec: 4240         	rsbs	r0, r0, #0
 80006ee: bd70         	pop	{r4, r5, r6, pc}
 80006f0: f000 4200    	and	r2, r0, #0x80000000
 80006f4: f030 4000    	bics	r0, r0, #0x80000000
 80006f8: d00a         	beq	0x8000710 <firmware_image+0x710> @ imm = #0x14
 80006fa: 0dc1         	lsrs	r1, r0, #0x17
 80006fc: f501 7160    	add.w	r1, r1, #0x380
 8000700: f3c0 0016    	ubfx	r0, r0, #0x0, #0x17
 8000704: ea42 5101    	orr.w	r1, r2, r1, lsl #20
 8000708: 08c2         	lsrs	r2, r0, #0x3
 800070a: 0740         	lsls	r0, r0, #0x1d
 800070c: 4311         	orrs	r1, r2
 800070e: 4770         	bx	lr
 8000710: 2000         	movs	r0, #0x0
 8000712: 4601         	mov	r1, r0
 8000714: 4770         	bx	lr
 8000716: 0000         	movs	r0, r0
 8000718: b530         	push	{r4, r5, lr}
 800071a: 1e04         	subs	r4, r0, #0x0
 800071c: f171 0400    	sbcs	r4, r1, #0x0
 8000720: db04         	blt	0x800072c <firmware_image+0x72c> @ imm = #0x8
 8000722: f04f 4400    	mov.w	r4, #0x80000000
 8000726: 4240         	rsbs	r0, r0, #0
 8000728: eb64 0101    	sbc.w	r1, r4, r1
 800072c: 1e14         	subs	r4, r2, #0x0
 800072e: f173 0400    	sbcs	r4, r3, #0x0
 8000732: db05         	blt	0x8000740 <firmware_image+0x740> @ imm = #0xa
 8000734: 461c         	mov	r4, r3
 8000736: f04f 4300    	mov.w	r3, #0x80000000
 800073a: 4252         	rsbs	r2, r2, #0
 800073c: eb63 0304    	sbc.w	r3, r3, r4
 8000740: 428b         	cmp	r3, r1
 8000742: bf08         	it	eq
 8000744: 4282         	cmpeq	r2, r0
 8000746: bd30         	pop	{r4, r5, pc}
 8000748: f001 4300    	and	r3, r1, #0x80000000
 800074c: b430         	push	{r4, r5}
 800074e: f021 4100    	bic	r1, r1, #0x80000000
 8000752: ea50 0201    	orrs.w	r2, r0, r1
 8000756: d006         	beq	0x8000766 <firmware_image+0x766> @ imm = #0xc
 8000758: 0d0a         	lsrs	r2, r1, #0x14
 800075a: f5a2 7260    	sub.w	r2, r2, #0x380
 800075e: f3c1 0113    	ubfx	r1, r1, #0x0, #0x14
 8000762: 2a00         	cmp	r2, #0x0
 8000764: dc02         	bgt	0x800076c <firmware_image+0x76c> @ imm = #0x4
 8000766: bc30         	pop	{r4, r5}
 8000768: 2000         	movs	r0, #0x0
 800076a: 4770         	bx	lr
 800076c: 0f44         	lsrs	r4, r0, #0x1d
 800076e: ea44 04c1    	orr.w	r4, r4, r1, lsl #3
 8000772: 00c1         	lsls	r1, r0, #0x3
 8000774: 18e0         	adds	r0, r4, r3
 8000776: bc30         	pop	{r4, r5}
 8000778: eb00 50c2    	add.w	r0, r0, r2, lsl #23
 800077c: f000 b831    	b.w	0x80007e2 <firmware_image+0x7e2> @ imm = #0x62
 8000780: 2a20         	cmp	r2, #0x20
 8000782: db04         	blt	0x800078e <firmware_image+0x78e> @ imm = #0x8
 8000784: 3a20         	subs	r2, #0x20
 8000786: fa00 f102    	lsl.w	r1, r0, r2
 800078a: 2000         	movs	r0, #0x0
 800078c: 4770         	bx	lr
 800078e: 4091         	lsls	r1, r2
 8000790: f1c2 0320    	rsb.w	r3, r2, #0x20
 8000794: fa20 f303    	lsr.w	r3, r0, r3
 8000798: 4319         	orrs	r1, r3
 800079a: 4090         	lsls	r0, r2
 800079c: 4770         	bx	lr
 800079e: 2a20         	cmp	r2, #0x20
 80007a0: db04         	blt	0x80007ac <firmware_image+0x7ac> @ imm = #0x8
 80007a2: 3a20         	subs	r2, #0x20
 80007a4: fa21 f002    	lsr.w	r0, r1, r2
 80007a8: 2100         	movs	r1, #0x0
 80007aa: 4770         	bx	lr
 80007ac: fa21 f302    	lsr.w	r3, r1, r2
 80007b0: 40d0         	lsrs	r0, r2
 80007b2: f1c2 0220    	rsb.w	r2, r2, #0x20
 80007b6: 4091         	lsls	r1, r2
 80007b8: 4308         	orrs	r0, r1
 80007ba: 4619         	mov	r1, r3
 80007bc: 4770         	bx	lr
 80007be: 2a20         	cmp	r2, #0x20
 80007c0: db06         	blt	0x80007d0 <firmware_image+0x7d0> @ imm = #0xc
 80007c2: 17cb         	asrs	r3, r1, #0x1f
 80007c4: 3a20         	subs	r2, #0x20
 80007c6: fa41 f002    	asr.w	r0, r1, r2
 80007ca: ea43 73e0    	orr.w	r3, r3, r0, asr #31
 80007ce: e006         	b	0x80007de <firmware_image+0x7de> @ imm = #0xc
 80007d0: fa41 f302    	asr.w	r3, r1, r2
 80007d4: 40d0         	lsrs	r0, r2
 80007d6: f1c2 0220    	rsb.w	r2, r2, #0x20
 80007da: 4091         	lsls	r1, r2
 80007dc: 4308         	orrs	r0, r1
 80007de: 4619         	mov	r1, r3
 80007e0: 4770         	bx	lr
 80007e2: 2900         	cmp	r1, #0x0
 80007e4: bfa8         	it	ge
 80007e6: 4770         	bxge	lr
 80007e8: 1c40         	adds	r0, r0, #0x1
 80007ea: 0049         	lsls	r1, r1, #0x1
 80007ec: bf08         	it	eq
 80007ee: f020 0001    	biceq	r0, r0, #0x1
 80007f2: 4770         	bx	lr
 80007f4: b410         	push	{r4}
 80007f6: fab0 fc80    	clz	r12, r0
 80007fa: fa00 f00c    	lsl.w	r0, r0, r12
 80007fe: ea50 0401    	orrs.w	r4, r0, r1
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
 8000c18: 601a         	str	r2, [r3]
 8000c1a: 4a06         	ldr	r2, [pc, #0x18]         @ 0x8000c34 <firmware_image+0xc34>
 8000c1c: 3228         	adds	r2, #0x28
 8000c1e: 6811         	ldr	r1, [r2]
 8000c20: f421 0170    	bic	r1, r1, #0xf00000
 8000c24: 7900         	ldrb	r0, [r0, #0x4]
 8000c26: 1e40         	subs	r0, r0, #0x1
 8000c28: b2c0         	uxtb	r0, r0
 8000c2a: ea41 5000    	orr.w	r0, r1, r0, lsl #20
 8000c2e: 6010         	str	r0, [r2]
 8000c30: bd10         	pop	{r4, pc}
 8000c32: 0000         	movs	r0, r0
 8000c34: 2404         	movs	r4, #0x4
 8000c36: 4001         	ands	r1, r0
 8000c38: f7fd fff1    	bl	0x7ffec1e               @ imm = #-0x201e
 8000c3c: b570         	push	{r4, r5, r6, lr}
 8000c3e: 2507         	movs	r5, #0x7
 8000c40: 2809         	cmp	r0, #0x9
 8000c42: d90b         	bls	0x8000c5c <firmware_image+0xc5c> @ imm = #0x16
 8000c44: 4e12         	ldr	r6, [pc, #0x48]         @ 0x8000c90 <firmware_image+0xc90>
 8000c46: 6834         	ldr	r4, [r6]
 8000c48: f1a0 030a    	sub.w	r3, r0, #0xa
 8000c4c: eb03 0343    	add.w	r3, r3, r3, lsl #1
 8000c50: 409d         	lsls	r5, r3
 8000c52: 43ac         	bics	r4, r5
 8000c54: 409a         	lsls	r2, r3
 8000c56: 4314         	orrs	r4, r2
 8000c58: 6034         	str	r4, [r6]
 8000c5a: e009         	b	0x8000c70 <firmware_image+0xc70> @ imm = #0x12
 8000c5c: 4e0c         	ldr	r6, [pc, #0x30]         @ 0x8000c90 <firmware_image+0xc90>
 8000c5e: 1d36         	adds	r6, r6, #0x4
 8000c60: 6834         	ldr	r4, [r6]
 8000c62: eb00 0340    	add.w	r3, r0, r0, lsl #1
 8000c66: 409d         	lsls	r5, r3
 8000c68: 43ac         	bics	r4, r5
 8000c6a: 409a         	lsls	r2, r3
 8000c6c: 4314         	orrs	r4, r2
 8000c6e: 6034         	str	r4, [r6]
 8000c70: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x8000c90 <firmware_image+0xc90>
 8000c72: 342c         	adds	r4, #0x2c
 8000c74: 6822         	ldr	r2, [r4]
 8000c76: f3c2 5301    	ubfx	r3, r2, #0x14, #0x2
 8000c7a: 1ac9         	subs	r1, r1, r3
 8000c7c: 1c89         	adds	r1, r1, #0x2
 8000c7e: eb01 0181    	add.w	r1, r1, r1, lsl #2
 8000c82: 231f         	movs	r3, #0x1f
 8000c84: 408b         	lsls	r3, r1
 8000c86: 439a         	bics	r2, r3
 8000c88: 4088         	lsls	r0, r1
 8000c8a: 4302         	orrs	r2, r0
 8000c8c: 6022         	str	r2, [r4]
 8000c8e: bd70         	pop	{r4, r5, r6, pc}
 8000c90: 240c         	movs	r4, #0xc
 8000c92: 4001         	ands	r1, r0
 8000c94: 4a04         	ldr	r2, [pc, #0x10]         @ 0x8000ca8 <firmware_image+0xca8>
 8000c96: 6811         	ldr	r1, [r2]
 8000c98: f421 1140    	bic	r1, r1, #0x300000
 8000c9c: 1e40         	subs	r0, r0, #0x1
 8000c9e: ea41 5000    	orr.w	r0, r1, r0, lsl #20
 8000ca2: 6010         	str	r0, [r2]
 8000ca4: 4770         	bx	lr
 8000ca6: 0000         	movs	r0, r0
 8000ca8: 2438         	movs	r4, #0x38
 8000caa: 4001         	ands	r1, r0
 8000cac: 4906         	ldr	r1, [pc, #0x18]         @ 0x8000cc8 <firmware_image+0xcc8>
 8000cae: 2800         	cmp	r0, #0x0
 8000cb0: d004         	beq	0x8000cbc <firmware_image+0xcbc> @ imm = #0x8
 8000cb2: 6808         	ldr	r0, [r1]
 8000cb4: f440 1002    	orr	r0, r0, #0x208000
 8000cb8: 6008         	str	r0, [r1]
 8000cba: 4770         	bx	lr
 8000cbc: 6808         	ldr	r0, [r1]
 8000cbe: f420 1002    	bic	r0, r0, #0x208000
 8000cc2: 6008         	str	r0, [r1]
 8000cc4: 4770         	bx	lr
 8000cc6: 0000         	movs	r0, r0
 8000cc8: 2408         	movs	r4, #0x8
 8000cca: 4001         	ands	r1, r0
 8000ccc: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000cd0: b085         	sub	sp, #0x14
 8000cd2: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x80010c0 <firmware_image+0x10c0>
 8000cd4: 220e         	movs	r2, #0xe
 8000cd6: 213b         	movs	r1, #0x3b
 8000cd8: 2068         	movs	r0, #0x68
 8000cda: f001 ff21    	bl	0x8002b20 <firmware_image+0x2b20> @ imm = #0x1e42
 8000cde: 48f8         	ldr	r0, [pc, #0x3e0]        @ 0x80010c0 <firmware_image+0x10c0>
 8000ce0: f8df 83e0    	ldr.w	r8, [pc, #0x3e0]        @ 0x80010c4 <firmware_image+0x10c4>
 8000ce4: 7841         	ldrb	r1, [r0, #0x1]
 8000ce6: 7802         	ldrb	r2, [r0]
 8000ce8: ea41 2102    	orr.w	r1, r1, r2, lsl #8
 8000cec: b209         	sxth	r1, r1
 8000cee: f8a8 100e    	strh.w	r1, [r8, #0xe]
 8000cf2: 78c2         	ldrb	r2, [r0, #0x3]
 8000cf4: 7883         	ldrb	r3, [r0, #0x2]
 8000cf6: ea42 2203    	orr.w	r2, r2, r3, lsl #8
 8000cfa: b212         	sxth	r2, r2
 8000cfc: f8a8 2010    	strh.w	r2, [r8, #0x10]
 8000d00: 7943         	ldrb	r3, [r0, #0x5]
 8000d02: 7904         	ldrb	r4, [r0, #0x4]
 8000d04: ea43 2304    	orr.w	r3, r3, r4, lsl #8
 8000d08: b21b         	sxth	r3, r3
 8000d0a: f8a8 3012    	strh.w	r3, [r8, #0x12]
 8000d0e: 7a44         	ldrb	r4, [r0, #0x9]
 8000d10: 7a05         	ldrb	r5, [r0, #0x8]
 8000d12: ea44 2405    	orr.w	r4, r4, r5, lsl #8
 8000d16: b224         	sxth	r4, r4
 8000d18: f8a8 4014    	strh.w	r4, [r8, #0x14]
 8000d1c: 7ac5         	ldrb	r5, [r0, #0xb]
 8000d1e: 7a86         	ldrb	r6, [r0, #0xa]
 8000d20: ea45 2506    	orr.w	r5, r5, r6, lsl #8
 8000d24: b22d         	sxth	r5, r5
 8000d26: f8a8 5016    	strh.w	r5, [r8, #0x16]
 8000d2a: 7b46         	ldrb	r6, [r0, #0xd]
 8000d2c: 7b00         	ldrb	r0, [r0, #0xc]
 8000d2e: ea46 2000    	orr.w	r0, r6, r0, lsl #8
 8000d32: b200         	sxth	r0, r0
 8000d34: f8a8 0018    	strh.w	r0, [r8, #0x18]
 8000d38: f9b8 601a    	ldrsh.w	r6, [r8, #0x1a]
 8000d3c: f04f 0a01    	mov.w	r10, #0x1
 8000d40: 428e         	cmp	r6, r1
 8000d42: d122         	bne	0x8000d8a <firmware_image+0xd8a> @ imm = #0x44
 8000d44: f9b8 601c    	ldrsh.w	r6, [r8, #0x1c]
 8000d48: 4296         	cmp	r6, r2
 8000d4a: d11e         	bne	0x8000d8a <firmware_image+0xd8a> @ imm = #0x3c
 8000d4c: f9b8 601e    	ldrsh.w	r6, [r8, #0x1e]
 8000d50: 429e         	cmp	r6, r3
 8000d52: d11a         	bne	0x8000d8a <firmware_image+0xd8a> @ imm = #0x34
 8000d54: f9b8 6020    	ldrsh.w	r6, [r8, #0x20]
 8000d58: 42a6         	cmp	r6, r4
 8000d5a: d116         	bne	0x8000d8a <firmware_image+0xd8a> @ imm = #0x2c
 8000d5c: f9b8 4022    	ldrsh.w	r4, [r8, #0x22]
 8000d60: 42ac         	cmp	r4, r5
 8000d62: d112         	bne	0x8000d8a <firmware_image+0xd8a> @ imm = #0x24
 8000d64: f9b8 4024    	ldrsh.w	r4, [r8, #0x24]
 8000d68: 4284         	cmp	r4, r0
 8000d6a: d10e         	bne	0x8000d8a <firmware_image+0xd8a> @ imm = #0x1c
 8000d6c: f8b8 000c    	ldrh.w	r0, [r8, #0xc]
 8000d70: f64f 74fe    	movw	r4, #0xfffe
 8000d74: 42a0         	cmp	r0, r4
 8000d76: d202         	bhs	0x8000d7e <firmware_image+0xd7e> @ imm = #0x4
 8000d78: 1c40         	adds	r0, r0, #0x1
 8000d7a: f8a8 000c    	strh.w	r0, [r8, #0xc]
 8000d7e: f8b8 000c    	ldrh.w	r0, [r8, #0xc]
 8000d82: 2832         	cmp	r0, #0x32
 8000d84: d901         	bls	0x8000d8a <firmware_image+0xd8a> @ imm = #0x2
 8000d86: f888 a000    	strb.w	r10, [r8]
 8000d8a: f898 4000    	ldrb.w	r4, [r8]
 8000d8e: 48ce         	ldr	r0, [pc, #0x338]        @ 0x80010c8 <firmware_image+0x10c8>
 8000d90: f04f 0900    	mov.w	r9, #0x0
 8000d94: 2c01         	cmp	r4, #0x1
 8000d96: d004         	beq	0x8000da2 <firmware_image+0xda2> @ imm = #0x8
 8000d98: 7800         	ldrb	r0, [r0]
 8000d9a: b150         	cbz	r0, 0x8000db2 <firmware_image+0xdb2> @ imm = #0x14
 8000d9c: f888 9002    	strb.w	r9, [r8, #0x2]
 8000da0: e009         	b	0x8000db6 <firmware_image+0xdb6> @ imm = #0x12
 8000da2: 7800         	ldrb	r0, [r0]
 8000da4: b110         	cbz	r0, 0x8000dac <firmware_image+0xdac> @ imm = #0x4
 8000da6: f888 a002    	strb.w	r10, [r8, #0x2]
 8000daa: e004         	b	0x8000db6 <firmware_image+0xdb6> @ imm = #0x8
 8000dac: f888 a001    	strb.w	r10, [r8, #0x1]
 8000db0: e001         	b	0x8000db6 <firmware_image+0xdb6> @ imm = #0x2
 8000db2: f888 9001    	strb.w	r9, [r8, #0x1]
 8000db6: 4248         	rsbs	r0, r1, #0
 8000db8: f44f 4100    	mov.w	r1, #0x8000
 8000dbc: 1e4e         	subs	r6, r1, #0x1
 8000dbe: 4288         	cmp	r0, r1
 8000dc0: db00         	blt	0x8000dc4 <firmware_image+0xdc4> @ imm = #0x0
 8000dc2: 4630         	mov	r0, r6
 8000dc4: 4cc1         	ldr	r4, [pc, #0x304]        @ 0x80010cc <firmware_image+0x10cc>
 8000dc6: 1c67         	adds	r7, r4, #0x1
 8000dc8: 42a0         	cmp	r0, r4
 8000dca: dc00         	bgt	0x8000dce <firmware_image+0xdce> @ imm = #0x0
 8000dcc: 4638         	mov	r0, r7
 8000dce: 4dbd         	ldr	r5, [pc, #0x2f4]        @ 0x80010c4 <firmware_image+0x10c4>
 8000dd0: 3570         	adds	r5, #0x70
 8000dd2: 8028         	strh	r0, [r5]
 8000dd4: 4610         	mov	r0, r2
 8000dd6: 4288         	cmp	r0, r1
 8000dd8: db00         	blt	0x8000ddc <firmware_image+0xddc> @ imm = #0x0
 8000dda: 4630         	mov	r0, r6
 8000ddc: 42a0         	cmp	r0, r4
 8000dde: dc00         	bgt	0x8000de2 <firmware_image+0xde2> @ imm = #0x0
 8000de0: 4638         	mov	r0, r7
 8000de2: 8068         	strh	r0, [r5, #0x2]
 8000de4: 4258         	rsbs	r0, r3, #0
 8000de6: f5b0 4f00    	cmp.w	r0, #0x8000
 8000dea: db00         	blt	0x8000dee <firmware_image+0xdee> @ imm = #0x0
 8000dec: 4630         	mov	r0, r6
 8000dee: f510 4f00    	cmn.w	r0, #0x8000
 8000df2: dc00         	bgt	0x8000df6 <firmware_image+0xdf6> @ imm = #0x0
 8000df4: 4638         	mov	r0, r7
 8000df6: 80a8         	strh	r0, [r5, #0x4]
 8000df8: f000 fae0    	bl	0x80013bc <firmware_image+0x13bc> @ imm = #0x5c0
 8000dfc: f8a8 000a    	strh.w	r0, [r8, #0xa]
 8000e00: f7ff fc2d    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x7a6
 8000e04: 4ab2         	ldr	r2, [pc, #0x2c8]        @ 0x80010d0 <firmware_image+0x10d0>
 8000e06: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x80010d4 <firmware_image+0x10d4>
 8000e08: f7ff fb3f    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x982
 8000e0c: 4604         	mov	r4, r0
 8000e0e: 460d         	mov	r5, r1
 8000e10: f8d8 0028    	ldr.w	r0, [r8, #0x28]
 8000e14: f7ff fc6c    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x728
 8000e18: 4aaf         	ldr	r2, [pc, #0x2bc]        @ 0x80010d8 <firmware_image+0x10d8>
 8000e1a: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x80010dc <firmware_image+0x10dc>
 8000e1c: f7ff fb35    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x996
 8000e20: 4622         	mov	r2, r4
 8000e22: 462b         	mov	r3, r5
 8000e24: f7ff fa8a    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0xaec
 8000e28: f7ff fc8e    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x6e4
 8000e2c: f8c8 0028    	str.w	r0, [r8, #0x28]
 8000e30: 49a4         	ldr	r1, [pc, #0x290]        @ 0x80010c4 <firmware_image+0x10c4>
 8000e32: f9b8 b014    	ldrsh.w	r11, [r8, #0x14]
 8000e36: 3182         	adds	r1, #0x82
 8000e38: f9b1 0000    	ldrsh.w	r0, [r1]
 8000e3c: 4458         	add	r0, r11
 8000e3e: 4240         	rsbs	r0, r0, #0
 8000e40: f44f 4200    	mov.w	r2, #0x8000
 8000e44: 4290         	cmp	r0, r2
 8000e46: db00         	blt	0x8000e4a <firmware_image+0xe4a> @ imm = #0x0
 8000e48: 4630         	mov	r0, r6
 8000e4a: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x80010cc <firmware_image+0x10cc>
 8000e4c: 4298         	cmp	r0, r3
 8000e4e: dc00         	bgt	0x8000e52 <firmware_image+0xe52> @ imm = #0x0
 8000e50: 4638         	mov	r0, r7
 8000e52: 4c9c         	ldr	r4, [pc, #0x270]        @ 0x80010c4 <firmware_image+0x10c4>
 8000e54: 3476         	adds	r4, #0x76
 8000e56: 8020         	strh	r0, [r4]
 8000e58: f9b1 5002    	ldrsh.w	r5, [r1, #0x2]
 8000e5c: f9b8 0016    	ldrsh.w	r0, [r8, #0x16]
 8000e60: 9004         	str	r0, [sp, #0x10]
 8000e62: 1b40         	subs	r0, r0, r5
 8000e64: 4290         	cmp	r0, r2
 8000e66: db00         	blt	0x8000e6a <firmware_image+0xe6a> @ imm = #0x0
 8000e68: 4630         	mov	r0, r6
 8000e6a: 4298         	cmp	r0, r3
 8000e6c: dc00         	bgt	0x8000e70 <firmware_image+0xe70> @ imm = #0x0
 8000e6e: 4638         	mov	r0, r7
 8000e70: 8060         	strh	r0, [r4, #0x2]
 8000e72: f9b1 1004    	ldrsh.w	r1, [r1, #0x4]
 8000e76: f9b8 0018    	ldrsh.w	r0, [r8, #0x18]
 8000e7a: 9003         	str	r0, [sp, #0xc]
 8000e7c: 4408         	add	r0, r1
 8000e7e: 4240         	rsbs	r0, r0, #0
 8000e80: 4290         	cmp	r0, r2
 8000e82: db00         	blt	0x8000e86 <firmware_image+0xe86> @ imm = #0x0
 8000e84: 4630         	mov	r0, r6
 8000e86: 4298         	cmp	r0, r3
 8000e88: dc00         	bgt	0x8000e8c <firmware_image+0xe8c> @ imm = #0x0
 8000e8a: 4638         	mov	r0, r7
 8000e8c: 80a0         	strh	r0, [r4, #0x4]
 8000e8e: f9b8 000e    	ldrsh.w	r0, [r8, #0xe]
 8000e92: 4240         	rsbs	r0, r0, #0
 8000e94: f7ff fbe3    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x83a
 8000e98: 4a91         	ldr	r2, [pc, #0x244]        @ 0x80010e0 <firmware_image+0x10e0>
 8000e9a: 4b92         	ldr	r3, [pc, #0x248]        @ 0x80010e4 <firmware_image+0x10e4>
 8000e9c: f7ff faf5    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xa16
 8000ea0: 4604         	mov	r4, r0
 8000ea2: 460d         	mov	r5, r1
 8000ea4: f8d8 004c    	ldr.w	r0, [r8, #0x4c]
 8000ea8: f7ff fc22    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x7bc
 8000eac: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x80010e8 <firmware_image+0x10e8>
 8000eae: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x80010ec <firmware_image+0x10ec>
 8000eb0: f7ff faeb    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xa2a
 8000eb4: 4622         	mov	r2, r4
 8000eb6: 462b         	mov	r3, r5
 8000eb8: f7ff fa40    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0xb80
 8000ebc: f7ff fc44    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x778
 8000ec0: f8c8 004c    	str.w	r0, [r8, #0x4c]
 8000ec4: 9002         	str	r0, [sp, #0x8]
 8000ec6: f9b8 0010    	ldrsh.w	r0, [r8, #0x10]
 8000eca: f7ff fbc8    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x870
 8000ece: 4a84         	ldr	r2, [pc, #0x210]        @ 0x80010e0 <firmware_image+0x10e0>
 8000ed0: 4b84         	ldr	r3, [pc, #0x210]        @ 0x80010e4 <firmware_image+0x10e4>
 8000ed2: f7ff fada    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xa4c
 8000ed6: 4604         	mov	r4, r0
 8000ed8: 460d         	mov	r5, r1
 8000eda: f8d8 0050    	ldr.w	r0, [r8, #0x50]
 8000ede: f7ff fc07    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x7f2
 8000ee2: 4a81         	ldr	r2, [pc, #0x204]        @ 0x80010e8 <firmware_image+0x10e8>
 8000ee4: 4b81         	ldr	r3, [pc, #0x204]        @ 0x80010ec <firmware_image+0x10ec>
 8000ee6: f7ff fad0    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xa60
 8000eea: 4622         	mov	r2, r4
 8000eec: 462b         	mov	r3, r5
 8000eee: f7ff fa25    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0xbb6
 8000ef2: f7ff fc29    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x7ae
 8000ef6: f8c8 0050    	str.w	r0, [r8, #0x50]
 8000efa: 9001         	str	r0, [sp, #0x4]
 8000efc: f9b8 0012    	ldrsh.w	r0, [r8, #0x12]
 8000f00: 4240         	rsbs	r0, r0, #0
 8000f02: f7ff fbac    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x8a8
 8000f06: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f08: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x80010e4 <firmware_image+0x10e4>
 8000f0a: f7ff fabe    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xa84
 8000f0e: 4604         	mov	r4, r0
 8000f10: 460d         	mov	r5, r1
 8000f12: f8d8 0054    	ldr.w	r0, [r8, #0x54]
 8000f16: f7ff fbeb    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x82a
 8000f1a: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x80010e8 <firmware_image+0x10e8>
 8000f1c: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x80010ec <firmware_image+0x10ec>
 8000f1e: f7ff fab4    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xa98
 8000f22: 4622         	mov	r2, r4
 8000f24: 462b         	mov	r3, r5
 8000f26: f7ff fa09    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0xbee
 8000f2a: f7ff fc0d    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x7e6
 8000f2e: f8c8 0054    	str.w	r0, [r8, #0x54]
 8000f32: 9000         	str	r0, [sp]
 8000f34: f1cb 0000    	rsb.w	r0, r11, #0x0
 8000f38: f7ff fb91    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x8de
 8000f3c: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f3e: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x80010e4 <firmware_image+0x10e4>
 8000f40: f7ff faa3    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xaba
 8000f44: 4604         	mov	r4, r0
 8000f46: 460d         	mov	r5, r1
 8000f48: f8d8 0058    	ldr.w	r0, [r8, #0x58]
 8000f4c: f7ff fbd0    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x860
 8000f50: 4a65         	ldr	r2, [pc, #0x194]        @ 0x80010e8 <firmware_image+0x10e8>
 8000f52: 4b66         	ldr	r3, [pc, #0x198]        @ 0x80010ec <firmware_image+0x10ec>
 8000f54: f7ff fa99    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xace
 8000f58: 4622         	mov	r2, r4
 8000f5a: 462b         	mov	r3, r5
 8000f5c: f7ff f9ee    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0xc24
 8000f60: f7ff fbf2    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x81c
 8000f64: 4607         	mov	r7, r0
 8000f66: f8c8 0058    	str.w	r0, [r8, #0x58]
 8000f6a: 9804         	ldr	r0, [sp, #0x10]
 8000f6c: f7ff fb77    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x912
 8000f70: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0x80010e0 <firmware_image+0x10e0>
 8000f72: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x80010e4 <firmware_image+0x10e4>
 8000f74: f7ff fa89    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xaee
 8000f78: 4604         	mov	r4, r0
 8000f7a: 460d         	mov	r5, r1
 8000f7c: f8d8 005c    	ldr.w	r0, [r8, #0x5c]
 8000f80: f7ff fbb6    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x894
 8000f84: 4a58         	ldr	r2, [pc, #0x160]        @ 0x80010e8 <firmware_image+0x10e8>
 8000f86: 4b59         	ldr	r3, [pc, #0x164]        @ 0x80010ec <firmware_image+0x10ec>
 8000f88: f7ff fa7f    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xb02
 8000f8c: 4622         	mov	r2, r4
 8000f8e: 462b         	mov	r3, r5
 8000f90: f7ff f9d4    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0xc58
 8000f94: f7ff fbd8    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x850
 8000f98: 4606         	mov	r6, r0
 8000f9a: f8c8 005c    	str.w	r0, [r8, #0x5c]
 8000f9e: 9803         	ldr	r0, [sp, #0xc]
 8000fa0: 4240         	rsbs	r0, r0, #0
 8000fa2: f7ff fb5c    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x948
 8000fa6: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x80010e0 <firmware_image+0x10e0>
 8000fa8: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x80010e4 <firmware_image+0x10e4>
 8000faa: f7ff fa6e    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xb24
 8000fae: 4604         	mov	r4, r0
 8000fb0: 460d         	mov	r5, r1
 8000fb2: f8d8 0060    	ldr.w	r0, [r8, #0x60]
 8000fb6: f7ff fb9b    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x8ca
 8000fba: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x80010e8 <firmware_image+0x10e8>
 8000fbc: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x80010ec <firmware_image+0x10ec>
 8000fbe: f7ff fa64    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xb38
 8000fc2: 4622         	mov	r2, r4
 8000fc4: 462b         	mov	r3, r5
 8000fc6: f7ff f9b9    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0xc8e
 8000fca: f7ff fbbd    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x886
 8000fce: 4605         	mov	r5, r0
 8000fd0: f8c8 0060    	str.w	r0, [r8, #0x60]
 8000fd4: 9802         	ldr	r0, [sp, #0x8]
 8000fd6: f7ff fb53    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x95a
 8000fda: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x80010c4 <firmware_image+0x10c4>
 8000fdc: 3464         	adds	r4, #0x64
 8000fde: 8020         	strh	r0, [r4]
 8000fe0: 9801         	ldr	r0, [sp, #0x4]
 8000fe2: f7ff fb4d    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x966
 8000fe6: 8060         	strh	r0, [r4, #0x2]
 8000fe8: 9800         	ldr	r0, [sp]
 8000fea: f7ff fb49    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x96e
 8000fee: 80a0         	strh	r0, [r4, #0x4]
 8000ff0: 4638         	mov	r0, r7
 8000ff2: f7ff fb45    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x976
 8000ff6: 1da7         	adds	r7, r4, #0x6
 8000ff8: fa0f fb80    	sxth.w	r11, r0
 8000ffc: f8a7 b000    	strh.w	r11, [r7]
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
 80011dc: 4605         	mov	r5, r0
 80011de: 4620         	mov	r0, r4
 80011e0: f7ff fa34    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xb98
 80011e4: 4631         	mov	r1, r6
 80011e6: f7ff f82d    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0xfa6
 80011ea: 4606         	mov	r6, r0
 80011ec: 496a         	ldr	r1, [pc, #0x1a8]        @ 0x8001398 <firmware_image+0x1398>
 80011ee: 4628         	mov	r0, r5
 80011f0: f7ff f828    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0xfb0
 80011f4: f7ff fa44    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0xb78
 80011f8: 4968         	ldr	r1, [pc, #0x1a0]        @ 0x800139c <firmware_image+0x139c>
 80011fa: 6008         	str	r0, [r1]
 80011fc: 4968         	ldr	r1, [pc, #0x1a0]        @ 0x80013a0 <firmware_image+0x13a0>
 80011fe: f44f 7367    	mov.w	r3, #0x39c
 8001202: 680a         	ldr	r2, [r1]
 8001204: 435a         	muls	r2, r3, r2
 8001206: eb00 03c0    	add.w	r3, r0, r0, lsl #3
 800120a: eb03 1000    	add.w	r0, r3, r0, lsl #4
 800120e: eb02 0080    	add.w	r0, r2, r0, lsl #2
 8001212: 1280         	asrs	r0, r0, #0xa
 8001214: 6008         	str	r0, [r1]
 8001216: 4c5d         	ldr	r4, [pc, #0x174]        @ 0x800138c <firmware_image+0x138c>
 8001218: 1fa4         	subs	r4, r4, #0x6
 800121a: f9b4 0000    	ldrsh.w	r0, [r4]
 800121e: f7ff fa15    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xbd6
 8001222: 4683         	mov	r11, r0
 8001224: f9b4 0002    	ldrsh.w	r0, [r4, #0x2]
 8001228: f7ff fa10    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xbe0
 800122c: 4682         	mov	r10, r0
 800122e: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 8001232: f7ff fa0b    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xbea
 8001236: 9002         	str	r0, [sp, #0x8]
 8001238: 9902         	ldr	r1, [sp, #0x8]
 800123a: 4608         	mov	r0, r1
 800123c: f7ff f802    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0xffc
 8001240: 4604         	mov	r4, r0
 8001242: 4651         	mov	r1, r10
 8001244: 4650         	mov	r0, r10
 8001246: f7fe fffd    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x1006
 800124a: 4680         	mov	r8, r0
 800124c: 4659         	mov	r1, r11
 800124e: 4658         	mov	r0, r11
 8001250: f7fe fff8    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x1010
 8001254: 4641         	mov	r1, r8
 8001256: f7fe ff9d    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x10c6
 800125a: 4621         	mov	r1, r4
 800125c: f7fe ff9a    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x10cc
 8001260: f7ff fa46    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xb74
 8001264: f005 fe6e    	bl	0x8006f44 <firmware_image+0x6f44> @ imm = #0x5cdc
 8001268: f7ff fa6e    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xb24
 800126c: 4c47         	ldr	r4, [pc, #0x11c]        @ 0x800138c <firmware_image+0x138c>
 800126e: 3c76         	subs	r4, #0x76
 8001270: 64a0         	str	r0, [r4, #0x48]
 8001272: 4601         	mov	r1, r0
 8001274: 4658         	mov	r0, r11
 8001276: f7ff f817    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0xfd2
 800127a: f7ff fa39    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xb8e
 800127e: f005 f8d5    	bl	0x800642c <firmware_image+0x642c> @ imm = #0x51aa
 8001282: f8df 8120    	ldr.w	r8, [pc, #0x120]        @ 0x80013a4 <firmware_image+0x13a4>
 8001286: f04f 4980    	mov.w	r9, #0x40000000
 800128a: 464a         	mov	r2, r9
 800128c: 4643         	mov	r3, r8
 800128e: f7ff f8fc    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xe08
 8001292: f7ff fa59    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xb4e
 8001296: 6420         	str	r0, [r4, #0x40]
 8001298: 4650         	mov	r0, r10
 800129a: 6ca1         	ldr	r1, [r4, #0x48]
 800129c: f7ff f804    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0xff8
 80012a0: f7ff fa26    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xbb4
 80012a4: f005 f8c2    	bl	0x800642c <firmware_image+0x642c> @ imm = #0x5184
 80012a8: 464a         	mov	r2, r9
 80012aa: 4643         	mov	r3, r8
 80012ac: f7ff f8ed    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xe26
 80012b0: f7ff fa4a    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xb6c
 80012b4: 6460         	str	r0, [r4, #0x44]
 80012b6: 9902         	ldr	r1, [sp, #0x8]
 80012b8: 465b         	mov	r3, r11
 80012ba: e9cd a100    	strd	r10, r1, [sp]
 80012be: 4632         	mov	r2, r6
 80012c0: 4629         	mov	r1, r5
 80012c2: 4638         	mov	r0, r7
 80012c4: f001 fdfc    	bl	0x8002ec0 <firmware_image+0x2ec0> @ imm = #0x1bf8
 80012c8: 4837         	ldr	r0, [pc, #0xdc]         @ 0x80013a8 <firmware_image+0x13a8>
 80012ca: f001 fd65    	bl	0x8002d98 <firmware_image+0x2d98> @ imm = #0x1aca
 80012ce: f9b4 0006    	ldrsh.w	r0, [r4, #0x6]
 80012d2: f7ff f9bb    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xc8a
 80012d6: 4605         	mov	r5, r0
 80012d8: 9003         	str	r0, [sp, #0xc]
 80012da: 4833         	ldr	r0, [pc, #0xcc]         @ 0x80013a8 <firmware_image+0x13a8>
 80012dc: f8df b0cc    	ldr.w	r11, [pc, #0xcc]        @ 0x80013ac <firmware_image+0x13ac>
 80012e0: 6800         	ldr	r0, [r0]
 80012e2: 4659         	mov	r1, r11
 80012e4: f7fe ffae    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x10a4
 80012e8: 4629         	mov	r1, r5
 80012ea: f7fe ffa5    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x10b6
 80012ee: 63e0         	str	r0, [r4, #0x3c]
 80012f0: 6c60         	ldr	r0, [r4, #0x44]
 80012f2: f7ff f9fd    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xc06
 80012f6: 4f2e         	ldr	r7, [pc, #0xb8]         @ 0x80013b0 <firmware_image+0x13b0>
 80012f8: f8df 80b8    	ldr.w	r8, [pc, #0xb8]         @ 0x80013b4 <firmware_image+0x13b4>
 80012fc: 463a         	mov	r2, r7
 80012fe: 4643         	mov	r3, r8
 8001300: f7ff f8c3    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xe7a
 8001304: 4605         	mov	r5, r0
 8001306: 460e         	mov	r6, r1
 8001308: 6b20         	ldr	r0, [r4, #0x30]
 800130a: f7ff f9f1    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xc1e
 800130e: f8df a0a8    	ldr.w	r10, [pc, #0xa8]        @ 0x80013b8 <firmware_image+0x13b8>
 8001312: ea4f 0967    	asr.w	r9, r7, #0x1
 8001316: 464a         	mov	r2, r9
 8001318: 4653         	mov	r3, r10
 800131a: f7ff f8b6    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xe94
 800131e: 462a         	mov	r2, r5
 8001320: 4633         	mov	r3, r6
 8001322: f7ff f80b    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0xfea
 8001326: f7ff fa0f    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xbe2
 800132a: 4605         	mov	r5, r0
 800132c: 6320         	str	r0, [r4, #0x30]
 800132e: f9b4 0008    	ldrsh.w	r0, [r4, #0x8]
 8001332: f7ff f98b    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0xcea
 8001336: 4659         	mov	r1, r11
 8001338: f7fe ffb6    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x1094
 800133c: 4629         	mov	r1, r5
 800133e: f7fe ff7e    	bl	0x800023e <firmware_image+0x23e> @ imm = #-0x1104
 8001342: 62e0         	str	r0, [r4, #0x2c]
 8001344: 6c20         	ldr	r0, [r4, #0x40]
 8001346: f080 4000    	eor	r0, r0, #0x80000000
 800134a: f7ff f9d1    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xc5e
 800134e: 463a         	mov	r2, r7
 8001350: 4643         	mov	r3, r8
 8001352: f7ff f89a    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xecc
 8001356: 4605         	mov	r5, r0
 8001358: 460e         	mov	r6, r1
 800135a: 6ba0         	ldr	r0, [r4, #0x38]
 800135c: f7ff f9c8    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xc70
 8001360: 464a         	mov	r2, r9
 8001362: 4653         	mov	r3, r10
 8001364: f7ff f891    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xede
 8001368: 462a         	mov	r2, r5
 800136a: 4633         	mov	r3, r6
 800136c: f7fe ffe6    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x1034
 8001370: f7ff f9ea    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0xc2c
 8001374: 4605         	mov	r5, r0
 8001376: 63a0         	str	r0, [r4, #0x38]
 8001378: 4659         	mov	r1, r11
 800137a: 9803         	ldr	r0, [sp, #0xc]
 800137c: f7fe ff94    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x10d8
 8001380: 4629         	mov	r1, r5
 8001382: f7fe ff5c    	bl	0x800023e <firmware_image+0x23e> @ imm = #-0x1148
 8001386: 6360         	str	r0, [r4, #0x34]
 8001388: e8bd 9fff    	pop.w	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
 800138c: 020a         	lsls	r2, r1, #0x8
 800138e: 2000         	movs	r0, #0x0
 8001390: 0096         	lsls	r6, r2, #0x2
 8001392: 2000         	movs	r0, #0x0
 8001394: a058         	adr	r0, #352 <firmware_image+0x13f0>
 8001396: 398b         	subs	r1, #0x8b
 8001398: 4000         	ands	r0, r0
 800139a: 461c         	mov	r4, r3
 800139c: 0100         	lsls	r0, r0, #0x4
 800139e: 2000         	movs	r0, #0x0
 80013a0: 0138         	lsls	r0, r7, #0x4
 80013a2: 2000         	movs	r0, #0x0
 80013a4: a5dc         	adr	r5, #880 <firmware_image+0x1484>
 80013a6: 404c         	eors	r4, r1
 80013a8: 02e8         	lsls	r0, r5, #0xb
 80013aa: 2000         	movs	r0, #0x0
 80013ac: 0000         	movs	r0, r0
 80013ae: 42c8         	cmn	r0, r1
 80013b0: 999a         	ldr	r1, [sp, #0x268]
 80013b2: 9999         	ldr	r1, [sp, #0x264]
 80013b4: 9999         	ldr	r1, [sp, #0x264]
 80013b6: 3fb9         	subs	r7, #0xb9
 80013b8: cccc         	ldm	r4!, {r2, r3, r6, r7}
 80013ba: 3fec         	subs	r7, #0xec
 80013bc: 4807         	ldr	r0, [pc, #0x1c]         @ 0x80013dc <firmware_image+0x13dc>
 80013be: 79c1         	ldrb	r1, [r0, #0x7]
 80013c0: 7980         	ldrb	r0, [r0, #0x6]
 80013c2: ea41 2000    	orr.w	r0, r1, r0, lsl #8
 80013c6: b200         	sxth	r0, r0
 80013c8: f243 0184    	movw	r1, #0x3084
 80013cc: 4408         	add	r0, r1
 80013ce: f44f 71aa    	mov.w	r1, #0x154
 80013d2: fb90 f0f1    	sdiv	r0, r0, r1
 80013d6: b200         	sxth	r0, r0
 80013d8: 4770         	bx	lr
 80013da: 0000         	movs	r0, r0
 80013dc: 02d8         	lsls	r0, r3, #0xb
 80013de: 2000         	movs	r0, #0x0
 80013e0: e92d 5ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 80013e4: 4891         	ldr	r0, [pc, #0x244]        @ 0x800162c <firmware_image+0x162c>
 80013e6: 6800         	ldr	r0, [r0]
 80013e8: f7ff f982    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0xcfc
 80013ec: 4f90         	ldr	r7, [pc, #0x240]        @ 0x8001630 <firmware_image+0x1630>
 80013ee: 4b91         	ldr	r3, [pc, #0x244]        @ 0x8001634 <firmware_image+0x1634>
 80013f0: 463a         	mov	r2, r7
 80013f2: f7ff f84a    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0xf6c
 80013f6: 4c90         	ldr	r4, [pc, #0x240]        @ 0x8001638 <firmware_image+0x1638>
 80013f8: 4605         	mov	r5, r0
 80013fa: 460e         	mov	r6, r1
 80013fc: 6be0         	ldr	r0, [r4, #0x3c]
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
 800227c: 4608         	mov	r0, r1
 800227e: 4282         	cmp	r2, r0
 8002280: dc03         	bgt	0x800228a <firmware_image+0x228a> @ imm = #0x6
 8002282: 4240         	rsbs	r0, r0, #0
 8002284: 4282         	cmp	r2, r0
 8002286: db00         	blt	0x800228a <firmware_image+0x228a> @ imm = #0x0
 8002288: 4610         	mov	r0, r2
 800228a: 4770         	bx	lr
 800228c: 4770         	bx	lr
 800228e: 0000         	movs	r0, r0
 8002290: b530         	push	{r4, r5, lr}
 8002292: 4835         	ldr	r0, [pc, #0xd4]         @ 0x8002368 <firmware_image+0x2368>
 8002294: 6800         	ldr	r0, [r0]
 8002296: 4935         	ldr	r1, [pc, #0xd4]         @ 0x800236c <firmware_image+0x236c>
 8002298: f000 0002    	and	r0, r0, #0x2
 800229c: 8088         	strh	r0, [r1, #0x4]
 800229e: 88cb         	ldrh	r3, [r1, #0x6]
 80022a0: 461d         	mov	r5, r3
 80022a2: 4383         	bics	r3, r0
 80022a4: 814b         	strh	r3, [r1, #0xa]
 80022a6: 461c         	mov	r4, r3
 80022a8: ea20 0205    	bic.w	r2, r0, r5
 80022ac: 810a         	strh	r2, [r1, #0x8]
 80022ae: 80c8         	strh	r0, [r1, #0x6]
 80022b0: f64f 73ff    	movw	r3, #0xffff
 80022b4: 2800         	cmp	r0, #0x0
 80022b6: d005         	beq	0x80022c4 <firmware_image+0x22c4> @ imm = #0xa
 80022b8: 8a08         	ldrh	r0, [r1, #0x10]
 80022ba: 4298         	cmp	r0, r3
 80022bc: d207         	bhs	0x80022ce <firmware_image+0x22ce> @ imm = #0xe
 80022be: 1c40         	adds	r0, r0, #0x1
 80022c0: 8208         	strh	r0, [r1, #0x10]
 80022c2: e004         	b	0x80022ce <firmware_image+0x22ce> @ imm = #0x8
 80022c4: 8a48         	ldrh	r0, [r1, #0x12]
 80022c6: 4298         	cmp	r0, r3
 80022c8: d201         	bhs	0x80022ce <firmware_image+0x22ce> @ imm = #0x2
 80022ca: 1c40         	adds	r0, r0, #0x1
 80022cc: 8248         	strh	r0, [r1, #0x12]
 80022ce: 2300         	movs	r3, #0x0
 80022d0: b172         	cbz	r2, 0x80022f0 <firmware_image+0x22f0> @ imm = #0x1c
 80022d2: 820b         	strh	r3, [r1, #0x10]
 80022d4: 8a48         	ldrh	r0, [r1, #0x12]
 80022d6: 81c8         	strh	r0, [r1, #0xe]
 80022d8: 3851         	subs	r0, #0x51
 80022da: 2822         	cmp	r0, #0x22
 80022dc: d208         	bhs	0x80022f0 <firmware_image+0x22f0> @ imm = #0x10
 80022de: 7848         	ldrb	r0, [r1, #0x1]
 80022e0: b930         	cbnz	r0, 0x80022f0 <firmware_image+0x22f0> @ imm = #0xc
 80022e2: 2001         	movs	r0, #0x1
 80022e4: 7048         	strb	r0, [r1, #0x1]
 80022e6: 614b         	str	r3, [r1, #0x14]
 80022e8: 700b         	strb	r3, [r1]
 80022ea: 6988         	ldr	r0, [r1, #0x18]
 80022ec: 1c40         	adds	r0, r0, #0x1
 80022ee: 6188         	str	r0, [r1, #0x18]
 80022f0: 2c00         	cmp	r4, #0x0
 80022f2: d012         	beq	0x800231a <firmware_image+0x231a> @ imm = #0x24
 80022f4: 824b         	strh	r3, [r1, #0x12]
 80022f6: 8a08         	ldrh	r0, [r1, #0x10]
 80022f8: 8188         	strh	r0, [r1, #0xc]
 80022fa: 784a         	ldrb	r2, [r1, #0x1]
 80022fc: 2a00         	cmp	r2, #0x0
 80022fe: d00c         	beq	0x800231a <firmware_image+0x231a> @ imm = #0x18
 8002300: 1e82         	subs	r2, r0, #0x2
 8002302: 2a04         	cmp	r2, #0x4
 8002304: d814         	bhi	0x8002330 <firmware_image+0x2330> @ imm = #0x28
 8002306: 7808         	ldrb	r0, [r1]
 8002308: 2817         	cmp	r0, #0x17
 800230a: d207         	bhs	0x800231c <firmware_image+0x231c> @ imm = #0xe
 800230c: 694a         	ldr	r2, [r1, #0x14]
 800230e: 0052         	lsls	r2, r2, #0x1
 8002310: f022 0201    	bic	r2, r2, #0x1
 8002314: 614a         	str	r2, [r1, #0x14]
 8002316: 1c40         	adds	r0, r0, #0x1
 8002318: 7008         	strb	r0, [r1]
 800231a: bd30         	pop	{r4, r5, pc}
 800231c: 694a         	ldr	r2, [r1, #0x14]
 800231e: 0052         	lsls	r2, r2, #0x1
 8002320: f022 0201    	bic	r2, r2, #0x1
 8002324: 614a         	str	r2, [r1, #0x14]
 8002326: 1c40         	adds	r0, r0, #0x1
 8002328: 7008         	strb	r0, [r1]
 800232a: 61ca         	str	r2, [r1, #0x1c]
 800232c: 704b         	strb	r3, [r1, #0x1]
 800232e: bd30         	pop	{r4, r5, pc}
 8002330: 1f80         	subs	r0, r0, #0x6
 8002332: 2806         	cmp	r0, #0x6
 8002334: d214         	bhs	0x8002360 <firmware_image+0x2360> @ imm = #0x28
 8002336: 7808         	ldrb	r0, [r1]
 8002338: 2817         	cmp	r0, #0x17
 800233a: d207         	bhs	0x800234c <firmware_image+0x234c> @ imm = #0xe
 800233c: 694a         	ldr	r2, [r1, #0x14]
 800233e: 0052         	lsls	r2, r2, #0x1
 8002340: f042 0201    	orr	r2, r2, #0x1
 8002344: 614a         	str	r2, [r1, #0x14]
 8002346: 1c40         	adds	r0, r0, #0x1
 8002348: 7008         	strb	r0, [r1]
 800234a: bd30         	pop	{r4, r5, pc}
 800234c: 694a         	ldr	r2, [r1, #0x14]
 800234e: 0052         	lsls	r2, r2, #0x1
 8002350: f042 0201    	orr	r2, r2, #0x1
 8002354: 614a         	str	r2, [r1, #0x14]
 8002356: 1c40         	adds	r0, r0, #0x1
 8002358: 7008         	strb	r0, [r1]
 800235a: 61ca         	str	r2, [r1, #0x1c]
 800235c: 704b         	strb	r3, [r1, #0x1]
 800235e: bd30         	pop	{r4, r5, pc}
 8002360: 704b         	strb	r3, [r1, #0x1]
 8002362: 614b         	str	r3, [r1, #0x14]
 8002364: 700b         	strb	r3, [r1]
 8002366: bd30         	pop	{r4, r5, pc}
 8002368: 1410         	asrs	r0, r2, #0x10
 800236a: 4800         	ldr	r0, [pc, #0x0]          @ 0x800236c <firmware_image+0x236c>
 800236c: 016c         	lsls	r4, r5, #0x5
 800236e: 2000         	movs	r0, #0x0
 8002370: 4a11         	ldr	r2, [pc, #0x44]         @ 0x80023b8 <firmware_image+0x23b8>
 8002372: 2300         	movs	r3, #0x0
 8002374: 4610         	mov	r0, r2
 8002376: 78d1         	ldrb	r1, [r2, #0x3]
 8002378: 69c0         	ldr	r0, [r0, #0x1c]
 800237a: 2900         	cmp	r1, #0x0
 800237c: d004         	beq	0x8002388 <firmware_image+0x2388> @ imm = #0x8
 800237e: 2901         	cmp	r1, #0x1
 8002380: d006         	beq	0x8002390 <firmware_image+0x2390> @ imm = #0xc
 8002382: 2902         	cmp	r1, #0x2
 8002384: d10e         	bne	0x80023a4 <firmware_image+0x23a4> @ imm = #0x1c
 8002386: e00b         	b	0x80023a0 <firmware_image+0x23a0> @ imm = #0x16
 8002388: b160         	cbz	r0, 0x80023a4 <firmware_image+0x23a4> @ imm = #0x18
 800238a: 2101         	movs	r1, #0x1
 800238c: 70d1         	strb	r1, [r2, #0x3]
 800238e: e009         	b	0x80023a4 <firmware_image+0x23a4> @ imm = #0x12
 8002390: b120         	cbz	r0, 0x800239c <firmware_image+0x239c> @ imm = #0x8
 8002392: 7891         	ldrb	r1, [r2, #0x2]
 8002394: 6251         	str	r1, [r2, #0x24]
 8002396: 2102         	movs	r1, #0x2
 8002398: 70d1         	strb	r1, [r2, #0x3]
 800239a: e003         	b	0x80023a4 <firmware_image+0x23a4> @ imm = #0x6
 800239c: 70d3         	strb	r3, [r2, #0x3]
 800239e: e001         	b	0x80023a4 <firmware_image+0x23a4> @ imm = #0x2
 80023a0: b900         	cbnz	r0, 0x80023a4 <firmware_image+0x23a4> @ imm = #0x0
 80023a2: 70d3         	strb	r3, [r2, #0x3]
 80023a4: b128         	cbz	r0, 0x80023b2 <firmware_image+0x23b2> @ imm = #0xa
 80023a6: f000 000f    	and	r0, r0, #0xf
 80023aa: 6210         	str	r0, [r2, #0x20]
 80023ac: 7090         	strb	r0, [r2, #0x2]
 80023ae: 61d3         	str	r3, [r2, #0x1c]
 80023b0: 4770         	bx	lr
 80023b2: 6213         	str	r3, [r2, #0x20]
 80023b4: 7093         	strb	r3, [r2, #0x2]
 80023b6: 4770         	bx	lr
 80023b8: 016c         	lsls	r4, r5, #0x5
 80023ba: 2000         	movs	r0, #0x0
 80023bc: 4803         	ldr	r0, [pc, #0xc]          @ 0x80023cc <firmware_image+0x23cc>
 80023be: 7800         	ldrb	r0, [r0]
 80023c0: 2800         	cmp	r0, #0x0
 80023c2: d101         	bne	0x80023c8 <firmware_image+0x23c8> @ imm = #0x2
 80023c4: f7ff bfd4    	b.w	0x8002370 <firmware_image+0x2370> @ imm = #-0x58
 80023c8: 4770         	bx	lr
 80023ca: 0000         	movs	r0, r0
 80023cc: 021e         	lsls	r6, r3, #0x8
 80023ce: 2000         	movs	r0, #0x0
 80023d0: 1e40         	subs	r0, r0, #0x1
 80023d2: 1c41         	adds	r1, r0, #0x1
 80023d4: d1fc         	bne	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x8
 80023d6: 4770         	bx	lr
 80023d8: b510         	push	{r4, lr}
 80023da: f44f 5480    	mov.w	r4, #0x1000
 80023de: 4620         	mov	r0, r4
 80023e0: f000 f810    	bl	0x8002404 <firmware_image+0x2404> @ imm = #0x20
 80023e4: 2800         	cmp	r0, #0x0
 80023e6: d006         	beq	0x80023f6 <firmware_image+0x23f6> @ imm = #0xc
 80023e8: f001 f9cf    	bl	0x800378a <firmware_image+0x378a> @ imm = #0x139e
 80023ec: 4620         	mov	r0, r4
 80023ee: e8bd 4010    	pop.w	{r4, lr}
 80023f2: f000 b801    	b.w	0x80023f8 <firmware_image+0x23f8> @ imm = #0x2
 80023f6: bd10         	pop	{r4, pc}
 80023f8: 4901         	ldr	r1, [pc, #0x4]          @ 0x8002400 <firmware_image+0x2400>
 80023fa: 6008         	str	r0, [r1]
 80023fc: 4770         	bx	lr
 80023fe: 0000         	movs	r0, r0
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
 8002424: 4901         	ldr	r1, [pc, #0x4]          @ 0x800242c <firmware_image+0x242c>
 8002426: 60c8         	str	r0, [r1, #0xc]
 8002428: 4770         	bx	lr
 800242a: 0000         	movs	r0, r0
 800242c: 2000         	movs	r0, #0x0
 800242e: 4002         	ands	r2, r0
 8002430: b570         	push	{r4, r5, r6, lr}
 8002432: 4605         	mov	r5, r0
 8002434: f44f 2670    	mov.w	r6, #0xf0000
 8002438: 4630         	mov	r0, r6
 800243a: f000 f85d    	bl	0x80024f8 <firmware_image+0x24f8> @ imm = #0xba
 800243e: 2800         	cmp	r0, #0x0
 8002440: d110         	bne	0x8002464 <firmware_image+0x2464> @ imm = #0x20
 8002442: 4c09         	ldr	r4, [pc, #0x24]         @ 0x8002468 <firmware_image+0x2468>
 8002444: 6920         	ldr	r0, [r4, #0x10]
 8002446: f040 0002    	orr	r0, r0, #0x2
 800244a: 6120         	str	r0, [r4, #0x10]
 800244c: 6165         	str	r5, [r4, #0x14]
 800244e: 6920         	ldr	r0, [r4, #0x10]
 8002450: f040 0040    	orr	r0, r0, #0x40
 8002454: 6120         	str	r0, [r4, #0x10]
 8002456: 4630         	mov	r0, r6
 8002458: f000 f84e    	bl	0x80024f8 <firmware_image+0x24f8> @ imm = #0x9c
 800245c: 6921         	ldr	r1, [r4, #0x10]
 800245e: f021 0102    	bic	r1, r1, #0x2
 8002462: 6121         	str	r1, [r4, #0x10]
 8002464: bd70         	pop	{r4, r5, r6, pc}
 8002466: 0000         	movs	r0, r0
 8002468: 2000         	movs	r0, #0x0
 800246a: 4002         	ands	r2, r0
 800246c: 2000         	movs	r0, #0x0
 800246e: 4908         	ldr	r1, [pc, #0x20]         @ 0x8002490 <firmware_image+0x2490>
 8002470: 68ca         	ldr	r2, [r1, #0xc]
 8002472: 07d2         	lsls	r2, r2, #0x1f
 8002474: d001         	beq	0x800247a <firmware_image+0x247a> @ imm = #0x2
 8002476: 2001         	movs	r0, #0x1
 8002478: 4770         	bx	lr
 800247a: 68ca         	ldr	r2, [r1, #0xc]
 800247c: 06d2         	lsls	r2, r2, #0x1b
 800247e: d501         	bpl	0x8002484 <firmware_image+0x2484> @ imm = #0x2
 8002480: 2002         	movs	r0, #0x2
 8002482: 4770         	bx	lr
 8002484: 68c9         	ldr	r1, [r1, #0xc]
 8002486: 0749         	lsls	r1, r1, #0x1d
 8002488: d5fb         	bpl	0x8002482 <firmware_image+0x2482> @ imm = #-0xa
 800248a: 2003         	movs	r0, #0x3
 800248c: 4770         	bx	lr
 800248e: 0000         	movs	r0, r0
 8002490: 2000         	movs	r0, #0x0
 8002492: 4002         	ands	r2, r0
 8002494: 4802         	ldr	r0, [pc, #0x8]          @ 0x80024a0 <firmware_image+0x24a0>
 8002496: 6901         	ldr	r1, [r0, #0x10]
 8002498: f041 0180    	orr	r1, r1, #0x80
 800249c: 6101         	str	r1, [r0, #0x10]
 800249e: 4770         	bx	lr
 80024a0: 2000         	movs	r0, #0x0
 80024a2: 4002         	ands	r2, r0
 80024a4: b5f0         	push	{r4, r5, r6, r7, lr}
 80024a6: 4606         	mov	r6, r0
 80024a8: 460d         	mov	r5, r1
 80024aa: f44f 2770    	mov.w	r7, #0xf0000
 80024ae: 4638         	mov	r0, r7
 80024b0: f000 f822    	bl	0x80024f8 <firmware_image+0x24f8> @ imm = #0x44
 80024b4: 2800         	cmp	r0, #0x0
 80024b6: d10c         	bne	0x80024d2 <firmware_image+0x24d2> @ imm = #0x18
 80024b8: 4c06         	ldr	r4, [pc, #0x18]         @ 0x80024d4 <firmware_image+0x24d4>
 80024ba: 6920         	ldr	r0, [r4, #0x10]
 80024bc: f040 0001    	orr	r0, r0, #0x1
 80024c0: 6120         	str	r0, [r4, #0x10]
 80024c2: 8035         	strh	r5, [r6]
 80024c4: 4638         	mov	r0, r7
 80024c6: f000 f817    	bl	0x80024f8 <firmware_image+0x24f8> @ imm = #0x2e
 80024ca: 6921         	ldr	r1, [r4, #0x10]
 80024cc: f021 0101    	bic	r1, r1, #0x1
 80024d0: 6121         	str	r1, [r4, #0x10]
 80024d2: bdf0         	pop	{r4, r5, r6, r7, pc}
 80024d4: 2000         	movs	r0, #0x0
 80024d6: 4002         	ands	r2, r0
 80024d8: 4804         	ldr	r0, [pc, #0x10]         @ 0x80024ec <firmware_image+0x24ec>
 80024da: 6901         	ldr	r1, [r0, #0x10]
 80024dc: 0609         	lsls	r1, r1, #0x18
 80024de: d503         	bpl	0x80024e8 <firmware_image+0x24e8> @ imm = #0x6
 80024e0: 4903         	ldr	r1, [pc, #0xc]          @ 0x80024f0 <firmware_image+0x24f0>
 80024e2: 6041         	str	r1, [r0, #0x4]
 80024e4: 4903         	ldr	r1, [pc, #0xc]          @ 0x80024f4 <firmware_image+0x24f4>
 80024e6: 6041         	str	r1, [r0, #0x4]
 80024e8: 4770         	bx	lr
 80024ea: 0000         	movs	r0, r0
 80024ec: 2000         	movs	r0, #0x0
 80024ee: 4002         	ands	r2, r0
 80024f0: 0123         	lsls	r3, r4, #0x4
 80024f2: 4567         	cmp	r7, r12
 80024f4: 89ab         	ldrh	r3, [r5, #0xc]
 80024f6: cdef         	ldm	r5, {r0, r1, r2, r3, r5, r6, r7}
 80024f8: b500         	push	{lr}
 80024fa: 4603         	mov	r3, r0
 80024fc: f7ff ffb6    	bl	0x800246c <firmware_image+0x246c> @ imm = #-0x94
 8002500: 1e5b         	subs	r3, r3, #0x1
 8002502: 2801         	cmp	r0, #0x1
 8002504: d101         	bne	0x800250a <firmware_image+0x250a> @ imm = #0x2
 8002506: 2b00         	cmp	r3, #0x0
 8002508: d1f8         	bne	0x80024fc <firmware_image+0x24fc> @ imm = #-0x10
 800250a: 2801         	cmp	r0, #0x1
 800250c: d100         	bne	0x8002510 <firmware_image+0x2510> @ imm = #0x0
 800250e: 2004         	movs	r0, #0x4
 8002510: bd00         	pop	{pc}
 8002512: 0000         	movs	r0, r0
 8002514: 4903         	ldr	r1, [pc, #0xc]          @ 0x8002524 <firmware_image+0x2524>
 8002516: 2000         	movs	r0, #0x0
 8002518: 8008         	strh	r0, [r1]
 800251a: 8048         	strh	r0, [r1, #0x2]
 800251c: 4902         	ldr	r1, [pc, #0x8]          @ 0x8002528 <firmware_image+0x2528>
 800251e: 8008         	strh	r0, [r1]
 8002520: 8048         	strh	r0, [r1, #0x2]
 8002522: 4770         	bx	lr
 8002524: 025c         	lsls	r4, r3, #0x9
 8002526: 2000         	movs	r0, #0x0
 8002528: 0240         	lsls	r0, r0, #0x9
 800252a: 2000         	movs	r0, #0x0
 800252c: b570         	push	{r4, r5, r6, lr}
 800252e: f002 fc0d    	bl	0x8004d4c <firmware_image+0x4d4c> @ imm = #0x281a
 8002532: 491d         	ldr	r1, [pc, #0x74]         @ 0x80025a8 <firmware_image+0x25a8>
 8002534: 6008         	str	r0, [r1]
 8002536: f7ff fbf7    	bl	0x8001d28 <firmware_image+0x1d28> @ imm = #-0x812
 800253a: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x80025ac <firmware_image+0x25ac>
 800253c: 6020         	str	r0, [r4]
 800253e: f000 f915    	bl	0x800276c <firmware_image+0x276c> @ imm = #0x22a
 8002542: 4601         	mov	r1, r0
 8002544: 6820         	ldr	r0, [r4]
 8002546: f001 fe95    	bl	0x8004274 <firmware_image+0x4274> @ imm = #0x1d2a
 800254a: 4d19         	ldr	r5, [pc, #0x64]         @ 0x80025b0 <firmware_image+0x25b0>
 800254c: 6028         	str	r0, [r5]
 800254e: 4c19         	ldr	r4, [pc, #0x64]         @ 0x80025b4 <firmware_image+0x25b4>
 8002550: f9b5 0000    	ldrsh.w	r0, [r5]
 8002554: f9b4 1000    	ldrsh.w	r1, [r4]
 8002558: 4348         	muls	r0, r1, r0
 800255a: f242 7110    	movw	r1, #0x2710
 800255e: fb90 f0f1    	sdiv	r0, r0, r1
 8002562: 215e         	movs	r1, #0x5e
 8002564: 4348         	muls	r0, r1, r0
 8002566: f003 ff5d    	bl	0x8006424 <firmware_image+0x6424> @ imm = #0x3eba
 800256a: 4e13         	ldr	r6, [pc, #0x4c]         @ 0x80025b8 <firmware_image+0x25b8>
 800256c: 60f0         	str	r0, [r6, #0xc]
 800256e: f9b5 1002    	ldrsh.w	r1, [r5, #0x2]
 8002572: 4a12         	ldr	r2, [pc, #0x48]         @ 0x80025bc <firmware_image+0x25bc>
 8002574: 2000         	movs	r0, #0x0
 8002576: f001 f937    	bl	0x80037e8 <firmware_image+0x37e8> @ imm = #0x126e
 800257a: 8060         	strh	r0, [r4, #0x2]
 800257c: f9b6 0002    	ldrsh.w	r0, [r6, #0x2]
 8002580: 68f1         	ldr	r1, [r6, #0xc]
 8002582: f000 ffed    	bl	0x8003560 <firmware_image+0x3560> @ imm = #0xfda
 8002586: 8020         	strh	r0, [r4]
 8002588: 6820         	ldr	r0, [r4]
 800258a: f002 f935    	bl	0x80047f8 <firmware_image+0x47f8> @ imm = #0x226a
 800258e: 6020         	str	r0, [r4]
 8002590: f000 f8ec    	bl	0x800276c <firmware_image+0x276c> @ imm = #0x1d8
 8002594: 4601         	mov	r1, r0
 8002596: 6820         	ldr	r0, [r4]
 8002598: f002 f95e    	bl	0x8004858 <firmware_image+0x4858> @ imm = #0x22bc
 800259c: 4908         	ldr	r1, [pc, #0x20]         @ 0x80025c0 <firmware_image+0x25c0>
 800259e: 6008         	str	r0, [r1]
 80025a0: e8bd 4070    	pop.w	{r4, r5, r6, lr}
 80025a4: f002 ba8c    	b.w	0x8004ac0 <firmware_image+0x4ac0> @ imm = #0x2518
 80025a8: 024c         	lsls	r4, r1, #0x9
 80025aa: 2000         	movs	r0, #0x0
 80025ac: 0250         	lsls	r0, r2, #0x9
 80025ae: 2000         	movs	r0, #0x0
 80025b0: 0254         	lsls	r4, r2, #0x9
 80025b2: 2000         	movs	r0, #0x0
 80025b4: 0258         	lsls	r0, r3, #0x9
 80025b6: 2000         	movs	r0, #0x0
 80025b8: 023c         	lsls	r4, r7, #0x8
 80025ba: 2000         	movs	r0, #0x0
 80025bc: 04f0         	lsls	r0, r6, #0x13
 80025be: 2000         	movs	r0, #0x0
 80025c0: 025c         	lsls	r4, r3, #0x9
 80025c2: 2000         	movs	r0, #0x0
 80025c4: 4810         	ldr	r0, [pc, #0x40]         @ 0x8002608 <firmware_image+0x2608>
 80025c6: 4601         	mov	r1, r0
 80025c8: 7842         	ldrb	r2, [r0, #0x1]
 80025ca: 7909         	ldrb	r1, [r1, #0x4]
 80025cc: 2a00         	cmp	r2, #0x0
 80025ce: d00e         	beq	0x80025ee <firmware_image+0x25ee> @ imm = #0x1c
 80025d0: f021 0101    	bic	r1, r1, #0x1
 80025d4: 7101         	strb	r1, [r0, #0x4]
 80025d6: 78c1         	ldrb	r1, [r0, #0x3]
 80025d8: b169         	cbz	r1, 0x80025f6 <firmware_image+0x25f6> @ imm = #0x1a
 80025da: 7901         	ldrb	r1, [r0, #0x4]
 80025dc: f021 0102    	bic	r1, r1, #0x2
 80025e0: 7101         	strb	r1, [r0, #0x4]
 80025e2: 490a         	ldr	r1, [pc, #0x28]         @ 0x800260c <firmware_image+0x260c>
 80025e4: 7809         	ldrb	r1, [r1]
 80025e6: b159         	cbz	r1, 0x8002600 <firmware_image+0x2600> @ imm = #0x16
 80025e8: 7901         	ldrb	r1, [r0, #0x4]
 80025ea: 7141         	strb	r1, [r0, #0x5]
 80025ec: 4770         	bx	lr
 80025ee: f041 0101    	orr	r1, r1, #0x1
 80025f2: 7101         	strb	r1, [r0, #0x4]
 80025f4: e7ef         	b	0x80025d6 <firmware_image+0x25d6> @ imm = #-0x22
 80025f6: 7901         	ldrb	r1, [r0, #0x4]
 80025f8: f041 0102    	orr	r1, r1, #0x2
 80025fc: 7101         	strb	r1, [r0, #0x4]
 80025fe: e7f0         	b	0x80025e2 <firmware_image+0x25e2> @ imm = #-0x20
 8002600: 7901         	ldrb	r1, [r0, #0x4]
 8002602: 7181         	strb	r1, [r0, #0x6]
 8002604: 4770         	bx	lr
 8002606: 0000         	movs	r0, r0
 8002608: 013d         	lsls	r5, r7, #0x4
 800260a: 2000         	movs	r0, #0x0
 800260c: 021e         	lsls	r6, r3, #0x8
 800260e: 2000         	movs	r0, #0x0
 8002610: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002614: 2400         	movs	r4, #0x0
 8002616: f7ff ff5f    	bl	0x80024d8 <firmware_image+0x24d8> @ imm = #-0x142
 800261a: 2601         	movs	r6, #0x1
 800261c: 2034         	movs	r0, #0x34
 800261e: f7ff ff01    	bl	0x8002424 <firmware_image+0x2424> @ imm = #-0x1fe
 8002622: 4f09         	ldr	r7, [pc, #0x24]         @ 0x8002648 <firmware_image+0x2648>
 8002624: 4d09         	ldr	r5, [pc, #0x24]         @ 0x800264c <firmware_image+0x264c>
 8002626: e009         	b	0x800263c <firmware_image+0x263c> @ imm = #0x12
 8002628: eb07 2084    	add.w	r0, r7, r4, lsl #10
 800262c: f7ff ff00    	bl	0x8002430 <firmware_image+0x2430> @ imm = #-0x200
 8002630: 7028         	strb	r0, [r5]
 8002632: 7828         	ldrb	r0, [r5]
 8002634: 2034         	movs	r0, #0x34
 8002636: f7ff fef5    	bl	0x8002424 <firmware_image+0x2424> @ imm = #-0x216
 800263a: 1c64         	adds	r4, r4, #0x1
 800263c: 42b4         	cmp	r4, r6
 800263e: d3f3         	blo	0x8002628 <firmware_image+0x2628> @ imm = #-0x1a
 8002640: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8002644: f7ff bf26    	b.w	0x8002494 <firmware_image+0x2494> @ imm = #-0x1b4
 8002648: 7c00         	ldrb	r0, [r0, #0x10]
 800264a: 0800         	lsrs	r0, r0, #0x20
 800264c: 0144         	lsls	r4, r0, #0x5
 800264e: 2000         	movs	r0, #0x0
 8002650: b510         	push	{r4, lr}
 8002652: 4604         	mov	r4, r0
 8002654: 2300         	movs	r3, #0x0
 8002656: e007         	b	0x8002668 <firmware_image+0x2668> @ imm = #0xe
 8002658: 4620         	mov	r0, r4
 800265a: f000 f808    	bl	0x800266e <firmware_image+0x266e> @ imm = #0x10
 800265e: f821 0013    	strh.w	r0, [r1, r3, lsl #1]
 8002662: 1ca4         	adds	r4, r4, #0x2
 8002664: 1c5b         	adds	r3, r3, #0x1
 8002666: b29b         	uxth	r3, r3
 8002668: 4293         	cmp	r3, r2
 800266a: d3f5         	blo	0x8002658 <firmware_image+0x2658> @ imm = #-0x16
 800266c: bd10         	pop	{r4, pc}
 800266e: 8800         	ldrh	r0, [r0]
 8002670: 4770         	bx	lr
 8002672: 0000         	movs	r0, r0
 8002674: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8002678: 4688         	mov	r8, r1
 800267a: 4617         	mov	r7, r2
 800267c: f7ff ff2c    	bl	0x80024d8 <firmware_image+0x24d8> @ imm = #-0x1a8
 8002680: 2034         	movs	r0, #0x34
 8002682: f7ff fecf    	bl	0x8002424 <firmware_image+0x2424> @ imm = #-0x262
 8002686: 4d0b         	ldr	r5, [pc, #0x2c]         @ 0x80026b4 <firmware_image+0x26b4>
 8002688: 2400         	movs	r4, #0x0
 800268a: 4e0b         	ldr	r6, [pc, #0x2c]         @ 0x80026b8 <firmware_image+0x26b8>
 800268c: e00c         	b	0x80026a8 <firmware_image+0x26a8> @ imm = #0x18
 800268e: f838 1014    	ldrh.w	r1, [r8, r4, lsl #1]
 8002692: 4628         	mov	r0, r5
 8002694: f7ff ff06    	bl	0x80024a4 <firmware_image+0x24a4> @ imm = #-0x1f4
 8002698: 7030         	strb	r0, [r6]
 800269a: 1cad         	adds	r5, r5, #0x2
 800269c: 7830         	ldrb	r0, [r6]
 800269e: 2034         	movs	r0, #0x34
 80026a0: f7ff fec0    	bl	0x8002424 <firmware_image+0x2424> @ imm = #-0x280
 80026a4: 1c64         	adds	r4, r4, #0x1
 80026a6: b2a4         	uxth	r4, r4
 80026a8: 42bc         	cmp	r4, r7
 80026aa: d3f0         	blo	0x800268e <firmware_image+0x268e> @ imm = #-0x20
 80026ac: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80026b0: f7ff bef0    	b.w	0x8002494 <firmware_image+0x2494> @ imm = #-0x220
 80026b4: 7c00         	ldrb	r0, [r0, #0x10]
 80026b6: 0800         	lsrs	r0, r0, #0x20
 80026b8: 0144         	lsls	r4, r0, #0x5
 80026ba: 2000         	movs	r0, #0x0
 80026bc: b5f0         	push	{r4, r5, r6, r7, lr}
 80026be: 2200         	movs	r2, #0x0
 80026c0: 2601         	movs	r6, #0x1
 80026c2: 2503         	movs	r5, #0x3
 80026c4: 680c         	ldr	r4, [r1]
 80026c6: fa06 f302    	lsl.w	r3, r6, r2
 80026ca: 421c         	tst	r4, r3
 80026cc: d02e         	beq	0x800272c <firmware_image+0x272c> @ imm = #0x5c
 80026ce: 790c         	ldrb	r4, [r1, #0x4]
 80026d0: 2c01         	cmp	r4, #0x1
 80026d2: d001         	beq	0x80026d8 <firmware_image+0x26d8> @ imm = #0x2
 80026d4: 2c02         	cmp	r4, #0x2
 80026d6: d114         	bne	0x8002702 <firmware_image+0x2702> @ imm = #0x28
 80026d8: 6887         	ldr	r7, [r0, #0x8]
 80026da: 0054         	lsls	r4, r2, #0x1
 80026dc: fa05 fc04    	lsl.w	r12, r5, r4
 80026e0: ea27 070c    	bic.w	r7, r7, r12
 80026e4: 6087         	str	r7, [r0, #0x8]
 80026e6: 794f         	ldrb	r7, [r1, #0x5]
 80026e8: 40a7         	lsls	r7, r4
 80026ea: 6884         	ldr	r4, [r0, #0x8]
 80026ec: 4327         	orrs	r7, r4
 80026ee: 6087         	str	r7, [r0, #0x8]
 80026f0: 6844         	ldr	r4, [r0, #0x4]
 80026f2: 439c         	bics	r4, r3
 80026f4: 6044         	str	r4, [r0, #0x4]
 80026f6: 6843         	ldr	r3, [r0, #0x4]
 80026f8: 798c         	ldrb	r4, [r1, #0x6]
 80026fa: 4094         	lsls	r4, r2
 80026fc: b2a4         	uxth	r4, r4
 80026fe: 4323         	orrs	r3, r4
 8002700: 6043         	str	r3, [r0, #0x4]
 8002702: 68c7         	ldr	r7, [r0, #0xc]
 8002704: 0053         	lsls	r3, r2, #0x1
 8002706: fa05 f403    	lsl.w	r4, r5, r3
 800270a: 43a7         	bics	r7, r4
 800270c: 60c7         	str	r7, [r0, #0xc]
 800270e: 79cf         	ldrb	r7, [r1, #0x7]
 8002710: f8d0 c00c    	ldr.w	r12, [r0, #0xc]
 8002714: 409f         	lsls	r7, r3
 8002716: ea47 070c    	orr.w	r7, r7, r12
 800271a: 60c7         	str	r7, [r0, #0xc]
 800271c: 6807         	ldr	r7, [r0]
 800271e: 43a7         	bics	r7, r4
 8002720: 6007         	str	r7, [r0]
 8002722: 790c         	ldrb	r4, [r1, #0x4]
 8002724: 409c         	lsls	r4, r3
 8002726: 6803         	ldr	r3, [r0]
 8002728: 431c         	orrs	r4, r3
 800272a: 6004         	str	r4, [r0]
 800272c: 1c52         	adds	r2, r2, #0x1
 800272e: 2a10         	cmp	r2, #0x10
 8002730: d3c8         	blo	0x80026c4 <firmware_image+0x26c4> @ imm = #-0x70
 8002732: bdf0         	pop	{r4, r5, r6, r7, pc}
 8002734: b510         	push	{r4, lr}
 8002736: 074b         	lsls	r3, r1, #0x1d
 8002738: 0edb         	lsrs	r3, r3, #0x1b
 800273a: 409a         	lsls	r2, r3
 800273c: 08c9         	lsrs	r1, r1, #0x3
 800273e: eb00 0081    	add.w	r0, r0, r1, lsl #2
 8002742: 6a01         	ldr	r1, [r0, #0x20]
 8002744: 240f         	movs	r4, #0xf
 8002746: 409c         	lsls	r4, r3
 8002748: 43a1         	bics	r1, r4
 800274a: 6201         	str	r1, [r0, #0x20]
 800274c: 6a01         	ldr	r1, [r0, #0x20]
 800274e: 4311         	orrs	r1, r2
 8002750: 6201         	str	r1, [r0, #0x20]
 8002752: bd10         	pop	{r4, pc}
 8002754: 6900         	ldr	r0, [r0, #0x10]
 8002756: 4208         	tst	r0, r1
 8002758: d001         	beq	0x800275e <firmware_image+0x275e> @ imm = #0x2
 800275a: 2001         	movs	r0, #0x1
 800275c: 4770         	bx	lr
 800275e: 2000         	movs	r0, #0x0
 8002760: 4770         	bx	lr
 8002762: 6281         	str	r1, [r0, #0x28]
 8002764: 4770         	bx	lr
 8002766: 6181         	str	r1, [r0, #0x18]
 8002768: 4770         	bx	lr
 800276a: 0000         	movs	r0, r0
 800276c: 4801         	ldr	r0, [pc, #0x4]          @ 0x8002774 <firmware_image+0x2774>
 800276e: f9b0 002c    	ldrsh.w	r0, [r0, #0x2c]
 8002772: 4770         	bx	lr
 8002774: 0268         	lsls	r0, r5, #0x9
 8002776: 2000         	movs	r0, #0x0
 8002778: e92d 41fc    	push.w	{r2, r3, r4, r5, r6, r7, r8, lr}
 800277c: 2400         	movs	r4, #0x0
 800277e: 2500         	movs	r5, #0x0
 8002780: 2101         	movs	r1, #0x1
 8002782: f44f 00bc    	mov.w	r0, #0x5e0000
 8002786: f001 fde5    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x1bca
 800278a: 2700         	movs	r7, #0x0
 800278c: f88d 7004    	strb.w	r7, [sp, #0x4]
 8002790: 2003         	movs	r0, #0x3
 8002792: f88d 0005    	strb.w	r0, [sp, #0x5]
 8002796: f88d 7006    	strb.w	r7, [sp, #0x6]
 800279a: 2601         	movs	r6, #0x1
 800279c: f88d 6007    	strb.w	r6, [sp, #0x7]
 80027a0: 0370         	lsls	r0, r6, #0xd
 80027a2: 9000         	str	r0, [sp]
 80027a4: f8df 8058    	ldr.w	r8, [pc, #0x58]         @ 0x8002800 <firmware_image+0x2800>
 80027a8: 4669         	mov	r1, sp
 80027aa: 4640         	mov	r0, r8
 80027ac: f7ff ff86    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0xf4
 80027b0: 2102         	movs	r1, #0x2
 80027b2: 9100         	str	r1, [sp]
 80027b4: f88d 7004    	strb.w	r7, [sp, #0x4]
 80027b8: 4669         	mov	r1, sp
 80027ba: f04f 4090    	mov.w	r0, #0x48000000
 80027be: f7ff ff7d    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x106
 80027c2: 03b0         	lsls	r0, r6, #0xe
 80027c4: 9000         	str	r0, [sp]
 80027c6: f88d 7004    	strb.w	r7, [sp, #0x4]
 80027ca: 4669         	mov	r1, sp
 80027cc: 4640         	mov	r0, r8
 80027ce: f7ff ff75    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x116
 80027d2: f44f 67fa    	mov.w	r7, #0x7d0
 80027d6: f004 f931    	bl	0x8006a3c <firmware_image+0x6a3c> @ imm = #0x4262
 80027da: b108         	cbz	r0, 0x80027e0 <firmware_image+0x27e0> @ imm = #0x2
 80027dc: 2807         	cmp	r0, #0x7
 80027de: d101         	bne	0x80027e4 <firmware_image+0x27e4> @ imm = #0x2
 80027e0: 1c6d         	adds	r5, r5, #0x1
 80027e2: b2ed         	uxtb	r5, r5
 80027e4: 4638         	mov	r0, r7
 80027e6: f7ff fdf3    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x41a
 80027ea: 1c64         	adds	r4, r4, #0x1
 80027ec: b2e4         	uxtb	r4, r4
 80027ee: 2c64         	cmp	r4, #0x64
 80027f0: d3f1         	blo	0x80027d6 <firmware_image+0x27d6> @ imm = #-0x1e
 80027f2: 2d50         	cmp	r5, #0x50
 80027f4: d901         	bls	0x80027fa <firmware_image+0x27fa> @ imm = #0x2
 80027f6: 4803         	ldr	r0, [pc, #0xc]          @ 0x8002804 <firmware_image+0x2804>
 80027f8: 7046         	strb	r6, [r0, #0x1]
 80027fa: e8bd 81fc    	pop.w	{r2, r3, r4, r5, r6, r7, r8, pc}
 80027fe: 0000         	movs	r0, r0
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
 8002bf6: f7ff fdb4    	bl	0x8002762 <firmware_image+0x2762> @ imm = #-0x498
 8002bfa: f000 f8c2    	bl	0x8002d82 <firmware_image+0x2d82> @ imm = #0x184
 8002bfe: 0628         	lsls	r0, r5, #0x18
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
 8002db8: f7fd f9ec    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2c28
 8002dbc: 2101         	movs	r1, #0x1
 8002dbe: f7fd fab1    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x2a9e
 8002dc2: f04f 5a7e    	mov.w	r10, #0x3f800000
 8002dc6: 4651         	mov	r1, r10
 8002dc8: f7fd fa39    	bl	0x800023e <firmware_image+0x23e> @ imm = #-0x2b8e
 8002dcc: f7fd fc90    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x26e0
 8002dd0: 4604         	mov	r4, r0
 8002dd2: 460d         	mov	r5, r1
 8002dd4: 4641         	mov	r1, r8
 8002dd6: 6838         	ldr	r0, [r7]
 8002dd8: f7fd fa34    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2b98
 8002ddc: 4680         	mov	r8, r0
 8002dde: 4649         	mov	r1, r9
 8002de0: 6878         	ldr	r0, [r7, #0x4]
 8002de2: f7fd fa2f    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2ba2
 8002de6: 4641         	mov	r1, r8
 8002de8: f7fd f9d4    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2c58
 8002dec: 2101         	movs	r1, #0x1
 8002dee: f7fd fa99    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x2ace
 8002df2: f7fd fc7d    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x2706
 8002df6: 4622         	mov	r2, r4
 8002df8: 462b         	mov	r3, r5
 8002dfa: f003 fd5f    	bl	0x80068bc <firmware_image+0x68bc> @ imm = #0x3abe
 8002dfe: f04f 4880    	mov.w	r8, #0x40000000
 8002e02: 4642         	mov	r2, r8
 8002e04: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x8002eb8 <firmware_image+0x2eb8>
 8002e06: f7fd fb40    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x2980
 8002e0a: f7fd fc9d    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x26c6
 8002e0e: 6070         	str	r0, [r6, #0x4]
 8002e10: 68f9         	ldr	r1, [r7, #0xc]
 8002e12: 6878         	ldr	r0, [r7, #0x4]
 8002e14: f7fd fa16    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2bd4
 8002e18: 4604         	mov	r4, r0
 8002e1a: 68b9         	ldr	r1, [r7, #0x8]
 8002e1c: 6838         	ldr	r0, [r7]
 8002e1e: f7fd fa11    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2bde
 8002e22: 4621         	mov	r1, r4
 8002e24: f7fd fa08    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2bf0
 8002e28: 2101         	movs	r1, #0x1
 8002e2a: f7fd fa7b    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x2b0a
 8002e2e: f7fd fc5f    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x2742
 8002e32: f003 fafb    	bl	0x800642c <firmware_image+0x642c> @ imm = #0x35f6
 8002e36: f8df 9084    	ldr.w	r9, [pc, #0x84]         @ 0x8002ebc <firmware_image+0x2ebc>
 8002e3a: 4642         	mov	r2, r8
 8002e3c: 464b         	mov	r3, r9
 8002e3e: f7fd fb24    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x29b8
 8002e42: f7fd fc81    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x26fe
 8002e46: 6030         	str	r0, [r6]
 8002e48: 68b9         	ldr	r1, [r7, #0x8]
 8002e4a: 468b         	mov	r11, r1
 8002e4c: 4658         	mov	r0, r11
 8002e4e: f7fd f9f9    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2c0e
 8002e52: 6879         	ldr	r1, [r7, #0x4]
 8002e54: 4604         	mov	r4, r0
 8002e56: 4608         	mov	r0, r1
 8002e58: 9100         	str	r1, [sp]
 8002e5a: f7fd f9f3    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2c1a
 8002e5e: 4621         	mov	r1, r4
 8002e60: f7fd f998    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2cd0
 8002e64: 2101         	movs	r1, #0x1
 8002e66: f7fd fa5d    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x2b46
 8002e6a: 4651         	mov	r1, r10
 8002e6c: f7fd f9e7    	bl	0x800023e <firmware_image+0x23e> @ imm = #-0x2c32
 8002e70: f7fd fc3e    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x2784
 8002e74: 4604         	mov	r4, r0
 8002e76: 460d         	mov	r5, r1
 8002e78: 4658         	mov	r0, r11
 8002e7a: 68f9         	ldr	r1, [r7, #0xc]
 8002e7c: f7fd f9e2    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2c3c
 8002e80: 4682         	mov	r10, r0
 8002e82: 9900         	ldr	r1, [sp]
 8002e84: 6838         	ldr	r0, [r7]
 8002e86: f7fd f9dd    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2c46
 8002e8a: 4651         	mov	r1, r10
 8002e8c: f7fd f982    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2cfc
 8002e90: 2101         	movs	r1, #0x1
 8002e92: f7fd fa47    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x2b72
 8002e96: f7fd fc2b    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x27aa
 8002e9a: 4622         	mov	r2, r4
 8002e9c: 462b         	mov	r3, r5
 8002e9e: f003 fd0d    	bl	0x80068bc <firmware_image+0x68bc> @ imm = #0x3a1a
 8002ea2: 4642         	mov	r2, r8
 8002ea4: 464b         	mov	r3, r9
 8002ea6: f7fd faf0    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x2a20
 8002eaa: f7fd fc4d    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x2766
 8002eae: 60b0         	str	r0, [r6, #0x8]
 8002eb0: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8002eb4: 0044         	lsls	r4, r0, #0x1
 8002eb6: 2000         	movs	r0, #0x0
 8002eb8: a5dc         	adr	r5, #880 <firmware_image+0x2f98>
 8002eba: c04c         	stm	r0!, {r2, r3, r6}
 8002ebc: a5dc         	adr	r5, #880 <firmware_image+0x2f9c>
 8002ebe: 404c         	eors	r4, r1
 8002ec0: e92d 4fff    	push.w	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8002ec4: b085         	sub	sp, #0x14
 8002ec6: 461f         	mov	r7, r3
 8002ec8: e9dd 8912    	ldrd	r8, r9, [sp, #72]
 8002ecc: 4cb4         	ldr	r4, [pc, #0x2d0]        @ 0x80031a0 <firmware_image+0x31a0>
 8002ece: 6826         	ldr	r6, [r4]
 8002ed0: 6865         	ldr	r5, [r4, #0x4]
 8002ed2: 68a0         	ldr	r0, [r4, #0x8]
 8002ed4: 9002         	str	r0, [sp, #0x8]
 8002ed6: 68e0         	ldr	r0, [r4, #0xc]
 8002ed8: 9001         	str	r0, [sp, #0x4]
 8002eda: 4649         	mov	r1, r9
 8002edc: 4648         	mov	r0, r9
 8002ede: f7fd f9b1    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2c9e
 8002ee2: 4682         	mov	r10, r0
 8002ee4: 4641         	mov	r1, r8
 8002ee6: 4640         	mov	r0, r8
 8002ee8: f7fd f9ac    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2ca8
 8002eec: 4683         	mov	r11, r0
 8002eee: 4639         	mov	r1, r7
 8002ef0: 4638         	mov	r0, r7
 8002ef2: f7fd f9a7    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2cb2
 8002ef6: 4659         	mov	r1, r11
 8002ef8: f7fd f94c    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2d68
 8002efc: 4651         	mov	r1, r10
 8002efe: f7fd f949    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2d6e
 8002f02: f7fd fbf5    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x2816
 8002f06: f004 f81d    	bl	0x8006f44 <firmware_image+0x6f44> @ imm = #0x403a
 8002f0a: f7fd fc1d    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x27c6
 8002f0e: 4682         	mov	r10, r0
 8002f10: 4651         	mov	r1, r10
 8002f12: 4638         	mov	r0, r7
 8002f14: f7fd f9c8    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x2c70
 8002f18: 9008         	str	r0, [sp, #0x20]
 8002f1a: 4651         	mov	r1, r10
 8002f1c: 4640         	mov	r0, r8
 8002f1e: f7fd f9c3    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x2c7a
 8002f22: 9012         	str	r0, [sp, #0x48]
 8002f24: 4651         	mov	r1, r10
 8002f26: 4648         	mov	r0, r9
 8002f28: f7fd f9be    	bl	0x80002a8 <firmware_image+0x2a8> @ imm = #-0x2c84
 8002f2c: 9013         	str	r0, [sp, #0x4c]
 8002f2e: 68a1         	ldr	r1, [r4, #0x8]
 8002f30: 6820         	ldr	r0, [r4]
 8002f32: 4688         	mov	r8, r1
 8002f34: 9004         	str	r0, [sp, #0x10]
 8002f36: f7fd f985    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2cf6
 8002f3a: 4607         	mov	r7, r0
 8002f3c: 68e1         	ldr	r1, [r4, #0xc]
 8002f3e: 6860         	ldr	r0, [r4, #0x4]
 8002f40: 4689         	mov	r9, r1
 8002f42: 4683         	mov	r11, r0
 8002f44: f7fd f97e    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d04
 8002f48: 4639         	mov	r1, r7
 8002f4a: f7fd f975    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2d16
 8002f4e: 2101         	movs	r1, #0x1
 8002f50: f7fd f9e8    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x2c30
 8002f54: 4607         	mov	r7, r0
 8002f56: 4649         	mov	r1, r9
 8002f58: 4640         	mov	r0, r8
 8002f5a: f7fd f973    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d1a
 8002f5e: 4682         	mov	r10, r0
 8002f60: 4659         	mov	r1, r11
 8002f62: 9804         	ldr	r0, [sp, #0x10]
 8002f64: f7fd f96e    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d24
 8002f68: 4651         	mov	r1, r10
 8002f6a: f7fd f913    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2dda
 8002f6e: 2101         	movs	r1, #0x1
 8002f70: f7fd f9d8    	bl	0x8000324 <firmware_image+0x324> @ imm = #-0x2c50
 8002f74: 4682         	mov	r10, r0
 8002f76: 4649         	mov	r1, r9
 8002f78: 4648         	mov	r0, r9
 8002f7a: f7fd f963    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d3a
 8002f7e: 9000         	str	r0, [sp]
 8002f80: 4641         	mov	r1, r8
 8002f82: 4640         	mov	r0, r8
 8002f84: f7fd f95e    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d44
 8002f88: 4680         	mov	r8, r0
 8002f8a: 4659         	mov	r1, r11
 8002f8c: 4658         	mov	r0, r11
 8002f8e: f7fd f959    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d4e
 8002f92: 9904         	ldr	r1, [sp, #0x10]
 8002f94: 4681         	mov	r9, r0
 8002f96: 4608         	mov	r0, r1
 8002f98: f7fd f954    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d58
 8002f9c: 4649         	mov	r1, r9
 8002f9e: f7fd f94b    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2d6a
 8002fa2: 4641         	mov	r1, r8
 8002fa4: f7fd f948    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2d70
 8002fa8: 9900         	ldr	r1, [sp]
 8002faa: f7fd f8f3    	bl	0x8000194 <firmware_image+0x194> @ imm = #-0x2e1a
 8002fae: 4680         	mov	r8, r0
 8002fb0: 4651         	mov	r1, r10
 8002fb2: 9813         	ldr	r0, [sp, #0x4c]
 8002fb4: f7fd f946    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d74
 8002fb8: 4681         	mov	r9, r0
 8002fba: 4641         	mov	r1, r8
 8002fbc: 9812         	ldr	r0, [sp, #0x48]
 8002fbe: f7fd f941    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d7e
 8002fc2: 4649         	mov	r1, r9
 8002fc4: f7fd f938    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2d90
 8002fc8: 4681         	mov	r9, r0
 8002fca: 4641         	mov	r1, r8
 8002fcc: 9808         	ldr	r0, [sp, #0x20]
 8002fce: f7fd f939    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d8e
 8002fd2: 4680         	mov	r8, r0
 8002fd4: 4639         	mov	r1, r7
 8002fd6: 9813         	ldr	r0, [sp, #0x4c]
 8002fd8: f7fd f934    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2d98
 8002fdc: 4641         	mov	r1, r8
 8002fde: f7fd f92b    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2daa
 8002fe2: 4680         	mov	r8, r0
 8002fe4: 4639         	mov	r1, r7
 8002fe6: 9812         	ldr	r0, [sp, #0x48]
 8002fe8: f7fd f92c    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2da8
 8002fec: 4607         	mov	r7, r0
 8002fee: 4651         	mov	r1, r10
 8002ff0: 9808         	ldr	r0, [sp, #0x20]
 8002ff2: f7fd f927    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x2db2
 8002ff6: 4639         	mov	r1, r7
 8002ff8: f7fd f91e    	bl	0x8000238 <firmware_image+0x238> @ imm = #-0x2dc4
 8002ffc: 4607         	mov	r7, r0
 8002ffe: f8d4 a010    	ldr.w	r10, [r4, #0x10]
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
 80032e4: d007         	beq	0x80032f6 <firmware_image+0x32f6> @ imm = #0xe
 80032e6: 2a02         	cmp	r2, #0x2
 80032e8: d111         	bne	0x800330e <firmware_image+0x330e> @ imm = #0x22
 80032ea: e00b         	b	0x8003304 <firmware_image+0x3304> @ imm = #0x16
 80032ec: b108         	cbz	r0, 0x80032f2 <firmware_image+0x32f2> @ imm = #0x2
 80032ee: 70cb         	strb	r3, [r1, #0x3]
 80032f0: e00d         	b	0x800330e <firmware_image+0x330e> @ imm = #0x1a
 80032f2: 708c         	strb	r4, [r1, #0x2]
 80032f4: e00b         	b	0x800330e <firmware_image+0x330e> @ imm = #0x16
 80032f6: b108         	cbz	r0, 0x80032fc <firmware_image+0x32fc> @ imm = #0x2
 80032f8: 708b         	strb	r3, [r1, #0x2]
 80032fa: e008         	b	0x800330e <firmware_image+0x330e> @ imm = #0x10
 80032fc: 70cc         	strb	r4, [r1, #0x3]
 80032fe: 2002         	movs	r0, #0x2
 8003300: 7088         	strb	r0, [r1, #0x2]
 8003302: e004         	b	0x800330e <firmware_image+0x330e> @ imm = #0x8
 8003304: b110         	cbz	r0, 0x800330c <firmware_image+0x330c> @ imm = #0x4
 8003306: 708b         	strb	r3, [r1, #0x2]
 8003308: 70cb         	strb	r3, [r1, #0x3]
 800330a: e000         	b	0x800330e <firmware_image+0x330e> @ imm = #0x0
 800330c: 70cc         	strb	r4, [r1, #0x3]
 800330e: e8bd 4010    	pop.w	{r4, lr}
 8003312: f7ff b957    	b.w	0x80025c4 <firmware_image+0x25c4> @ imm = #-0xd52
 8003316: 0000         	movs	r0, r0
 8003318: 0800         	lsrs	r0, r0, #0x20
 800331a: 4800         	ldr	r0, [pc, #0x0]          @ 0x800331c <firmware_image+0x331c>
 800331c: 013d         	lsls	r5, r7, #0x4
 800331e: 2000         	movs	r0, #0x0
 8003320: e92d 41fc    	push.w	{r2, r3, r4, r5, r6, r7, r8, lr}
 8003324: 2101         	movs	r1, #0x1
 8003326: f44f 2060    	mov.w	r0, #0xe0000
 800332a: f001 f813    	bl	0x8004354 <firmware_image+0x4354> @ imm = #0x1026
 800332e: f248 0480    	movw	r4, #0x8080
 8003332: 9400         	str	r4, [sp]
 8003334: 2501         	movs	r5, #0x1
 8003336: f88d 5004    	strb.w	r5, [sp, #0x4]
 800333a: 2703         	movs	r7, #0x3
 800333c: f88d 7005    	strb.w	r7, [sp, #0x5]
 8003340: 2600         	movs	r6, #0x0
 8003342: f88d 6006    	strb.w	r6, [sp, #0x6]
 8003346: f04f 4890    	mov.w	r8, #0x48000000
 800334a: 4669         	mov	r1, sp
 800334c: 4640         	mov	r0, r8
 800334e: f7ff f9b5    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0xc96
 8003352: 4621         	mov	r1, r4
 8003354: 4640         	mov	r0, r8
 8003356: f7ff fa06    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0xbf4
 800335a: 203e         	movs	r0, #0x3e
 800335c: 9000         	str	r0, [sp]
 800335e: f88d 5004    	strb.w	r5, [sp, #0x4]
 8003362: f88d 7005    	strb.w	r7, [sp, #0x5]
 8003366: f88d 6006    	strb.w	r6, [sp, #0x6]
 800336a: 4c05         	ldr	r4, [pc, #0x14]         @ 0x8003380 <firmware_image+0x3380>
 800336c: 4669         	mov	r1, sp
 800336e: 4620         	mov	r0, r4
 8003370: f7ff f9a4    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0xcb8
 8003374: 213e         	movs	r1, #0x3e
 8003376: 4620         	mov	r0, r4
 8003378: f7ff f9f5    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0xc16
 800337c: e8bd 81fc    	pop.w	{r2, r3, r4, r5, r6, r7, r8, pc}
 8003380: 0400         	lsls	r0, r0, #0x10
 8003382: 4800         	ldr	r0, [pc, #0x0]          @ 0x8003384 <firmware_image+0x3384>
 8003384: b510         	push	{r4, lr}
 8003386: f002 fba7    	bl	0x8005ad8 <firmware_image+0x5ad8> @ imm = #0x274e
 800338a: f000 fa1f    	bl	0x80037cc <firmware_image+0x37cc> @ imm = #0x43e
 800338e: f7ff f8c1    	bl	0x8002514 <firmware_image+0x2514> @ imm = #-0xe7e
 8003392: f001 fe05    	bl	0x8004fa0 <firmware_image+0x4fa0> @ imm = #0x1c0a
 8003396: 2001         	movs	r0, #0x1
 8003398: f001 fc4c    	bl	0x8004c34 <firmware_image+0x4c34> @ imm = #0x1898
 800339c: f000 f918    	bl	0x80035d0 <firmware_image+0x35d0> @ imm = #0x230
 80033a0: e8bd 4010    	pop.w	{r4, lr}
 80033a4: 2101         	movs	r1, #0x1
 80033a6: 4801         	ldr	r0, [pc, #0x4]          @ 0x80033ac <firmware_image+0x33ac>
 80033a8: f002 b91a    	b.w	0x80055e0 <firmware_image+0x55e0> @ imm = #0x2234
 80033ac: 2c00         	cmp	r4, #0x0
 80033ae: 4001         	ands	r1, r0
 80033b0: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80033c8 <firmware_image+0x33c8>
 80033b2: 2900         	cmp	r1, #0x0
 80033b4: d003         	beq	0x80033be <firmware_image+0x33be> @ imm = #0x6
 80033b6: 6851         	ldr	r1, [r2, #0x4]
 80033b8: 4301         	orrs	r1, r0
 80033ba: 6051         	str	r1, [r2, #0x4]
 80033bc: 4770         	bx	lr
 80033be: 6851         	ldr	r1, [r2, #0x4]
 80033c0: 4381         	bics	r1, r0
 80033c2: 6051         	str	r1, [r2, #0x4]
 80033c4: 4770         	bx	lr
 80033c6: 0000         	movs	r0, r0
 80033c8: 2000         	movs	r0, #0x0
 80033ca: e004         	b	0x80033d6 <firmware_image+0x33d6> @ imm = #0x8
 80033cc: b510         	push	{r4, lr}
 80033ce: f7ff f9d3    	bl	0x8002778 <firmware_image+0x2778> @ imm = #-0xc5a
 80033d2: f001 fced    	bl	0x8004db0 <firmware_image+0x4db0> @ imm = #0x19da
 80033d6: f001 faff    	bl	0x80049d8 <firmware_image+0x49d8> @ imm = #0x15fe
 80033da: f001 fc53    	bl	0x8004c84 <firmware_image+0x4c84> @ imm = #0x18a6
 80033de: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x8003408 <firmware_image+0x3408>
 80033e0: 490a         	ldr	r1, [pc, #0x28]         @ 0x800340c <firmware_image+0x340c>
 80033e2: 480b         	ldr	r0, [pc, #0x2c]         @ 0x8003410 <firmware_image+0x3410>
 80033e4: f000 f9d2    	bl	0x800378c <firmware_image+0x378c> @ imm = #0x3a4
 80033e8: 2101         	movs	r1, #0x1
 80033ea: 0288         	lsls	r0, r1, #0xa
 80033ec: f7ff ffe0    	bl	0x80033b0 <firmware_image+0x33b0> @ imm = #-0x40
 80033f0: f000 f8ee    	bl	0x80035d0 <firmware_image+0x35d0> @ imm = #0x1dc
 80033f4: f001 fb3c    	bl	0x8004a70 <firmware_image+0x4a70> @ imm = #0x1678
 80033f8: f000 f9c6    	bl	0x8003788 <firmware_image+0x3788> @ imm = #0x38c
 80033fc: f002 fb96    	bl	0x8005b2c <firmware_image+0x5b2c> @ imm = #0x272c
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
 80036d0: 6826         	ldr	r6, [r4]
 80036d2: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036d6: 2e06         	cmp	r6, #0x6
 80036d8: d011         	beq	0x80036fe <firmware_image+0x36fe> @ imm = #0x22
 80036da: 6826         	ldr	r6, [r4]
 80036dc: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036e0: 2e05         	cmp	r6, #0x5
 80036e2: d00f         	beq	0x8003704 <firmware_image+0x3704> @ imm = #0x1e
 80036e4: 6826         	ldr	r6, [r4]
 80036e6: f3c6 2602    	ubfx	r6, r6, #0x8, #0x3
 80036ea: 2e04         	cmp	r6, #0x4
 80036ec: d00d         	beq	0x800370a <firmware_image+0x370a> @ imm = #0x1a
 80036ee: 6824         	ldr	r4, [r4]
 80036f0: f3c4 2402    	ubfx	r4, r4, #0x8, #0x3
 80036f4: 2c03         	cmp	r4, #0x3
 80036f6: d00b         	beq	0x8003710 <firmware_image+0x3710> @ imm = #0x16
 80036f8: e00b         	b	0x8003712 <firmware_image+0x3712> @ imm = #0x16
 80036fa: 2204         	movs	r2, #0x4
 80036fc: e009         	b	0x8003712 <firmware_image+0x3712> @ imm = #0x12
 80036fe: 2101         	movs	r1, #0x1
 8003700: 2203         	movs	r2, #0x3
 8003702: e006         	b	0x8003712 <firmware_image+0x3712> @ imm = #0xc
 8003704: 2102         	movs	r1, #0x2
 8003706: 2202         	movs	r2, #0x2
 8003708: e003         	b	0x8003712 <firmware_image+0x3712> @ imm = #0x6
 800370a: 2103         	movs	r1, #0x3
 800370c: 2201         	movs	r2, #0x1
 800370e: e000         	b	0x8003712 <firmware_image+0x3712> @ imm = #0x0
 8003710: 2104         	movs	r1, #0x4
 8003712: 7844         	ldrb	r4, [r0, #0x1]
 8003714: f1c1 0104    	rsb.w	r1, r1, #0x4
 8003718: 408c         	lsls	r4, r1
 800371a: f1c2 0604    	rsb.w	r6, r2, #0x4
 800371e: 7881         	ldrb	r1, [r0, #0x2]
 8003720: 220f         	movs	r2, #0xf
 8003722: 40f2         	lsrs	r2, r6
 8003724: 4011         	ands	r1, r2
 8003726: 4321         	orrs	r1, r4
 8003728: 0109         	lsls	r1, r1, #0x4
 800372a: f103 23e0    	add.w	r3, r3, #0xe000e000
 800372e: f883 1400    	strb.w	r1, [r3, #0x400]
 8003732: 7800         	ldrb	r0, [r0]
 8003734: f000 011f    	and	r1, r0, #0x1f
 8003738: 408d         	lsls	r5, r1
 800373a: 0940         	lsrs	r0, r0, #0x5
 800373c: 0080         	lsls	r0, r0, #0x2
 800373e: f100 20e0    	add.w	r0, r0, #0xe000e000
 8003742: f8c0 5100    	str.w	r5, [r0, #0x100]
 8003746: bd70         	pop	{r4, r5, r6, pc}
 8003748: f003 001f    	and	r0, r3, #0x1f
 800374c: 4085         	lsls	r5, r0
 800374e: 0958         	lsrs	r0, r3, #0x5
 8003750: 0080         	lsls	r0, r0, #0x2
 8003752: f100 20e0    	add.w	r0, r0, #0xe000e000
 8003756: f8c0 5180    	str.w	r5, [r0, #0x180]
 800375a: bd70         	pop	{r4, r5, r6, pc}
 800375c: ed0c e000    	stc	p0, c14, [r12, #-0]
 8003760: 4902         	ldr	r1, [pc, #0x8]          @ 0x800376c <firmware_image+0x376c>
 8003762: 4308         	orrs	r0, r1
 8003764: 4902         	ldr	r1, [pc, #0x8]          @ 0x8003770 <firmware_image+0x3770>
 8003766: 6008         	str	r0, [r1]
 8003768: 4770         	bx	lr
 800376a: 0000         	movs	r0, r0
 800376c: 0000         	movs	r0, r0
 800376e: 05fa         	lsls	r2, r7, #0x17
 8003770: ed0c e000    	stc	p0, c14, [r12, #-0]
 8003774: 4a02         	ldr	r2, [pc, #0x8]          @ 0x8003780 <firmware_image+0x3780>
 8003776: 4011         	ands	r1, r2
 8003778: 4301         	orrs	r1, r0
 800377a: 4802         	ldr	r0, [pc, #0x8]          @ 0x8003784 <firmware_image+0x3784>
 800377c: 6001         	str	r1, [r0]
 800377e: 4770         	bx	lr
 8003780: ff80 1fff    	<unknown>
 8003784: ed08 e000    	stc	p0, c14, [r8, #-0]
 8003788: 4770         	bx	lr
 800378a: 4770         	bx	lr
 800378c: 2000         	movs	r0, #0x0
 800378e: 6148         	str	r0, [r1, #0x14]
 8003790: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x80037c4 <firmware_image+0x37c4>
 8003792: 8010         	strh	r0, [r2]
 8003794: 2264         	movs	r2, #0x64
 8003796: 800a         	strh	r2, [r1]
 8003798: f44f 6280    	mov.w	r2, #0x400
 800379c: 804a         	strh	r2, [r1, #0x2]
 800379e: 2232         	movs	r2, #0x32
 80037a0: 808a         	strh	r2, [r1, #0x4]
 80037a2: f44f 5200    	mov.w	r2, #0x2000
 80037a6: 80ca         	strh	r2, [r1, #0x6]
 80037a8: 8308         	strh	r0, [r1, #0x18]
 80037aa: 834a         	strh	r2, [r1, #0x1a]
 80037ac: 61c8         	str	r0, [r1, #0x1c]
 80037ae: f248 0001    	movw	r0, #0x8001
 80037b2: 8108         	strh	r0, [r1, #0x8]
 80037b4: 1e80         	subs	r0, r0, #0x2
 80037b6: 8148         	strh	r0, [r1, #0xa]
 80037b8: 4803         	ldr	r0, [pc, #0xc]          @ 0x80037c8 <firmware_image+0x37c8>
 80037ba: 60c8         	str	r0, [r1, #0xc]
 80037bc: 4240         	rsbs	r0, r0, #0
 80037be: 6108         	str	r0, [r1, #0x10]
 80037c0: 4770         	bx	lr
 80037c2: 0000         	movs	r0, r0
 80037c4: 0262         	lsls	r2, r4, #0x9
 80037c6: 2000         	movs	r0, #0x0
 80037c8: 2000         	movs	r0, #0x0
 80037ca: f000 4903    	and	r9, r0, #0x83000000
 80037ce: 2000         	movs	r0, #0x0
 80037d0: 6148         	str	r0, [r1, #0x14]
 80037d2: 4903         	ldr	r1, [pc, #0xc]          @ 0x80037e0 <firmware_image+0x37e0>
 80037d4: 6148         	str	r0, [r1, #0x14]
 80037d6: 4903         	ldr	r1, [pc, #0xc]          @ 0x80037e4 <firmware_image+0x37e4>
 80037d8: 6148         	str	r0, [r1, #0x14]
 80037da: 4770         	bx	lr
 80037dc: 0530         	lsls	r0, r6, #0x14
 80037de: 2000         	movs	r0, #0x0
 80037e0: 0510         	lsls	r0, r2, #0x14
 80037e2: 2000         	movs	r0, #0x0
 80037e4: 04f0         	lsls	r0, r6, #0x13
 80037e6: 2000         	movs	r0, #0x0
 80037e8: b570         	push	{r4, r5, r6, lr}
 80037ea: 1a40         	subs	r0, r0, r1
 80037ec: f9b2 4000    	ldrsh.w	r4, [r2]
 80037f0: 4344         	muls	r4, r0, r4
 80037f2: f9b2 3004    	ldrsh.w	r3, [r2, #0x4]
 80037f6: 2b00         	cmp	r3, #0x0
 80037f8: d00d         	beq	0x8003816 <firmware_image+0x3816> @ imm = #0x1a
 80037fa: 4343         	muls	r3, r0, r3
 80037fc: 6950         	ldr	r0, [r2, #0x14]
 80037fe: 17c1         	asrs	r1, r0, #0x1f
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
 80038e8: 1a40         	subs	r0, r0, r1
 80038ea: eb00 70d0    	add.w	r0, r0, r0, lsr #31
 80038ee: 1040         	asrs	r0, r0, #0x1
 80038f0: b200         	sxth	r0, r0
 80038f2: f002 fd92    	bl	0x800641a <firmware_image+0x641a> @ imm = #0x2b24
 80038f6: f640 33ee    	movw	r3, #0xbee
 80038fa: 2101         	movs	r1, #0x1
 80038fc: 2200         	movs	r2, #0x0
 80038fe: 4298         	cmp	r0, r3
 8003900: dd02         	ble	0x8003908 <firmware_image+0x3908> @ imm = #0x4
 8003902: 7a20         	ldrb	r0, [r4, #0x8]
 8003904: 2803         	cmp	r0, #0x3
 8003906: d007         	beq	0x8003918 <firmware_image+0x3918> @ imm = #0xe
 8003908: 7022         	strb	r2, [r4]
 800390a: 7820         	ldrb	r0, [r4]
 800390c: 2801         	cmp	r0, #0x1
 800390e: d005         	beq	0x800391c <firmware_image+0x391c> @ imm = #0xa
 8003910: 7828         	ldrb	r0, [r5]
 8003912: b148         	cbz	r0, 0x8003928 <firmware_image+0x3928> @ imm = #0x12
 8003914: 74e2         	strb	r2, [r4, #0x13]
 8003916: e008         	b	0x800392a <firmware_image+0x392a> @ imm = #0x10
 8003918: 7021         	strb	r1, [r4]
 800391a: e7f6         	b	0x800390a <firmware_image+0x390a> @ imm = #-0x14
 800391c: 7828         	ldrb	r0, [r5]
 800391e: b108         	cbz	r0, 0x8003924 <firmware_image+0x3924> @ imm = #0x2
 8003920: 74e1         	strb	r1, [r4, #0x13]
 8003922: e002         	b	0x800392a <firmware_image+0x392a> @ imm = #0x4
 8003924: 7521         	strb	r1, [r4, #0x14]
 8003926: e000         	b	0x800392a <firmware_image+0x392a> @ imm = #0x0
 8003928: 7522         	strb	r2, [r4, #0x14]
 800392a: 8ce0         	ldrh	r0, [r4, #0x26]
 800392c: b178         	cbz	r0, 0x800394e <firmware_image+0x394e> @ imm = #0x1e
 800392e: f9b4 003e    	ldrsh.w	r0, [r4, #0x3e]
 8003932: f002 fd72    	bl	0x800641a <firmware_image+0x641a> @ imm = #0x2ae4
 8003936: f240 53dc    	movw	r3, #0x5dc
 800393a: 4298         	cmp	r0, r3
 800393c: dd08         	ble	0x8003950 <firmware_image+0x3950> @ imm = #0x10
 800393e: f994 0008    	ldrsb.w	r0, [r4, #0x8]
 8003942: 2802         	cmp	r0, #0x2
 8003944: d001         	beq	0x800394a <firmware_image+0x394a> @ imm = #0x2
 8003946: 2801         	cmp	r0, #0x1
 8003948: d102         	bne	0x8003950 <firmware_image+0x3950> @ imm = #0x4
 800394a: 7061         	strb	r1, [r4, #0x1]
 800394c: e000         	b	0x8003950 <firmware_image+0x3950> @ imm = #0x0
 800394e: 7062         	strb	r2, [r4, #0x1]
 8003950: 7860         	ldrb	r0, [r4, #0x1]
 8003952: 2801         	cmp	r0, #0x1
 8003954: d003         	beq	0x800395e <firmware_image+0x395e> @ imm = #0x6
 8003956: 7828         	ldrb	r0, [r5]
 8003958: b138         	cbz	r0, 0x800396a <firmware_image+0x396a> @ imm = #0xe
 800395a: 7562         	strb	r2, [r4, #0x15]
 800395c: e006         	b	0x800396c <firmware_image+0x396c> @ imm = #0xc
 800395e: 7828         	ldrb	r0, [r5]
 8003960: b108         	cbz	r0, 0x8003966 <firmware_image+0x3966> @ imm = #0x2
 8003962: 7561         	strb	r1, [r4, #0x15]
 8003964: e002         	b	0x800396c <firmware_image+0x396c> @ imm = #0x4
 8003966: 75a1         	strb	r1, [r4, #0x16]
 8003968: e000         	b	0x800396c <firmware_image+0x396c> @ imm = #0x0
 800396a: 75a2         	strb	r2, [r4, #0x16]
 800396c: f9b4 0020    	ldrsh.w	r0, [r4, #0x20]
 8003970: f640 53ac    	movw	r3, #0xdac
 8003974: 4298         	cmp	r0, r3
 8003976: da01         	bge	0x800397c <firmware_image+0x397c> @ imm = #0x2
 8003978: 70a1         	strb	r1, [r4, #0x2]
 800397a: e000         	b	0x800397e <firmware_image+0x397e> @ imm = #0x0
 800397c: 70a2         	strb	r2, [r4, #0x2]
 800397e: 4fb2         	ldr	r7, [pc, #0x2c8]        @ 0x8003c48 <firmware_image+0x3c48>
 8003980: 7838         	ldrb	r0, [r7]
 8003982: 2801         	cmp	r0, #0x1
 8003984: d003         	beq	0x800398e <firmware_image+0x398e> @ imm = #0x6
 8003986: 7828         	ldrb	r0, [r5]
 8003988: b138         	cbz	r0, 0x800399a <firmware_image+0x399a> @ imm = #0xe
 800398a: 75e2         	strb	r2, [r4, #0x17]
 800398c: e006         	b	0x800399c <firmware_image+0x399c> @ imm = #0xc
 800398e: 7828         	ldrb	r0, [r5]
 8003990: b108         	cbz	r0, 0x8003996 <firmware_image+0x3996> @ imm = #0x2
 8003992: 75e1         	strb	r1, [r4, #0x17]
 8003994: e002         	b	0x800399c <firmware_image+0x399c> @ imm = #0x4
 8003996: 7621         	strb	r1, [r4, #0x18]
 8003998: e000         	b	0x800399c <firmware_image+0x399c> @ imm = #0x0
 800399a: 7622         	strb	r2, [r4, #0x18]
 800399c: f8df 82ac    	ldr.w	r8, [pc, #0x2ac]        @ 0x8003c4c <firmware_image+0x3c4c>
 80039a0: f898 0000    	ldrb.w	r0, [r8]
 80039a4: 2801         	cmp	r0, #0x1
 80039a6: d003         	beq	0x80039b0 <firmware_image+0x39b0> @ imm = #0x6
 80039a8: 7828         	ldrb	r0, [r5]
 80039aa: b138         	cbz	r0, 0x80039bc <firmware_image+0x39bc> @ imm = #0xe
 80039ac: 73e2         	strb	r2, [r4, #0xf]
 80039ae: e006         	b	0x80039be <firmware_image+0x39be> @ imm = #0xc
 80039b0: 7828         	ldrb	r0, [r5]
 80039b2: b108         	cbz	r0, 0x80039b8 <firmware_image+0x39b8> @ imm = #0x2
 80039b4: 73e1         	strb	r1, [r4, #0xf]
 80039b6: e002         	b	0x80039be <firmware_image+0x39be> @ imm = #0x4
 80039b8: 7421         	strb	r1, [r4, #0x10]
 80039ba: e000         	b	0x80039be <firmware_image+0x39be> @ imm = #0x0
 80039bc: 7422         	strb	r2, [r4, #0x10]
 80039be: f8df 9290    	ldr.w	r9, [pc, #0x290]        @ 0x8003c50 <firmware_image+0x3c50>
 80039c2: f899 0000    	ldrb.w	r0, [r9]
 80039c6: 2801         	cmp	r0, #0x1
 80039c8: d003         	beq	0x80039d2 <firmware_image+0x39d2> @ imm = #0x6
 80039ca: 7828         	ldrb	r0, [r5]
 80039cc: b138         	cbz	r0, 0x80039de <firmware_image+0x39de> @ imm = #0xe
 80039ce: 7462         	strb	r2, [r4, #0x11]
 80039d0: e006         	b	0x80039e0 <firmware_image+0x39e0> @ imm = #0xc
 80039d2: 7828         	ldrb	r0, [r5]
 80039d4: b108         	cbz	r0, 0x80039da <firmware_image+0x39da> @ imm = #0x2
 80039d6: 7461         	strb	r1, [r4, #0x11]
 80039d8: e002         	b	0x80039e0 <firmware_image+0x39e0> @ imm = #0x4
 80039da: 74a1         	strb	r1, [r4, #0x12]
 80039dc: e000         	b	0x80039e0 <firmware_image+0x39e0> @ imm = #0x0
 80039de: 74a2         	strb	r2, [r4, #0x12]
 80039e0: 4e9c         	ldr	r6, [pc, #0x270]        @ 0x8003c54 <firmware_image+0x3c54>
 80039e2: 7830         	ldrb	r0, [r6]
 80039e4: 2801         	cmp	r0, #0x1
 80039e6: d003         	beq	0x80039f0 <firmware_image+0x39f0> @ imm = #0x6
 80039e8: 7828         	ldrb	r0, [r5]
 80039ea: b148         	cbz	r0, 0x8003a00 <firmware_image+0x3a00> @ imm = #0x12
 80039ec: 7462         	strb	r2, [r4, #0x11]
 80039ee: e008         	b	0x8003a02 <firmware_image+0x3a02> @ imm = #0x10
 80039f0: 7828         	ldrb	r0, [r5]
 80039f2: b110         	cbz	r0, 0x80039fa <firmware_image+0x39fa> @ imm = #0x4
 80039f4: 4898         	ldr	r0, [pc, #0x260]        @ 0x8003c58 <firmware_image+0x3c58>
 80039f6: 7001         	strb	r1, [r0]
 80039f8: e003         	b	0x8003a02 <firmware_image+0x3a02> @ imm = #0x6
 80039fa: 4898         	ldr	r0, [pc, #0x260]        @ 0x8003c5c <firmware_image+0x3c5c>
 80039fc: 7001         	strb	r1, [r0]
 80039fe: e000         	b	0x8003a02 <firmware_image+0x3a02> @ imm = #0x0
 8003a00: 74a2         	strb	r2, [r4, #0x12]
 8003a02: f7fd fe81    	bl	0x8001708 <firmware_image+0x1708> @ imm = #-0x22fe
 8003a06: 7828         	ldrb	r0, [r5]
 8003a08: b3f0         	cbz	r0, 0x8003a88 <firmware_image+0x3a88> @ imm = #0x7c
 8003a0a: 4895         	ldr	r0, [pc, #0x254]        @ 0x8003c60 <firmware_image+0x3c60>
 8003a0c: 7800         	ldrb	r0, [r0]
 8003a0e: b120         	cbz	r0, 0x8003a1a <firmware_image+0x3a1a> @ imm = #0x8
 8003a10: 7b20         	ldrb	r0, [r4, #0xc]
 8003a12: f040 0001    	orr	r0, r0, #0x1
 8003a16: 7320         	strb	r0, [r4, #0xc]
 8003a18: e003         	b	0x8003a22 <firmware_image+0x3a22> @ imm = #0x6
 8003a1a: 7b20         	ldrb	r0, [r4, #0xc]
 8003a1c: f020 0001    	bic	r0, r0, #0x1
 8003a20: 7320         	strb	r0, [r4, #0xc]
 8003a22: 4890         	ldr	r0, [pc, #0x240]        @ 0x8003c64 <firmware_image+0x3c64>
 8003a24: 7800         	ldrb	r0, [r0]
 8003a26: b120         	cbz	r0, 0x8003a32 <firmware_image+0x3a32> @ imm = #0x8
 8003a28: 7b20         	ldrb	r0, [r4, #0xc]
 8003a2a: f040 0002    	orr	r0, r0, #0x2
 8003a2e: 7320         	strb	r0, [r4, #0xc]
 8003a30: e003         	b	0x8003a3a <firmware_image+0x3a3a> @ imm = #0x6
 8003a32: 7b20         	ldrb	r0, [r4, #0xc]
 8003a34: f020 0002    	bic	r0, r0, #0x2
 8003a38: 7320         	strb	r0, [r4, #0xc]
 8003a3a: 488b         	ldr	r0, [pc, #0x22c]        @ 0x8003c68 <firmware_image+0x3c68>
 8003a3c: 7800         	ldrb	r0, [r0]
 8003a3e: b120         	cbz	r0, 0x8003a4a <firmware_image+0x3a4a> @ imm = #0x8
 8003a40: 7b20         	ldrb	r0, [r4, #0xc]
 8003a42: f040 0004    	orr	r0, r0, #0x4
 8003a46: 7320         	strb	r0, [r4, #0xc]
 8003a48: e003         	b	0x8003a52 <firmware_image+0x3a52> @ imm = #0x6
 8003a4a: 7b20         	ldrb	r0, [r4, #0xc]
 8003a4c: f020 0004    	bic	r0, r0, #0x4
 8003a50: 7320         	strb	r0, [r4, #0xc]
 8003a52: 8ce0         	ldrh	r0, [r4, #0x26]
 8003a54: b120         	cbz	r0, 0x8003a60 <firmware_image+0x3a60> @ imm = #0x8
 8003a56: 7b20         	ldrb	r0, [r4, #0xc]
 8003a58: f040 0008    	orr	r0, r0, #0x8
 8003a5c: 7320         	strb	r0, [r4, #0xc]
 8003a5e: e003         	b	0x8003a68 <firmware_image+0x3a68> @ imm = #0x6
 8003a60: 7b20         	ldrb	r0, [r4, #0xc]
 8003a62: f020 0008    	bic	r0, r0, #0x8
 8003a66: 7320         	strb	r0, [r4, #0xc]
 8003a68: 7b20         	ldrb	r0, [r4, #0xc]
 8003a6a: f020 0030    	bic	r0, r0, #0x30
 8003a6e: 497f         	ldr	r1, [pc, #0x1fc]        @ 0x8003c6c <firmware_image+0x3c6c>
 8003a70: 7809         	ldrb	r1, [r1]
 8003a72: ea40 1001    	orr.w	r0, r0, r1, lsl #4
 8003a76: b2c0         	uxtb	r0, r0
 8003a78: 7320         	strb	r0, [r4, #0xc]
 8003a7a: 7831         	ldrb	r1, [r6]
 8003a7c: 2901         	cmp	r1, #0x1
 8003a7e: d038         	beq	0x8003af2 <firmware_image+0x3af2> @ imm = #0x70
 8003a80: f020 0040    	bic	r0, r0, #0x40
 8003a84: 7320         	strb	r0, [r4, #0xc]
 8003a86: e000         	b	0x8003a8a <firmware_image+0x3a8a> @ imm = #0x0
 8003a88: e063         	b	0x8003b52 <firmware_image+0x3b52> @ imm = #0xc6
 8003a8a: 4879         	ldr	r0, [pc, #0x1e4]        @ 0x8003c70 <firmware_image+0x3c70>
 8003a8c: 7800         	ldrb	r0, [r0]
 8003a8e: 2801         	cmp	r0, #0x1
 8003a90: d033         	beq	0x8003afa <firmware_image+0x3afa> @ imm = #0x66
 8003a92: 7b20         	ldrb	r0, [r4, #0xc]
 8003a94: f020 0080    	bic	r0, r0, #0x80
 8003a98: 7320         	strb	r0, [r4, #0xc]
 8003a9a: f898 0000    	ldrb.w	r0, [r8]
 8003a9e: 2801         	cmp	r0, #0x1
 8003aa0: d030         	beq	0x8003b04 <firmware_image+0x3b04> @ imm = #0x60
 8003aa2: 7ae0         	ldrb	r0, [r4, #0xb]
 8003aa4: f020 0001    	bic	r0, r0, #0x1
 8003aa8: 72e0         	strb	r0, [r4, #0xb]
 8003aaa: f899 0000    	ldrb.w	r0, [r9]
 8003aae: 2801         	cmp	r0, #0x1
 8003ab0: d02d         	beq	0x8003b0e <firmware_image+0x3b0e> @ imm = #0x5a
 8003ab2: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ab4: f020 0002    	bic	r0, r0, #0x2
 8003ab8: 72e0         	strb	r0, [r4, #0xb]
 8003aba: 7838         	ldrb	r0, [r7]
 8003abc: 2801         	cmp	r0, #0x1
 8003abe: d02b         	beq	0x8003b18 <firmware_image+0x3b18> @ imm = #0x56
 8003ac0: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ac2: f020 0004    	bic	r0, r0, #0x4
 8003ac6: 72e0         	strb	r0, [r4, #0xb]
 8003ac8: 7820         	ldrb	r0, [r4]
 8003aca: 2801         	cmp	r0, #0x1
 8003acc: d029         	beq	0x8003b22 <firmware_image+0x3b22> @ imm = #0x52
 8003ace: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ad0: f020 0008    	bic	r0, r0, #0x8
 8003ad4: 72e0         	strb	r0, [r4, #0xb]
 8003ad6: 7860         	ldrb	r0, [r4, #0x1]
 8003ad8: 2801         	cmp	r0, #0x1
 8003ada: d027         	beq	0x8003b2c <firmware_image+0x3b2c> @ imm = #0x4e
 8003adc: 7ae0         	ldrb	r0, [r4, #0xb]
 8003ade: f020 0010    	bic	r0, r0, #0x10
 8003ae2: 72e0         	strb	r0, [r4, #0xb]
 8003ae4: 8d20         	ldrh	r0, [r4, #0x28]
 8003ae6: b330         	cbz	r0, 0x8003b36 <firmware_image+0x3b36> @ imm = #0x4c
 8003ae8: 7ae0         	ldrb	r0, [r4, #0xb]
 8003aea: f040 0020    	orr	r0, r0, #0x20
 8003aee: 72e0         	strb	r0, [r4, #0xb]
 8003af0: e025         	b	0x8003b3e <firmware_image+0x3b3e> @ imm = #0x4a
 8003af2: f040 0040    	orr	r0, r0, #0x40
 8003af6: 7320         	strb	r0, [r4, #0xc]
 8003af8: e7c5         	b	0x8003a86 <firmware_image+0x3a86> @ imm = #-0x76
 8003afa: 7b20         	ldrb	r0, [r4, #0xc]
 8003afc: f040 0080    	orr	r0, r0, #0x80
 8003b00: 7320         	strb	r0, [r4, #0xc]
 8003b02: e7ca         	b	0x8003a9a <firmware_image+0x3a9a> @ imm = #-0x6c
 8003b04: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b06: f040 0001    	orr	r0, r0, #0x1
 8003b0a: 72e0         	strb	r0, [r4, #0xb]
 8003b0c: e7cd         	b	0x8003aaa <firmware_image+0x3aaa> @ imm = #-0x66
 8003b0e: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b10: f040 0002    	orr	r0, r0, #0x2
 8003b14: 72e0         	strb	r0, [r4, #0xb]
 8003b16: e7d0         	b	0x8003aba <firmware_image+0x3aba> @ imm = #-0x60
 8003b18: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b1a: f040 0004    	orr	r0, r0, #0x4
 8003b1e: 72e0         	strb	r0, [r4, #0xb]
 8003b20: e7d2         	b	0x8003ac8 <firmware_image+0x3ac8> @ imm = #-0x5c
 8003b22: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b24: f040 0008    	orr	r0, r0, #0x8
 8003b28: 72e0         	strb	r0, [r4, #0xb]
 8003b2a: e7d4         	b	0x8003ad6 <firmware_image+0x3ad6> @ imm = #-0x58
 8003b2c: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b2e: f040 0010    	orr	r0, r0, #0x10
 8003b32: 72e0         	strb	r0, [r4, #0xb]
 8003b34: e7d6         	b	0x8003ae4 <firmware_image+0x3ae4> @ imm = #-0x54
 8003b36: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b38: f020 0020    	bic	r0, r0, #0x20
 8003b3c: 72e0         	strb	r0, [r4, #0xb]
 8003b3e: 7ae0         	ldrb	r0, [r4, #0xb]
 8003b40: f020 00c0    	bic	r0, r0, #0xc0
 8003b44: 7a21         	ldrb	r1, [r4, #0x8]
 8003b46: ea40 1081    	orr.w	r0, r0, r1, lsl #6
 8003b4a: 72e0         	strb	r0, [r4, #0xb]
 8003b4c: f7ff fcb4    	bl	0x80034b8 <firmware_image+0x34b8> @ imm = #-0x698
 8003b50: e04c         	b	0x8003bec <firmware_image+0x3bec> @ imm = #0x98
 8003b52: 4848         	ldr	r0, [pc, #0x120]        @ 0x8003c74 <firmware_image+0x3c74>
 8003b54: 7800         	ldrb	r0, [r0]
 8003b56: b120         	cbz	r0, 0x8003b62 <firmware_image+0x3b62> @ imm = #0x8
 8003b58: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b5a: f040 0004    	orr	r0, r0, #0x4
 8003b5e: 73a0         	strb	r0, [r4, #0xe]
 8003b60: e003         	b	0x8003b6a <firmware_image+0x3b6a> @ imm = #0x6
 8003b62: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b64: f020 0004    	bic	r0, r0, #0x4
 8003b68: 73a0         	strb	r0, [r4, #0xe]
 8003b6a: 7ba0         	ldrb	r0, [r4, #0xe]
 8003b6c: f020 0030    	bic	r0, r0, #0x30
 8003b70: 4941         	ldr	r1, [pc, #0x104]        @ 0x8003c78 <firmware_image+0x3c78>
 8003b72: 7809         	ldrb	r1, [r1]
 8003b74: ea40 1001    	orr.w	r0, r0, r1, lsl #4
 8003b78: b2c0         	uxtb	r0, r0
 8003b7a: 73a0         	strb	r0, [r4, #0xe]
 8003b7c: 7831         	ldrb	r1, [r6]
 8003b7e: 2901         	cmp	r1, #0x1
 8003b80: d03a         	beq	0x8003bf8 <firmware_image+0x3bf8> @ imm = #0x74
 8003b82: f020 0040    	bic	r0, r0, #0x40
 8003b86: 73a0         	strb	r0, [r4, #0xe]
 8003b88: f898 0000    	ldrb.w	r0, [r8]
 8003b8c: 2801         	cmp	r0, #0x1
 8003b8e: d037         	beq	0x8003c00 <firmware_image+0x3c00> @ imm = #0x6e
 8003b90: 7b60         	ldrb	r0, [r4, #0xd]
 8003b92: f020 0001    	bic	r0, r0, #0x1
 8003b96: 7360         	strb	r0, [r4, #0xd]
 8003b98: f899 0000    	ldrb.w	r0, [r9]
 8003b9c: 2801         	cmp	r0, #0x1
 8003b9e: d034         	beq	0x8003c0a <firmware_image+0x3c0a> @ imm = #0x68
 8003ba0: 7b60         	ldrb	r0, [r4, #0xd]
 8003ba2: f020 0002    	bic	r0, r0, #0x2
 8003ba6: 7360         	strb	r0, [r4, #0xd]
 8003ba8: 7838         	ldrb	r0, [r7]
 8003baa: 2801         	cmp	r0, #0x1
 8003bac: d032         	beq	0x8003c14 <firmware_image+0x3c14> @ imm = #0x64
 8003bae: 7b60         	ldrb	r0, [r4, #0xd]
 8003bb0: f020 0004    	bic	r0, r0, #0x4
 8003bb4: 7360         	strb	r0, [r4, #0xd]
 8003bb6: 7820         	ldrb	r0, [r4]
 8003bb8: 2801         	cmp	r0, #0x1
 8003bba: d030         	beq	0x8003c1e <firmware_image+0x3c1e> @ imm = #0x60
 8003bbc: 7b60         	ldrb	r0, [r4, #0xd]
 8003bbe: f020 0008    	bic	r0, r0, #0x8
 8003bc2: 7360         	strb	r0, [r4, #0xd]
 8003bc4: 7860         	ldrb	r0, [r4, #0x1]
 8003bc6: 2801         	cmp	r0, #0x1
 8003bc8: d02e         	beq	0x8003c28 <firmware_image+0x3c28> @ imm = #0x5c
 8003bca: 7b60         	ldrb	r0, [r4, #0xd]
 8003bcc: f020 0010    	bic	r0, r0, #0x10
 8003bd0: 7360         	strb	r0, [r4, #0xd]
 8003bd2: 2901         	cmp	r1, #0x1
 8003bd4: d02d         	beq	0x8003c32 <firmware_image+0x3c32> @ imm = #0x5a
 8003bd6: 7b60         	ldrb	r0, [r4, #0xd]
 8003bd8: f020 0020    	bic	r0, r0, #0x20
 8003bdc: 7360         	strb	r0, [r4, #0xd]
 8003bde: 7b60         	ldrb	r0, [r4, #0xd]
 8003be0: f020 00c0    	bic	r0, r0, #0xc0
 8003be4: 7a21         	ldrb	r1, [r4, #0x8]
 8003be6: ea40 1081    	orr.w	r0, r0, r1, lsl #6
 8003bea: 7360         	strb	r0, [r4, #0xd]
 8003bec: f834 0f42    	ldrh	r0, [r4, #66]!
 8003bf0: 1c40         	adds	r0, r0, #0x1
 8003bf2: 8020         	strh	r0, [r4]
 8003bf4: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
 8003bf8: f040 0040    	orr	r0, r0, #0x40
 8003bfc: 73a0         	strb	r0, [r4, #0xe]
 8003bfe: e7c3         	b	0x8003b88 <firmware_image+0x3b88> @ imm = #-0x7a
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
 8003cc0: f8c9 602c    	str.w	r6, [r9, #0x2c]
 8003cc4: 7a38         	ldrb	r0, [r7, #0x8]
 8003cc6: 7278         	strb	r0, [r7, #0x9]
 8003cc8: f8d9 1044    	ldr.w	r1, [r9, #0x44]
 8003ccc: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003cd0: 4281         	cmp	r1, r0
 8003cd2: dd7c         	ble	0x8003dce <firmware_image+0x3dce> @ imm = #0xf8
 8003cd4: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003cd8: e1b9         	b	0x800404e <firmware_image+0x404e> @ imm = #0x372
 8003cda: f8c9 6044    	str.w	r6, [r9, #0x44]
 8003cde: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003ce2: f44f 7b7a    	mov.w	r11, #0x3e8
 8003ce6: 4558         	cmp	r0, r11
 8003ce8: dd04         	ble	0x8003cf4 <firmware_image+0x3cf4> @ imm = #0x8
 8003cea: f5a0 707a    	sub.w	r0, r0, #0x3e8
 8003cee: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003cf2: e009         	b	0x8003d08 <firmware_image+0x3d08> @ imm = #0x12
 8003cf4: f510 7f7a    	cmn.w	r0, #0x3e8
 8003cf8: da04         	bge	0x8003d04 <firmware_image+0x3d04> @ imm = #0x8
 8003cfa: f500 707a    	add.w	r0, r0, #0x3e8
 8003cfe: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003d02: e001         	b	0x8003d08 <firmware_image+0x3d08> @ imm = #0x2
 8003d04: f8c9 602c    	str.w	r6, [r9, #0x2c]
 8003d08: 48e3         	ldr	r0, [pc, #0x38c]        @ 0x8004098 <firmware_image+0x4098>
 8003d0a: 7800         	ldrb	r0, [r0]
 8003d0c: bbf0         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0x7c
 8003d0e: 4de4         	ldr	r5, [pc, #0x390]        @ 0x80040a0 <firmware_image+0x40a0>
 8003d10: 49e2         	ldr	r1, [pc, #0x388]        @ 0x800409c <firmware_image+0x409c>
 8003d12: 6828         	ldr	r0, [r5]
 8003d14: f7fc fa96    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x3ad4
 8003d18: f7fc fcb2    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x369c
 8003d1c: b200         	sxth	r0, r0
 8003d1e: f002 fb81    	bl	0x8006424 <firmware_image+0x6424> @ imm = #0x2702
 8003d22: f640 11c4    	movw	r1, #0x9c4
 8003d26: 4288         	cmp	r0, r1
 8003d28: da01         	bge	0x8003d2e <firmware_image+0x3d2e> @ imm = #0x2
 8003d2a: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d2c: b170         	cbz	r0, 0x8003d4c <firmware_image+0x3d4c> @ imm = #0x1c
 8003d2e: 49db         	ldr	r1, [pc, #0x36c]        @ 0x800409c <firmware_image+0x409c>
 8003d30: 6828         	ldr	r0, [r5]
 8003d32: f7fc fa87    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x3af2
 8003d36: f7fc fca3    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x36ba
 8003d3a: b200         	sxth	r0, r0
 8003d3c: f002 fb72    	bl	0x8006424 <firmware_image+0x6424> @ imm = #0x26e4
 8003d40: f641 514c    	movw	r1, #0x1d4c
 8003d44: 4288         	cmp	r0, r1
 8003d46: da30         	bge	0x8003daa <firmware_image+0x3daa> @ imm = #0x60
 8003d48: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d4a: b1f8         	cbz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0x3e
 8003d4c: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 8003d50: f5b0 7ffa    	cmp.w	r0, #0x1f4
 8003d54: dd29         	ble	0x8003daa <firmware_image+0x3daa> @ imm = #0x52
 8003d56: 48d3         	ldr	r0, [pc, #0x34c]        @ 0x80040a4 <firmware_image+0x40a4>
 8003d58: 7800         	ldrb	r0, [r0]
 8003d5a: b9b8         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0x2e
 8003d5c: 48d2         	ldr	r0, [pc, #0x348]        @ 0x80040a8 <firmware_image+0x40a8>
 8003d5e: 7800         	ldrb	r0, [r0]
 8003d60: b9a0         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0x28
 8003d62: 48d2         	ldr	r0, [pc, #0x348]        @ 0x80040ac <firmware_image+0x40ac>
 8003d64: 7800         	ldrb	r0, [r0]
 8003d66: b988         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0x22
 8003d68: 48d1         	ldr	r0, [pc, #0x344]        @ 0x80040b0 <firmware_image+0x40b0>
 8003d6a: 7800         	ldrb	r0, [r0]
 8003d6c: b970         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0x1c
 8003d6e: 7cf8         	ldrb	r0, [r7, #0x13]
 8003d70: b960         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0x18
 8003d72: 7d78         	ldrb	r0, [r7, #0x15]
 8003d74: b908         	cbnz	r0, 0x8003d7a <firmware_image+0x3d7a> @ imm = #0x2
 8003d76: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d78: b908         	cbnz	r0, 0x8003d7e <firmware_image+0x3d7e> @ imm = #0x2
 8003d7a: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d7c: b930         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0xc
 8003d7e: 7d38         	ldrb	r0, [r7, #0x14]
 8003d80: b920         	cbnz	r0, 0x8003d8c <firmware_image+0x3d8c> @ imm = #0x8
 8003d82: 7db8         	ldrb	r0, [r7, #0x16]
 8003d84: b908         	cbnz	r0, 0x8003d8a <firmware_image+0x3d8a> @ imm = #0x2
 8003d86: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d88: b930         	cbnz	r0, 0x8003d98 <firmware_image+0x3d98> @ imm = #0xc
 8003d8a: e003         	b	0x8003d94 <firmware_image+0x3d94> @ imm = #0x6
 8003d8c: e00d         	b	0x8003daa <firmware_image+0x3daa> @ imm = #0x1a
 8003d8e: e041         	b	0x8003e14 <firmware_image+0x3e14> @ imm = #0x82
 8003d90: e079         	b	0x8003e86 <firmware_image+0x3e86> @ imm = #0xf2
 8003d92: e0e2         	b	0x8003f5a <firmware_image+0x3f5a> @ imm = #0x1c4
 8003d94: 8cf8         	ldrh	r0, [r7, #0x26]
 8003d96: b940         	cbnz	r0, 0x8003daa <firmware_image+0x3daa> @ imm = #0x10
 8003d98: 48c6         	ldr	r0, [pc, #0x318]        @ 0x80040b4 <firmware_image+0x40b4>
 8003d9a: 7800         	ldrb	r0, [r0]
 8003d9c: b108         	cbz	r0, 0x8003da2 <firmware_image+0x3da2> @ imm = #0x2
 8003d9e: 8cf8         	ldrh	r0, [r7, #0x26]
 8003da0: b108         	cbz	r0, 0x8003da6 <firmware_image+0x3da6> @ imm = #0x2
 8003da2: 8cf8         	ldrh	r0, [r7, #0x26]
 8003da4: b108         	cbz	r0, 0x8003daa <firmware_image+0x3daa> @ imm = #0x2
 8003da6: 78f8         	ldrb	r0, [r7, #0x3]
 8003da8: b110         	cbz	r0, 0x8003db0 <firmware_image+0x3db0> @ imm = #0x4
 8003daa: f88a 6000    	strb.w	r6, [r10]
 8003dae: e789         	b	0x8003cc4 <firmware_image+0x3cc4> @ imm = #-0xee
 8003db0: 2001         	movs	r0, #0x1
 8003db2: 7238         	strb	r0, [r7, #0x8]
 8003db4: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003db8: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003dbc: f88a 0000    	strb.w	r0, [r10]
 8003dc0: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003dc4: 4558         	cmp	r0, r11
 8003dc6: dd06         	ble	0x8003dd6 <firmware_image+0x3dd6> @ imm = #0xc
 8003dc8: f5a0 707a    	sub.w	r0, r0, #0x3e8
 8003dcc: e000         	b	0x8003dd0 <firmware_image+0x3dd0> @ imm = #0x0
 8003dce: e139         	b	0x8004044 <firmware_image+0x4044> @ imm = #0x272
 8003dd0: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003dd4: e009         	b	0x8003dea <firmware_image+0x3dea> @ imm = #0x12
 8003dd6: f510 7f7a    	cmn.w	r0, #0x3e8
 8003dda: da04         	bge	0x8003de6 <firmware_image+0x3de6> @ imm = #0x8
 8003ddc: f500 707a    	add.w	r0, r0, #0x3e8
 8003de0: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003de4: e001         	b	0x8003dea <firmware_image+0x3dea> @ imm = #0x2
 8003de6: f8c9 602c    	str.w	r6, [r9, #0x2c]
 8003dea: 8cf8         	ldrh	r0, [r7, #0x26]
 8003dec: b148         	cbz	r0, 0x8003e02 <firmware_image+0x3e02> @ imm = #0x12
 8003dee: 48b2         	ldr	r0, [pc, #0x2c8]        @ 0x80040b8 <firmware_image+0x40b8>
 8003df0: f8c8 0000    	str.w	r0, [r8]
 8003df4: f8c7 b058    	str.w	r11, [r7, #0x58]
 8003df8: f44f 7096    	mov.w	r0, #0x12c
 8003dfc: 65f8         	str	r0, [r7, #0x5c]
 8003dfe: 663e         	str	r6, [r7, #0x60]
 8003e00: e760         	b	0x8003cc4 <firmware_image+0x3cc4> @ imm = #-0x140
 8003e02: 6cb8         	ldr	r0, [r7, #0x48]
 8003e04: f8c8 0000    	str.w	r0, [r8]
 8003e08: 6cf8         	ldr	r0, [r7, #0x4c]
 8003e0a: 65b8         	str	r0, [r7, #0x58]
 8003e0c: 6d38         	ldr	r0, [r7, #0x50]
 8003e0e: 65f8         	str	r0, [r7, #0x5c]
 8003e10: 663e         	str	r6, [r7, #0x60]
 8003e12: e757         	b	0x8003cc4 <firmware_image+0x3cc4> @ imm = #-0x152
 8003e14: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003e18: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003e1c: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003e20: 4558         	cmp	r0, r11
 8003e22: dd18         	ble	0x8003e56 <firmware_image+0x3e56> @ imm = #0x30
 8003e24: f8c9 b02c    	str.w	r11, [r9, #0x2c]
 8003e28: f8c9 600c    	str.w	r6, [r9, #0xc]
 8003e2c: 8cf8         	ldrh	r0, [r7, #0x26]
 8003e2e: b130         	cbz	r0, 0x8003e3e <firmware_image+0x3e3e> @ imm = #0xc
 8003e30: 7239         	strb	r1, [r7, #0x8]
 8003e32: f8c8 2000    	str.w	r2, [r8]
 8003e36: 65bb         	str	r3, [r7, #0x58]
 8003e38: 65fd         	str	r5, [r7, #0x5c]
 8003e3a: 663e         	str	r6, [r7, #0x60]
 8003e3c: e00e         	b	0x8003e5c <firmware_image+0x3e5c> @ imm = #0x1c
 8003e3e: 2003         	movs	r0, #0x3
 8003e40: 7238         	strb	r0, [r7, #0x8]
 8003e42: 6cb8         	ldr	r0, [r7, #0x48]
 8003e44: f8c8 0000    	str.w	r0, [r8]
 8003e48: 6cf8         	ldr	r0, [r7, #0x4c]
 8003e4a: 65b8         	str	r0, [r7, #0x58]
 8003e4c: 6d38         	ldr	r0, [r7, #0x50]
 8003e4e: 65f8         	str	r0, [r7, #0x5c]
 8003e50: 6d78         	ldr	r0, [r7, #0x54]
 8003e52: 6638         	str	r0, [r7, #0x60]
 8003e54: e002         	b	0x8003e5c <firmware_image+0x3e5c> @ imm = #0x4
 8003e56: 3064         	adds	r0, #0x64
 8003e58: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003e5c: 4892         	ldr	r0, [pc, #0x248]        @ 0x80040a8 <firmware_image+0x40a8>
 8003e5e: 7800         	ldrb	r0, [r0]
 8003e60: 2801         	cmp	r0, #0x1
 8003e62: d005         	beq	0x8003e70 <firmware_image+0x3e70> @ imm = #0xa
 8003e64: 7878         	ldrb	r0, [r7, #0x1]
 8003e66: b918         	cbnz	r0, 0x8003e70 <firmware_image+0x3e70> @ imm = #0x6
 8003e68: 488e         	ldr	r0, [pc, #0x238]        @ 0x80040a4 <firmware_image+0x40a4>
 8003e6a: 7800         	ldrb	r0, [r0]
 8003e6c: 2800         	cmp	r0, #0x0
 8003e6e: d09e         	beq	0x8003dae <firmware_image+0x3dae> @ imm = #-0xc4
 8003e70: 8cf8         	ldrh	r0, [r7, #0x26]
 8003e72: 2800         	cmp	r0, #0x0
 8003e74: d09b         	beq	0x8003dae <firmware_image+0x3dae> @ imm = #-0xca
 8003e76: f88a 6000    	strb.w	r6, [r10]
 8003e7a: 723e         	strb	r6, [r7, #0x8]
 8003e7c: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003e80: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003e84: e71e         	b	0x8003cc4 <firmware_image+0x3cc4> @ imm = #-0x1c4
 8003e86: f8d9 001c    	ldr.w	r0, [r9, #0x1c]
 8003e8a: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8003e8e: 0100         	lsls	r0, r0, #0x4
 8003e90: f7fc fbe5    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x3836
 8003e94: 2200         	movs	r2, #0x0
 8003e96: 4b89         	ldr	r3, [pc, #0x224]        @ 0x80040bc <firmware_image+0x40bc>
 8003e98: f7fc fb69    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x392e
 8003e9c: 4604         	mov	r4, r0
 8003e9e: 460d         	mov	r5, r1
 8003ea0: f9b7 0036    	ldrsh.w	r0, [r7, #0x36]
 8003ea4: f9b7 1038    	ldrsh.w	r1, [r7, #0x38]
 8003ea8: 1a41         	subs	r1, r0, r1
 8003eaa: eb01 0141    	add.w	r1, r1, r1, lsl #1
 8003eae: eb00 0041    	add.w	r0, r0, r1, lsl #1
 8003eb2: 2132         	movs	r1, #0x32
 8003eb4: 4348         	muls	r0, r1, r0
 8003eb6: 2164         	movs	r1, #0x64
 8003eb8: fb90 f0f1    	sdiv	r0, r0, r1
 8003ebc: f7fc fbcf    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x3862
 8003ec0: 4622         	mov	r2, r4
 8003ec2: 462b         	mov	r3, r5
 8003ec4: f7fc fa3a    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x3b8c
 8003ec8: f7fc fbf3    	bl	0x80006b2 <firmware_image+0x6b2> @ imm = #-0x381a
 8003ecc: f8c9 0024    	str.w	r0, [r9, #0x24]
 8003ed0: 486c         	ldr	r0, [pc, #0x1b0]        @ 0x8004084 <firmware_image+0x4084>
 8003ed2: 465a         	mov	r2, r11
 8003ed4: 497a         	ldr	r1, [pc, #0x1e8]        @ 0x80040c0 <firmware_image+0x40c0>
 8003ed6: 30a4         	adds	r0, #0xa4
 8003ed8: f7fd ff1c    	bl	0x8001d14 <firmware_image+0x1d14> @ imm = #-0x21c8
 8003edc: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003ee0: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003ee4: f002 fa9e    	bl	0x8006424 <firmware_image+0x6424> @ imm = #0x253c
 8003ee8: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003eec: 486e         	ldr	r0, [pc, #0x1b8]        @ 0x80040a8 <firmware_image+0x40a8>
 8003eee: 7800         	ldrb	r0, [r0]
 8003ef0: 2801         	cmp	r0, #0x1
 8003ef2: d004         	beq	0x8003efe <firmware_image+0x3efe> @ imm = #0x8
 8003ef4: 7878         	ldrb	r0, [r7, #0x1]
 8003ef6: b910         	cbnz	r0, 0x8003efe <firmware_image+0x3efe> @ imm = #0x4
 8003ef8: 486a         	ldr	r0, [pc, #0x1a8]        @ 0x80040a4 <firmware_image+0x40a4>
 8003efa: 7800         	ldrb	r0, [r0]
 8003efc: b130         	cbz	r0, 0x8003f0c <firmware_image+0x3f0c> @ imm = #0xc
 8003efe: f88a 6000    	strb.w	r6, [r10]
 8003f02: 723e         	strb	r6, [r7, #0x8]
 8003f04: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003f08: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003f0c: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x80040b4 <firmware_image+0x40b4>
 8003f0e: 7800         	ldrb	r0, [r0]
 8003f10: b300         	cbz	r0, 0x8003f54 <firmware_image+0x3f54> @ imm = #0x40
 8003f12: f8d9 0010    	ldr.w	r0, [r9, #0x10]
 8003f16: f648 21ce    	movw	r1, #0x8ace
 8003f1a: 4288         	cmp	r0, r1
 8003f1c: d202         	bhs	0x8003f24 <firmware_image+0x3f24> @ imm = #0x4
 8003f1e: 1c40         	adds	r0, r0, #0x1
 8003f20: f8c9 0010    	str.w	r0, [r9, #0x10]
 8003f24: f8d9 0010    	ldr.w	r0, [r9, #0x10]
 8003f28: 2805         	cmp	r0, #0x5
 8003f2a: d9ab         	bls	0x8003e84 <firmware_image+0x3e84> @ imm = #-0xaa
 8003f2c: 2003         	movs	r0, #0x3
 8003f2e: 7238         	strb	r0, [r7, #0x8]
 8003f30: 6cb8         	ldr	r0, [r7, #0x48]
 8003f32: f8c8 0000    	str.w	r0, [r8]
 8003f36: 6cf8         	ldr	r0, [r7, #0x4c]
 8003f38: 65b8         	str	r0, [r7, #0x58]
 8003f3a: 6d38         	ldr	r0, [r7, #0x50]
 8003f3c: 65f8         	str	r0, [r7, #0x5c]
 8003f3e: 6d78         	ldr	r0, [r7, #0x54]
 8003f40: 6638         	str	r0, [r7, #0x60]
 8003f42: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003f46: f002 fa6d    	bl	0x8006424 <firmware_image+0x6424> @ imm = #0x24da
 8003f4a: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003f4e: f8c9 6014    	str.w	r6, [r9, #0x14]
 8003f52: e6b7         	b	0x8003cc4 <firmware_image+0x3cc4> @ imm = #-0x292
 8003f54: f8c9 6010    	str.w	r6, [r9, #0x10]
 8003f58: e6b4         	b	0x8003cc4 <firmware_image+0x3cc4> @ imm = #-0x298
 8003f5a: f8d9 0024    	ldr.w	r0, [r9, #0x24]
 8003f5e: f8c9 0044    	str.w	r0, [r9, #0x44]
 8003f62: f9b4 0004    	ldrsh.w	r0, [r4, #0x4]
 8003f66: 2800         	cmp	r0, #0x0
 8003f68: da09         	bge	0x8003f7e <firmware_image+0x3f7e> @ imm = #0x12
 8003f6a: 7ab8         	ldrb	r0, [r7, #0xa]
 8003f6c: 2864         	cmp	r0, #0x64
 8003f6e: d201         	bhs	0x8003f74 <firmware_image+0x3f74> @ imm = #0x2
 8003f70: 1c40         	adds	r0, r0, #0x1
 8003f72: 72b8         	strb	r0, [r7, #0xa]
 8003f74: 7ab8         	ldrb	r0, [r7, #0xa]
 8003f76: 2814         	cmp	r0, #0x14
 8003f78: d902         	bls	0x8003f80 <firmware_image+0x3f80> @ imm = #0x4
 8003f7a: 723e         	strb	r6, [r7, #0x8]
 8003f7c: e000         	b	0x8003f80 <firmware_image+0x3f80> @ imm = #0x0
 8003f7e: 72be         	strb	r6, [r7, #0xa]
 8003f80: 7978         	ldrb	r0, [r7, #0x5]
 8003f82: 2801         	cmp	r0, #0x1
 8003f84: d00e         	beq	0x8003fa4 <firmware_image+0x3fa4> @ imm = #0x1c
 8003f86: 79b8         	ldrb	r0, [r7, #0x6]
 8003f88: 2801         	cmp	r0, #0x1
 8003f8a: d00b         	beq	0x8003fa4 <firmware_image+0x3fa4> @ imm = #0x16
 8003f8c: 79f8         	ldrb	r0, [r7, #0x7]
 8003f8e: 2801         	cmp	r0, #0x1
 8003f90: d008         	beq	0x8003fa4 <firmware_image+0x3fa4> @ imm = #0x10
 8003f92: 8cf8         	ldrh	r0, [r7, #0x26]
 8003f94: b1a0         	cbz	r0, 0x8003fc0 <firmware_image+0x3fc0> @ imm = #0x28
 8003f96: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003f9a: 4558         	cmp	r0, r11
 8003f9c: dd0d         	ble	0x8003fba <firmware_image+0x3fba> @ imm = #0x1a
 8003f9e: f8c9 b02c    	str.w	r11, [r9, #0x2c]
 8003fa2: e00d         	b	0x8003fc0 <firmware_image+0x3fc0> @ imm = #0x1a
 8003fa4: f8d9 002c    	ldr.w	r0, [r9, #0x2c]
 8003fa8: 280a         	cmp	r0, #0xa
 8003faa: dd03         	ble	0x8003fb4 <firmware_image+0x3fb4> @ imm = #0x6
 8003fac: 380a         	subs	r0, #0xa
 8003fae: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003fb2: e005         	b	0x8003fc0 <firmware_image+0x3fc0> @ imm = #0xa
 8003fb4: f8c9 602c    	str.w	r6, [r9, #0x2c]
 8003fb8: e002         	b	0x8003fc0 <firmware_image+0x3fc0> @ imm = #0x4
 8003fba: 30c8         	adds	r0, #0xc8
 8003fbc: f8c9 002c    	str.w	r0, [r9, #0x2c]
 8003fc0: 4840         	ldr	r0, [pc, #0x100]        @ 0x80040c4 <firmware_image+0x40c4>
 8003fc2: 4c41         	ldr	r4, [pc, #0x104]        @ 0x80040c8 <firmware_image+0x40c8>
 8003fc4: 7800         	ldrb	r0, [r0]
 8003fc6: 7824         	ldrb	r4, [r4]
 8003fc8: 4320         	orrs	r0, r4
 8003fca: d011         	beq	0x8003ff0 <firmware_image+0x3ff0> @ imm = #0x22
 8003fcc: f8c9 6014    	str.w	r6, [r9, #0x14]
 8003fd0: 4835         	ldr	r0, [pc, #0xd4]         @ 0x80040a8 <firmware_image+0x40a8>
 8003fd2: 7800         	ldrb	r0, [r0]
 8003fd4: 2801         	cmp	r0, #0x1
 8003fd6: d003         	beq	0x8003fe0 <firmware_image+0x3fe0> @ imm = #0x6
 8003fd8: 4832         	ldr	r0, [pc, #0xc8]         @ 0x80040a4 <firmware_image+0x40a4>
 8003fda: 7800         	ldrb	r0, [r0]
 8003fdc: 2800         	cmp	r0, #0x0
 8003fde: d0b8         	beq	0x8003f52 <firmware_image+0x3f52> @ imm = #-0x90
 8003fe0: f88a 6000    	strb.w	r6, [r10]
 8003fe4: 723e         	strb	r6, [r7, #0x8]
 8003fe6: f8c9 6004    	str.w	r6, [r9, #0x4]
 8003fea: f8c9 6008    	str.w	r6, [r9, #0x8]
 8003fee: e669         	b	0x8003cc4 <firmware_image+0x3cc4> @ imm = #-0x32e
 8003ff0: f8d9 0014    	ldr.w	r0, [r9, #0x14]
 8003ff4: f648 24ce    	movw	r4, #0x8ace
 8003ff8: 42a0         	cmp	r0, r4
 8003ffa: d202         	bhs	0x8004002 <firmware_image+0x4002> @ imm = #0x4
 8003ffc: 1c40         	adds	r0, r0, #0x1
 8003ffe: f8c9 0014    	str.w	r0, [r9, #0x14]
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
 8004134: f88d 0005    	strb.w	r0, [sp, #0x5]
 8004138: 2000         	movs	r0, #0x0
 800413a: f88d 0006    	strb.w	r0, [sp, #0x6]
 800413e: 4d05         	ldr	r5, [pc, #0x14]         @ 0x8004154 <firmware_image+0x4154>
 8004140: 4669         	mov	r1, sp
 8004142: 4628         	mov	r0, r5
 8004144: f7fe faba    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x1a8c
 8004148: 4621         	mov	r1, r4
 800414a: 4628         	mov	r0, r5
 800414c: f7fe fb0b    	bl	0x8002766 <firmware_image+0x2766> @ imm = #-0x19ea
 8004150: bd7c         	pop	{r2, r3, r4, r5, r6, pc}
 8004152: 0000         	movs	r0, r0
 8004154: 0400         	lsls	r0, r0, #0x10
 8004156: 4800         	ldr	r0, [pc, #0x0]          @ 0x8004158 <firmware_image+0x4158>
 8004158: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 800415c: 4e3e         	ldr	r6, [pc, #0xf8]         @ 0x8004258 <firmware_image+0x4258>
 800415e: f106 0780    	add.w	r7, r6, #0x80
 8004162: 6df0         	ldr	r0, [r6, #0x5c]
 8004164: 69f9         	ldr	r1, [r7, #0x1c]
 8004166: 4348         	muls	r0, r1, r0
 8004168: f7fc fa79    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x3b0e
 800416c: 2200         	movs	r2, #0x0
 800416e: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x800425c <firmware_image+0x425c>
 8004170: f7fc f9fd    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x3c06
 8004174: 4604         	mov	r4, r0
 8004176: 460d         	mov	r5, r1
 8004178: f9b6 1036    	ldrsh.w	r1, [r6, #0x36]
 800417c: 6db0         	ldr	r0, [r6, #0x58]
 800417e: 4348         	muls	r0, r1, r0
 8004180: f7fc fa6d    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x3b26
 8004184: f8df 80d8    	ldr.w	r8, [pc, #0xd8]         @ 0x8004260 <firmware_image+0x4260>
 8004188: 2200         	movs	r2, #0x0
 800418a: 4643         	mov	r3, r8
 800418c: f7fc f9ef    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x3c22
 8004190: 4622         	mov	r2, r4
 8004192: 462b         	mov	r3, r5
 8004194: f7fc f8d2    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x3e5c
 8004198: f7fc fa8b    	bl	0x80006b2 <firmware_image+0x6b2> @ imm = #-0x3aea
 800419c: 67b0         	str	r0, [r6, #0x78]
 800419e: 6e30         	ldr	r0, [r6, #0x60]
 80041a0: f7fc fa54    	bl	0x800064c <firmware_image+0x64c> @ imm = #-0x3b58
 80041a4: 6bb9         	ldr	r1, [r7, #0x38]
 80041a6: f7fc f84d    	bl	0x8000244 <firmware_image+0x244> @ imm = #-0x3f66
 80041aa: f7fc faa1    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x3abe
 80041ae: 2200         	movs	r2, #0x0
 80041b0: 4643         	mov	r3, r8
 80041b2: f7fc f9dc    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x3c48
 80041b6: f7fc fa7c    	bl	0x80006b2 <firmware_image+0x6b2> @ imm = #-0x3b08
 80041ba: 67f0         	str	r0, [r6, #0x7c]
 80041bc: f247 7209    	movw	r2, #0x7709
 80041c0: 4251         	rsbs	r1, r2, #0
 80041c2: 1f38         	subs	r0, r7, #0x4
 80041c4: f7fd fda6    	bl	0x8001d14 <firmware_image+0x1d14> @ imm = #-0x24b4
 80041c8: e9d6 011e    	ldrd	r0, r1, [r6, #120]
 80041cc: 4408         	add	r0, r1
 80041ce: 6ef1         	ldr	r1, [r6, #0x6c]
 80041d0: 1a40         	subs	r0, r0, r1
 80041d2: f640 713c    	movw	r1, #0xf3c
 80041d6: 4348         	muls	r0, r1, r0
 80041d8: f9b6 1020    	ldrsh.w	r1, [r6, #0x20]
 80041dc: fb90 f0f1    	sdiv	r0, r0, r1
 80041e0: 6038         	str	r0, [r7]
 80041e2: f646 7454    	movw	r4, #0x6f54
 80041e6: 4265         	rsbs	r5, r4, #0
 80041e8: 4622         	mov	r2, r4
 80041ea: 4629         	mov	r1, r5
 80041ec: 4638         	mov	r0, r7
 80041ee: f7fd fd91    	bl	0x8001d14 <firmware_image+0x1d14> @ imm = #-0x24de
 80041f2: 6838         	ldr	r0, [r7]
 80041f4: 62b8         	str	r0, [r7, #0x28]
 80041f6: f9b6 0020    	ldrsh.w	r0, [r6, #0x20]
 80041fa: f640 5148    	movw	r1, #0xd48
 80041fe: 4288         	cmp	r0, r1
 8004200: da03         	bge	0x800420a <firmware_image+0x420a> @ imm = #0x6
 8004202: f44f 7016    	mov.w	r0, #0x258
 8004206: 8570         	strh	r0, [r6, #0x2a]
 8004208: e002         	b	0x8004210 <firmware_image+0x4210> @ imm = #0x4
 800420a: f44f 6096    	mov.w	r0, #0x4b0
 800420e: 8570         	strh	r0, [r6, #0x2a]
 8004210: 4811         	ldr	r0, [pc, #0x44]         @ 0x8004258 <firmware_image+0x4258>
 8004212: 4622         	mov	r2, r4
 8004214: 4629         	mov	r1, r5
 8004216: 30a8         	adds	r0, #0xa8
 8004218: f7fd fd7c    	bl	0x8001d14 <firmware_image+0x1d14> @ imm = #-0x2508
 800421c: 6ab8         	ldr	r0, [r7, #0x28]
 800421e: f7fc fa1e    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x3bc4
 8004222: 4a10         	ldr	r2, [pc, #0x40]         @ 0x8004264 <firmware_image+0x4264>
 8004224: 4b10         	ldr	r3, [pc, #0x40]         @ 0x8004268 <firmware_image+0x4268>
 8004226: f7fc f930    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x3da0
 800422a: 4604         	mov	r4, r0
 800422c: 460d         	mov	r5, r1
 800422e: 6c38         	ldr	r0, [r7, #0x40]
 8004230: f7fc fa5e    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x3b44
 8004234: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x800426c <firmware_image+0x426c>
 8004236: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x8004270 <firmware_image+0x4270>
 8004238: f7fc f927    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x3db2
 800423c: 4622         	mov	r2, r4
 800423e: 462b         	mov	r3, r5
 8004240: f7fc f87c    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x3f08
 8004244: f7fc fa80    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x3b00
 8004248: 6438         	str	r0, [r7, #0x40]
 800424a: f7fc fa19    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x3bce
 800424e: b200         	sxth	r0, r0
 8004250: 6278         	str	r0, [r7, #0x24]
 8004252: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8004256: 0000         	movs	r0, r0
 8004258: 0064         	lsls	r4, r4, #0x1
 800425a: 2000         	movs	r0, #0x0
 800425c: 8800         	ldrh	r0, [r0]
 800425e: 40c3         	lsrs	r3, r0
 8004260: 0000         	movs	r0, r0
 8004262: 4059         	eors	r1, r3
 8004264: 47ae         	<unknown>
 8004266: 7ae1         	ldrb	r1, [r4, #0xb]
 8004268: ae14         	add	r6, sp, #0x50
 800426a: 3fef         	subs	r7, #0xef
 800426c: 147b         	asrs	r3, r7, #0x11
 800426e: 47ae         	<unknown>
 8004270: 7ae1         	ldrb	r1, [r4, #0xb]
 8004272: 3f84         	subs	r7, #0x84
 8004274: b5f3         	push	{r0, r1, r4, r5, r6, r7, lr}
 8004276: b082         	sub	sp, #0x8
 8004278: 4608         	mov	r0, r1
 800427a: f001 fcc1    	bl	0x8005c00 <firmware_image+0x5c00> @ imm = #0x1982
 800427e: 9000         	str	r0, [sp]
 8004280: f9bd 1008    	ldrsh.w	r1, [sp, #0x8]
 8004284: f9bd 3000    	ldrsh.w	r3, [sp]
 8004288: fb01 f003    	mul	r0, r1, r3
 800428c: f9bd 200a    	ldrsh.w	r2, [sp, #0xa]
 8004290: f9bd 4002    	ldrsh.w	r4, [sp, #0x2]
 8004294: fb02 f504    	mul	r5, r2, r4
 8004298: 1b40         	subs	r0, r0, r5
 800429a: 17c5         	asrs	r5, r0, #0x1f
 800429c: eb00 4055    	add.w	r0, r0, r5, lsr #17
 80042a0: 13c0         	asrs	r0, r0, #0xf
 80042a2: f647 76ff    	movw	r6, #0x7fff
 80042a6: f44f 4c00    	mov.w	r12, #0x8000
 80042aa: 43f5         	mvns	r5, r6
 80042ac: 4560         	cmp	r0, r12
 80042ae: db01         	blt	0x80042b4 <firmware_image+0x42b4> @ imm = #0x2
 80042b0: 4630         	mov	r0, r6
 80042b2: e004         	b	0x80042be <firmware_image+0x42be> @ imm = #0x8
 80042b4: 42a8         	cmp	r0, r5
 80042b6: da01         	bge	0x80042bc <firmware_image+0x42bc> @ imm = #0x2
 80042b8: 4628         	mov	r0, r5
 80042ba: e000         	b	0x80042be <firmware_image+0x42be> @ imm = #0x0
 80042bc: b200         	sxth	r0, r0
 80042be: f8ad 0004    	strh.w	r0, [sp, #0x4]
 80042c2: 4f0e         	ldr	r7, [pc, #0x38]         @ 0x80042fc <firmware_image+0x42fc>
 80042c4: 42a8         	cmp	r0, r5
 80042c6: d101         	bne	0x80042cc <firmware_image+0x42cc> @ imm = #0x2
 80042c8: f8ad 7004    	strh.w	r7, [sp, #0x4]
 80042cc: 4361         	muls	r1, r4, r1
 80042ce: 435a         	muls	r2, r3, r2
 80042d0: 1888         	adds	r0, r1, r2
 80042d2: 17c1         	asrs	r1, r0, #0x1f
 80042d4: eb00 4051    	add.w	r0, r0, r1, lsr #17
 80042d8: 13c1         	asrs	r1, r0, #0xf
 80042da: 4561         	cmp	r1, r12
 80042dc: db01         	blt	0x80042e2 <firmware_image+0x42e2> @ imm = #0x2
 80042de: 4630         	mov	r0, r6
 80042e0: e003         	b	0x80042ea <firmware_image+0x42ea> @ imm = #0x6
 80042e2: 4628         	mov	r0, r5
 80042e4: 4281         	cmp	r1, r0
 80042e6: db00         	blt	0x80042ea <firmware_image+0x42ea> @ imm = #0x0
 80042e8: b208         	sxth	r0, r1
 80042ea: f8ad 0006    	strh.w	r0, [sp, #0x6]
 80042ee: 42a8         	cmp	r0, r5
 80042f0: d101         	bne	0x80042f6 <firmware_image+0x42f6> @ imm = #0x2
 80042f2: f8ad 7006    	strh.w	r7, [sp, #0x6]
 80042f6: 9801         	ldr	r0, [sp, #0x4]
 80042f8: b004         	add	sp, #0x10
 80042fa: bdf0         	pop	{r4, r5, r6, r7, pc}
 80042fc: 8001         	strh	r1, [r0]
 80042fe: ffff 4770    	<unknown>
 8004302: 2100         	movs	r1, #0x0
 8004304: 7001         	strb	r1, [r0]
 8004306: 7041         	strb	r1, [r0, #0x1]
 8004308: 7201         	strb	r1, [r0, #0x8]
 800430a: 7241         	strb	r1, [r0, #0x9]
 800430c: 4770         	bx	lr
 800430e: 6041         	str	r1, [r0, #0x4]
 8004310: 7082         	strb	r2, [r0, #0x2]
 8004312: f7ff bff6    	b.w	0x8004302 <firmware_image+0x4302> @ imm = #-0x14
 8004316: 0000         	movs	r0, r0
 8004318: 4908         	ldr	r1, [pc, #0x20]         @ 0x800433c <firmware_image+0x433c>
 800431a: 684a         	ldr	r2, [r1, #0x4]
 800431c: f422 4240    	bic	r2, r2, #0xc000
 8004320: 604a         	str	r2, [r1, #0x4]
 8004322: 684a         	ldr	r2, [r1, #0x4]
 8004324: b283         	uxth	r3, r0
 8004326: 431a         	orrs	r2, r3
 8004328: 604a         	str	r2, [r1, #0x4]
 800432a: 6b0a         	ldr	r2, [r1, #0x30]
 800432c: f422 7280    	bic	r2, r2, #0x100
 8004330: 630a         	str	r2, [r1, #0x30]
 8004332: 6b0a         	ldr	r2, [r1, #0x30]
 8004334: ea42 4010    	orr.w	r0, r2, r0, lsr #16
 8004338: 6308         	str	r0, [r1, #0x30]
 800433a: 4770         	bx	lr
 800433c: 1000         	asrs	r0, r0, #0x20
 800433e: 4002         	ands	r2, r0
 8004340: 4a03         	ldr	r2, [pc, #0xc]          @ 0x8004350 <firmware_image+0x4350>
 8004342: 6851         	ldr	r1, [r2, #0x4]
 8004344: f021 01f0    	bic	r1, r1, #0xf0
 8004348: 4301         	orrs	r1, r0
 800434a: 6051         	str	r1, [r2, #0x4]
 800434c: 4770         	bx	lr
 800434e: 0000         	movs	r0, r0
 8004350: 1000         	asrs	r0, r0, #0x20
 8004352: 4002         	ands	r2, r0
 8004354: 4a05         	ldr	r2, [pc, #0x14]         @ 0x800436c <firmware_image+0x436c>
 8004356: 2900         	cmp	r1, #0x0
 8004358: d003         	beq	0x8004362 <firmware_image+0x4362> @ imm = #0x6
 800435a: 6951         	ldr	r1, [r2, #0x14]
 800435c: 4301         	orrs	r1, r0
 800435e: 6151         	str	r1, [r2, #0x14]
 8004360: 4770         	bx	lr
 8004362: 6951         	ldr	r1, [r2, #0x14]
 8004364: 4381         	bics	r1, r0
 8004366: 6151         	str	r1, [r2, #0x14]
 8004368: 4770         	bx	lr
 800436a: 0000         	movs	r0, r0
 800436c: 1000         	asrs	r0, r0, #0x20
 800436e: 4002         	ands	r2, r0
 8004370: 4a03         	ldr	r2, [pc, #0xc]          @ 0x8004380 <firmware_image+0x4380>
 8004372: 6851         	ldr	r1, [r2, #0x4]
 8004374: f421 61e0    	bic	r1, r1, #0x700
 8004378: 4301         	orrs	r1, r0
 800437a: 6051         	str	r1, [r2, #0x4]
 800437c: 4770         	bx	lr
 800437e: 0000         	movs	r0, r0
 8004380: 1000         	asrs	r0, r0, #0x20
 8004382: 4002         	ands	r2, r0
 8004384: 4a05         	ldr	r2, [pc, #0x14]         @ 0x800439c <firmware_image+0x439c>
 8004386: 2900         	cmp	r1, #0x0
 8004388: d003         	beq	0x8004392 <firmware_image+0x4392> @ imm = #0x6
 800438a: 69d1         	ldr	r1, [r2, #0x1c]
 800438c: 4301         	orrs	r1, r0
 800438e: 61d1         	str	r1, [r2, #0x1c]
 8004390: 4770         	bx	lr
 8004392: 69d1         	ldr	r1, [r2, #0x1c]
 8004394: 4381         	bics	r1, r0
 8004396: 61d1         	str	r1, [r2, #0x1c]
 8004398: 4770         	bx	lr
 800439a: 0000         	movs	r0, r0
 800439c: 1000         	asrs	r0, r0, #0x20
 800439e: 4002         	ands	r2, r0
 80043a0: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80043b8 <firmware_image+0x43b8>
 80043a2: 2900         	cmp	r1, #0x0
 80043a4: d003         	beq	0x80043ae <firmware_image+0x43ae> @ imm = #0x6
 80043a6: 6911         	ldr	r1, [r2, #0x10]
 80043a8: 4301         	orrs	r1, r0
 80043aa: 6111         	str	r1, [r2, #0x10]
 80043ac: 4770         	bx	lr
 80043ae: 6911         	ldr	r1, [r2, #0x10]
 80043b0: 4381         	bics	r1, r0
 80043b2: 6111         	str	r1, [r2, #0x10]
 80043b4: 4770         	bx	lr
 80043b6: 0000         	movs	r0, r0
 80043b8: 1000         	asrs	r0, r0, #0x20
 80043ba: 4002         	ands	r2, r0
 80043bc: 4a03         	ldr	r2, [pc, #0xc]          @ 0x80043cc <firmware_image+0x43cc>
 80043be: 6851         	ldr	r1, [r2, #0x4]
 80043c0: f421 5160    	bic	r1, r1, #0x3800
 80043c4: 4301         	orrs	r1, r0
 80043c6: 6051         	str	r1, [r2, #0x4]
 80043c8: 4770         	bx	lr
 80043ca: 0000         	movs	r0, r0
 80043cc: 1000         	asrs	r0, r0, #0x20
 80043ce: 4002         	ands	r2, r0
 80043d0: 4a05         	ldr	r2, [pc, #0x14]         @ 0x80043e8 <firmware_image+0x43e8>
 80043d2: 2900         	cmp	r1, #0x0
 80043d4: d003         	beq	0x80043de <firmware_image+0x43de> @ imm = #0x6
 80043d6: 6991         	ldr	r1, [r2, #0x18]
 80043d8: 4301         	orrs	r1, r0
 80043da: 6191         	str	r1, [r2, #0x18]
 80043dc: 4770         	bx	lr
 80043de: 6991         	ldr	r1, [r2, #0x18]
 80043e0: 4381         	bics	r1, r0
 80043e2: 6191         	str	r1, [r2, #0x18]
 80043e4: 4770         	bx	lr
 80043e6: 0000         	movs	r0, r0
 80043e8: 1000         	asrs	r0, r0, #0x20
 80043ea: 4002         	ands	r2, r0
 80043ec: 4a05         	ldr	r2, [pc, #0x14]         @ 0x8004404 <firmware_image+0x4404>
 80043ee: 2900         	cmp	r1, #0x0
 80043f0: d003         	beq	0x80043fa <firmware_image+0x43fa> @ imm = #0x6
 80043f2: 68d1         	ldr	r1, [r2, #0xc]
 80043f4: 4301         	orrs	r1, r0
 80043f6: 60d1         	str	r1, [r2, #0xc]
 80043f8: 4770         	bx	lr
 80043fa: 68d1         	ldr	r1, [r2, #0xc]
 80043fc: 4381         	bics	r1, r0
 80043fe: 60d1         	str	r1, [r2, #0xc]
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
 80046ac: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 80046b0: 4e1e         	ldr	r6, [pc, #0x78]         @ 0x800472c <firmware_image+0x472c>
 80046b2: 1cb0         	adds	r0, r6, #0x2
 80046b4: f7fc ffdc    	bl	0x8001670 <firmware_image+0x1670> @ imm = #-0x3048
 80046b8: 4605         	mov	r5, r0
 80046ba: 1d30         	adds	r0, r6, #0x4
 80046bc: f7fc ffd8    	bl	0x8001670 <firmware_image+0x1670> @ imm = #-0x3050
 80046c0: 4604         	mov	r4, r0
 80046c2: 1e60         	subs	r0, r4, #0x1
 80046c4: 287c         	cmp	r0, #0x7c
 80046c6: d304         	blo	0x80046d2 <firmware_image+0x46d2> @ imm = #0x8
 80046c8: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80046cc: 2003         	movs	r0, #0x3
 80046ce: f002 bc21    	b.w	0x8006f14 <firmware_image+0x6f14> @ imm = #0x2842
 80046d2: 1928         	adds	r0, r5, r4
 80046d4: 2820         	cmp	r0, #0x20
 80046d6: d904         	bls	0x80046e2 <firmware_image+0x46e2> @ imm = #0x8
 80046d8: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80046dc: 2002         	movs	r0, #0x2
 80046de: f002 bc19    	b.w	0x8006f14 <firmware_image+0x6f14> @ imm = #0x2832
 80046e2: 0060         	lsls	r0, r4, #0x1
 80046e4: 70b0         	strb	r0, [r6, #0x2]
 80046e6: 2300         	movs	r3, #0x0
 80046e8: 4f10         	ldr	r7, [pc, #0x40]         @ 0x800472c <firmware_image+0x472c>
 80046ea: 3f80         	subs	r7, #0x80
 80046ec: e009         	b	0x8004702 <firmware_image+0x4702> @ imm = #0x12
 80046ee: 18e8         	adds	r0, r5, r3
 80046f0: f837 1010    	ldrh.w	r1, [r7, r0, lsl #1]
 80046f4: eb06 0043    	add.w	r0, r6, r3, lsl #1
 80046f8: 1cc0         	adds	r0, r0, #0x3
 80046fa: f000 f85c    	bl	0x80047b6 <firmware_image+0x47b6> @ imm = #0xb8
 80046fe: 1c5b         	adds	r3, r3, #0x1
 8004700: b2db         	uxtb	r3, r3
 8004702: 42a3         	cmp	r3, r4
 8004704: d3f3         	blo	0x80046ee <firmware_image+0x46ee> @ imm = #-0x1a
 8004706: 2003         	movs	r0, #0x3
 8004708: eb00 0044    	add.w	r0, r0, r4, lsl #1
 800470c: b2c4         	uxtb	r4, r0
 800470e: 4621         	mov	r1, r4
 8004710: 4806         	ldr	r0, [pc, #0x18]         @ 0x800472c <firmware_image+0x472c>
 8004712: f002 fb91    	bl	0x8006e38 <firmware_image+0x6e38> @ imm = #0x2722
 8004716: 4601         	mov	r1, r0
 8004718: 1930         	adds	r0, r6, r4
 800471a: f000 f850    	bl	0x80047be <firmware_image+0x47be> @ imm = #0xa0
 800471e: 1ca4         	adds	r4, r4, #0x2
 8004720: b2e1         	uxtb	r1, r4
 8004722: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8004726: 4801         	ldr	r0, [pc, #0x4]          @ 0x800472c <firmware_image+0x472c>
 8004728: f002 bcc4    	b.w	0x80070b4 <firmware_image+0x70b4> @ imm = #0x2988
 800472c: 0478         	lsls	r0, r7, #0x11
 800472e: 2000         	movs	r0, #0x0
 8004730: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8004734: 4e1e         	ldr	r6, [pc, #0x78]         @ 0x80047b0 <firmware_image+0x47b0>
 8004736: 1cb0         	adds	r0, r6, #0x2
 8004738: f7fc ff9a    	bl	0x8001670 <firmware_image+0x1670> @ imm = #-0x30cc
 800473c: 4605         	mov	r5, r0
 800473e: 1d30         	adds	r0, r6, #0x4
 8004740: f7fc ff96    	bl	0x8001670 <firmware_image+0x1670> @ imm = #-0x30d4
 8004744: 4604         	mov	r4, r0
 8004746: 1e60         	subs	r0, r4, #0x1
 8004748: 287c         	cmp	r0, #0x7c
 800474a: d304         	blo	0x8004756 <firmware_image+0x4756> @ imm = #0x8
 800474c: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8004750: 2003         	movs	r0, #0x3
 8004752: f002 bbdf    	b.w	0x8006f14 <firmware_image+0x6f14> @ imm = #0x27be
 8004756: 1928         	adds	r0, r5, r4
 8004758: 2820         	cmp	r0, #0x20
 800475a: d904         	bls	0x8004766 <firmware_image+0x4766> @ imm = #0x8
 800475c: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 8004760: 2002         	movs	r0, #0x2
 8004762: f002 bbd7    	b.w	0x8006f14 <firmware_image+0x6f14> @ imm = #0x27ae
 8004766: 0060         	lsls	r0, r4, #0x1
 8004768: 70b0         	strb	r0, [r6, #0x2]
 800476a: 2300         	movs	r3, #0x0
 800476c: 4f10         	ldr	r7, [pc, #0x40]         @ 0x80047b0 <firmware_image+0x47b0>
 800476e: 3f40         	subs	r7, #0x40
 8004770: e009         	b	0x8004786 <firmware_image+0x4786> @ imm = #0x12
 8004772: 18e8         	adds	r0, r5, r3
 8004774: f837 1010    	ldrh.w	r1, [r7, r0, lsl #1]
 8004778: eb06 0043    	add.w	r0, r6, r3, lsl #1
 800477c: 1cc0         	adds	r0, r0, #0x3
 800477e: f000 f81a    	bl	0x80047b6 <firmware_image+0x47b6> @ imm = #0x34
 8004782: 1c5b         	adds	r3, r3, #0x1
 8004784: b2db         	uxtb	r3, r3
 8004786: 42a3         	cmp	r3, r4
 8004788: d3f3         	blo	0x8004772 <firmware_image+0x4772> @ imm = #-0x1a
 800478a: 2003         	movs	r0, #0x3
 800478c: eb00 0044    	add.w	r0, r0, r4, lsl #1
 8004790: b2c4         	uxtb	r4, r0
 8004792: 4621         	mov	r1, r4
 8004794: 4806         	ldr	r0, [pc, #0x18]         @ 0x80047b0 <firmware_image+0x47b0>
 8004796: f002 fb4f    	bl	0x8006e38 <firmware_image+0x6e38> @ imm = #0x269e
 800479a: 4601         	mov	r1, r0
 800479c: 1930         	adds	r0, r6, r4
 800479e: f000 f80e    	bl	0x80047be <firmware_image+0x47be> @ imm = #0x1c
 80047a2: 1ca4         	adds	r4, r4, #0x2
 80047a4: b2e1         	uxtb	r1, r4
 80047a6: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80047aa: 4801         	ldr	r0, [pc, #0x4]          @ 0x80047b0 <firmware_image+0x47b0>
 80047ac: f002 bc82    	b.w	0x80070b4 <firmware_image+0x70b4> @ imm = #0x2904
 80047b0: 0478         	lsls	r0, r7, #0x11
 80047b2: 2000         	movs	r0, #0x0
 80047b4: 4770         	bx	lr
 80047b6: 0a0a         	lsrs	r2, r1, #0x8
 80047b8: 7002         	strb	r2, [r0]
 80047ba: 7041         	strb	r1, [r0, #0x1]
 80047bc: 4770         	bx	lr
 80047be: 7001         	strb	r1, [r0]
 80047c0: 0a09         	lsrs	r1, r1, #0x8
 80047c2: 7041         	strb	r1, [r0, #0x1]
 80047c4: 4770         	bx	lr
 80047c6: 0000         	movs	r0, r0
 80047c8: b51c         	push	{r2, r3, r4, lr}
 80047ca: 2101         	movs	r1, #0x1
 80047cc: 0588         	lsls	r0, r1, #0x16
 80047ce: f7ff fdc1    	bl	0x8004354 <firmware_image+0x4354> @ imm = #-0x47e
 80047d2: 2002         	movs	r0, #0x2
 80047d4: 9000         	str	r0, [sp]
 80047d6: 2000         	movs	r0, #0x0
 80047d8: f88d 0004    	strb.w	r0, [sp, #0x4]
 80047dc: 2103         	movs	r1, #0x3
 80047de: f88d 1005    	strb.w	r1, [sp, #0x5]
 80047e2: f88d 0006    	strb.w	r0, [sp, #0x6]
 80047e6: f88d 0007    	strb.w	r0, [sp, #0x7]
 80047ea: 4669         	mov	r1, sp
 80047ec: 4801         	ldr	r0, [pc, #0x4]          @ 0x80047f4 <firmware_image+0x47f4>
 80047ee: f7fd ff65    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x2136
 80047f2: bd1c         	pop	{r2, r3, r4, pc}
 80047f4: 1400         	asrs	r0, r0, #0x10
 80047f6: 4800         	ldr	r0, [pc, #0x0]          @ 0x80047f8 <firmware_image+0x47f8>
 80047f8: b501         	push	{r0, lr}
 80047fa: b081         	sub	sp, #0x4
 80047fc: 9801         	ldr	r0, [sp, #0x4]
 80047fe: 9000         	str	r0, [sp]
 8004800: 4812         	ldr	r0, [pc, #0x48]         @ 0x800484c <firmware_image+0x484c>
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
 8004ce8: 2800         	cmp	r0, #0x0
 8004cea: d0fa         	beq	0x8004ce2 <firmware_image+0x4ce2> @ imm = #-0xc
 8004cec: 2014         	movs	r0, #0x14
 8004cee: f7fb ff65    	bl	0x8000bbc <firmware_image+0xbbc> @ imm = #-0x4136
 8004cf2: 8961         	ldrh	r1, [r4, #0xa]
 8004cf4: eb01 00d0    	add.w	r0, r1, r0, lsr #3
 8004cf8: 8160         	strh	r0, [r4, #0xa]
 8004cfa: 2018         	movs	r0, #0x18
 8004cfc: f7fb ff5e    	bl	0x8000bbc <firmware_image+0xbbc> @ imm = #-0x4144
 8004d00: 89a1         	ldrh	r1, [r4, #0xc]
 8004d02: eb01 00d0    	add.w	r0, r1, r0, lsr #3
 8004d06: 81a0         	strh	r0, [r4, #0xc]
 8004d08: 2004         	movs	r0, #0x4
 8004d0a: f7fb ff09    	bl	0x8000b20 <firmware_image+0xb20> @ imm = #-0x41ee
 8004d0e: 2001         	movs	r0, #0x1
 8004d10: f7fb ffcc    	bl	0x8000cac <firmware_image+0xcac> @ imm = #-0x4068
 8004d14: 8920         	ldrh	r0, [r4, #0x8]
 8004d16: 1c40         	adds	r0, r0, #0x1
 8004d18: b280         	uxth	r0, r0
 8004d1a: 8120         	strh	r0, [r4, #0x8]
 8004d1c: 2810         	cmp	r0, #0x10
 8004d1e: d3e0         	blo	0x8004ce2 <firmware_image+0x4ce2> @ imm = #-0x40
 8004d20: 8961         	ldrh	r1, [r4, #0xa]
 8004d22: f241 1093    	movw	r0, #0x1193
 8004d26: f5a1 41ea    	sub.w	r1, r1, #0x7500
 8004d2a: 3931         	subs	r1, #0x31
 8004d2c: 4281         	cmp	r1, r0
 8004d2e: d207         	bhs	0x8004d40 <firmware_image+0x4d40> @ imm = #0xe
 8004d30: 89a1         	ldrh	r1, [r4, #0xc]
 8004d32: f5a1 41ea    	sub.w	r1, r1, #0x7500
 8004d36: 3931         	subs	r1, #0x31
 8004d38: 4281         	cmp	r1, r0
 8004d3a: d201         	bhs	0x8004d40 <firmware_image+0x4d40> @ imm = #0x2
 8004d3c: 7025         	strb	r5, [r4]
 8004d3e: bd70         	pop	{r4, r5, r6, pc}
 8004d40: 2001         	movs	r0, #0x1
 8004d42: 7020         	strb	r0, [r4]
 8004d44: bd70         	pop	{r4, r5, r6, pc}
 8004d46: 0000         	movs	r0, r0
 8004d48: 02b0         	lsls	r0, r6, #0xa
 8004d4a: 2000         	movs	r0, #0x0
 8004d4c: b538         	push	{r3, r4, r5, lr}
 8004d4e: 4815         	ldr	r0, [pc, #0x54]         @ 0x8004da4 <firmware_image+0x4da4>
 8004d50: 6800         	ldr	r0, [r0]
 8004d52: 4a15         	ldr	r2, [pc, #0x54]         @ 0x8004da8 <firmware_image+0x4da8>
 8004d54: 8951         	ldrh	r1, [r2, #0xa]
 8004d56: eba1 0040    	sub.w	r0, r1, r0, lsl #1
 8004d5a: 4c14         	ldr	r4, [pc, #0x50]         @ 0x8004dac <firmware_image+0x4dac>
 8004d5c: 1c61         	adds	r1, r4, #0x1
 8004d5e: 4265         	rsbs	r5, r4, #0
 8004d60: 0c4b         	lsrs	r3, r1, #0x11
 8004d62: 42a0         	cmp	r0, r4
 8004d64: dc02         	bgt	0x8004d6c <firmware_image+0x4d6c> @ imm = #0x4
 8004d66: f8ad 1000    	strh.w	r1, [sp]
 8004d6a: e006         	b	0x8004d7a <firmware_image+0x4d7a> @ imm = #0xc
 8004d6c: 42a8         	cmp	r0, r5
 8004d6e: db02         	blt	0x8004d76 <firmware_image+0x4d76> @ imm = #0x4
 8004d70: f8ad 3000    	strh.w	r3, [sp]
 8004d74: e001         	b	0x8004d7a <firmware_image+0x4d7a> @ imm = #0x2
 8004d76: f8ad 0000    	strh.w	r0, [sp]
 8004d7a: 480a         	ldr	r0, [pc, #0x28]         @ 0x8004da4 <firmware_image+0x4da4>
 8004d7c: 1d00         	adds	r0, r0, #0x4
 8004d7e: 6800         	ldr	r0, [r0]
 8004d80: 8992         	ldrh	r2, [r2, #0xc]
 8004d82: eba2 0040    	sub.w	r0, r2, r0, lsl #1
 8004d86: 42a0         	cmp	r0, r4
 8004d88: dc02         	bgt	0x8004d90 <firmware_image+0x4d90> @ imm = #0x4
 8004d8a: f8ad 1002    	strh.w	r1, [sp, #0x2]
 8004d8e: e006         	b	0x8004d9e <firmware_image+0x4d9e> @ imm = #0xc
 8004d90: 42a8         	cmp	r0, r5
 8004d92: db02         	blt	0x8004d9a <firmware_image+0x4d9a> @ imm = #0x4
 8004d94: f8ad 3002    	strh.w	r3, [sp, #0x2]
 8004d98: e001         	b	0x8004d9e <firmware_image+0x4d9e> @ imm = #0x2
 8004d9a: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8004d9e: 9800         	ldr	r0, [sp]
 8004da0: bd38         	pop	{r3, r4, r5, pc}
 8004da2: 0000         	movs	r0, r0
 8004da4: 243c         	movs	r4, #0x3c
 8004da6: 4001         	ands	r1, r0
 8004da8: 02b0         	lsls	r0, r6, #0xa
 8004daa: 2000         	movs	r0, #0x0
 8004dac: 8000         	strh	r0, [r0]
 8004dae: ffff e92d    	<unknown>
 8004db2: 43f0         	mvns	r0, r6
 8004db4: b08f         	sub	sp, #0x3c
 8004db6: 2101         	movs	r1, #0x1
 8004db8: 02cf         	lsls	r7, r1, #0xb
 8004dba: 4638         	mov	r0, r7
 8004dbc: f7ff fb08    	bl	0x80043d0 <firmware_image+0x43d0> @ imm = #-0x9f0
 8004dc0: 2101         	movs	r1, #0x1
 8004dc2: f44f 00bc    	mov.w	r0, #0x5e0000
 8004dc6: f7ff fac5    	bl	0x8004354 <firmware_image+0x4354> @ imm = #-0xa76
 8004dca: f44f 60e0    	mov.w	r0, #0x700
 8004dce: 9001         	str	r0, [sp, #0x4]
 8004dd0: 2602         	movs	r6, #0x2
 8004dd2: f88d 6008    	strb.w	r6, [sp, #0x8]
 8004dd6: 2503         	movs	r5, #0x3
 8004dd8: f88d 5009    	strb.w	r5, [sp, #0x9]
 8004ddc: 2400         	movs	r4, #0x0
 8004dde: f88d 400a    	strb.w	r4, [sp, #0xa]
 8004de2: f88d 400b    	strb.w	r4, [sp, #0xb]
 8004de6: f04f 4890    	mov.w	r8, #0x48000000
 8004dea: a901         	add	r1, sp, #0x4
 8004dec: 4640         	mov	r0, r8
 8004dee: f7fd fc65    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x2736
 8004df2: 2202         	movs	r2, #0x2
 8004df4: 2108         	movs	r1, #0x8
 8004df6: 4640         	mov	r0, r8
 8004df8: f7fd fc9c    	bl	0x8002734 <firmware_image+0x2734> @ imm = #-0x26c8
 8004dfc: 2202         	movs	r2, #0x2
 8004dfe: 2109         	movs	r1, #0x9
 8004e00: 4640         	mov	r0, r8
 8004e02: f7fd fc97    	bl	0x8002734 <firmware_image+0x2734> @ imm = #-0x26d2
 8004e06: 2202         	movs	r2, #0x2
 8004e08: 210a         	movs	r1, #0xa
 8004e0a: 4640         	mov	r0, r8
 8004e0c: f7fd fc92    	bl	0x8002734 <firmware_image+0x2734> @ imm = #-0x26dc
 8004e10: f44f 4060    	mov.w	r0, #0xe000
 8004e14: 9001         	str	r0, [sp, #0x4]
 8004e16: f88d 6008    	strb.w	r6, [sp, #0x8]
 8004e1a: f88d 5009    	strb.w	r5, [sp, #0x9]
 8004e1e: f88d 400a    	strb.w	r4, [sp, #0xa]
 8004e22: f88d 400b    	strb.w	r4, [sp, #0xb]
 8004e26: 4d5c         	ldr	r5, [pc, #0x170]        @ 0x8004f98 <firmware_image+0x4f98>
 8004e28: a901         	add	r1, sp, #0x4
 8004e2a: 4628         	mov	r0, r5
 8004e2c: f7fd fc46    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x2774
 8004e30: 2202         	movs	r2, #0x2
 8004e32: 210d         	movs	r1, #0xd
 8004e34: 4628         	mov	r0, r5
 8004e36: f7fd fc7d    	bl	0x8002734 <firmware_image+0x2734> @ imm = #-0x2706
 8004e3a: 2202         	movs	r2, #0x2
 8004e3c: 210e         	movs	r1, #0xe
 8004e3e: 4628         	mov	r0, r5
 8004e40: f7fd fc78    	bl	0x8002734 <firmware_image+0x2734> @ imm = #-0x2710
 8004e44: 2202         	movs	r2, #0x2
 8004e46: 210f         	movs	r1, #0xf
 8004e48: 4628         	mov	r0, r5
 8004e4a: f7fd fc73    	bl	0x8002734 <firmware_image+0x2734> @ imm = #-0x271a
 8004e4e: f8df 914c    	ldr.w	r9, [pc, #0x14c]        @ 0x8004f9c <firmware_image+0x4f9c>
 8004e52: 4648         	mov	r0, r9
 8004e54: f000 fbd2    	bl	0x80055fc <firmware_image+0x55fc> @ imm = #0x7a4
 8004e58: a80c         	add	r0, sp, #0x30
 8004e5a: f000 fbb5    	bl	0x80055c8 <firmware_image+0x55c8> @ imm = #0x76a
 8004e5e: f8ad 4030    	strh.w	r4, [sp, #0x30]
 8004e62: 2020         	movs	r0, #0x20
 8004e64: f8ad 0032    	strh.w	r0, [sp, #0x32]
 8004e68: f640 00ca    	movw	r0, #0x8ca
 8004e6c: 900d         	str	r0, [sp, #0x34]
 8004e6e: 01f0         	lsls	r0, r6, #0x7
 8004e70: f8ad 0038    	strh.w	r0, [sp, #0x38]
 8004e74: 2501         	movs	r5, #0x1
 8004e76: f88d 503a    	strb.w	r5, [sp, #0x3a]
 8004e7a: a90c         	add	r1, sp, #0x30
 8004e7c: 4648         	mov	r0, r9
 8004e7e: f000 fb6b    	bl	0x8005558 <firmware_image+0x5558> @ imm = #0x6d6
 8004e82: a807         	add	r0, sp, #0x1c
 8004e84: f000 fd66    	bl	0x8005954 <firmware_image+0x5954> @ imm = #0xacc
 8004e88: 2060         	movs	r0, #0x60
 8004e8a: f8ad 001c    	strh.w	r0, [sp, #0x1c]
 8004e8e: f8ad 501e    	strh.w	r5, [sp, #0x1e]
 8004e92: f04f 0804    	mov.w	r8, #0x4
 8004e96: f8ad 8020    	strh.w	r8, [sp, #0x20]
 8004e9a: f240 4065    	movw	r0, #0x465
 8004e9e: 9009         	str	r0, [sp, #0x24]
 8004ea0: f8ad 4028    	strh.w	r4, [sp, #0x28]
 8004ea4: 2608         	movs	r6, #0x8
 8004ea6: f8ad 602a    	strh.w	r6, [sp, #0x2a]
 8004eaa: f8ad 402c    	strh.w	r4, [sp, #0x2c]
 8004eae: f8ad 402e    	strh.w	r4, [sp, #0x2e]
 8004eb2: a907         	add	r1, sp, #0x1c
 8004eb4: 4648         	mov	r0, r9
 8004eb6: f000 fc43    	bl	0x8005740 <firmware_image+0x5740> @ imm = #0x886
 8004eba: a907         	add	r1, sp, #0x1c
 8004ebc: 4648         	mov	r0, r9
 8004ebe: f000 fc83    	bl	0x80057c8 <firmware_image+0x57c8> @ imm = #0x906
 8004ec2: a907         	add	r1, sp, #0x1c
 8004ec4: 4648         	mov	r0, r9
 8004ec6: f000 fcc9    	bl	0x800585c <firmware_image+0x585c> @ imm = #0x992
 8004eca: a807         	add	r0, sp, #0x1c
 8004ecc: f000 fd42    	bl	0x8005954 <firmware_image+0x5954> @ imm = #0xa84
 8004ed0: 2070         	movs	r0, #0x70
 8004ed2: f8ad 001c    	strh.w	r0, [sp, #0x1c]
 8004ed6: f8ad 501e    	strh.w	r5, [sp, #0x1e]
 8004eda: f8ad 8020    	strh.w	r8, [sp, #0x20]
 8004ede: f640 00c9    	movw	r0, #0x8c9
 8004ee2: 9009         	str	r0, [sp, #0x24]
 8004ee4: f8ad 4028    	strh.w	r4, [sp, #0x28]
 8004ee8: f8ad 602a    	strh.w	r6, [sp, #0x2a]
 8004eec: f8ad 402c    	strh.w	r4, [sp, #0x2c]
 8004ef0: f8ad 402e    	strh.w	r4, [sp, #0x2e]
 8004ef4: a907         	add	r1, sp, #0x1c
 8004ef6: 4648         	mov	r0, r9
 8004ef8: f000 fcf4    	bl	0x80058e4 <firmware_image+0x58e4> @ imm = #0x9e8
 8004efc: 2108         	movs	r1, #0x8
 8004efe: 4648         	mov	r0, r9
 8004f00: f000 fc5c    	bl	0x80057bc <firmware_image+0x57bc> @ imm = #0x8b8
 8004f04: 2108         	movs	r1, #0x8
 8004f06: 4648         	mov	r0, r9
 8004f08: f000 fc9e    	bl	0x8005848 <firmware_image+0x5848> @ imm = #0x93c
 8004f0c: 2108         	movs	r1, #0x8
 8004f0e: 4648         	mov	r0, r9
 8004f10: f000 fce2    	bl	0x80058d8 <firmware_image+0x58d8> @ imm = #0x9c4
 8004f14: 2108         	movs	r1, #0x8
 8004f16: 4648         	mov	r0, r9
 8004f18: f000 fd12    	bl	0x8005940 <firmware_image+0x5940> @ imm = #0xa24
 8004f1c: a803         	add	r0, sp, #0xc
 8004f1e: f000 fb12    	bl	0x8005546 <firmware_image+0x5546> @ imm = #0x624
 8004f22: f8ad 700c    	strh.w	r7, [sp, #0xc]
 8004f26: 02a8         	lsls	r0, r5, #0xa
 8004f28: f8ad 000e    	strh.w	r0, [sp, #0xe]
 8004f2c: f8ad 4010    	strh.w	r4, [sp, #0x10]
 8004f30: 201c         	movs	r0, #0x1c
 8004f32: f8ad 0012    	strh.w	r0, [sp, #0x12]
 8004f36: f8ad 4014    	strh.w	r4, [sp, #0x14]
 8004f3a: f8ad 4016    	strh.w	r4, [sp, #0x16]
 8004f3e: f8ad 4018    	strh.w	r4, [sp, #0x18]
 8004f42: a903         	add	r1, sp, #0xc
 8004f44: 4648         	mov	r0, r9
 8004f46: f000 faed    	bl	0x8005524 <firmware_image+0x5524> @ imm = #0x5da
 8004f4a: 2120         	movs	r1, #0x20
 8004f4c: 4648         	mov	r0, r9
 8004f4e: f000 fd0b    	bl	0x8005968 <firmware_image+0x5968> @ imm = #0xa16
 8004f52: 2180         	movs	r1, #0x80
 8004f54: 4648         	mov	r0, r9
 8004f56: f000 fb40    	bl	0x80055da <firmware_image+0x55da> @ imm = #0x680
 8004f5a: 2200         	movs	r2, #0x0
 8004f5c: 2180         	movs	r1, #0x80
 8004f5e: 4648         	mov	r0, r9
 8004f60: f000 fbe3    	bl	0x800572a <firmware_image+0x572a> @ imm = #0x7c6
 8004f64: 2101         	movs	r1, #0x1
 8004f66: 4648         	mov	r0, r9
 8004f68: f000 fbc6    	bl	0x80056f8 <firmware_image+0x56f8> @ imm = #0x78c
 8004f6c: 2101         	movs	r1, #0x1
 8004f6e: 4648         	mov	r0, r9
 8004f70: f000 fbce    	bl	0x8005710 <firmware_image+0x5710> @ imm = #0x79c
 8004f74: 2101         	movs	r1, #0x1
 8004f76: 4648         	mov	r0, r9
 8004f78: f000 fb2f    	bl	0x80055da <firmware_image+0x55da> @ imm = #0x65e
 8004f7c: 2200         	movs	r2, #0x0
 8004f7e: 2101         	movs	r1, #0x1
 8004f80: 4648         	mov	r0, r9
 8004f82: f000 fbd2    	bl	0x800572a <firmware_image+0x572a> @ imm = #0x7a4
 8004f86: 2200         	movs	r2, #0x0
 8004f88: 2110         	movs	r1, #0x10
 8004f8a: 4648         	mov	r0, r9
 8004f8c: f000 fbcd    	bl	0x800572a <firmware_image+0x572a> @ imm = #0x79a
 8004f90: b00f         	add	sp, #0x3c
 8004f92: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
 8004f96: 0000         	movs	r0, r0
 8004f98: 0400         	lsls	r0, r0, #0x10
 8004f9a: 4800         	ldr	r0, [pc, #0x0]          @ 0x8004f9c <firmware_image+0x4f9c>
 8004f9c: 2c00         	cmp	r4, #0x0
 8004f9e: 4001         	ands	r1, r0
 8004fa0: b510         	push	{r4, lr}
 8004fa2: 2004         	movs	r0, #0x4
 8004fa4: f7fb fe76    	bl	0x8000c94 <firmware_image+0xc94> @ imm = #-0x4314
 8004fa8: 2201         	movs	r2, #0x1
 8004faa: 4611         	mov	r1, r2
 8004fac: 2000         	movs	r0, #0x0
 8004fae: f7fb fe45    	bl	0x8000c3c <firmware_image+0xc3c> @ imm = #-0x4376
 8004fb2: 2201         	movs	r2, #0x1
 8004fb4: 2102         	movs	r1, #0x2
 8004fb6: 2008         	movs	r0, #0x8
 8004fb8: f7fb fe40    	bl	0x8000c3c <firmware_image+0xc3c> @ imm = #-0x4380
 8004fbc: 2201         	movs	r2, #0x1
 8004fbe: 2103         	movs	r1, #0x3
 8004fc0: 2006         	movs	r0, #0x6
 8004fc2: f7fb fe3b    	bl	0x8000c3c <firmware_image+0xc3c> @ imm = #-0x438a
 8004fc6: 2104         	movs	r1, #0x4
 8004fc8: 2201         	movs	r2, #0x1
 8004fca: 4608         	mov	r0, r1
 8004fcc: f7fb fe36    	bl	0x8000c3c <firmware_image+0xc3c> @ imm = #-0x4394
 8004fd0: f44f 5080    	mov.w	r0, #0x1000
 8004fd4: f7fb fdce    	bl	0x8000b74 <firmware_image+0xb74> @ imm = #-0x4464
 8004fd8: e8bd 4010    	pop.w	{r4, lr}
 8004fdc: 2101         	movs	r1, #0x1
 8004fde: f44f 6090    	mov.w	r0, #0x480
 8004fe2: f7fb bdf7    	b.w	0x8000bd4 <firmware_image+0xbd4> @ imm = #-0x4412
 8004fe6: b51c         	push	{r2, r3, r4, lr}
 8004fe8: 2101         	movs	r1, #0x1
 8004fea: 0448         	lsls	r0, r1, #0x11
 8004fec: f7ff f9b2    	bl	0x8004354 <firmware_image+0x4354> @ imm = #-0xc9c
 8004ff0: f44f 5080    	mov.w	r0, #0x1000
 8004ff4: 9000         	str	r0, [sp]
 8004ff6: 2000         	movs	r0, #0x0
 8004ff8: f88d 0004    	strb.w	r0, [sp, #0x4]
 8004ffc: 2103         	movs	r1, #0x3
 8004ffe: f88d 1005    	strb.w	r1, [sp, #0x5]
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
 80053cc: f7fd f952    	bl	0x8002674 <firmware_image+0x2674> @ imm = #-0x2d5c
 80053d0: b006         	add	sp, #0x18
 80053d2: bd10         	pop	{r4, pc}
 80053d4: 7c00         	ldrb	r0, [r0, #0x10]
 80053d6: 0800         	lsrs	r0, r0, #0x20
 80053d8: 0210         	lsls	r0, r2, #0x8
 80053da: 2000         	movs	r0, #0x0
 80053dc: 021e         	lsls	r6, r3, #0x8
 80053de: 2000         	movs	r0, #0x0
 80053e0: 008a         	lsls	r2, r1, #0x2
 80053e2: 2000         	movs	r0, #0x0
 80053e4: 008c         	lsls	r4, r1, #0x2
 80053e6: 2000         	movs	r0, #0x0
 80053e8: 2100         	movs	r1, #0x0
 80053ea: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x8005420 <firmware_image+0x5420>
 80053ec: eb01 0041    	add.w	r0, r1, r1, lsl #1
 80053f0: f853 2020    	ldr.w	r2, [r3, r0, lsl #2]
 80053f4: b12a         	cbz	r2, 0x8005402 <firmware_image+0x5402> @ imm = #0xa
 80053f6: eb03 0080    	add.w	r0, r3, r0, lsl #2
 80053fa: 8882         	ldrh	r2, [r0, #0x4]
 80053fc: b132         	cbz	r2, 0x800540c <firmware_image+0x540c> @ imm = #0xc
 80053fe: 1e52         	subs	r2, r2, #0x1
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
 800588a: ea04 2202    	and.w	r2, r4, r2, lsl #8
 800588e: 4332         	orrs	r2, r6
 8005890: 4e10         	ldr	r6, [pc, #0x40]         @ 0x80058d4 <firmware_image+0x58d4>
 8005892: 42b0         	cmp	r0, r6
 8005894: d117         	bne	0x80058c6 <firmware_image+0x58c6> @ imm = #0x2e
 8005896: f422 6600    	bic	r6, r2, #0x800
 800589a: 89ca         	ldrh	r2, [r1, #0xe]
 800589c: ea04 2202    	and.w	r2, r4, r2, lsl #8
 80058a0: 4332         	orrs	r2, r6
 80058a2: f422 6680    	bic	r6, r2, #0x400
 80058a6: 888a         	ldrh	r2, [r1, #0x4]
 80058a8: ea04 2202    	and.w	r2, r4, r2, lsl #8
 80058ac: 4332         	orrs	r2, r6
 80058ae: f423 5380    	bic	r3, r3, #0x1000
 80058b2: f423 5300    	bic	r3, r3, #0x2000
 80058b6: 8a0e         	ldrh	r6, [r1, #0x10]
 80058b8: ea04 1606    	and.w	r6, r4, r6, lsl #4
 80058bc: 431e         	orrs	r6, r3
 80058be: 8a4b         	ldrh	r3, [r1, #0x12]
 80058c0: ea04 1303    	and.w	r3, r4, r3, lsl #4
 80058c4: 4333         	orrs	r3, r6
 80058c6: 8083         	strh	r3, [r0, #0x4]
 80058c8: 8385         	strh	r5, [r0, #0x1c]
 80058ca: 6889         	ldr	r1, [r1, #0x8]
 80058cc: 63c1         	str	r1, [r0, #0x3c]
 80058ce: 8402         	strh	r2, [r0, #0x20]
 80058d0: bd70         	pop	{r4, r5, r6, pc}
 80058d2: 0000         	movs	r0, r0
 80058d4: 2c00         	cmp	r4, #0x0
 80058d6: 4001         	ands	r1, r0
 80058d8: 8b82         	ldrh	r2, [r0, #0x1c]
 80058da: f022 0208    	bic	r2, r2, #0x8
 80058de: 430a         	orrs	r2, r1
 80058e0: 8382         	strh	r2, [r0, #0x1c]
 80058e2: 4770         	bx	lr
 80058e4: b570         	push	{r4, r5, r6, lr}
 80058e6: 8c02         	ldrh	r2, [r0, #0x20]
 80058e8: f422 5280    	bic	r2, r2, #0x1000
 80058ec: 8402         	strh	r2, [r0, #0x20]
 80058ee: 8c05         	ldrh	r5, [r0, #0x20]
 80058f0: 8882         	ldrh	r2, [r0, #0x4]
 80058f2: 8b83         	ldrh	r3, [r0, #0x1c]
 80058f4: f423 43e0    	bic	r3, r3, #0x7000
 80058f8: f423 7640    	bic	r6, r3, #0x300
 80058fc: 880c         	ldrh	r4, [r1]
 80058fe: f64f 73ff    	movw	r3, #0xffff
 8005902: ea03 2404    	and.w	r4, r3, r4, lsl #8
 8005906: 4334         	orrs	r4, r6
 8005908: f425 5500    	bic	r5, r5, #0x2000
 800590c: 898e         	ldrh	r6, [r1, #0xc]
 800590e: ea03 3606    	and.w	r6, r3, r6, lsl #12
 8005912: 432e         	orrs	r6, r5
 8005914: 884d         	ldrh	r5, [r1, #0x2]
 8005916: ea03 3505    	and.w	r5, r3, r5, lsl #12
 800591a: 4335         	orrs	r5, r6
 800591c: 4e07         	ldr	r6, [pc, #0x1c]         @ 0x800593c <firmware_image+0x593c>
 800591e: 42b0         	cmp	r0, r6
 8005920: d105         	bne	0x800592e <firmware_image+0x592e> @ imm = #0xa
 8005922: f422 4680    	bic	r6, r2, #0x4000
 8005926: 8a0a         	ldrh	r2, [r1, #0x10]
 8005928: ea03 1282    	and.w	r2, r3, r2, lsl #6
 800592c: 4332         	orrs	r2, r6
 800592e: 8082         	strh	r2, [r0, #0x4]
 8005930: 8384         	strh	r4, [r0, #0x1c]
 8005932: 6889         	ldr	r1, [r1, #0x8]
 8005934: 6401         	str	r1, [r0, #0x40]
 8005936: 8405         	strh	r5, [r0, #0x20]
 8005938: bd70         	pop	{r4, r5, r6, pc}
 800593a: 0000         	movs	r0, r0
 800593c: 2c00         	cmp	r4, #0x0
 800593e: 4001         	ands	r1, r0
 8005940: 8b82         	ldrh	r2, [r0, #0x1c]
 8005942: f422 6200    	bic	r2, r2, #0x800
 8005946: f64f 73ff    	movw	r3, #0xffff
 800594a: ea03 2101    	and.w	r1, r3, r1, lsl #8
 800594e: 4311         	orrs	r1, r2
 8005950: 8381         	strh	r1, [r0, #0x1c]
 8005952: 4770         	bx	lr
 8005954: 2100         	movs	r1, #0x0
 8005956: 8001         	strh	r1, [r0]
 8005958: 8041         	strh	r1, [r0, #0x2]
 800595a: 8081         	strh	r1, [r0, #0x4]
 800595c: 6081         	str	r1, [r0, #0x8]
 800595e: 8181         	strh	r1, [r0, #0xc]
 8005960: 81c1         	strh	r1, [r0, #0xe]
 8005962: 8201         	strh	r1, [r0, #0x10]
 8005964: 8241         	strh	r1, [r0, #0x12]
 8005966: 4770         	bx	lr
 8005968: 8882         	ldrh	r2, [r0, #0x4]
 800596a: f022 0270    	bic	r2, r2, #0x70
 800596e: 8082         	strh	r2, [r0, #0x4]
 8005970: 8882         	ldrh	r2, [r0, #0x4]
 8005972: 430a         	orrs	r2, r1
 8005974: 8082         	strh	r2, [r0, #0x4]
 8005976: 4770         	bx	lr
 8005978: 6241         	str	r1, [r0, #0x24]
 800597a: 4770         	bx	lr
 800597c: f830 3f44    	ldrh	r3, [r0, #68]!
 8005980: f423 4380    	bic	r3, r3, #0x4000
 8005984: 8003         	strh	r3, [r0]
 8005986: 8803         	ldrh	r3, [r0]
 8005988: f423 4300    	bic	r3, r3, #0x8000
 800598c: f820 3944    	strh	r3, [r0], #-68
 8005990: 2900         	cmp	r1, #0x0
 8005992: d019         	beq	0x80059c8 <firmware_image+0x59c8> @ imm = #0x32
 8005994: 8881         	ldrh	r1, [r0, #0x4]
 8005996: f441 7180    	orr	r1, r1, #0x100
 800599a: 8081         	strh	r1, [r0, #0x4]
 800599c: 8881         	ldrh	r1, [r0, #0x4]
 800599e: f441 6180    	orr	r1, r1, #0x400
 80059a2: 8081         	strh	r1, [r0, #0x4]
 80059a4: 8881         	ldrh	r1, [r0, #0x4]
 80059a6: f441 5180    	orr	r1, r1, #0x1000
 80059aa: 8081         	strh	r1, [r0, #0x4]
 80059ac: b1ca         	cbz	r2, 0x80059e2 <firmware_image+0x59e2> @ imm = #0x32
 80059ae: 8881         	ldrh	r1, [r0, #0x4]
 80059b0: f441 7100    	orr	r1, r1, #0x200
 80059b4: 8081         	strh	r1, [r0, #0x4]
 80059b6: 8881         	ldrh	r1, [r0, #0x4]
 80059b8: f441 6100    	orr	r1, r1, #0x800
 80059bc: 8081         	strh	r1, [r0, #0x4]
 80059be: 8881         	ldrh	r1, [r0, #0x4]
 80059c0: f441 5100    	orr	r1, r1, #0x2000
 80059c4: 8081         	strh	r1, [r0, #0x4]
 80059c6: 4770         	bx	lr
 80059c8: 8881         	ldrh	r1, [r0, #0x4]
 80059ca: f421 7180    	bic	r1, r1, #0x100
 80059ce: 8081         	strh	r1, [r0, #0x4]
 80059d0: 8881         	ldrh	r1, [r0, #0x4]
 80059d2: f421 6180    	bic	r1, r1, #0x400
 80059d6: 8081         	strh	r1, [r0, #0x4]
 80059d8: 8881         	ldrh	r1, [r0, #0x4]
 80059da: f421 5180    	bic	r1, r1, #0x1000
 80059de: 8081         	strh	r1, [r0, #0x4]
 80059e0: e7e4         	b	0x80059ac <firmware_image+0x59ac> @ imm = #-0x38
 80059e2: 8881         	ldrh	r1, [r0, #0x4]
 80059e4: f421 7100    	bic	r1, r1, #0x200
 80059e8: 8081         	strh	r1, [r0, #0x4]
 80059ea: 8881         	ldrh	r1, [r0, #0x4]
 80059ec: f421 6100    	bic	r1, r1, #0x800
 80059f0: 8081         	strh	r1, [r0, #0x4]
 80059f2: 8881         	ldrh	r1, [r0, #0x4]
 80059f4: f421 5100    	bic	r1, r1, #0x2000
 80059f8: 8081         	strh	r1, [r0, #0x4]
 80059fa: 4770         	bx	lr
 80059fc: b530         	push	{r4, r5, lr}
 80059fe: 4c26         	ldr	r4, [pc, #0x98]         @ 0x8005a98 <firmware_image+0x5a98>
 8005a00: 7860         	ldrb	r0, [r4, #0x1]
 8005a02: 28c8         	cmp	r0, #0xc8
 8005a04: d201         	bhs	0x8005a0a <firmware_image+0x5a0a> @ imm = #0x2
 8005a06: 1c40         	adds	r0, r0, #0x1
 8005a08: 7060         	strb	r0, [r4, #0x1]
 8005a0a: 4924         	ldr	r1, [pc, #0x90]         @ 0x8005a9c <firmware_image+0x5a9c>
 8005a0c: 4a24         	ldr	r2, [pc, #0x90]         @ 0x8005aa0 <firmware_image+0x5aa0>
 8005a0e: 8808         	ldrh	r0, [r1]
 8005a10: 8010         	strh	r0, [r2]
 8005a12: 2000         	movs	r0, #0x0
 8005a14: 8008         	strh	r0, [r1]
 8005a16: 4923         	ldr	r1, [pc, #0x8c]         @ 0x8005aa4 <firmware_image+0x5aa4>
 8005a18: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x8005aa8 <firmware_image+0x5aa8>
 8005a1a: 880a         	ldrh	r2, [r1]
 8005a1c: 801a         	strh	r2, [r3]
 8005a1e: 8008         	strh	r0, [r1]
 8005a20: 4922         	ldr	r1, [pc, #0x88]         @ 0x8005aac <firmware_image+0x5aac>
 8005a22: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x8005ab0 <firmware_image+0x5ab0>
 8005a24: 880a         	ldrh	r2, [r1]
 8005a26: 801a         	strh	r2, [r3]
 8005a28: 8008         	strh	r0, [r1]
 8005a2a: 4922         	ldr	r1, [pc, #0x88]         @ 0x8005ab4 <firmware_image+0x5ab4>
 8005a2c: 4b22         	ldr	r3, [pc, #0x88]         @ 0x8005ab8 <firmware_image+0x5ab8>
 8005a2e: 880a         	ldrh	r2, [r1]
 8005a30: 801a         	strh	r2, [r3]
 8005a32: 8008         	strh	r0, [r1]
 8005a34: 4921         	ldr	r1, [pc, #0x84]         @ 0x8005abc <firmware_image+0x5abc>
 8005a36: 4b22         	ldr	r3, [pc, #0x88]         @ 0x8005ac0 <firmware_image+0x5ac0>
 8005a38: 880a         	ldrh	r2, [r1]
 8005a3a: 801a         	strh	r2, [r3]
 8005a3c: 8008         	strh	r0, [r1]
 8005a3e: 4921         	ldr	r1, [pc, #0x84]         @ 0x8005ac4 <firmware_image+0x5ac4>
 8005a40: 4d21         	ldr	r5, [pc, #0x84]         @ 0x8005ac8 <firmware_image+0x5ac8>
 8005a42: 880b         	ldrh	r3, [r1]
 8005a44: 802b         	strh	r3, [r5]
 8005a46: 8008         	strh	r0, [r1]
 8005a48: 4920         	ldr	r1, [pc, #0x80]         @ 0x8005acc <firmware_image+0x5acc>
 8005a4a: 4d21         	ldr	r5, [pc, #0x84]         @ 0x8005ad0 <firmware_image+0x5ad0>
 8005a4c: 880b         	ldrh	r3, [r1]
 8005a4e: 802b         	strh	r3, [r5]
 8005a50: 8008         	strh	r0, [r1]
 8005a52: 88a1         	ldrh	r1, [r4, #0x4]
 8005a54: f64f 75fe    	movw	r5, #0xfffe
 8005a58: 42a9         	cmp	r1, r5
 8005a5a: d201         	bhs	0x8005a60 <firmware_image+0x5a60> @ imm = #0x2
 8005a5c: 1c49         	adds	r1, r1, #0x1
 8005a5e: 80a1         	strh	r1, [r4, #0x4]
 8005a60: 88a1         	ldrh	r1, [r4, #0x4]
 8005a62: 2902         	cmp	r1, #0x2
 8005a64: d916         	bls	0x8005a94 <firmware_image+0x5a94> @ imm = #0x2c
 8005a66: 441a         	add	r2, r3
 8005a68: 2101         	movs	r1, #0x1
 8005a6a: 2a7d         	cmp	r2, #0x7d
 8005a6c: d204         	bhs	0x8005a78 <firmware_image+0x5a78> @ imm = #0x8
 8005a6e: 7862         	ldrb	r2, [r4, #0x1]
 8005a70: 2a05         	cmp	r2, #0x5
 8005a72: d901         	bls	0x8005a78 <firmware_image+0x5a78> @ imm = #0x2
 8005a74: 7021         	strb	r1, [r4]
 8005a76: e001         	b	0x8005a7c <firmware_image+0x5a7c> @ imm = #0x2
 8005a78: 7020         	strb	r0, [r4]
 8005a7a: 8060         	strh	r0, [r4, #0x2]
 8005a7c: 7820         	ldrb	r0, [r4]
 8005a7e: b120         	cbz	r0, 0x8005a8a <firmware_image+0x5a8a> @ imm = #0x8
 8005a80: 8860         	ldrh	r0, [r4, #0x2]
 8005a82: 42a8         	cmp	r0, r5
 8005a84: d201         	bhs	0x8005a8a <firmware_image+0x5a8a> @ imm = #0x2
 8005a86: 1c40         	adds	r0, r0, #0x1
 8005a88: 8060         	strh	r0, [r4, #0x2]
 8005a8a: 8860         	ldrh	r0, [r4, #0x2]
 8005a8c: 2832         	cmp	r0, #0x32
 8005a8e: d901         	bls	0x8005a94 <firmware_image+0x5a94> @ imm = #0x2
 8005a90: 4810         	ldr	r0, [pc, #0x40]         @ 0x8005ad4 <firmware_image+0x5ad4>
 8005a92: 7001         	strb	r1, [r0]
 8005a94: bd30         	pop	{r4, r5, pc}
 8005a96: 0000         	movs	r0, r0
 8005a98: 0000         	movs	r0, r0
 8005a9a: 2000         	movs	r0, #0x0
 8005a9c: 02a0         	lsls	r0, r4, #0xa
 8005a9e: 2000         	movs	r0, #0x0
 8005aa0: 02ac         	lsls	r4, r5, #0xa
 8005aa2: 2000         	movs	r0, #0x0
 8005aa4: 02a2         	lsls	r2, r4, #0xa
 8005aa6: 2000         	movs	r0, #0x0
 8005aa8: 02ae         	lsls	r6, r5, #0xa
 8005aaa: 2000         	movs	r0, #0x0
 8005aac: 02b6         	lsls	r6, r6, #0xa
 8005aae: 2000         	movs	r0, #0x0
 8005ab0: 02d0         	lsls	r0, r2, #0xb
 8005ab2: 2000         	movs	r0, #0x0
 8005ab4: 022c         	lsls	r4, r5, #0x8
 8005ab6: 2000         	movs	r0, #0x0
 8005ab8: 0234         	lsls	r4, r6, #0x8
 8005aba: 2000         	movs	r0, #0x0
 8005abc: 0228         	lsls	r0, r5, #0x8
 8005abe: 2000         	movs	r0, #0x0
 8005ac0: 0230         	lsls	r0, r6, #0x8
 8005ac2: 2000         	movs	r0, #0x0
 8005ac4: 022a         	lsls	r2, r5, #0x8
 8005ac6: 2000         	movs	r0, #0x0
 8005ac8: 0232         	lsls	r2, r6, #0x8
 8005aca: 2000         	movs	r0, #0x0
 8005acc: 0226         	lsls	r6, r4, #0x8
 8005ace: 2000         	movs	r0, #0x0
 8005ad0: 022e         	lsls	r6, r5, #0x8
 8005ad2: 2000         	movs	r0, #0x0
 8005ad4: 0153         	lsls	r3, r2, #0x5
 8005ad6: 2000         	movs	r0, #0x0
 8005ad8: b510         	push	{r4, lr}
 8005ada: 2101         	movs	r1, #0x1
 8005adc: 078c         	lsls	r4, r1, #0x1e
 8005ade: 4620         	mov	r0, r4
 8005ae0: f7ff fd7b    	bl	0x80055da <firmware_image+0x55da> @ imm = #-0x50a
 8005ae4: 2200         	movs	r2, #0x0
 8005ae6: 2101         	movs	r1, #0x1
 8005ae8: 4620         	mov	r0, r4
 8005aea: f7ff fe1e    	bl	0x800572a <firmware_image+0x572a> @ imm = #-0x3c4
 8005aee: 2100         	movs	r1, #0x0
 8005af0: 4620         	mov	r0, r4
 8005af2: f7ff ff41    	bl	0x8005978 <firmware_image+0x5978> @ imm = #-0x17e
 8005af6: 4620         	mov	r0, r4
 8005af8: e8bd 4010    	pop.w	{r4, lr}
 8005afc: 2100         	movs	r1, #0x0
 8005afe: f7ff bdfb    	b.w	0x80056f8 <firmware_image+0x56f8> @ imm = #-0x40a
 8005b02: b510         	push	{r4, lr}
 8005b04: 2101         	movs	r1, #0x1
 8005b06: 078c         	lsls	r4, r1, #0x1e
 8005b08: 4620         	mov	r0, r4
 8005b0a: f7ff fd66    	bl	0x80055da <firmware_image+0x55da> @ imm = #-0x534
 8005b0e: 2201         	movs	r2, #0x1
 8005b10: 4611         	mov	r1, r2
 8005b12: 4620         	mov	r0, r4
 8005b14: f7ff fe09    	bl	0x800572a <firmware_image+0x572a> @ imm = #-0x3ee
 8005b18: 2100         	movs	r1, #0x0
 8005b1a: 4620         	mov	r0, r4
 8005b1c: f7ff ff2c    	bl	0x8005978 <firmware_image+0x5978> @ imm = #-0x1a8
 8005b20: 4620         	mov	r0, r4
 8005b22: e8bd 4010    	pop.w	{r4, lr}
 8005b26: 2101         	movs	r1, #0x1
 8005b28: f7ff bde6    	b.w	0x80056f8 <firmware_image+0x56f8> @ imm = #-0x434
 8005b2c: b53e         	push	{r1, r2, r3, r4, r5, lr}
 8005b2e: 2101         	movs	r1, #0x1
 8005b30: 4608         	mov	r0, r1
 8005b32: f7fe fc27    	bl	0x8004384 <firmware_image+0x4384> @ imm = #-0x17b2
 8005b36: f241 1094    	movw	r0, #0x1194
 8005b3a: 9001         	str	r0, [sp, #0x4]
 8005b3c: 2000         	movs	r0, #0x0
 8005b3e: f8ad 0000    	strh.w	r0, [sp]
 8005b42: f8ad 0008    	strh.w	r0, [sp, #0x8]
 8005b46: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8005b4a: 2003         	movs	r0, #0x3
 8005b4c: f88d 000a    	strb.w	r0, [sp, #0xa]
 8005b50: f04f 4480    	mov.w	r4, #0x40000000
 8005b54: 4669         	mov	r1, sp
 8005b56: 4620         	mov	r0, r4
 8005b58: f7ff fcfe    	bl	0x8005558 <firmware_image+0x5558> @ imm = #-0x604
 8005b5c: 2101         	movs	r1, #0x1
 8005b5e: 4620         	mov	r0, r4
 8005b60: f7ff fd3b    	bl	0x80055da <firmware_image+0x55da> @ imm = #-0x58a
 8005b64: 2200         	movs	r2, #0x0
 8005b66: 2101         	movs	r1, #0x1
 8005b68: 4620         	mov	r0, r4
 8005b6a: f7ff fdde    	bl	0x800572a <firmware_image+0x572a> @ imm = #-0x444
 8005b6e: 2100         	movs	r1, #0x0
 8005b70: 4620         	mov	r0, r4
 8005b72: f7ff fdc1    	bl	0x80056f8 <firmware_image+0x56f8> @ imm = #-0x47e
 8005b76: bd3e         	pop	{r1, r2, r3, r4, r5, pc}
 8005b78: b53e         	push	{r1, r2, r3, r4, r5, lr}
 8005b7a: 4604         	mov	r4, r0
 8005b7c: 2101         	movs	r1, #0x1
 8005b7e: 2002         	movs	r0, #0x2
 8005b80: f7fe fc00    	bl	0x8004384 <firmware_image+0x4384> @ imm = #-0x1800
 8005b84: 4d1c         	ldr	r5, [pc, #0x70]         @ 0x8005bf8 <firmware_image+0x5bf8>
 8005b86: b32c         	cbz	r4, 0x8005bd4 <firmware_image+0x5bd4> @ imm = #0x4a
 8005b88: 2023         	movs	r0, #0x23
 8005b8a: 491c         	ldr	r1, [pc, #0x70]         @ 0x8005bfc <firmware_image+0x5bfc>
 8005b8c: fbb1 f1f4    	udiv	r1, r1, r4
 8005b90: b289         	uxth	r1, r1
 8005b92: 9101         	str	r1, [sp, #0x4]
 8005b94: f8ad 0000    	strh.w	r0, [sp]
 8005b98: 2000         	movs	r0, #0x0
 8005b9a: f8ad 0008    	strh.w	r0, [sp, #0x8]
 8005b9e: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8005ba2: 2003         	movs	r0, #0x3
 8005ba4: f88d 000a    	strb.w	r0, [sp, #0xa]
 8005ba8: 4669         	mov	r1, sp
 8005baa: 4628         	mov	r0, r5
 8005bac: f7ff fcd4    	bl	0x8005558 <firmware_image+0x5558> @ imm = #-0x658
 8005bb0: 2101         	movs	r1, #0x1
 8005bb2: 4628         	mov	r0, r5
 8005bb4: f7ff fd11    	bl	0x80055da <firmware_image+0x55da> @ imm = #-0x5de
 8005bb8: 2201         	movs	r2, #0x1
 8005bba: 4611         	mov	r1, r2
 8005bbc: 4628         	mov	r0, r5
 8005bbe: f7ff fdb4    	bl	0x800572a <firmware_image+0x572a> @ imm = #-0x498
 8005bc2: 2100         	movs	r1, #0x0
 8005bc4: 4628         	mov	r0, r5
 8005bc6: f7ff fed7    	bl	0x8005978 <firmware_image+0x5978> @ imm = #-0x252
 8005bca: 2101         	movs	r1, #0x1
 8005bcc: 4628         	mov	r0, r5
 8005bce: f7ff fd93    	bl	0x80056f8 <firmware_image+0x56f8> @ imm = #-0x4da
 8005bd2: bd3e         	pop	{r1, r2, r3, r4, r5, pc}
 8005bd4: 2101         	movs	r1, #0x1
 8005bd6: 4628         	mov	r0, r5
 8005bd8: f7ff fcff    	bl	0x80055da <firmware_image+0x55da> @ imm = #-0x602
 8005bdc: 2200         	movs	r2, #0x0
 8005bde: 2101         	movs	r1, #0x1
 8005be0: 4628         	mov	r0, r5
 8005be2: f7ff fda2    	bl	0x800572a <firmware_image+0x572a> @ imm = #-0x4bc
 8005be6: 2100         	movs	r1, #0x0
 8005be8: 4628         	mov	r0, r5
 8005bea: f7ff fec5    	bl	0x8005978 <firmware_image+0x5978> @ imm = #-0x276
 8005bee: 2100         	movs	r1, #0x0
 8005bf0: 4628         	mov	r0, r5
 8005bf2: f7ff fd81    	bl	0x80056f8 <firmware_image+0x56f8> @ imm = #-0x4fe
 8005bf6: bd3e         	pop	{r1, r2, r3, r4, r5, pc}
 8005bf8: 0400         	lsls	r0, r0, #0x10
 8005bfa: 4000         	ands	r0, r0
 8005bfc: 8480         	strh	r0, [r0, #0x24]
 8005bfe: 001e         	movs	r6, r3
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
 8005ce4: f44f 2070    	mov.w	r0, #0xf0000
 8005ce8: f7fc f9c0    	bl	0x800206c <firmware_image+0x206c> @ imm = #-0x3c80
 8005cec: 2120         	movs	r1, #0x20
 8005cee: 65f1         	str	r1, [r6, #0x5c]
 8005cf0: 2101         	movs	r1, #0x1
 8005cf2: 4628         	mov	r0, r5
 8005cf4: f7fc fa80    	bl	0x80021f8 <firmware_image+0x21f8> @ imm = #-0x3b00
 8005cf8: 2002         	movs	r0, #0x2
 8005cfa: 7020         	strb	r0, [r4]
 8005cfc: f001 f8b2    	bl	0x8006e64 <firmware_image+0x6e64> @ imm = #0x1164
 8005d00: 4904         	ldr	r1, [pc, #0x10]         @ 0x8005d14 <firmware_image+0x5d14>
 8005d02: f04f 30ff    	mov.w	r0, #0xffffffff
 8005d06: 3120         	adds	r1, #0x20
 8005d08: 6008         	str	r0, [r1]
 8005d0a: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8005d0e: 0000         	movs	r0, r0
 8005d10: 0104         	lsls	r4, r0, #0x4
 8005d12: 0004         	movs	r4, r0
 8005d14: 4400         	add	r0, r0
 8005d16: 4000         	ands	r0, r0
 8005d18: 0058         	lsls	r0, r3, #0x1
 8005d1a: 4002         	ands	r2, r0
 8005d1c: 0236         	lsls	r6, r6, #0x8
 8005d1e: 2000         	movs	r0, #0x0
 8005d20: 04b0         	lsls	r0, r6, #0x12
 8005d22: 2000         	movs	r0, #0x0
 8005d24: 0478         	lsls	r0, r7, #0x11
 8005d26: 2000         	movs	r0, #0x0
 8005d28: 2a00         	cmp	r2, #0x0
 8005d2a: d003         	beq	0x8005d34 <firmware_image+0x5d34> @ imm = #0x6
 8005d2c: 6882         	ldr	r2, [r0, #0x8]
 8005d2e: 430a         	orrs	r2, r1
 8005d30: 6082         	str	r2, [r0, #0x8]
 8005d32: 4770         	bx	lr
 8005d34: 6882         	ldr	r2, [r0, #0x8]
 8005d36: 438a         	bics	r2, r1
 8005d38: 6082         	str	r2, [r0, #0x8]
 8005d3a: 4770         	bx	lr
 8005d3c: b510         	push	{r4, lr}
 8005d3e: 490e         	ldr	r1, [pc, #0x38]         @ 0x8005d78 <firmware_image+0x5d78>
 8005d40: 4288         	cmp	r0, r1
 8005d42: d10a         	bne	0x8005d5a <firmware_image+0x5d5a> @ imm = #0x14
 8005d44: 2101         	movs	r1, #0x1
 8005d46: 038c         	lsls	r4, r1, #0xe
 8005d48: 4620         	mov	r0, r4
 8005d4a: f7fe fb4f    	bl	0x80043ec <firmware_image+0x43ec> @ imm = #-0x1962
 8005d4e: 4620         	mov	r0, r4
 8005d50: e8bd 4010    	pop.w	{r4, lr}
 8005d54: 2100         	movs	r1, #0x0
 8005d56: f7fe bb49    	b.w	0x80043ec <firmware_image+0x43ec> @ imm = #-0x196e
 8005d5a: 4908         	ldr	r1, [pc, #0x20]         @ 0x8005d7c <firmware_image+0x5d7c>
 8005d5c: 4288         	cmp	r0, r1
 8005d5e: d10a         	bne	0x8005d76 <firmware_image+0x5d76> @ imm = #0x14
 8005d60: 2101         	movs	r1, #0x1
 8005d62: 044c         	lsls	r4, r1, #0x11
 8005d64: 4620         	mov	r0, r4
 8005d66: f7fe fb1b    	bl	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x19ca
 8005d6a: 4620         	mov	r0, r4
 8005d6c: e8bd 4010    	pop.w	{r4, lr}
 8005d70: 2100         	movs	r1, #0x0
 8005d72: f7fe bb15    	b.w	0x80043a0 <firmware_image+0x43a0> @ imm = #-0x19d6
 8005d76: bd10         	pop	{r4, pc}
 8005d78: 3800         	subs	r0, #0x0
 8005d7a: 4001         	ands	r1, r0
 8005d7c: 4400         	add	r0, r0
 8005d7e: 4000         	ands	r0, r0
 8005d80: 2900         	cmp	r1, #0x0
 8005d82: d004         	beq	0x8005d8e <firmware_image+0x5d8e> @ imm = #0x8
 8005d84: 6801         	ldr	r1, [r0]
 8005d86: f041 0101    	orr	r1, r1, #0x1
 8005d8a: 6001         	str	r1, [r0]
 8005d8c: 4770         	bx	lr
 8005d8e: 6801         	ldr	r1, [r0]
 8005d90: f021 0101    	bic	r1, r1, #0x1
 8005d94: 6001         	str	r1, [r0]
 8005d96: 4770         	bx	lr
 8005d98: b510         	push	{r4, lr}
 8005d9a: f3c1 2307    	ubfx	r3, r1, #0x8, #0x8
 8005d9e: 2401         	movs	r4, #0x1
 8005da0: fa04 f201    	lsl.w	r2, r4, r1
 8005da4: 2b01         	cmp	r3, #0x1
 8005da6: d00b         	beq	0x8005dc0 <firmware_image+0x5dc0> @ imm = #0x16
 8005da8: 2b02         	cmp	r3, #0x2
 8005daa: d00c         	beq	0x8005dc6 <firmware_image+0x5dc6> @ imm = #0x18
 8005dac: 6883         	ldr	r3, [r0, #0x8]
 8005dae: 4013         	ands	r3, r2
 8005db0: 0c09         	lsrs	r1, r1, #0x10
 8005db2: 408c         	lsls	r4, r1
 8005db4: 69c0         	ldr	r0, [r0, #0x1c]
 8005db6: 4020         	ands	r0, r4
 8005db8: b143         	cbz	r3, 0x8005dcc <firmware_image+0x5dcc> @ imm = #0x10
 8005dba: b138         	cbz	r0, 0x8005dcc <firmware_image+0x5dcc> @ imm = #0xe
 8005dbc: 2001         	movs	r0, #0x1
 8005dbe: bd10         	pop	{r4, pc}
 8005dc0: 6803         	ldr	r3, [r0]
 8005dc2: 4013         	ands	r3, r2
 8005dc4: e7f4         	b	0x8005db0 <firmware_image+0x5db0> @ imm = #-0x18
 8005dc6: 6843         	ldr	r3, [r0, #0x4]
 8005dc8: 4013         	ands	r3, r2
 8005dca: e7f1         	b	0x8005db0 <firmware_image+0x5db0> @ imm = #-0x1e
 8005dcc: 2000         	movs	r0, #0x0
 8005dce: bd10         	pop	{r4, pc}
 8005dd0: f401 437f    	and	r3, r1, #0xff00
 8005dd4: f5b3 7f40    	cmp.w	r3, #0x300
 8005dd8: d003         	beq	0x8005de2 <firmware_image+0x5de2> @ imm = #0x6
 8005dda: f5b3 7f00    	cmp.w	r3, #0x200
 8005dde: d002         	beq	0x8005de6 <firmware_image+0x5de6> @ imm = #0x4
 8005de0: e002         	b	0x8005de8 <firmware_image+0x5de8> @ imm = #0x4
 8005de2: 3008         	adds	r0, #0x8
 8005de4: e000         	b	0x8005de8 <firmware_image+0x5de8> @ imm = #0x0
 8005de6: 1d00         	adds	r0, r0, #0x4
 8005de8: 2301         	movs	r3, #0x1
 8005dea: 408b         	lsls	r3, r1
 8005dec: b11a         	cbz	r2, 0x8005df6 <firmware_image+0x5df6> @ imm = #0x6
 8005dee: 6801         	ldr	r1, [r0]
 8005df0: 4319         	orrs	r1, r3
 8005df2: 6001         	str	r1, [r0]
 8005df4: 4770         	bx	lr
 8005df6: 6801         	ldr	r1, [r0]
 8005df8: 4399         	bics	r1, r3
 8005dfa: 6001         	str	r1, [r0]
 8005dfc: 4770         	bx	lr
 8005dfe: 0000         	movs	r0, r0
 8005e00: b530         	push	{r4, r5, lr}
 8005e02: b087         	sub	sp, #0x1c
 8005e04: 4604         	mov	r4, r0
 8005e06: 460d         	mov	r5, r1
 8005e08: 6820         	ldr	r0, [r4]
 8005e0a: f020 0001    	bic	r0, r0, #0x1
 8005e0e: 6020         	str	r0, [r4]
 8005e10: 6860         	ldr	r0, [r4, #0x4]
 8005e12: f420 5140    	bic	r1, r0, #0x3000
 8005e16: 68a8         	ldr	r0, [r5, #0x8]
 8005e18: 4308         	orrs	r0, r1
 8005e1a: 6060         	str	r0, [r4, #0x4]
 8005e1c: 6820         	ldr	r0, [r4]
 8005e1e: f241 610c    	movw	r1, #0x160c
 8005e22: 4388         	bics	r0, r1
 8005e24: 68ea         	ldr	r2, [r5, #0xc]
 8005e26: 6869         	ldr	r1, [r5, #0x4]
 8005e28: 4311         	orrs	r1, r2
 8005e2a: 692a         	ldr	r2, [r5, #0x10]
 8005e2c: 4302         	orrs	r2, r0
 8005e2e: 4311         	orrs	r1, r2
 8005e30: 6021         	str	r1, [r4]
 8005e32: 68a0         	ldr	r0, [r4, #0x8]
 8005e34: f420 7040    	bic	r0, r0, #0x300
 8005e38: 6969         	ldr	r1, [r5, #0x14]
 8005e3a: 4301         	orrs	r1, r0
 8005e3c: 60a1         	str	r1, [r4, #0x8]
 8005e3e: 4668         	mov	r0, sp
 8005e40: f7fe fb6a    	bl	0x8004518 <firmware_image+0x4518> @ imm = #-0x192c
 8005e44: 4814         	ldr	r0, [pc, #0x50]         @ 0x8005e98 <firmware_image+0x5e98>
 8005e46: 4284         	cmp	r4, r0
 8005e48: d101         	bne	0x8005e4e <firmware_image+0x5e4e> @ imm = #0x2
 8005e4a: 9906         	ldr	r1, [sp, #0x18]
 8005e4c: e000         	b	0x8005e50 <firmware_image+0x5e50> @ imm = #0x0
 8005e4e: 9902         	ldr	r1, [sp, #0x8]
 8005e50: 6820         	ldr	r0, [r4]
 8005e52: 0400         	lsls	r0, r0, #0x10
 8005e54: d508         	bpl	0x8005e68 <firmware_image+0x5e68> @ imm = #0x10
 8005e56: 004a         	lsls	r2, r1, #0x1
 8005e58: 6829         	ldr	r1, [r5]
 8005e5a: fbb2 f0f1    	udiv	r0, r2, r1
 8005e5e: fbb2 f3f1    	udiv	r3, r2, r1
 8005e62: fb01 2113    	mls	r1, r1, r3, r2
 8005e66: e006         	b	0x8005e76 <firmware_image+0x5e76> @ imm = #0xc
 8005e68: 682a         	ldr	r2, [r5]
 8005e6a: fbb1 f0f2    	udiv	r0, r1, r2
 8005e6e: fbb1 f3f2    	udiv	r3, r1, r2
 8005e72: fb02 1113    	mls	r1, r2, r3, r1
 8005e76: 682a         	ldr	r2, [r5]
 8005e78: ebb1 0f52    	cmp.w	r1, r2, lsr #1
 8005e7c: d300         	blo	0x8005e80 <firmware_image+0x5e80> @ imm = #0x0
 8005e7e: 1c40         	adds	r0, r0, #0x1
 8005e80: 6821         	ldr	r1, [r4]
 8005e82: 0409         	lsls	r1, r1, #0x10
 8005e84: d505         	bpl	0x8005e92 <firmware_image+0x5e92> @ imm = #0xa
 8005e86: f3c0 0142    	ubfx	r1, r0, #0x1, #0x3
 8005e8a: f64f 72f0    	movw	r2, #0xfff0
 8005e8e: 4010         	ands	r0, r2
 8005e90: 4308         	orrs	r0, r1
 8005e92: 81a0         	strh	r0, [r4, #0xc]
 8005e94: b007         	add	sp, #0x1c
 8005e96: bd30         	pop	{r4, r5, pc}
 8005e98: 3800         	subs	r0, #0x0
 8005e9a: 4001         	ands	r1, r0
 8005e9c: 4770         	bx	lr
 8005e9e: e7fe         	b	0x8005e9e <firmware_image+0x5e9e> @ imm = #-0x4
 8005ea0: b570         	push	{r4, r5, r6, lr}
 8005ea2: 4813         	ldr	r0, [pc, #0x4c]         @ 0x8005ef0 <firmware_image+0x5ef0>
 8005ea4: 8800         	ldrh	r0, [r0]
 8005ea6: ebc0 00c0    	rsb	r0, r0, r0, lsl #3
 8005eaa: 0080         	lsls	r0, r0, #0x2
 8005eac: b200         	sxth	r0, r0
 8005eae: f7fa fbd6    	bl	0x800065e <firmware_image+0x65e> @ imm = #-0x5854
 8005eb2: 4a10         	ldr	r2, [pc, #0x40]         @ 0x8005ef4 <firmware_image+0x5ef4>
 8005eb4: 4b10         	ldr	r3, [pc, #0x40]         @ 0x8005ef8 <firmware_image+0x5ef8>
 8005eb6: f7fa fae8    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5a30
 8005eba: 4e10         	ldr	r6, [pc, #0x40]         @ 0x8005efc <firmware_image+0x5efc>
 8005ebc: 4604         	mov	r4, r0
 8005ebe: 460d         	mov	r5, r1
 8005ec0: 6b70         	ldr	r0, [r6, #0x34]
 8005ec2: f7fa fc15    	bl	0x80006f0 <firmware_image+0x6f0> @ imm = #-0x57d6
 8005ec6: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x8005f00 <firmware_image+0x5f00>
 8005ec8: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x8005f04 <firmware_image+0x5f04>
 8005eca: f7fa fade    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5a44
 8005ece: 4622         	mov	r2, r4
 8005ed0: 462b         	mov	r3, r5
 8005ed2: f7fa fa33    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x5b9a
 8005ed6: f7fa fc37    	bl	0x8000748 <firmware_image+0x748> @ imm = #-0x5792
 8005eda: 6370         	str	r0, [r6, #0x34]
 8005edc: f7fa fbd0    	bl	0x8000680 <firmware_image+0x680> @ imm = #-0x5860
 8005ee0: f1a6 0180    	sub.w	r1, r6, #0x80
 8005ee4: 87c8         	strh	r0, [r1, #0x3e]
 8005ee6: 8fc8         	ldrh	r0, [r1, #0x3e]
 8005ee8: 8788         	strh	r0, [r1, #0x3c]
 8005eea: 8748         	strh	r0, [r1, #0x3a]
 8005eec: bd70         	pop	{r4, r5, r6, pc}
 8005eee: 0000         	movs	r0, r0
 8005ef0: 027e         	lsls	r6, r7, #0x9
 8005ef2: 2000         	movs	r0, #0x0
 8005ef4: 999a         	ldr	r1, [sp, #0x268]
 8005ef6: 9999         	ldr	r1, [sp, #0x264]
 8005ef8: 9999         	ldr	r1, [sp, #0x264]
 8005efa: 3fb9         	subs	r7, #0xb9
 8005efc: 00e4         	lsls	r4, r4, #0x3
 8005efe: 2000         	movs	r0, #0x0
 8005f00: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
 8005f02: cccc         	ldm	r4!, {r2, r3, r6, r7}
 8005f04: cccc         	ldm	r4!, {r2, r3, r6, r7}
 8005f06: 3fec         	subs	r7, #0xec
 8005f08: b500         	push	{lr}
 8005f0a: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x8005f68 <firmware_image+0x5f68>
 8005f0c: 8fd8         	ldrh	r0, [r3, #0x3e]
 8005f0e: f8b3 1040    	ldrh.w	r1, [r3, #0x40]
 8005f12: 1a40         	subs	r0, r0, r1
 8005f14: b200         	sxth	r0, r0
 8005f16: f000 fa80    	bl	0x800641a <firmware_image+0x641a> @ imm = #0x500
 8005f1a: eb00 01c0    	add.w	r1, r0, r0, lsl #3
 8005f1e: eb01 1000    	add.w	r0, r1, r0, lsl #4
 8005f22: f640 51ac    	movw	r1, #0xdac
 8005f26: eb01 0040    	add.w	r0, r1, r0, lsl #1
 8005f2a: 6758         	str	r0, [r3, #0x74]
 8005f2c: f242 7110    	movw	r1, #0x2710
 8005f30: f7fc f9a3    	bl	0x800227a <firmware_image+0x227a> @ imm = #-0x3cba
 8005f34: 6758         	str	r0, [r3, #0x74]
 8005f36: f9b3 1032    	ldrsh.w	r1, [r3, #0x32]
 8005f3a: 008a         	lsls	r2, r1, #0x2
 8005f3c: 4601         	mov	r1, r0
 8005f3e: 4610         	mov	r0, r2
 8005f40: f7fc f99b    	bl	0x800227a <firmware_image+0x227a> @ imm = #-0x3cca
 8005f44: 66d8         	str	r0, [r3, #0x6c]
 8005f46: 6f19         	ldr	r1, [r3, #0x70]
 8005f48: 1a40         	subs	r0, r0, r1
 8005f4a: 2864         	cmp	r0, #0x64
 8005f4c: dd02         	ble	0x8005f54 <firmware_image+0x5f54> @ imm = #0x4
 8005f4e: 3164         	adds	r1, #0x64
 8005f50: 66d9         	str	r1, [r3, #0x6c]
 8005f52: e004         	b	0x8005f5e <firmware_image+0x5f5e> @ imm = #0x8
 8005f54: f110 0f64    	cmn.w	r0, #0x64
 8005f58: da01         	bge	0x8005f5e <firmware_image+0x5f5e> @ imm = #0x2
 8005f5a: 3964         	subs	r1, #0x64
 8005f5c: 66d9         	str	r1, [r3, #0x6c]
 8005f5e: 6ed8         	ldr	r0, [r3, #0x6c]
 8005f60: 6718         	str	r0, [r3, #0x70]
 8005f62: 8e58         	ldrh	r0, [r3, #0x32]
 8005f64: 8698         	strh	r0, [r3, #0x34]
 8005f66: bd00         	pop	{pc}
 8005f68: 0064         	lsls	r4, r4, #0x1
 8005f6a: 2000         	movs	r0, #0x0
 8005f6c: 4770         	bx	lr
 8005f6e: 4770         	bx	lr
 8005f70: 4770         	bx	lr
 8005f72: 0000         	movs	r0, r0
 8005f74: b510         	push	{r4, lr}
 8005f76: 4c0e         	ldr	r4, [pc, #0x38]         @ 0x8005fb0 <firmware_image+0x5fb0>
 8005f78: 1ca0         	adds	r0, r4, #0x2
 8005f7a: f7fb fb79    	bl	0x8001670 <firmware_image+0x1670> @ imm = #-0x490e
 8005f7e: 4603         	mov	r3, r0
 8005f80: 1d20         	adds	r0, r4, #0x4
 8005f82: f7fb fb75    	bl	0x8001670 <firmware_image+0x1670> @ imm = #-0x4916
 8005f86: f1a4 0180    	sub.w	r1, r4, #0x80
 8005f8a: f821 0013    	strh.w	r0, [r1, r3, lsl #1]
 8005f8e: 4618         	mov	r0, r3
 8005f90: f7ff ff84    	bl	0x8005e9c <firmware_image+0x5e9c> @ imm = #-0xf8
 8005f94: 2106         	movs	r1, #0x6
 8005f96: 4620         	mov	r0, r4
 8005f98: f000 ff4e    	bl	0x8006e38 <firmware_image+0x6e38> @ imm = #0xe9c
 8005f9c: 4601         	mov	r1, r0
 8005f9e: 1da0         	adds	r0, r4, #0x6
 8005fa0: f7fe fc0d    	bl	0x80047be <firmware_image+0x47be> @ imm = #-0x17e6
 8005fa4: 2108         	movs	r1, #0x8
 8005fa6: 4620         	mov	r0, r4
 8005fa8: e8bd 4010    	pop.w	{r4, lr}
 8005fac: f001 b882    	b.w	0x80070b4 <firmware_image+0x70b4> @ imm = #0x1104
 8005fb0: 0478         	lsls	r0, r7, #0x11
 8005fb2: 2000         	movs	r0, #0x0
 8005fb4: e92d 5ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 8005fb8: 48a0         	ldr	r0, [pc, #0x280]        @ 0x800623c <firmware_image+0x623c>
 8005fba: f8df a27c    	ldr.w	r10, [pc, #0x27c]       @ 0x8006238 <firmware_image+0x6238>
 8005fbe: 7881         	ldrb	r1, [r0, #0x2]
 8005fc0: 78c2         	ldrb	r2, [r0, #0x3]
 8005fc2: f89a e000    	ldrb.w	lr, [r10]
 8005fc6: eb02 2101    	add.w	r1, r2, r1, lsl #8
 8005fca: fa0f fb81    	sxth.w	r11, r1
 8005fce: 7901         	ldrb	r1, [r0, #0x4]
 8005fd0: 7942         	ldrb	r2, [r0, #0x5]
 8005fd2: f890 c008    	ldrb.w	r12, [r0, #0x8]
 8005fd6: eb02 2101    	add.w	r1, r2, r1, lsl #8
 8005fda: b20f         	sxth	r7, r1
 8005fdc: 7981         	ldrb	r1, [r0, #0x6]
 8005fde: 79c2         	ldrb	r2, [r0, #0x7]
 8005fe0: 7a43         	ldrb	r3, [r0, #0x9]
 8005fe2: eb02 2101    	add.w	r1, r2, r1, lsl #8
 8005fe6: fa0f f881    	sxth.w	r8, r1
 8005fea: 7a84         	ldrb	r4, [r0, #0xa]
 8005fec: 7ac5         	ldrb	r5, [r0, #0xb]
 8005fee: f890 900c    	ldrb.w	r9, [r0, #0xc]
 8005ff2: 7b46         	ldrb	r6, [r0, #0xd]
 8005ff4: 2201         	movs	r2, #0x1
 8005ff6: 2100         	movs	r1, #0x0
 8005ff8: f1be 0f00    	cmp.w	lr, #0x0
 8005ffc: d075         	beq	0x80060ea <firmware_image+0x60ea> @ imm = #0xea
 8005ffe: f8ba 000a    	ldrh.w	r0, [r10, #0xa]
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
 80061f8: 7008         	strb	r0, [r1]
 80061fa: 4935         	ldr	r1, [pc, #0xd4]         @ 0x80062d0 <firmware_image+0x62d0>
 80061fc: 09e0         	lsrs	r0, r4, #0x7
 80061fe: 7008         	strb	r0, [r1]
 8006200: 4934         	ldr	r1, [pc, #0xd0]         @ 0x80062d4 <firmware_image+0x62d4>
 8006202: f005 0001    	and	r0, r5, #0x1
 8006206: 7008         	strb	r0, [r1]
 8006208: 4933         	ldr	r1, [pc, #0xcc]         @ 0x80062d8 <firmware_image+0x62d8>
 800620a: f3c5 0040    	ubfx	r0, r5, #0x1, #0x1
 800620e: 7008         	strb	r0, [r1]
 8006210: 4932         	ldr	r1, [pc, #0xc8]         @ 0x80062dc <firmware_image+0x62dc>
 8006212: f3c5 0080    	ubfx	r0, r5, #0x2, #0x1
 8006216: 7008         	strb	r0, [r1]
 8006218: 4931         	ldr	r1, [pc, #0xc4]         @ 0x80062e0 <firmware_image+0x62e0>
 800621a: f3c5 00c0    	ubfx	r0, r5, #0x3, #0x1
 800621e: 7008         	strb	r0, [r1]
 8006220: 4930         	ldr	r1, [pc, #0xc0]         @ 0x80062e4 <firmware_image+0x62e4>
 8006222: f3c5 1000    	ubfx	r0, r5, #0x4, #0x1
 8006226: 7008         	strb	r0, [r1]
 8006228: 492f         	ldr	r1, [pc, #0xbc]         @ 0x80062e8 <firmware_image+0x62e8>
 800622a: 09a8         	lsrs	r0, r5, #0x6
 800622c: 7008         	strb	r0, [r1]
 800622e: e8bd 5ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
 8006232: f7ff b81f    	b.w	0x8005274 <firmware_image+0x5274> @ imm = #-0xfc2
 8006236: 0000         	movs	r0, r0
 8006238: 021e         	lsls	r6, r3, #0x8
 800623a: 2000         	movs	r0, #0x0
 800623c: 0478         	lsls	r0, r7, #0x11
 800623e: 2000         	movs	r0, #0x0
 8006240: 00a4         	lsls	r4, r4, #0x2
 8006242: 2000         	movs	r0, #0x0
 8006244: 0134         	lsls	r4, r6, #0x4
 8006246: 2000         	movs	r0, #0x0
 8006248: 0072         	lsls	r2, r6, #0x1
 800624a: 2000         	movs	r0, #0x0
 800624c: 0071         	lsls	r1, r6, #0x1
 800624e: 2000         	movs	r0, #0x0
 8006250: 009c         	lsls	r4, r3, #0x2
 8006252: 2000         	movs	r0, #0x0
 8006254: 0143         	lsls	r3, r0, #0x5
 8006256: 2000         	movs	r0, #0x0
 8006258: 016e         	lsls	r6, r5, #0x5
 800625a: 2000         	movs	r0, #0x0
 800625c: 003e         	movs	r6, r7
 800625e: 2000         	movs	r0, #0x0
 8006260: 0142         	lsls	r2, r0, #0x5
 8006262: 2000         	movs	r0, #0x0
 8006264: 0169         	lsls	r1, r5, #0x5
 8006266: 2000         	movs	r0, #0x0
 8006268: 0195         	lsls	r5, r2, #0x6
 800626a: 2000         	movs	r0, #0x0
 800626c: 0074         	lsls	r4, r6, #0x1
 800626e: 2000         	movs	r0, #0x0
 8006270: 0076         	lsls	r6, r6, #0x1
 8006272: 2000         	movs	r0, #0x0
 8006274: 007c         	lsls	r4, r7, #0x1
 8006276: 2000         	movs	r0, #0x0
 8006278: 0078         	lsls	r0, r7, #0x1
 800627a: 2000         	movs	r0, #0x0
 800627c: 007a         	lsls	r2, r7, #0x1
 800627e: 2000         	movs	r0, #0x0
 8006280: 007f         	lsls	r7, r7, #0x1
 8006282: 2000         	movs	r0, #0x0
 8006284: 0132         	lsls	r2, r6, #0x4
 8006286: 2000         	movs	r0, #0x0
 8006288: 0149         	lsls	r1, r1, #0x5
 800628a: 2000         	movs	r0, #0x0
 800628c: 0131         	lsls	r1, r6, #0x4
 800628e: 2000         	movs	r0, #0x0
 8006290: 0084         	lsls	r4, r0, #0x2
 8006292: 2000         	movs	r0, #0x0
 8006294: 003c         	movs	r4, r7
 8006296: 2000         	movs	r0, #0x0
 8006298: 0070         	lsls	r0, r6, #0x1
 800629a: 2000         	movs	r0, #0x0
 800629c: 006f         	lsls	r7, r5, #0x1
 800629e: 2000         	movs	r0, #0x0
 80062a0: 0067         	lsls	r7, r4, #0x1
 80062a2: 2000         	movs	r0, #0x0
 80062a4: 006c         	lsls	r4, r5, #0x1
 80062a6: 2000         	movs	r0, #0x0
 80062a8: 0130         	lsls	r0, r6, #0x4
 80062aa: 2000         	movs	r0, #0x0
 80062ac: 0153         	lsls	r3, r2, #0x5
 80062ae: 2000         	movs	r0, #0x0
 80062b0: 0148         	lsls	r0, r1, #0x5
 80062b2: 2000         	movs	r0, #0x0
 80062b4: 0168         	lsls	r0, r5, #0x5
 80062b6: 2000         	movs	r0, #0x0
 80062b8: 008a         	lsls	r2, r1, #0x2
 80062ba: 2000         	movs	r0, #0x0
 80062bc: 012c         	lsls	r4, r5, #0x4
 80062be: 2000         	movs	r0, #0x0
 80062c0: 0004         	movs	r4, r0
 80062c2: 2000         	movs	r0, #0x0
 80062c4: 008c         	lsls	r4, r1, #0x2
 80062c6: 2000         	movs	r0, #0x0
 80062c8: 012e         	lsls	r6, r5, #0x4
 80062ca: 2000         	movs	r0, #0x0
 80062cc: 0196         	lsls	r6, r2, #0x6
 80062ce: 2000         	movs	r0, #0x0
 80062d0: 0152         	lsls	r2, r2, #0x5
 80062d2: 2000         	movs	r0, #0x0
 80062d4: 0073         	lsls	r3, r6, #0x1
 80062d6: 2000         	movs	r0, #0x0
 80062d8: 0075         	lsls	r5, r6, #0x1
 80062da: 2000         	movs	r0, #0x0
 80062dc: 007b         	lsls	r3, r7, #0x1
 80062de: 2000         	movs	r0, #0x0
 80062e0: 0077         	lsls	r7, r6, #0x1
 80062e2: 2000         	movs	r0, #0x0
 80062e4: 0079         	lsls	r1, r7, #0x1
 80062e6: 2000         	movs	r0, #0x0
 80062e8: 007e         	lsls	r6, r7, #0x1
 80062ea: 2000         	movs	r0, #0x0
 80062ec: 0049         	lsls	r1, r1, #0x1
 80062ee: ea50 20c1    	orrs.w	r0, r0, r1, lsl #11
 80062f2: bf18         	it	ne
 80062f4: 2004         	movne	r0, #0x4
 80062f6: 0d4a         	lsrs	r2, r1, #0x15
 80062f8: bf18         	it	ne
 80062fa: f040 0001    	orrne	r0, r0, #0x1
 80062fe: f240 72ff    	movw	r2, #0x7ff
 8006302: ebb2 5f51    	cmp.w	r2, r1, lsr #21
 8006306: bf08         	it	eq
 8006308: f040 0002    	orreq	r0, r0, #0x2
 800630c: 2801         	cmp	r0, #0x1
 800630e: bf08         	it	eq
 8006310: 2005         	moveq	r0, #0x5
 8006312: 4770         	bx	lr
 8006314: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
 8006318: 1e4f         	subs	r7, r1, #0x1
 800631a: eb00 01c7    	add.w	r1, r0, r7, lsl #3
 800631e: 4604         	mov	r4, r0
 8006320: e9d1 0100    	ldrd	r0, r1, [r1]
 8006324: 4615         	mov	r5, r2
 8006326: 461e         	mov	r6, r3
 8006328: f037 0206    	bics	r2, r7, #0x6
 800632c: d00d         	beq	0x800634a <firmware_image+0x634a> @ imm = #0x1a
 800632e: 462a         	mov	r2, r5
 8006330: 4633         	mov	r3, r6
 8006332: f7fa f8aa    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5eac
 8006336: 1e7f         	subs	r7, r7, #0x1
 8006338: eb04 03c7    	add.w	r3, r4, r7, lsl #3
 800633c: e9d3 2300    	ldrd	r2, r3, [r3]
 8006340: f7f9 fffc    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x6008
 8006344: f037 0206    	bics	r2, r7, #0x6
 8006348: d1f1         	bne	0x800632e <firmware_image+0x632e> @ imm = #-0x1e
 800634a: 2f02         	cmp	r7, #0x2
 800634c: d025         	beq	0x800639a <firmware_image+0x639a> @ imm = #0x4a
 800634e: 2f04         	cmp	r7, #0x4
 8006350: d013         	beq	0x800637a <firmware_image+0x637a> @ imm = #0x26
 8006352: 2f06         	cmp	r7, #0x6
 8006354: bf18         	it	ne
 8006356: e8bd 81f0    	popne.w	{r4, r5, r6, r7, r8, pc}
 800635a: 462a         	mov	r2, r5
 800635c: 4633         	mov	r3, r6
 800635e: f7fa f894    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5ed8
 8006362: e9d4 230a    	ldrd	r2, r3, [r4, #40]
 8006366: f7f9 ffe9    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x602e
 800636a: 462a         	mov	r2, r5
 800636c: 4633         	mov	r3, r6
 800636e: f7fa f88c    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5ee8
 8006372: e9d4 2308    	ldrd	r2, r3, [r4, #32]
 8006376: f7f9 ffe1    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x603e
 800637a: 462a         	mov	r2, r5
 800637c: 4633         	mov	r3, r6
 800637e: f7fa f884    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5ef8
 8006382: e9d4 2306    	ldrd	r2, r3, [r4, #24]
 8006386: f7f9 ffd9    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x604e
 800638a: 462a         	mov	r2, r5
 800638c: 4633         	mov	r3, r6
 800638e: f7fa f87c    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5f08
 8006392: e9d4 2304    	ldrd	r2, r3, [r4, #16]
 8006396: f7f9 ffd1    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x605e
 800639a: 462a         	mov	r2, r5
 800639c: 4633         	mov	r3, r6
 800639e: f7fa f874    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5f18
 80063a2: e9d4 2302    	ldrd	r2, r3, [r4, #8]
 80063a6: f7f9 ffc9    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x606e
 80063aa: 462a         	mov	r2, r5
 80063ac: 4633         	mov	r3, r6
 80063ae: f7fa f86c    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x5f28
 80063b2: e9d4 2300    	ldrd	r2, r3, [r4]
 80063b6: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
 80063ba: f7f9 bfbf    	b.w	0x800033c <firmware_image+0x33c> @ imm = #-0x6082
 80063be: 2201         	movs	r2, #0x1
 80063c0: f7fa baa3    	b.w	0x800090a <firmware_image+0x90a> @ imm = #-0x5aba
 80063c4: f7f9 bfba    	b.w	0x800033c <firmware_image+0x33c> @ imm = #-0x608c
 80063c8: 2200         	movs	r2, #0x0
 80063ca: 4613         	mov	r3, r2
 80063cc: 4610         	mov	r0, r2
 80063ce: 4611         	mov	r1, r2
 80063d0: f7fa b8cd    	b.w	0x800056e <firmware_image+0x56e> @ imm = #-0x5e66
 80063d4: 4a02         	ldr	r2, [pc, #0x8]          @ 0x80063e0 <firmware_image+0x63e0>
 80063d6: 2000         	movs	r0, #0x0
 80063d8: 0711         	lsls	r1, r2, #0x1c
 80063da: f7fa ba96    	b.w	0x800090a <firmware_image+0x90a> @ imm = #-0x5ad4
 80063de: 0000         	movs	r0, r0
 80063e0: fd01 ffff    	stc2	p15, c15, [r1, #-1020]
 80063e4: e002         	b	0x80063ec <firmware_image+0x63ec> @ imm = #0x4
 80063e6: c808         	ldm	r0!, {r3}
 80063e8: 1f12         	subs	r2, r2, #0x4
 80063ea: c108         	stm	r1!, {r3}
 80063ec: 2a00         	cmp	r2, #0x0
 80063ee: d1fa         	bne	0x80063e6 <firmware_image+0x63e6> @ imm = #-0xc
 80063f0: 4770         	bx	lr
 80063f2: 4770         	bx	lr
 80063f4: 2000         	movs	r0, #0x0
 80063f6: e001         	b	0x80063fc <firmware_image+0x63fc> @ imm = #0x2
 80063f8: c101         	stm	r1!, {r0}
 80063fa: 1f12         	subs	r2, r2, #0x4
 80063fc: 2a00         	cmp	r2, #0x0
 80063fe: d1fb         	bne	0x80063f8 <firmware_image+0x63f8> @ imm = #-0xa
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
 80064f8: 2200         	movs	r2, #0x0
 80064fa: 463b         	mov	r3, r7
 80064fc: f7f9 ff1e    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x61c4
 8006500: 4602         	mov	r2, r0
 8006502: 460b         	mov	r3, r1
 8006504: 4640         	mov	r0, r8
 8006506: 4651         	mov	r1, r10
 8006508: f7fa f831    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x5f9e
 800650c: 462a         	mov	r2, r5
 800650e: 4623         	mov	r3, r4
 8006510: f7f9 ffbb    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x608a
 8006514: b006         	add	sp, #0x18
 8006516: 462a         	mov	r2, r5
 8006518: 4623         	mov	r3, r4
 800651a: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 800651e: f7f9 bf0d    	b.w	0x800033c <firmware_image+0x33c> @ imm = #-0x61e6
 8006522: 4628         	mov	r0, r5
 8006524: f024 4100    	bic	r1, r4, #0x80000000
 8006528: 2200         	movs	r2, #0x0
 800652a: 463d         	mov	r5, r7
 800652c: 463b         	mov	r3, r7
 800652e: f7f9 ffa9    	bl	0x8000484 <firmware_image+0x484> @ imm = #-0x60ae
 8006532: f04f 32ff    	mov.w	r2, #0xffffffff
 8006536: f7fa f9e8    	bl	0x800090a <firmware_image+0x90a> @ imm = #-0x5c30
 800653a: 4606         	mov	r6, r0
 800653c: 4602         	mov	r2, r0
 800653e: 4853         	ldr	r0, [pc, #0x14c]        @ 0x800668c <firmware_image+0x668c>
 8006540: 460f         	mov	r7, r1
 8006542: 460b         	mov	r3, r1
 8006544: 2106         	movs	r1, #0x6
 8006546: 4478         	add	r0, pc
 8006548: f7ff fee4    	bl	0x8006314 <firmware_image+0x6314> @ imm = #-0x238
 800654c: 4632         	mov	r2, r6
 800654e: 463b         	mov	r3, r7
 8006550: f7f9 ff9b    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x60ca
 8006554: e9cd 0100    	strd	r0, r1, [sp]
 8006558: 484d         	ldr	r0, [pc, #0x134]        @ 0x8006690 <firmware_image+0x6690>
 800655a: 4632         	mov	r2, r6
 800655c: 463b         	mov	r3, r7
 800655e: 2104         	movs	r1, #0x4
 8006560: 4478         	add	r0, pc
 8006562: f7ff fed7    	bl	0x8006314 <firmware_image+0x6314> @ imm = #-0x252
 8006566: 4632         	mov	r2, r6
 8006568: 463b         	mov	r3, r7
 800656a: f7f9 ff8e    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x60e4
 800656e: 2200         	movs	r2, #0x0
 8006570: 462b         	mov	r3, r5
 8006572: f7f9 fee3    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x623a
 8006576: 4683         	mov	r11, r0
 8006578: 9102         	str	r1, [sp, #0x8]
 800657a: 4630         	mov	r0, r6
 800657c: 4639         	mov	r1, r7
 800657e: f000 fce1    	bl	0x8006f44 <firmware_image+0x6f44> @ imm = #0x9c2
 8006582: 4680         	mov	r8, r0
 8006584: 4843         	ldr	r0, [pc, #0x10c]        @ 0x8006694 <firmware_image+0x6694>
 8006586: 460d         	mov	r5, r1
 8006588: 4550         	cmp	r0, r10
 800658a: dc17         	bgt	0x80065bc <firmware_image+0x65bc> @ imm = #0x2e
 800658c: e9dd 0100    	ldrd	r0, r1, [sp]
 8006590: 465a         	mov	r2, r11
 8006592: 9b02         	ldr	r3, [sp, #0x8]
 8006594: f7f9 ffeb    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x602a
 8006598: 4642         	mov	r2, r8
 800659a: 462b         	mov	r3, r5
 800659c: f7f9 ff75    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x6116
 80065a0: 4642         	mov	r2, r8
 80065a2: 462b         	mov	r3, r5
 80065a4: f7f9 feca    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x626c
 80065a8: 2201         	movs	r2, #0x1
 80065aa: f7fa f9ae    	bl	0x800090a <firmware_image+0x90a> @ imm = #-0x5ca4
 80065ae: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x8006670 <firmware_image+0x6670>
 80065b0: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x8006674 <firmware_image+0x6674>
 80065b2: f7f9 ff64    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x6138
 80065b6: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x8006678 <firmware_image+0x6678>
 80065b8: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x800667c <firmware_image+0x667c>
 80065ba: e04c         	b	0x8006656 <firmware_image+0x6656> @ imm = #0x98
 80065bc: f04f 0a00    	mov.w	r10, #0x0
 80065c0: 4652         	mov	r2, r10
 80065c2: 460b         	mov	r3, r1
 80065c4: 4640         	mov	r0, r8
 80065c6: f7f9 feb9    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x628e
 80065ca: e9cd 1003    	strd	r1, r0, [sp, #12]
 80065ce: 4652         	mov	r2, r10
 80065d0: 462b         	mov	r3, r5
 80065d2: 4610         	mov	r0, r2
 80065d4: 4619         	mov	r1, r3
 80065d6: f7f9 ff58    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x6150
 80065da: 4632         	mov	r2, r6
 80065dc: 463b         	mov	r3, r7
 80065de: f7f9 ff51    	bl	0x8000484 <firmware_image+0x484> @ imm = #-0x615e
 80065e2: e9dd 3203    	ldrd	r3, r2, [sp, #12]
 80065e6: f7f9 ffc2    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x607c
 80065ea: 4606         	mov	r6, r0
 80065ec: 460f         	mov	r7, r1
 80065ee: e9dd 0100    	ldrd	r0, r1, [sp]
 80065f2: 465a         	mov	r2, r11
 80065f4: 9b02         	ldr	r3, [sp, #0x8]
 80065f6: f7f9 ffba    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x608c
 80065fa: 4683         	mov	r11, r0
 80065fc: 9100         	str	r1, [sp]
 80065fe: 2201         	movs	r2, #0x1
 8006600: 4630         	mov	r0, r6
 8006602: 4639         	mov	r1, r7
 8006604: f7fa f981    	bl	0x800090a <firmware_image+0x90a> @ imm = #-0x5cfe
 8006608: 4a19         	ldr	r2, [pc, #0x64]         @ 0x8006670 <firmware_image+0x6670>
 800660a: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x8006674 <firmware_image+0x6674>
 800660c: f7f9 ff3a    	bl	0x8000484 <firmware_image+0x484> @ imm = #-0x618c
 8006610: 4606         	mov	r6, r0
 8006612: 460f         	mov	r7, r1
 8006614: 2201         	movs	r2, #0x1
 8006616: 4640         	mov	r0, r8
 8006618: 4629         	mov	r1, r5
 800661a: f7fa f976    	bl	0x800090a <firmware_image+0x90a> @ imm = #-0x5d14
 800661e: 465a         	mov	r2, r11
 8006620: 9b00         	ldr	r3, [sp]
 8006622: f7f9 ff32    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x619c
 8006626: 4632         	mov	r2, r6
 8006628: 463b         	mov	r3, r7
 800662a: f7f9 ff28    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x61b0
 800662e: 4606         	mov	r6, r0
 8006630: 460f         	mov	r7, r1
 8006632: 2201         	movs	r2, #0x1
 8006634: 4650         	mov	r0, r10
 8006636: 4629         	mov	r1, r5
 8006638: f7fa f967    	bl	0x800090a <firmware_image+0x90a> @ imm = #-0x5d32
 800663c: 4d0e         	ldr	r5, [pc, #0x38]         @ 0x8006678 <firmware_image+0x6678>
 800663e: f8df 8058    	ldr.w	r8, [pc, #0x58]         @ 0x8006698 <firmware_image+0x6698>
 8006642: 462a         	mov	r2, r5
 8006644: 4643         	mov	r3, r8
 8006646: f7f9 ff1d    	bl	0x8000484 <firmware_image+0x484> @ imm = #-0x61c6
 800664a: 4632         	mov	r2, r6
 800664c: 463b         	mov	r3, r7
 800664e: f7f9 ff19    	bl	0x8000484 <firmware_image+0x484> @ imm = #-0x61ce
 8006652: 462a         	mov	r2, r5
 8006654: 4643         	mov	r3, r8
 8006656: f7f9 ff15    	bl	0x8000484 <firmware_image+0x484> @ imm = #-0x61d6
 800665a: 2c00         	cmp	r4, #0x0
 800665c: bfd8         	it	le
 800665e: f081 4100    	eorle	r1, r1, #0x80000000
 8006662: b006         	add	sp, #0x18
 8006664: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 8006668: 0000         	movs	r0, r0
 800666a: 3ff0         	subs	r7, #0xf0
 800666c: 0000         	movs	r0, r0
 800666e: 7ff0         	ldrb	r0, [r6, #0x1f]
 8006670: 5c07         	ldrb	r7, [r0, r0]
 8006672: 3314         	adds	r3, #0x14
 8006674: a626         	adr	r6, #152 <firmware_image+0x669e>
 8006676: 3c91         	subs	r4, #0x91
 8006678: 2d18         	cmp	r5, #0x18
 800667a: 5444         	strb	r4, [r0, r1]
 800667c: 21fb         	movs	r1, #0xfb
 800667e: 3ff9         	subs	r7, #0xf9
 8006680: 0000         	movs	r0, r0
 8006682: 3fe0         	subs	r7, #0xe0
 8006684: 10d4         	asrs	r4, r2, #0x3
 8006686: 0000         	movs	r0, r0
 8006688: 10ea         	asrs	r2, r5, #0x3
 800668a: 0000         	movs	r0, r0
 800668c: 105e         	asrs	r6, r3, #0x1
 800668e: 0000         	movs	r0, r0
 8006690: 1074         	asrs	r4, r6, #0x1
 8006692: 0000         	movs	r0, r0
 8006694: 3333         	adds	r3, #0x33
 8006696: 3fef         	subs	r7, #0xef
 8006698: 21fb         	movs	r1, #0xfb
 800669a: 3fe9         	subs	r7, #0xe9
 800669c: e92d 4ff8    	push.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80066a0: 4604         	mov	r4, r0
 80066a2: 460d         	mov	r5, r1
 80066a4: f021 4000    	bic	r0, r1, #0x80000000
 80066a8: 9100         	str	r1, [sp]
 80066aa: 4973         	ldr	r1, [pc, #0x1cc]        @ 0x8006878 <firmware_image+0x6878>
 80066ac: 4281         	cmp	r1, r0
 80066ae: dc11         	bgt	0x80066d4 <firmware_image+0x66d4> @ imm = #0x22
 80066b0: 4972         	ldr	r1, [pc, #0x1c8]        @ 0x800687c <firmware_image+0x687c>
 80066b2: 4288         	cmp	r0, r1
 80066b4: dc01         	bgt	0x80066ba <firmware_image+0x66ba> @ imm = #0x2
 80066b6: d106         	bne	0x80066c6 <firmware_image+0x66c6> @ imm = #0xc
 80066b8: b12c         	cbz	r4, 0x80066c6 <firmware_image+0x66c6> @ imm = #0xa
 80066ba: 4620         	mov	r0, r4
 80066bc: 4629         	mov	r1, r5
 80066be: e8bd 4ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80066c2: f7ff be7c    	b.w	0x80063be <firmware_image+0x63be> @ imm = #-0x308
 80066c6: 486e         	ldr	r0, [pc, #0x1b8]        @ 0x8006880 <firmware_image+0x6880>
 80066c8: 2d00         	cmp	r5, #0x0
 80066ca: bfcc         	ite	gt
 80066cc: 496d         	ldrgt	r1, [pc, #0x1b4]        @ 0x8006884 <firmware_image+0x6884>
 80066ce: 496e         	ldrle	r1, [pc, #0x1b8]        @ 0x8006888 <firmware_image+0x6888>
 80066d0: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80066d4: 496d         	ldr	r1, [pc, #0x1b4]        @ 0x800688c <firmware_image+0x688c>
 80066d6: 4281         	cmp	r1, r0
 80066d8: dd11         	ble	0x80066fe <firmware_image+0x66fe> @ imm = #0x22
 80066da: 496d         	ldr	r1, [pc, #0x1b4]        @ 0x8006890 <firmware_image+0x6890>
 80066dc: 4281         	cmp	r1, r0
 80066de: bfd8         	it	le
 80066e0: f04f 36ff    	movle.w	r6, #0xffffffff
 80066e4: dd6d         	ble	0x80067c2 <firmware_image+0x67c2> @ imm = #0xda
 80066e6: 4620         	mov	r0, r4
 80066e8: 4629         	mov	r1, r5
 80066ea: f7ff fdff    	bl	0x80062ec <firmware_image+0x62ec> @ imm = #-0x402
 80066ee: 2804         	cmp	r0, #0x4
 80066f0: bf08         	it	eq
 80066f2: f7ff fe6f    	bleq	0x80063d4 <firmware_image+0x63d4> @ imm = #-0x322
 80066f6: 4620         	mov	r0, r4
 80066f8: 4629         	mov	r1, r5
 80066fa: e8bd 8ff8    	pop.w	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80066fe: 4965         	ldr	r1, [pc, #0x194]        @ 0x8006894 <firmware_image+0x6894>
 8006700: 4f65         	ldr	r7, [pc, #0x194]        @ 0x8006898 <firmware_image+0x6898>
 8006702: f025 4500    	bic	r5, r5, #0x80000000
 8006706: 4281         	cmp	r1, r0
 8006708: dd33         	ble	0x8006772 <firmware_image+0x6772> @ imm = #0x66
 800670a: 4964         	ldr	r1, [pc, #0x190]        @ 0x800689c <firmware_image+0x689c>
 800670c: 4281         	cmp	r1, r0
 800670e: dd19         	ble	0x8006744 <firmware_image+0x6744> @ imm = #0x32
 8006710: 2600         	movs	r6, #0x0
 8006712: 4632         	mov	r2, r6
 8006714: f04f 4380    	mov.w	r3, #0x40000000
 8006718: 4620         	mov	r0, r4
 800671a: 4629         	mov	r1, r5
 800671c: f7f9 fe0e    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x63e4
 8006720: 4680         	mov	r8, r0
 8006722: 468a         	mov	r10, r1
 8006724: 2201         	movs	r2, #0x1
 8006726: 4620         	mov	r0, r4
 8006728: 4629         	mov	r1, r5
 800672a: f7fa f8ee    	bl	0x800090a <firmware_image+0x90a> @ imm = #-0x5e24
 800672e: 2200         	movs	r2, #0x0
 8006730: 463b         	mov	r3, r7
 8006732: f7f9 fea4    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x62b8
 8006736: 4642         	mov	r2, r8
 8006738: 4653         	mov	r3, r10
 800673a: f7f9 ff18    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x61d0
 800673e: 4604         	mov	r4, r0
 8006740: 460d         	mov	r5, r1
 8006742: e03e         	b	0x80067c2 <firmware_image+0x67c2> @ imm = #0x7c
 8006744: 2601         	movs	r6, #0x1
 8006746: 2200         	movs	r2, #0x0
 8006748: 46ba         	mov	r10, r7
 800674a: 463b         	mov	r3, r7
 800674c: 4620         	mov	r0, r4
 800674e: 4629         	mov	r1, r5
 8006750: f7f9 fdf4    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x6418
 8006754: 4680         	mov	r8, r0
 8006756: 460f         	mov	r7, r1
 8006758: 2200         	movs	r2, #0x0
 800675a: 4653         	mov	r3, r10
 800675c: 4620         	mov	r0, r4
 800675e: 4629         	mov	r1, r5
 8006760: f7f9 fe8d    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x62e6
 8006764: 4642         	mov	r2, r8
 8006766: 463b         	mov	r3, r7
 8006768: f7f9 ff01    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x61fe
 800676c: 4604         	mov	r4, r0
 800676e: 460d         	mov	r5, r1
 8006770: e027         	b	0x80067c2 <firmware_image+0x67c2> @ imm = #0x4e
 8006772: 494b         	ldr	r1, [pc, #0x12c]        @ 0x80068a0 <firmware_image+0x68a0>
 8006774: 4281         	cmp	r1, r0
 8006776: dd1b         	ble	0x80067b0 <firmware_image+0x67b0> @ imm = #0x36
 8006778: f8df a128    	ldr.w	r10, [pc, #0x128]       @ 0x80068a4 <firmware_image+0x68a4>
 800677c: 2602         	movs	r6, #0x2
 800677e: 2200         	movs	r2, #0x0
 8006780: 4653         	mov	r3, r10
 8006782: 4620         	mov	r0, r4
 8006784: 4629         	mov	r1, r5
 8006786: f7f9 fe80    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x6300
 800678a: 2200         	movs	r2, #0x0
 800678c: 463b         	mov	r3, r7
 800678e: f7f9 fdd5    	bl	0x800033c <firmware_image+0x33c> @ imm = #-0x6456
 8006792: 4680         	mov	r8, r0
 8006794: 460f         	mov	r7, r1
 8006796: 2200         	movs	r2, #0x0
 8006798: 4653         	mov	r3, r10
 800679a: 4620         	mov	r0, r4
 800679c: 4629         	mov	r1, r5
 800679e: f7f9 fe6e    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x6324
 80067a2: 4642         	mov	r2, r8
 80067a4: 463b         	mov	r3, r7
 80067a6: f7f9 fee2    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x623c
 80067aa: 4604         	mov	r4, r0
 80067ac: 460d         	mov	r5, r1
 80067ae: e008         	b	0x80067c2 <firmware_image+0x67c2> @ imm = #0x10
 80067b0: 2603         	movs	r6, #0x3
 80067b2: 4622         	mov	r2, r4
 80067b4: 462b         	mov	r3, r5
 80067b6: 2000         	movs	r0, #0x0
 80067b8: 493b         	ldr	r1, [pc, #0xec]         @ 0x80068a8 <firmware_image+0x68a8>
 80067ba: f7f9 fed8    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x6250
 80067be: 4604         	mov	r4, r0
 80067c0: 460d         	mov	r5, r1
 80067c2: 4622         	mov	r2, r4
 80067c4: 462b         	mov	r3, r5
 80067c6: 4610         	mov	r0, r2
 80067c8: 4619         	mov	r1, r3
 80067ca: f7f9 fe5e    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x6344
 80067ce: 468b         	mov	r11, r1
 80067d0: 4682         	mov	r10, r0
 80067d2: 4602         	mov	r2, r0
 80067d4: 460b         	mov	r3, r1
 80067d6: f7f9 fe58    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x6350
 80067da: 4607         	mov	r7, r0
 80067dc: 4602         	mov	r2, r0
 80067de: 4833         	ldr	r0, [pc, #0xcc]         @ 0x80068ac <firmware_image+0x68ac>
 80067e0: 4688         	mov	r8, r1
 80067e2: 460b         	mov	r3, r1
 80067e4: 2106         	movs	r1, #0x6
 80067e6: 4478         	add	r0, pc
 80067e8: f7ff fd94    	bl	0x8006314 <firmware_image+0x6314> @ imm = #-0x4d8
 80067ec: 4652         	mov	r2, r10
 80067ee: 465b         	mov	r3, r11
 80067f0: f7f9 fe4b    	bl	0x800048a <firmware_image+0x48a> @ imm = #-0x636a
 80067f4: 4682         	mov	r10, r0
 80067f6: 482e         	ldr	r0, [pc, #0xb8]         @ 0x80068b0 <firmware_image+0x68b0>
 80067f8: 468b         	mov	r11, r1
 80067fa: 463a         	mov	r2, r7
 80067fc: 4643         	mov	r3, r8
 80067fe: 2105         	movs	r1, #0x5
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
 8006928: bf14         	ite	ne
 800692a: 2c01         	cmpne	r4, #0x1
 800692c: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 8006930: 2c02         	cmp	r4, #0x2
 8006932: d030         	beq	0x8006996 <firmware_image+0x6996> @ imm = #0x60
 8006934: 2c03         	cmp	r4, #0x3
 8006936: d032         	beq	0x800699e <firmware_image+0x699e> @ imm = #0x64
 8006938: ea56 0b0c    	orrs.w	r11, r6, r12
 800693c: d00a         	beq	0x8006954 <firmware_image+0x6954> @ imm = #0x14
 800693e: 42be         	cmp	r6, r7
 8006940: d120         	bne	0x8006984 <firmware_image+0x6984> @ imm = #0x40
 8006942: 42ba         	cmp	r2, r7
 8006944: d109         	bne	0x800695a <firmware_image+0x695a> @ imm = #0x12
 8006946: f026 4680    	bic	r6, r6, #0x40000000
 800694a: f022 4280    	bic	r2, r2, #0x40000000
 800694e: 4633         	mov	r3, r6
 8006950: 4611         	mov	r1, r2
 8006952: e017         	b	0x8006984 <firmware_image+0x6984> @ imm = #0x2e
 8006954: 2900         	cmp	r1, #0x0
 8006956: db1a         	blt	0x800698e <firmware_image+0x698e> @ imm = #0x34
 8006958: e025         	b	0x80069a6 <firmware_image+0x69a6> @ imm = #0x4a
 800695a: f8df b0c8    	ldr.w	r11, [pc, #0xc8]        @ 0x8006a24 <firmware_image+0x6a24>
 800695e: 44fb         	add	r11, pc
 8006960: 2c00         	cmp	r4, #0x0
 8006962: bf04         	itt	eq
 8006964: e9db 0100    	ldrdeq	r0, r1, [r11]
 8006968: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 800696c: 2c01         	cmp	r4, #0x1
 800696e: bf02         	ittt	eq
 8006970: e9db 0100    	ldrdeq	r0, r1, [r11]
 8006974: f081 4100    	eoreq	r1, r1, #0x80000000
 8006978: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 800697c: 2c02         	cmp	r4, #0x2
 800697e: d00a         	beq	0x8006996 <firmware_image+0x6996> @ imm = #0x14
 8006980: 2c03         	cmp	r4, #0x3
 8006982: d00c         	beq	0x800699e <firmware_image+0x699e> @ imm = #0x18
 8006984: 42ba         	cmp	r2, r7
 8006986: d112         	bne	0x80069ae <firmware_image+0x69ae> @ imm = #0x24
 8006988: f1b8 0f00    	cmp.w	r8, #0x0
 800698c: da0b         	bge	0x80069a6 <firmware_image+0x69a6> @ imm = #0x16
 800698e: 4823         	ldr	r0, [pc, #0x8c]         @ 0x8006a1c <firmware_image+0x6a1c>
 8006990: 4925         	ldr	r1, [pc, #0x94]         @ 0x8006a28 <firmware_image+0x6a28>
 8006992: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 8006996: 4628         	mov	r0, r5
 8006998: 4924         	ldr	r1, [pc, #0x90]         @ 0x8006a2c <firmware_image+0x6a2c>
 800699a: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 800699e: 4628         	mov	r0, r5
 80069a0: 4671         	mov	r1, lr
 80069a2: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069a6: 481d         	ldr	r0, [pc, #0x74]         @ 0x8006a1c <firmware_image+0x6a1c>
 80069a8: 4921         	ldr	r1, [pc, #0x84]         @ 0x8006a30 <firmware_image+0x6a30>
 80069aa: e8bd 8df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069ae: 1b92         	subs	r2, r2, r6
 80069b0: 1512         	asrs	r2, r2, #0x14
 80069b2: 2a3c         	cmp	r2, #0x3c
 80069b4: bfc4         	itt	gt
 80069b6: 4819         	ldrgt	r0, [pc, #0x64]         @ 0x8006a1c <firmware_image+0x6a1c>
 80069b8: 491d         	ldrgt	r1, [pc, #0x74]         @ 0x8006a30 <firmware_image+0x6a30>
 80069ba: dc0e         	bgt	0x80069da <firmware_image+0x69da> @ imm = #0x1c
 80069bc: f1ba 0f00    	cmp.w	r10, #0x0
 80069c0: bfbe         	ittt	lt
 80069c2: f112 0f3c    	cmnlt.w	r2, #0x3c
 80069c6: 2000         	movlt	r0, #0x0
 80069c8: 4601         	movlt	r1, r0
 80069ca: db06         	blt	0x80069da <firmware_image+0x69da> @ imm = #0xc
 80069cc: 4662         	mov	r2, r12
 80069ce: f7f9 fdce    	bl	0x800056e <firmware_image+0x56e> @ imm = #-0x6464
 80069d2: f021 4100    	bic	r1, r1, #0x80000000
 80069d6: f7ff fe61    	bl	0x800669c <firmware_image+0x669c> @ imm = #-0x33e
 80069da: 2c00         	cmp	r4, #0x0
 80069dc: bf08         	it	eq
 80069de: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069e2: 2c01         	cmp	r4, #0x1
 80069e4: bf04         	itt	eq
 80069e6: f081 4100    	eoreq	r1, r1, #0x80000000
 80069ea: e8bd 8df0    	popeq.w	{r4, r5, r6, r7, r8, r10, r11, pc}
 80069ee: 4a11         	ldr	r2, [pc, #0x44]         @ 0x8006a34 <firmware_image+0x6a34>
 80069f0: 4b11         	ldr	r3, [pc, #0x44]         @ 0x8006a38 <firmware_image+0x6a38>
 80069f2: 2c02         	cmp	r4, #0x2
 80069f4: d007         	beq	0x8006a06 <firmware_image+0x6a06> @ imm = #0xe
 80069f6: f7f9 fd42    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x657c
 80069fa: 462a         	mov	r2, r5
 80069fc: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006a00: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x8006a2c <firmware_image+0x6a2c>
 8006a02: f7f9 bd3c    	b.w	0x800047e <firmware_image+0x47e> @ imm = #-0x6588
 8006a06: f7f9 fd3a    	bl	0x800047e <firmware_image+0x47e> @ imm = #-0x658c
 8006a0a: 462a         	mov	r2, r5
 8006a0c: e8bd 4df0    	pop.w	{r4, r5, r6, r7, r8, r10, r11, lr}
 8006a10: 4b06         	ldr	r3, [pc, #0x18]         @ 0x8006a2c <firmware_image+0x6a2c>
 8006a12: f7f9 bd37    	b.w	0x8000484 <firmware_image+0x484> @ imm = #-0x6592
 8006a16: 0000         	movs	r0, r0
 8006a18: 0000         	movs	r0, r0
 8006a1a: 7ff0         	ldrb	r0, [r6, #0x1f]
 8006a1c: 2d18         	cmp	r5, #0x18
 8006a1e: 5444         	strb	r4, [r0, r1]
 8006a20: 21fb         	movs	r1, #0xfb
 8006a22: c009         	stm	r0!, {r0, r3}
 8006a24: 0d2e         	lsrs	r6, r5, #0x14
 8006a26: 0000         	movs	r0, r0
 8006a28: 21fb         	movs	r1, #0xfb
 8006a2a: bff9         	itett	al                      @ unpredictable IT predicate sequence
 8006a2c: 21fb         	mov	r1, #0xfb
 8006a2e: 4009         	and<und>	r1, r1
 8006a30: 21fb         	mov	r1, #0xfb
 8006a32: 3ff9         	sub	r7, #0xf9
 8006a34: 5c07         	ldrb	r7, [r0, r0]
 8006a36: 3314         	adds	r3, #0x14
 8006a38: a626         	adr	r6, #152 <firmware_image+0x6a62>
 8006a3a: 3ca1         	subs	r4, #0xa1
 8006a3c: b570         	push	{r4, r5, r6, lr}
 8006a3e: 4e2d         	ldr	r6, [pc, #0xb4]         @ 0x8006af4 <firmware_image+0x6af4>
 8006a40: f44f 5100    	mov.w	r1, #0x2000
 8006a44: 4630         	mov	r0, r6
 8006a46: f7fb fe85    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0x42f6
 8006a4a: b245         	sxtb	r5, r0
 8006a4c: 2102         	movs	r1, #0x2
 8006a4e: f04f 4090    	mov.w	r0, #0x48000000
 8006a52: f7fb fe7f    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0x4302
 8006a56: b244         	sxtb	r4, r0
 8006a58: f44f 4180    	mov.w	r1, #0x4000
 8006a5c: 4630         	mov	r0, r6
 8006a5e: f7fb fe79    	bl	0x8002754 <firmware_image+0x2754> @ imm = #-0x430e
 8006a62: b241         	sxtb	r1, r0
 8006a64: 4824         	ldr	r0, [pc, #0x90]         @ 0x8006af8 <firmware_image+0x6af8>
 8006a66: 2200         	movs	r2, #0x0
 8006a68: 2301         	movs	r3, #0x1
 8006a6a: 78c6         	ldrb	r6, [r0, #0x3]
 8006a6c: b10e         	cbz	r6, 0x8006a72 <firmware_image+0x6a72> @ imm = #0x2
 8006a6e: 89c6         	ldrh	r6, [r0, #0xe]
 8006a70: b94e         	cbnz	r6, 0x8006a86 <firmware_image+0x6a86> @ imm = #0x12
 8006a72: f990 6007    	ldrsb.w	r6, [r0, #0x7]
 8006a76: 42b5         	cmp	r5, r6
 8006a78: d004         	beq	0x8006a84 <firmware_image+0x6a84> @ imm = #0x8
 8006a7a: 8986         	ldrh	r6, [r0, #0xc]
 8006a7c: 81c6         	strh	r6, [r0, #0xe]
 8006a7e: 70c3         	strb	r3, [r0, #0x3]
 8006a80: 7102         	strb	r2, [r0, #0x4]
 8006a82: 7142         	strb	r2, [r0, #0x5]
 8006a84: 71c5         	strb	r5, [r0, #0x7]
 8006a86: 7905         	ldrb	r5, [r0, #0x4]
 8006a88: b10d         	cbz	r5, 0x8006a8e <firmware_image+0x6a8e> @ imm = #0x2
 8006a8a: 8a05         	ldrh	r5, [r0, #0x10]
 8006a8c: b94d         	cbnz	r5, 0x8006aa2 <firmware_image+0x6aa2> @ imm = #0x12
 8006a8e: f990 5008    	ldrsb.w	r5, [r0, #0x8]
 8006a92: 42ac         	cmp	r4, r5
 8006a94: d004         	beq	0x8006aa0 <firmware_image+0x6aa0> @ imm = #0x8
 8006a96: 8985         	ldrh	r5, [r0, #0xc]
 8006a98: 8205         	strh	r5, [r0, #0x10]
 8006a9a: 7103         	strb	r3, [r0, #0x4]
 8006a9c: 70c2         	strb	r2, [r0, #0x3]
 8006a9e: 7142         	strb	r2, [r0, #0x5]
 8006aa0: 7204         	strb	r4, [r0, #0x8]
 8006aa2: 7944         	ldrb	r4, [r0, #0x5]
 8006aa4: b10c         	cbz	r4, 0x8006aaa <firmware_image+0x6aaa> @ imm = #0x2
 8006aa6: 8a44         	ldrh	r4, [r0, #0x12]
 8006aa8: b94c         	cbnz	r4, 0x8006abe <firmware_image+0x6abe> @ imm = #0x12
 8006aaa: f990 4009    	ldrsb.w	r4, [r0, #0x9]
 8006aae: 42a1         	cmp	r1, r4
 8006ab0: d004         	beq	0x8006abc <firmware_image+0x6abc> @ imm = #0x8
 8006ab2: 8984         	ldrh	r4, [r0, #0xc]
 8006ab4: 8244         	strh	r4, [r0, #0x12]
 8006ab6: 7143         	strb	r3, [r0, #0x5]
 8006ab8: 70c2         	strb	r2, [r0, #0x3]
 8006aba: 7102         	strb	r2, [r0, #0x4]
 8006abc: 7241         	strb	r1, [r0, #0x9]
 8006abe: f9b0 100e    	ldrsh.w	r1, [r0, #0xe]
 8006ac2: 2900         	cmp	r1, #0x0
 8006ac4: dd01         	ble	0x8006aca <firmware_image+0x6aca> @ imm = #0x2
 8006ac6: 1e49         	subs	r1, r1, #0x1
 8006ac8: 81c1         	strh	r1, [r0, #0xe]
 8006aca: f9b0 1010    	ldrsh.w	r1, [r0, #0x10]
 8006ace: 2900         	cmp	r1, #0x0
 8006ad0: dd01         	ble	0x8006ad6 <firmware_image+0x6ad6> @ imm = #0x2
 8006ad2: 1e49         	subs	r1, r1, #0x1
 8006ad4: 8201         	strh	r1, [r0, #0x10]
 8006ad6: f9b0 1012    	ldrsh.w	r1, [r0, #0x12]
 8006ada: 2900         	cmp	r1, #0x0
 8006adc: dd01         	ble	0x8006ae2 <firmware_image+0x6ae2> @ imm = #0x2
 8006ade: 1e49         	subs	r1, r1, #0x1
 8006ae0: 8241         	strh	r1, [r0, #0x12]
 8006ae2: 79c1         	ldrb	r1, [r0, #0x7]
 8006ae4: 7a02         	ldrb	r2, [r0, #0x8]
 8006ae6: ea41 0142    	orr.w	r1, r1, r2, lsl #1
 8006aea: 7a40         	ldrb	r0, [r0, #0x9]
 8006aec: ea41 0080    	orr.w	r0, r1, r0, lsl #2
 8006af0: b2c0         	uxtb	r0, r0
 8006af2: bd70         	pop	{r4, r5, r6, pc}
 8006af4: 0800         	lsrs	r0, r0, #0x20
 8006af6: 4800         	ldr	r0, [pc, #0x0]          @ 0x8006af8 <firmware_image+0x6af8>
 8006af8: 0268         	lsls	r0, r5, #0x9
 8006afa: 2000         	movs	r0, #0x0
 8006afc: f7fd fc8e    	bl	0x800441c <firmware_image+0x441c> @ imm = #-0x26e4
 8006b00: f7fc fc0e    	bl	0x8003320 <firmware_image+0x3320> @ imm = #-0x37e4
 8006b04: f7fa feec    	bl	0x80018e0 <firmware_image+0x18e0> @ imm = #-0x5228
 8006b08: 48a3         	ldr	r0, [pc, #0x28c]        @ 0x8006d98 <firmware_image+0x6d98>
 8006b0a: f7fb fc61    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x473e
 8006b0e: f7fd fb05    	bl	0x800411c <firmware_image+0x411c> @ imm = #-0x29f6
 8006b12: f7fc fd67    	bl	0x80035e4 <firmware_image+0x35e4> @ imm = #-0x3532
 8006b16: f7fe fa66    	bl	0x8004fe6 <firmware_image+0x4fe6> @ imm = #-0x1b34
 8006b1a: f7fd fe55    	bl	0x80047c8 <firmware_image+0x47c8> @ imm = #-0x2356
 8006b1e: f7fb f8a7    	bl	0x8001c70 <firmware_image+0x1c70> @ imm = #-0x4eb2
 8006b22: f7fc fb79    	bl	0x8003218 <firmware_image+0x3218> @ imm = #-0x390e
 8006b26: f7fc fbb7    	bl	0x8003298 <firmware_image+0x3298> @ imm = #-0x3892
 8006b2a: f44f 50fa    	mov.w	r0, #0x1f40
 8006b2e: f7fb fc4f    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x4762
 8006b32: 4d9a         	ldr	r5, [pc, #0x268]        @ 0x8006d9c <firmware_image+0x6d9c>
 8006b34: 2400         	movs	r4, #0x0
 8006b36: 80ec         	strh	r4, [r5, #0x6]
 8006b38: f04f 4690    	mov.w	r6, #0x48000000
 8006b3c: f644 6720    	movw	r7, #0x4e20
 8006b40: 6930         	ldr	r0, [r6, #0x10]
 8006b42: 04c0         	lsls	r0, r0, #0x13
 8006b44: d502         	bpl	0x8006b4c <firmware_image+0x6b4c> @ imm = #0x4
 8006b46: 8929         	ldrh	r1, [r5, #0x8]
 8006b48: 1c49         	adds	r1, r1, #0x1
 8006b4a: 8129         	strh	r1, [r5, #0x8]
 8006b4c: 4638         	mov	r0, r7
 8006b4e: f7fb fc3f    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x4782
 8006b52: 88e8         	ldrh	r0, [r5, #0x6]
 8006b54: 1c40         	adds	r0, r0, #0x1
 8006b56: b281         	uxth	r1, r0
 8006b58: 80e9         	strh	r1, [r5, #0x6]
 8006b5a: 2964         	cmp	r1, #0x64
 8006b5c: d3f0         	blo	0x8006b40 <firmware_image+0x6b40> @ imm = #-0x20
 8006b5e: 8928         	ldrh	r0, [r5, #0x8]
 8006b60: 4e8f         	ldr	r6, [pc, #0x23c]        @ 0x8006da0 <firmware_image+0x6da0>
 8006b62: f04f 0801    	mov.w	r8, #0x1
 8006b66: 2802         	cmp	r0, #0x2
 8006b68: d902         	bls	0x8006b70 <firmware_image+0x6b70> @ imm = #0x4
 8006b6a: f886 8000    	strb.w	r8, [r6]
 8006b6e: e000         	b	0x8006b72 <firmware_image+0x6b72> @ imm = #0x0
 8006b70: 7034         	strb	r4, [r6]
 8006b72: f7fe fbcb    	bl	0x800530c <firmware_image+0x530c> @ imm = #-0x186a
 8006b76: 80ec         	strh	r4, [r5, #0x6]
 8006b78: 4f8a         	ldr	r7, [pc, #0x228]        @ 0x8006da4 <firmware_image+0x6da4>
 8006b7a: f7fa ff35    	bl	0x80019e8 <firmware_image+0x19e8> @ imm = #-0x5196
 8006b7e: 4638         	mov	r0, r7
 8006b80: f7fb fc26    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x47b4
 8006b84: f7fa ff22    	bl	0x80019cc <firmware_image+0x19cc> @ imm = #-0x51bc
 8006b88: 4638         	mov	r0, r7
 8006b8a: f7fb fc21    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x47be
 8006b8e: 88e8         	ldrh	r0, [r5, #0x6]
 8006b90: 1c40         	adds	r0, r0, #0x1
 8006b92: b281         	uxth	r1, r0
 8006b94: 80e9         	strh	r1, [r5, #0x6]
 8006b96: 2903         	cmp	r1, #0x3
 8006b98: d3ef         	blo	0x8006b7a <firmware_image+0x6b7a> @ imm = #-0x22
 8006b9a: 2301         	movs	r3, #0x1
 8006b9c: 2200         	movs	r2, #0x0
 8006b9e: 2108         	movs	r1, #0x8
 8006ba0: f44f 6090    	mov.w	r0, #0x480
 8006ba4: f000 f9f4    	bl	0x8006f90 <firmware_image+0x6f90> @ imm = #0x3e8
 8006ba8: f7fb ff72    	bl	0x8002a90 <firmware_image+0x2a90> @ imm = #-0x411c
 8006bac: f242 7510    	movw	r5, #0x2710
 8006bb0: 4628         	mov	r0, r5
 8006bb2: f7fb fc0d    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x47e6
 8006bb6: f7fa fabb    	bl	0x8001130 <firmware_image+0x1130> @ imm = #-0x5a8a
 8006bba: 4628         	mov	r0, r5
 8006bbc: f7fb fc08    	bl	0x80023d0 <firmware_image+0x23d0> @ imm = #-0x47f0
 8006bc0: f7fc fc04    	bl	0x80033cc <firmware_image+0x33cc> @ imm = #-0x37f8
 8006bc4: f7fd fed0    	bl	0x8004968 <firmware_image+0x4968> @ imm = #-0x2260
 8006bc8: 22fa         	movs	r2, #0xfa
 8006bca: 2100         	movs	r1, #0x0
 8006bcc: 4876         	ldr	r0, [pc, #0x1d8]        @ 0x8006da8 <firmware_image+0x6da8>
 8006bce: f7fd fe69    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x232e
 8006bd2: 2201         	movs	r2, #0x1
 8006bd4: 2132         	movs	r1, #0x32
 8006bd6: 4875         	ldr	r0, [pc, #0x1d4]        @ 0x8006dac <firmware_image+0x6dac>
 8006bd8: f7fd fe64    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x2338
 8006bdc: 2204         	movs	r2, #0x4
 8006bde: 2100         	movs	r1, #0x0
 8006be0: 4873         	ldr	r0, [pc, #0x1cc]        @ 0x8006db0 <firmware_image+0x6db0>
 8006be2: f7fd fe5f    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x2342
 8006be6: 2204         	movs	r2, #0x4
 8006be8: 2100         	movs	r1, #0x0
 8006bea: 4872         	ldr	r0, [pc, #0x1c8]        @ 0x8006db4 <firmware_image+0x6db4>
 8006bec: f7fd fe5a    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x234c
 8006bf0: 2204         	movs	r2, #0x4
 8006bf2: 2100         	movs	r1, #0x0
 8006bf4: 4870         	ldr	r0, [pc, #0x1c0]        @ 0x8006db8 <firmware_image+0x6db8>
 8006bf6: f7fd fe55    	bl	0x80048a4 <firmware_image+0x48a4> @ imm = #-0x2356
 8006bfa: 2204         	movs	r2, #0x4
 8006bfc: 2100         	movs	r1, #0x0
 8006bfe: 486f         	ldr	r0, [pc, #0x1bc]        @ 0x8006dbc <firmware_image+0x6dbc>
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
 8006f6c: bf18         	it	ne
 8006f6e: 2001         	movne	r0, #0x1
 8006f70: 4338         	orrs	r0, r7
 8006f72: f020 4000    	bic	r0, r0, #0x80000000
 8006f76: f1c0 607f    	rsb.w	r0, r0, #0xff00000
 8006f7a: f100 40e0    	add.w	r0, r0, #0x70000000
 8006f7e: 0fc0         	lsrs	r0, r0, #0x1f
 8006f80: bf04         	itt	eq
 8006f82: 2001         	moveq	r0, #0x1
 8006f84: f7ff fa3e    	bleq	0x8006404 <firmware_image+0x6404> @ imm = #-0xb84
 8006f88: 4620         	mov	r0, r4
 8006f8a: 4629         	mov	r1, r5
 8006f8c: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
 8006f90: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8006f94: b089         	sub	sp, #0x24
 8006f96: 4683         	mov	r11, r0
 8006f98: 460e         	mov	r6, r1
 8006f9a: 4615         	mov	r5, r2
 8006f9c: 461f         	mov	r7, r3
 8006f9e: 2101         	movs	r1, #0x1
 8006fa0: 044c         	lsls	r4, r1, #0x11
 8006fa2: 4620         	mov	r0, r4
 8006fa4: f7fd f9d6    	bl	0x8004354 <firmware_image+0x4354> @ imm = #-0x2c54
 8006fa8: 2101         	movs	r1, #0x1
 8006faa: 4620         	mov	r0, r4
 8006fac: f7fd f9ea    	bl	0x8004384 <firmware_image+0x4384> @ imm = #-0x2c2c
 8006fb0: f8df 90e4    	ldr.w	r9, [pc, #0xe4]         @ 0x8007098 <firmware_image+0x7098>
 8006fb4: 4648         	mov	r0, r9
 8006fb6: f7fe fec1    	bl	0x8005d3c <firmware_image+0x5d3c> @ imm = #-0x127e
 8006fba: f04f 4a90    	mov.w	r10, #0x48000000
 8006fbe: 2201         	movs	r2, #0x1
 8006fc0: 2102         	movs	r1, #0x2
 8006fc2: 4650         	mov	r0, r10
 8006fc4: f7fb fbb6    	bl	0x8002734 <firmware_image+0x2734> @ imm = #-0x4894
 8006fc8: 2201         	movs	r2, #0x1
 8006fca: 2103         	movs	r1, #0x3
 8006fcc: 4650         	mov	r0, r10
 8006fce: f7fb fbb1    	bl	0x8002734 <firmware_image+0x2734> @ imm = #-0x489e
 8006fd2: f04f 080c    	mov.w	r8, #0xc
 8006fd6: f8cd 801c    	str.w	r8, [sp, #0x1c]
 8006fda: 2002         	movs	r0, #0x2
 8006fdc: f88d 0020    	strb.w	r0, [sp, #0x20]
 8006fe0: 2003         	movs	r0, #0x3
 8006fe2: f88d 0021    	strb.w	r0, [sp, #0x21]
 8006fe6: 2400         	movs	r4, #0x0
 8006fe8: f88d 4022    	strb.w	r4, [sp, #0x22]
 8006fec: f88d 4023    	strb.w	r4, [sp, #0x23]
 8006ff0: a907         	add	r1, sp, #0x1c
 8006ff2: 4650         	mov	r0, r10
 8006ff4: f7fb fb62    	bl	0x80026bc <firmware_image+0x26bc> @ imm = #-0x493c
 8006ff8: 2064         	movs	r0, #0x64
 8006ffa: fb0b fb00    	mul	r11, r11, r0
 8006ffe: f8cd b004    	str.w	r11, [sp, #0x4]
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
 80071ec: c100         	<unknown>
 80071ee: 4081         	lsls	r1, r0
 80071f0: c001         	stm	r0!, {r0}
 80071f2: 4180         	sbcs	r0, r0
 80071f4: c100         	<unknown>
 80071f6: 4081         	lsls	r1, r0
 80071f8: c100         	<unknown>
 80071fa: 4081         	lsls	r1, r0
 80071fc: c001         	stm	r0!, {r0}
 80071fe: 4180         	sbcs	r0, r0
 8007200: c001         	stm	r0!, {r0}
 8007202: 4180         	sbcs	r0, r0
 8007204: c100         	<unknown>
 8007206: 4081         	lsls	r1, r0
 8007208: c100         	<unknown>
 800720a: 4081         	lsls	r1, r0
 800720c: c001         	stm	r0!, {r0}
 800720e: 4180         	sbcs	r0, r0
 8007210: c100         	<unknown>
 8007212: 4081         	lsls	r1, r0
 8007214: c001         	stm	r0!, {r0}
 8007216: 4180         	sbcs	r0, r0
 8007218: c001         	stm	r0!, {r0}
 800721a: 4180         	sbcs	r0, r0
 800721c: c100         	<unknown>
 800721e: 4081         	lsls	r1, r0
 8007220: c000         	<unknown>
 8007222: 01c1         	lsls	r1, r0, #0x7
 8007224: 03c3         	lsls	r3, r0, #0xf
 8007226: c202         	stm	r2!, {r1}
 8007228: 06c6         	lsls	r6, r0, #0x1b
 800722a: c707         	stm	r7!, {r0, r1, r2}
 800722c: c505         	stm	r5!, {r0, r2}
 800722e: 04c4         	lsls	r4, r0, #0x13
 8007230: 0ccc         	lsrs	r4, r1, #0x13
 8007232: cd0d         	ldm	r5!, {r0, r2, r3}
 8007234: cf0f         	ldm	r7!, {r0, r1, r2, r3}
 8007236: 0ece         	lsrs	r6, r1, #0x1b
 8007238: ca0a         	ldm	r2!, {r1, r3}
 800723a: 0bcb         	lsrs	r3, r1, #0xf
 800723c: 09c9         	lsrs	r1, r1, #0x7
 800723e: c808         	ldm	r0!, {r3}
 8007240: 18d8         	adds	r0, r3, r3
 8007242: d919         	bls	0x8007278 <firmware_image+0x7278> @ imm = #0x32
 8007244: db1b         	blt	0x800727e <firmware_image+0x727e> @ imm = #0x36
 8007246: 1ada         	subs	r2, r3, r3
 8007248: de1e         	udf	#0x1e
 800724a: 1fdf         	subs	r7, r3, #0x7
 800724c: 1ddd         	adds	r5, r3, #0x7
 800724e: dc1c         	bgt	0x800728a <firmware_image+0x728a> @ imm = #0x38
 8007250: d414         	bmi	0x800727c <firmware_image+0x727c> @ imm = #0x28
 8007252: 15d5         	asrs	r5, r2, #0x17
 8007254: 17d7         	asrs	r7, r2, #0x1f
 8007256: d616         	bvs	0x8007286 <firmware_image+0x7286> @ imm = #0x2c
 8007258: 12d2         	asrs	r2, r2, #0xb
 800725a: d313         	blo	0x8007284 <firmware_image+0x7284> @ imm = #0x26
 800725c: d111         	bne	0x8007282 <firmware_image+0x7282> @ imm = #0x22
 800725e: 10d0         	asrs	r0, r2, #0x3
 8007260: 30f0         	adds	r0, #0xf0
 8007262: f131 f333    	bl	0x85388cc <firmware_image+0x5388cc> @ imm = #0x531666
 8007266: 32f2         	adds	r2, #0xf2
 8007268: f636 37f7    	<unknown>
 800726c: 35f5         	adds	r5, #0xf5
 800726e: f434 fc3c    	bl	0x7c3baea               @ imm = #-0x3cb788
 8007272: 3dfd         	subs	r5, #0xfd
 8007274: 3fff         	subs	r7, #0xff
 8007276: fe3e 3afa    	<unknown>
 800727a: fb3b f939    	<unknown>
 800727e: 38f8         	subs	r0, #0xf8
 8007280: e828 29e9    	<unknown>
 8007284: 2beb         	cmp	r3, #0xeb
 8007286: ea2a 2eee    	bic.w	lr, r10, lr, asr #11
 800728a: ef2f ed2d    	<unknown>
 800728e: 2cec         	cmp	r4, #0xec
 8007290: 24e4         	movs	r4, #0xe4
 8007292: e525         	b	0x8006ce0 <firmware_image+0x6ce0> @ imm = #-0x5b6
 8007294: e727         	b	0x80070e6 <firmware_image+0x70e6> @ imm = #-0x1b2
 8007296: 26e6         	movs	r6, #0xe6
 8007298: e222         	b	0x80076e0 <firmware_image+0x76e0> @ imm = #0x444
 800729a: 23e3         	movs	r3, #0xe3
 800729c: 21e1         	movs	r1, #0xe1
 800729e: e020         	b	0x80072e2 <firmware_image+0x72e2> @ imm = #0x40
 80072a0: 60a0         	str	r0, [r4, #0x8]
 80072a2: a161         	adr	r1, #388 <firmware_image+0x7307>
 80072a4: a363         	adr	r3, #396 <firmware_image+0x730b>
 80072a6: 62a2         	str	r2, [r4, #0x28]
 80072a8: a666         	adr	r6, #408 <firmware_image+0x7312>
 80072aa: 67a7         	str	r7, [r4, #0x78]
 80072ac: 65a5         	str	r5, [r4, #0x58]
 80072ae: a464         	adr	r4, #400 <firmware_image+0x7316>
 80072b0: ac6c         	add	r4, sp, #0x1b0
 80072b2: 6dad         	ldr	r5, [r5, #0x58]
 80072b4: 6faf         	ldr	r7, [r5, #0x78]
 80072b6: ae6e         	add	r6, sp, #0x1b8
 80072b8: 6aaa         	ldr	r2, [r5, #0x28]
 80072ba: ab6b         	add	r3, sp, #0x1ac
 80072bc: a969         	add	r1, sp, #0x1a4
 80072be: 68a8         	ldr	r0, [r5, #0x8]
 80072c0: b878         	<unknown>
 80072c2: 79b9         	ldrb	r1, [r7, #0x6]
 80072c4: 7bbb         	ldrb	r3, [r7, #0xe]
 80072c6: ba7a         	rev16	r2, r7
 80072c8: 7ebe         	ldrb	r6, [r7, #0x1a]
 80072ca: bf7f         	itttt	vc
 80072cc: bd7d         	popvc	{r0, r2, r3, r4, r5, r6, pc}
 80072ce: 7cbc         	ldrbvc	r4, [r7, #0x12]
 80072d0: 74b4         	strbvc	r4, [r6, #0x12]
 80072d2: b575         	pushvc	{r0, r2, r4, r5, r6, lr}
 80072d4: b777         	<unknown>
 80072d6: 76b6         	strb	r6, [r6, #0x1a]
 80072d8: b272         	sxtb	r2, r6
 80072da: 73b3         	strb	r3, [r6, #0xe]
 80072dc: 71b1         	strb	r1, [r6, #0x6]
 80072de: b070         	add	sp, #0x1c0
 80072e0: 9050         	str	r0, [sp, #0x140]
 80072e2: 5191         	str	r1, [r2, r6]
 80072e4: 5393         	strh	r3, [r2, r6]
 80072e6: 9252         	str	r2, [sp, #0x148]
 80072e8: 5696         	ldrsb	r6, [r2, r2]
 80072ea: 9757         	str	r7, [sp, #0x15c]
 80072ec: 9555         	str	r5, [sp, #0x154]
 80072ee: 5494         	strb	r4, [r2, r2]
 80072f0: 5c9c         	ldrb	r4, [r3, r2]
 80072f2: 9d5d         	ldr	r5, [sp, #0x174]
 80072f4: 9f5f         	ldr	r7, [sp, #0x17c]
 80072f6: 5e9e         	ldrsh	r6, [r3, r2]
 80072f8: 9a5a         	ldr	r2, [sp, #0x168]
 80072fa: 5b9b         	ldrh	r3, [r3, r6]
 80072fc: 5999         	ldr	r1, [r3, r6]
 80072fe: 9858         	ldr	r0, [sp, #0x160]
 8007300: 4888         	ldr	r0, [pc, #0x220]        @ 0x8007524 <firmware_image+0x7524>
 8007302: 8949         	ldrh	r1, [r1, #0xa]
 8007304: 8b4b         	ldrh	r3, [r1, #0x1a]
 8007306: 4a8a         	ldr	r2, [pc, #0x228]        @ 0x8007530 <firmware_image+0x7530>
 8007308: 8e4e         	ldrh	r6, [r1, #0x32]
 800730a: 4f8f         	ldr	r7, [pc, #0x23c]        @ 0x8007548 <firmware_image+0x7548>
 800730c: 4d8d         	ldr	r5, [pc, #0x234]        @ 0x8007544 <firmware_image+0x7544>
 800730e: 8c4c         	ldrh	r4, [r1, #0x22]
 8007310: 8444         	strh	r4, [r0, #0x22]
 8007312: 4585         	cmp	sp, r0
 8007314: 4787         	<unknown>
 8007316: 8646         	strh	r6, [r0, #0x32]
 8007318: 4282         	cmp	r2, r0
 800731a: 8343         	strh	r3, [r0, #0x1a]
 800731c: 8141         	strh	r1, [r0, #0xa]
 800731e: 4080         	lsls	r0, r0
 8007320: 7eee         	ldrb	r6, [r5, #0x1b]
 8007322: 7e68         	ldrb	r0, [r5, #0x19]
 8007324: 7d60         	ldrb	r0, [r4, #0x15]
 8007326: 7c5f         	ldrb	r7, [r3, #0x11]
 8007328: 7b63         	ldrb	r3, [r4, #0xd]
 800732a: 7a6e         	ldrb	r6, [r5, #0x9]
 800732c: 797e         	ldrb	r6, [r7, #0x5]
 800732e: 7894         	ldrb	r4, [r2, #0x2]
 8007330: 77af         	strb	r7, [r5, #0x1e]
 8007332: 76cf         	strb	r7, [r1, #0x1b]
 8007334: 75f4         	strb	r4, [r6, #0x17]
 8007336: 751d         	strb	r5, [r3, #0x14]
 8007338: 744b         	strb	r3, [r1, #0x11]
 800733a: 737d         	strb	r5, [r7, #0xd]
 800733c: 7318         	strb	r0, [r3, #0xc]
 800733e: 7251         	strb	r1, [r2, #0x9]
 8007340: 718d         	strb	r5, [r1, #0x6]
 8007342: 70ce         	strb	r6, [r1, #0x3]
 8007344: 7012         	strb	r2, [r2]
 8007346: 6f5a         	ldr	r2, [r3, #0x74]
 8007348: 6ea5         	ldr	r5, [r4, #0x68]
 800734a: 6df4         	ldr	r4, [r6, #0x5c]
 800734c: 6d46         	ldr	r6, [r0, #0x54]
 800734e: 6c9b         	ldr	r3, [r3, #0x48]
 8007350: 6bf3         	ldr	r3, [r6, #0x3c]
 8007352: 6b4e         	ldr	r6, [r1, #0x34]
 8007354: 6aad         	ldr	r5, [r5, #0x28]
 8007356: 6a5d         	ldr	r5, [r3, #0x24]
 8007358: 69bf         	ldr	r7, [r7, #0x18]
 800735a: 6924         	ldr	r4, [r4, #0x10]
 800735c: 688c         	ldr	r4, [r1, #0x8]
 800735e: 67f6         	str	r6, [r6, #0x7c]
 8007360: 6763         	str	r3, [r4, #0x74]
 8007362: 66d2         	str	r2, [r2, #0x6c]
 8007364: 6644         	str	r4, [r0, #0x64]
 8007366: 65b7         	str	r7, [r6, #0x58]
 8007368: 652d         	str	r5, [r5, #0x50]
 800736a: 64a6         	str	r6, [r4, #0x48]
 800736c: 6420         	str	r0, [r4, #0x40]
 800736e: 639c         	str	r4, [r3, #0x38]
 8007370: 635b         	str	r3, [r3, #0x34]
 8007372: 62db         	str	r3, [r3, #0x2c]
 8007374: 625c         	str	r4, [r3, #0x24]
 8007376: 61df         	str	r7, [r3, #0x1c]
 8007378: 6164         	str	r4, [r4, #0x14]
 800737a: 60eb         	str	r3, [r5, #0xc]
 800737c: 6074         	str	r4, [r6, #0x4]
 800737e: 5ffe         	ldrsh	r6, [r7, r7]
 8007380: 5f8a         	ldrsh	r2, [r1, r6]
 8007382: 5f17         	ldrsh	r7, [r2, r4]
 8007384: 5ea6         	ldrsh	r6, [r4, r2]
 8007386: 5e37         	ldrsh	r7, [r6, r0]
 8007388: 5dc9         	ldrb	r1, [r1, r7]
 800738a: 5d5d         	ldrb	r5, [r3, r5]
 800738c: 5d28         	ldrb	r0, [r5, r4]
 800738e: 5cbd         	ldrb	r5, [r7, r2]
 8007390: 5c55         	ldrb	r5, [r2, r1]
 8007392: 5bed         	ldrh	r5, [r5, r7]
 8007394: 5b87         	ldrh	r7, [r0, r6]
 8007396: 5b23         	ldrh	r3, [r4, r4]
 8007398: 5abf         	ldrh	r7, [r7, r2]
 800739a: 5a5d         	ldrh	r5, [r3, r1]
 800739c: 59fc         	ldr	r4, [r7, r7]
 800739e: 599d         	ldr	r5, [r3, r6]
 80073a0: 593e         	ldr	r6, [r7, r4]
 80073a2: 58e1         	ldr	r1, [r4, r3]
 80073a4: 5885         	ldr	r5, [r0, r2]
 80073a6: 0000         	movs	r0, r0
 80073a8: 00c9         	lsls	r1, r1, #0x3
 80073aa: 0192         	lsls	r2, r2, #0x6
 80073ac: 025b         	lsls	r3, r3, #0x9
 80073ae: 0324         	lsls	r4, r4, #0xc
 80073b0: 03ed         	lsls	r5, r5, #0xf
 80073b2: 04b6         	lsls	r6, r6, #0x12
 80073b4: 057f         	lsls	r7, r7, #0x15
 80073b6: 0648         	lsls	r0, r1, #0x19
 80073b8: 0711         	lsls	r1, r2, #0x1c
 80073ba: 07d9         	lsls	r1, r3, #0x1f
 80073bc: 08a2         	lsrs	r2, r4, #0x2
 80073be: 096a         	lsrs	r2, r5, #0x5
 80073c0: 0a33         	lsrs	r3, r6, #0x8
 80073c2: 0afb         	lsrs	r3, r7, #0xb
 80073c4: 0bc4         	lsrs	r4, r0, #0xf
 80073c6: 0c8c         	lsrs	r4, r1, #0x12
 80073c8: 0d54         	lsrs	r4, r2, #0x15
 80073ca: 0e1c         	lsrs	r4, r3, #0x18
 80073cc: 0ee3         	lsrs	r3, r4, #0x1b
 80073ce: 0fab         	lsrs	r3, r5, #0x1e
 80073d0: 1072         	asrs	r2, r6, #0x1
 80073d2: 113a         	asrs	r2, r7, #0x4
 80073d4: 1201         	asrs	r1, r0, #0x8
 80073d6: 12c8         	asrs	r0, r1, #0xb
 80073d8: 138f         	asrs	r7, r1, #0xe
 80073da: 1455         	asrs	r5, r2, #0x11
 80073dc: 151c         	asrs	r4, r3, #0x14
 80073de: 15e2         	asrs	r2, r4, #0x17
 80073e0: 16a8         	asrs	r0, r5, #0x1a
 80073e2: 176e         	asrs	r6, r5, #0x1d
 80073e4: 1833         	adds	r3, r6, r0
 80073e6: 18f9         	adds	r1, r7, r3
 80073e8: 19be         	adds	r6, r7, r6
 80073ea: 1a82         	subs	r2, r0, r2
 80073ec: 1b47         	subs	r7, r0, r5
 80073ee: 1c0b         	adds	r3, r1, #0x0
 80073f0: 1ccf         	adds	r7, r1, #0x3
 80073f2: 1d93         	adds	r3, r2, #0x6
 80073f4: 1e57         	subs	r7, r2, #0x1
 80073f6: 1f1a         	subs	r2, r3, #0x4
 80073f8: 1fdd         	subs	r5, r3, #0x7
 80073fa: 209f         	movs	r0, #0x9f
 80073fc: 2161         	movs	r1, #0x61
 80073fe: 2223         	movs	r2, #0x23
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
 800749c: 57b0         	ldrsb	r0, [r6, r6]
 800749e: 5842         	ldr	r2, [r0, r1]
 80074a0: 58d3         	ldr	r3, [r2, r3]
 80074a2: 5964         	ldr	r4, [r4, r5]
 80074a4: 59f3         	ldr	r3, [r6, r7]
 80074a6: 5a82         	ldrh	r2, [r0, r2]
 80074a8: 5b0f         	ldrh	r7, [r1, r4]
 80074aa: 5b9c         	ldrh	r4, [r3, r6]
 80074ac: 5c28         	ldrb	r0, [r5, r0]
 80074ae: 5cb3         	ldrb	r3, [r6, r2]
 80074b0: 5d3e         	ldrb	r6, [r7, r4]
 80074b2: 5dc7         	ldrb	r7, [r0, r7]
 80074b4: 5e4f         	ldrsh	r7, [r1, r1]
 80074b6: 5ed7         	ldrsh	r7, [r2, r3]
 80074b8: 5f5d         	ldrsh	r5, [r3, r5]
 80074ba: 5fe3         	ldrsh	r3, [r4, r7]
 80074bc: 6068         	str	r0, [r5, #0x4]
 80074be: 60eb         	str	r3, [r5, #0xc]
 80074c0: 616e         	str	r6, [r5, #0x14]
 80074c2: 61f0         	str	r0, [r6, #0x1c]
 80074c4: 6271         	str	r1, [r6, #0x24]
 80074c6: 62f1         	str	r1, [r6, #0x2c]
 80074c8: 6370         	str	r0, [r6, #0x34]
 80074ca: 63ee         	str	r6, [r5, #0x3c]
 80074cc: 646c         	str	r4, [r5, #0x44]
 80074ce: 64e8         	str	r0, [r5, #0x4c]
 80074d0: 6563         	str	r3, [r4, #0x54]
 80074d2: 65dd         	str	r5, [r3, #0x5c]
 80074d4: 6656         	str	r6, [r2, #0x64]
 80074d6: 66cf         	str	r7, [r1, #0x6c]
 80074d8: 6746         	str	r6, [r0, #0x74]
 80074da: 67bc         	str	r4, [r7, #0x78]
 80074dc: 6832         	ldr	r2, [r6]
 80074de: 68a6         	ldr	r6, [r4, #0x8]
 80074e0: 6919         	ldr	r1, [r3, #0x10]
 80074e2: 698b         	ldr	r3, [r1, #0x18]
 80074e4: 69fd         	ldr	r5, [r7, #0x1c]
 80074e6: 6a6d         	ldr	r5, [r5, #0x24]
 80074e8: 6adc         	ldr	r4, [r3, #0x2c]
 80074ea: 6b4a         	ldr	r2, [r1, #0x34]
 80074ec: 6bb7         	ldr	r7, [r6, #0x38]
 80074ee: 6c23         	ldr	r3, [r4, #0x40]
 80074f0: 6c8e         	ldr	r6, [r1, #0x48]
 80074f2: 6cf8         	ldr	r0, [r7, #0x4c]
 80074f4: 6d61         	ldr	r1, [r4, #0x54]
 80074f6: 6dc9         	ldr	r1, [r1, #0x5c]
 80074f8: 6e30         	ldr	r0, [r6, #0x60]
 80074fa: 6e96         	ldr	r6, [r2, #0x68]
 80074fc: 6efb         	ldr	r3, [r7, #0x6c]
 80074fe: 6f5e         	ldr	r6, [r3, #0x74]
 8007500: 6fc1         	ldr	r1, [r0, #0x7c]
 8007502: 7022         	strb	r2, [r4]
 8007504: 7083         	strb	r3, [r0, #0x2]
 8007506: 70e2         	strb	r2, [r4, #0x3]
 8007508: 7140         	strb	r0, [r0, #0x5]
 800750a: 719d         	strb	r5, [r3, #0x6]
 800750c: 71f9         	strb	r1, [r7, #0x7]
 800750e: 7254         	strb	r4, [r2, #0x9]
 8007510: 72ae         	strb	r6, [r5, #0xa]
 8007512: 7307         	strb	r7, [r0, #0xc]
 8007514: 735e         	strb	r6, [r3, #0xd]
 8007516: 73b5         	strb	r5, [r6, #0xe]
 8007518: 740a         	strb	r2, [r1, #0x10]
 800751a: 745f         	strb	r7, [r3, #0x11]
 800751c: 74b2         	strb	r2, [r6, #0x12]
 800751e: 7504         	strb	r4, [r0, #0x14]
 8007520: 7555         	strb	r5, [r2, #0x15]
 8007522: 75a5         	strb	r5, [r4, #0x16]
 8007524: 75f3         	strb	r3, [r6, #0x17]
 8007526: 7641         	strb	r1, [r0, #0x19]
 8007528: 768d         	strb	r5, [r1, #0x1a]
 800752a: 76d8         	strb	r0, [r3, #0x1b]
 800752c: 7722         	strb	r2, [r4, #0x1c]
 800752e: 776b         	strb	r3, [r5, #0x1d]
 8007530: 77b3         	strb	r3, [r6, #0x1e]
 8007532: 77fa         	strb	r2, [r7, #0x1f]
 8007534: 783f         	ldrb	r7, [r7]
 8007536: 7884         	ldrb	r4, [r0, #0x2]
 8007538: 78c7         	ldrb	r7, [r0, #0x3]
 800753a: 7909         	ldrb	r1, [r1, #0x4]
 800753c: 794a         	ldrb	r2, [r1, #0x5]
 800753e: 7989         	ldrb	r1, [r1, #0x6]
 8007540: 79c8         	ldrb	r0, [r1, #0x7]
 8007542: 7a05         	ldrb	r5, [r0, #0x8]
 8007544: 7a41         	ldrb	r1, [r0, #0x9]
 8007546: 7a7c         	ldrb	r4, [r7, #0x9]
 8007548: 7ab6         	ldrb	r6, [r6, #0xa]
 800754a: 7aee         	ldrb	r6, [r5, #0xb]
 800754c: 7b26         	ldrb	r6, [r4, #0xc]
 800754e: 7b5c         	ldrb	r4, [r3, #0xd]
 8007550: 7b91         	ldrb	r1, [r2, #0xe]
 8007552: 7bc5         	ldrb	r5, [r0, #0xf]
 8007554: 7bf8         	ldrb	r0, [r7, #0xf]
 8007556: 7c29         	ldrb	r1, [r5, #0x10]
 8007558: 7c59         	ldrb	r1, [r3, #0x11]
 800755a: 7c88         	ldrb	r0, [r1, #0x12]
 800755c: 7cb6         	ldrb	r6, [r6, #0x12]
 800755e: 7ce3         	ldrb	r3, [r4, #0x13]
 8007560: 7d0e         	ldrb	r6, [r1, #0x14]
 8007562: 7d39         	ldrb	r1, [r7, #0x14]
 8007564: 7d62         	ldrb	r2, [r4, #0x15]
 8007566: 7d89         	ldrb	r1, [r1, #0x16]
 8007568: 7db0         	ldrb	r0, [r6, #0x16]
 800756a: 7dd5         	ldrb	r5, [r2, #0x17]
 800756c: 7dfa         	ldrb	r2, [r7, #0x17]
 800756e: 7e1d         	ldrb	r5, [r3, #0x18]
 8007570: 7e3e         	ldrb	r6, [r7, #0x18]
 8007572: 7e5f         	ldrb	r7, [r3, #0x19]
 8007574: 7e7e         	ldrb	r6, [r7, #0x19]
 8007576: 7e9c         	ldrb	r4, [r3, #0x1a]
 8007578: 7eb9         	ldrb	r1, [r7, #0x1a]
 800757a: 7ed5         	ldrb	r5, [r2, #0x1b]
 800757c: 7eef         	ldrb	r7, [r5, #0x1b]
 800757e: 7f09         	ldrb	r1, [r1, #0x1c]
 8007580: 7f21         	ldrb	r1, [r4, #0x1c]
 8007582: 7f37         	ldrb	r7, [r6, #0x1c]
 8007584: 7f4d         	ldrb	r5, [r1, #0x1d]
 8007586: 7f61         	ldrb	r1, [r4, #0x1d]
 8007588: 7f74         	ldrb	r4, [r6, #0x1d]
 800758a: 7f86         	ldrb	r6, [r0, #0x1e]
 800758c: 7f97         	ldrb	r7, [r2, #0x1e]
 800758e: 7fa6         	ldrb	r6, [r4, #0x1e]
 8007590: 7fb4         	ldrb	r4, [r6, #0x1e]
 8007592: 7fc1         	ldrb	r1, [r0, #0x1f]
 8007594: 7fcd         	ldrb	r5, [r1, #0x1f]
 8007596: 7fd8         	ldrb	r0, [r3, #0x1f]
 8007598: 7fe1         	ldrb	r1, [r4, #0x1f]
 800759a: 7fe9         	ldrb	r1, [r5, #0x1f]
 800759c: 7ff0         	ldrb	r0, [r6, #0x1f]
 800759e: 7ff5         	ldrb	r5, [r6, #0x1f]
 80075a0: 7ff9         	ldrb	r1, [r7, #0x1f]
 80075a2: 7ffd         	ldrb	r5, [r7, #0x1f]
 80075a4: 7ffe         	ldrb	r6, [r7, #0x1f]
 80075a6: 0000         	movs	r0, r0
 80075a8: 5555         	strb	r5, [r2, r5]
 80075aa: 5555         	strb	r5, [r2, r5]
 80075ac: 5555         	strb	r5, [r2, r5]
 80075ae: 3fc5         	subs	r7, #0xc5
 80075b0: 6f7d         	ldr	r5, [r7, #0x74]
 80075b2: 03eb         	lsls	r3, r5, #0xf
 80075b4: d612         	bvs	0x80075dc <firmware_image+0x75dc> @ imm = #0x24
 80075b6: bfd4         	ite	le
 80075b8: 4455         	addle	r5, r10
 80075ba: 0e88         	lsrgt	r0, r1, #0x1a
 80075bc: c155         	stm	r1!, {r0, r2, r4, r6}
 80075be: 3fc9         	subs	r7, #0xc9
 80075c0: 8f3b         	ldrh	r3, [r7, #0x38]
 80075c2: b568         	push	{r3, r5, r6, lr}
 80075c4: 8228         	strh	r0, [r5, #0x10]
 80075c6: bfa4         	itt	ge
 80075c8: b288         	uxthge	r0, r1
 80075ca: 7501         	strbge	r1, [r0, #0x14]
 80075cc: efe0 3f49    	<unknown>
 80075d0: f709 0dfd    	<unknown>
 80075d4: 3de1         	subs	r5, #0xe1
 80075d6: 3f02         	subs	r7, #0x2
 80075d8: 2d4b         	cmp	r5, #0x4b
 80075da: 1c8a         	adds	r2, r1, #0x2
 80075dc: 3a27         	subs	r2, #0x27
 80075de: c003         	stm	r0!, {r0, r1}
 80075e0: 8ac8         	ldrh	r0, [r1, #0x16]
 80075e2: 9c59         	ldr	r4, [sp, #0x164]
 80075e4: 2ae5         	cmp	r2, #0xe5
 80075e6: 4000         	ands	r0, r0
 80075e8: 0159         	lsls	r1, r3, #0x5
 80075ea: 1b8d         	subs	r5, r1, r6
 80075ec: 066c         	lsls	r4, r5, #0x19
 80075ee: bfe6         	itte	al                      @ unpredictable IT predicate sequence
 80075f0: 9282         	str	r2, [sp, #0x208]
 80075f2: b12e         	cbz	r6, 0x8007600 <firmware_image+0x7600> @ imm = #0xa
 80075f4: b8c5         	<unknown>
 80075f6: 3fb3         	sub<und>	r7, #0xb3
 80075f8: bb4f         	cbnz	r7, 0x800764e <firmware_image+0x764e> @ imm = #0x52
 80075fa: 0561         	lsls	r1, r4, #0x15
 80075fc: ac67         	add	r4, sp, #0x19c
 80075fe: 3fdd         	subs	r7, #0xdd
 8007600: 2d18         	cmp	r5, #0x18
 8007602: 5444         	strb	r4, [r0, r1]
 8007604: 21fb         	movs	r1, #0xfb
 8007606: 3fe9         	subs	r7, #0xe9
 8007608: f69b d281    	bl	0x72a2b0e               @ imm = #-0xd64afe
 800760c: 730b         	strb	r3, [r1, #0xc]
 800760e: 3fef         	subs	r7, #0xef
 8007610: 2d18         	cmp	r5, #0x18
 8007612: 5444         	strb	r4, [r0, r1]
 8007614: 21fb         	movs	r1, #0xfb
 8007616: 3ff9         	subs	r7, #0xf9
 8007618: 65e2         	str	r2, [r4, #0x5c]
 800761a: 222f         	movs	r2, #0x2f
 800761c: 2b7f         	cmp	r3, #0x7f
 800761e: 3c7a         	subs	r4, #0x7a
 8007620: 5c07         	ldrb	r7, [r0, r0]
 8007622: 3314         	adds	r3, #0x14
 8007624: a626         	adr	r6, #152 <firmware_image+0x764e>
 8007626: 3c81         	subs	r4, #0x81
 8007628: cbbd         	ldm	r3, {r0, r2, r3, r4, r5, r7}
 800762a: 7af0         	ldrb	r0, [r6, #0xb]
 800762c: 0788         	lsls	r0, r1, #0x1e
 800762e: 3c70         	subs	r4, #0x70
 8007630: 5c07         	ldrb	r7, [r0, r0]
 8007632: 3314         	adds	r3, #0x14
 8007634: a626         	adr	r6, #152 <firmware_image+0x765e>
 8007636: 3c91         	subs	r4, #0x91
 8007638: ebc4 9998    	rsb	r9, r4, r8, lsr #6
 800763c: 9999         	ldr	r1, [sp, #0x264]
 800763e: bfc9         	itett	gt
 8007640: 1671         	asrgt	r1, r6, #0x19
 8007642: fe23 71c6    	cdp2le	p1, #0x2, c7, c3, c6, #0x6
 8007646: bfbc         	itt	lt
 8007648: 9a6d         	ldrlt	r2, [sp, #0x1b4]
 800764a: af74         	addlt	r7, sp, #0x1d0
 800764c: b0f2         	subgt	sp, #0x1c8
 800764e: bfb3         	iteet	lt
 8007650: fd9a 52de    	ldc2lt	p2, c5, [r10, #888]
 8007654: de2d         	udf	#0x2d
 8007656: bfad         	iteet	ge
 8007658: 6c2f         	ldrge	r7, [r5, #0x40]
 800765a: 2c6a         	cmplt	r4, #0x6a
 800765c: b444         	pushlt	{r2, r6}
 800765e: bfa2         	ittt	ge
 8007660: 550d         	strbge	r5, [r1, r4]
 8007662: 5555         	strbge	r5, [r2, r5]
 8007664: 5555         	strbge	r5, [r2, r5]
 8007666: 3fd5         	sublt	r7, #0xd5
 8007668: 83ff         	strh	r7, [r7, #0x1e]
 800766a: 9200         	str	r2, [sp]
 800766c: 4924         	ldr	r1, [pc, #0x90]         @ 0x8007700 <firmware_image+0x7700>
 800766e: 3fc2         	subs	r7, #0xc2
 8007670: 206e         	movs	r0, #0x6e
 8007672: c54c         	stm	r5!, {r2, r3, r6}
 8007674: 45cd         	cmp	sp, r9
 8007676: 3fb7         	subs	r7, #0xb7
 8007678: 3d51         	subs	r5, #0x51
 800767a: a0d0         	adr	r0, #832 <firmware_image+0x774e>
 800767c: 0d66         	lsrs	r6, r4, #0x15
 800767e: 3fb1         	subs	r7, #0xb1
 8007680: 0deb         	lsrs	r3, r5, #0x17
 8007682: 2476         	movs	r4, #0x76
 8007684: 7b4b         	ldrb	r3, [r1, #0xd]
 8007686: 3fa9         	subs	r7, #0xa9
 8007688: da11         	bge	0x80076ae <firmware_image+0x76ae> @ imm = #0x22
 800768a: e322         	b	0x8007cd2 <firmware_image+0x7cd2> @ imm = #0x644
 800768c: ad3a         	add	r5, sp, #0xe8
 800768e: 3f90         	subs	r7, #0x90
		...
 8007698: 76b8         	strb	r0, [r7, #0x1a]
 800769a: 0800         	lsrs	r0, r0, #0x20
 800769c: 0000         	movs	r0, r0
 800769e: 2000         	movs	r0, #0x0
 80076a0: 02d8         	lsls	r0, r3, #0xb
 80076a2: 0000         	movs	r0, r0
 80076a4: 0a00         	lsrs	r0, r0, #0x8
 80076a6: 0800         	lsrs	r0, r0, #0x20
 80076a8: 7708         	strb	r0, [r1, #0x1c]
 80076aa: 0800         	lsrs	r0, r0, #0x20
 80076ac: 02d8         	lsls	r0, r3, #0xb
 80076ae: 2000         	movs	r0, #0x0
 80076b0: 07b8         	lsls	r0, r7, #0x1e
 80076b2: 0000         	movs	r0, r0
 80076b4: 63f4         	str	r4, [r6, #0x3c]
 80076b6: 0800         	lsrs	r0, r0, #0x20
 80076b8: 84d1         	strh	r1, [r2, #0x26]
 80076ba: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x8007944 <firmware_image+0x7944>
 80076bc: 6804         	ldr	r4, [r0]
 80076be: 0109         	lsls	r1, r1, #0x4
 80076c0: 0302         	lsls	r2, r0, #0xc
 80076c2: 0604         	lsls	r4, r0, #0x18
 80076c4: 0807         	lsrs	r7, r0, #0x20
 80076c6: 0c09         	lsrs	r1, r1, #0x10
 80076c8: 1309         	asrs	r1, r1, #0xc
 80076ca: 9118         	str	r1, [sp, #0x60]
 80076cc: 1a03         	subs	r3, r0, r0
 80076ce: 3f80         	subs	r7, #0x80
 80076d0: 1a09         	subs	r1, r1, r0
 80076d2: 411c         	asrs	r4, r3
 80076d4: 3c4d         	subs	r4, #0x4d
 80076d6: 3c0f         	subs	r4, #0xf
 80076d8: 4e0f         	ldr	r6, [pc, #0x3c]         @ 0x8007718 <firmware_image+0x7718>
 80076da: 0112         	lsls	r2, r2, #0x4
 80076dc: 1c03         	adds	r3, r0, #0x0
 80076de: 0320         	lsls	r0, r4, #0xc
 80076e0: cd1e         	ldm	r5!, {r1, r2, r3, r4}
 80076e2: cccc         	ldm	r4!, {r2, r3, r6, r7}
 80076e4: a03e         	adr	r0, #248 <firmware_image+0x7726>
 80076e6: 232c         	movs	r3, #0x2c
 80076e8: 06a4         	lsls	r4, r4, #0x1a
 80076ea: 2832         	cmp	r0, #0x32
 80076ec: 3232         	adds	r2, #0x32
 80076ee: 14c2         	asrs	r2, r0, #0x13
 80076f0: 5c04         	ldrb	r4, [r0, r0]
 80076f2: 73c0         	strb	r0, [r0, #0xf]
 80076f4: 2945         	cmp	r1, #0x45
 80076f6: 01a2         	lsls	r2, r4, #0x6
 80076f8: 02f4         	lsls	r4, r6, #0xb
 80076fa: 7b17         	ldrb	r7, [r2, #0xc]
 80076fc: 2b02         	cmp	r3, #0x2
 80076fe: b220         	sxth	r0, r4
 8007700: 0201         	lsls	r1, r0, #0x8
 8007702: 9659         	str	r6, [sp, #0x164]
 8007704: 8083         	strh	r3, [r0, #0x4]
 8007706: 003f         	movs	r7, r7
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
 8007bfc: ffff ffff    	<unknown>
 8007c00: 0066         	lsls	r6, r4, #0x1
 8007c02: ffc4 1fc3    	<unknown>
 8007c06: 000b         	movs	r3, r1
 8007c08: 0002         	movs	r2, r0
 8007c0a: ffd6 ffb9    	<unknown>
 8007c0e: ffda 0400    	<unknown>
 8007c12: 4800         	ldr	r0, [pc, #0x0]          @ 0x8007c14 <firmware_image+0x7c14>
 8007c14: ffff ffff    	<unknown>
 8007c18: ffff ffff    	<unknown>
 8007c1c: ffff ffff    	<unknown>
 8007c20: ffff ffff    	<unknown>
 8007c24: ffff ffff    	<unknown>
 8007c28: ffff ffff    	<unknown>
 8007c2c: ffff ffff    	<unknown>
 8007c30: ffff ffff    	<unknown>
 8007c34: ffff ffff    	<unknown>
 8007c38: ffff ffff    	<unknown>
 8007c3c: ffff ffff    	<unknown>
 8007c40: ffff ffff    	<unknown>
 8007c44: ffff ffff    	<unknown>
 8007c48: ffff ffff    	<unknown>
 8007c4c: ffff ffff    	<unknown>
 8007c50: ffff ffff    	<unknown>
 8007c54: ffff ffff    	<unknown>
 8007c58: ffff ffff    	<unknown>
 8007c5c: ffff ffff    	<unknown>
 8007c60: ffff ffff    	<unknown>
 8007c64: ffff ffff    	<unknown>
 8007c68: ffff ffff    	<unknown>
 8007c6c: ffff ffff    	<unknown>
 8007c70: ffff ffff    	<unknown>
 8007c74: ffff ffff    	<unknown>
 8007c78: ffff ffff    	<unknown>
 8007c7c: ffff ffff    	<unknown>
 8007c80: ffff ffff    	<unknown>
 8007c84: ffff ffff    	<unknown>
 8007c88: ffff ffff    	<unknown>
 8007c8c: ffff ffff    	<unknown>
 8007c90: ffff ffff    	<unknown>
 8007c94: ffff ffff    	<unknown>
 8007c98: ffff ffff    	<unknown>
 8007c9c: ffff ffff    	<unknown>
 8007ca0: ffff ffff    	<unknown>
 8007ca4: ffff ffff    	<unknown>
 8007ca8: ffff ffff    	<unknown>
 8007cac: ffff ffff    	<unknown>
 8007cb0: ffff ffff    	<unknown>
 8007cb4: ffff ffff    	<unknown>
 8007cb8: ffff ffff    	<unknown>
 8007cbc: ffff ffff    	<unknown>
 8007cc0: ffff ffff    	<unknown>
 8007cc4: ffff ffff    	<unknown>
 8007cc8: ffff ffff    	<unknown>
 8007ccc: ffff ffff    	<unknown>
 8007cd0: ffff ffff    	<unknown>
 8007cd4: ffff ffff    	<unknown>
 8007cd8: ffff ffff    	<unknown>
 8007cdc: ffff ffff    	<unknown>
 8007ce0: ffff ffff    	<unknown>
 8007ce4: ffff ffff    	<unknown>
 8007ce8: ffff ffff    	<unknown>
 8007cec: ffff ffff    	<unknown>
 8007cf0: ffff ffff    	<unknown>
 8007cf4: ffff ffff    	<unknown>
 8007cf8: ffff ffff    	<unknown>
 8007cfc: ffff ffff    	<unknown>
 8007d00: ffff ffff    	<unknown>
 8007d04: ffff ffff    	<unknown>
 8007d08: ffff ffff    	<unknown>
 8007d0c: ffff ffff    	<unknown>
 8007d10: ffff ffff    	<unknown>
 8007d14: ffff ffff    	<unknown>
 8007d18: ffff ffff    	<unknown>
 8007d1c: ffff ffff    	<unknown>
 8007d20: ffff ffff    	<unknown>
 8007d24: ffff ffff    	<unknown>
 8007d28: ffff ffff    	<unknown>
 8007d2c: ffff ffff    	<unknown>
 8007d30: ffff ffff    	<unknown>
 8007d34: ffff ffff    	<unknown>
 8007d38: ffff ffff    	<unknown>
 8007d3c: ffff ffff    	<unknown>
 8007d40: ffff ffff    	<unknown>
 8007d44: ffff ffff    	<unknown>
 8007d48: ffff ffff    	<unknown>
 8007d4c: ffff ffff    	<unknown>
 8007d50: ffff ffff    	<unknown>
 8007d54: ffff ffff    	<unknown>
 8007d58: ffff ffff    	<unknown>
 8007d5c: ffff ffff    	<unknown>
 8007d60: ffff ffff    	<unknown>
 8007d64: ffff ffff    	<unknown>
 8007d68: ffff ffff    	<unknown>
 8007d6c: ffff ffff    	<unknown>
 8007d70: ffff ffff    	<unknown>
 8007d74: ffff ffff    	<unknown>
 8007d78: ffff ffff    	<unknown>
 8007d7c: ffff ffff    	<unknown>
 8007d80: ffff ffff    	<unknown>
 8007d84: ffff ffff    	<unknown>
 8007d88: ffff ffff    	<unknown>
 8007d8c: ffff ffff    	<unknown>
 8007d90: ffff ffff    	<unknown>
 8007d94: ffff ffff    	<unknown>
 8007d98: ffff ffff    	<unknown>
 8007d9c: ffff ffff    	<unknown>
 8007da0: ffff ffff    	<unknown>
 8007da4: ffff ffff    	<unknown>
 8007da8: ffff ffff    	<unknown>
 8007dac: ffff ffff    	<unknown>
 8007db0: ffff ffff    	<unknown>
 8007db4: ffff ffff    	<unknown>
 8007db8: ffff ffff    	<unknown>
 8007dbc: ffff ffff    	<unknown>
 8007dc0: ffff ffff    	<unknown>
 8007dc4: ffff ffff    	<unknown>
 8007dc8: ffff ffff    	<unknown>
 8007dcc: ffff ffff    	<unknown>
 8007dd0: ffff ffff    	<unknown>
 8007dd4: ffff ffff    	<unknown>
 8007dd8: ffff ffff    	<unknown>
 8007ddc: ffff ffff    	<unknown>
 8007de0: ffff ffff    	<unknown>
 8007de4: ffff ffff    	<unknown>
 8007de8: ffff ffff    	<unknown>
 8007dec: ffff ffff    	<unknown>
 8007df0: ffff ffff    	<unknown>
 8007df4: ffff ffff    	<unknown>
 8007df8: ffff ffff    	<unknown>
 8007dfc: ffff ffff    	<unknown>
 8007e00: ffff ffff    	<unknown>
 8007e04: ffff ffff    	<unknown>
 8007e08: ffff ffff    	<unknown>
 8007e0c: ffff ffff    	<unknown>
 8007e10: ffff ffff    	<unknown>
 8007e14: ffff ffff    	<unknown>
 8007e18: ffff ffff    	<unknown>
 8007e1c: ffff ffff    	<unknown>
 8007e20: ffff ffff    	<unknown>
 8007e24: ffff ffff    	<unknown>
 8007e28: ffff ffff    	<unknown>
 8007e2c: ffff ffff    	<unknown>
 8007e30: ffff ffff    	<unknown>
 8007e34: ffff ffff    	<unknown>
 8007e38: ffff ffff    	<unknown>
 8007e3c: ffff ffff    	<unknown>
 8007e40: ffff ffff    	<unknown>
 8007e44: ffff ffff    	<unknown>
 8007e48: ffff ffff    	<unknown>
 8007e4c: ffff ffff    	<unknown>
 8007e50: ffff ffff    	<unknown>
 8007e54: ffff ffff    	<unknown>
 8007e58: ffff ffff    	<unknown>
 8007e5c: ffff ffff    	<unknown>
 8007e60: ffff ffff    	<unknown>
 8007e64: ffff ffff    	<unknown>
 8007e68: ffff ffff    	<unknown>
 8007e6c: ffff ffff    	<unknown>
 8007e70: ffff ffff    	<unknown>
 8007e74: ffff ffff    	<unknown>
 8007e78: ffff ffff    	<unknown>
 8007e7c: ffff ffff    	<unknown>
 8007e80: ffff ffff    	<unknown>
 8007e84: ffff ffff    	<unknown>
 8007e88: ffff ffff    	<unknown>
 8007e8c: ffff ffff    	<unknown>
 8007e90: ffff ffff    	<unknown>
 8007e94: ffff ffff    	<unknown>
 8007e98: ffff ffff    	<unknown>
 8007e9c: ffff ffff    	<unknown>
 8007ea0: ffff ffff    	<unknown>
 8007ea4: ffff ffff    	<unknown>
 8007ea8: ffff ffff    	<unknown>
 8007eac: ffff ffff    	<unknown>
 8007eb0: ffff ffff    	<unknown>
 8007eb4: ffff ffff    	<unknown>
 8007eb8: ffff ffff    	<unknown>
 8007ebc: ffff ffff    	<unknown>
 8007ec0: ffff ffff    	<unknown>
 8007ec4: ffff ffff    	<unknown>
 8007ec8: ffff ffff    	<unknown>
 8007ecc: ffff ffff    	<unknown>
 8007ed0: ffff ffff    	<unknown>
 8007ed4: ffff ffff    	<unknown>
 8007ed8: ffff ffff    	<unknown>
 8007edc: ffff ffff    	<unknown>
 8007ee0: ffff ffff    	<unknown>
 8007ee4: ffff ffff    	<unknown>
 8007ee8: ffff ffff    	<unknown>
 8007eec: ffff ffff    	<unknown>
 8007ef0: ffff ffff    	<unknown>
 8007ef4: ffff ffff    	<unknown>
 8007ef8: ffff ffff    	<unknown>
 8007efc: ffff ffff    	<unknown>
 8007f00: ffff ffff    	<unknown>
 8007f04: ffff ffff    	<unknown>
 8007f08: ffff ffff    	<unknown>
 8007f0c: ffff ffff    	<unknown>
 8007f10: ffff ffff    	<unknown>
 8007f14: ffff ffff    	<unknown>
 8007f18: ffff ffff    	<unknown>
 8007f1c: ffff ffff    	<unknown>
 8007f20: ffff ffff    	<unknown>
 8007f24: ffff ffff    	<unknown>
 8007f28: ffff ffff    	<unknown>
 8007f2c: ffff ffff    	<unknown>
 8007f30: ffff ffff    	<unknown>
 8007f34: ffff ffff    	<unknown>
 8007f38: ffff ffff    	<unknown>
 8007f3c: ffff ffff    	<unknown>
 8007f40: ffff ffff    	<unknown>
 8007f44: ffff ffff    	<unknown>
 8007f48: ffff ffff    	<unknown>
 8007f4c: ffff ffff    	<unknown>
 8007f50: ffff ffff    	<unknown>
 8007f54: ffff ffff    	<unknown>
 8007f58: ffff ffff    	<unknown>
 8007f5c: ffff ffff    	<unknown>
 8007f60: ffff ffff    	<unknown>
 8007f64: ffff ffff    	<unknown>
 8007f68: ffff ffff    	<unknown>
 8007f6c: ffff ffff    	<unknown>
 8007f70: ffff ffff    	<unknown>
 8007f74: ffff ffff    	<unknown>
 8007f78: ffff ffff    	<unknown>
 8007f7c: ffff ffff    	<unknown>
 8007f80: ffff ffff    	<unknown>
 8007f84: ffff ffff    	<unknown>
 8007f88: ffff ffff    	<unknown>
 8007f8c: ffff ffff    	<unknown>
 8007f90: ffff ffff    	<unknown>
 8007f94: ffff ffff    	<unknown>
 8007f98: ffff ffff    	<unknown>
 8007f9c: ffff ffff    	<unknown>
 8007fa0: ffff ffff    	<unknown>
 8007fa4: ffff ffff    	<unknown>
 8007fa8: ffff ffff    	<unknown>
 8007fac: ffff ffff    	<unknown>
 8007fb0: ffff ffff    	<unknown>
 8007fb4: ffff ffff    	<unknown>
 8007fb8: ffff ffff    	<unknown>
 8007fbc: ffff ffff    	<unknown>
 8007fc0: ffff ffff    	<unknown>
 8007fc4: ffff ffff    	<unknown>
 8007fc8: ffff ffff    	<unknown>
 8007fcc: ffff ffff    	<unknown>
 8007fd0: ffff ffff    	<unknown>
 8007fd4: ffff ffff    	<unknown>
 8007fd8: ffff ffff    	<unknown>
 8007fdc: ffff ffff    	<unknown>
 8007fe0: ffff ffff    	<unknown>
 8007fe4: ffff ffff    	<unknown>
 8007fe8: ffff ffff    	<unknown>
 8007fec: ffff ffff    	<unknown>
 8007ff0: ffff ffff    	<unknown>
 8007ff4: ffff ffff    	<unknown>
 8007ff8: ffff ffff    	<unknown>
 8007ffc: ffff ffff    	<unknown>
 8008000: ffff ffff    	<unknown>
 8008004: ffff ffff    	<unknown>
 8008008: ffff ffff    	<unknown>
 800800c: ffff ffff    	<unknown>
 8008010: ffff ffff    	<unknown>
 8008014: ffff ffff    	<unknown>
 8008018: ffff ffff    	<unknown>
 800801c: ffff ffff    	<unknown>
 8008020: ffff ffff    	<unknown>
 8008024: ffff ffff    	<unknown>
 8008028: ffff ffff    	<unknown>
 800802c: ffff ffff    	<unknown>
 8008030: ffff ffff    	<unknown>
 8008034: ffff ffff    	<unknown>
 8008038: ffff ffff    	<unknown>
 800803c: ffff ffff    	<unknown>
 8008040: ffff ffff    	<unknown>
 8008044: ffff ffff    	<unknown>
 8008048: ffff ffff    	<unknown>
 800804c: ffff ffff    	<unknown>
 8008050: ffff ffff    	<unknown>
 8008054: ffff ffff    	<unknown>
 8008058: ffff ffff    	<unknown>
 800805c: ffff ffff    	<unknown>
 8008060: ffff ffff    	<unknown>
 8008064: ffff ffff    	<unknown>
 8008068: ffff ffff    	<unknown>
 800806c: ffff ffff    	<unknown>
 8008070: ffff ffff    	<unknown>
 8008074: ffff ffff    	<unknown>
 8008078: ffff ffff    	<unknown>
 800807c: ffff ffff    	<unknown>
 8008080: ffff ffff    	<unknown>
 8008084: ffff ffff    	<unknown>
 8008088: ffff ffff    	<unknown>
 800808c: ffff ffff    	<unknown>
 8008090: ffff ffff    	<unknown>
 8008094: ffff ffff    	<unknown>
 8008098: ffff ffff    	<unknown>
 800809c: ffff ffff    	<unknown>
 80080a0: ffff ffff    	<unknown>
 80080a4: ffff ffff    	<unknown>
 80080a8: ffff ffff    	<unknown>
 80080ac: ffff ffff    	<unknown>
 80080b0: ffff ffff    	<unknown>
 80080b4: ffff ffff    	<unknown>
 80080b8: ffff ffff    	<unknown>
 80080bc: ffff ffff    	<unknown>
 80080c0: ffff ffff    	<unknown>
 80080c4: ffff ffff    	<unknown>
 80080c8: ffff ffff    	<unknown>
 80080cc: ffff ffff    	<unknown>
 80080d0: ffff ffff    	<unknown>
 80080d4: ffff ffff    	<unknown>
 80080d8: ffff ffff    	<unknown>
 80080dc: ffff ffff    	<unknown>
 80080e0: ffff ffff    	<unknown>
 80080e4: ffff ffff    	<unknown>
 80080e8: ffff ffff    	<unknown>
 80080ec: ffff ffff    	<unknown>
 80080f0: ffff ffff    	<unknown>
 80080f4: ffff ffff    	<unknown>
 80080f8: ffff ffff    	<unknown>
 80080fc: ffff ffff    	<unknown>
 8008100: ffff ffff    	<unknown>
 8008104: ffff ffff    	<unknown>
 8008108: ffff ffff    	<unknown>
 800810c: ffff ffff    	<unknown>
 8008110: ffff ffff    	<unknown>
 8008114: ffff ffff    	<unknown>
 8008118: ffff ffff    	<unknown>
 800811c: ffff ffff    	<unknown>
 8008120: ffff ffff    	<unknown>
 8008124: ffff ffff    	<unknown>
 8008128: ffff ffff    	<unknown>
 800812c: ffff ffff    	<unknown>
 8008130: ffff ffff    	<unknown>
 8008134: ffff ffff    	<unknown>
 8008138: ffff ffff    	<unknown>
 800813c: ffff ffff    	<unknown>
 8008140: ffff ffff    	<unknown>
 8008144: ffff ffff    	<unknown>
 8008148: ffff ffff    	<unknown>
 800814c: ffff ffff    	<unknown>
 8008150: ffff ffff    	<unknown>
 8008154: ffff ffff    	<unknown>
 8008158: ffff ffff    	<unknown>
 800815c: ffff ffff    	<unknown>
 8008160: ffff ffff    	<unknown>
 8008164: ffff ffff    	<unknown>
 8008168: ffff ffff    	<unknown>
 800816c: ffff ffff    	<unknown>
 8008170: ffff ffff    	<unknown>
 8008174: ffff ffff    	<unknown>
 8008178: ffff ffff    	<unknown>
 800817c: ffff ffff    	<unknown>
 8008180: ffff ffff    	<unknown>
 8008184: ffff ffff    	<unknown>
 8008188: ffff ffff    	<unknown>
 800818c: ffff ffff    	<unknown>
 8008190: ffff ffff    	<unknown>
 8008194: ffff ffff    	<unknown>
 8008198: ffff ffff    	<unknown>
 800819c: ffff ffff    	<unknown>
 80081a0: ffff ffff    	<unknown>
 80081a4: ffff ffff    	<unknown>
 80081a8: ffff ffff    	<unknown>
 80081ac: ffff ffff    	<unknown>
 80081b0: ffff ffff    	<unknown>
 80081b4: ffff ffff    	<unknown>
 80081b8: ffff ffff    	<unknown>
 80081bc: ffff ffff    	<unknown>
 80081c0: ffff ffff    	<unknown>
 80081c4: ffff ffff    	<unknown>
 80081c8: ffff ffff    	<unknown>
 80081cc: ffff ffff    	<unknown>
 80081d0: ffff ffff    	<unknown>
 80081d4: ffff ffff    	<unknown>
 80081d8: ffff ffff    	<unknown>
 80081dc: ffff ffff    	<unknown>
 80081e0: ffff ffff    	<unknown>
 80081e4: ffff ffff    	<unknown>
 80081e8: ffff ffff    	<unknown>
 80081ec: ffff ffff    	<unknown>
 80081f0: ffff ffff    	<unknown>
 80081f4: ffff ffff    	<unknown>
 80081f8: ffff ffff    	<unknown>
 80081fc: ffff ffff    	<unknown>
 8008200: ffff ffff    	<unknown>
 8008204: ffff ffff    	<unknown>
 8008208: ffff ffff    	<unknown>
 800820c: ffff ffff    	<unknown>
 8008210: ffff ffff    	<unknown>
 8008214: ffff ffff    	<unknown>
 8008218: ffff ffff    	<unknown>
 800821c: ffff ffff    	<unknown>
 8008220: ffff ffff    	<unknown>
 8008224: ffff ffff    	<unknown>
 8008228: ffff ffff    	<unknown>
 800822c: ffff ffff    	<unknown>
 8008230: ffff ffff    	<unknown>
 8008234: ffff ffff    	<unknown>
 8008238: ffff ffff    	<unknown>
 800823c: ffff ffff    	<unknown>
 8008240: ffff ffff    	<unknown>
 8008244: ffff ffff    	<unknown>
 8008248: ffff ffff    	<unknown>
 800824c: ffff ffff    	<unknown>
 8008250: ffff ffff    	<unknown>
 8008254: ffff ffff    	<unknown>
 8008258: ffff ffff    	<unknown>
 800825c: ffff ffff    	<unknown>
 8008260: ffff ffff    	<unknown>
 8008264: ffff ffff    	<unknown>
 8008268: ffff ffff    	<unknown>
 800826c: ffff ffff    	<unknown>
 8008270: ffff ffff    	<unknown>
 8008274: ffff ffff    	<unknown>
 8008278: ffff ffff    	<unknown>
 800827c: ffff ffff    	<unknown>
 8008280: ffff ffff    	<unknown>
 8008284: ffff ffff    	<unknown>
 8008288: ffff ffff    	<unknown>
 800828c: ffff ffff    	<unknown>
 8008290: ffff ffff    	<unknown>
 8008294: ffff ffff    	<unknown>
 8008298: ffff ffff    	<unknown>
 800829c: ffff ffff    	<unknown>
 80082a0: ffff ffff    	<unknown>
 80082a4: ffff ffff    	<unknown>
 80082a8: ffff ffff    	<unknown>
 80082ac: ffff ffff    	<unknown>
 80082b0: ffff ffff    	<unknown>
 80082b4: ffff ffff    	<unknown>
 80082b8: ffff ffff    	<unknown>
 80082bc: ffff ffff    	<unknown>
 80082c0: ffff ffff    	<unknown>
 80082c4: ffff ffff    	<unknown>
 80082c8: ffff ffff    	<unknown>
 80082cc: ffff ffff    	<unknown>
 80082d0: ffff ffff    	<unknown>
 80082d4: ffff ffff    	<unknown>
 80082d8: ffff ffff    	<unknown>
 80082dc: ffff ffff    	<unknown>
 80082e0: ffff ffff    	<unknown>
 80082e4: ffff ffff    	<unknown>
 80082e8: ffff ffff    	<unknown>
 80082ec: ffff ffff    	<unknown>
 80082f0: ffff ffff    	<unknown>
 80082f4: ffff ffff    	<unknown>
 80082f8: ffff ffff    	<unknown>
 80082fc: ffff ffff    	<unknown>
 8008300: ffff ffff    	<unknown>
 8008304: ffff ffff    	<unknown>
 8008308: ffff ffff    	<unknown>
 800830c: ffff ffff    	<unknown>
 8008310: ffff ffff    	<unknown>
 8008314: ffff ffff    	<unknown>
 8008318: ffff ffff    	<unknown>
 800831c: ffff ffff    	<unknown>
 8008320: ffff ffff    	<unknown>
 8008324: ffff ffff    	<unknown>
 8008328: ffff ffff    	<unknown>
 800832c: ffff ffff    	<unknown>
 8008330: ffff ffff    	<unknown>
 8008334: ffff ffff    	<unknown>
 8008338: ffff ffff    	<unknown>
 800833c: ffff ffff    	<unknown>
 8008340: ffff ffff    	<unknown>
 8008344: ffff ffff    	<unknown>
 8008348: ffff ffff    	<unknown>
 800834c: ffff ffff    	<unknown>
 8008350: ffff ffff    	<unknown>
 8008354: ffff ffff    	<unknown>
 8008358: ffff ffff    	<unknown>
 800835c: ffff ffff    	<unknown>
 8008360: ffff ffff    	<unknown>
 8008364: ffff ffff    	<unknown>
 8008368: ffff ffff    	<unknown>
 800836c: ffff ffff    	<unknown>
 8008370: ffff ffff    	<unknown>
 8008374: ffff ffff    	<unknown>
 8008378: ffff ffff    	<unknown>
 800837c: ffff ffff    	<unknown>
 8008380: ffff ffff    	<unknown>
 8008384: ffff ffff    	<unknown>
 8008388: ffff ffff    	<unknown>
 800838c: ffff ffff    	<unknown>
 8008390: ffff ffff    	<unknown>
 8008394: ffff ffff    	<unknown>
 8008398: ffff ffff    	<unknown>
 800839c: ffff ffff    	<unknown>
 80083a0: ffff ffff    	<unknown>
 80083a4: ffff ffff    	<unknown>
 80083a8: ffff ffff    	<unknown>
 80083ac: ffff ffff    	<unknown>
 80083b0: ffff ffff    	<unknown>
 80083b4: ffff ffff    	<unknown>
 80083b8: ffff ffff    	<unknown>
 80083bc: ffff ffff    	<unknown>
 80083c0: ffff ffff    	<unknown>
 80083c4: ffff ffff    	<unknown>
 80083c8: ffff ffff    	<unknown>
 80083cc: ffff ffff    	<unknown>
 80083d0: ffff ffff    	<unknown>
 80083d4: ffff ffff    	<unknown>
 80083d8: ffff ffff    	<unknown>
 80083dc: ffff ffff    	<unknown>
 80083e0: ffff ffff    	<unknown>
 80083e4: ffff ffff    	<unknown>
 80083e8: ffff ffff    	<unknown>
 80083ec: ffff ffff    	<unknown>
 80083f0: ffff ffff    	<unknown>
 80083f4: ffff ffff    	<unknown>
 80083f8: ffff ffff    	<unknown>
 80083fc: ffff ffff    	<unknown>
 8008400: ffff ffff    	<unknown>
 8008404: ffff ffff    	<unknown>
 8008408: ffff ffff    	<unknown>
 800840c: ffff ffff    	<unknown>
 8008410: ffff ffff    	<unknown>
 8008414: ffff ffff    	<unknown>
 8008418: ffff ffff    	<unknown>
 800841c: ffff ffff    	<unknown>
 8008420: ffff ffff    	<unknown>
 8008424: ffff ffff    	<unknown>
 8008428: ffff ffff    	<unknown>
 800842c: ffff ffff    	<unknown>
 8008430: ffff ffff    	<unknown>
 8008434: ffff ffff    	<unknown>
 8008438: ffff ffff    	<unknown>
 800843c: ffff ffff    	<unknown>
 8008440: ffff ffff    	<unknown>
 8008444: ffff ffff    	<unknown>
 8008448: ffff ffff    	<unknown>
 800844c: ffff ffff    	<unknown>
 8008450: ffff ffff    	<unknown>
 8008454: ffff ffff    	<unknown>
 8008458: ffff ffff    	<unknown>
 800845c: ffff ffff    	<unknown>
 8008460: ffff ffff    	<unknown>
 8008464: ffff ffff    	<unknown>
 8008468: ffff ffff    	<unknown>
 800846c: ffff ffff    	<unknown>
 8008470: ffff ffff    	<unknown>
 8008474: ffff ffff    	<unknown>
 8008478: ffff ffff    	<unknown>
 800847c: ffff ffff    	<unknown>
 8008480: ffff ffff    	<unknown>
 8008484: ffff ffff    	<unknown>
 8008488: ffff ffff    	<unknown>
 800848c: ffff ffff    	<unknown>
 8008490: ffff ffff    	<unknown>
 8008494: ffff ffff    	<unknown>
 8008498: ffff ffff    	<unknown>
 800849c: ffff ffff    	<unknown>
 80084a0: ffff ffff    	<unknown>
 80084a4: ffff ffff    	<unknown>
 80084a8: ffff ffff    	<unknown>
 80084ac: ffff ffff    	<unknown>
 80084b0: ffff ffff    	<unknown>
 80084b4: ffff ffff    	<unknown>
 80084b8: ffff ffff    	<unknown>
 80084bc: ffff ffff    	<unknown>
 80084c0: ffff ffff    	<unknown>
 80084c4: ffff ffff    	<unknown>
 80084c8: ffff ffff    	<unknown>
 80084cc: ffff ffff    	<unknown>
 80084d0: ffff ffff    	<unknown>
 80084d4: ffff ffff    	<unknown>
 80084d8: ffff ffff    	<unknown>
 80084dc: ffff ffff    	<unknown>
 80084e0: ffff ffff    	<unknown>
 80084e4: ffff ffff    	<unknown>
 80084e8: ffff ffff    	<unknown>
 80084ec: ffff ffff    	<unknown>
 80084f0: ffff ffff    	<unknown>
 80084f4: ffff ffff    	<unknown>
 80084f8: ffff ffff    	<unknown>
 80084fc: ffff ffff    	<unknown>
 8008500: ffff ffff    	<unknown>
 8008504: ffff ffff    	<unknown>
 8008508: ffff ffff    	<unknown>
 800850c: ffff ffff    	<unknown>
 8008510: ffff ffff    	<unknown>
 8008514: ffff ffff    	<unknown>
 8008518: ffff ffff    	<unknown>
 800851c: ffff ffff    	<unknown>
 8008520: ffff ffff    	<unknown>
 8008524: ffff ffff    	<unknown>
 8008528: ffff ffff    	<unknown>
 800852c: ffff ffff    	<unknown>
 8008530: ffff ffff    	<unknown>
 8008534: ffff ffff    	<unknown>
 8008538: ffff ffff    	<unknown>
 800853c: ffff ffff    	<unknown>
 8008540: ffff ffff    	<unknown>
 8008544: ffff ffff    	<unknown>
 8008548: ffff ffff    	<unknown>
 800854c: ffff ffff    	<unknown>
 8008550: ffff ffff    	<unknown>
 8008554: ffff ffff    	<unknown>
 8008558: ffff ffff    	<unknown>
 800855c: ffff ffff    	<unknown>
 8008560: ffff ffff    	<unknown>
 8008564: ffff ffff    	<unknown>
 8008568: ffff ffff    	<unknown>
 800856c: ffff ffff    	<unknown>
 8008570: ffff ffff    	<unknown>
 8008574: ffff ffff    	<unknown>
 8008578: ffff ffff    	<unknown>
 800857c: ffff ffff    	<unknown>
 8008580: ffff ffff    	<unknown>
 8008584: ffff ffff    	<unknown>
 8008588: ffff ffff    	<unknown>
 800858c: ffff ffff    	<unknown>
 8008590: ffff ffff    	<unknown>
 8008594: ffff ffff    	<unknown>
 8008598: ffff ffff    	<unknown>
 800859c: ffff ffff    	<unknown>
 80085a0: ffff ffff    	<unknown>
 80085a4: ffff ffff    	<unknown>
 80085a8: ffff ffff    	<unknown>
 80085ac: ffff ffff    	<unknown>
 80085b0: ffff ffff    	<unknown>
 80085b4: ffff ffff    	<unknown>
 80085b8: ffff ffff    	<unknown>
 80085bc: ffff ffff    	<unknown>
 80085c0: ffff ffff    	<unknown>
 80085c4: ffff ffff    	<unknown>
 80085c8: ffff ffff    	<unknown>
 80085cc: ffff ffff    	<unknown>
 80085d0: ffff ffff    	<unknown>
 80085d4: ffff ffff    	<unknown>
 80085d8: ffff ffff    	<unknown>
 80085dc: ffff ffff    	<unknown>
 80085e0: ffff ffff    	<unknown>
 80085e4: ffff ffff    	<unknown>
 80085e8: ffff ffff    	<unknown>
 80085ec: ffff ffff    	<unknown>
 80085f0: ffff ffff    	<unknown>
 80085f4: ffff ffff    	<unknown>
 80085f8: ffff ffff    	<unknown>
 80085fc: ffff ffff    	<unknown>
 8008600: ffff ffff    	<unknown>
 8008604: ffff ffff    	<unknown>
 8008608: ffff ffff    	<unknown>
 800860c: ffff ffff    	<unknown>
 8008610: ffff ffff    	<unknown>
 8008614: ffff ffff    	<unknown>
 8008618: ffff ffff    	<unknown>
 800861c: ffff ffff    	<unknown>
 8008620: ffff ffff    	<unknown>
 8008624: ffff ffff    	<unknown>
 8008628: ffff ffff    	<unknown>
 800862c: ffff ffff    	<unknown>
 8008630: ffff ffff    	<unknown>
 8008634: ffff ffff    	<unknown>
 8008638: ffff ffff    	<unknown>
 800863c: ffff ffff    	<unknown>
 8008640: ffff ffff    	<unknown>
 8008644: ffff ffff    	<unknown>
 8008648: ffff ffff    	<unknown>
 800864c: ffff ffff    	<unknown>
 8008650: ffff ffff    	<unknown>
 8008654: ffff ffff    	<unknown>
 8008658: ffff ffff    	<unknown>
 800865c: ffff ffff    	<unknown>
 8008660: ffff ffff    	<unknown>
 8008664: ffff ffff    	<unknown>
 8008668: ffff ffff    	<unknown>
 800866c: ffff ffff    	<unknown>
 8008670: ffff ffff    	<unknown>
 8008674: ffff ffff    	<unknown>
 8008678: ffff ffff    	<unknown>
 800867c: ffff ffff    	<unknown>
 8008680: ffff ffff    	<unknown>
 8008684: ffff ffff    	<unknown>
 8008688: ffff ffff    	<unknown>
 800868c: ffff ffff    	<unknown>
 8008690: ffff ffff    	<unknown>
 8008694: ffff ffff    	<unknown>
 8008698: ffff ffff    	<unknown>
 800869c: ffff ffff    	<unknown>
 80086a0: ffff ffff    	<unknown>
 80086a4: ffff ffff    	<unknown>
 80086a8: ffff ffff    	<unknown>
 80086ac: ffff ffff    	<unknown>
 80086b0: ffff ffff    	<unknown>
 80086b4: ffff ffff    	<unknown>
 80086b8: ffff ffff    	<unknown>
 80086bc: ffff ffff    	<unknown>
 80086c0: ffff ffff    	<unknown>
 80086c4: ffff ffff    	<unknown>
 80086c8: ffff ffff    	<unknown>
 80086cc: ffff ffff    	<unknown>
 80086d0: ffff ffff    	<unknown>
 80086d4: ffff ffff    	<unknown>
 80086d8: ffff ffff    	<unknown>
 80086dc: ffff ffff    	<unknown>
 80086e0: ffff ffff    	<unknown>
 80086e4: ffff ffff    	<unknown>
 80086e8: ffff ffff    	<unknown>
 80086ec: ffff ffff    	<unknown>
 80086f0: ffff ffff    	<unknown>
 80086f4: ffff ffff    	<unknown>
 80086f8: ffff ffff    	<unknown>
 80086fc: ffff ffff    	<unknown>
 8008700: ffff ffff    	<unknown>
 8008704: ffff ffff    	<unknown>
 8008708: ffff ffff    	<unknown>
 800870c: ffff ffff    	<unknown>
 8008710: ffff ffff    	<unknown>
 8008714: ffff ffff    	<unknown>
 8008718: ffff ffff    	<unknown>
 800871c: ffff ffff    	<unknown>
 8008720: ffff ffff    	<unknown>
 8008724: ffff ffff    	<unknown>
 8008728: ffff ffff    	<unknown>
 800872c: ffff ffff    	<unknown>
 8008730: ffff ffff    	<unknown>
 8008734: ffff ffff    	<unknown>
 8008738: ffff ffff    	<unknown>
 800873c: ffff ffff    	<unknown>
 8008740: ffff ffff    	<unknown>
 8008744: ffff ffff    	<unknown>
 8008748: ffff ffff    	<unknown>
 800874c: ffff ffff    	<unknown>
 8008750: ffff ffff    	<unknown>
 8008754: ffff ffff    	<unknown>
 8008758: ffff ffff    	<unknown>
 800875c: ffff ffff    	<unknown>
 8008760: ffff ffff    	<unknown>
 8008764: ffff ffff    	<unknown>
 8008768: ffff ffff    	<unknown>
 800876c: ffff ffff    	<unknown>
 8008770: ffff ffff    	<unknown>
 8008774: ffff ffff    	<unknown>
 8008778: ffff ffff    	<unknown>
 800877c: ffff ffff    	<unknown>
 8008780: ffff ffff    	<unknown>
 8008784: ffff ffff    	<unknown>
 8008788: ffff ffff    	<unknown>
 800878c: ffff ffff    	<unknown>
 8008790: ffff ffff    	<unknown>
 8008794: ffff ffff    	<unknown>
 8008798: ffff ffff    	<unknown>
 800879c: ffff ffff    	<unknown>
 80087a0: ffff ffff    	<unknown>
 80087a4: ffff ffff    	<unknown>
 80087a8: ffff ffff    	<unknown>
 80087ac: ffff ffff    	<unknown>
 80087b0: ffff ffff    	<unknown>
 80087b4: ffff ffff    	<unknown>
 80087b8: ffff ffff    	<unknown>
 80087bc: ffff ffff    	<unknown>
 80087c0: ffff ffff    	<unknown>
 80087c4: ffff ffff    	<unknown>
 80087c8: ffff ffff    	<unknown>
 80087cc: ffff ffff    	<unknown>
 80087d0: ffff ffff    	<unknown>
 80087d4: ffff ffff    	<unknown>
 80087d8: ffff ffff    	<unknown>
 80087dc: ffff ffff    	<unknown>
 80087e0: ffff ffff    	<unknown>
 80087e4: ffff ffff    	<unknown>
 80087e8: ffff ffff    	<unknown>
 80087ec: ffff ffff    	<unknown>
 80087f0: ffff ffff    	<unknown>
 80087f4: ffff ffff    	<unknown>
 80087f8: ffff ffff    	<unknown>
 80087fc: ffff ffff    	<unknown>
 8008800: ffff ffff    	<unknown>
 8008804: ffff ffff    	<unknown>
 8008808: ffff ffff    	<unknown>
 800880c: ffff ffff    	<unknown>
 8008810: ffff ffff    	<unknown>
 8008814: ffff ffff    	<unknown>
 8008818: ffff ffff    	<unknown>
 800881c: ffff ffff    	<unknown>
 8008820: ffff ffff    	<unknown>
 8008824: ffff ffff    	<unknown>
 8008828: ffff ffff    	<unknown>
 800882c: ffff ffff    	<unknown>
 8008830: ffff ffff    	<unknown>
 8008834: ffff ffff    	<unknown>
 8008838: ffff ffff    	<unknown>
 800883c: ffff ffff    	<unknown>
 8008840: ffff ffff    	<unknown>
 8008844: ffff ffff    	<unknown>
 8008848: ffff ffff    	<unknown>
 800884c: ffff ffff    	<unknown>
 8008850: ffff ffff    	<unknown>
 8008854: ffff ffff    	<unknown>
 8008858: ffff ffff    	<unknown>
 800885c: ffff ffff    	<unknown>
 8008860: ffff ffff    	<unknown>
 8008864: ffff ffff    	<unknown>
 8008868: ffff ffff    	<unknown>
 800886c: ffff ffff    	<unknown>
 8008870: ffff ffff    	<unknown>
 8008874: ffff ffff    	<unknown>
 8008878: ffff ffff    	<unknown>
 800887c: ffff ffff    	<unknown>
 8008880: ffff ffff    	<unknown>
 8008884: ffff ffff    	<unknown>
 8008888: ffff ffff    	<unknown>
 800888c: ffff ffff    	<unknown>
 8008890: ffff ffff    	<unknown>
 8008894: ffff ffff    	<unknown>
 8008898: ffff ffff    	<unknown>
 800889c: ffff ffff    	<unknown>
 80088a0: ffff ffff    	<unknown>
 80088a4: ffff ffff    	<unknown>
 80088a8: ffff ffff    	<unknown>
 80088ac: ffff ffff    	<unknown>
 80088b0: ffff ffff    	<unknown>
 80088b4: ffff ffff    	<unknown>
 80088b8: ffff ffff    	<unknown>
 80088bc: ffff ffff    	<unknown>
 80088c0: ffff ffff    	<unknown>
 80088c4: ffff ffff    	<unknown>
 80088c8: ffff ffff    	<unknown>
 80088cc: ffff ffff    	<unknown>
 80088d0: ffff ffff    	<unknown>
 80088d4: ffff ffff    	<unknown>
 80088d8: ffff ffff    	<unknown>
 80088dc: ffff ffff    	<unknown>
 80088e0: ffff ffff    	<unknown>
 80088e4: ffff ffff    	<unknown>
 80088e8: ffff ffff    	<unknown>
 80088ec: ffff ffff    	<unknown>
 80088f0: ffff ffff    	<unknown>
 80088f4: ffff ffff    	<unknown>
 80088f8: ffff ffff    	<unknown>
 80088fc: ffff ffff    	<unknown>
 8008900: ffff ffff    	<unknown>
 8008904: ffff ffff    	<unknown>
 8008908: ffff ffff    	<unknown>
 800890c: ffff ffff    	<unknown>
 8008910: ffff ffff    	<unknown>
 8008914: ffff ffff    	<unknown>
 8008918: ffff ffff    	<unknown>
 800891c: ffff ffff    	<unknown>
 8008920: ffff ffff    	<unknown>
 8008924: ffff ffff    	<unknown>
 8008928: ffff ffff    	<unknown>
 800892c: ffff ffff    	<unknown>
 8008930: ffff ffff    	<unknown>
 8008934: ffff ffff    	<unknown>
 8008938: ffff ffff    	<unknown>
 800893c: ffff ffff    	<unknown>
 8008940: ffff ffff    	<unknown>
 8008944: ffff ffff    	<unknown>
 8008948: ffff ffff    	<unknown>
 800894c: ffff ffff    	<unknown>
 8008950: ffff ffff    	<unknown>
 8008954: ffff ffff    	<unknown>
 8008958: ffff ffff    	<unknown>
 800895c: ffff ffff    	<unknown>
 8008960: ffff ffff    	<unknown>
 8008964: ffff ffff    	<unknown>
 8008968: ffff ffff    	<unknown>
 800896c: ffff ffff    	<unknown>
 8008970: ffff ffff    	<unknown>
 8008974: ffff ffff    	<unknown>
 8008978: ffff ffff    	<unknown>
 800897c: ffff ffff    	<unknown>
 8008980: ffff ffff    	<unknown>
 8008984: ffff ffff    	<unknown>
 8008988: ffff ffff    	<unknown>
 800898c: ffff ffff    	<unknown>
 8008990: ffff ffff    	<unknown>
 8008994: ffff ffff    	<unknown>
 8008998: ffff ffff    	<unknown>
 800899c: ffff ffff    	<unknown>
 80089a0: ffff ffff    	<unknown>
 80089a4: ffff ffff    	<unknown>
 80089a8: ffff ffff    	<unknown>
 80089ac: ffff ffff    	<unknown>
 80089b0: ffff ffff    	<unknown>
 80089b4: ffff ffff    	<unknown>
 80089b8: ffff ffff    	<unknown>
 80089bc: ffff ffff    	<unknown>
 80089c0: ffff ffff    	<unknown>
 80089c4: ffff ffff    	<unknown>
 80089c8: ffff ffff    	<unknown>
 80089cc: ffff ffff    	<unknown>
 80089d0: ffff ffff    	<unknown>
 80089d4: ffff ffff    	<unknown>
 80089d8: ffff ffff    	<unknown>
 80089dc: ffff ffff    	<unknown>
 80089e0: ffff ffff    	<unknown>
 80089e4: ffff ffff    	<unknown>
 80089e8: ffff ffff    	<unknown>
 80089ec: ffff ffff    	<unknown>
 80089f0: ffff ffff    	<unknown>
 80089f4: ffff ffff    	<unknown>
 80089f8: ffff ffff    	<unknown>
 80089fc: ffff ffff    	<unknown>
 8008a00: ffff ffff    	<unknown>
 8008a04: ffff ffff    	<unknown>
 8008a08: ffff ffff    	<unknown>
 8008a0c: ffff ffff    	<unknown>
 8008a10: ffff ffff    	<unknown>
 8008a14: ffff ffff    	<unknown>
 8008a18: ffff ffff    	<unknown>
 8008a1c: ffff ffff    	<unknown>
 8008a20: ffff ffff    	<unknown>
 8008a24: ffff ffff    	<unknown>
 8008a28: ffff ffff    	<unknown>
 8008a2c: ffff ffff    	<unknown>
 8008a30: ffff ffff    	<unknown>
 8008a34: ffff ffff    	<unknown>
 8008a38: ffff ffff    	<unknown>
 8008a3c: ffff ffff    	<unknown>
 8008a40: ffff ffff    	<unknown>
 8008a44: ffff ffff    	<unknown>
 8008a48: ffff ffff    	<unknown>
 8008a4c: ffff ffff    	<unknown>
 8008a50: ffff ffff    	<unknown>
 8008a54: ffff ffff    	<unknown>
 8008a58: ffff ffff    	<unknown>
 8008a5c: ffff ffff    	<unknown>
 8008a60: ffff ffff    	<unknown>
 8008a64: ffff ffff    	<unknown>
 8008a68: ffff ffff    	<unknown>
 8008a6c: ffff ffff    	<unknown>
 8008a70: ffff ffff    	<unknown>
 8008a74: ffff ffff    	<unknown>
 8008a78: ffff ffff    	<unknown>
 8008a7c: ffff ffff    	<unknown>
 8008a80: ffff ffff    	<unknown>
 8008a84: ffff ffff    	<unknown>
 8008a88: ffff ffff    	<unknown>
 8008a8c: ffff ffff    	<unknown>
 8008a90: ffff ffff    	<unknown>
 8008a94: ffff ffff    	<unknown>
 8008a98: ffff ffff    	<unknown>
 8008a9c: ffff ffff    	<unknown>
 8008aa0: ffff ffff    	<unknown>
 8008aa4: ffff ffff    	<unknown>
 8008aa8: ffff ffff    	<unknown>
 8008aac: ffff ffff    	<unknown>
 8008ab0: ffff ffff    	<unknown>
 8008ab4: ffff ffff    	<unknown>
 8008ab8: ffff ffff    	<unknown>
 8008abc: ffff ffff    	<unknown>
 8008ac0: ffff ffff    	<unknown>
 8008ac4: ffff ffff    	<unknown>
 8008ac8: ffff ffff    	<unknown>
 8008acc: ffff ffff    	<unknown>
 8008ad0: ffff ffff    	<unknown>
 8008ad4: ffff ffff    	<unknown>
 8008ad8: ffff ffff    	<unknown>
 8008adc: ffff ffff    	<unknown>
 8008ae0: ffff ffff    	<unknown>
 8008ae4: ffff ffff    	<unknown>
 8008ae8: ffff ffff    	<unknown>
 8008aec: ffff ffff    	<unknown>
 8008af0: ffff ffff    	<unknown>
 8008af4: ffff ffff    	<unknown>
 8008af8: ffff ffff    	<unknown>
 8008afc: ffff ffff    	<unknown>
 8008b00: ffff ffff    	<unknown>
 8008b04: ffff ffff    	<unknown>
 8008b08: ffff ffff    	<unknown>
 8008b0c: ffff ffff    	<unknown>
 8008b10: ffff ffff    	<unknown>
 8008b14: ffff ffff    	<unknown>
 8008b18: ffff ffff    	<unknown>
 8008b1c: ffff ffff    	<unknown>
 8008b20: ffff ffff    	<unknown>
 8008b24: ffff ffff    	<unknown>
 8008b28: ffff ffff    	<unknown>
 8008b2c: ffff ffff    	<unknown>
 8008b30: ffff ffff    	<unknown>
 8008b34: ffff ffff    	<unknown>
 8008b38: ffff ffff    	<unknown>
 8008b3c: ffff ffff    	<unknown>
 8008b40: ffff ffff    	<unknown>
 8008b44: ffff ffff    	<unknown>
 8008b48: ffff ffff    	<unknown>
 8008b4c: ffff ffff    	<unknown>
 8008b50: ffff ffff    	<unknown>
 8008b54: ffff ffff    	<unknown>
 8008b58: ffff ffff    	<unknown>
 8008b5c: ffff ffff    	<unknown>
 8008b60: ffff ffff    	<unknown>
 8008b64: ffff ffff    	<unknown>
 8008b68: ffff ffff    	<unknown>
 8008b6c: ffff ffff    	<unknown>
 8008b70: ffff ffff    	<unknown>
 8008b74: ffff ffff    	<unknown>
 8008b78: ffff ffff    	<unknown>
 8008b7c: ffff ffff    	<unknown>
 8008b80: ffff ffff    	<unknown>
 8008b84: ffff ffff    	<unknown>
 8008b88: ffff ffff    	<unknown>
 8008b8c: ffff ffff    	<unknown>
 8008b90: ffff ffff    	<unknown>
 8008b94: ffff ffff    	<unknown>
 8008b98: ffff ffff    	<unknown>
 8008b9c: ffff ffff    	<unknown>
 8008ba0: ffff ffff    	<unknown>
 8008ba4: ffff ffff    	<unknown>
 8008ba8: ffff ffff    	<unknown>
 8008bac: ffff ffff    	<unknown>
 8008bb0: ffff ffff    	<unknown>
 8008bb4: ffff ffff    	<unknown>
 8008bb8: ffff ffff    	<unknown>
 8008bbc: ffff ffff    	<unknown>
 8008bc0: ffff ffff    	<unknown>
 8008bc4: ffff ffff    	<unknown>
 8008bc8: ffff ffff    	<unknown>
 8008bcc: ffff ffff    	<unknown>
 8008bd0: ffff ffff    	<unknown>
 8008bd4: ffff ffff    	<unknown>
 8008bd8: ffff ffff    	<unknown>
 8008bdc: ffff ffff    	<unknown>
 8008be0: ffff ffff    	<unknown>
 8008be4: ffff ffff    	<unknown>
 8008be8: ffff ffff    	<unknown>
 8008bec: ffff ffff    	<unknown>
 8008bf0: ffff ffff    	<unknown>
 8008bf4: ffff ffff    	<unknown>
 8008bf8: ffff ffff    	<unknown>
 8008bfc: ffff ffff    	<unknown>
 8008c00: ffff ffff    	<unknown>
 8008c04: ffff ffff    	<unknown>
 8008c08: ffff ffff    	<unknown>
 8008c0c: ffff ffff    	<unknown>
 8008c10: ffff ffff    	<unknown>
 8008c14: ffff ffff    	<unknown>
 8008c18: ffff ffff    	<unknown>
 8008c1c: ffff ffff    	<unknown>
 8008c20: ffff ffff    	<unknown>
 8008c24: ffff ffff    	<unknown>
 8008c28: ffff ffff    	<unknown>
 8008c2c: ffff ffff    	<unknown>
 8008c30: ffff ffff    	<unknown>
 8008c34: ffff ffff    	<unknown>
 8008c38: ffff ffff    	<unknown>
 8008c3c: ffff ffff    	<unknown>
 8008c40: ffff ffff    	<unknown>
 8008c44: ffff ffff    	<unknown>
 8008c48: ffff ffff    	<unknown>
 8008c4c: ffff ffff    	<unknown>
 8008c50: ffff ffff    	<unknown>
 8008c54: ffff ffff    	<unknown>
 8008c58: ffff ffff    	<unknown>
 8008c5c: ffff ffff    	<unknown>
 8008c60: ffff ffff    	<unknown>
 8008c64: ffff ffff    	<unknown>
 8008c68: ffff ffff    	<unknown>
 8008c6c: ffff ffff    	<unknown>
 8008c70: ffff ffff    	<unknown>
 8008c74: ffff ffff    	<unknown>
 8008c78: ffff ffff    	<unknown>
 8008c7c: ffff ffff    	<unknown>
 8008c80: ffff ffff    	<unknown>
 8008c84: ffff ffff    	<unknown>
 8008c88: ffff ffff    	<unknown>
 8008c8c: ffff ffff    	<unknown>
 8008c90: ffff ffff    	<unknown>
 8008c94: ffff ffff    	<unknown>
 8008c98: ffff ffff    	<unknown>
 8008c9c: ffff ffff    	<unknown>
 8008ca0: ffff ffff    	<unknown>
 8008ca4: ffff ffff    	<unknown>
 8008ca8: ffff ffff    	<unknown>
 8008cac: ffff ffff    	<unknown>
 8008cb0: ffff ffff    	<unknown>
 8008cb4: ffff ffff    	<unknown>
 8008cb8: ffff ffff    	<unknown>
 8008cbc: ffff ffff    	<unknown>
 8008cc0: ffff ffff    	<unknown>
 8008cc4: ffff ffff    	<unknown>
 8008cc8: ffff ffff    	<unknown>
 8008ccc: ffff ffff    	<unknown>
 8008cd0: ffff ffff    	<unknown>
 8008cd4: ffff ffff    	<unknown>
 8008cd8: ffff ffff    	<unknown>
 8008cdc: ffff ffff    	<unknown>
 8008ce0: ffff ffff    	<unknown>
 8008ce4: ffff ffff    	<unknown>
 8008ce8: ffff ffff    	<unknown>
 8008cec: ffff ffff    	<unknown>
 8008cf0: ffff ffff    	<unknown>
 8008cf4: ffff ffff    	<unknown>
 8008cf8: ffff ffff    	<unknown>
 8008cfc: ffff ffff    	<unknown>
 8008d00: ffff ffff    	<unknown>
 8008d04: ffff ffff    	<unknown>
 8008d08: ffff ffff    	<unknown>
 8008d0c: ffff ffff    	<unknown>
 8008d10: ffff ffff    	<unknown>
 8008d14: ffff ffff    	<unknown>
 8008d18: ffff ffff    	<unknown>
 8008d1c: ffff ffff    	<unknown>
 8008d20: ffff ffff    	<unknown>
 8008d24: ffff ffff    	<unknown>
 8008d28: ffff ffff    	<unknown>
 8008d2c: ffff ffff    	<unknown>
 8008d30: ffff ffff    	<unknown>
 8008d34: ffff ffff    	<unknown>
 8008d38: ffff ffff    	<unknown>
 8008d3c: ffff ffff    	<unknown>
 8008d40: ffff ffff    	<unknown>
 8008d44: ffff ffff    	<unknown>
 8008d48: ffff ffff    	<unknown>
 8008d4c: ffff ffff    	<unknown>
 8008d50: ffff ffff    	<unknown>
 8008d54: ffff ffff    	<unknown>
 8008d58: ffff ffff    	<unknown>
 8008d5c: ffff ffff    	<unknown>
 8008d60: ffff ffff    	<unknown>
 8008d64: ffff ffff    	<unknown>
 8008d68: ffff ffff    	<unknown>
 8008d6c: ffff ffff    	<unknown>
 8008d70: ffff ffff    	<unknown>
 8008d74: ffff ffff    	<unknown>
 8008d78: ffff ffff    	<unknown>
 8008d7c: ffff ffff    	<unknown>
 8008d80: ffff ffff    	<unknown>
 8008d84: ffff ffff    	<unknown>
 8008d88: ffff ffff    	<unknown>
 8008d8c: ffff ffff    	<unknown>
 8008d90: ffff ffff    	<unknown>
 8008d94: ffff ffff    	<unknown>
 8008d98: ffff ffff    	<unknown>
 8008d9c: ffff ffff    	<unknown>
 8008da0: ffff ffff    	<unknown>
 8008da4: ffff ffff    	<unknown>
 8008da8: ffff ffff    	<unknown>
 8008dac: ffff ffff    	<unknown>
 8008db0: ffff ffff    	<unknown>
 8008db4: ffff ffff    	<unknown>
 8008db8: ffff ffff    	<unknown>
 8008dbc: ffff ffff    	<unknown>
 8008dc0: ffff ffff    	<unknown>
 8008dc4: ffff ffff    	<unknown>
 8008dc8: ffff ffff    	<unknown>
 8008dcc: ffff ffff    	<unknown>
 8008dd0: ffff ffff    	<unknown>
 8008dd4: ffff ffff    	<unknown>
 8008dd8: ffff ffff    	<unknown>
 8008ddc: ffff ffff    	<unknown>
 8008de0: ffff ffff    	<unknown>
 8008de4: ffff ffff    	<unknown>
 8008de8: ffff ffff    	<unknown>
 8008dec: ffff ffff    	<unknown>
 8008df0: ffff ffff    	<unknown>
 8008df4: ffff ffff    	<unknown>
 8008df8: ffff ffff    	<unknown>
 8008dfc: ffff ffff    	<unknown>
 8008e00: ffff ffff    	<unknown>
 8008e04: ffff ffff    	<unknown>
 8008e08: ffff ffff    	<unknown>
 8008e0c: ffff ffff    	<unknown>
 8008e10: ffff ffff    	<unknown>
 8008e14: ffff ffff    	<unknown>
 8008e18: ffff ffff    	<unknown>
 8008e1c: ffff ffff    	<unknown>
 8008e20: ffff ffff    	<unknown>
 8008e24: ffff ffff    	<unknown>
 8008e28: ffff ffff    	<unknown>
 8008e2c: ffff ffff    	<unknown>
 8008e30: ffff ffff    	<unknown>
 8008e34: ffff ffff    	<unknown>
 8008e38: ffff ffff    	<unknown>
 8008e3c: ffff ffff    	<unknown>
 8008e40: ffff ffff    	<unknown>
 8008e44: ffff ffff    	<unknown>
 8008e48: ffff ffff    	<unknown>
 8008e4c: ffff ffff    	<unknown>
 8008e50: ffff ffff    	<unknown>
 8008e54: ffff ffff    	<unknown>
 8008e58: ffff ffff    	<unknown>
 8008e5c: ffff ffff    	<unknown>
 8008e60: ffff ffff    	<unknown>
 8008e64: ffff ffff    	<unknown>
 8008e68: ffff ffff    	<unknown>
 8008e6c: ffff ffff    	<unknown>
 8008e70: ffff ffff    	<unknown>
 8008e74: ffff ffff    	<unknown>
 8008e78: ffff ffff    	<unknown>
 8008e7c: ffff ffff    	<unknown>
 8008e80: ffff ffff    	<unknown>
 8008e84: ffff ffff    	<unknown>
 8008e88: ffff ffff    	<unknown>
 8008e8c: ffff ffff    	<unknown>
 8008e90: ffff ffff    	<unknown>
 8008e94: ffff ffff    	<unknown>
 8008e98: ffff ffff    	<unknown>
 8008e9c: ffff ffff    	<unknown>
 8008ea0: ffff ffff    	<unknown>
 8008ea4: ffff ffff    	<unknown>
 8008ea8: ffff ffff    	<unknown>
 8008eac: ffff ffff    	<unknown>
 8008eb0: ffff ffff    	<unknown>
 8008eb4: ffff ffff    	<unknown>
 8008eb8: ffff ffff    	<unknown>
 8008ebc: ffff ffff    	<unknown>
 8008ec0: ffff ffff    	<unknown>
 8008ec4: ffff ffff    	<unknown>
 8008ec8: ffff ffff    	<unknown>
 8008ecc: ffff ffff    	<unknown>
 8008ed0: ffff ffff    	<unknown>
 8008ed4: ffff ffff    	<unknown>
 8008ed8: ffff ffff    	<unknown>
 8008edc: ffff ffff    	<unknown>
 8008ee0: ffff ffff    	<unknown>
 8008ee4: ffff ffff    	<unknown>
 8008ee8: ffff ffff    	<unknown>
 8008eec: ffff ffff    	<unknown>
 8008ef0: ffff ffff    	<unknown>
 8008ef4: ffff ffff    	<unknown>
 8008ef8: ffff ffff    	<unknown>
 8008efc: ffff ffff    	<unknown>
 8008f00: ffff ffff    	<unknown>
 8008f04: ffff ffff    	<unknown>
 8008f08: ffff ffff    	<unknown>
 8008f0c: ffff ffff    	<unknown>
 8008f10: ffff ffff    	<unknown>
 8008f14: ffff ffff    	<unknown>
 8008f18: ffff ffff    	<unknown>
 8008f1c: ffff ffff    	<unknown>
 8008f20: ffff ffff    	<unknown>
 8008f24: ffff ffff    	<unknown>
 8008f28: ffff ffff    	<unknown>
 8008f2c: ffff ffff    	<unknown>
 8008f30: ffff ffff    	<unknown>
 8008f34: ffff ffff    	<unknown>
 8008f38: ffff ffff    	<unknown>
 8008f3c: ffff ffff    	<unknown>
 8008f40: ffff ffff    	<unknown>
 8008f44: ffff ffff    	<unknown>
 8008f48: ffff ffff    	<unknown>
 8008f4c: ffff ffff    	<unknown>
 8008f50: ffff ffff    	<unknown>
 8008f54: ffff ffff    	<unknown>
 8008f58: ffff ffff    	<unknown>
 8008f5c: ffff ffff    	<unknown>
 8008f60: ffff ffff    	<unknown>
 8008f64: ffff ffff    	<unknown>
 8008f68: ffff ffff    	<unknown>
 8008f6c: ffff ffff    	<unknown>
 8008f70: ffff ffff    	<unknown>
 8008f74: ffff ffff    	<unknown>
 8008f78: ffff ffff    	<unknown>
 8008f7c: ffff ffff    	<unknown>
 8008f80: ffff ffff    	<unknown>
 8008f84: ffff ffff    	<unknown>
 8008f88: ffff ffff    	<unknown>
 8008f8c: ffff ffff    	<unknown>
 8008f90: ffff ffff    	<unknown>
 8008f94: ffff ffff    	<unknown>
 8008f98: ffff ffff    	<unknown>
 8008f9c: ffff ffff    	<unknown>
 8008fa0: ffff ffff    	<unknown>
 8008fa4: ffff ffff    	<unknown>
 8008fa8: ffff ffff    	<unknown>
 8008fac: ffff ffff    	<unknown>
 8008fb0: ffff ffff    	<unknown>
 8008fb4: ffff ffff    	<unknown>
 8008fb8: ffff ffff    	<unknown>
 8008fbc: ffff ffff    	<unknown>
 8008fc0: ffff ffff    	<unknown>
 8008fc4: ffff ffff    	<unknown>
 8008fc8: ffff ffff    	<unknown>
 8008fcc: ffff ffff    	<unknown>
 8008fd0: ffff ffff    	<unknown>
 8008fd4: ffff ffff    	<unknown>
 8008fd8: ffff ffff    	<unknown>
 8008fdc: ffff ffff    	<unknown>
 8008fe0: ffff ffff    	<unknown>
 8008fe4: ffff ffff    	<unknown>
 8008fe8: ffff ffff    	<unknown>
 8008fec: ffff ffff    	<unknown>
 8008ff0: ffff ffff    	<unknown>
 8008ff4: ffff ffff    	<unknown>
 8008ff8: ffff ffff    	<unknown>
 8008ffc: ffff ffff    	<unknown>
 8009000: ffff ffff    	<unknown>
 8009004: ffff ffff    	<unknown>
 8009008: ffff ffff    	<unknown>
 800900c: ffff ffff    	<unknown>
 8009010: ffff ffff    	<unknown>
 8009014: ffff ffff    	<unknown>
 8009018: ffff ffff    	<unknown>
 800901c: ffff ffff    	<unknown>
 8009020: ffff ffff    	<unknown>
 8009024: ffff ffff    	<unknown>
 8009028: ffff ffff    	<unknown>
 800902c: ffff ffff    	<unknown>
 8009030: ffff ffff    	<unknown>
 8009034: ffff ffff    	<unknown>
 8009038: ffff ffff    	<unknown>
 800903c: ffff ffff    	<unknown>
 8009040: ffff ffff    	<unknown>
 8009044: ffff ffff    	<unknown>
 8009048: ffff ffff    	<unknown>
 800904c: ffff ffff    	<unknown>
 8009050: ffff ffff    	<unknown>
 8009054: ffff ffff    	<unknown>
 8009058: ffff ffff    	<unknown>
 800905c: ffff ffff    	<unknown>
 8009060: ffff ffff    	<unknown>
 8009064: ffff ffff    	<unknown>
 8009068: ffff ffff    	<unknown>
 800906c: ffff ffff    	<unknown>
 8009070: ffff ffff    	<unknown>
 8009074: ffff ffff    	<unknown>
 8009078: ffff ffff    	<unknown>
 800907c: ffff ffff    	<unknown>
 8009080: ffff ffff    	<unknown>
 8009084: ffff ffff    	<unknown>
 8009088: ffff ffff    	<unknown>
 800908c: ffff ffff    	<unknown>
 8009090: ffff ffff    	<unknown>
 8009094: ffff ffff    	<unknown>
 8009098: ffff ffff    	<unknown>
 800909c: ffff ffff    	<unknown>
 80090a0: ffff ffff    	<unknown>
 80090a4: ffff ffff    	<unknown>
 80090a8: ffff ffff    	<unknown>
 80090ac: ffff ffff    	<unknown>
 80090b0: ffff ffff    	<unknown>
 80090b4: ffff ffff    	<unknown>
 80090b8: ffff ffff    	<unknown>
 80090bc: ffff ffff    	<unknown>
 80090c0: ffff ffff    	<unknown>
 80090c4: ffff ffff    	<unknown>
 80090c8: ffff ffff    	<unknown>
 80090cc: ffff ffff    	<unknown>
 80090d0: ffff ffff    	<unknown>
 80090d4: ffff ffff    	<unknown>
 80090d8: ffff ffff    	<unknown>
 80090dc: ffff ffff    	<unknown>
 80090e0: ffff ffff    	<unknown>
 80090e4: ffff ffff    	<unknown>
 80090e8: ffff ffff    	<unknown>
 80090ec: ffff ffff    	<unknown>
 80090f0: ffff ffff    	<unknown>
 80090f4: ffff ffff    	<unknown>
 80090f8: ffff ffff    	<unknown>
 80090fc: ffff ffff    	<unknown>
 8009100: ffff ffff    	<unknown>
 8009104: ffff ffff    	<unknown>
 8009108: ffff ffff    	<unknown>
 800910c: ffff ffff    	<unknown>
 8009110: ffff ffff    	<unknown>
 8009114: ffff ffff    	<unknown>
 8009118: ffff ffff    	<unknown>
 800911c: ffff ffff    	<unknown>
 8009120: ffff ffff    	<unknown>
 8009124: ffff ffff    	<unknown>
 8009128: ffff ffff    	<unknown>
 800912c: ffff ffff    	<unknown>
 8009130: ffff ffff    	<unknown>
 8009134: ffff ffff    	<unknown>
 8009138: ffff ffff    	<unknown>
 800913c: ffff ffff    	<unknown>
 8009140: ffff ffff    	<unknown>
 8009144: ffff ffff    	<unknown>
 8009148: ffff ffff    	<unknown>
 800914c: ffff ffff    	<unknown>
 8009150: ffff ffff    	<unknown>
 8009154: ffff ffff    	<unknown>
 8009158: ffff ffff    	<unknown>
 800915c: ffff ffff    	<unknown>
 8009160: ffff ffff    	<unknown>
 8009164: ffff ffff    	<unknown>
 8009168: ffff ffff    	<unknown>
 800916c: ffff ffff    	<unknown>
 8009170: ffff ffff    	<unknown>
 8009174: ffff ffff    	<unknown>
 8009178: ffff ffff    	<unknown>
 800917c: ffff ffff    	<unknown>
 8009180: ffff ffff    	<unknown>
 8009184: ffff ffff    	<unknown>
 8009188: ffff ffff    	<unknown>
 800918c: ffff ffff    	<unknown>
 8009190: ffff ffff    	<unknown>
 8009194: ffff ffff    	<unknown>
 8009198: ffff ffff    	<unknown>
 800919c: ffff ffff    	<unknown>
 80091a0: ffff ffff    	<unknown>
 80091a4: ffff ffff    	<unknown>
 80091a8: ffff ffff    	<unknown>
 80091ac: ffff ffff    	<unknown>
 80091b0: ffff ffff    	<unknown>
 80091b4: ffff ffff    	<unknown>
 80091b8: ffff ffff    	<unknown>
 80091bc: ffff ffff    	<unknown>
 80091c0: ffff ffff    	<unknown>
 80091c4: ffff ffff    	<unknown>
 80091c8: ffff ffff    	<unknown>
 80091cc: ffff ffff    	<unknown>
 80091d0: ffff ffff    	<unknown>
 80091d4: ffff ffff    	<unknown>
 80091d8: ffff ffff    	<unknown>
 80091dc: ffff ffff    	<unknown>
 80091e0: ffff ffff    	<unknown>
 80091e4: ffff ffff    	<unknown>
 80091e8: ffff ffff    	<unknown>
 80091ec: ffff ffff    	<unknown>
 80091f0: ffff ffff    	<unknown>
 80091f4: ffff ffff    	<unknown>
 80091f8: ffff ffff    	<unknown>
 80091fc: ffff ffff    	<unknown>
 8009200: ffff ffff    	<unknown>
 8009204: ffff ffff    	<unknown>
 8009208: ffff ffff    	<unknown>
 800920c: ffff ffff    	<unknown>
 8009210: ffff ffff    	<unknown>
 8009214: ffff ffff    	<unknown>
 8009218: ffff ffff    	<unknown>
 800921c: ffff ffff    	<unknown>
 8009220: ffff ffff    	<unknown>
 8009224: ffff ffff    	<unknown>
 8009228: ffff ffff    	<unknown>
 800922c: ffff ffff    	<unknown>
 8009230: ffff ffff    	<unknown>
 8009234: ffff ffff    	<unknown>
 8009238: ffff ffff    	<unknown>
 800923c: ffff ffff    	<unknown>
 8009240: ffff ffff    	<unknown>
 8009244: ffff ffff    	<unknown>
 8009248: ffff ffff    	<unknown>
 800924c: ffff ffff    	<unknown>
 8009250: ffff ffff    	<unknown>
 8009254: ffff ffff    	<unknown>
 8009258: ffff ffff    	<unknown>
 800925c: ffff ffff    	<unknown>
 8009260: ffff ffff    	<unknown>
 8009264: ffff ffff    	<unknown>
 8009268: ffff ffff    	<unknown>
 800926c: ffff ffff    	<unknown>
 8009270: ffff ffff    	<unknown>
 8009274: ffff ffff    	<unknown>
 8009278: ffff ffff    	<unknown>
 800927c: ffff ffff    	<unknown>
 8009280: ffff ffff    	<unknown>
 8009284: ffff ffff    	<unknown>
 8009288: ffff ffff    	<unknown>
 800928c: ffff ffff    	<unknown>
 8009290: ffff ffff    	<unknown>
 8009294: ffff ffff    	<unknown>
 8009298: ffff ffff    	<unknown>
 800929c: ffff ffff    	<unknown>
 80092a0: ffff ffff    	<unknown>
 80092a4: ffff ffff    	<unknown>
 80092a8: ffff ffff    	<unknown>
 80092ac: ffff ffff    	<unknown>
 80092b0: ffff ffff    	<unknown>
 80092b4: ffff ffff    	<unknown>
 80092b8: ffff ffff    	<unknown>
 80092bc: ffff ffff    	<unknown>
 80092c0: ffff ffff    	<unknown>
 80092c4: ffff ffff    	<unknown>
 80092c8: ffff ffff    	<unknown>
 80092cc: ffff ffff    	<unknown>
 80092d0: ffff ffff    	<unknown>
 80092d4: ffff ffff    	<unknown>
 80092d8: ffff ffff    	<unknown>
 80092dc: ffff ffff    	<unknown>
 80092e0: ffff ffff    	<unknown>
 80092e4: ffff ffff    	<unknown>
 80092e8: ffff ffff    	<unknown>
 80092ec: ffff ffff    	<unknown>
 80092f0: ffff ffff    	<unknown>
 80092f4: ffff ffff    	<unknown>
 80092f8: ffff ffff    	<unknown>
 80092fc: ffff ffff    	<unknown>
 8009300: ffff ffff    	<unknown>
 8009304: ffff ffff    	<unknown>
 8009308: ffff ffff    	<unknown>
 800930c: ffff ffff    	<unknown>
 8009310: ffff ffff    	<unknown>
 8009314: ffff ffff    	<unknown>
 8009318: ffff ffff    	<unknown>
 800931c: ffff ffff    	<unknown>
 8009320: ffff ffff    	<unknown>
 8009324: ffff ffff    	<unknown>
 8009328: ffff ffff    	<unknown>
 800932c: ffff ffff    	<unknown>
 8009330: ffff ffff    	<unknown>
 8009334: ffff ffff    	<unknown>
 8009338: ffff ffff    	<unknown>
 800933c: ffff ffff    	<unknown>
 8009340: ffff ffff    	<unknown>
 8009344: ffff ffff    	<unknown>
 8009348: ffff ffff    	<unknown>
 800934c: ffff ffff    	<unknown>
 8009350: ffff ffff    	<unknown>
 8009354: ffff ffff    	<unknown>
 8009358: ffff ffff    	<unknown>
 800935c: ffff ffff    	<unknown>
 8009360: ffff ffff    	<unknown>
 8009364: ffff ffff    	<unknown>
 8009368: ffff ffff    	<unknown>
 800936c: ffff ffff    	<unknown>
 8009370: ffff ffff    	<unknown>
 8009374: ffff ffff    	<unknown>
 8009378: ffff ffff    	<unknown>
 800937c: ffff ffff    	<unknown>
 8009380: ffff ffff    	<unknown>
 8009384: ffff ffff    	<unknown>
 8009388: ffff ffff    	<unknown>
 800938c: ffff ffff    	<unknown>
 8009390: ffff ffff    	<unknown>
 8009394: ffff ffff    	<unknown>
 8009398: ffff ffff    	<unknown>
 800939c: ffff ffff    	<unknown>
 80093a0: ffff ffff    	<unknown>
 80093a4: ffff ffff    	<unknown>
 80093a8: ffff ffff    	<unknown>
 80093ac: ffff ffff    	<unknown>
 80093b0: ffff ffff    	<unknown>
 80093b4: ffff ffff    	<unknown>
 80093b8: ffff ffff    	<unknown>
 80093bc: ffff ffff    	<unknown>
 80093c0: ffff ffff    	<unknown>
 80093c4: ffff ffff    	<unknown>
 80093c8: ffff ffff    	<unknown>
 80093cc: ffff ffff    	<unknown>
 80093d0: ffff ffff    	<unknown>
 80093d4: ffff ffff    	<unknown>
 80093d8: ffff ffff    	<unknown>
 80093dc: ffff ffff    	<unknown>
 80093e0: ffff ffff    	<unknown>
 80093e4: ffff ffff    	<unknown>
 80093e8: ffff ffff    	<unknown>
 80093ec: ffff ffff    	<unknown>
 80093f0: ffff ffff    	<unknown>
 80093f4: ffff ffff    	<unknown>
 80093f8: ffff ffff    	<unknown>
 80093fc: ffff ffff    	<unknown>
 8009400: ffff ffff    	<unknown>
 8009404: ffff ffff    	<unknown>
 8009408: ffff ffff    	<unknown>
 800940c: ffff ffff    	<unknown>
 8009410: ffff ffff    	<unknown>
 8009414: ffff ffff    	<unknown>
 8009418: ffff ffff    	<unknown>
 800941c: ffff ffff    	<unknown>
 8009420: ffff ffff    	<unknown>
 8009424: ffff ffff    	<unknown>
 8009428: ffff ffff    	<unknown>
 800942c: ffff ffff    	<unknown>
 8009430: ffff ffff    	<unknown>
 8009434: ffff ffff    	<unknown>
 8009438: ffff ffff    	<unknown>
 800943c: ffff ffff    	<unknown>
 8009440: ffff ffff    	<unknown>
 8009444: ffff ffff    	<unknown>
 8009448: ffff ffff    	<unknown>
 800944c: ffff ffff    	<unknown>
 8009450: ffff ffff    	<unknown>
 8009454: ffff ffff    	<unknown>
 8009458: ffff ffff    	<unknown>
 800945c: ffff ffff    	<unknown>
 8009460: ffff ffff    	<unknown>
 8009464: ffff ffff    	<unknown>
 8009468: ffff ffff    	<unknown>
 800946c: ffff ffff    	<unknown>
 8009470: ffff ffff    	<unknown>
 8009474: ffff ffff    	<unknown>
 8009478: ffff ffff    	<unknown>
 800947c: ffff ffff    	<unknown>
 8009480: ffff ffff    	<unknown>
 8009484: ffff ffff    	<unknown>
 8009488: ffff ffff    	<unknown>
 800948c: ffff ffff    	<unknown>
 8009490: ffff ffff    	<unknown>
 8009494: ffff ffff    	<unknown>
 8009498: ffff ffff    	<unknown>
 800949c: ffff ffff    	<unknown>
 80094a0: ffff ffff    	<unknown>
 80094a4: ffff ffff    	<unknown>
 80094a8: ffff ffff    	<unknown>
 80094ac: ffff ffff    	<unknown>
 80094b0: ffff ffff    	<unknown>
 80094b4: ffff ffff    	<unknown>
 80094b8: ffff ffff    	<unknown>
 80094bc: ffff ffff    	<unknown>
 80094c0: ffff ffff    	<unknown>
 80094c4: ffff ffff    	<unknown>
 80094c8: ffff ffff    	<unknown>
 80094cc: ffff ffff    	<unknown>
 80094d0: ffff ffff    	<unknown>
 80094d4: ffff ffff    	<unknown>
 80094d8: ffff ffff    	<unknown>
 80094dc: ffff ffff    	<unknown>
 80094e0: ffff ffff    	<unknown>
 80094e4: ffff ffff    	<unknown>
 80094e8: ffff ffff    	<unknown>
 80094ec: ffff ffff    	<unknown>
 80094f0: ffff ffff    	<unknown>
 80094f4: ffff ffff    	<unknown>
 80094f8: ffff ffff    	<unknown>
 80094fc: ffff ffff    	<unknown>
 8009500: ffff ffff    	<unknown>
 8009504: ffff ffff    	<unknown>
 8009508: ffff ffff    	<unknown>
 800950c: ffff ffff    	<unknown>
 8009510: ffff ffff    	<unknown>
 8009514: ffff ffff    	<unknown>
 8009518: ffff ffff    	<unknown>
 800951c: ffff ffff    	<unknown>
 8009520: ffff ffff    	<unknown>
 8009524: ffff ffff    	<unknown>
 8009528: ffff ffff    	<unknown>
 800952c: ffff ffff    	<unknown>
 8009530: ffff ffff    	<unknown>
 8009534: ffff ffff    	<unknown>
 8009538: ffff ffff    	<unknown>
 800953c: ffff ffff    	<unknown>
 8009540: ffff ffff    	<unknown>
 8009544: ffff ffff    	<unknown>
 8009548: ffff ffff    	<unknown>
 800954c: ffff ffff    	<unknown>
 8009550: ffff ffff    	<unknown>
 8009554: ffff ffff    	<unknown>
 8009558: ffff ffff    	<unknown>
 800955c: ffff ffff    	<unknown>
 8009560: ffff ffff    	<unknown>
 8009564: ffff ffff    	<unknown>
 8009568: ffff ffff    	<unknown>
 800956c: ffff ffff    	<unknown>
 8009570: ffff ffff    	<unknown>
 8009574: ffff ffff    	<unknown>
 8009578: ffff ffff    	<unknown>
 800957c: ffff ffff    	<unknown>
 8009580: ffff ffff    	<unknown>
 8009584: ffff ffff    	<unknown>
 8009588: ffff ffff    	<unknown>
 800958c: ffff ffff    	<unknown>
 8009590: ffff ffff    	<unknown>
 8009594: ffff ffff    	<unknown>
 8009598: ffff ffff    	<unknown>
 800959c: ffff ffff    	<unknown>
 80095a0: ffff ffff    	<unknown>
 80095a4: ffff ffff    	<unknown>
 80095a8: ffff ffff    	<unknown>
 80095ac: ffff ffff    	<unknown>
 80095b0: ffff ffff    	<unknown>
 80095b4: ffff ffff    	<unknown>
 80095b8: ffff ffff    	<unknown>
 80095bc: ffff ffff    	<unknown>
 80095c0: ffff ffff    	<unknown>
 80095c4: ffff ffff    	<unknown>
 80095c8: ffff ffff    	<unknown>
 80095cc: ffff ffff    	<unknown>
 80095d0: ffff ffff    	<unknown>
 80095d4: ffff ffff    	<unknown>
 80095d8: ffff ffff    	<unknown>
 80095dc: ffff ffff    	<unknown>
 80095e0: ffff ffff    	<unknown>
 80095e4: ffff ffff    	<unknown>
 80095e8: ffff ffff    	<unknown>
 80095ec: ffff ffff    	<unknown>
 80095f0: ffff ffff    	<unknown>
 80095f4: ffff ffff    	<unknown>
 80095f8: ffff ffff    	<unknown>
 80095fc: ffff ffff    	<unknown>
 8009600: ffff ffff    	<unknown>
 8009604: ffff ffff    	<unknown>
 8009608: ffff ffff    	<unknown>
 800960c: ffff ffff    	<unknown>
 8009610: ffff ffff    	<unknown>
 8009614: ffff ffff    	<unknown>
 8009618: ffff ffff    	<unknown>
 800961c: ffff ffff    	<unknown>
 8009620: ffff ffff    	<unknown>
 8009624: ffff ffff    	<unknown>
 8009628: ffff ffff    	<unknown>
 800962c: ffff ffff    	<unknown>
 8009630: ffff ffff    	<unknown>
 8009634: ffff ffff    	<unknown>
 8009638: ffff ffff    	<unknown>
 800963c: ffff ffff    	<unknown>
 8009640: ffff ffff    	<unknown>
 8009644: ffff ffff    	<unknown>
 8009648: ffff ffff    	<unknown>
 800964c: ffff ffff    	<unknown>
 8009650: ffff ffff    	<unknown>
 8009654: ffff ffff    	<unknown>
 8009658: ffff ffff    	<unknown>
 800965c: ffff ffff    	<unknown>
 8009660: ffff ffff    	<unknown>
 8009664: ffff ffff    	<unknown>
 8009668: ffff ffff    	<unknown>
 800966c: ffff ffff    	<unknown>
 8009670: ffff ffff    	<unknown>
 8009674: ffff ffff    	<unknown>
 8009678: ffff ffff    	<unknown>
 800967c: ffff ffff    	<unknown>
 8009680: ffff ffff    	<unknown>
 8009684: ffff ffff    	<unknown>
 8009688: ffff ffff    	<unknown>
 800968c: ffff ffff    	<unknown>
 8009690: ffff ffff    	<unknown>
 8009694: ffff ffff    	<unknown>
 8009698: ffff ffff    	<unknown>
 800969c: ffff ffff    	<unknown>
 80096a0: ffff ffff    	<unknown>
 80096a4: ffff ffff    	<unknown>
 80096a8: ffff ffff    	<unknown>
 80096ac: ffff ffff    	<unknown>
 80096b0: ffff ffff    	<unknown>
 80096b4: ffff ffff    	<unknown>
 80096b8: ffff ffff    	<unknown>
 80096bc: ffff ffff    	<unknown>
 80096c0: ffff ffff    	<unknown>
 80096c4: ffff ffff    	<unknown>
 80096c8: ffff ffff    	<unknown>
 80096cc: ffff ffff    	<unknown>
 80096d0: ffff ffff    	<unknown>
 80096d4: ffff ffff    	<unknown>
 80096d8: ffff ffff    	<unknown>
 80096dc: ffff ffff    	<unknown>
 80096e0: ffff ffff    	<unknown>
 80096e4: ffff ffff    	<unknown>
 80096e8: ffff ffff    	<unknown>
 80096ec: ffff ffff    	<unknown>
 80096f0: ffff ffff    	<unknown>
 80096f4: ffff ffff    	<unknown>
 80096f8: ffff ffff    	<unknown>
 80096fc: ffff ffff    	<unknown>
 8009700: ffff ffff    	<unknown>
 8009704: ffff ffff    	<unknown>
 8009708: ffff ffff    	<unknown>
 800970c: ffff ffff    	<unknown>
 8009710: ffff ffff    	<unknown>
 8009714: ffff ffff    	<unknown>
 8009718: ffff ffff    	<unknown>
 800971c: ffff ffff    	<unknown>
 8009720: ffff ffff    	<unknown>
 8009724: ffff ffff    	<unknown>
 8009728: ffff ffff    	<unknown>
 800972c: ffff ffff    	<unknown>
 8009730: ffff ffff    	<unknown>
 8009734: ffff ffff    	<unknown>
 8009738: ffff ffff    	<unknown>
 800973c: ffff ffff    	<unknown>
 8009740: ffff ffff    	<unknown>
 8009744: ffff ffff    	<unknown>
 8009748: ffff ffff    	<unknown>
 800974c: ffff ffff    	<unknown>
 8009750: ffff ffff    	<unknown>
 8009754: ffff ffff    	<unknown>
 8009758: ffff ffff    	<unknown>
 800975c: ffff ffff    	<unknown>
 8009760: ffff ffff    	<unknown>
 8009764: ffff ffff    	<unknown>
 8009768: ffff ffff    	<unknown>
 800976c: ffff ffff    	<unknown>
 8009770: ffff ffff    	<unknown>
 8009774: ffff ffff    	<unknown>
 8009778: ffff ffff    	<unknown>
 800977c: ffff ffff    	<unknown>
 8009780: ffff ffff    	<unknown>
 8009784: ffff ffff    	<unknown>
 8009788: ffff ffff    	<unknown>
 800978c: ffff ffff    	<unknown>
 8009790: ffff ffff    	<unknown>
 8009794: ffff ffff    	<unknown>
 8009798: ffff ffff    	<unknown>
 800979c: ffff ffff    	<unknown>
 80097a0: ffff ffff    	<unknown>
 80097a4: ffff ffff    	<unknown>
 80097a8: ffff ffff    	<unknown>
 80097ac: ffff ffff    	<unknown>
 80097b0: ffff ffff    	<unknown>
 80097b4: ffff ffff    	<unknown>
 80097b8: ffff ffff    	<unknown>
 80097bc: ffff ffff    	<unknown>
 80097c0: ffff ffff    	<unknown>
 80097c4: ffff ffff    	<unknown>
 80097c8: ffff ffff    	<unknown>
 80097cc: ffff ffff    	<unknown>
 80097d0: ffff ffff    	<unknown>
 80097d4: ffff ffff    	<unknown>
 80097d8: ffff ffff    	<unknown>
 80097dc: ffff ffff    	<unknown>
 80097e0: ffff ffff    	<unknown>
 80097e4: ffff ffff    	<unknown>
 80097e8: ffff ffff    	<unknown>
 80097ec: ffff ffff    	<unknown>
 80097f0: ffff ffff    	<unknown>
 80097f4: ffff ffff    	<unknown>
 80097f8: ffff ffff    	<unknown>
 80097fc: ffff ffff    	<unknown>
 8009800: ffff ffff    	<unknown>
 8009804: ffff ffff    	<unknown>
 8009808: ffff ffff    	<unknown>
 800980c: ffff ffff    	<unknown>
 8009810: ffff ffff    	<unknown>
 8009814: ffff ffff    	<unknown>
 8009818: ffff ffff    	<unknown>
 800981c: ffff ffff    	<unknown>
 8009820: ffff ffff    	<unknown>
 8009824: ffff ffff    	<unknown>
 8009828: ffff ffff    	<unknown>
 800982c: ffff ffff    	<unknown>
 8009830: ffff ffff    	<unknown>
 8009834: ffff ffff    	<unknown>
 8009838: ffff ffff    	<unknown>
 800983c: ffff ffff    	<unknown>
 8009840: ffff ffff    	<unknown>
 8009844: ffff ffff    	<unknown>
 8009848: ffff ffff    	<unknown>
 800984c: ffff ffff    	<unknown>
 8009850: ffff ffff    	<unknown>
 8009854: ffff ffff    	<unknown>
 8009858: ffff ffff    	<unknown>
 800985c: ffff ffff    	<unknown>
 8009860: ffff ffff    	<unknown>
 8009864: ffff ffff    	<unknown>
 8009868: ffff ffff    	<unknown>
 800986c: ffff ffff    	<unknown>
 8009870: ffff ffff    	<unknown>
 8009874: ffff ffff    	<unknown>
 8009878: ffff ffff    	<unknown>
 800987c: ffff ffff    	<unknown>
 8009880: ffff ffff    	<unknown>
 8009884: ffff ffff    	<unknown>
 8009888: ffff ffff    	<unknown>
 800988c: ffff ffff    	<unknown>
 8009890: ffff ffff    	<unknown>
 8009894: ffff ffff    	<unknown>
 8009898: ffff ffff    	<unknown>
 800989c: ffff ffff    	<unknown>
 80098a0: ffff ffff    	<unknown>
 80098a4: ffff ffff    	<unknown>
 80098a8: ffff ffff    	<unknown>
 80098ac: ffff ffff    	<unknown>
 80098b0: ffff ffff    	<unknown>
 80098b4: ffff ffff    	<unknown>
 80098b8: ffff ffff    	<unknown>
 80098bc: ffff ffff    	<unknown>
 80098c0: ffff ffff    	<unknown>
 80098c4: ffff ffff    	<unknown>
 80098c8: ffff ffff    	<unknown>
 80098cc: ffff ffff    	<unknown>
 80098d0: ffff ffff    	<unknown>
 80098d4: ffff ffff    	<unknown>
 80098d8: ffff ffff    	<unknown>
 80098dc: ffff ffff    	<unknown>
 80098e0: ffff ffff    	<unknown>
 80098e4: ffff ffff    	<unknown>
 80098e8: ffff ffff    	<unknown>
 80098ec: ffff ffff    	<unknown>
 80098f0: ffff ffff    	<unknown>
 80098f4: ffff ffff    	<unknown>
 80098f8: ffff ffff    	<unknown>
 80098fc: ffff ffff    	<unknown>
 8009900: ffff ffff    	<unknown>
 8009904: ffff ffff    	<unknown>
 8009908: ffff ffff    	<unknown>
 800990c: ffff ffff    	<unknown>
 8009910: ffff ffff    	<unknown>
 8009914: ffff ffff    	<unknown>
 8009918: ffff ffff    	<unknown>
 800991c: ffff ffff    	<unknown>
 8009920: ffff ffff    	<unknown>
 8009924: ffff ffff    	<unknown>
 8009928: ffff ffff    	<unknown>
 800992c: ffff ffff    	<unknown>
 8009930: ffff ffff    	<unknown>
 8009934: ffff ffff    	<unknown>
 8009938: ffff ffff    	<unknown>
 800993c: ffff ffff    	<unknown>
 8009940: ffff ffff    	<unknown>
 8009944: ffff ffff    	<unknown>
 8009948: ffff ffff    	<unknown>
 800994c: ffff ffff    	<unknown>
 8009950: ffff ffff    	<unknown>
 8009954: ffff ffff    	<unknown>
 8009958: ffff ffff    	<unknown>
 800995c: ffff ffff    	<unknown>
 8009960: ffff ffff    	<unknown>
 8009964: ffff ffff    	<unknown>
 8009968: ffff ffff    	<unknown>
 800996c: ffff ffff    	<unknown>
 8009970: ffff ffff    	<unknown>
 8009974: ffff ffff    	<unknown>
 8009978: ffff ffff    	<unknown>
 800997c: ffff ffff    	<unknown>
 8009980: ffff ffff    	<unknown>
 8009984: ffff ffff    	<unknown>
 8009988: ffff ffff    	<unknown>
 800998c: ffff ffff    	<unknown>
 8009990: ffff ffff    	<unknown>
 8009994: ffff ffff    	<unknown>
 8009998: ffff ffff    	<unknown>
 800999c: ffff ffff    	<unknown>
 80099a0: ffff ffff    	<unknown>
 80099a4: ffff ffff    	<unknown>
 80099a8: ffff ffff    	<unknown>
 80099ac: ffff ffff    	<unknown>
 80099b0: ffff ffff    	<unknown>
 80099b4: ffff ffff    	<unknown>
 80099b8: ffff ffff    	<unknown>
 80099bc: ffff ffff    	<unknown>
 80099c0: ffff ffff    	<unknown>
 80099c4: ffff ffff    	<unknown>
 80099c8: ffff ffff    	<unknown>
 80099cc: ffff ffff    	<unknown>
 80099d0: ffff ffff    	<unknown>
 80099d4: ffff ffff    	<unknown>
 80099d8: ffff ffff    	<unknown>
 80099dc: ffff ffff    	<unknown>
 80099e0: ffff ffff    	<unknown>
 80099e4: ffff ffff    	<unknown>
 80099e8: ffff ffff    	<unknown>
 80099ec: ffff ffff    	<unknown>
 80099f0: ffff ffff    	<unknown>
 80099f4: ffff ffff    	<unknown>
 80099f8: ffff ffff    	<unknown>
 80099fc: ffff ffff    	<unknown>
 8009a00: ffff ffff    	<unknown>
 8009a04: ffff ffff    	<unknown>
 8009a08: ffff ffff    	<unknown>
 8009a0c: ffff ffff    	<unknown>
 8009a10: ffff ffff    	<unknown>
 8009a14: ffff ffff    	<unknown>
 8009a18: ffff ffff    	<unknown>
 8009a1c: ffff ffff    	<unknown>
 8009a20: ffff ffff    	<unknown>
 8009a24: ffff ffff    	<unknown>
 8009a28: ffff ffff    	<unknown>
 8009a2c: ffff ffff    	<unknown>
 8009a30: ffff ffff    	<unknown>
 8009a34: ffff ffff    	<unknown>
 8009a38: ffff ffff    	<unknown>
 8009a3c: ffff ffff    	<unknown>
 8009a40: ffff ffff    	<unknown>
 8009a44: ffff ffff    	<unknown>
 8009a48: ffff ffff    	<unknown>
 8009a4c: ffff ffff    	<unknown>
 8009a50: ffff ffff    	<unknown>
 8009a54: ffff ffff    	<unknown>
 8009a58: ffff ffff    	<unknown>
 8009a5c: ffff ffff    	<unknown>
 8009a60: ffff ffff    	<unknown>
 8009a64: ffff ffff    	<unknown>
 8009a68: ffff ffff    	<unknown>
 8009a6c: ffff ffff    	<unknown>
 8009a70: ffff ffff    	<unknown>
 8009a74: ffff ffff    	<unknown>
 8009a78: ffff ffff    	<unknown>
 8009a7c: ffff ffff    	<unknown>
 8009a80: ffff ffff    	<unknown>
 8009a84: ffff ffff    	<unknown>
 8009a88: ffff ffff    	<unknown>
 8009a8c: ffff ffff    	<unknown>
 8009a90: ffff ffff    	<unknown>
 8009a94: ffff ffff    	<unknown>
 8009a98: ffff ffff    	<unknown>
 8009a9c: ffff ffff    	<unknown>
 8009aa0: ffff ffff    	<unknown>
 8009aa4: ffff ffff    	<unknown>
 8009aa8: ffff ffff    	<unknown>
 8009aac: ffff ffff    	<unknown>
 8009ab0: ffff ffff    	<unknown>
 8009ab4: ffff ffff    	<unknown>
 8009ab8: ffff ffff    	<unknown>
 8009abc: ffff ffff    	<unknown>
 8009ac0: ffff ffff    	<unknown>
 8009ac4: ffff ffff    	<unknown>
 8009ac8: ffff ffff    	<unknown>
 8009acc: ffff ffff    	<unknown>
 8009ad0: ffff ffff    	<unknown>
 8009ad4: ffff ffff    	<unknown>
 8009ad8: ffff ffff    	<unknown>
 8009adc: ffff ffff    	<unknown>
 8009ae0: ffff ffff    	<unknown>
 8009ae4: ffff ffff    	<unknown>
 8009ae8: ffff ffff    	<unknown>
 8009aec: ffff ffff    	<unknown>
 8009af0: ffff ffff    	<unknown>
 8009af4: ffff ffff    	<unknown>
 8009af8: ffff ffff    	<unknown>
 8009afc: ffff ffff    	<unknown>
 8009b00: ffff ffff    	<unknown>
 8009b04: ffff ffff    	<unknown>
 8009b08: ffff ffff    	<unknown>
 8009b0c: ffff ffff    	<unknown>
 8009b10: ffff ffff    	<unknown>
 8009b14: ffff ffff    	<unknown>
 8009b18: ffff ffff    	<unknown>
 8009b1c: ffff ffff    	<unknown>
 8009b20: ffff ffff    	<unknown>
 8009b24: ffff ffff    	<unknown>
 8009b28: ffff ffff    	<unknown>
 8009b2c: ffff ffff    	<unknown>
 8009b30: ffff ffff    	<unknown>
 8009b34: ffff ffff    	<unknown>
 8009b38: ffff ffff    	<unknown>
 8009b3c: ffff ffff    	<unknown>
 8009b40: ffff ffff    	<unknown>
 8009b44: ffff ffff    	<unknown>
 8009b48: ffff ffff    	<unknown>
 8009b4c: ffff ffff    	<unknown>
 8009b50: ffff ffff    	<unknown>
 8009b54: ffff ffff    	<unknown>
 8009b58: ffff ffff    	<unknown>
 8009b5c: ffff ffff    	<unknown>
 8009b60: ffff ffff    	<unknown>
 8009b64: ffff ffff    	<unknown>
 8009b68: ffff ffff    	<unknown>
 8009b6c: ffff ffff    	<unknown>
 8009b70: ffff ffff    	<unknown>
 8009b74: ffff ffff    	<unknown>
 8009b78: ffff ffff    	<unknown>
 8009b7c: ffff ffff    	<unknown>
 8009b80: ffff ffff    	<unknown>
 8009b84: ffff ffff    	<unknown>
 8009b88: ffff ffff    	<unknown>
 8009b8c: ffff ffff    	<unknown>
 8009b90: ffff ffff    	<unknown>
 8009b94: ffff ffff    	<unknown>
 8009b98: ffff ffff    	<unknown>
 8009b9c: ffff ffff    	<unknown>
 8009ba0: ffff ffff    	<unknown>
 8009ba4: ffff ffff    	<unknown>
 8009ba8: ffff ffff    	<unknown>
 8009bac: ffff ffff    	<unknown>
 8009bb0: ffff ffff    	<unknown>
 8009bb4: ffff ffff    	<unknown>
 8009bb8: ffff ffff    	<unknown>
 8009bbc: ffff ffff    	<unknown>
 8009bc0: ffff ffff    	<unknown>
 8009bc4: ffff ffff    	<unknown>
 8009bc8: ffff ffff    	<unknown>
 8009bcc: ffff ffff    	<unknown>
 8009bd0: ffff ffff    	<unknown>
 8009bd4: ffff ffff    	<unknown>
 8009bd8: ffff ffff    	<unknown>
 8009bdc: ffff ffff    	<unknown>
 8009be0: ffff ffff    	<unknown>
 8009be4: ffff ffff    	<unknown>
 8009be8: ffff ffff    	<unknown>
 8009bec: ffff ffff    	<unknown>
 8009bf0: ffff ffff    	<unknown>
 8009bf4: ffff ffff    	<unknown>
 8009bf8: ffff ffff    	<unknown>
 8009bfc: ffff ffff    	<unknown>
 8009c00: ffff ffff    	<unknown>
 8009c04: ffff ffff    	<unknown>
 8009c08: ffff ffff    	<unknown>
 8009c0c: ffff ffff    	<unknown>
 8009c10: ffff ffff    	<unknown>
 8009c14: ffff ffff    	<unknown>
 8009c18: ffff ffff    	<unknown>
 8009c1c: ffff ffff    	<unknown>
 8009c20: ffff ffff    	<unknown>
 8009c24: ffff ffff    	<unknown>
 8009c28: ffff ffff    	<unknown>
 8009c2c: ffff ffff    	<unknown>
 8009c30: ffff ffff    	<unknown>
 8009c34: ffff ffff    	<unknown>
 8009c38: ffff ffff    	<unknown>
 8009c3c: ffff ffff    	<unknown>
 8009c40: ffff ffff    	<unknown>
 8009c44: ffff ffff    	<unknown>
 8009c48: ffff ffff    	<unknown>
 8009c4c: ffff ffff    	<unknown>
 8009c50: ffff ffff    	<unknown>
 8009c54: ffff ffff    	<unknown>
 8009c58: ffff ffff    	<unknown>
 8009c5c: ffff ffff    	<unknown>
 8009c60: ffff ffff    	<unknown>
 8009c64: ffff ffff    	<unknown>
 8009c68: ffff ffff    	<unknown>
 8009c6c: ffff ffff    	<unknown>
 8009c70: ffff ffff    	<unknown>
 8009c74: ffff ffff    	<unknown>
 8009c78: ffff ffff    	<unknown>
 8009c7c: ffff ffff    	<unknown>
 8009c80: ffff ffff    	<unknown>
 8009c84: ffff ffff    	<unknown>
 8009c88: ffff ffff    	<unknown>
 8009c8c: ffff ffff    	<unknown>
 8009c90: ffff ffff    	<unknown>
 8009c94: ffff ffff    	<unknown>
 8009c98: ffff ffff    	<unknown>
 8009c9c: ffff ffff    	<unknown>
 8009ca0: ffff ffff    	<unknown>
 8009ca4: ffff ffff    	<unknown>
 8009ca8: ffff ffff    	<unknown>
 8009cac: ffff ffff    	<unknown>
 8009cb0: ffff ffff    	<unknown>
 8009cb4: ffff ffff    	<unknown>
 8009cb8: ffff ffff    	<unknown>
 8009cbc: ffff ffff    	<unknown>
 8009cc0: ffff ffff    	<unknown>
 8009cc4: ffff ffff    	<unknown>
 8009cc8: ffff ffff    	<unknown>
 8009ccc: ffff ffff    	<unknown>
 8009cd0: ffff ffff    	<unknown>
 8009cd4: ffff ffff    	<unknown>
 8009cd8: ffff ffff    	<unknown>
 8009cdc: ffff ffff    	<unknown>
 8009ce0: ffff ffff    	<unknown>
 8009ce4: ffff ffff    	<unknown>
 8009ce8: ffff ffff    	<unknown>
 8009cec: ffff ffff    	<unknown>
 8009cf0: ffff ffff    	<unknown>
 8009cf4: ffff ffff    	<unknown>
 8009cf8: ffff ffff    	<unknown>
 8009cfc: ffff ffff    	<unknown>
 8009d00: ffff ffff    	<unknown>
 8009d04: ffff ffff    	<unknown>
 8009d08: ffff ffff    	<unknown>
 8009d0c: ffff ffff    	<unknown>
 8009d10: ffff ffff    	<unknown>
 8009d14: ffff ffff    	<unknown>
 8009d18: ffff ffff    	<unknown>
 8009d1c: ffff ffff    	<unknown>
 8009d20: ffff ffff    	<unknown>
 8009d24: ffff ffff    	<unknown>
 8009d28: ffff ffff    	<unknown>
 8009d2c: ffff ffff    	<unknown>
 8009d30: ffff ffff    	<unknown>
 8009d34: ffff ffff    	<unknown>
 8009d38: ffff ffff    	<unknown>
 8009d3c: ffff ffff    	<unknown>
 8009d40: ffff ffff    	<unknown>
 8009d44: ffff ffff    	<unknown>
 8009d48: ffff ffff    	<unknown>
 8009d4c: ffff ffff    	<unknown>
 8009d50: ffff ffff    	<unknown>
 8009d54: ffff ffff    	<unknown>
 8009d58: ffff ffff    	<unknown>
 8009d5c: ffff ffff    	<unknown>
 8009d60: ffff ffff    	<unknown>
 8009d64: ffff ffff    	<unknown>
 8009d68: ffff ffff    	<unknown>
 8009d6c: ffff ffff    	<unknown>
 8009d70: ffff ffff    	<unknown>
 8009d74: ffff ffff    	<unknown>
 8009d78: ffff ffff    	<unknown>
 8009d7c: ffff ffff    	<unknown>
 8009d80: ffff ffff    	<unknown>
 8009d84: ffff ffff    	<unknown>
 8009d88: ffff ffff    	<unknown>
 8009d8c: ffff ffff    	<unknown>
 8009d90: ffff ffff    	<unknown>
 8009d94: ffff ffff    	<unknown>
 8009d98: ffff ffff    	<unknown>
 8009d9c: ffff ffff    	<unknown>
 8009da0: ffff ffff    	<unknown>
 8009da4: ffff ffff    	<unknown>
 8009da8: ffff ffff    	<unknown>
 8009dac: ffff ffff    	<unknown>
 8009db0: ffff ffff    	<unknown>
 8009db4: ffff ffff    	<unknown>
 8009db8: ffff ffff    	<unknown>
 8009dbc: ffff ffff    	<unknown>
 8009dc0: ffff ffff    	<unknown>
 8009dc4: ffff ffff    	<unknown>
 8009dc8: ffff ffff    	<unknown>
 8009dcc: ffff ffff    	<unknown>
 8009dd0: ffff ffff    	<unknown>
 8009dd4: ffff ffff    	<unknown>
 8009dd8: ffff ffff    	<unknown>
 8009ddc: ffff ffff    	<unknown>
 8009de0: ffff ffff    	<unknown>
 8009de4: ffff ffff    	<unknown>
 8009de8: ffff ffff    	<unknown>
 8009dec: ffff ffff    	<unknown>
 8009df0: ffff ffff    	<unknown>
 8009df4: ffff ffff    	<unknown>
 8009df8: ffff ffff    	<unknown>
 8009dfc: ffff ffff    	<unknown>
 8009e00: ffff ffff    	<unknown>
 8009e04: ffff ffff    	<unknown>
 8009e08: ffff ffff    	<unknown>
 8009e0c: ffff ffff    	<unknown>
 8009e10: ffff ffff    	<unknown>
 8009e14: ffff ffff    	<unknown>
 8009e18: ffff ffff    	<unknown>
 8009e1c: ffff ffff    	<unknown>
 8009e20: ffff ffff    	<unknown>
 8009e24: ffff ffff    	<unknown>
 8009e28: ffff ffff    	<unknown>
 8009e2c: ffff ffff    	<unknown>
 8009e30: ffff ffff    	<unknown>
 8009e34: ffff ffff    	<unknown>
 8009e38: ffff ffff    	<unknown>
 8009e3c: ffff ffff    	<unknown>
 8009e40: ffff ffff    	<unknown>
 8009e44: ffff ffff    	<unknown>
 8009e48: ffff ffff    	<unknown>
 8009e4c: ffff ffff    	<unknown>
 8009e50: ffff ffff    	<unknown>
 8009e54: ffff ffff    	<unknown>
 8009e58: ffff ffff    	<unknown>
 8009e5c: ffff ffff    	<unknown>
 8009e60: ffff ffff    	<unknown>
 8009e64: ffff ffff    	<unknown>
 8009e68: ffff ffff    	<unknown>
 8009e6c: ffff ffff    	<unknown>
 8009e70: ffff ffff    	<unknown>
 8009e74: ffff ffff    	<unknown>
 8009e78: ffff ffff    	<unknown>
 8009e7c: ffff ffff    	<unknown>
 8009e80: ffff ffff    	<unknown>
 8009e84: ffff ffff    	<unknown>
 8009e88: ffff ffff    	<unknown>
 8009e8c: ffff ffff    	<unknown>
 8009e90: ffff ffff    	<unknown>
 8009e94: ffff ffff    	<unknown>
 8009e98: ffff ffff    	<unknown>
 8009e9c: ffff ffff    	<unknown>
 8009ea0: ffff ffff    	<unknown>
 8009ea4: ffff ffff    	<unknown>
 8009ea8: ffff ffff    	<unknown>
 8009eac: ffff ffff    	<unknown>
 8009eb0: ffff ffff    	<unknown>
 8009eb4: ffff ffff    	<unknown>
 8009eb8: ffff ffff    	<unknown>
 8009ebc: ffff ffff    	<unknown>
 8009ec0: ffff ffff    	<unknown>
 8009ec4: ffff ffff    	<unknown>
 8009ec8: ffff ffff    	<unknown>
 8009ecc: ffff ffff    	<unknown>
 8009ed0: ffff ffff    	<unknown>
 8009ed4: ffff ffff    	<unknown>
 8009ed8: ffff ffff    	<unknown>
 8009edc: ffff ffff    	<unknown>
 8009ee0: ffff ffff    	<unknown>
 8009ee4: ffff ffff    	<unknown>
 8009ee8: ffff ffff    	<unknown>
 8009eec: ffff ffff    	<unknown>
 8009ef0: ffff ffff    	<unknown>
 8009ef4: ffff ffff    	<unknown>
 8009ef8: ffff ffff    	<unknown>
 8009efc: ffff ffff    	<unknown>
 8009f00: ffff ffff    	<unknown>
 8009f04: ffff ffff    	<unknown>
 8009f08: ffff ffff    	<unknown>
 8009f0c: ffff ffff    	<unknown>
 8009f10: ffff ffff    	<unknown>
 8009f14: ffff ffff    	<unknown>
 8009f18: ffff ffff    	<unknown>
 8009f1c: ffff ffff    	<unknown>
 8009f20: ffff ffff    	<unknown>
 8009f24: ffff ffff    	<unknown>
 8009f28: ffff ffff    	<unknown>
 8009f2c: ffff ffff    	<unknown>
 8009f30: ffff ffff    	<unknown>
 8009f34: ffff ffff    	<unknown>
 8009f38: ffff ffff    	<unknown>
 8009f3c: ffff ffff    	<unknown>
 8009f40: ffff ffff    	<unknown>
 8009f44: ffff ffff    	<unknown>
 8009f48: ffff ffff    	<unknown>
 8009f4c: ffff ffff    	<unknown>
 8009f50: ffff ffff    	<unknown>
 8009f54: ffff ffff    	<unknown>
 8009f58: ffff ffff    	<unknown>
 8009f5c: ffff ffff    	<unknown>
 8009f60: ffff ffff    	<unknown>
 8009f64: ffff ffff    	<unknown>
 8009f68: ffff ffff    	<unknown>
 8009f6c: ffff ffff    	<unknown>
 8009f70: ffff ffff    	<unknown>
 8009f74: ffff ffff    	<unknown>
 8009f78: ffff ffff    	<unknown>
 8009f7c: ffff ffff    	<unknown>
 8009f80: ffff ffff    	<unknown>
 8009f84: ffff ffff    	<unknown>
 8009f88: ffff ffff    	<unknown>
 8009f8c: ffff ffff    	<unknown>
 8009f90: ffff ffff    	<unknown>
 8009f94: ffff ffff    	<unknown>
 8009f98: ffff ffff    	<unknown>
 8009f9c: ffff ffff    	<unknown>
 8009fa0: ffff ffff    	<unknown>
 8009fa4: ffff ffff    	<unknown>
 8009fa8: ffff ffff    	<unknown>
 8009fac: ffff ffff    	<unknown>
 8009fb0: ffff ffff    	<unknown>
 8009fb4: ffff ffff    	<unknown>
 8009fb8: ffff ffff    	<unknown>
 8009fbc: ffff ffff    	<unknown>
 8009fc0: ffff ffff    	<unknown>
 8009fc4: ffff ffff    	<unknown>
 8009fc8: ffff ffff    	<unknown>
 8009fcc: ffff ffff    	<unknown>
 8009fd0: ffff ffff    	<unknown>
 8009fd4: ffff ffff    	<unknown>
 8009fd8: ffff ffff    	<unknown>
 8009fdc: ffff ffff    	<unknown>
 8009fe0: ffff ffff    	<unknown>
 8009fe4: ffff ffff    	<unknown>
 8009fe8: ffff ffff    	<unknown>
 8009fec: ffff ffff    	<unknown>
 8009ff0: ffff ffff    	<unknown>
 8009ff4: ffff ffff    	<unknown>
 8009ff8: ffff ffff    	<unknown>
 8009ffc: ffff ffff    	<unknown>
 800a000: ffff ffff    	<unknown>
 800a004: ffff ffff    	<unknown>
 800a008: ffff ffff    	<unknown>
 800a00c: ffff ffff    	<unknown>
 800a010: ffff ffff    	<unknown>
 800a014: ffff ffff    	<unknown>
 800a018: ffff ffff    	<unknown>
 800a01c: ffff ffff    	<unknown>
 800a020: ffff ffff    	<unknown>
 800a024: ffff ffff    	<unknown>
 800a028: ffff ffff    	<unknown>
 800a02c: ffff ffff    	<unknown>
 800a030: ffff ffff    	<unknown>
 800a034: ffff ffff    	<unknown>
 800a038: ffff ffff    	<unknown>
 800a03c: ffff ffff    	<unknown>
 800a040: ffff ffff    	<unknown>
 800a044: ffff ffff    	<unknown>
 800a048: ffff ffff    	<unknown>
 800a04c: ffff ffff    	<unknown>
 800a050: ffff ffff    	<unknown>
 800a054: ffff ffff    	<unknown>
 800a058: ffff ffff    	<unknown>
 800a05c: ffff ffff    	<unknown>
 800a060: ffff ffff    	<unknown>
 800a064: ffff ffff    	<unknown>
 800a068: ffff ffff    	<unknown>
 800a06c: ffff ffff    	<unknown>
 800a070: ffff ffff    	<unknown>
 800a074: ffff ffff    	<unknown>
 800a078: ffff ffff    	<unknown>
 800a07c: ffff ffff    	<unknown>
 800a080: ffff ffff    	<unknown>
 800a084: ffff ffff    	<unknown>
 800a088: ffff ffff    	<unknown>
 800a08c: ffff ffff    	<unknown>
 800a090: ffff ffff    	<unknown>
 800a094: ffff ffff    	<unknown>
 800a098: ffff ffff    	<unknown>
 800a09c: ffff ffff    	<unknown>
 800a0a0: ffff ffff    	<unknown>
 800a0a4: ffff ffff    	<unknown>
 800a0a8: ffff ffff    	<unknown>
 800a0ac: ffff ffff    	<unknown>
 800a0b0: ffff ffff    	<unknown>
 800a0b4: ffff ffff    	<unknown>
 800a0b8: ffff ffff    	<unknown>
 800a0bc: ffff ffff    	<unknown>
 800a0c0: ffff ffff    	<unknown>
 800a0c4: ffff ffff    	<unknown>
 800a0c8: ffff ffff    	<unknown>
 800a0cc: ffff ffff    	<unknown>
 800a0d0: ffff ffff    	<unknown>
 800a0d4: ffff ffff    	<unknown>
 800a0d8: ffff ffff    	<unknown>
 800a0dc: ffff ffff    	<unknown>
 800a0e0: ffff ffff    	<unknown>
 800a0e4: ffff ffff    	<unknown>
 800a0e8: ffff ffff    	<unknown>
 800a0ec: ffff ffff    	<unknown>
 800a0f0: ffff ffff    	<unknown>
 800a0f4: ffff ffff    	<unknown>
 800a0f8: ffff ffff    	<unknown>
 800a0fc: ffff ffff    	<unknown>
 800a100: ffff ffff    	<unknown>
 800a104: ffff ffff    	<unknown>
 800a108: ffff ffff    	<unknown>
 800a10c: ffff ffff    	<unknown>
 800a110: ffff ffff    	<unknown>
 800a114: ffff ffff    	<unknown>
 800a118: ffff ffff    	<unknown>
 800a11c: ffff ffff    	<unknown>
 800a120: ffff ffff    	<unknown>
 800a124: ffff ffff    	<unknown>
 800a128: ffff ffff    	<unknown>
 800a12c: ffff ffff    	<unknown>
 800a130: ffff ffff    	<unknown>
 800a134: ffff ffff    	<unknown>
 800a138: ffff ffff    	<unknown>
 800a13c: ffff ffff    	<unknown>
 800a140: ffff ffff    	<unknown>
 800a144: ffff ffff    	<unknown>
 800a148: ffff ffff    	<unknown>
 800a14c: ffff ffff    	<unknown>
 800a150: ffff ffff    	<unknown>
 800a154: ffff ffff    	<unknown>
 800a158: ffff ffff    	<unknown>
 800a15c: ffff ffff    	<unknown>
 800a160: ffff ffff    	<unknown>
 800a164: ffff ffff    	<unknown>
 800a168: ffff ffff    	<unknown>
 800a16c: ffff ffff    	<unknown>
 800a170: ffff ffff    	<unknown>
 800a174: ffff ffff    	<unknown>
 800a178: ffff ffff    	<unknown>
 800a17c: ffff ffff    	<unknown>
 800a180: ffff ffff    	<unknown>
 800a184: ffff ffff    	<unknown>
 800a188: ffff ffff    	<unknown>
 800a18c: ffff ffff    	<unknown>
 800a190: ffff ffff    	<unknown>
 800a194: ffff ffff    	<unknown>
 800a198: ffff ffff    	<unknown>
 800a19c: ffff ffff    	<unknown>
 800a1a0: ffff ffff    	<unknown>
 800a1a4: ffff ffff    	<unknown>
 800a1a8: ffff ffff    	<unknown>
 800a1ac: ffff ffff    	<unknown>
 800a1b0: ffff ffff    	<unknown>
 800a1b4: ffff ffff    	<unknown>
 800a1b8: ffff ffff    	<unknown>
 800a1bc: ffff ffff    	<unknown>
 800a1c0: ffff ffff    	<unknown>
 800a1c4: ffff ffff    	<unknown>
 800a1c8: ffff ffff    	<unknown>
 800a1cc: ffff ffff    	<unknown>
 800a1d0: ffff ffff    	<unknown>
 800a1d4: ffff ffff    	<unknown>
 800a1d8: ffff ffff    	<unknown>
 800a1dc: ffff ffff    	<unknown>
 800a1e0: ffff ffff    	<unknown>
 800a1e4: ffff ffff    	<unknown>
 800a1e8: ffff ffff    	<unknown>
 800a1ec: ffff ffff    	<unknown>
 800a1f0: ffff ffff    	<unknown>
 800a1f4: ffff ffff    	<unknown>
 800a1f8: ffff ffff    	<unknown>
 800a1fc: ffff ffff    	<unknown>
 800a200: ffff ffff    	<unknown>
 800a204: ffff ffff    	<unknown>
 800a208: ffff ffff    	<unknown>
 800a20c: ffff ffff    	<unknown>
 800a210: ffff ffff    	<unknown>
 800a214: ffff ffff    	<unknown>
 800a218: ffff ffff    	<unknown>
 800a21c: ffff ffff    	<unknown>
 800a220: ffff ffff    	<unknown>
 800a224: ffff ffff    	<unknown>
 800a228: ffff ffff    	<unknown>
 800a22c: ffff ffff    	<unknown>
 800a230: ffff ffff    	<unknown>
 800a234: ffff ffff    	<unknown>
 800a238: ffff ffff    	<unknown>
 800a23c: ffff ffff    	<unknown>
 800a240: ffff ffff    	<unknown>
 800a244: ffff ffff    	<unknown>
 800a248: ffff ffff    	<unknown>
 800a24c: ffff ffff    	<unknown>
 800a250: ffff ffff    	<unknown>
 800a254: ffff ffff    	<unknown>
 800a258: ffff ffff    	<unknown>
 800a25c: ffff ffff    	<unknown>
 800a260: ffff ffff    	<unknown>
 800a264: ffff ffff    	<unknown>
 800a268: ffff ffff    	<unknown>
 800a26c: ffff ffff    	<unknown>
 800a270: ffff ffff    	<unknown>
 800a274: ffff ffff    	<unknown>
 800a278: ffff ffff    	<unknown>
 800a27c: ffff ffff    	<unknown>
 800a280: ffff ffff    	<unknown>
 800a284: ffff ffff    	<unknown>
 800a288: ffff ffff    	<unknown>
 800a28c: ffff ffff    	<unknown>
 800a290: ffff ffff    	<unknown>
 800a294: ffff ffff    	<unknown>
 800a298: ffff ffff    	<unknown>
 800a29c: ffff ffff    	<unknown>
 800a2a0: ffff ffff    	<unknown>
 800a2a4: ffff ffff    	<unknown>
 800a2a8: ffff ffff    	<unknown>
 800a2ac: ffff ffff    	<unknown>
 800a2b0: ffff ffff    	<unknown>
 800a2b4: ffff ffff    	<unknown>
 800a2b8: ffff ffff    	<unknown>
 800a2bc: ffff ffff    	<unknown>
 800a2c0: ffff ffff    	<unknown>
 800a2c4: ffff ffff    	<unknown>
 800a2c8: ffff ffff    	<unknown>
 800a2cc: ffff ffff    	<unknown>
 800a2d0: ffff ffff    	<unknown>
 800a2d4: ffff ffff    	<unknown>
 800a2d8: ffff ffff    	<unknown>
 800a2dc: ffff ffff    	<unknown>
 800a2e0: ffff ffff    	<unknown>
 800a2e4: ffff ffff    	<unknown>
 800a2e8: ffff ffff    	<unknown>
 800a2ec: ffff ffff    	<unknown>
 800a2f0: ffff ffff    	<unknown>
 800a2f4: ffff ffff    	<unknown>
 800a2f8: ffff ffff    	<unknown>
 800a2fc: ffff ffff    	<unknown>
 800a300: ffff ffff    	<unknown>
 800a304: ffff ffff    	<unknown>
 800a308: ffff ffff    	<unknown>
 800a30c: ffff ffff    	<unknown>
 800a310: ffff ffff    	<unknown>
 800a314: ffff ffff    	<unknown>
 800a318: ffff ffff    	<unknown>
 800a31c: ffff ffff    	<unknown>
 800a320: ffff ffff    	<unknown>
 800a324: ffff ffff    	<unknown>
 800a328: ffff ffff    	<unknown>
 800a32c: ffff ffff    	<unknown>
 800a330: ffff ffff    	<unknown>
 800a334: ffff ffff    	<unknown>
 800a338: ffff ffff    	<unknown>
 800a33c: ffff ffff    	<unknown>
 800a340: ffff ffff    	<unknown>
 800a344: ffff ffff    	<unknown>
 800a348: ffff ffff    	<unknown>
 800a34c: ffff ffff    	<unknown>
 800a350: ffff ffff    	<unknown>
 800a354: ffff ffff    	<unknown>
 800a358: ffff ffff    	<unknown>
 800a35c: ffff ffff    	<unknown>
 800a360: ffff ffff    	<unknown>
 800a364: ffff ffff    	<unknown>
 800a368: ffff ffff    	<unknown>
 800a36c: ffff ffff    	<unknown>
 800a370: ffff ffff    	<unknown>
 800a374: ffff ffff    	<unknown>
 800a378: ffff ffff    	<unknown>
 800a37c: ffff ffff    	<unknown>
 800a380: ffff ffff    	<unknown>
 800a384: ffff ffff    	<unknown>
 800a388: ffff ffff    	<unknown>
 800a38c: ffff ffff    	<unknown>
 800a390: ffff ffff    	<unknown>
 800a394: ffff ffff    	<unknown>
 800a398: ffff ffff    	<unknown>
 800a39c: ffff ffff    	<unknown>
 800a3a0: ffff ffff    	<unknown>
 800a3a4: ffff ffff    	<unknown>
 800a3a8: ffff ffff    	<unknown>
 800a3ac: ffff ffff    	<unknown>
 800a3b0: ffff ffff    	<unknown>
 800a3b4: ffff ffff    	<unknown>
 800a3b8: ffff ffff    	<unknown>
 800a3bc: ffff ffff    	<unknown>
 800a3c0: ffff ffff    	<unknown>
 800a3c4: ffff ffff    	<unknown>
 800a3c8: ffff ffff    	<unknown>
 800a3cc: ffff ffff    	<unknown>
 800a3d0: ffff ffff    	<unknown>
 800a3d4: ffff ffff    	<unknown>
 800a3d8: ffff ffff    	<unknown>
 800a3dc: ffff ffff    	<unknown>
 800a3e0: ffff ffff    	<unknown>
 800a3e4: ffff ffff    	<unknown>
 800a3e8: ffff ffff    	<unknown>
 800a3ec: ffff ffff    	<unknown>
 800a3f0: ffff ffff    	<unknown>
 800a3f4: ffff ffff    	<unknown>
 800a3f8: ffff ffff    	<unknown>
 800a3fc: ffff ffff    	<unknown>
 800a400: ffff ffff    	<unknown>
 800a404: ffff ffff    	<unknown>
 800a408: ffff ffff    	<unknown>
 800a40c: ffff ffff    	<unknown>
 800a410: ffff ffff    	<unknown>
 800a414: ffff ffff    	<unknown>
 800a418: ffff ffff    	<unknown>
 800a41c: ffff ffff    	<unknown>
 800a420: ffff ffff    	<unknown>
 800a424: ffff ffff    	<unknown>
 800a428: ffff ffff    	<unknown>
 800a42c: ffff ffff    	<unknown>
 800a430: ffff ffff    	<unknown>
 800a434: ffff ffff    	<unknown>
 800a438: ffff ffff    	<unknown>
 800a43c: ffff ffff    	<unknown>
 800a440: ffff ffff    	<unknown>
 800a444: ffff ffff    	<unknown>
 800a448: ffff ffff    	<unknown>
 800a44c: ffff ffff    	<unknown>
 800a450: ffff ffff    	<unknown>
 800a454: ffff ffff    	<unknown>
 800a458: ffff ffff    	<unknown>
 800a45c: ffff ffff    	<unknown>
 800a460: ffff ffff    	<unknown>
 800a464: ffff ffff    	<unknown>
 800a468: ffff ffff    	<unknown>
 800a46c: ffff ffff    	<unknown>
 800a470: ffff ffff    	<unknown>
 800a474: ffff ffff    	<unknown>
 800a478: ffff ffff    	<unknown>
 800a47c: ffff ffff    	<unknown>
 800a480: ffff ffff    	<unknown>
 800a484: ffff ffff    	<unknown>
 800a488: ffff ffff    	<unknown>
 800a48c: ffff ffff    	<unknown>
 800a490: ffff ffff    	<unknown>
 800a494: ffff ffff    	<unknown>
 800a498: ffff ffff    	<unknown>
 800a49c: ffff ffff    	<unknown>
 800a4a0: ffff ffff    	<unknown>
 800a4a4: ffff ffff    	<unknown>
 800a4a8: ffff ffff    	<unknown>
 800a4ac: ffff ffff    	<unknown>
 800a4b0: ffff ffff    	<unknown>
 800a4b4: ffff ffff    	<unknown>
 800a4b8: ffff ffff    	<unknown>
 800a4bc: ffff ffff    	<unknown>
 800a4c0: ffff ffff    	<unknown>
 800a4c4: ffff ffff    	<unknown>
 800a4c8: ffff ffff    	<unknown>
 800a4cc: ffff ffff    	<unknown>
 800a4d0: ffff ffff    	<unknown>
 800a4d4: ffff ffff    	<unknown>
 800a4d8: ffff ffff    	<unknown>
 800a4dc: ffff ffff    	<unknown>
 800a4e0: ffff ffff    	<unknown>
 800a4e4: ffff ffff    	<unknown>
 800a4e8: ffff ffff    	<unknown>
 800a4ec: ffff ffff    	<unknown>
 800a4f0: ffff ffff    	<unknown>
 800a4f4: ffff ffff    	<unknown>
 800a4f8: ffff ffff    	<unknown>
 800a4fc: ffff ffff    	<unknown>
 800a500: ffff ffff    	<unknown>
 800a504: ffff ffff    	<unknown>
 800a508: ffff ffff    	<unknown>
 800a50c: ffff ffff    	<unknown>
 800a510: ffff ffff    	<unknown>
 800a514: ffff ffff    	<unknown>
 800a518: ffff ffff    	<unknown>
 800a51c: ffff ffff    	<unknown>
 800a520: ffff ffff    	<unknown>
 800a524: ffff ffff    	<unknown>
 800a528: ffff ffff    	<unknown>
 800a52c: ffff ffff    	<unknown>
 800a530: ffff ffff    	<unknown>
 800a534: ffff ffff    	<unknown>
 800a538: ffff ffff    	<unknown>
 800a53c: ffff ffff    	<unknown>
 800a540: ffff ffff    	<unknown>
 800a544: ffff ffff    	<unknown>
 800a548: ffff ffff    	<unknown>
 800a54c: ffff ffff    	<unknown>
 800a550: ffff ffff    	<unknown>
 800a554: ffff ffff    	<unknown>
 800a558: ffff ffff    	<unknown>
 800a55c: ffff ffff    	<unknown>
 800a560: ffff ffff    	<unknown>
 800a564: ffff ffff    	<unknown>
 800a568: ffff ffff    	<unknown>
 800a56c: ffff ffff    	<unknown>
 800a570: ffff ffff    	<unknown>
 800a574: ffff ffff    	<unknown>
 800a578: ffff ffff    	<unknown>
 800a57c: ffff ffff    	<unknown>
 800a580: ffff ffff    	<unknown>
 800a584: ffff ffff    	<unknown>
 800a588: ffff ffff    	<unknown>
 800a58c: ffff ffff    	<unknown>
 800a590: ffff ffff    	<unknown>
 800a594: ffff ffff    	<unknown>
 800a598: ffff ffff    	<unknown>
 800a59c: ffff ffff    	<unknown>
 800a5a0: ffff ffff    	<unknown>
 800a5a4: ffff ffff    	<unknown>
 800a5a8: ffff ffff    	<unknown>
 800a5ac: ffff ffff    	<unknown>
 800a5b0: ffff ffff    	<unknown>
 800a5b4: ffff ffff    	<unknown>
 800a5b8: ffff ffff    	<unknown>
 800a5bc: ffff ffff    	<unknown>
 800a5c0: ffff ffff    	<unknown>
 800a5c4: ffff ffff    	<unknown>
 800a5c8: ffff ffff    	<unknown>
 800a5cc: ffff ffff    	<unknown>
 800a5d0: ffff ffff    	<unknown>
 800a5d4: ffff ffff    	<unknown>
 800a5d8: ffff ffff    	<unknown>
 800a5dc: ffff ffff    	<unknown>
 800a5e0: ffff ffff    	<unknown>
 800a5e4: ffff ffff    	<unknown>
 800a5e8: ffff ffff    	<unknown>
 800a5ec: ffff ffff    	<unknown>
 800a5f0: ffff ffff    	<unknown>
 800a5f4: ffff ffff    	<unknown>
 800a5f8: ffff ffff    	<unknown>
 800a5fc: ffff ffff    	<unknown>
 800a600: ffff ffff    	<unknown>
 800a604: ffff ffff    	<unknown>
 800a608: ffff ffff    	<unknown>
 800a60c: ffff ffff    	<unknown>
 800a610: ffff ffff    	<unknown>
 800a614: ffff ffff    	<unknown>
 800a618: ffff ffff    	<unknown>
 800a61c: ffff ffff    	<unknown>
 800a620: ffff ffff    	<unknown>
 800a624: ffff ffff    	<unknown>
 800a628: ffff ffff    	<unknown>
 800a62c: ffff ffff    	<unknown>
 800a630: ffff ffff    	<unknown>
 800a634: ffff ffff    	<unknown>
 800a638: ffff ffff    	<unknown>
 800a63c: ffff ffff    	<unknown>
 800a640: ffff ffff    	<unknown>
 800a644: ffff ffff    	<unknown>
 800a648: ffff ffff    	<unknown>
 800a64c: ffff ffff    	<unknown>
 800a650: ffff ffff    	<unknown>
 800a654: ffff ffff    	<unknown>
 800a658: ffff ffff    	<unknown>
 800a65c: ffff ffff    	<unknown>
 800a660: ffff ffff    	<unknown>
 800a664: ffff ffff    	<unknown>
 800a668: ffff ffff    	<unknown>
 800a66c: ffff ffff    	<unknown>
 800a670: ffff ffff    	<unknown>
 800a674: ffff ffff    	<unknown>
 800a678: ffff ffff    	<unknown>
 800a67c: ffff ffff    	<unknown>
 800a680: ffff ffff    	<unknown>
 800a684: ffff ffff    	<unknown>
 800a688: ffff ffff    	<unknown>
 800a68c: ffff ffff    	<unknown>
 800a690: ffff ffff    	<unknown>
 800a694: ffff ffff    	<unknown>
 800a698: ffff ffff    	<unknown>
 800a69c: ffff ffff    	<unknown>
 800a6a0: ffff ffff    	<unknown>
 800a6a4: ffff ffff    	<unknown>
 800a6a8: ffff ffff    	<unknown>
 800a6ac: ffff ffff    	<unknown>
 800a6b0: ffff ffff    	<unknown>
 800a6b4: ffff ffff    	<unknown>
 800a6b8: ffff ffff    	<unknown>
 800a6bc: ffff ffff    	<unknown>
 800a6c0: ffff ffff    	<unknown>
 800a6c4: ffff ffff    	<unknown>
 800a6c8: ffff ffff    	<unknown>
 800a6cc: ffff ffff    	<unknown>
 800a6d0: ffff ffff    	<unknown>
 800a6d4: ffff ffff    	<unknown>
 800a6d8: ffff ffff    	<unknown>
 800a6dc: ffff ffff    	<unknown>
 800a6e0: ffff ffff    	<unknown>
 800a6e4: ffff ffff    	<unknown>
 800a6e8: ffff ffff    	<unknown>
 800a6ec: ffff ffff    	<unknown>
 800a6f0: ffff ffff    	<unknown>
 800a6f4: ffff ffff    	<unknown>
 800a6f8: ffff ffff    	<unknown>
 800a6fc: ffff ffff    	<unknown>
 800a700: ffff ffff    	<unknown>
 800a704: ffff ffff    	<unknown>
 800a708: ffff ffff    	<unknown>
 800a70c: ffff ffff    	<unknown>
 800a710: ffff ffff    	<unknown>
 800a714: ffff ffff    	<unknown>
 800a718: ffff ffff    	<unknown>
 800a71c: ffff ffff    	<unknown>
 800a720: ffff ffff    	<unknown>
 800a724: ffff ffff    	<unknown>
 800a728: ffff ffff    	<unknown>
 800a72c: ffff ffff    	<unknown>
 800a730: ffff ffff    	<unknown>
 800a734: ffff ffff    	<unknown>
 800a738: ffff ffff    	<unknown>
 800a73c: ffff ffff    	<unknown>
 800a740: ffff ffff    	<unknown>
 800a744: ffff ffff    	<unknown>
 800a748: ffff ffff    	<unknown>
 800a74c: ffff ffff    	<unknown>
 800a750: ffff ffff    	<unknown>
 800a754: ffff ffff    	<unknown>
 800a758: ffff ffff    	<unknown>
 800a75c: ffff ffff    	<unknown>
 800a760: ffff ffff    	<unknown>
 800a764: ffff ffff    	<unknown>
 800a768: ffff ffff    	<unknown>
 800a76c: ffff ffff    	<unknown>
 800a770: ffff ffff    	<unknown>
 800a774: ffff ffff    	<unknown>
 800a778: ffff ffff    	<unknown>
 800a77c: ffff ffff    	<unknown>
 800a780: ffff ffff    	<unknown>
 800a784: ffff ffff    	<unknown>
 800a788: ffff ffff    	<unknown>
 800a78c: ffff ffff    	<unknown>
 800a790: ffff ffff    	<unknown>
 800a794: ffff ffff    	<unknown>
 800a798: ffff ffff    	<unknown>
 800a79c: ffff ffff    	<unknown>
 800a7a0: ffff ffff    	<unknown>
 800a7a4: ffff ffff    	<unknown>
 800a7a8: ffff ffff    	<unknown>
 800a7ac: ffff ffff    	<unknown>
 800a7b0: ffff ffff    	<unknown>
 800a7b4: ffff ffff    	<unknown>
 800a7b8: ffff ffff    	<unknown>
 800a7bc: ffff ffff    	<unknown>
 800a7c0: ffff ffff    	<unknown>
 800a7c4: ffff ffff    	<unknown>
 800a7c8: ffff ffff    	<unknown>
 800a7cc: ffff ffff    	<unknown>
 800a7d0: ffff ffff    	<unknown>
 800a7d4: ffff ffff    	<unknown>
 800a7d8: ffff ffff    	<unknown>
 800a7dc: ffff ffff    	<unknown>
 800a7e0: ffff ffff    	<unknown>
 800a7e4: ffff ffff    	<unknown>
 800a7e8: ffff ffff    	<unknown>
 800a7ec: ffff ffff    	<unknown>
 800a7f0: ffff ffff    	<unknown>
 800a7f4: ffff ffff    	<unknown>
 800a7f8: ffff ffff    	<unknown>
 800a7fc: ffff ffff    	<unknown>
 800a800: ffff ffff    	<unknown>
 800a804: ffff ffff    	<unknown>
 800a808: ffff ffff    	<unknown>
 800a80c: ffff ffff    	<unknown>
 800a810: ffff ffff    	<unknown>
 800a814: ffff ffff    	<unknown>
 800a818: ffff ffff    	<unknown>
 800a81c: ffff ffff    	<unknown>
 800a820: ffff ffff    	<unknown>
 800a824: ffff ffff    	<unknown>
 800a828: ffff ffff    	<unknown>
 800a82c: ffff ffff    	<unknown>
 800a830: ffff ffff    	<unknown>
 800a834: ffff ffff    	<unknown>
 800a838: ffff ffff    	<unknown>
 800a83c: ffff ffff    	<unknown>
 800a840: ffff ffff    	<unknown>
 800a844: ffff ffff    	<unknown>
 800a848: ffff ffff    	<unknown>
 800a84c: ffff ffff    	<unknown>
 800a850: ffff ffff    	<unknown>
 800a854: ffff ffff    	<unknown>
 800a858: ffff ffff    	<unknown>
 800a85c: ffff ffff    	<unknown>
 800a860: ffff ffff    	<unknown>
 800a864: ffff ffff    	<unknown>
 800a868: ffff ffff    	<unknown>
 800a86c: ffff ffff    	<unknown>
 800a870: ffff ffff    	<unknown>
 800a874: ffff ffff    	<unknown>
 800a878: ffff ffff    	<unknown>
 800a87c: ffff ffff    	<unknown>
 800a880: ffff ffff    	<unknown>
 800a884: ffff ffff    	<unknown>
 800a888: ffff ffff    	<unknown>
 800a88c: ffff ffff    	<unknown>
 800a890: ffff ffff    	<unknown>
 800a894: ffff ffff    	<unknown>
 800a898: ffff ffff    	<unknown>
 800a89c: ffff ffff    	<unknown>
 800a8a0: ffff ffff    	<unknown>
 800a8a4: ffff ffff    	<unknown>
 800a8a8: ffff ffff    	<unknown>
 800a8ac: ffff ffff    	<unknown>
 800a8b0: ffff ffff    	<unknown>
 800a8b4: ffff ffff    	<unknown>
 800a8b8: ffff ffff    	<unknown>
 800a8bc: ffff ffff    	<unknown>
 800a8c0: ffff ffff    	<unknown>
 800a8c4: ffff ffff    	<unknown>
 800a8c8: ffff ffff    	<unknown>
 800a8cc: ffff ffff    	<unknown>
 800a8d0: ffff ffff    	<unknown>
 800a8d4: ffff ffff    	<unknown>
 800a8d8: ffff ffff    	<unknown>
 800a8dc: ffff ffff    	<unknown>
 800a8e0: ffff ffff    	<unknown>
 800a8e4: ffff ffff    	<unknown>
 800a8e8: ffff ffff    	<unknown>
 800a8ec: ffff ffff    	<unknown>
 800a8f0: ffff ffff    	<unknown>
 800a8f4: ffff ffff    	<unknown>
 800a8f8: ffff ffff    	<unknown>
 800a8fc: ffff ffff    	<unknown>
 800a900: ffff ffff    	<unknown>
 800a904: ffff ffff    	<unknown>
 800a908: ffff ffff    	<unknown>
 800a90c: ffff ffff    	<unknown>
 800a910: ffff ffff    	<unknown>
 800a914: ffff ffff    	<unknown>
 800a918: ffff ffff    	<unknown>
 800a91c: ffff ffff    	<unknown>
 800a920: ffff ffff    	<unknown>
 800a924: ffff ffff    	<unknown>
 800a928: ffff ffff    	<unknown>
 800a92c: ffff ffff    	<unknown>
 800a930: ffff ffff    	<unknown>
 800a934: ffff ffff    	<unknown>
 800a938: ffff ffff    	<unknown>
 800a93c: ffff ffff    	<unknown>
 800a940: ffff ffff    	<unknown>
 800a944: ffff ffff    	<unknown>
 800a948: ffff ffff    	<unknown>
 800a94c: ffff ffff    	<unknown>
 800a950: ffff ffff    	<unknown>
 800a954: ffff ffff    	<unknown>
 800a958: ffff ffff    	<unknown>
 800a95c: ffff ffff    	<unknown>
 800a960: ffff ffff    	<unknown>
 800a964: ffff ffff    	<unknown>
 800a968: ffff ffff    	<unknown>
 800a96c: ffff ffff    	<unknown>
 800a970: ffff ffff    	<unknown>
 800a974: ffff ffff    	<unknown>
 800a978: ffff ffff    	<unknown>
 800a97c: ffff ffff    	<unknown>
 800a980: ffff ffff    	<unknown>
 800a984: ffff ffff    	<unknown>
 800a988: ffff ffff    	<unknown>
 800a98c: ffff ffff    	<unknown>
 800a990: ffff ffff    	<unknown>
 800a994: ffff ffff    	<unknown>
 800a998: ffff ffff    	<unknown>
 800a99c: ffff ffff    	<unknown>
 800a9a0: ffff ffff    	<unknown>
 800a9a4: ffff ffff    	<unknown>
 800a9a8: ffff ffff    	<unknown>
 800a9ac: ffff ffff    	<unknown>
 800a9b0: ffff ffff    	<unknown>
 800a9b4: ffff ffff    	<unknown>
 800a9b8: ffff ffff    	<unknown>
 800a9bc: ffff ffff    	<unknown>
 800a9c0: ffff ffff    	<unknown>
 800a9c4: ffff ffff    	<unknown>
 800a9c8: ffff ffff    	<unknown>
 800a9cc: ffff ffff    	<unknown>
 800a9d0: ffff ffff    	<unknown>
 800a9d4: ffff ffff    	<unknown>
 800a9d8: ffff ffff    	<unknown>
 800a9dc: ffff ffff    	<unknown>
 800a9e0: ffff ffff    	<unknown>
 800a9e4: ffff ffff    	<unknown>
 800a9e8: ffff ffff    	<unknown>
 800a9ec: ffff ffff    	<unknown>
 800a9f0: ffff ffff    	<unknown>
 800a9f4: ffff ffff    	<unknown>
 800a9f8: ffff ffff    	<unknown>
 800a9fc: ffff ffff    	<unknown>
 800aa00: ffff ffff    	<unknown>
 800aa04: ffff ffff    	<unknown>
 800aa08: ffff ffff    	<unknown>
 800aa0c: ffff ffff    	<unknown>
 800aa10: ffff ffff    	<unknown>
 800aa14: ffff ffff    	<unknown>
 800aa18: ffff ffff    	<unknown>
 800aa1c: ffff ffff    	<unknown>
 800aa20: ffff ffff    	<unknown>
 800aa24: ffff ffff    	<unknown>
 800aa28: ffff ffff    	<unknown>
 800aa2c: ffff ffff    	<unknown>
 800aa30: ffff ffff    	<unknown>
 800aa34: ffff ffff    	<unknown>
 800aa38: ffff ffff    	<unknown>
 800aa3c: ffff ffff    	<unknown>
 800aa40: ffff ffff    	<unknown>
 800aa44: ffff ffff    	<unknown>
 800aa48: ffff ffff    	<unknown>
 800aa4c: ffff ffff    	<unknown>
 800aa50: ffff ffff    	<unknown>
 800aa54: ffff ffff    	<unknown>
 800aa58: ffff ffff    	<unknown>
 800aa5c: ffff ffff    	<unknown>
 800aa60: ffff ffff    	<unknown>
 800aa64: ffff ffff    	<unknown>
 800aa68: ffff ffff    	<unknown>
 800aa6c: ffff ffff    	<unknown>
 800aa70: ffff ffff    	<unknown>
 800aa74: ffff ffff    	<unknown>
 800aa78: ffff ffff    	<unknown>
 800aa7c: ffff ffff    	<unknown>
 800aa80: ffff ffff    	<unknown>
 800aa84: ffff ffff    	<unknown>
 800aa88: ffff ffff    	<unknown>
 800aa8c: ffff ffff    	<unknown>
 800aa90: ffff ffff    	<unknown>
 800aa94: ffff ffff    	<unknown>
 800aa98: ffff ffff    	<unknown>
 800aa9c: ffff ffff    	<unknown>
 800aaa0: ffff ffff    	<unknown>
 800aaa4: ffff ffff    	<unknown>
 800aaa8: ffff ffff    	<unknown>
 800aaac: ffff ffff    	<unknown>
 800aab0: ffff ffff    	<unknown>
 800aab4: ffff ffff    	<unknown>
 800aab8: ffff ffff    	<unknown>
 800aabc: ffff ffff    	<unknown>
 800aac0: ffff ffff    	<unknown>
 800aac4: ffff ffff    	<unknown>
 800aac8: ffff ffff    	<unknown>
 800aacc: ffff ffff    	<unknown>
 800aad0: ffff ffff    	<unknown>
 800aad4: ffff ffff    	<unknown>
 800aad8: ffff ffff    	<unknown>
 800aadc: ffff ffff    	<unknown>
 800aae0: ffff ffff    	<unknown>
 800aae4: ffff ffff    	<unknown>
 800aae8: ffff ffff    	<unknown>
 800aaec: ffff ffff    	<unknown>
 800aaf0: ffff ffff    	<unknown>
 800aaf4: ffff ffff    	<unknown>
 800aaf8: ffff ffff    	<unknown>
 800aafc: ffff ffff    	<unknown>
 800ab00: ffff ffff    	<unknown>
 800ab04: ffff ffff    	<unknown>
 800ab08: ffff ffff    	<unknown>
 800ab0c: ffff ffff    	<unknown>
 800ab10: ffff ffff    	<unknown>
 800ab14: ffff ffff    	<unknown>
 800ab18: ffff ffff    	<unknown>
 800ab1c: ffff ffff    	<unknown>
 800ab20: ffff ffff    	<unknown>
 800ab24: ffff ffff    	<unknown>
 800ab28: ffff ffff    	<unknown>
 800ab2c: ffff ffff    	<unknown>
 800ab30: ffff ffff    	<unknown>
 800ab34: ffff ffff    	<unknown>
 800ab38: ffff ffff    	<unknown>
 800ab3c: ffff ffff    	<unknown>
 800ab40: ffff ffff    	<unknown>
 800ab44: ffff ffff    	<unknown>
 800ab48: ffff ffff    	<unknown>
 800ab4c: ffff ffff    	<unknown>
 800ab50: ffff ffff    	<unknown>
 800ab54: ffff ffff    	<unknown>
 800ab58: ffff ffff    	<unknown>
 800ab5c: ffff ffff    	<unknown>
 800ab60: ffff ffff    	<unknown>
 800ab64: ffff ffff    	<unknown>
 800ab68: ffff ffff    	<unknown>
 800ab6c: ffff ffff    	<unknown>
 800ab70: ffff ffff    	<unknown>
 800ab74: ffff ffff    	<unknown>
 800ab78: ffff ffff    	<unknown>
 800ab7c: ffff ffff    	<unknown>
 800ab80: ffff ffff    	<unknown>
 800ab84: ffff ffff    	<unknown>
 800ab88: ffff ffff    	<unknown>
 800ab8c: ffff ffff    	<unknown>
 800ab90: ffff ffff    	<unknown>
 800ab94: ffff ffff    	<unknown>
 800ab98: ffff ffff    	<unknown>
 800ab9c: ffff ffff    	<unknown>
 800aba0: ffff ffff    	<unknown>
 800aba4: ffff ffff    	<unknown>
 800aba8: ffff ffff    	<unknown>
 800abac: ffff ffff    	<unknown>
 800abb0: ffff ffff    	<unknown>
 800abb4: ffff ffff    	<unknown>
 800abb8: ffff ffff    	<unknown>
 800abbc: ffff ffff    	<unknown>
 800abc0: ffff ffff    	<unknown>
 800abc4: ffff ffff    	<unknown>
 800abc8: ffff ffff    	<unknown>
 800abcc: ffff ffff    	<unknown>
 800abd0: ffff ffff    	<unknown>
 800abd4: ffff ffff    	<unknown>
 800abd8: ffff ffff    	<unknown>
 800abdc: ffff ffff    	<unknown>
 800abe0: ffff ffff    	<unknown>
 800abe4: ffff ffff    	<unknown>
 800abe8: ffff ffff    	<unknown>
 800abec: ffff ffff    	<unknown>
 800abf0: ffff ffff    	<unknown>
 800abf4: ffff ffff    	<unknown>
 800abf8: ffff ffff    	<unknown>
 800abfc: ffff ffff    	<unknown>
 800ac00: ffff ffff    	<unknown>
 800ac04: ffff ffff    	<unknown>
 800ac08: ffff ffff    	<unknown>
 800ac0c: ffff ffff    	<unknown>
 800ac10: ffff ffff    	<unknown>
 800ac14: ffff ffff    	<unknown>
 800ac18: ffff ffff    	<unknown>
 800ac1c: ffff ffff    	<unknown>
 800ac20: ffff ffff    	<unknown>
 800ac24: ffff ffff    	<unknown>
 800ac28: ffff ffff    	<unknown>
 800ac2c: ffff ffff    	<unknown>
 800ac30: ffff ffff    	<unknown>
 800ac34: ffff ffff    	<unknown>
 800ac38: ffff ffff    	<unknown>
 800ac3c: ffff ffff    	<unknown>
 800ac40: ffff ffff    	<unknown>
 800ac44: ffff ffff    	<unknown>
 800ac48: ffff ffff    	<unknown>
 800ac4c: ffff ffff    	<unknown>
 800ac50: ffff ffff    	<unknown>
 800ac54: ffff ffff    	<unknown>
 800ac58: ffff ffff    	<unknown>
 800ac5c: ffff ffff    	<unknown>
 800ac60: ffff ffff    	<unknown>
 800ac64: ffff ffff    	<unknown>
 800ac68: ffff ffff    	<unknown>
 800ac6c: ffff ffff    	<unknown>
 800ac70: ffff ffff    	<unknown>
 800ac74: ffff ffff    	<unknown>
 800ac78: ffff ffff    	<unknown>
 800ac7c: ffff ffff    	<unknown>
 800ac80: ffff ffff    	<unknown>
 800ac84: ffff ffff    	<unknown>
 800ac88: ffff ffff    	<unknown>
 800ac8c: ffff ffff    	<unknown>
 800ac90: ffff ffff    	<unknown>
 800ac94: ffff ffff    	<unknown>
 800ac98: ffff ffff    	<unknown>
 800ac9c: ffff ffff    	<unknown>
 800aca0: ffff ffff    	<unknown>
 800aca4: ffff ffff    	<unknown>
 800aca8: ffff ffff    	<unknown>
 800acac: ffff ffff    	<unknown>
 800acb0: ffff ffff    	<unknown>
 800acb4: ffff ffff    	<unknown>
 800acb8: ffff ffff    	<unknown>
 800acbc: ffff ffff    	<unknown>
 800acc0: ffff ffff    	<unknown>
 800acc4: ffff ffff    	<unknown>
 800acc8: ffff ffff    	<unknown>
 800accc: ffff ffff    	<unknown>
 800acd0: ffff ffff    	<unknown>
 800acd4: ffff ffff    	<unknown>
 800acd8: ffff ffff    	<unknown>
 800acdc: ffff ffff    	<unknown>
 800ace0: ffff ffff    	<unknown>
 800ace4: ffff ffff    	<unknown>
 800ace8: ffff ffff    	<unknown>
 800acec: ffff ffff    	<unknown>
 800acf0: ffff ffff    	<unknown>
 800acf4: ffff ffff    	<unknown>
 800acf8: ffff ffff    	<unknown>
 800acfc: ffff ffff    	<unknown>
 800ad00: ffff ffff    	<unknown>
 800ad04: ffff ffff    	<unknown>
 800ad08: ffff ffff    	<unknown>
 800ad0c: ffff ffff    	<unknown>
 800ad10: ffff ffff    	<unknown>
 800ad14: ffff ffff    	<unknown>
 800ad18: ffff ffff    	<unknown>
 800ad1c: ffff ffff    	<unknown>
 800ad20: ffff ffff    	<unknown>
 800ad24: ffff ffff    	<unknown>
 800ad28: ffff ffff    	<unknown>
 800ad2c: ffff ffff    	<unknown>
 800ad30: ffff ffff    	<unknown>
 800ad34: ffff ffff    	<unknown>
 800ad38: ffff ffff    	<unknown>
 800ad3c: ffff ffff    	<unknown>
 800ad40: ffff ffff    	<unknown>
 800ad44: ffff ffff    	<unknown>
 800ad48: ffff ffff    	<unknown>
 800ad4c: ffff ffff    	<unknown>
 800ad50: ffff ffff    	<unknown>
 800ad54: ffff ffff    	<unknown>
 800ad58: ffff ffff    	<unknown>
 800ad5c: ffff ffff    	<unknown>
 800ad60: ffff ffff    	<unknown>
 800ad64: ffff ffff    	<unknown>
 800ad68: ffff ffff    	<unknown>
 800ad6c: ffff ffff    	<unknown>
 800ad70: ffff ffff    	<unknown>
 800ad74: ffff ffff    	<unknown>
 800ad78: ffff ffff    	<unknown>
 800ad7c: ffff ffff    	<unknown>
 800ad80: ffff ffff    	<unknown>
 800ad84: ffff ffff    	<unknown>
 800ad88: ffff ffff    	<unknown>
 800ad8c: ffff ffff    	<unknown>
 800ad90: ffff ffff    	<unknown>
 800ad94: ffff ffff    	<unknown>
 800ad98: ffff ffff    	<unknown>
 800ad9c: ffff ffff    	<unknown>
 800ada0: ffff ffff    	<unknown>
 800ada4: ffff ffff    	<unknown>
 800ada8: ffff ffff    	<unknown>
 800adac: ffff ffff    	<unknown>
 800adb0: ffff ffff    	<unknown>
 800adb4: ffff ffff    	<unknown>
 800adb8: ffff ffff    	<unknown>
 800adbc: ffff ffff    	<unknown>
 800adc0: ffff ffff    	<unknown>
 800adc4: ffff ffff    	<unknown>
 800adc8: ffff ffff    	<unknown>
 800adcc: ffff ffff    	<unknown>
 800add0: ffff ffff    	<unknown>
 800add4: ffff ffff    	<unknown>
 800add8: ffff ffff    	<unknown>
 800addc: ffff ffff    	<unknown>
 800ade0: ffff ffff    	<unknown>
 800ade4: ffff ffff    	<unknown>
 800ade8: ffff ffff    	<unknown>
 800adec: ffff ffff    	<unknown>
 800adf0: ffff ffff    	<unknown>
 800adf4: ffff ffff    	<unknown>
 800adf8: ffff ffff    	<unknown>
 800adfc: ffff ffff    	<unknown>
 800ae00: ffff ffff    	<unknown>
 800ae04: ffff ffff    	<unknown>
 800ae08: ffff ffff    	<unknown>
 800ae0c: ffff ffff    	<unknown>
 800ae10: ffff ffff    	<unknown>
 800ae14: ffff ffff    	<unknown>
 800ae18: ffff ffff    	<unknown>
 800ae1c: ffff ffff    	<unknown>
 800ae20: ffff ffff    	<unknown>
 800ae24: ffff ffff    	<unknown>
 800ae28: ffff ffff    	<unknown>
 800ae2c: ffff ffff    	<unknown>
 800ae30: ffff ffff    	<unknown>
 800ae34: ffff ffff    	<unknown>
 800ae38: ffff ffff    	<unknown>
 800ae3c: ffff ffff    	<unknown>
 800ae40: ffff ffff    	<unknown>
 800ae44: ffff ffff    	<unknown>
 800ae48: ffff ffff    	<unknown>
 800ae4c: ffff ffff    	<unknown>
 800ae50: ffff ffff    	<unknown>
 800ae54: ffff ffff    	<unknown>
 800ae58: ffff ffff    	<unknown>
 800ae5c: ffff ffff    	<unknown>
 800ae60: ffff ffff    	<unknown>
 800ae64: ffff ffff    	<unknown>
 800ae68: ffff ffff    	<unknown>
 800ae6c: ffff ffff    	<unknown>
 800ae70: ffff ffff    	<unknown>
 800ae74: ffff ffff    	<unknown>
 800ae78: ffff ffff    	<unknown>
 800ae7c: ffff ffff    	<unknown>
 800ae80: ffff ffff    	<unknown>
 800ae84: ffff ffff    	<unknown>
 800ae88: ffff ffff    	<unknown>
 800ae8c: ffff ffff    	<unknown>
 800ae90: ffff ffff    	<unknown>
 800ae94: ffff ffff    	<unknown>
 800ae98: ffff ffff    	<unknown>
 800ae9c: ffff ffff    	<unknown>
 800aea0: ffff ffff    	<unknown>
 800aea4: ffff ffff    	<unknown>
 800aea8: ffff ffff    	<unknown>
 800aeac: ffff ffff    	<unknown>
 800aeb0: ffff ffff    	<unknown>
 800aeb4: ffff ffff    	<unknown>
 800aeb8: ffff ffff    	<unknown>
 800aebc: ffff ffff    	<unknown>
 800aec0: ffff ffff    	<unknown>
 800aec4: ffff ffff    	<unknown>
 800aec8: ffff ffff    	<unknown>
 800aecc: ffff ffff    	<unknown>
 800aed0: ffff ffff    	<unknown>
 800aed4: ffff ffff    	<unknown>
 800aed8: ffff ffff    	<unknown>
 800aedc: ffff ffff    	<unknown>
 800aee0: ffff ffff    	<unknown>
 800aee4: ffff ffff    	<unknown>
 800aee8: ffff ffff    	<unknown>
 800aeec: ffff ffff    	<unknown>
 800aef0: ffff ffff    	<unknown>
 800aef4: ffff ffff    	<unknown>
 800aef8: ffff ffff    	<unknown>
 800aefc: ffff ffff    	<unknown>
 800af00: ffff ffff    	<unknown>
 800af04: ffff ffff    	<unknown>
 800af08: ffff ffff    	<unknown>
 800af0c: ffff ffff    	<unknown>
 800af10: ffff ffff    	<unknown>
 800af14: ffff ffff    	<unknown>
 800af18: ffff ffff    	<unknown>
 800af1c: ffff ffff    	<unknown>
 800af20: ffff ffff    	<unknown>
 800af24: ffff ffff    	<unknown>
 800af28: ffff ffff    	<unknown>
 800af2c: ffff ffff    	<unknown>
 800af30: ffff ffff    	<unknown>
 800af34: ffff ffff    	<unknown>
 800af38: ffff ffff    	<unknown>
 800af3c: ffff ffff    	<unknown>
 800af40: ffff ffff    	<unknown>
 800af44: ffff ffff    	<unknown>
 800af48: ffff ffff    	<unknown>
 800af4c: ffff ffff    	<unknown>
 800af50: ffff ffff    	<unknown>
 800af54: ffff ffff    	<unknown>
 800af58: ffff ffff    	<unknown>
 800af5c: ffff ffff    	<unknown>
 800af60: ffff ffff    	<unknown>
 800af64: ffff ffff    	<unknown>
 800af68: ffff ffff    	<unknown>
 800af6c: ffff ffff    	<unknown>
 800af70: ffff ffff    	<unknown>
 800af74: ffff ffff    	<unknown>
 800af78: ffff ffff    	<unknown>
 800af7c: ffff ffff    	<unknown>
 800af80: ffff ffff    	<unknown>
 800af84: ffff ffff    	<unknown>
 800af88: ffff ffff    	<unknown>
 800af8c: ffff ffff    	<unknown>
 800af90: ffff ffff    	<unknown>
 800af94: ffff ffff    	<unknown>
 800af98: ffff ffff    	<unknown>
 800af9c: ffff ffff    	<unknown>
 800afa0: ffff ffff    	<unknown>
 800afa4: ffff ffff    	<unknown>
 800afa8: ffff ffff    	<unknown>
 800afac: ffff ffff    	<unknown>
 800afb0: ffff ffff    	<unknown>
 800afb4: ffff ffff    	<unknown>
 800afb8: ffff ffff    	<unknown>
 800afbc: ffff ffff    	<unknown>
 800afc0: ffff ffff    	<unknown>
 800afc4: ffff ffff    	<unknown>
 800afc8: ffff ffff    	<unknown>
 800afcc: ffff ffff    	<unknown>
 800afd0: ffff ffff    	<unknown>
 800afd4: ffff ffff    	<unknown>
 800afd8: ffff ffff    	<unknown>
 800afdc: ffff ffff    	<unknown>
 800afe0: ffff ffff    	<unknown>
 800afe4: ffff ffff    	<unknown>
 800afe8: ffff ffff    	<unknown>
 800afec: ffff ffff    	<unknown>
 800aff0: ffff ffff    	<unknown>
 800aff4: ffff ffff    	<unknown>
 800aff8: ffff ffff    	<unknown>
 800affc: ffff ffff    	<unknown>
 800b000: ffff ffff    	<unknown>
 800b004: ffff ffff    	<unknown>
 800b008: ffff ffff    	<unknown>
 800b00c: ffff ffff    	<unknown>
 800b010: ffff ffff    	<unknown>
 800b014: ffff ffff    	<unknown>
 800b018: ffff ffff    	<unknown>
 800b01c: ffff ffff    	<unknown>
 800b020: ffff ffff    	<unknown>
 800b024: ffff ffff    	<unknown>
 800b028: ffff ffff    	<unknown>
 800b02c: ffff ffff    	<unknown>
 800b030: ffff ffff    	<unknown>
 800b034: ffff ffff    	<unknown>
 800b038: ffff ffff    	<unknown>
 800b03c: ffff ffff    	<unknown>
 800b040: ffff ffff    	<unknown>
 800b044: ffff ffff    	<unknown>
 800b048: ffff ffff    	<unknown>
 800b04c: ffff ffff    	<unknown>
 800b050: ffff ffff    	<unknown>
 800b054: ffff ffff    	<unknown>
 800b058: ffff ffff    	<unknown>
 800b05c: ffff ffff    	<unknown>
 800b060: ffff ffff    	<unknown>
 800b064: ffff ffff    	<unknown>
 800b068: ffff ffff    	<unknown>
 800b06c: ffff ffff    	<unknown>
 800b070: ffff ffff    	<unknown>
 800b074: ffff ffff    	<unknown>
 800b078: ffff ffff    	<unknown>
 800b07c: ffff ffff    	<unknown>
 800b080: ffff ffff    	<unknown>
 800b084: ffff ffff    	<unknown>
 800b088: ffff ffff    	<unknown>
 800b08c: ffff ffff    	<unknown>
 800b090: ffff ffff    	<unknown>
 800b094: ffff ffff    	<unknown>
 800b098: ffff ffff    	<unknown>
 800b09c: ffff ffff    	<unknown>
 800b0a0: ffff ffff    	<unknown>
 800b0a4: ffff ffff    	<unknown>
 800b0a8: ffff ffff    	<unknown>
 800b0ac: ffff ffff    	<unknown>
 800b0b0: ffff ffff    	<unknown>
 800b0b4: ffff ffff    	<unknown>
 800b0b8: ffff ffff    	<unknown>
 800b0bc: ffff ffff    	<unknown>
 800b0c0: ffff ffff    	<unknown>
 800b0c4: ffff ffff    	<unknown>
 800b0c8: ffff ffff    	<unknown>
 800b0cc: ffff ffff    	<unknown>
 800b0d0: ffff ffff    	<unknown>
 800b0d4: ffff ffff    	<unknown>
 800b0d8: ffff ffff    	<unknown>
 800b0dc: ffff ffff    	<unknown>
 800b0e0: ffff ffff    	<unknown>
 800b0e4: ffff ffff    	<unknown>
 800b0e8: ffff ffff    	<unknown>
 800b0ec: ffff ffff    	<unknown>
 800b0f0: ffff ffff    	<unknown>
 800b0f4: ffff ffff    	<unknown>
 800b0f8: ffff ffff    	<unknown>
 800b0fc: ffff ffff    	<unknown>
 800b100: ffff ffff    	<unknown>
 800b104: ffff ffff    	<unknown>
 800b108: ffff ffff    	<unknown>
 800b10c: ffff ffff    	<unknown>
 800b110: ffff ffff    	<unknown>
 800b114: ffff ffff    	<unknown>
 800b118: ffff ffff    	<unknown>
 800b11c: ffff ffff    	<unknown>
 800b120: ffff ffff    	<unknown>
 800b124: ffff ffff    	<unknown>
 800b128: ffff ffff    	<unknown>
 800b12c: ffff ffff    	<unknown>
 800b130: ffff ffff    	<unknown>
 800b134: ffff ffff    	<unknown>
 800b138: ffff ffff    	<unknown>
 800b13c: ffff ffff    	<unknown>
 800b140: ffff ffff    	<unknown>
 800b144: ffff ffff    	<unknown>
 800b148: ffff ffff    	<unknown>
 800b14c: ffff ffff    	<unknown>
 800b150: ffff ffff    	<unknown>
 800b154: ffff ffff    	<unknown>
 800b158: ffff ffff    	<unknown>
 800b15c: ffff ffff    	<unknown>
 800b160: ffff ffff    	<unknown>
 800b164: ffff ffff    	<unknown>
 800b168: ffff ffff    	<unknown>
 800b16c: ffff ffff    	<unknown>
 800b170: ffff ffff    	<unknown>
 800b174: ffff ffff    	<unknown>
 800b178: ffff ffff    	<unknown>
 800b17c: ffff ffff    	<unknown>
 800b180: ffff ffff    	<unknown>
 800b184: ffff ffff    	<unknown>
 800b188: ffff ffff    	<unknown>
 800b18c: ffff ffff    	<unknown>
 800b190: ffff ffff    	<unknown>
 800b194: ffff ffff    	<unknown>
 800b198: ffff ffff    	<unknown>
 800b19c: ffff ffff    	<unknown>
 800b1a0: ffff ffff    	<unknown>
 800b1a4: ffff ffff    	<unknown>
 800b1a8: ffff ffff    	<unknown>
 800b1ac: ffff ffff    	<unknown>
 800b1b0: ffff ffff    	<unknown>
 800b1b4: ffff ffff    	<unknown>
 800b1b8: ffff ffff    	<unknown>
 800b1bc: ffff ffff    	<unknown>
 800b1c0: ffff ffff    	<unknown>
 800b1c4: ffff ffff    	<unknown>
 800b1c8: ffff ffff    	<unknown>
 800b1cc: ffff ffff    	<unknown>
 800b1d0: ffff ffff    	<unknown>
 800b1d4: ffff ffff    	<unknown>
 800b1d8: ffff ffff    	<unknown>
 800b1dc: ffff ffff    	<unknown>
 800b1e0: ffff ffff    	<unknown>
 800b1e4: ffff ffff    	<unknown>
 800b1e8: ffff ffff    	<unknown>
 800b1ec: ffff ffff    	<unknown>
 800b1f0: ffff ffff    	<unknown>
 800b1f4: ffff ffff    	<unknown>
 800b1f8: ffff ffff    	<unknown>
 800b1fc: ffff ffff    	<unknown>
 800b200: ffff ffff    	<unknown>
 800b204: ffff ffff    	<unknown>
 800b208: ffff ffff    	<unknown>
 800b20c: ffff ffff    	<unknown>
 800b210: ffff ffff    	<unknown>
 800b214: ffff ffff    	<unknown>
 800b218: ffff ffff    	<unknown>
 800b21c: ffff ffff    	<unknown>
 800b220: ffff ffff    	<unknown>
 800b224: ffff ffff    	<unknown>
 800b228: ffff ffff    	<unknown>
 800b22c: ffff ffff    	<unknown>
 800b230: ffff ffff    	<unknown>
 800b234: ffff ffff    	<unknown>
 800b238: ffff ffff    	<unknown>
 800b23c: ffff ffff    	<unknown>
 800b240: ffff ffff    	<unknown>
 800b244: ffff ffff    	<unknown>
 800b248: ffff ffff    	<unknown>
 800b24c: ffff ffff    	<unknown>
 800b250: ffff ffff    	<unknown>
 800b254: ffff ffff    	<unknown>
 800b258: ffff ffff    	<unknown>
 800b25c: ffff ffff    	<unknown>
 800b260: ffff ffff    	<unknown>
 800b264: ffff ffff    	<unknown>
 800b268: ffff ffff    	<unknown>
 800b26c: ffff ffff    	<unknown>
 800b270: ffff ffff    	<unknown>
 800b274: ffff ffff    	<unknown>
 800b278: ffff ffff    	<unknown>
 800b27c: ffff ffff    	<unknown>
 800b280: ffff ffff    	<unknown>
 800b284: ffff ffff    	<unknown>
 800b288: ffff ffff    	<unknown>
 800b28c: ffff ffff    	<unknown>
 800b290: ffff ffff    	<unknown>
 800b294: ffff ffff    	<unknown>
 800b298: ffff ffff    	<unknown>
 800b29c: ffff ffff    	<unknown>
 800b2a0: ffff ffff    	<unknown>
 800b2a4: ffff ffff    	<unknown>
 800b2a8: ffff ffff    	<unknown>
 800b2ac: ffff ffff    	<unknown>
 800b2b0: ffff ffff    	<unknown>
 800b2b4: ffff ffff    	<unknown>
 800b2b8: ffff ffff    	<unknown>
 800b2bc: ffff ffff    	<unknown>
 800b2c0: ffff ffff    	<unknown>
 800b2c4: ffff ffff    	<unknown>
 800b2c8: ffff ffff    	<unknown>
 800b2cc: ffff ffff    	<unknown>
 800b2d0: ffff ffff    	<unknown>
 800b2d4: ffff ffff    	<unknown>
 800b2d8: ffff ffff    	<unknown>
 800b2dc: ffff ffff    	<unknown>
 800b2e0: ffff ffff    	<unknown>
 800b2e4: ffff ffff    	<unknown>
 800b2e8: ffff ffff    	<unknown>
 800b2ec: ffff ffff    	<unknown>
 800b2f0: ffff ffff    	<unknown>
 800b2f4: ffff ffff    	<unknown>
 800b2f8: ffff ffff    	<unknown>
 800b2fc: ffff ffff    	<unknown>
 800b300: ffff ffff    	<unknown>
 800b304: ffff ffff    	<unknown>
 800b308: ffff ffff    	<unknown>
 800b30c: ffff ffff    	<unknown>
 800b310: ffff ffff    	<unknown>
 800b314: ffff ffff    	<unknown>
 800b318: ffff ffff    	<unknown>
 800b31c: ffff ffff    	<unknown>
 800b320: ffff ffff    	<unknown>
 800b324: ffff ffff    	<unknown>
 800b328: ffff ffff    	<unknown>
 800b32c: ffff ffff    	<unknown>
 800b330: ffff ffff    	<unknown>
 800b334: ffff ffff    	<unknown>
 800b338: ffff ffff    	<unknown>
 800b33c: ffff ffff    	<unknown>
 800b340: ffff ffff    	<unknown>
 800b344: ffff ffff    	<unknown>
 800b348: ffff ffff    	<unknown>
 800b34c: ffff ffff    	<unknown>
 800b350: ffff ffff    	<unknown>
 800b354: ffff ffff    	<unknown>
 800b358: ffff ffff    	<unknown>
 800b35c: ffff ffff    	<unknown>
 800b360: ffff ffff    	<unknown>
 800b364: ffff ffff    	<unknown>
 800b368: ffff ffff    	<unknown>
 800b36c: ffff ffff    	<unknown>
 800b370: ffff ffff    	<unknown>
 800b374: ffff ffff    	<unknown>
 800b378: ffff ffff    	<unknown>
 800b37c: ffff ffff    	<unknown>
 800b380: ffff ffff    	<unknown>
 800b384: ffff ffff    	<unknown>
 800b388: ffff ffff    	<unknown>
 800b38c: ffff ffff    	<unknown>
 800b390: ffff ffff    	<unknown>
 800b394: ffff ffff    	<unknown>
 800b398: ffff ffff    	<unknown>
 800b39c: ffff ffff    	<unknown>
 800b3a0: ffff ffff    	<unknown>
 800b3a4: ffff ffff    	<unknown>
 800b3a8: ffff ffff    	<unknown>
 800b3ac: ffff ffff    	<unknown>
 800b3b0: ffff ffff    	<unknown>
 800b3b4: ffff ffff    	<unknown>
 800b3b8: ffff ffff    	<unknown>
 800b3bc: ffff ffff    	<unknown>
 800b3c0: ffff ffff    	<unknown>
 800b3c4: ffff ffff    	<unknown>
 800b3c8: ffff ffff    	<unknown>
 800b3cc: ffff ffff    	<unknown>
 800b3d0: ffff ffff    	<unknown>
 800b3d4: ffff ffff    	<unknown>
 800b3d8: ffff ffff    	<unknown>
 800b3dc: ffff ffff    	<unknown>
 800b3e0: ffff ffff    	<unknown>
 800b3e4: ffff ffff    	<unknown>
 800b3e8: ffff ffff    	<unknown>
 800b3ec: ffff ffff    	<unknown>
 800b3f0: ffff ffff    	<unknown>
 800b3f4: ffff ffff    	<unknown>
 800b3f8: ffff ffff    	<unknown>
 800b3fc: ffff ffff    	<unknown>
 800b400: ffff ffff    	<unknown>
 800b404: ffff ffff    	<unknown>
 800b408: ffff ffff    	<unknown>
 800b40c: ffff ffff    	<unknown>
 800b410: ffff ffff    	<unknown>
 800b414: ffff ffff    	<unknown>
 800b418: ffff ffff    	<unknown>
 800b41c: ffff ffff    	<unknown>
 800b420: ffff ffff    	<unknown>
 800b424: ffff ffff    	<unknown>
 800b428: ffff ffff    	<unknown>
 800b42c: ffff ffff    	<unknown>
 800b430: ffff ffff    	<unknown>
 800b434: ffff ffff    	<unknown>
 800b438: ffff ffff    	<unknown>
 800b43c: ffff ffff    	<unknown>
 800b440: ffff ffff    	<unknown>
 800b444: ffff ffff    	<unknown>
 800b448: ffff ffff    	<unknown>
 800b44c: ffff ffff    	<unknown>
 800b450: ffff ffff    	<unknown>
 800b454: ffff ffff    	<unknown>
 800b458: ffff ffff    	<unknown>
 800b45c: ffff ffff    	<unknown>
 800b460: ffff ffff    	<unknown>
 800b464: ffff ffff    	<unknown>
 800b468: ffff ffff    	<unknown>
 800b46c: ffff ffff    	<unknown>
 800b470: ffff ffff    	<unknown>
 800b474: ffff ffff    	<unknown>
 800b478: ffff ffff    	<unknown>
 800b47c: ffff ffff    	<unknown>
 800b480: ffff ffff    	<unknown>
 800b484: ffff ffff    	<unknown>
 800b488: ffff ffff    	<unknown>
 800b48c: ffff ffff    	<unknown>
 800b490: ffff ffff    	<unknown>
 800b494: ffff ffff    	<unknown>
 800b498: ffff ffff    	<unknown>
 800b49c: ffff ffff    	<unknown>
 800b4a0: ffff ffff    	<unknown>
 800b4a4: ffff ffff    	<unknown>
 800b4a8: ffff ffff    	<unknown>
 800b4ac: ffff ffff    	<unknown>
 800b4b0: ffff ffff    	<unknown>
 800b4b4: ffff ffff    	<unknown>
 800b4b8: ffff ffff    	<unknown>
 800b4bc: ffff ffff    	<unknown>
 800b4c0: ffff ffff    	<unknown>
 800b4c4: ffff ffff    	<unknown>
 800b4c8: ffff ffff    	<unknown>
 800b4cc: ffff ffff    	<unknown>
 800b4d0: ffff ffff    	<unknown>
 800b4d4: ffff ffff    	<unknown>
 800b4d8: ffff ffff    	<unknown>
 800b4dc: ffff ffff    	<unknown>
 800b4e0: ffff ffff    	<unknown>
 800b4e4: ffff ffff    	<unknown>
 800b4e8: ffff ffff    	<unknown>
 800b4ec: ffff ffff    	<unknown>
 800b4f0: ffff ffff    	<unknown>
 800b4f4: ffff ffff    	<unknown>
 800b4f8: ffff ffff    	<unknown>
 800b4fc: ffff ffff    	<unknown>
 800b500: ffff ffff    	<unknown>
 800b504: ffff ffff    	<unknown>
 800b508: ffff ffff    	<unknown>
 800b50c: ffff ffff    	<unknown>
 800b510: ffff ffff    	<unknown>
 800b514: ffff ffff    	<unknown>
 800b518: ffff ffff    	<unknown>
 800b51c: ffff ffff    	<unknown>
 800b520: ffff ffff    	<unknown>
 800b524: ffff ffff    	<unknown>
 800b528: ffff ffff    	<unknown>
 800b52c: ffff ffff    	<unknown>
 800b530: ffff ffff    	<unknown>
 800b534: ffff ffff    	<unknown>
 800b538: ffff ffff    	<unknown>
 800b53c: ffff ffff    	<unknown>
 800b540: ffff ffff    	<unknown>
 800b544: ffff ffff    	<unknown>
 800b548: ffff ffff    	<unknown>
 800b54c: ffff ffff    	<unknown>
 800b550: ffff ffff    	<unknown>
 800b554: ffff ffff    	<unknown>
 800b558: ffff ffff    	<unknown>
 800b55c: ffff ffff    	<unknown>
 800b560: ffff ffff    	<unknown>
 800b564: ffff ffff    	<unknown>
 800b568: ffff ffff    	<unknown>
 800b56c: ffff ffff    	<unknown>
 800b570: ffff ffff    	<unknown>
 800b574: ffff ffff    	<unknown>
 800b578: ffff ffff    	<unknown>
 800b57c: ffff ffff    	<unknown>
 800b580: ffff ffff    	<unknown>
 800b584: ffff ffff    	<unknown>
 800b588: ffff ffff    	<unknown>
 800b58c: ffff ffff    	<unknown>
 800b590: ffff ffff    	<unknown>
 800b594: ffff ffff    	<unknown>
 800b598: ffff ffff    	<unknown>
 800b59c: ffff ffff    	<unknown>
 800b5a0: ffff ffff    	<unknown>
 800b5a4: ffff ffff    	<unknown>
 800b5a8: ffff ffff    	<unknown>
 800b5ac: ffff ffff    	<unknown>
 800b5b0: ffff ffff    	<unknown>
 800b5b4: ffff ffff    	<unknown>
 800b5b8: ffff ffff    	<unknown>
 800b5bc: ffff ffff    	<unknown>
 800b5c0: ffff ffff    	<unknown>
 800b5c4: ffff ffff    	<unknown>
 800b5c8: ffff ffff    	<unknown>
 800b5cc: ffff ffff    	<unknown>
 800b5d0: ffff ffff    	<unknown>
 800b5d4: ffff ffff    	<unknown>
 800b5d8: ffff ffff    	<unknown>
 800b5dc: ffff ffff    	<unknown>
 800b5e0: ffff ffff    	<unknown>
 800b5e4: ffff ffff    	<unknown>
 800b5e8: ffff ffff    	<unknown>
 800b5ec: ffff ffff    	<unknown>
 800b5f0: ffff ffff    	<unknown>
 800b5f4: ffff ffff    	<unknown>
 800b5f8: ffff ffff    	<unknown>
 800b5fc: ffff ffff    	<unknown>
 800b600: ffff ffff    	<unknown>
 800b604: ffff ffff    	<unknown>
 800b608: ffff ffff    	<unknown>
 800b60c: ffff ffff    	<unknown>
 800b610: ffff ffff    	<unknown>
 800b614: ffff ffff    	<unknown>
 800b618: ffff ffff    	<unknown>
 800b61c: ffff ffff    	<unknown>
 800b620: ffff ffff    	<unknown>
 800b624: ffff ffff    	<unknown>
 800b628: ffff ffff    	<unknown>
 800b62c: ffff ffff    	<unknown>
 800b630: ffff ffff    	<unknown>
 800b634: ffff ffff    	<unknown>
 800b638: ffff ffff    	<unknown>
 800b63c: ffff ffff    	<unknown>
 800b640: ffff ffff    	<unknown>
 800b644: ffff ffff    	<unknown>
 800b648: ffff ffff    	<unknown>
 800b64c: ffff ffff    	<unknown>
 800b650: ffff ffff    	<unknown>
 800b654: ffff ffff    	<unknown>
 800b658: ffff ffff    	<unknown>
 800b65c: ffff ffff    	<unknown>
 800b660: ffff ffff    	<unknown>
 800b664: ffff ffff    	<unknown>
 800b668: ffff ffff    	<unknown>
 800b66c: ffff ffff    	<unknown>
 800b670: ffff ffff    	<unknown>
 800b674: ffff ffff    	<unknown>
 800b678: ffff ffff    	<unknown>
 800b67c: ffff ffff    	<unknown>
 800b680: ffff ffff    	<unknown>
 800b684: ffff ffff    	<unknown>
 800b688: ffff ffff    	<unknown>
 800b68c: ffff ffff    	<unknown>
 800b690: ffff ffff    	<unknown>
 800b694: ffff ffff    	<unknown>
 800b698: ffff ffff    	<unknown>
 800b69c: ffff ffff    	<unknown>
 800b6a0: ffff ffff    	<unknown>
 800b6a4: ffff ffff    	<unknown>
 800b6a8: ffff ffff    	<unknown>
 800b6ac: ffff ffff    	<unknown>
 800b6b0: ffff ffff    	<unknown>
 800b6b4: ffff ffff    	<unknown>
 800b6b8: ffff ffff    	<unknown>
 800b6bc: ffff ffff    	<unknown>
 800b6c0: ffff ffff    	<unknown>
 800b6c4: ffff ffff    	<unknown>
 800b6c8: ffff ffff    	<unknown>
 800b6cc: ffff ffff    	<unknown>
 800b6d0: ffff ffff    	<unknown>
 800b6d4: ffff ffff    	<unknown>
 800b6d8: ffff ffff    	<unknown>
 800b6dc: ffff ffff    	<unknown>
 800b6e0: ffff ffff    	<unknown>
 800b6e4: ffff ffff    	<unknown>
 800b6e8: ffff ffff    	<unknown>
 800b6ec: ffff ffff    	<unknown>
 800b6f0: ffff ffff    	<unknown>
 800b6f4: ffff ffff    	<unknown>
 800b6f8: ffff ffff    	<unknown>
 800b6fc: ffff ffff    	<unknown>
 800b700: ffff ffff    	<unknown>
 800b704: ffff ffff    	<unknown>
 800b708: ffff ffff    	<unknown>
 800b70c: ffff ffff    	<unknown>
 800b710: ffff ffff    	<unknown>
 800b714: ffff ffff    	<unknown>
 800b718: ffff ffff    	<unknown>
 800b71c: ffff ffff    	<unknown>
 800b720: ffff ffff    	<unknown>
 800b724: ffff ffff    	<unknown>
 800b728: ffff ffff    	<unknown>
 800b72c: ffff ffff    	<unknown>
 800b730: ffff ffff    	<unknown>
 800b734: ffff ffff    	<unknown>
 800b738: ffff ffff    	<unknown>
 800b73c: ffff ffff    	<unknown>
 800b740: ffff ffff    	<unknown>
 800b744: ffff ffff    	<unknown>
 800b748: ffff ffff    	<unknown>
 800b74c: ffff ffff    	<unknown>
 800b750: ffff ffff    	<unknown>
 800b754: ffff ffff    	<unknown>
 800b758: ffff ffff    	<unknown>
 800b75c: ffff ffff    	<unknown>
 800b760: ffff ffff    	<unknown>
 800b764: ffff ffff    	<unknown>
 800b768: ffff ffff    	<unknown>
 800b76c: ffff ffff    	<unknown>
 800b770: ffff ffff    	<unknown>
 800b774: ffff ffff    	<unknown>
 800b778: ffff ffff    	<unknown>
 800b77c: ffff ffff    	<unknown>
 800b780: ffff ffff    	<unknown>
 800b784: ffff ffff    	<unknown>
 800b788: ffff ffff    	<unknown>
 800b78c: ffff ffff    	<unknown>
 800b790: ffff ffff    	<unknown>
 800b794: ffff ffff    	<unknown>
 800b798: ffff ffff    	<unknown>
 800b79c: ffff ffff    	<unknown>
 800b7a0: ffff ffff    	<unknown>
 800b7a4: ffff ffff    	<unknown>
 800b7a8: ffff ffff    	<unknown>
 800b7ac: ffff ffff    	<unknown>
 800b7b0: ffff ffff    	<unknown>
 800b7b4: ffff ffff    	<unknown>
 800b7b8: ffff ffff    	<unknown>
 800b7bc: ffff ffff    	<unknown>
 800b7c0: ffff ffff    	<unknown>
 800b7c4: ffff ffff    	<unknown>
 800b7c8: ffff ffff    	<unknown>
 800b7cc: ffff ffff    	<unknown>
 800b7d0: ffff ffff    	<unknown>
 800b7d4: ffff ffff    	<unknown>
 800b7d8: ffff ffff    	<unknown>
 800b7dc: ffff ffff    	<unknown>
 800b7e0: ffff ffff    	<unknown>
 800b7e4: ffff ffff    	<unknown>
 800b7e8: ffff ffff    	<unknown>
 800b7ec: ffff ffff    	<unknown>
 800b7f0: ffff ffff    	<unknown>
 800b7f4: ffff ffff    	<unknown>
 800b7f8: ffff ffff    	<unknown>
 800b7fc: ffff ffff    	<unknown>
 800b800: ffff ffff    	<unknown>
 800b804: ffff ffff    	<unknown>
 800b808: ffff ffff    	<unknown>
 800b80c: ffff ffff    	<unknown>
 800b810: ffff ffff    	<unknown>
 800b814: ffff ffff    	<unknown>
 800b818: ffff ffff    	<unknown>
 800b81c: ffff ffff    	<unknown>
 800b820: ffff ffff    	<unknown>
 800b824: ffff ffff    	<unknown>
 800b828: ffff ffff    	<unknown>
 800b82c: ffff ffff    	<unknown>
 800b830: ffff ffff    	<unknown>
 800b834: ffff ffff    	<unknown>
 800b838: ffff ffff    	<unknown>
 800b83c: ffff ffff    	<unknown>
 800b840: ffff ffff    	<unknown>
 800b844: ffff ffff    	<unknown>
 800b848: ffff ffff    	<unknown>
 800b84c: ffff ffff    	<unknown>
 800b850: ffff ffff    	<unknown>
 800b854: ffff ffff    	<unknown>
 800b858: ffff ffff    	<unknown>
 800b85c: ffff ffff    	<unknown>
 800b860: ffff ffff    	<unknown>
 800b864: ffff ffff    	<unknown>
 800b868: ffff ffff    	<unknown>
 800b86c: ffff ffff    	<unknown>
 800b870: ffff ffff    	<unknown>
 800b874: ffff ffff    	<unknown>
 800b878: ffff ffff    	<unknown>
 800b87c: ffff ffff    	<unknown>
 800b880: ffff ffff    	<unknown>
 800b884: ffff ffff    	<unknown>
 800b888: ffff ffff    	<unknown>
 800b88c: ffff ffff    	<unknown>
 800b890: ffff ffff    	<unknown>
 800b894: ffff ffff    	<unknown>
 800b898: ffff ffff    	<unknown>
 800b89c: ffff ffff    	<unknown>
 800b8a0: ffff ffff    	<unknown>
 800b8a4: ffff ffff    	<unknown>
 800b8a8: ffff ffff    	<unknown>
 800b8ac: ffff ffff    	<unknown>
 800b8b0: ffff ffff    	<unknown>
 800b8b4: ffff ffff    	<unknown>
 800b8b8: ffff ffff    	<unknown>
 800b8bc: ffff ffff    	<unknown>
 800b8c0: ffff ffff    	<unknown>
 800b8c4: ffff ffff    	<unknown>
 800b8c8: ffff ffff    	<unknown>
 800b8cc: ffff ffff    	<unknown>
 800b8d0: ffff ffff    	<unknown>
 800b8d4: ffff ffff    	<unknown>
 800b8d8: ffff ffff    	<unknown>
 800b8dc: ffff ffff    	<unknown>
 800b8e0: ffff ffff    	<unknown>
 800b8e4: ffff ffff    	<unknown>
 800b8e8: ffff ffff    	<unknown>
 800b8ec: ffff ffff    	<unknown>
 800b8f0: ffff ffff    	<unknown>
 800b8f4: ffff ffff    	<unknown>
 800b8f8: ffff ffff    	<unknown>
 800b8fc: ffff ffff    	<unknown>
 800b900: ffff ffff    	<unknown>
 800b904: ffff ffff    	<unknown>
 800b908: ffff ffff    	<unknown>
 800b90c: ffff ffff    	<unknown>
 800b910: ffff ffff    	<unknown>
 800b914: ffff ffff    	<unknown>
 800b918: ffff ffff    	<unknown>
 800b91c: ffff ffff    	<unknown>
 800b920: ffff ffff    	<unknown>
 800b924: ffff ffff    	<unknown>
 800b928: ffff ffff    	<unknown>
 800b92c: ffff ffff    	<unknown>
 800b930: ffff ffff    	<unknown>
 800b934: ffff ffff    	<unknown>
 800b938: ffff ffff    	<unknown>
 800b93c: ffff ffff    	<unknown>
 800b940: ffff ffff    	<unknown>
 800b944: ffff ffff    	<unknown>
 800b948: ffff ffff    	<unknown>
 800b94c: ffff ffff    	<unknown>
 800b950: ffff ffff    	<unknown>
 800b954: ffff ffff    	<unknown>
 800b958: ffff ffff    	<unknown>
 800b95c: ffff ffff    	<unknown>
 800b960: ffff ffff    	<unknown>
 800b964: ffff ffff    	<unknown>
 800b968: ffff ffff    	<unknown>
 800b96c: ffff ffff    	<unknown>
 800b970: ffff ffff    	<unknown>
 800b974: ffff ffff    	<unknown>
 800b978: ffff ffff    	<unknown>
 800b97c: ffff ffff    	<unknown>
 800b980: ffff ffff    	<unknown>
 800b984: ffff ffff    	<unknown>
 800b988: ffff ffff    	<unknown>
 800b98c: ffff ffff    	<unknown>
 800b990: ffff ffff    	<unknown>
 800b994: ffff ffff    	<unknown>
 800b998: ffff ffff    	<unknown>
 800b99c: ffff ffff    	<unknown>
 800b9a0: ffff ffff    	<unknown>
 800b9a4: ffff ffff    	<unknown>
 800b9a8: ffff ffff    	<unknown>
 800b9ac: ffff ffff    	<unknown>
 800b9b0: ffff ffff    	<unknown>
 800b9b4: ffff ffff    	<unknown>
 800b9b8: ffff ffff    	<unknown>
 800b9bc: ffff ffff    	<unknown>
 800b9c0: ffff ffff    	<unknown>
 800b9c4: ffff ffff    	<unknown>
 800b9c8: ffff ffff    	<unknown>
 800b9cc: ffff ffff    	<unknown>
 800b9d0: ffff ffff    	<unknown>
 800b9d4: ffff ffff    	<unknown>
 800b9d8: ffff ffff    	<unknown>
 800b9dc: ffff ffff    	<unknown>
 800b9e0: ffff ffff    	<unknown>
 800b9e4: ffff ffff    	<unknown>
 800b9e8: ffff ffff    	<unknown>
 800b9ec: ffff ffff    	<unknown>
 800b9f0: ffff ffff    	<unknown>
 800b9f4: ffff ffff    	<unknown>
 800b9f8: ffff ffff    	<unknown>
 800b9fc: ffff ffff    	<unknown>
 800ba00: ffff ffff    	<unknown>
 800ba04: ffff ffff    	<unknown>
 800ba08: ffff ffff    	<unknown>
 800ba0c: ffff ffff    	<unknown>
 800ba10: ffff ffff    	<unknown>
 800ba14: ffff ffff    	<unknown>
 800ba18: ffff ffff    	<unknown>
 800ba1c: ffff ffff    	<unknown>
 800ba20: ffff ffff    	<unknown>
 800ba24: ffff ffff    	<unknown>
 800ba28: ffff ffff    	<unknown>
 800ba2c: ffff ffff    	<unknown>
 800ba30: ffff ffff    	<unknown>
 800ba34: ffff ffff    	<unknown>
 800ba38: ffff ffff    	<unknown>
 800ba3c: ffff ffff    	<unknown>
 800ba40: ffff ffff    	<unknown>
 800ba44: ffff ffff    	<unknown>
 800ba48: ffff ffff    	<unknown>
 800ba4c: ffff ffff    	<unknown>
 800ba50: ffff ffff    	<unknown>
 800ba54: ffff ffff    	<unknown>
 800ba58: ffff ffff    	<unknown>
 800ba5c: ffff ffff    	<unknown>
 800ba60: ffff ffff    	<unknown>
 800ba64: ffff ffff    	<unknown>
 800ba68: ffff ffff    	<unknown>
 800ba6c: ffff ffff    	<unknown>
 800ba70: ffff ffff    	<unknown>
 800ba74: ffff ffff    	<unknown>
 800ba78: ffff ffff    	<unknown>
 800ba7c: ffff ffff    	<unknown>
 800ba80: ffff ffff    	<unknown>
 800ba84: ffff ffff    	<unknown>
 800ba88: ffff ffff    	<unknown>
 800ba8c: ffff ffff    	<unknown>
 800ba90: ffff ffff    	<unknown>
 800ba94: ffff ffff    	<unknown>
 800ba98: ffff ffff    	<unknown>
 800ba9c: ffff ffff    	<unknown>
 800baa0: ffff ffff    	<unknown>
 800baa4: ffff ffff    	<unknown>
 800baa8: ffff ffff    	<unknown>
 800baac: ffff ffff    	<unknown>
 800bab0: ffff ffff    	<unknown>
 800bab4: ffff ffff    	<unknown>
 800bab8: ffff ffff    	<unknown>
 800babc: ffff ffff    	<unknown>
 800bac0: ffff ffff    	<unknown>
 800bac4: ffff ffff    	<unknown>
 800bac8: ffff ffff    	<unknown>
 800bacc: ffff ffff    	<unknown>
 800bad0: ffff ffff    	<unknown>
 800bad4: ffff ffff    	<unknown>
 800bad8: ffff ffff    	<unknown>
 800badc: ffff ffff    	<unknown>
 800bae0: ffff ffff    	<unknown>
 800bae4: ffff ffff    	<unknown>
 800bae8: ffff ffff    	<unknown>
 800baec: ffff ffff    	<unknown>
 800baf0: ffff ffff    	<unknown>
 800baf4: ffff ffff    	<unknown>
 800baf8: ffff ffff    	<unknown>
 800bafc: ffff ffff    	<unknown>
 800bb00: ffff ffff    	<unknown>
 800bb04: ffff ffff    	<unknown>
 800bb08: ffff ffff    	<unknown>
 800bb0c: ffff ffff    	<unknown>
 800bb10: ffff ffff    	<unknown>
 800bb14: ffff ffff    	<unknown>
 800bb18: ffff ffff    	<unknown>
 800bb1c: ffff ffff    	<unknown>
 800bb20: ffff ffff    	<unknown>
 800bb24: ffff ffff    	<unknown>
 800bb28: ffff ffff    	<unknown>
 800bb2c: ffff ffff    	<unknown>
 800bb30: ffff ffff    	<unknown>
 800bb34: ffff ffff    	<unknown>
 800bb38: ffff ffff    	<unknown>
 800bb3c: ffff ffff    	<unknown>
 800bb40: ffff ffff    	<unknown>
 800bb44: ffff ffff    	<unknown>
 800bb48: ffff ffff    	<unknown>
 800bb4c: ffff ffff    	<unknown>
 800bb50: ffff ffff    	<unknown>
 800bb54: ffff ffff    	<unknown>
 800bb58: ffff ffff    	<unknown>
 800bb5c: ffff ffff    	<unknown>
 800bb60: ffff ffff    	<unknown>
 800bb64: ffff ffff    	<unknown>
 800bb68: ffff ffff    	<unknown>
 800bb6c: ffff ffff    	<unknown>
 800bb70: ffff ffff    	<unknown>
 800bb74: ffff ffff    	<unknown>
 800bb78: ffff ffff    	<unknown>
 800bb7c: ffff ffff    	<unknown>
 800bb80: ffff ffff    	<unknown>
 800bb84: ffff ffff    	<unknown>
 800bb88: ffff ffff    	<unknown>
 800bb8c: ffff ffff    	<unknown>
 800bb90: ffff ffff    	<unknown>
 800bb94: ffff ffff    	<unknown>
 800bb98: ffff ffff    	<unknown>
 800bb9c: ffff ffff    	<unknown>
 800bba0: ffff ffff    	<unknown>
 800bba4: ffff ffff    	<unknown>
 800bba8: ffff ffff    	<unknown>
 800bbac: ffff ffff    	<unknown>
 800bbb0: ffff ffff    	<unknown>
 800bbb4: ffff ffff    	<unknown>
 800bbb8: ffff ffff    	<unknown>
 800bbbc: ffff ffff    	<unknown>
 800bbc0: ffff ffff    	<unknown>
 800bbc4: ffff ffff    	<unknown>
 800bbc8: ffff ffff    	<unknown>
 800bbcc: ffff ffff    	<unknown>
 800bbd0: ffff ffff    	<unknown>
 800bbd4: ffff ffff    	<unknown>
 800bbd8: ffff ffff    	<unknown>
 800bbdc: ffff ffff    	<unknown>
 800bbe0: ffff ffff    	<unknown>
 800bbe4: ffff ffff    	<unknown>
 800bbe8: ffff ffff    	<unknown>
 800bbec: ffff ffff    	<unknown>
 800bbf0: ffff ffff    	<unknown>
 800bbf4: ffff ffff    	<unknown>
 800bbf8: ffff ffff    	<unknown>
 800bbfc: ffff ffff    	<unknown>
 800bc00: ffff ffff    	<unknown>
 800bc04: ffff ffff    	<unknown>
 800bc08: ffff ffff    	<unknown>
 800bc0c: ffff ffff    	<unknown>
 800bc10: ffff ffff    	<unknown>
 800bc14: ffff ffff    	<unknown>
 800bc18: ffff ffff    	<unknown>
 800bc1c: ffff ffff    	<unknown>
 800bc20: ffff ffff    	<unknown>
 800bc24: ffff ffff    	<unknown>
 800bc28: ffff ffff    	<unknown>
 800bc2c: ffff ffff    	<unknown>
 800bc30: ffff ffff    	<unknown>
 800bc34: ffff ffff    	<unknown>
 800bc38: ffff ffff    	<unknown>
 800bc3c: ffff ffff    	<unknown>
 800bc40: ffff ffff    	<unknown>
 800bc44: ffff ffff    	<unknown>
 800bc48: ffff ffff    	<unknown>
 800bc4c: ffff ffff    	<unknown>
 800bc50: ffff ffff    	<unknown>
 800bc54: ffff ffff    	<unknown>
 800bc58: ffff ffff    	<unknown>
 800bc5c: ffff ffff    	<unknown>
 800bc60: ffff ffff    	<unknown>
 800bc64: ffff ffff    	<unknown>
 800bc68: ffff ffff    	<unknown>
 800bc6c: ffff ffff    	<unknown>
 800bc70: ffff ffff    	<unknown>
 800bc74: ffff ffff    	<unknown>
 800bc78: ffff ffff    	<unknown>
 800bc7c: ffff ffff    	<unknown>
 800bc80: ffff ffff    	<unknown>
 800bc84: ffff ffff    	<unknown>
 800bc88: ffff ffff    	<unknown>
 800bc8c: ffff ffff    	<unknown>
 800bc90: ffff ffff    	<unknown>
 800bc94: ffff ffff    	<unknown>
 800bc98: ffff ffff    	<unknown>
 800bc9c: ffff ffff    	<unknown>
 800bca0: ffff ffff    	<unknown>
 800bca4: ffff ffff    	<unknown>
 800bca8: ffff ffff    	<unknown>
 800bcac: ffff ffff    	<unknown>
 800bcb0: ffff ffff    	<unknown>
 800bcb4: ffff ffff    	<unknown>
 800bcb8: ffff ffff    	<unknown>
 800bcbc: ffff ffff    	<unknown>
 800bcc0: ffff ffff    	<unknown>
 800bcc4: ffff ffff    	<unknown>
 800bcc8: ffff ffff    	<unknown>
 800bccc: ffff ffff    	<unknown>
 800bcd0: ffff ffff    	<unknown>
 800bcd4: ffff ffff    	<unknown>
 800bcd8: ffff ffff    	<unknown>
 800bcdc: ffff ffff    	<unknown>
 800bce0: ffff ffff    	<unknown>
 800bce4: ffff ffff    	<unknown>
 800bce8: ffff ffff    	<unknown>
 800bcec: ffff ffff    	<unknown>
 800bcf0: ffff ffff    	<unknown>
 800bcf4: ffff ffff    	<unknown>
 800bcf8: ffff ffff    	<unknown>
 800bcfc: ffff ffff    	<unknown>
 800bd00: ffff ffff    	<unknown>
 800bd04: ffff ffff    	<unknown>
 800bd08: ffff ffff    	<unknown>
 800bd0c: ffff ffff    	<unknown>
 800bd10: ffff ffff    	<unknown>
 800bd14: ffff ffff    	<unknown>
 800bd18: ffff ffff    	<unknown>
 800bd1c: ffff ffff    	<unknown>
 800bd20: ffff ffff    	<unknown>
 800bd24: ffff ffff    	<unknown>
 800bd28: ffff ffff    	<unknown>
 800bd2c: ffff ffff    	<unknown>
 800bd30: ffff ffff    	<unknown>
 800bd34: ffff ffff    	<unknown>
 800bd38: ffff ffff    	<unknown>
 800bd3c: ffff ffff    	<unknown>
 800bd40: ffff ffff    	<unknown>
 800bd44: ffff ffff    	<unknown>
 800bd48: ffff ffff    	<unknown>
 800bd4c: ffff ffff    	<unknown>
 800bd50: ffff ffff    	<unknown>
 800bd54: ffff ffff    	<unknown>
 800bd58: ffff ffff    	<unknown>
 800bd5c: ffff ffff    	<unknown>
 800bd60: ffff ffff    	<unknown>
 800bd64: ffff ffff    	<unknown>
 800bd68: ffff ffff    	<unknown>
 800bd6c: ffff ffff    	<unknown>
 800bd70: ffff ffff    	<unknown>
 800bd74: ffff ffff    	<unknown>
 800bd78: ffff ffff    	<unknown>
 800bd7c: ffff ffff    	<unknown>
 800bd80: ffff ffff    	<unknown>
 800bd84: ffff ffff    	<unknown>
 800bd88: ffff ffff    	<unknown>
 800bd8c: ffff ffff    	<unknown>
 800bd90: ffff ffff    	<unknown>
 800bd94: ffff ffff    	<unknown>
 800bd98: ffff ffff    	<unknown>
 800bd9c: ffff ffff    	<unknown>
 800bda0: ffff ffff    	<unknown>
 800bda4: ffff ffff    	<unknown>
 800bda8: ffff ffff    	<unknown>
 800bdac: ffff ffff    	<unknown>
 800bdb0: ffff ffff    	<unknown>
 800bdb4: ffff ffff    	<unknown>
 800bdb8: ffff ffff    	<unknown>
 800bdbc: ffff ffff    	<unknown>
 800bdc0: ffff ffff    	<unknown>
 800bdc4: ffff ffff    	<unknown>
 800bdc8: ffff ffff    	<unknown>
 800bdcc: ffff ffff    	<unknown>
 800bdd0: ffff ffff    	<unknown>
 800bdd4: ffff ffff    	<unknown>
 800bdd8: ffff ffff    	<unknown>
 800bddc: ffff ffff    	<unknown>
 800bde0: ffff ffff    	<unknown>
 800bde4: ffff ffff    	<unknown>
 800bde8: ffff ffff    	<unknown>
 800bdec: ffff ffff    	<unknown>
 800bdf0: ffff ffff    	<unknown>
 800bdf4: ffff ffff    	<unknown>
 800bdf8: ffff ffff    	<unknown>
 800bdfc: ffff ffff    	<unknown>
 800be00: ffff ffff    	<unknown>
 800be04: ffff ffff    	<unknown>
 800be08: ffff ffff    	<unknown>
 800be0c: ffff ffff    	<unknown>
 800be10: ffff ffff    	<unknown>
 800be14: ffff ffff    	<unknown>
 800be18: ffff ffff    	<unknown>
 800be1c: ffff ffff    	<unknown>
 800be20: ffff ffff    	<unknown>
 800be24: ffff ffff    	<unknown>
 800be28: ffff ffff    	<unknown>
 800be2c: ffff ffff    	<unknown>
 800be30: ffff ffff    	<unknown>
 800be34: ffff ffff    	<unknown>
 800be38: ffff ffff    	<unknown>
 800be3c: ffff ffff    	<unknown>
 800be40: ffff ffff    	<unknown>
 800be44: ffff ffff    	<unknown>
 800be48: ffff ffff    	<unknown>
 800be4c: ffff ffff    	<unknown>
 800be50: ffff ffff    	<unknown>
 800be54: ffff ffff    	<unknown>
 800be58: ffff ffff    	<unknown>
 800be5c: ffff ffff    	<unknown>
 800be60: ffff ffff    	<unknown>
 800be64: ffff ffff    	<unknown>
 800be68: ffff ffff    	<unknown>
 800be6c: ffff ffff    	<unknown>
 800be70: ffff ffff    	<unknown>
 800be74: ffff ffff    	<unknown>
 800be78: ffff ffff    	<unknown>
 800be7c: ffff ffff    	<unknown>
 800be80: ffff ffff    	<unknown>
 800be84: ffff ffff    	<unknown>
 800be88: ffff ffff    	<unknown>
 800be8c: ffff ffff    	<unknown>
 800be90: ffff ffff    	<unknown>
 800be94: ffff ffff    	<unknown>
 800be98: ffff ffff    	<unknown>
 800be9c: ffff ffff    	<unknown>
 800bea0: ffff ffff    	<unknown>
 800bea4: ffff ffff    	<unknown>
 800bea8: ffff ffff    	<unknown>
 800beac: ffff ffff    	<unknown>
 800beb0: ffff ffff    	<unknown>
 800beb4: ffff ffff    	<unknown>
 800beb8: ffff ffff    	<unknown>
 800bebc: ffff ffff    	<unknown>
 800bec0: ffff ffff    	<unknown>
 800bec4: ffff ffff    	<unknown>
 800bec8: ffff ffff    	<unknown>
 800becc: ffff ffff    	<unknown>
 800bed0: ffff ffff    	<unknown>
 800bed4: ffff ffff    	<unknown>
 800bed8: ffff ffff    	<unknown>
 800bedc: ffff ffff    	<unknown>
 800bee0: ffff ffff    	<unknown>
 800bee4: ffff ffff    	<unknown>
 800bee8: ffff ffff    	<unknown>
 800beec: ffff ffff    	<unknown>
 800bef0: ffff ffff    	<unknown>
 800bef4: ffff ffff    	<unknown>
 800bef8: ffff ffff    	<unknown>
 800befc: ffff ffff    	<unknown>
 800bf00: ffff ffff    	<unknown>
 800bf04: ffff ffff    	<unknown>
 800bf08: ffff ffff    	<unknown>
 800bf0c: ffff ffff    	<unknown>
 800bf10: ffff ffff    	<unknown>
 800bf14: ffff ffff    	<unknown>
 800bf18: ffff ffff    	<unknown>
 800bf1c: ffff ffff    	<unknown>
 800bf20: ffff ffff    	<unknown>
 800bf24: ffff ffff    	<unknown>
 800bf28: ffff ffff    	<unknown>
 800bf2c: ffff ffff    	<unknown>
 800bf30: ffff ffff    	<unknown>
 800bf34: ffff ffff    	<unknown>
 800bf38: ffff ffff    	<unknown>
 800bf3c: ffff ffff    	<unknown>
 800bf40: ffff ffff    	<unknown>
 800bf44: ffff ffff    	<unknown>
 800bf48: ffff ffff    	<unknown>
 800bf4c: ffff ffff    	<unknown>
 800bf50: ffff ffff    	<unknown>
 800bf54: ffff ffff    	<unknown>
 800bf58: ffff ffff    	<unknown>
 800bf5c: ffff ffff    	<unknown>
 800bf60: ffff ffff    	<unknown>
 800bf64: ffff ffff    	<unknown>
 800bf68: ffff ffff    	<unknown>
 800bf6c: ffff ffff    	<unknown>
 800bf70: ffff ffff    	<unknown>
 800bf74: ffff ffff    	<unknown>
 800bf78: ffff ffff    	<unknown>
 800bf7c: ffff ffff    	<unknown>
 800bf80: ffff ffff    	<unknown>
 800bf84: ffff ffff    	<unknown>
 800bf88: ffff ffff    	<unknown>
 800bf8c: ffff ffff    	<unknown>
 800bf90: ffff ffff    	<unknown>
 800bf94: ffff ffff    	<unknown>
 800bf98: ffff ffff    	<unknown>
 800bf9c: ffff ffff    	<unknown>
 800bfa0: ffff ffff    	<unknown>
 800bfa4: ffff ffff    	<unknown>
 800bfa8: ffff ffff    	<unknown>
 800bfac: ffff ffff    	<unknown>
 800bfb0: ffff ffff    	<unknown>
 800bfb4: ffff ffff    	<unknown>
 800bfb8: ffff ffff    	<unknown>
 800bfbc: ffff ffff    	<unknown>
 800bfc0: ffff ffff    	<unknown>
 800bfc4: ffff ffff    	<unknown>
 800bfc8: ffff ffff    	<unknown>
 800bfcc: ffff ffff    	<unknown>
 800bfd0: ffff ffff    	<unknown>
 800bfd4: ffff ffff    	<unknown>
 800bfd8: ffff ffff    	<unknown>
 800bfdc: ffff ffff    	<unknown>
 800bfe0: ffff ffff    	<unknown>
 800bfe4: ffff ffff    	<unknown>
 800bfe8: ffff ffff    	<unknown>
 800bfec: ffff ffff    	<unknown>
 800bff0: ffff ffff    	<unknown>
 800bff4: ffff ffff    	<unknown>
 800bff8: ffff ffff    	<unknown>
 800bffc: ffff ffff    	<unknown>
 800c000: ffff ffff    	<unknown>
 800c004: ffff ffff    	<unknown>
 800c008: ffff ffff    	<unknown>
 800c00c: ffff ffff    	<unknown>
 800c010: ffff ffff    	<unknown>
 800c014: ffff ffff    	<unknown>
 800c018: ffff ffff    	<unknown>
 800c01c: ffff ffff    	<unknown>
 800c020: ffff ffff    	<unknown>
 800c024: ffff ffff    	<unknown>
 800c028: ffff ffff    	<unknown>
 800c02c: ffff ffff    	<unknown>
 800c030: ffff ffff    	<unknown>
 800c034: ffff ffff    	<unknown>
 800c038: ffff ffff    	<unknown>
 800c03c: ffff ffff    	<unknown>
 800c040: ffff ffff    	<unknown>
 800c044: ffff ffff    	<unknown>
 800c048: ffff ffff    	<unknown>
 800c04c: ffff ffff    	<unknown>
 800c050: ffff ffff    	<unknown>
 800c054: ffff ffff    	<unknown>
 800c058: ffff ffff    	<unknown>
 800c05c: ffff ffff    	<unknown>
 800c060: ffff ffff    	<unknown>
 800c064: ffff ffff    	<unknown>
 800c068: ffff ffff    	<unknown>
 800c06c: ffff ffff    	<unknown>
 800c070: ffff ffff    	<unknown>
 800c074: ffff ffff    	<unknown>
 800c078: ffff ffff    	<unknown>
 800c07c: ffff ffff    	<unknown>
 800c080: ffff ffff    	<unknown>
 800c084: ffff ffff    	<unknown>
 800c088: ffff ffff    	<unknown>
 800c08c: ffff ffff    	<unknown>
 800c090: ffff ffff    	<unknown>
 800c094: ffff ffff    	<unknown>
 800c098: ffff ffff    	<unknown>
 800c09c: ffff ffff    	<unknown>
 800c0a0: ffff ffff    	<unknown>
 800c0a4: ffff ffff    	<unknown>
 800c0a8: ffff ffff    	<unknown>
 800c0ac: ffff ffff    	<unknown>
 800c0b0: ffff ffff    	<unknown>
 800c0b4: ffff ffff    	<unknown>
 800c0b8: ffff ffff    	<unknown>
 800c0bc: ffff ffff    	<unknown>
 800c0c0: ffff ffff    	<unknown>
 800c0c4: ffff ffff    	<unknown>
 800c0c8: ffff ffff    	<unknown>
 800c0cc: ffff ffff    	<unknown>
 800c0d0: ffff ffff    	<unknown>
 800c0d4: ffff ffff    	<unknown>
 800c0d8: ffff ffff    	<unknown>
 800c0dc: ffff ffff    	<unknown>
 800c0e0: ffff ffff    	<unknown>
 800c0e4: ffff ffff    	<unknown>
 800c0e8: ffff ffff    	<unknown>
 800c0ec: ffff ffff    	<unknown>
 800c0f0: ffff ffff    	<unknown>
 800c0f4: ffff ffff    	<unknown>
 800c0f8: ffff ffff    	<unknown>
 800c0fc: ffff ffff    	<unknown>
 800c100: ffff ffff    	<unknown>
 800c104: ffff ffff    	<unknown>
 800c108: ffff ffff    	<unknown>
 800c10c: ffff ffff    	<unknown>
 800c110: ffff ffff    	<unknown>
 800c114: ffff ffff    	<unknown>
 800c118: ffff ffff    	<unknown>
 800c11c: ffff ffff    	<unknown>
 800c120: ffff ffff    	<unknown>
 800c124: ffff ffff    	<unknown>
 800c128: ffff ffff    	<unknown>
 800c12c: ffff ffff    	<unknown>
 800c130: ffff ffff    	<unknown>
 800c134: ffff ffff    	<unknown>
 800c138: ffff ffff    	<unknown>
 800c13c: ffff ffff    	<unknown>
 800c140: ffff ffff    	<unknown>
 800c144: ffff ffff    	<unknown>
 800c148: ffff ffff    	<unknown>
 800c14c: ffff ffff    	<unknown>
 800c150: ffff ffff    	<unknown>
 800c154: ffff ffff    	<unknown>
 800c158: ffff ffff    	<unknown>
 800c15c: ffff ffff    	<unknown>
 800c160: ffff ffff    	<unknown>
 800c164: ffff ffff    	<unknown>
 800c168: ffff ffff    	<unknown>
 800c16c: ffff ffff    	<unknown>
 800c170: ffff ffff    	<unknown>
 800c174: ffff ffff    	<unknown>
 800c178: ffff ffff    	<unknown>
 800c17c: ffff ffff    	<unknown>
 800c180: ffff ffff    	<unknown>
 800c184: ffff ffff    	<unknown>
 800c188: ffff ffff    	<unknown>
 800c18c: ffff ffff    	<unknown>
 800c190: ffff ffff    	<unknown>
 800c194: ffff ffff    	<unknown>
 800c198: ffff ffff    	<unknown>
 800c19c: ffff ffff    	<unknown>
 800c1a0: ffff ffff    	<unknown>
 800c1a4: ffff ffff    	<unknown>
 800c1a8: ffff ffff    	<unknown>
 800c1ac: ffff ffff    	<unknown>
 800c1b0: ffff ffff    	<unknown>
 800c1b4: ffff ffff    	<unknown>
 800c1b8: ffff ffff    	<unknown>
 800c1bc: ffff ffff    	<unknown>
 800c1c0: ffff ffff    	<unknown>
 800c1c4: ffff ffff    	<unknown>
 800c1c8: ffff ffff    	<unknown>
 800c1cc: ffff ffff    	<unknown>
 800c1d0: ffff ffff    	<unknown>
 800c1d4: ffff ffff    	<unknown>
 800c1d8: ffff ffff    	<unknown>
 800c1dc: ffff ffff    	<unknown>
 800c1e0: ffff ffff    	<unknown>
 800c1e4: ffff ffff    	<unknown>
 800c1e8: ffff ffff    	<unknown>
 800c1ec: ffff ffff    	<unknown>
 800c1f0: ffff ffff    	<unknown>
 800c1f4: ffff ffff    	<unknown>
 800c1f8: ffff ffff    	<unknown>
 800c1fc: ffff ffff    	<unknown>
 800c200: ffff ffff    	<unknown>
 800c204: ffff ffff    	<unknown>
 800c208: ffff ffff    	<unknown>
 800c20c: ffff ffff    	<unknown>
 800c210: ffff ffff    	<unknown>
 800c214: ffff ffff    	<unknown>
 800c218: ffff ffff    	<unknown>
 800c21c: ffff ffff    	<unknown>
 800c220: ffff ffff    	<unknown>
 800c224: ffff ffff    	<unknown>
 800c228: ffff ffff    	<unknown>
 800c22c: ffff ffff    	<unknown>
 800c230: ffff ffff    	<unknown>
 800c234: ffff ffff    	<unknown>
 800c238: ffff ffff    	<unknown>
 800c23c: ffff ffff    	<unknown>
 800c240: ffff ffff    	<unknown>
 800c244: ffff ffff    	<unknown>
 800c248: ffff ffff    	<unknown>
 800c24c: ffff ffff    	<unknown>
 800c250: ffff ffff    	<unknown>
 800c254: ffff ffff    	<unknown>
 800c258: ffff ffff    	<unknown>
 800c25c: ffff ffff    	<unknown>
 800c260: ffff ffff    	<unknown>
 800c264: ffff ffff    	<unknown>
 800c268: ffff ffff    	<unknown>
 800c26c: ffff ffff    	<unknown>
 800c270: ffff ffff    	<unknown>
 800c274: ffff ffff    	<unknown>
 800c278: ffff ffff    	<unknown>
 800c27c: ffff ffff    	<unknown>
 800c280: ffff ffff    	<unknown>
 800c284: ffff ffff    	<unknown>
 800c288: ffff ffff    	<unknown>
 800c28c: ffff ffff    	<unknown>
 800c290: ffff ffff    	<unknown>
 800c294: ffff ffff    	<unknown>
 800c298: ffff ffff    	<unknown>
 800c29c: ffff ffff    	<unknown>
 800c2a0: ffff ffff    	<unknown>
 800c2a4: ffff ffff    	<unknown>
 800c2a8: ffff ffff    	<unknown>
 800c2ac: ffff ffff    	<unknown>
 800c2b0: ffff ffff    	<unknown>
 800c2b4: ffff ffff    	<unknown>
 800c2b8: ffff ffff    	<unknown>
 800c2bc: ffff ffff    	<unknown>
 800c2c0: ffff ffff    	<unknown>
 800c2c4: ffff ffff    	<unknown>
 800c2c8: ffff ffff    	<unknown>
 800c2cc: ffff ffff    	<unknown>
 800c2d0: ffff ffff    	<unknown>
 800c2d4: ffff ffff    	<unknown>
 800c2d8: ffff ffff    	<unknown>
 800c2dc: ffff ffff    	<unknown>
 800c2e0: ffff ffff    	<unknown>
 800c2e4: ffff ffff    	<unknown>
 800c2e8: ffff ffff    	<unknown>
 800c2ec: ffff ffff    	<unknown>
 800c2f0: ffff ffff    	<unknown>
 800c2f4: ffff ffff    	<unknown>
 800c2f8: ffff ffff    	<unknown>
 800c2fc: ffff ffff    	<unknown>
 800c300: ffff ffff    	<unknown>
 800c304: ffff ffff    	<unknown>
 800c308: ffff ffff    	<unknown>
 800c30c: ffff ffff    	<unknown>
 800c310: ffff ffff    	<unknown>
 800c314: ffff ffff    	<unknown>
 800c318: ffff ffff    	<unknown>
 800c31c: ffff ffff    	<unknown>
 800c320: ffff ffff    	<unknown>
 800c324: ffff ffff    	<unknown>
 800c328: ffff ffff    	<unknown>
 800c32c: ffff ffff    	<unknown>
 800c330: ffff ffff    	<unknown>
 800c334: ffff ffff    	<unknown>
 800c338: ffff ffff    	<unknown>
 800c33c: ffff ffff    	<unknown>
 800c340: ffff ffff    	<unknown>
 800c344: ffff ffff    	<unknown>
 800c348: ffff ffff    	<unknown>
 800c34c: ffff ffff    	<unknown>
 800c350: ffff ffff    	<unknown>
 800c354: ffff ffff    	<unknown>
 800c358: ffff ffff    	<unknown>
 800c35c: ffff ffff    	<unknown>
 800c360: ffff ffff    	<unknown>
 800c364: ffff ffff    	<unknown>
 800c368: ffff ffff    	<unknown>
 800c36c: ffff ffff    	<unknown>
 800c370: ffff ffff    	<unknown>
 800c374: ffff ffff    	<unknown>
 800c378: ffff ffff    	<unknown>
 800c37c: ffff ffff    	<unknown>
 800c380: ffff ffff    	<unknown>
 800c384: ffff ffff    	<unknown>
 800c388: ffff ffff    	<unknown>
 800c38c: ffff ffff    	<unknown>
 800c390: ffff ffff    	<unknown>
 800c394: ffff ffff    	<unknown>
 800c398: ffff ffff    	<unknown>
 800c39c: ffff ffff    	<unknown>
 800c3a0: ffff ffff    	<unknown>
 800c3a4: ffff ffff    	<unknown>
 800c3a8: ffff ffff    	<unknown>
 800c3ac: ffff ffff    	<unknown>
 800c3b0: ffff ffff    	<unknown>
 800c3b4: ffff ffff    	<unknown>
 800c3b8: ffff ffff    	<unknown>
 800c3bc: ffff ffff    	<unknown>
 800c3c0: ffff ffff    	<unknown>
 800c3c4: ffff ffff    	<unknown>
 800c3c8: ffff ffff    	<unknown>
 800c3cc: ffff ffff    	<unknown>
 800c3d0: ffff ffff    	<unknown>
 800c3d4: ffff ffff    	<unknown>
 800c3d8: ffff ffff    	<unknown>
 800c3dc: ffff ffff    	<unknown>
 800c3e0: ffff ffff    	<unknown>
 800c3e4: ffff ffff    	<unknown>
 800c3e8: ffff ffff    	<unknown>
 800c3ec: ffff ffff    	<unknown>
 800c3f0: ffff ffff    	<unknown>
 800c3f4: ffff ffff    	<unknown>
 800c3f8: ffff ffff    	<unknown>
 800c3fc: ffff ffff    	<unknown>
 800c400: ffff ffff    	<unknown>
 800c404: ffff ffff    	<unknown>
 800c408: ffff ffff    	<unknown>
 800c40c: ffff ffff    	<unknown>
 800c410: ffff ffff    	<unknown>
 800c414: ffff ffff    	<unknown>
 800c418: ffff ffff    	<unknown>
 800c41c: ffff ffff    	<unknown>
 800c420: ffff ffff    	<unknown>
 800c424: ffff ffff    	<unknown>
 800c428: ffff ffff    	<unknown>
 800c42c: ffff ffff    	<unknown>
 800c430: ffff ffff    	<unknown>
 800c434: ffff ffff    	<unknown>
 800c438: ffff ffff    	<unknown>
 800c43c: ffff ffff    	<unknown>
 800c440: ffff ffff    	<unknown>
 800c444: ffff ffff    	<unknown>
 800c448: ffff ffff    	<unknown>
 800c44c: ffff ffff    	<unknown>
 800c450: ffff ffff    	<unknown>
 800c454: ffff ffff    	<unknown>
 800c458: ffff ffff    	<unknown>
 800c45c: ffff ffff    	<unknown>
 800c460: ffff ffff    	<unknown>
 800c464: ffff ffff    	<unknown>
 800c468: ffff ffff    	<unknown>
 800c46c: ffff ffff    	<unknown>
 800c470: ffff ffff    	<unknown>
 800c474: ffff ffff    	<unknown>
 800c478: ffff ffff    	<unknown>
 800c47c: ffff ffff    	<unknown>
 800c480: ffff ffff    	<unknown>
 800c484: ffff ffff    	<unknown>
 800c488: ffff ffff    	<unknown>
 800c48c: ffff ffff    	<unknown>
 800c490: ffff ffff    	<unknown>
 800c494: ffff ffff    	<unknown>
 800c498: ffff ffff    	<unknown>
 800c49c: ffff ffff    	<unknown>
 800c4a0: ffff ffff    	<unknown>
 800c4a4: ffff ffff    	<unknown>
 800c4a8: ffff ffff    	<unknown>
 800c4ac: ffff ffff    	<unknown>
 800c4b0: ffff ffff    	<unknown>
 800c4b4: ffff ffff    	<unknown>
 800c4b8: ffff ffff    	<unknown>
 800c4bc: ffff ffff    	<unknown>
 800c4c0: ffff ffff    	<unknown>
 800c4c4: ffff ffff    	<unknown>
 800c4c8: ffff ffff    	<unknown>
 800c4cc: ffff ffff    	<unknown>
 800c4d0: ffff ffff    	<unknown>
 800c4d4: ffff ffff    	<unknown>
 800c4d8: ffff ffff    	<unknown>
 800c4dc: ffff ffff    	<unknown>
 800c4e0: ffff ffff    	<unknown>
 800c4e4: ffff ffff    	<unknown>
 800c4e8: ffff ffff    	<unknown>
 800c4ec: ffff ffff    	<unknown>
 800c4f0: ffff ffff    	<unknown>
 800c4f4: ffff ffff    	<unknown>
 800c4f8: ffff ffff    	<unknown>
 800c4fc: ffff ffff    	<unknown>
 800c500: ffff ffff    	<unknown>
 800c504: ffff ffff    	<unknown>
 800c508: ffff ffff    	<unknown>
 800c50c: ffff ffff    	<unknown>
 800c510: ffff ffff    	<unknown>
 800c514: ffff ffff    	<unknown>
 800c518: ffff ffff    	<unknown>
 800c51c: ffff ffff    	<unknown>
 800c520: ffff ffff    	<unknown>
 800c524: ffff ffff    	<unknown>
 800c528: ffff ffff    	<unknown>
 800c52c: ffff ffff    	<unknown>
 800c530: ffff ffff    	<unknown>
 800c534: ffff ffff    	<unknown>
 800c538: ffff ffff    	<unknown>
 800c53c: ffff ffff    	<unknown>
 800c540: ffff ffff    	<unknown>
 800c544: ffff ffff    	<unknown>
 800c548: ffff ffff    	<unknown>
 800c54c: ffff ffff    	<unknown>
 800c550: ffff ffff    	<unknown>
 800c554: ffff ffff    	<unknown>
 800c558: ffff ffff    	<unknown>
 800c55c: ffff ffff    	<unknown>
 800c560: ffff ffff    	<unknown>
 800c564: ffff ffff    	<unknown>
 800c568: ffff ffff    	<unknown>
 800c56c: ffff ffff    	<unknown>
 800c570: ffff ffff    	<unknown>
 800c574: ffff ffff    	<unknown>
 800c578: ffff ffff    	<unknown>
 800c57c: ffff ffff    	<unknown>
 800c580: ffff ffff    	<unknown>
 800c584: ffff ffff    	<unknown>
 800c588: ffff ffff    	<unknown>
 800c58c: ffff ffff    	<unknown>
 800c590: ffff ffff    	<unknown>
 800c594: ffff ffff    	<unknown>
 800c598: ffff ffff    	<unknown>
 800c59c: ffff ffff    	<unknown>
 800c5a0: ffff ffff    	<unknown>
 800c5a4: ffff ffff    	<unknown>
 800c5a8: ffff ffff    	<unknown>
 800c5ac: ffff ffff    	<unknown>
 800c5b0: ffff ffff    	<unknown>
 800c5b4: ffff ffff    	<unknown>
 800c5b8: ffff ffff    	<unknown>
 800c5bc: ffff ffff    	<unknown>
 800c5c0: ffff ffff    	<unknown>
 800c5c4: ffff ffff    	<unknown>
 800c5c8: ffff ffff    	<unknown>
 800c5cc: ffff ffff    	<unknown>
 800c5d0: ffff ffff    	<unknown>
 800c5d4: ffff ffff    	<unknown>
 800c5d8: ffff ffff    	<unknown>
 800c5dc: ffff ffff    	<unknown>
 800c5e0: ffff ffff    	<unknown>
 800c5e4: ffff ffff    	<unknown>
 800c5e8: ffff ffff    	<unknown>
 800c5ec: ffff ffff    	<unknown>
 800c5f0: ffff ffff    	<unknown>
 800c5f4: ffff ffff    	<unknown>
 800c5f8: ffff ffff    	<unknown>
 800c5fc: ffff ffff    	<unknown>
 800c600: ffff ffff    	<unknown>
 800c604: ffff ffff    	<unknown>
 800c608: ffff ffff    	<unknown>
 800c60c: ffff ffff    	<unknown>
 800c610: ffff ffff    	<unknown>
 800c614: ffff ffff    	<unknown>
 800c618: ffff ffff    	<unknown>
 800c61c: ffff ffff    	<unknown>
 800c620: ffff ffff    	<unknown>
 800c624: ffff ffff    	<unknown>
 800c628: ffff ffff    	<unknown>
 800c62c: ffff ffff    	<unknown>
 800c630: ffff ffff    	<unknown>
 800c634: ffff ffff    	<unknown>
 800c638: ffff ffff    	<unknown>
 800c63c: ffff ffff    	<unknown>
 800c640: ffff ffff    	<unknown>
 800c644: ffff ffff    	<unknown>
 800c648: ffff ffff    	<unknown>
 800c64c: ffff ffff    	<unknown>
 800c650: ffff ffff    	<unknown>
 800c654: ffff ffff    	<unknown>
 800c658: ffff ffff    	<unknown>
 800c65c: ffff ffff    	<unknown>
 800c660: ffff ffff    	<unknown>
 800c664: ffff ffff    	<unknown>
 800c668: ffff ffff    	<unknown>
 800c66c: ffff ffff    	<unknown>
 800c670: ffff ffff    	<unknown>
 800c674: ffff ffff    	<unknown>
 800c678: ffff ffff    	<unknown>
 800c67c: ffff ffff    	<unknown>
 800c680: ffff ffff    	<unknown>
 800c684: ffff ffff    	<unknown>
 800c688: ffff ffff    	<unknown>
 800c68c: ffff ffff    	<unknown>
 800c690: ffff ffff    	<unknown>
 800c694: ffff ffff    	<unknown>
 800c698: ffff ffff    	<unknown>
 800c69c: ffff ffff    	<unknown>
 800c6a0: ffff ffff    	<unknown>
 800c6a4: ffff ffff    	<unknown>
 800c6a8: ffff ffff    	<unknown>
 800c6ac: ffff ffff    	<unknown>
 800c6b0: ffff ffff    	<unknown>
 800c6b4: ffff ffff    	<unknown>
 800c6b8: ffff ffff    	<unknown>
 800c6bc: ffff ffff    	<unknown>
 800c6c0: ffff ffff    	<unknown>
 800c6c4: ffff ffff    	<unknown>
 800c6c8: ffff ffff    	<unknown>
 800c6cc: ffff ffff    	<unknown>
 800c6d0: ffff ffff    	<unknown>
 800c6d4: ffff ffff    	<unknown>
 800c6d8: ffff ffff    	<unknown>
 800c6dc: ffff ffff    	<unknown>
 800c6e0: ffff ffff    	<unknown>
 800c6e4: ffff ffff    	<unknown>
 800c6e8: ffff ffff    	<unknown>
 800c6ec: ffff ffff    	<unknown>
 800c6f0: ffff ffff    	<unknown>
 800c6f4: ffff ffff    	<unknown>
 800c6f8: ffff ffff    	<unknown>
 800c6fc: ffff ffff    	<unknown>
 800c700: ffff ffff    	<unknown>
 800c704: ffff ffff    	<unknown>
 800c708: ffff ffff    	<unknown>
 800c70c: ffff ffff    	<unknown>
 800c710: ffff ffff    	<unknown>
 800c714: ffff ffff    	<unknown>
 800c718: ffff ffff    	<unknown>
 800c71c: ffff ffff    	<unknown>
 800c720: ffff ffff    	<unknown>
 800c724: ffff ffff    	<unknown>
 800c728: ffff ffff    	<unknown>
 800c72c: ffff ffff    	<unknown>
 800c730: ffff ffff    	<unknown>
 800c734: ffff ffff    	<unknown>
 800c738: ffff ffff    	<unknown>
 800c73c: ffff ffff    	<unknown>
 800c740: ffff ffff    	<unknown>
 800c744: ffff ffff    	<unknown>
 800c748: ffff ffff    	<unknown>
 800c74c: ffff ffff    	<unknown>
 800c750: ffff ffff    	<unknown>
 800c754: ffff ffff    	<unknown>
 800c758: ffff ffff    	<unknown>
 800c75c: ffff ffff    	<unknown>
 800c760: ffff ffff    	<unknown>
 800c764: ffff ffff    	<unknown>
 800c768: ffff ffff    	<unknown>
 800c76c: ffff ffff    	<unknown>
 800c770: ffff ffff    	<unknown>
 800c774: ffff ffff    	<unknown>
 800c778: ffff ffff    	<unknown>
 800c77c: ffff ffff    	<unknown>
 800c780: ffff ffff    	<unknown>
 800c784: ffff ffff    	<unknown>
 800c788: ffff ffff    	<unknown>
 800c78c: ffff ffff    	<unknown>
 800c790: ffff ffff    	<unknown>
 800c794: ffff ffff    	<unknown>
 800c798: ffff ffff    	<unknown>
 800c79c: ffff ffff    	<unknown>
 800c7a0: ffff ffff    	<unknown>
 800c7a4: ffff ffff    	<unknown>
 800c7a8: ffff ffff    	<unknown>
 800c7ac: ffff ffff    	<unknown>
 800c7b0: ffff ffff    	<unknown>
 800c7b4: ffff ffff    	<unknown>
 800c7b8: ffff ffff    	<unknown>
 800c7bc: ffff ffff    	<unknown>
 800c7c0: ffff ffff    	<unknown>
 800c7c4: ffff ffff    	<unknown>
 800c7c8: ffff ffff    	<unknown>
 800c7cc: ffff ffff    	<unknown>
 800c7d0: ffff ffff    	<unknown>
 800c7d4: ffff ffff    	<unknown>
 800c7d8: ffff ffff    	<unknown>
 800c7dc: ffff ffff    	<unknown>
 800c7e0: ffff ffff    	<unknown>
 800c7e4: ffff ffff    	<unknown>
 800c7e8: ffff ffff    	<unknown>
 800c7ec: ffff ffff    	<unknown>
 800c7f0: ffff ffff    	<unknown>
 800c7f4: ffff ffff    	<unknown>
 800c7f8: ffff ffff    	<unknown>
 800c7fc: ffff ffff    	<unknown>
 800c800: ffff ffff    	<unknown>
 800c804: ffff ffff    	<unknown>
 800c808: ffff ffff    	<unknown>
 800c80c: ffff ffff    	<unknown>
 800c810: ffff ffff    	<unknown>
 800c814: ffff ffff    	<unknown>
 800c818: ffff ffff    	<unknown>
 800c81c: ffff ffff    	<unknown>
 800c820: ffff ffff    	<unknown>
 800c824: ffff ffff    	<unknown>
 800c828: ffff ffff    	<unknown>
 800c82c: ffff ffff    	<unknown>
 800c830: ffff ffff    	<unknown>
 800c834: ffff ffff    	<unknown>
 800c838: ffff ffff    	<unknown>
 800c83c: ffff ffff    	<unknown>
 800c840: ffff ffff    	<unknown>
 800c844: ffff ffff    	<unknown>
 800c848: ffff ffff    	<unknown>
 800c84c: ffff ffff    	<unknown>
 800c850: ffff ffff    	<unknown>
 800c854: ffff ffff    	<unknown>
 800c858: ffff ffff    	<unknown>
 800c85c: ffff ffff    	<unknown>
 800c860: ffff ffff    	<unknown>
 800c864: ffff ffff    	<unknown>
 800c868: ffff ffff    	<unknown>
 800c86c: ffff ffff    	<unknown>
 800c870: ffff ffff    	<unknown>
 800c874: ffff ffff    	<unknown>
 800c878: ffff ffff    	<unknown>
 800c87c: ffff ffff    	<unknown>
 800c880: ffff ffff    	<unknown>
 800c884: ffff ffff    	<unknown>
 800c888: ffff ffff    	<unknown>
 800c88c: ffff ffff    	<unknown>
 800c890: ffff ffff    	<unknown>
 800c894: ffff ffff    	<unknown>
 800c898: ffff ffff    	<unknown>
 800c89c: ffff ffff    	<unknown>
 800c8a0: ffff ffff    	<unknown>
 800c8a4: ffff ffff    	<unknown>
 800c8a8: ffff ffff    	<unknown>
 800c8ac: ffff ffff    	<unknown>
 800c8b0: ffff ffff    	<unknown>
 800c8b4: ffff ffff    	<unknown>
 800c8b8: ffff ffff    	<unknown>
 800c8bc: ffff ffff    	<unknown>
 800c8c0: ffff ffff    	<unknown>
 800c8c4: ffff ffff    	<unknown>
 800c8c8: ffff ffff    	<unknown>
 800c8cc: ffff ffff    	<unknown>
 800c8d0: ffff ffff    	<unknown>
 800c8d4: ffff ffff    	<unknown>
 800c8d8: ffff ffff    	<unknown>
 800c8dc: ffff ffff    	<unknown>
 800c8e0: ffff ffff    	<unknown>
 800c8e4: ffff ffff    	<unknown>
 800c8e8: ffff ffff    	<unknown>
 800c8ec: ffff ffff    	<unknown>
 800c8f0: ffff ffff    	<unknown>
 800c8f4: ffff ffff    	<unknown>
 800c8f8: ffff ffff    	<unknown>
 800c8fc: ffff ffff    	<unknown>
 800c900: ffff ffff    	<unknown>
 800c904: ffff ffff    	<unknown>
 800c908: ffff ffff    	<unknown>
 800c90c: ffff ffff    	<unknown>
 800c910: ffff ffff    	<unknown>
 800c914: ffff ffff    	<unknown>
 800c918: ffff ffff    	<unknown>
 800c91c: ffff ffff    	<unknown>
 800c920: ffff ffff    	<unknown>
 800c924: ffff ffff    	<unknown>
 800c928: ffff ffff    	<unknown>
 800c92c: ffff ffff    	<unknown>
 800c930: ffff ffff    	<unknown>
 800c934: ffff ffff    	<unknown>
 800c938: ffff ffff    	<unknown>
 800c93c: ffff ffff    	<unknown>
 800c940: ffff ffff    	<unknown>
 800c944: ffff ffff    	<unknown>
 800c948: ffff ffff    	<unknown>
 800c94c: ffff ffff    	<unknown>
 800c950: ffff ffff    	<unknown>
 800c954: ffff ffff    	<unknown>
 800c958: ffff ffff    	<unknown>
 800c95c: ffff ffff    	<unknown>
 800c960: ffff ffff    	<unknown>
 800c964: ffff ffff    	<unknown>
 800c968: ffff ffff    	<unknown>
 800c96c: ffff ffff    	<unknown>
 800c970: ffff ffff    	<unknown>
 800c974: ffff ffff    	<unknown>
 800c978: ffff ffff    	<unknown>
 800c97c: ffff ffff    	<unknown>
 800c980: ffff ffff    	<unknown>
 800c984: ffff ffff    	<unknown>
 800c988: ffff ffff    	<unknown>
 800c98c: ffff ffff    	<unknown>
 800c990: ffff ffff    	<unknown>
 800c994: ffff ffff    	<unknown>
 800c998: ffff ffff    	<unknown>
 800c99c: ffff ffff    	<unknown>
 800c9a0: ffff ffff    	<unknown>
 800c9a4: ffff ffff    	<unknown>
 800c9a8: ffff ffff    	<unknown>
 800c9ac: ffff ffff    	<unknown>
 800c9b0: ffff ffff    	<unknown>
 800c9b4: ffff ffff    	<unknown>
 800c9b8: ffff ffff    	<unknown>
 800c9bc: ffff ffff    	<unknown>
 800c9c0: ffff ffff    	<unknown>
 800c9c4: ffff ffff    	<unknown>
 800c9c8: ffff ffff    	<unknown>
 800c9cc: ffff ffff    	<unknown>
 800c9d0: ffff ffff    	<unknown>
 800c9d4: ffff ffff    	<unknown>
 800c9d8: ffff ffff    	<unknown>
 800c9dc: ffff ffff    	<unknown>
 800c9e0: ffff ffff    	<unknown>
 800c9e4: ffff ffff    	<unknown>
 800c9e8: ffff ffff    	<unknown>
 800c9ec: ffff ffff    	<unknown>
 800c9f0: ffff ffff    	<unknown>
 800c9f4: ffff ffff    	<unknown>
 800c9f8: ffff ffff    	<unknown>
 800c9fc: ffff ffff    	<unknown>
 800ca00: ffff ffff    	<unknown>
 800ca04: ffff ffff    	<unknown>
 800ca08: ffff ffff    	<unknown>
 800ca0c: ffff ffff    	<unknown>
 800ca10: ffff ffff    	<unknown>
 800ca14: ffff ffff    	<unknown>
 800ca18: ffff ffff    	<unknown>
 800ca1c: ffff ffff    	<unknown>
 800ca20: ffff ffff    	<unknown>
 800ca24: ffff ffff    	<unknown>
 800ca28: ffff ffff    	<unknown>
 800ca2c: ffff ffff    	<unknown>
 800ca30: ffff ffff    	<unknown>
 800ca34: ffff ffff    	<unknown>
 800ca38: ffff ffff    	<unknown>
 800ca3c: ffff ffff    	<unknown>
 800ca40: ffff ffff    	<unknown>
 800ca44: ffff ffff    	<unknown>
 800ca48: ffff ffff    	<unknown>
 800ca4c: ffff ffff    	<unknown>
 800ca50: ffff ffff    	<unknown>
 800ca54: ffff ffff    	<unknown>
 800ca58: ffff ffff    	<unknown>
 800ca5c: ffff ffff    	<unknown>
 800ca60: ffff ffff    	<unknown>
 800ca64: ffff ffff    	<unknown>
 800ca68: ffff ffff    	<unknown>
 800ca6c: ffff ffff    	<unknown>
 800ca70: ffff ffff    	<unknown>
 800ca74: ffff ffff    	<unknown>
 800ca78: ffff ffff    	<unknown>
 800ca7c: ffff ffff    	<unknown>
 800ca80: ffff ffff    	<unknown>
 800ca84: ffff ffff    	<unknown>
 800ca88: ffff ffff    	<unknown>
 800ca8c: ffff ffff    	<unknown>
 800ca90: ffff ffff    	<unknown>
 800ca94: ffff ffff    	<unknown>
 800ca98: ffff ffff    	<unknown>
 800ca9c: ffff ffff    	<unknown>
 800caa0: ffff ffff    	<unknown>
 800caa4: ffff ffff    	<unknown>
 800caa8: ffff ffff    	<unknown>
 800caac: ffff ffff    	<unknown>
 800cab0: ffff ffff    	<unknown>
 800cab4: ffff ffff    	<unknown>
 800cab8: ffff ffff    	<unknown>
 800cabc: ffff ffff    	<unknown>
 800cac0: ffff ffff    	<unknown>
 800cac4: ffff ffff    	<unknown>
 800cac8: ffff ffff    	<unknown>
 800cacc: ffff ffff    	<unknown>
 800cad0: ffff ffff    	<unknown>
 800cad4: ffff ffff    	<unknown>
 800cad8: ffff ffff    	<unknown>
 800cadc: ffff ffff    	<unknown>
 800cae0: ffff ffff    	<unknown>
 800cae4: ffff ffff    	<unknown>
 800cae8: ffff ffff    	<unknown>
 800caec: ffff ffff    	<unknown>
 800caf0: ffff ffff    	<unknown>
 800caf4: ffff ffff    	<unknown>
 800caf8: ffff ffff    	<unknown>
 800cafc: ffff ffff    	<unknown>
 800cb00: ffff ffff    	<unknown>
 800cb04: ffff ffff    	<unknown>
 800cb08: ffff ffff    	<unknown>
 800cb0c: ffff ffff    	<unknown>
 800cb10: ffff ffff    	<unknown>
 800cb14: ffff ffff    	<unknown>
 800cb18: ffff ffff    	<unknown>
 800cb1c: ffff ffff    	<unknown>
 800cb20: ffff ffff    	<unknown>
 800cb24: ffff ffff    	<unknown>
 800cb28: ffff ffff    	<unknown>
 800cb2c: ffff ffff    	<unknown>
 800cb30: ffff ffff    	<unknown>
 800cb34: ffff ffff    	<unknown>
 800cb38: ffff ffff    	<unknown>
 800cb3c: ffff ffff    	<unknown>
 800cb40: ffff ffff    	<unknown>
 800cb44: ffff ffff    	<unknown>
 800cb48: ffff ffff    	<unknown>
 800cb4c: ffff ffff    	<unknown>
 800cb50: ffff ffff    	<unknown>
 800cb54: ffff ffff    	<unknown>
 800cb58: ffff ffff    	<unknown>
 800cb5c: ffff ffff    	<unknown>
 800cb60: ffff ffff    	<unknown>
 800cb64: ffff ffff    	<unknown>
 800cb68: ffff ffff    	<unknown>
 800cb6c: ffff ffff    	<unknown>
 800cb70: ffff ffff    	<unknown>
 800cb74: ffff ffff    	<unknown>
 800cb78: ffff ffff    	<unknown>
 800cb7c: ffff ffff    	<unknown>
 800cb80: ffff ffff    	<unknown>
 800cb84: ffff ffff    	<unknown>
 800cb88: ffff ffff    	<unknown>
 800cb8c: ffff ffff    	<unknown>
 800cb90: ffff ffff    	<unknown>
 800cb94: ffff ffff    	<unknown>
 800cb98: ffff ffff    	<unknown>
 800cb9c: ffff ffff    	<unknown>
 800cba0: ffff ffff    	<unknown>
 800cba4: ffff ffff    	<unknown>
 800cba8: ffff ffff    	<unknown>
 800cbac: ffff ffff    	<unknown>
 800cbb0: ffff ffff    	<unknown>
 800cbb4: ffff ffff    	<unknown>
 800cbb8: ffff ffff    	<unknown>
 800cbbc: ffff ffff    	<unknown>
 800cbc0: ffff ffff    	<unknown>
 800cbc4: ffff ffff    	<unknown>
 800cbc8: ffff ffff    	<unknown>
 800cbcc: ffff ffff    	<unknown>
 800cbd0: ffff ffff    	<unknown>
 800cbd4: ffff ffff    	<unknown>
 800cbd8: ffff ffff    	<unknown>
 800cbdc: ffff ffff    	<unknown>
 800cbe0: ffff ffff    	<unknown>
 800cbe4: ffff ffff    	<unknown>
 800cbe8: ffff ffff    	<unknown>
 800cbec: ffff ffff    	<unknown>
 800cbf0: ffff ffff    	<unknown>
 800cbf4: ffff ffff    	<unknown>
 800cbf8: ffff ffff    	<unknown>
 800cbfc: ffff ffff    	<unknown>
 800cc00: ffff ffff    	<unknown>
 800cc04: ffff ffff    	<unknown>
 800cc08: ffff ffff    	<unknown>
 800cc0c: ffff ffff    	<unknown>
 800cc10: ffff ffff    	<unknown>
 800cc14: ffff ffff    	<unknown>
 800cc18: ffff ffff    	<unknown>
 800cc1c: ffff ffff    	<unknown>
 800cc20: ffff ffff    	<unknown>
 800cc24: ffff ffff    	<unknown>
 800cc28: ffff ffff    	<unknown>
 800cc2c: ffff ffff    	<unknown>
 800cc30: ffff ffff    	<unknown>
 800cc34: ffff ffff    	<unknown>
 800cc38: ffff ffff    	<unknown>
 800cc3c: ffff ffff    	<unknown>
 800cc40: ffff ffff    	<unknown>
 800cc44: ffff ffff    	<unknown>
 800cc48: ffff ffff    	<unknown>
 800cc4c: ffff ffff    	<unknown>
 800cc50: ffff ffff    	<unknown>
 800cc54: ffff ffff    	<unknown>
 800cc58: ffff ffff    	<unknown>
 800cc5c: ffff ffff    	<unknown>
 800cc60: ffff ffff    	<unknown>
 800cc64: ffff ffff    	<unknown>
 800cc68: ffff ffff    	<unknown>
 800cc6c: ffff ffff    	<unknown>
 800cc70: ffff ffff    	<unknown>
 800cc74: ffff ffff    	<unknown>
 800cc78: ffff ffff    	<unknown>
 800cc7c: ffff ffff    	<unknown>
 800cc80: ffff ffff    	<unknown>
 800cc84: ffff ffff    	<unknown>
 800cc88: ffff ffff    	<unknown>
 800cc8c: ffff ffff    	<unknown>
 800cc90: ffff ffff    	<unknown>
 800cc94: ffff ffff    	<unknown>
 800cc98: ffff ffff    	<unknown>
 800cc9c: ffff ffff    	<unknown>
 800cca0: ffff ffff    	<unknown>
 800cca4: ffff ffff    	<unknown>
 800cca8: ffff ffff    	<unknown>
 800ccac: ffff ffff    	<unknown>
 800ccb0: ffff ffff    	<unknown>
 800ccb4: ffff ffff    	<unknown>
 800ccb8: ffff ffff    	<unknown>
 800ccbc: ffff ffff    	<unknown>
 800ccc0: ffff ffff    	<unknown>
 800ccc4: ffff ffff    	<unknown>
 800ccc8: ffff ffff    	<unknown>
 800cccc: ffff ffff    	<unknown>
 800ccd0: ffff ffff    	<unknown>
 800ccd4: ffff ffff    	<unknown>
 800ccd8: ffff ffff    	<unknown>
 800ccdc: ffff ffff    	<unknown>
 800cce0: ffff ffff    	<unknown>
 800cce4: ffff ffff    	<unknown>
 800cce8: ffff ffff    	<unknown>
 800ccec: ffff ffff    	<unknown>
 800ccf0: ffff ffff    	<unknown>
 800ccf4: ffff ffff    	<unknown>
 800ccf8: ffff ffff    	<unknown>
 800ccfc: ffff ffff    	<unknown>
 800cd00: ffff ffff    	<unknown>
 800cd04: ffff ffff    	<unknown>
 800cd08: ffff ffff    	<unknown>
 800cd0c: ffff ffff    	<unknown>
 800cd10: ffff ffff    	<unknown>
 800cd14: ffff ffff    	<unknown>
 800cd18: ffff ffff    	<unknown>
 800cd1c: ffff ffff    	<unknown>
 800cd20: ffff ffff    	<unknown>
 800cd24: ffff ffff    	<unknown>
 800cd28: ffff ffff    	<unknown>
 800cd2c: ffff ffff    	<unknown>
 800cd30: ffff ffff    	<unknown>
 800cd34: ffff ffff    	<unknown>
 800cd38: ffff ffff    	<unknown>
 800cd3c: ffff ffff    	<unknown>
 800cd40: ffff ffff    	<unknown>
 800cd44: ffff ffff    	<unknown>
 800cd48: ffff ffff    	<unknown>
 800cd4c: ffff ffff    	<unknown>
 800cd50: ffff ffff    	<unknown>
 800cd54: ffff ffff    	<unknown>
 800cd58: ffff ffff    	<unknown>
 800cd5c: ffff ffff    	<unknown>
 800cd60: ffff ffff    	<unknown>
 800cd64: ffff ffff    	<unknown>
 800cd68: ffff ffff    	<unknown>
 800cd6c: ffff ffff    	<unknown>
 800cd70: ffff ffff    	<unknown>
 800cd74: ffff ffff    	<unknown>
 800cd78: ffff ffff    	<unknown>
 800cd7c: ffff ffff    	<unknown>
 800cd80: ffff ffff    	<unknown>
 800cd84: ffff ffff    	<unknown>
 800cd88: ffff ffff    	<unknown>
 800cd8c: ffff ffff    	<unknown>
 800cd90: ffff ffff    	<unknown>
 800cd94: ffff ffff    	<unknown>
 800cd98: ffff ffff    	<unknown>
 800cd9c: ffff ffff    	<unknown>
 800cda0: ffff ffff    	<unknown>
 800cda4: ffff ffff    	<unknown>
 800cda8: ffff ffff    	<unknown>
 800cdac: ffff ffff    	<unknown>
 800cdb0: ffff ffff    	<unknown>
 800cdb4: ffff ffff    	<unknown>
 800cdb8: ffff ffff    	<unknown>
 800cdbc: ffff ffff    	<unknown>
 800cdc0: ffff ffff    	<unknown>
 800cdc4: ffff ffff    	<unknown>
 800cdc8: ffff ffff    	<unknown>
 800cdcc: ffff ffff    	<unknown>
 800cdd0: ffff ffff    	<unknown>
 800cdd4: ffff ffff    	<unknown>
 800cdd8: ffff ffff    	<unknown>
 800cddc: ffff ffff    	<unknown>
 800cde0: ffff ffff    	<unknown>
 800cde4: ffff ffff    	<unknown>
 800cde8: ffff ffff    	<unknown>
 800cdec: ffff ffff    	<unknown>
 800cdf0: ffff ffff    	<unknown>
 800cdf4: ffff ffff    	<unknown>
 800cdf8: ffff ffff    	<unknown>
 800cdfc: ffff ffff    	<unknown>
 800ce00: ffff ffff    	<unknown>
 800ce04: ffff ffff    	<unknown>
 800ce08: ffff ffff    	<unknown>
 800ce0c: ffff ffff    	<unknown>
 800ce10: ffff ffff    	<unknown>
 800ce14: ffff ffff    	<unknown>
 800ce18: ffff ffff    	<unknown>
 800ce1c: ffff ffff    	<unknown>
 800ce20: ffff ffff    	<unknown>
 800ce24: ffff ffff    	<unknown>
 800ce28: ffff ffff    	<unknown>
 800ce2c: ffff ffff    	<unknown>
 800ce30: ffff ffff    	<unknown>
 800ce34: ffff ffff    	<unknown>
 800ce38: ffff ffff    	<unknown>
 800ce3c: ffff ffff    	<unknown>
 800ce40: ffff ffff    	<unknown>
 800ce44: ffff ffff    	<unknown>
 800ce48: ffff ffff    	<unknown>
 800ce4c: ffff ffff    	<unknown>
 800ce50: ffff ffff    	<unknown>
 800ce54: ffff ffff    	<unknown>
 800ce58: ffff ffff    	<unknown>
 800ce5c: ffff ffff    	<unknown>
 800ce60: ffff ffff    	<unknown>
 800ce64: ffff ffff    	<unknown>
 800ce68: ffff ffff    	<unknown>
 800ce6c: ffff ffff    	<unknown>
 800ce70: ffff ffff    	<unknown>
 800ce74: ffff ffff    	<unknown>
 800ce78: ffff ffff    	<unknown>
 800ce7c: ffff ffff    	<unknown>
 800ce80: ffff ffff    	<unknown>
 800ce84: ffff ffff    	<unknown>
 800ce88: ffff ffff    	<unknown>
 800ce8c: ffff ffff    	<unknown>
 800ce90: ffff ffff    	<unknown>
 800ce94: ffff ffff    	<unknown>
 800ce98: ffff ffff    	<unknown>
 800ce9c: ffff ffff    	<unknown>
 800cea0: ffff ffff    	<unknown>
 800cea4: ffff ffff    	<unknown>
 800cea8: ffff ffff    	<unknown>
 800ceac: ffff ffff    	<unknown>
 800ceb0: ffff ffff    	<unknown>
 800ceb4: ffff ffff    	<unknown>
 800ceb8: ffff ffff    	<unknown>
 800cebc: ffff ffff    	<unknown>
 800cec0: ffff ffff    	<unknown>
 800cec4: ffff ffff    	<unknown>
 800cec8: ffff ffff    	<unknown>
 800cecc: ffff ffff    	<unknown>
 800ced0: ffff ffff    	<unknown>
 800ced4: ffff ffff    	<unknown>
 800ced8: ffff ffff    	<unknown>
 800cedc: ffff ffff    	<unknown>
 800cee0: ffff ffff    	<unknown>
 800cee4: ffff ffff    	<unknown>
 800cee8: ffff ffff    	<unknown>
 800ceec: ffff ffff    	<unknown>
 800cef0: ffff ffff    	<unknown>
 800cef4: ffff ffff    	<unknown>
 800cef8: ffff ffff    	<unknown>
 800cefc: ffff ffff    	<unknown>
 800cf00: ffff ffff    	<unknown>
 800cf04: ffff ffff    	<unknown>
 800cf08: ffff ffff    	<unknown>
 800cf0c: ffff ffff    	<unknown>
 800cf10: ffff ffff    	<unknown>
 800cf14: ffff ffff    	<unknown>
 800cf18: ffff ffff    	<unknown>
 800cf1c: ffff ffff    	<unknown>
 800cf20: ffff ffff    	<unknown>
 800cf24: ffff ffff    	<unknown>
 800cf28: ffff ffff    	<unknown>
 800cf2c: ffff ffff    	<unknown>
 800cf30: ffff ffff    	<unknown>
 800cf34: ffff ffff    	<unknown>
 800cf38: ffff ffff    	<unknown>
 800cf3c: ffff ffff    	<unknown>
 800cf40: ffff ffff    	<unknown>
 800cf44: ffff ffff    	<unknown>
 800cf48: ffff ffff    	<unknown>
 800cf4c: ffff ffff    	<unknown>
 800cf50: ffff ffff    	<unknown>
 800cf54: ffff ffff    	<unknown>
 800cf58: ffff ffff    	<unknown>
 800cf5c: ffff ffff    	<unknown>
 800cf60: ffff ffff    	<unknown>
 800cf64: ffff ffff    	<unknown>
 800cf68: ffff ffff    	<unknown>
 800cf6c: ffff ffff    	<unknown>
 800cf70: ffff ffff    	<unknown>
 800cf74: ffff ffff    	<unknown>
 800cf78: ffff ffff    	<unknown>
 800cf7c: ffff ffff    	<unknown>
 800cf80: ffff ffff    	<unknown>
 800cf84: ffff ffff    	<unknown>
 800cf88: ffff ffff    	<unknown>
 800cf8c: ffff ffff    	<unknown>
 800cf90: ffff ffff    	<unknown>
 800cf94: ffff ffff    	<unknown>
 800cf98: ffff ffff    	<unknown>
 800cf9c: ffff ffff    	<unknown>
 800cfa0: ffff ffff    	<unknown>
 800cfa4: ffff ffff    	<unknown>
 800cfa8: ffff ffff    	<unknown>
 800cfac: ffff ffff    	<unknown>
 800cfb0: ffff ffff    	<unknown>
 800cfb4: ffff ffff    	<unknown>
 800cfb8: ffff ffff    	<unknown>
 800cfbc: ffff ffff    	<unknown>
 800cfc0: ffff ffff    	<unknown>
 800cfc4: ffff ffff    	<unknown>
 800cfc8: ffff ffff    	<unknown>
 800cfcc: ffff ffff    	<unknown>
 800cfd0: ffff ffff    	<unknown>
 800cfd4: ffff ffff    	<unknown>
 800cfd8: ffff ffff    	<unknown>
 800cfdc: ffff ffff    	<unknown>
 800cfe0: ffff ffff    	<unknown>
 800cfe4: ffff ffff    	<unknown>
 800cfe8: ffff ffff    	<unknown>
 800cfec: ffff ffff    	<unknown>
 800cff0: ffff ffff    	<unknown>
 800cff4: ffff ffff    	<unknown>
 800cff8: ffff ffff    	<unknown>
 800cffc: ffff ffff    	<unknown>
 800d000: ffff ffff    	<unknown>
 800d004: ffff ffff    	<unknown>
 800d008: ffff ffff    	<unknown>
 800d00c: ffff ffff    	<unknown>
 800d010: ffff ffff    	<unknown>
 800d014: ffff ffff    	<unknown>
 800d018: ffff ffff    	<unknown>
 800d01c: ffff ffff    	<unknown>
 800d020: ffff ffff    	<unknown>
 800d024: ffff ffff    	<unknown>
 800d028: ffff ffff    	<unknown>
 800d02c: ffff ffff    	<unknown>
 800d030: ffff ffff    	<unknown>
 800d034: ffff ffff    	<unknown>
 800d038: ffff ffff    	<unknown>
 800d03c: ffff ffff    	<unknown>
 800d040: ffff ffff    	<unknown>
 800d044: ffff ffff    	<unknown>
 800d048: ffff ffff    	<unknown>
 800d04c: ffff ffff    	<unknown>
 800d050: ffff ffff    	<unknown>
 800d054: ffff ffff    	<unknown>
 800d058: ffff ffff    	<unknown>
 800d05c: ffff ffff    	<unknown>
 800d060: ffff ffff    	<unknown>
 800d064: ffff ffff    	<unknown>
 800d068: ffff ffff    	<unknown>
 800d06c: ffff ffff    	<unknown>
 800d070: ffff ffff    	<unknown>
 800d074: ffff ffff    	<unknown>
 800d078: ffff ffff    	<unknown>
 800d07c: ffff ffff    	<unknown>
 800d080: ffff ffff    	<unknown>
 800d084: ffff ffff    	<unknown>
 800d088: ffff ffff    	<unknown>
 800d08c: ffff ffff    	<unknown>
 800d090: ffff ffff    	<unknown>
 800d094: ffff ffff    	<unknown>
 800d098: ffff ffff    	<unknown>
 800d09c: ffff ffff    	<unknown>
 800d0a0: ffff ffff    	<unknown>
 800d0a4: ffff ffff    	<unknown>
 800d0a8: ffff ffff    	<unknown>
 800d0ac: ffff ffff    	<unknown>
 800d0b0: ffff ffff    	<unknown>
 800d0b4: ffff ffff    	<unknown>
 800d0b8: ffff ffff    	<unknown>
 800d0bc: ffff ffff    	<unknown>
 800d0c0: ffff ffff    	<unknown>
 800d0c4: ffff ffff    	<unknown>
 800d0c8: ffff ffff    	<unknown>
 800d0cc: ffff ffff    	<unknown>
 800d0d0: ffff ffff    	<unknown>
 800d0d4: ffff ffff    	<unknown>
 800d0d8: ffff ffff    	<unknown>
 800d0dc: ffff ffff    	<unknown>
 800d0e0: ffff ffff    	<unknown>
 800d0e4: ffff ffff    	<unknown>
 800d0e8: ffff ffff    	<unknown>
 800d0ec: ffff ffff    	<unknown>
 800d0f0: ffff ffff    	<unknown>
 800d0f4: ffff ffff    	<unknown>
 800d0f8: ffff ffff    	<unknown>
 800d0fc: ffff ffff    	<unknown>
 800d100: ffff ffff    	<unknown>
 800d104: ffff ffff    	<unknown>
 800d108: ffff ffff    	<unknown>
 800d10c: ffff ffff    	<unknown>
 800d110: ffff ffff    	<unknown>
 800d114: ffff ffff    	<unknown>
 800d118: ffff ffff    	<unknown>
 800d11c: ffff ffff    	<unknown>
 800d120: ffff ffff    	<unknown>
 800d124: ffff ffff    	<unknown>
 800d128: ffff ffff    	<unknown>
 800d12c: ffff ffff    	<unknown>
 800d130: ffff ffff    	<unknown>
 800d134: ffff ffff    	<unknown>
 800d138: ffff ffff    	<unknown>
 800d13c: ffff ffff    	<unknown>
 800d140: ffff ffff    	<unknown>
 800d144: ffff ffff    	<unknown>
 800d148: ffff ffff    	<unknown>
 800d14c: ffff ffff    	<unknown>
 800d150: ffff ffff    	<unknown>
 800d154: ffff ffff    	<unknown>
 800d158: ffff ffff    	<unknown>
 800d15c: ffff ffff    	<unknown>
 800d160: ffff ffff    	<unknown>
 800d164: ffff ffff    	<unknown>
 800d168: ffff ffff    	<unknown>
 800d16c: ffff ffff    	<unknown>
 800d170: ffff ffff    	<unknown>
 800d174: ffff ffff    	<unknown>
 800d178: ffff ffff    	<unknown>
 800d17c: ffff ffff    	<unknown>
 800d180: ffff ffff    	<unknown>
 800d184: ffff ffff    	<unknown>
 800d188: ffff ffff    	<unknown>
 800d18c: ffff ffff    	<unknown>
 800d190: ffff ffff    	<unknown>
 800d194: ffff ffff    	<unknown>
 800d198: ffff ffff    	<unknown>
 800d19c: ffff ffff    	<unknown>
 800d1a0: ffff ffff    	<unknown>
 800d1a4: ffff ffff    	<unknown>
 800d1a8: ffff ffff    	<unknown>
 800d1ac: ffff ffff    	<unknown>
 800d1b0: ffff ffff    	<unknown>
 800d1b4: ffff ffff    	<unknown>
 800d1b8: ffff ffff    	<unknown>
 800d1bc: ffff ffff    	<unknown>
 800d1c0: ffff ffff    	<unknown>
 800d1c4: ffff ffff    	<unknown>
 800d1c8: ffff ffff    	<unknown>
 800d1cc: ffff ffff    	<unknown>
 800d1d0: ffff ffff    	<unknown>
 800d1d4: ffff ffff    	<unknown>
 800d1d8: ffff ffff    	<unknown>
 800d1dc: ffff ffff    	<unknown>
 800d1e0: ffff ffff    	<unknown>
 800d1e4: ffff ffff    	<unknown>
 800d1e8: ffff ffff    	<unknown>
 800d1ec: ffff ffff    	<unknown>
 800d1f0: ffff ffff    	<unknown>
 800d1f4: ffff ffff    	<unknown>
 800d1f8: ffff ffff    	<unknown>
 800d1fc: ffff ffff    	<unknown>
 800d200: ffff ffff    	<unknown>
 800d204: ffff ffff    	<unknown>
 800d208: ffff ffff    	<unknown>
 800d20c: ffff ffff    	<unknown>
 800d210: ffff ffff    	<unknown>
 800d214: ffff ffff    	<unknown>
 800d218: ffff ffff    	<unknown>
 800d21c: ffff ffff    	<unknown>
 800d220: ffff ffff    	<unknown>
 800d224: ffff ffff    	<unknown>
 800d228: ffff ffff    	<unknown>
 800d22c: ffff ffff    	<unknown>
 800d230: ffff ffff    	<unknown>
 800d234: ffff ffff    	<unknown>
 800d238: ffff ffff    	<unknown>
 800d23c: ffff ffff    	<unknown>
 800d240: ffff ffff    	<unknown>
 800d244: ffff ffff    	<unknown>
 800d248: ffff ffff    	<unknown>
 800d24c: ffff ffff    	<unknown>
 800d250: ffff ffff    	<unknown>
 800d254: ffff ffff    	<unknown>
 800d258: ffff ffff    	<unknown>
 800d25c: ffff ffff    	<unknown>
 800d260: ffff ffff    	<unknown>
 800d264: ffff ffff    	<unknown>
 800d268: ffff ffff    	<unknown>
 800d26c: ffff ffff    	<unknown>
 800d270: ffff ffff    	<unknown>
 800d274: ffff ffff    	<unknown>
 800d278: ffff ffff    	<unknown>
 800d27c: ffff ffff    	<unknown>
 800d280: ffff ffff    	<unknown>
 800d284: ffff ffff    	<unknown>
 800d288: ffff ffff    	<unknown>
 800d28c: ffff ffff    	<unknown>
 800d290: ffff ffff    	<unknown>
 800d294: ffff ffff    	<unknown>
 800d298: ffff ffff    	<unknown>
 800d29c: ffff ffff    	<unknown>
 800d2a0: ffff ffff    	<unknown>
 800d2a4: ffff ffff    	<unknown>
 800d2a8: ffff ffff    	<unknown>
 800d2ac: ffff ffff    	<unknown>
 800d2b0: ffff ffff    	<unknown>
 800d2b4: ffff ffff    	<unknown>
 800d2b8: ffff ffff    	<unknown>
 800d2bc: ffff ffff    	<unknown>
 800d2c0: ffff ffff    	<unknown>
 800d2c4: ffff ffff    	<unknown>
 800d2c8: ffff ffff    	<unknown>
 800d2cc: ffff ffff    	<unknown>
 800d2d0: ffff ffff    	<unknown>
 800d2d4: ffff ffff    	<unknown>
 800d2d8: ffff ffff    	<unknown>
 800d2dc: ffff ffff    	<unknown>
 800d2e0: ffff ffff    	<unknown>
 800d2e4: ffff ffff    	<unknown>
 800d2e8: ffff ffff    	<unknown>
 800d2ec: ffff ffff    	<unknown>
 800d2f0: ffff ffff    	<unknown>
 800d2f4: ffff ffff    	<unknown>
 800d2f8: ffff ffff    	<unknown>
 800d2fc: ffff ffff    	<unknown>
 800d300: ffff ffff    	<unknown>
 800d304: ffff ffff    	<unknown>
 800d308: ffff ffff    	<unknown>
 800d30c: ffff ffff    	<unknown>
 800d310: ffff ffff    	<unknown>
 800d314: ffff ffff    	<unknown>
 800d318: ffff ffff    	<unknown>
 800d31c: ffff ffff    	<unknown>
 800d320: ffff ffff    	<unknown>
 800d324: ffff ffff    	<unknown>
 800d328: ffff ffff    	<unknown>
 800d32c: ffff ffff    	<unknown>
 800d330: ffff ffff    	<unknown>
 800d334: ffff ffff    	<unknown>
 800d338: ffff ffff    	<unknown>
 800d33c: ffff ffff    	<unknown>
 800d340: ffff ffff    	<unknown>
 800d344: ffff ffff    	<unknown>
 800d348: ffff ffff    	<unknown>
 800d34c: ffff ffff    	<unknown>
 800d350: ffff ffff    	<unknown>
 800d354: ffff ffff    	<unknown>
 800d358: ffff ffff    	<unknown>
 800d35c: ffff ffff    	<unknown>
 800d360: ffff ffff    	<unknown>
 800d364: ffff ffff    	<unknown>
 800d368: ffff ffff    	<unknown>
 800d36c: ffff ffff    	<unknown>
 800d370: ffff ffff    	<unknown>
 800d374: ffff ffff    	<unknown>
 800d378: ffff ffff    	<unknown>
 800d37c: ffff ffff    	<unknown>
 800d380: ffff ffff    	<unknown>
 800d384: ffff ffff    	<unknown>
 800d388: ffff ffff    	<unknown>
 800d38c: ffff ffff    	<unknown>
 800d390: ffff ffff    	<unknown>
 800d394: ffff ffff    	<unknown>
 800d398: ffff ffff    	<unknown>
 800d39c: ffff ffff    	<unknown>
 800d3a0: ffff ffff    	<unknown>
 800d3a4: ffff ffff    	<unknown>
 800d3a8: ffff ffff    	<unknown>
 800d3ac: ffff ffff    	<unknown>
 800d3b0: ffff ffff    	<unknown>
 800d3b4: ffff ffff    	<unknown>
 800d3b8: ffff ffff    	<unknown>
 800d3bc: ffff ffff    	<unknown>
 800d3c0: ffff ffff    	<unknown>
 800d3c4: ffff ffff    	<unknown>
 800d3c8: ffff ffff    	<unknown>
 800d3cc: ffff ffff    	<unknown>
 800d3d0: ffff ffff    	<unknown>
 800d3d4: ffff ffff    	<unknown>
 800d3d8: ffff ffff    	<unknown>
 800d3dc: ffff ffff    	<unknown>
 800d3e0: ffff ffff    	<unknown>
 800d3e4: ffff ffff    	<unknown>
 800d3e8: ffff ffff    	<unknown>
 800d3ec: ffff ffff    	<unknown>
 800d3f0: ffff ffff    	<unknown>
 800d3f4: ffff ffff    	<unknown>
 800d3f8: ffff ffff    	<unknown>
 800d3fc: ffff ffff    	<unknown>
 800d400: ffff ffff    	<unknown>
 800d404: ffff ffff    	<unknown>
 800d408: ffff ffff    	<unknown>
 800d40c: ffff ffff    	<unknown>
 800d410: ffff ffff    	<unknown>
 800d414: ffff ffff    	<unknown>
 800d418: ffff ffff    	<unknown>
 800d41c: ffff ffff    	<unknown>
 800d420: ffff ffff    	<unknown>
 800d424: ffff ffff    	<unknown>
 800d428: ffff ffff    	<unknown>
 800d42c: ffff ffff    	<unknown>
 800d430: ffff ffff    	<unknown>
 800d434: ffff ffff    	<unknown>
 800d438: ffff ffff    	<unknown>
 800d43c: ffff ffff    	<unknown>
 800d440: ffff ffff    	<unknown>
 800d444: ffff ffff    	<unknown>
 800d448: ffff ffff    	<unknown>
 800d44c: ffff ffff    	<unknown>
 800d450: ffff ffff    	<unknown>
 800d454: ffff ffff    	<unknown>
 800d458: ffff ffff    	<unknown>
 800d45c: ffff ffff    	<unknown>
 800d460: ffff ffff    	<unknown>
 800d464: ffff ffff    	<unknown>
 800d468: ffff ffff    	<unknown>
 800d46c: ffff ffff    	<unknown>
 800d470: ffff ffff    	<unknown>
 800d474: ffff ffff    	<unknown>
 800d478: ffff ffff    	<unknown>
 800d47c: ffff ffff    	<unknown>
 800d480: ffff ffff    	<unknown>
 800d484: ffff ffff    	<unknown>
 800d488: ffff ffff    	<unknown>
 800d48c: ffff ffff    	<unknown>
 800d490: ffff ffff    	<unknown>
 800d494: ffff ffff    	<unknown>
 800d498: ffff ffff    	<unknown>
 800d49c: ffff ffff    	<unknown>
 800d4a0: ffff ffff    	<unknown>
 800d4a4: ffff ffff    	<unknown>
 800d4a8: ffff ffff    	<unknown>
 800d4ac: ffff ffff    	<unknown>
 800d4b0: ffff ffff    	<unknown>
 800d4b4: ffff ffff    	<unknown>
 800d4b8: ffff ffff    	<unknown>
 800d4bc: ffff ffff    	<unknown>
 800d4c0: ffff ffff    	<unknown>
 800d4c4: ffff ffff    	<unknown>
 800d4c8: ffff ffff    	<unknown>
 800d4cc: ffff ffff    	<unknown>
 800d4d0: ffff ffff    	<unknown>
 800d4d4: ffff ffff    	<unknown>
 800d4d8: ffff ffff    	<unknown>
 800d4dc: ffff ffff    	<unknown>
 800d4e0: ffff ffff    	<unknown>
 800d4e4: ffff ffff    	<unknown>
 800d4e8: ffff ffff    	<unknown>
 800d4ec: ffff ffff    	<unknown>
 800d4f0: ffff ffff    	<unknown>
 800d4f4: ffff ffff    	<unknown>
 800d4f8: ffff ffff    	<unknown>
 800d4fc: ffff ffff    	<unknown>
 800d500: ffff ffff    	<unknown>
 800d504: ffff ffff    	<unknown>
 800d508: ffff ffff    	<unknown>
 800d50c: ffff ffff    	<unknown>
 800d510: ffff ffff    	<unknown>
 800d514: ffff ffff    	<unknown>
 800d518: ffff ffff    	<unknown>
 800d51c: ffff ffff    	<unknown>
 800d520: ffff ffff    	<unknown>
 800d524: ffff ffff    	<unknown>
 800d528: ffff ffff    	<unknown>
 800d52c: ffff ffff    	<unknown>
 800d530: ffff ffff    	<unknown>
 800d534: ffff ffff    	<unknown>
 800d538: ffff ffff    	<unknown>
 800d53c: ffff ffff    	<unknown>
 800d540: ffff ffff    	<unknown>
 800d544: ffff ffff    	<unknown>
 800d548: ffff ffff    	<unknown>
 800d54c: ffff ffff    	<unknown>
 800d550: ffff ffff    	<unknown>
 800d554: ffff ffff    	<unknown>
 800d558: ffff ffff    	<unknown>
 800d55c: ffff ffff    	<unknown>
 800d560: ffff ffff    	<unknown>
 800d564: ffff ffff    	<unknown>
 800d568: ffff ffff    	<unknown>
 800d56c: ffff ffff    	<unknown>
 800d570: ffff ffff    	<unknown>
 800d574: ffff ffff    	<unknown>
 800d578: ffff ffff    	<unknown>
 800d57c: ffff ffff    	<unknown>
 800d580: ffff ffff    	<unknown>
 800d584: ffff ffff    	<unknown>
 800d588: ffff ffff    	<unknown>
 800d58c: ffff ffff    	<unknown>
 800d590: ffff ffff    	<unknown>
 800d594: ffff ffff    	<unknown>
 800d598: ffff ffff    	<unknown>
 800d59c: ffff ffff    	<unknown>
 800d5a0: ffff ffff    	<unknown>
 800d5a4: ffff ffff    	<unknown>
 800d5a8: ffff ffff    	<unknown>
 800d5ac: ffff ffff    	<unknown>
 800d5b0: ffff ffff    	<unknown>
 800d5b4: ffff ffff    	<unknown>
 800d5b8: ffff ffff    	<unknown>
 800d5bc: ffff ffff    	<unknown>
 800d5c0: ffff ffff    	<unknown>
 800d5c4: ffff ffff    	<unknown>
 800d5c8: ffff ffff    	<unknown>
 800d5cc: ffff ffff    	<unknown>
 800d5d0: ffff ffff    	<unknown>
 800d5d4: ffff ffff    	<unknown>
 800d5d8: ffff ffff    	<unknown>
 800d5dc: ffff ffff    	<unknown>
 800d5e0: ffff ffff    	<unknown>
 800d5e4: ffff ffff    	<unknown>
 800d5e8: ffff ffff    	<unknown>
 800d5ec: ffff ffff    	<unknown>
 800d5f0: ffff ffff    	<unknown>
 800d5f4: ffff ffff    	<unknown>
 800d5f8: ffff ffff    	<unknown>
 800d5fc: ffff ffff    	<unknown>
 800d600: ffff ffff    	<unknown>
 800d604: ffff ffff    	<unknown>
 800d608: ffff ffff    	<unknown>
 800d60c: ffff ffff    	<unknown>
 800d610: ffff ffff    	<unknown>
 800d614: ffff ffff    	<unknown>
 800d618: ffff ffff    	<unknown>
 800d61c: ffff ffff    	<unknown>
 800d620: ffff ffff    	<unknown>
 800d624: ffff ffff    	<unknown>
 800d628: ffff ffff    	<unknown>
 800d62c: ffff ffff    	<unknown>
 800d630: ffff ffff    	<unknown>
 800d634: ffff ffff    	<unknown>
 800d638: ffff ffff    	<unknown>
 800d63c: ffff ffff    	<unknown>
 800d640: ffff ffff    	<unknown>
 800d644: ffff ffff    	<unknown>
 800d648: ffff ffff    	<unknown>
 800d64c: ffff ffff    	<unknown>
 800d650: ffff ffff    	<unknown>
 800d654: ffff ffff    	<unknown>
 800d658: ffff ffff    	<unknown>
 800d65c: ffff ffff    	<unknown>
 800d660: ffff ffff    	<unknown>
 800d664: ffff ffff    	<unknown>
 800d668: ffff ffff    	<unknown>
 800d66c: ffff ffff    	<unknown>
 800d670: ffff ffff    	<unknown>
 800d674: ffff ffff    	<unknown>
 800d678: ffff ffff    	<unknown>
 800d67c: ffff ffff    	<unknown>
 800d680: ffff ffff    	<unknown>
 800d684: ffff ffff    	<unknown>
 800d688: ffff ffff    	<unknown>
 800d68c: ffff ffff    	<unknown>
 800d690: ffff ffff    	<unknown>
 800d694: ffff ffff    	<unknown>
 800d698: ffff ffff    	<unknown>
 800d69c: ffff ffff    	<unknown>
 800d6a0: ffff ffff    	<unknown>
 800d6a4: ffff ffff    	<unknown>
 800d6a8: ffff ffff    	<unknown>
 800d6ac: ffff ffff    	<unknown>
 800d6b0: ffff ffff    	<unknown>
 800d6b4: ffff ffff    	<unknown>
 800d6b8: ffff ffff    	<unknown>
 800d6bc: ffff ffff    	<unknown>
 800d6c0: ffff ffff    	<unknown>
 800d6c4: ffff ffff    	<unknown>
 800d6c8: ffff ffff    	<unknown>
 800d6cc: ffff ffff    	<unknown>
 800d6d0: ffff ffff    	<unknown>
 800d6d4: ffff ffff    	<unknown>
 800d6d8: ffff ffff    	<unknown>
 800d6dc: ffff ffff    	<unknown>
 800d6e0: ffff ffff    	<unknown>
 800d6e4: ffff ffff    	<unknown>
 800d6e8: ffff ffff    	<unknown>
 800d6ec: ffff ffff    	<unknown>
 800d6f0: ffff ffff    	<unknown>
 800d6f4: ffff ffff    	<unknown>
 800d6f8: ffff ffff    	<unknown>
 800d6fc: ffff ffff    	<unknown>
 800d700: ffff ffff    	<unknown>
 800d704: ffff ffff    	<unknown>
 800d708: ffff ffff    	<unknown>
 800d70c: ffff ffff    	<unknown>
 800d710: ffff ffff    	<unknown>
 800d714: ffff ffff    	<unknown>
 800d718: ffff ffff    	<unknown>
 800d71c: ffff ffff    	<unknown>
 800d720: ffff ffff    	<unknown>
 800d724: ffff ffff    	<unknown>
 800d728: ffff ffff    	<unknown>
 800d72c: ffff ffff    	<unknown>
 800d730: ffff ffff    	<unknown>
 800d734: ffff ffff    	<unknown>
 800d738: ffff ffff    	<unknown>
 800d73c: ffff ffff    	<unknown>
 800d740: ffff ffff    	<unknown>
 800d744: ffff ffff    	<unknown>
 800d748: ffff ffff    	<unknown>
 800d74c: ffff ffff    	<unknown>
 800d750: ffff ffff    	<unknown>
 800d754: ffff ffff    	<unknown>
 800d758: ffff ffff    	<unknown>
 800d75c: ffff ffff    	<unknown>
 800d760: ffff ffff    	<unknown>
 800d764: ffff ffff    	<unknown>
 800d768: ffff ffff    	<unknown>
 800d76c: ffff ffff    	<unknown>
 800d770: ffff ffff    	<unknown>
 800d774: ffff ffff    	<unknown>
 800d778: ffff ffff    	<unknown>
 800d77c: ffff ffff    	<unknown>
 800d780: ffff ffff    	<unknown>
 800d784: ffff ffff    	<unknown>
 800d788: ffff ffff    	<unknown>
 800d78c: ffff ffff    	<unknown>
 800d790: ffff ffff    	<unknown>
 800d794: ffff ffff    	<unknown>
 800d798: ffff ffff    	<unknown>
 800d79c: ffff ffff    	<unknown>
 800d7a0: ffff ffff    	<unknown>
 800d7a4: ffff ffff    	<unknown>
 800d7a8: ffff ffff    	<unknown>
 800d7ac: ffff ffff    	<unknown>
 800d7b0: ffff ffff    	<unknown>
 800d7b4: ffff ffff    	<unknown>
 800d7b8: ffff ffff    	<unknown>
 800d7bc: ffff ffff    	<unknown>
 800d7c0: ffff ffff    	<unknown>
 800d7c4: ffff ffff    	<unknown>
 800d7c8: ffff ffff    	<unknown>
 800d7cc: ffff ffff    	<unknown>
 800d7d0: ffff ffff    	<unknown>
 800d7d4: ffff ffff    	<unknown>
 800d7d8: ffff ffff    	<unknown>
 800d7dc: ffff ffff    	<unknown>
 800d7e0: ffff ffff    	<unknown>
 800d7e4: ffff ffff    	<unknown>
 800d7e8: ffff ffff    	<unknown>
 800d7ec: ffff ffff    	<unknown>
 800d7f0: ffff ffff    	<unknown>
 800d7f4: ffff ffff    	<unknown>
 800d7f8: ffff ffff    	<unknown>
 800d7fc: ffff ffff    	<unknown>
 800d800: ffff ffff    	<unknown>
 800d804: ffff ffff    	<unknown>
 800d808: ffff ffff    	<unknown>
 800d80c: ffff ffff    	<unknown>
 800d810: ffff ffff    	<unknown>
 800d814: ffff ffff    	<unknown>
 800d818: ffff ffff    	<unknown>
 800d81c: ffff ffff    	<unknown>
 800d820: ffff ffff    	<unknown>
 800d824: ffff ffff    	<unknown>
 800d828: ffff ffff    	<unknown>
 800d82c: ffff ffff    	<unknown>
 800d830: ffff ffff    	<unknown>
 800d834: ffff ffff    	<unknown>
 800d838: ffff ffff    	<unknown>
 800d83c: ffff ffff    	<unknown>
 800d840: ffff ffff    	<unknown>
 800d844: ffff ffff    	<unknown>
 800d848: ffff ffff    	<unknown>
 800d84c: ffff ffff    	<unknown>
 800d850: ffff ffff    	<unknown>
 800d854: ffff ffff    	<unknown>
 800d858: ffff ffff    	<unknown>
 800d85c: ffff ffff    	<unknown>
 800d860: ffff ffff    	<unknown>
 800d864: ffff ffff    	<unknown>
 800d868: ffff ffff    	<unknown>
 800d86c: ffff ffff    	<unknown>
 800d870: ffff ffff    	<unknown>
 800d874: ffff ffff    	<unknown>
 800d878: ffff ffff    	<unknown>
 800d87c: ffff ffff    	<unknown>
 800d880: ffff ffff    	<unknown>
 800d884: ffff ffff    	<unknown>
 800d888: ffff ffff    	<unknown>
 800d88c: ffff ffff    	<unknown>
 800d890: ffff ffff    	<unknown>
 800d894: ffff ffff    	<unknown>
 800d898: ffff ffff    	<unknown>
 800d89c: ffff ffff    	<unknown>
 800d8a0: ffff ffff    	<unknown>
 800d8a4: ffff ffff    	<unknown>
 800d8a8: ffff ffff    	<unknown>
 800d8ac: ffff ffff    	<unknown>
 800d8b0: ffff ffff    	<unknown>
 800d8b4: ffff ffff    	<unknown>
 800d8b8: ffff ffff    	<unknown>
 800d8bc: ffff ffff    	<unknown>
 800d8c0: ffff ffff    	<unknown>
 800d8c4: ffff ffff    	<unknown>
 800d8c8: ffff ffff    	<unknown>
 800d8cc: ffff ffff    	<unknown>
 800d8d0: ffff ffff    	<unknown>
 800d8d4: ffff ffff    	<unknown>
 800d8d8: ffff ffff    	<unknown>
 800d8dc: ffff ffff    	<unknown>
 800d8e0: ffff ffff    	<unknown>
 800d8e4: ffff ffff    	<unknown>
 800d8e8: ffff ffff    	<unknown>
 800d8ec: ffff ffff    	<unknown>
 800d8f0: ffff ffff    	<unknown>
 800d8f4: ffff ffff    	<unknown>
 800d8f8: ffff ffff    	<unknown>
 800d8fc: ffff ffff    	<unknown>
 800d900: ffff ffff    	<unknown>
 800d904: ffff ffff    	<unknown>
 800d908: ffff ffff    	<unknown>
 800d90c: ffff ffff    	<unknown>
 800d910: ffff ffff    	<unknown>
 800d914: ffff ffff    	<unknown>
 800d918: ffff ffff    	<unknown>
 800d91c: ffff ffff    	<unknown>
 800d920: ffff ffff    	<unknown>
 800d924: ffff ffff    	<unknown>
 800d928: ffff ffff    	<unknown>
 800d92c: ffff ffff    	<unknown>
 800d930: ffff ffff    	<unknown>
 800d934: ffff ffff    	<unknown>
 800d938: ffff ffff    	<unknown>
 800d93c: ffff ffff    	<unknown>
 800d940: ffff ffff    	<unknown>
 800d944: ffff ffff    	<unknown>
 800d948: ffff ffff    	<unknown>
 800d94c: ffff ffff    	<unknown>
 800d950: ffff ffff    	<unknown>
 800d954: ffff ffff    	<unknown>
 800d958: ffff ffff    	<unknown>
 800d95c: ffff ffff    	<unknown>
 800d960: ffff ffff    	<unknown>
 800d964: ffff ffff    	<unknown>
 800d968: ffff ffff    	<unknown>
 800d96c: ffff ffff    	<unknown>
 800d970: ffff ffff    	<unknown>
 800d974: ffff ffff    	<unknown>
 800d978: ffff ffff    	<unknown>
 800d97c: ffff ffff    	<unknown>
 800d980: ffff ffff    	<unknown>
 800d984: ffff ffff    	<unknown>
 800d988: ffff ffff    	<unknown>
 800d98c: ffff ffff    	<unknown>
 800d990: ffff ffff    	<unknown>
 800d994: ffff ffff    	<unknown>
 800d998: ffff ffff    	<unknown>
 800d99c: ffff ffff    	<unknown>
 800d9a0: ffff ffff    	<unknown>
 800d9a4: ffff ffff    	<unknown>
 800d9a8: ffff ffff    	<unknown>
 800d9ac: ffff ffff    	<unknown>
 800d9b0: ffff ffff    	<unknown>
 800d9b4: ffff ffff    	<unknown>
 800d9b8: ffff ffff    	<unknown>
 800d9bc: ffff ffff    	<unknown>
 800d9c0: ffff ffff    	<unknown>
 800d9c4: ffff ffff    	<unknown>
 800d9c8: ffff ffff    	<unknown>
 800d9cc: ffff ffff    	<unknown>
 800d9d0: ffff ffff    	<unknown>
 800d9d4: ffff ffff    	<unknown>
 800d9d8: ffff ffff    	<unknown>
 800d9dc: ffff ffff    	<unknown>
 800d9e0: ffff ffff    	<unknown>
 800d9e4: ffff ffff    	<unknown>
 800d9e8: ffff ffff    	<unknown>
 800d9ec: ffff ffff    	<unknown>
 800d9f0: ffff ffff    	<unknown>
 800d9f4: ffff ffff    	<unknown>
 800d9f8: ffff ffff    	<unknown>
 800d9fc: ffff ffff    	<unknown>
 800da00: ffff ffff    	<unknown>
 800da04: ffff ffff    	<unknown>
 800da08: ffff ffff    	<unknown>
 800da0c: ffff ffff    	<unknown>
 800da10: ffff ffff    	<unknown>
 800da14: ffff ffff    	<unknown>
 800da18: ffff ffff    	<unknown>
 800da1c: ffff ffff    	<unknown>
 800da20: ffff ffff    	<unknown>
 800da24: ffff ffff    	<unknown>
 800da28: ffff ffff    	<unknown>
 800da2c: ffff ffff    	<unknown>
 800da30: ffff ffff    	<unknown>
 800da34: ffff ffff    	<unknown>
 800da38: ffff ffff    	<unknown>
 800da3c: ffff ffff    	<unknown>
 800da40: ffff ffff    	<unknown>
 800da44: ffff ffff    	<unknown>
 800da48: ffff ffff    	<unknown>
 800da4c: ffff ffff    	<unknown>
 800da50: ffff ffff    	<unknown>
 800da54: ffff ffff    	<unknown>
 800da58: ffff ffff    	<unknown>
 800da5c: ffff ffff    	<unknown>
 800da60: ffff ffff    	<unknown>
 800da64: ffff ffff    	<unknown>
 800da68: ffff ffff    	<unknown>
 800da6c: ffff ffff    	<unknown>
 800da70: ffff ffff    	<unknown>
 800da74: ffff ffff    	<unknown>
 800da78: ffff ffff    	<unknown>
 800da7c: ffff ffff    	<unknown>
 800da80: ffff ffff    	<unknown>
 800da84: ffff ffff    	<unknown>
 800da88: ffff ffff    	<unknown>
 800da8c: ffff ffff    	<unknown>
 800da90: ffff ffff    	<unknown>
 800da94: ffff ffff    	<unknown>
 800da98: ffff ffff    	<unknown>
 800da9c: ffff ffff    	<unknown>
 800daa0: ffff ffff    	<unknown>
 800daa4: ffff ffff    	<unknown>
 800daa8: ffff ffff    	<unknown>
 800daac: ffff ffff    	<unknown>
 800dab0: ffff ffff    	<unknown>
 800dab4: ffff ffff    	<unknown>
 800dab8: ffff ffff    	<unknown>
 800dabc: ffff ffff    	<unknown>
 800dac0: ffff ffff    	<unknown>
 800dac4: ffff ffff    	<unknown>
 800dac8: ffff ffff    	<unknown>
 800dacc: ffff ffff    	<unknown>
 800dad0: ffff ffff    	<unknown>
 800dad4: ffff ffff    	<unknown>
 800dad8: ffff ffff    	<unknown>
 800dadc: ffff ffff    	<unknown>
 800dae0: ffff ffff    	<unknown>
 800dae4: ffff ffff    	<unknown>
 800dae8: ffff ffff    	<unknown>
 800daec: ffff ffff    	<unknown>
 800daf0: ffff ffff    	<unknown>
 800daf4: ffff ffff    	<unknown>
 800daf8: ffff ffff    	<unknown>
 800dafc: ffff ffff    	<unknown>
 800db00: ffff ffff    	<unknown>
 800db04: ffff ffff    	<unknown>
 800db08: ffff ffff    	<unknown>
 800db0c: ffff ffff    	<unknown>
 800db10: ffff ffff    	<unknown>
 800db14: ffff ffff    	<unknown>
 800db18: ffff ffff    	<unknown>
 800db1c: ffff ffff    	<unknown>
 800db20: ffff ffff    	<unknown>
 800db24: ffff ffff    	<unknown>
 800db28: ffff ffff    	<unknown>
 800db2c: ffff ffff    	<unknown>
 800db30: ffff ffff    	<unknown>
 800db34: ffff ffff    	<unknown>
 800db38: ffff ffff    	<unknown>
 800db3c: ffff ffff    	<unknown>
 800db40: ffff ffff    	<unknown>
 800db44: ffff ffff    	<unknown>
 800db48: ffff ffff    	<unknown>
 800db4c: ffff ffff    	<unknown>
 800db50: ffff ffff    	<unknown>
 800db54: ffff ffff    	<unknown>
 800db58: ffff ffff    	<unknown>
 800db5c: ffff ffff    	<unknown>
 800db60: ffff ffff    	<unknown>
 800db64: ffff ffff    	<unknown>
 800db68: ffff ffff    	<unknown>
 800db6c: ffff ffff    	<unknown>
 800db70: ffff ffff    	<unknown>
 800db74: ffff ffff    	<unknown>
 800db78: ffff ffff    	<unknown>
 800db7c: ffff ffff    	<unknown>
 800db80: ffff ffff    	<unknown>
 800db84: ffff ffff    	<unknown>
 800db88: ffff ffff    	<unknown>
 800db8c: ffff ffff    	<unknown>
 800db90: ffff ffff    	<unknown>
 800db94: ffff ffff    	<unknown>
 800db98: ffff ffff    	<unknown>
 800db9c: ffff ffff    	<unknown>
 800dba0: ffff ffff    	<unknown>
 800dba4: ffff ffff    	<unknown>
 800dba8: ffff ffff    	<unknown>
 800dbac: ffff ffff    	<unknown>
 800dbb0: ffff ffff    	<unknown>
 800dbb4: ffff ffff    	<unknown>
 800dbb8: ffff ffff    	<unknown>
 800dbbc: ffff ffff    	<unknown>
 800dbc0: ffff ffff    	<unknown>
 800dbc4: ffff ffff    	<unknown>
 800dbc8: ffff ffff    	<unknown>
 800dbcc: ffff ffff    	<unknown>
 800dbd0: ffff ffff    	<unknown>
 800dbd4: ffff ffff    	<unknown>
 800dbd8: ffff ffff    	<unknown>
 800dbdc: ffff ffff    	<unknown>
 800dbe0: ffff ffff    	<unknown>
 800dbe4: ffff ffff    	<unknown>
 800dbe8: ffff ffff    	<unknown>
 800dbec: ffff ffff    	<unknown>
 800dbf0: ffff ffff    	<unknown>
 800dbf4: ffff ffff    	<unknown>
 800dbf8: ffff ffff    	<unknown>
 800dbfc: ffff ffff    	<unknown>
 800dc00: ffff ffff    	<unknown>
 800dc04: ffff ffff    	<unknown>
 800dc08: ffff ffff    	<unknown>
 800dc0c: ffff ffff    	<unknown>
 800dc10: ffff ffff    	<unknown>
 800dc14: ffff ffff    	<unknown>
 800dc18: ffff ffff    	<unknown>
 800dc1c: ffff ffff    	<unknown>
 800dc20: ffff ffff    	<unknown>
 800dc24: ffff ffff    	<unknown>
 800dc28: ffff ffff    	<unknown>
 800dc2c: ffff ffff    	<unknown>
 800dc30: ffff ffff    	<unknown>
 800dc34: ffff ffff    	<unknown>
 800dc38: ffff ffff    	<unknown>
 800dc3c: ffff ffff    	<unknown>
 800dc40: ffff ffff    	<unknown>
 800dc44: ffff ffff    	<unknown>
 800dc48: ffff ffff    	<unknown>
 800dc4c: ffff ffff    	<unknown>
 800dc50: ffff ffff    	<unknown>
 800dc54: ffff ffff    	<unknown>
 800dc58: ffff ffff    	<unknown>
 800dc5c: ffff ffff    	<unknown>
 800dc60: ffff ffff    	<unknown>
 800dc64: ffff ffff    	<unknown>
 800dc68: ffff ffff    	<unknown>
 800dc6c: ffff ffff    	<unknown>
 800dc70: ffff ffff    	<unknown>
 800dc74: ffff ffff    	<unknown>
 800dc78: ffff ffff    	<unknown>
 800dc7c: ffff ffff    	<unknown>
 800dc80: ffff ffff    	<unknown>
 800dc84: ffff ffff    	<unknown>
 800dc88: ffff ffff    	<unknown>
 800dc8c: ffff ffff    	<unknown>
 800dc90: ffff ffff    	<unknown>
 800dc94: ffff ffff    	<unknown>
 800dc98: ffff ffff    	<unknown>
 800dc9c: ffff ffff    	<unknown>
 800dca0: ffff ffff    	<unknown>
 800dca4: ffff ffff    	<unknown>
 800dca8: ffff ffff    	<unknown>
 800dcac: ffff ffff    	<unknown>
 800dcb0: ffff ffff    	<unknown>
 800dcb4: ffff ffff    	<unknown>
 800dcb8: ffff ffff    	<unknown>
 800dcbc: ffff ffff    	<unknown>
 800dcc0: ffff ffff    	<unknown>
 800dcc4: ffff ffff    	<unknown>
 800dcc8: ffff ffff    	<unknown>
 800dccc: ffff ffff    	<unknown>
 800dcd0: ffff ffff    	<unknown>
 800dcd4: ffff ffff    	<unknown>
 800dcd8: ffff ffff    	<unknown>
 800dcdc: ffff ffff    	<unknown>
 800dce0: ffff ffff    	<unknown>
 800dce4: ffff ffff    	<unknown>
 800dce8: ffff ffff    	<unknown>
 800dcec: ffff ffff    	<unknown>
 800dcf0: ffff ffff    	<unknown>
 800dcf4: ffff ffff    	<unknown>
 800dcf8: ffff ffff    	<unknown>
 800dcfc: ffff ffff    	<unknown>
 800dd00: ffff ffff    	<unknown>
 800dd04: ffff ffff    	<unknown>
 800dd08: ffff ffff    	<unknown>
 800dd0c: ffff ffff    	<unknown>
 800dd10: ffff ffff    	<unknown>
 800dd14: ffff ffff    	<unknown>
 800dd18: ffff ffff    	<unknown>
 800dd1c: ffff ffff    	<unknown>
 800dd20: ffff ffff    	<unknown>
 800dd24: ffff ffff    	<unknown>
 800dd28: ffff ffff    	<unknown>
 800dd2c: ffff ffff    	<unknown>
 800dd30: ffff ffff    	<unknown>
 800dd34: ffff ffff    	<unknown>
 800dd38: ffff ffff    	<unknown>
 800dd3c: ffff ffff    	<unknown>
 800dd40: ffff ffff    	<unknown>
 800dd44: ffff ffff    	<unknown>
 800dd48: ffff ffff    	<unknown>
 800dd4c: ffff ffff    	<unknown>
 800dd50: ffff ffff    	<unknown>
 800dd54: ffff ffff    	<unknown>
 800dd58: ffff ffff    	<unknown>
 800dd5c: ffff ffff    	<unknown>
 800dd60: ffff ffff    	<unknown>
 800dd64: ffff ffff    	<unknown>
 800dd68: ffff ffff    	<unknown>
 800dd6c: ffff ffff    	<unknown>
 800dd70: ffff ffff    	<unknown>
 800dd74: ffff ffff    	<unknown>
 800dd78: ffff ffff    	<unknown>
 800dd7c: ffff ffff    	<unknown>
 800dd80: ffff ffff    	<unknown>
 800dd84: ffff ffff    	<unknown>
 800dd88: ffff ffff    	<unknown>
 800dd8c: ffff ffff    	<unknown>
 800dd90: ffff ffff    	<unknown>
 800dd94: ffff ffff    	<unknown>
 800dd98: ffff ffff    	<unknown>
 800dd9c: ffff ffff    	<unknown>
 800dda0: ffff ffff    	<unknown>
 800dda4: ffff ffff    	<unknown>
 800dda8: ffff ffff    	<unknown>
 800ddac: ffff ffff    	<unknown>
 800ddb0: ffff ffff    	<unknown>
 800ddb4: ffff ffff    	<unknown>
 800ddb8: ffff ffff    	<unknown>
 800ddbc: ffff ffff    	<unknown>
 800ddc0: ffff ffff    	<unknown>
 800ddc4: ffff ffff    	<unknown>
 800ddc8: ffff ffff    	<unknown>
 800ddcc: ffff ffff    	<unknown>
 800ddd0: ffff ffff    	<unknown>
 800ddd4: ffff ffff    	<unknown>
 800ddd8: ffff ffff    	<unknown>
 800dddc: ffff ffff    	<unknown>
 800dde0: ffff ffff    	<unknown>
 800dde4: ffff ffff    	<unknown>
 800dde8: ffff ffff    	<unknown>
 800ddec: ffff ffff    	<unknown>
 800ddf0: ffff ffff    	<unknown>
 800ddf4: ffff ffff    	<unknown>
 800ddf8: ffff ffff    	<unknown>
 800ddfc: ffff ffff    	<unknown>
 800de00: ffff ffff    	<unknown>
 800de04: ffff ffff    	<unknown>
 800de08: ffff ffff    	<unknown>
 800de0c: ffff ffff    	<unknown>
 800de10: ffff ffff    	<unknown>
 800de14: ffff ffff    	<unknown>
 800de18: ffff ffff    	<unknown>
 800de1c: ffff ffff    	<unknown>
 800de20: ffff ffff    	<unknown>
 800de24: ffff ffff    	<unknown>
 800de28: ffff ffff    	<unknown>
 800de2c: ffff ffff    	<unknown>
 800de30: ffff ffff    	<unknown>
 800de34: ffff ffff    	<unknown>
 800de38: ffff ffff    	<unknown>
 800de3c: ffff ffff    	<unknown>
 800de40: ffff ffff    	<unknown>
 800de44: ffff ffff    	<unknown>
 800de48: ffff ffff    	<unknown>
 800de4c: ffff ffff    	<unknown>
 800de50: ffff ffff    	<unknown>
 800de54: ffff ffff    	<unknown>
 800de58: ffff ffff    	<unknown>
 800de5c: ffff ffff    	<unknown>
 800de60: ffff ffff    	<unknown>
 800de64: ffff ffff    	<unknown>
 800de68: ffff ffff    	<unknown>
 800de6c: ffff ffff    	<unknown>
 800de70: ffff ffff    	<unknown>
 800de74: ffff ffff    	<unknown>
 800de78: ffff ffff    	<unknown>
 800de7c: ffff ffff    	<unknown>
 800de80: ffff ffff    	<unknown>
 800de84: ffff ffff    	<unknown>
 800de88: ffff ffff    	<unknown>
 800de8c: ffff ffff    	<unknown>
 800de90: ffff ffff    	<unknown>
 800de94: ffff ffff    	<unknown>
 800de98: ffff ffff    	<unknown>
 800de9c: ffff ffff    	<unknown>
 800dea0: ffff ffff    	<unknown>
 800dea4: ffff ffff    	<unknown>
 800dea8: ffff ffff    	<unknown>
 800deac: ffff ffff    	<unknown>
 800deb0: ffff ffff    	<unknown>
 800deb4: ffff ffff    	<unknown>
 800deb8: ffff ffff    	<unknown>
 800debc: ffff ffff    	<unknown>
 800dec0: ffff ffff    	<unknown>
 800dec4: ffff ffff    	<unknown>
 800dec8: ffff ffff    	<unknown>
 800decc: ffff ffff    	<unknown>
 800ded0: ffff ffff    	<unknown>
 800ded4: ffff ffff    	<unknown>
 800ded8: ffff ffff    	<unknown>
 800dedc: ffff ffff    	<unknown>
 800dee0: ffff ffff    	<unknown>
 800dee4: ffff ffff    	<unknown>
 800dee8: ffff ffff    	<unknown>
 800deec: ffff ffff    	<unknown>
 800def0: ffff ffff    	<unknown>
 800def4: ffff ffff    	<unknown>
 800def8: ffff ffff    	<unknown>
 800defc: ffff ffff    	<unknown>
 800df00: ffff ffff    	<unknown>
 800df04: ffff ffff    	<unknown>
 800df08: ffff ffff    	<unknown>
 800df0c: ffff ffff    	<unknown>
 800df10: ffff ffff    	<unknown>
 800df14: ffff ffff    	<unknown>
 800df18: ffff ffff    	<unknown>
 800df1c: ffff ffff    	<unknown>
 800df20: ffff ffff    	<unknown>
 800df24: ffff ffff    	<unknown>
 800df28: ffff ffff    	<unknown>
 800df2c: ffff ffff    	<unknown>
 800df30: ffff ffff    	<unknown>
 800df34: ffff ffff    	<unknown>
 800df38: ffff ffff    	<unknown>
 800df3c: ffff ffff    	<unknown>
 800df40: ffff ffff    	<unknown>
 800df44: ffff ffff    	<unknown>
 800df48: ffff ffff    	<unknown>
 800df4c: ffff ffff    	<unknown>
 800df50: ffff ffff    	<unknown>
 800df54: ffff ffff    	<unknown>
 800df58: ffff ffff    	<unknown>
 800df5c: ffff ffff    	<unknown>
 800df60: ffff ffff    	<unknown>
 800df64: ffff ffff    	<unknown>
 800df68: ffff ffff    	<unknown>
 800df6c: ffff ffff    	<unknown>
 800df70: ffff ffff    	<unknown>
 800df74: ffff ffff    	<unknown>
 800df78: ffff ffff    	<unknown>
 800df7c: ffff ffff    	<unknown>
 800df80: ffff ffff    	<unknown>
 800df84: ffff ffff    	<unknown>
 800df88: ffff ffff    	<unknown>
 800df8c: ffff ffff    	<unknown>
 800df90: ffff ffff    	<unknown>
 800df94: ffff ffff    	<unknown>
 800df98: ffff ffff    	<unknown>
 800df9c: ffff ffff    	<unknown>
 800dfa0: ffff ffff    	<unknown>
 800dfa4: ffff ffff    	<unknown>
 800dfa8: ffff ffff    	<unknown>
 800dfac: ffff ffff    	<unknown>
 800dfb0: ffff ffff    	<unknown>
 800dfb4: ffff ffff    	<unknown>
 800dfb8: ffff ffff    	<unknown>
 800dfbc: ffff ffff    	<unknown>
 800dfc0: ffff ffff    	<unknown>
 800dfc4: ffff ffff    	<unknown>
 800dfc8: ffff ffff    	<unknown>
 800dfcc: ffff ffff    	<unknown>
 800dfd0: ffff ffff    	<unknown>
 800dfd4: ffff ffff    	<unknown>
 800dfd8: ffff ffff    	<unknown>
 800dfdc: ffff ffff    	<unknown>
 800dfe0: ffff ffff    	<unknown>
 800dfe4: ffff ffff    	<unknown>
 800dfe8: ffff ffff    	<unknown>
 800dfec: ffff ffff    	<unknown>
 800dff0: ffff ffff    	<unknown>
 800dff4: ffff ffff    	<unknown>
 800dff8: ffff ffff    	<unknown>
 800dffc: ffff ffff    	<unknown>
 800e000: ffff ffff    	<unknown>
 800e004: ffff ffff    	<unknown>
 800e008: ffff ffff    	<unknown>
 800e00c: ffff ffff    	<unknown>
 800e010: ffff ffff    	<unknown>
 800e014: ffff ffff    	<unknown>
 800e018: ffff ffff    	<unknown>
 800e01c: ffff ffff    	<unknown>
 800e020: ffff ffff    	<unknown>
 800e024: ffff ffff    	<unknown>
 800e028: ffff ffff    	<unknown>
 800e02c: ffff ffff    	<unknown>
 800e030: ffff ffff    	<unknown>
 800e034: ffff ffff    	<unknown>
 800e038: ffff ffff    	<unknown>
 800e03c: ffff ffff    	<unknown>
 800e040: ffff ffff    	<unknown>
 800e044: ffff ffff    	<unknown>
 800e048: ffff ffff    	<unknown>
 800e04c: ffff ffff    	<unknown>
 800e050: ffff ffff    	<unknown>
 800e054: ffff ffff    	<unknown>
 800e058: ffff ffff    	<unknown>
 800e05c: ffff ffff    	<unknown>
 800e060: ffff ffff    	<unknown>
 800e064: ffff ffff    	<unknown>
 800e068: ffff ffff    	<unknown>
 800e06c: ffff ffff    	<unknown>
 800e070: ffff ffff    	<unknown>
 800e074: ffff ffff    	<unknown>
 800e078: ffff ffff    	<unknown>
 800e07c: ffff ffff    	<unknown>
 800e080: ffff ffff    	<unknown>
 800e084: ffff ffff    	<unknown>
 800e088: ffff ffff    	<unknown>
 800e08c: ffff ffff    	<unknown>
 800e090: ffff ffff    	<unknown>
 800e094: ffff ffff    	<unknown>
 800e098: ffff ffff    	<unknown>
 800e09c: ffff ffff    	<unknown>
 800e0a0: ffff ffff    	<unknown>
 800e0a4: ffff ffff    	<unknown>
 800e0a8: ffff ffff    	<unknown>
 800e0ac: ffff ffff    	<unknown>
 800e0b0: ffff ffff    	<unknown>
 800e0b4: ffff ffff    	<unknown>
 800e0b8: ffff ffff    	<unknown>
 800e0bc: ffff ffff    	<unknown>
 800e0c0: ffff ffff    	<unknown>
 800e0c4: ffff ffff    	<unknown>
 800e0c8: ffff ffff    	<unknown>
 800e0cc: ffff ffff    	<unknown>
 800e0d0: ffff ffff    	<unknown>
 800e0d4: ffff ffff    	<unknown>
 800e0d8: ffff ffff    	<unknown>
 800e0dc: ffff ffff    	<unknown>
 800e0e0: ffff ffff    	<unknown>
 800e0e4: ffff ffff    	<unknown>
 800e0e8: ffff ffff    	<unknown>
 800e0ec: ffff ffff    	<unknown>
 800e0f0: ffff ffff    	<unknown>
 800e0f4: ffff ffff    	<unknown>
 800e0f8: ffff ffff    	<unknown>
 800e0fc: ffff ffff    	<unknown>
 800e100: ffff ffff    	<unknown>
 800e104: ffff ffff    	<unknown>
 800e108: ffff ffff    	<unknown>
 800e10c: ffff ffff    	<unknown>
 800e110: ffff ffff    	<unknown>
 800e114: ffff ffff    	<unknown>
 800e118: ffff ffff    	<unknown>
 800e11c: ffff ffff    	<unknown>
 800e120: ffff ffff    	<unknown>
 800e124: ffff ffff    	<unknown>
 800e128: ffff ffff    	<unknown>
 800e12c: ffff ffff    	<unknown>
 800e130: ffff ffff    	<unknown>
 800e134: ffff ffff    	<unknown>
 800e138: ffff ffff    	<unknown>
 800e13c: ffff ffff    	<unknown>
 800e140: ffff ffff    	<unknown>
 800e144: ffff ffff    	<unknown>
 800e148: ffff ffff    	<unknown>
 800e14c: ffff ffff    	<unknown>
 800e150: ffff ffff    	<unknown>
 800e154: ffff ffff    	<unknown>
 800e158: ffff ffff    	<unknown>
 800e15c: ffff ffff    	<unknown>
 800e160: ffff ffff    	<unknown>
 800e164: ffff ffff    	<unknown>
 800e168: ffff ffff    	<unknown>
 800e16c: ffff ffff    	<unknown>
 800e170: ffff ffff    	<unknown>
 800e174: ffff ffff    	<unknown>
 800e178: ffff ffff    	<unknown>
 800e17c: ffff ffff    	<unknown>
 800e180: ffff ffff    	<unknown>
 800e184: ffff ffff    	<unknown>
 800e188: ffff ffff    	<unknown>
 800e18c: ffff ffff    	<unknown>
 800e190: ffff ffff    	<unknown>
 800e194: ffff ffff    	<unknown>
 800e198: ffff ffff    	<unknown>
 800e19c: ffff ffff    	<unknown>
 800e1a0: ffff ffff    	<unknown>
 800e1a4: ffff ffff    	<unknown>
 800e1a8: ffff ffff    	<unknown>
 800e1ac: ffff ffff    	<unknown>
 800e1b0: ffff ffff    	<unknown>
 800e1b4: ffff ffff    	<unknown>
 800e1b8: ffff ffff    	<unknown>
 800e1bc: ffff ffff    	<unknown>
 800e1c0: ffff ffff    	<unknown>
 800e1c4: ffff ffff    	<unknown>
 800e1c8: ffff ffff    	<unknown>
 800e1cc: ffff ffff    	<unknown>
 800e1d0: ffff ffff    	<unknown>
 800e1d4: ffff ffff    	<unknown>
 800e1d8: ffff ffff    	<unknown>
 800e1dc: ffff ffff    	<unknown>
 800e1e0: ffff ffff    	<unknown>
 800e1e4: ffff ffff    	<unknown>
 800e1e8: ffff ffff    	<unknown>
 800e1ec: ffff ffff    	<unknown>
 800e1f0: ffff ffff    	<unknown>
 800e1f4: ffff ffff    	<unknown>
 800e1f8: ffff ffff    	<unknown>
 800e1fc: ffff ffff    	<unknown>
 800e200: ffff ffff    	<unknown>
 800e204: ffff ffff    	<unknown>
 800e208: ffff ffff    	<unknown>
 800e20c: ffff ffff    	<unknown>
 800e210: ffff ffff    	<unknown>
 800e214: ffff ffff    	<unknown>
 800e218: ffff ffff    	<unknown>
 800e21c: ffff ffff    	<unknown>
 800e220: ffff ffff    	<unknown>
 800e224: ffff ffff    	<unknown>
 800e228: ffff ffff    	<unknown>
 800e22c: ffff ffff    	<unknown>
 800e230: ffff ffff    	<unknown>
 800e234: ffff ffff    	<unknown>
 800e238: ffff ffff    	<unknown>
 800e23c: ffff ffff    	<unknown>
 800e240: ffff ffff    	<unknown>
 800e244: ffff ffff    	<unknown>
 800e248: ffff ffff    	<unknown>
 800e24c: ffff ffff    	<unknown>
 800e250: ffff ffff    	<unknown>
 800e254: ffff ffff    	<unknown>
 800e258: ffff ffff    	<unknown>
 800e25c: ffff ffff    	<unknown>
 800e260: ffff ffff    	<unknown>
 800e264: ffff ffff    	<unknown>
 800e268: ffff ffff    	<unknown>
 800e26c: ffff ffff    	<unknown>
 800e270: ffff ffff    	<unknown>
 800e274: ffff ffff    	<unknown>
 800e278: ffff ffff    	<unknown>
 800e27c: ffff ffff    	<unknown>
 800e280: ffff ffff    	<unknown>
 800e284: ffff ffff    	<unknown>
 800e288: ffff ffff    	<unknown>
 800e28c: ffff ffff    	<unknown>
 800e290: ffff ffff    	<unknown>
 800e294: ffff ffff    	<unknown>
 800e298: ffff ffff    	<unknown>
 800e29c: ffff ffff    	<unknown>
 800e2a0: ffff ffff    	<unknown>
 800e2a4: ffff ffff    	<unknown>
 800e2a8: ffff ffff    	<unknown>
 800e2ac: ffff ffff    	<unknown>
 800e2b0: ffff ffff    	<unknown>
 800e2b4: ffff ffff    	<unknown>
 800e2b8: ffff ffff    	<unknown>
 800e2bc: ffff ffff    	<unknown>
 800e2c0: ffff ffff    	<unknown>
 800e2c4: ffff ffff    	<unknown>
 800e2c8: ffff ffff    	<unknown>
 800e2cc: ffff ffff    	<unknown>
 800e2d0: ffff ffff    	<unknown>
 800e2d4: ffff ffff    	<unknown>
 800e2d8: ffff ffff    	<unknown>
 800e2dc: ffff ffff    	<unknown>
 800e2e0: ffff ffff    	<unknown>
 800e2e4: ffff ffff    	<unknown>
 800e2e8: ffff ffff    	<unknown>
 800e2ec: ffff ffff    	<unknown>
 800e2f0: ffff ffff    	<unknown>
 800e2f4: ffff ffff    	<unknown>
 800e2f8: ffff ffff    	<unknown>
 800e2fc: ffff ffff    	<unknown>
 800e300: ffff ffff    	<unknown>
 800e304: ffff ffff    	<unknown>
 800e308: ffff ffff    	<unknown>
 800e30c: ffff ffff    	<unknown>
 800e310: ffff ffff    	<unknown>
 800e314: ffff ffff    	<unknown>
 800e318: ffff ffff    	<unknown>
 800e31c: ffff ffff    	<unknown>
 800e320: ffff ffff    	<unknown>
 800e324: ffff ffff    	<unknown>
 800e328: ffff ffff    	<unknown>
 800e32c: ffff ffff    	<unknown>
 800e330: ffff ffff    	<unknown>
 800e334: ffff ffff    	<unknown>
 800e338: ffff ffff    	<unknown>
 800e33c: ffff ffff    	<unknown>
 800e340: ffff ffff    	<unknown>
 800e344: ffff ffff    	<unknown>
 800e348: ffff ffff    	<unknown>
 800e34c: ffff ffff    	<unknown>
 800e350: ffff ffff    	<unknown>
 800e354: ffff ffff    	<unknown>
 800e358: ffff ffff    	<unknown>
 800e35c: ffff ffff    	<unknown>
 800e360: ffff ffff    	<unknown>
 800e364: ffff ffff    	<unknown>
 800e368: ffff ffff    	<unknown>
 800e36c: ffff ffff    	<unknown>
 800e370: ffff ffff    	<unknown>
 800e374: ffff ffff    	<unknown>
 800e378: ffff ffff    	<unknown>
 800e37c: ffff ffff    	<unknown>
 800e380: ffff ffff    	<unknown>
 800e384: ffff ffff    	<unknown>
 800e388: ffff ffff    	<unknown>
 800e38c: ffff ffff    	<unknown>
 800e390: ffff ffff    	<unknown>
 800e394: ffff ffff    	<unknown>
 800e398: ffff ffff    	<unknown>
 800e39c: ffff ffff    	<unknown>
 800e3a0: ffff ffff    	<unknown>
 800e3a4: ffff ffff    	<unknown>
 800e3a8: ffff ffff    	<unknown>
 800e3ac: ffff ffff    	<unknown>
 800e3b0: ffff ffff    	<unknown>
 800e3b4: ffff ffff    	<unknown>
 800e3b8: ffff ffff    	<unknown>
 800e3bc: ffff ffff    	<unknown>
 800e3c0: ffff ffff    	<unknown>
 800e3c4: ffff ffff    	<unknown>
 800e3c8: ffff ffff    	<unknown>
 800e3cc: ffff ffff    	<unknown>
 800e3d0: ffff ffff    	<unknown>
 800e3d4: ffff ffff    	<unknown>
 800e3d8: ffff ffff    	<unknown>
 800e3dc: ffff ffff    	<unknown>
 800e3e0: ffff ffff    	<unknown>
 800e3e4: ffff ffff    	<unknown>
 800e3e8: ffff ffff    	<unknown>
 800e3ec: ffff ffff    	<unknown>
 800e3f0: ffff ffff    	<unknown>
 800e3f4: ffff ffff    	<unknown>
 800e3f8: ffff ffff    	<unknown>
 800e3fc: ffff ffff    	<unknown>
 800e400: ffff ffff    	<unknown>
 800e404: ffff ffff    	<unknown>
 800e408: ffff ffff    	<unknown>
 800e40c: ffff ffff    	<unknown>
 800e410: ffff ffff    	<unknown>
 800e414: ffff ffff    	<unknown>
 800e418: ffff ffff    	<unknown>
 800e41c: ffff ffff    	<unknown>
 800e420: ffff ffff    	<unknown>
 800e424: ffff ffff    	<unknown>
 800e428: ffff ffff    	<unknown>
 800e42c: ffff ffff    	<unknown>
 800e430: ffff ffff    	<unknown>
 800e434: ffff ffff    	<unknown>
 800e438: ffff ffff    	<unknown>
 800e43c: ffff ffff    	<unknown>
 800e440: ffff ffff    	<unknown>
 800e444: ffff ffff    	<unknown>
 800e448: ffff ffff    	<unknown>
 800e44c: ffff ffff    	<unknown>
 800e450: ffff ffff    	<unknown>
 800e454: ffff ffff    	<unknown>
 800e458: ffff ffff    	<unknown>
 800e45c: ffff ffff    	<unknown>
 800e460: ffff ffff    	<unknown>
 800e464: ffff ffff    	<unknown>
 800e468: ffff ffff    	<unknown>
 800e46c: ffff ffff    	<unknown>
 800e470: ffff ffff    	<unknown>
 800e474: ffff ffff    	<unknown>
 800e478: ffff ffff    	<unknown>
 800e47c: ffff ffff    	<unknown>
 800e480: ffff ffff    	<unknown>
 800e484: ffff ffff    	<unknown>
 800e488: ffff ffff    	<unknown>
 800e48c: ffff ffff    	<unknown>
 800e490: ffff ffff    	<unknown>
 800e494: ffff ffff    	<unknown>
 800e498: ffff ffff    	<unknown>
 800e49c: ffff ffff    	<unknown>
 800e4a0: ffff ffff    	<unknown>
 800e4a4: ffff ffff    	<unknown>
 800e4a8: ffff ffff    	<unknown>
 800e4ac: ffff ffff    	<unknown>
 800e4b0: ffff ffff    	<unknown>
 800e4b4: ffff ffff    	<unknown>
 800e4b8: ffff ffff    	<unknown>
 800e4bc: ffff ffff    	<unknown>
 800e4c0: ffff ffff    	<unknown>
 800e4c4: ffff ffff    	<unknown>
 800e4c8: ffff ffff    	<unknown>
 800e4cc: ffff ffff    	<unknown>
 800e4d0: ffff ffff    	<unknown>
 800e4d4: ffff ffff    	<unknown>
 800e4d8: ffff ffff    	<unknown>
 800e4dc: ffff ffff    	<unknown>
 800e4e0: ffff ffff    	<unknown>
 800e4e4: ffff ffff    	<unknown>
 800e4e8: ffff ffff    	<unknown>
 800e4ec: ffff ffff    	<unknown>
 800e4f0: ffff ffff    	<unknown>
 800e4f4: ffff ffff    	<unknown>
 800e4f8: ffff ffff    	<unknown>
 800e4fc: ffff ffff    	<unknown>
 800e500: ffff ffff    	<unknown>
 800e504: ffff ffff    	<unknown>
 800e508: ffff ffff    	<unknown>
 800e50c: ffff ffff    	<unknown>
 800e510: ffff ffff    	<unknown>
 800e514: ffff ffff    	<unknown>
 800e518: ffff ffff    	<unknown>
 800e51c: ffff ffff    	<unknown>
 800e520: ffff ffff    	<unknown>
 800e524: ffff ffff    	<unknown>
 800e528: ffff ffff    	<unknown>
 800e52c: ffff ffff    	<unknown>
 800e530: ffff ffff    	<unknown>
 800e534: ffff ffff    	<unknown>
 800e538: ffff ffff    	<unknown>
 800e53c: ffff ffff    	<unknown>
 800e540: ffff ffff    	<unknown>
 800e544: ffff ffff    	<unknown>
 800e548: ffff ffff    	<unknown>
 800e54c: ffff ffff    	<unknown>
 800e550: ffff ffff    	<unknown>
 800e554: ffff ffff    	<unknown>
 800e558: ffff ffff    	<unknown>
 800e55c: ffff ffff    	<unknown>
 800e560: ffff ffff    	<unknown>
 800e564: ffff ffff    	<unknown>
 800e568: ffff ffff    	<unknown>
 800e56c: ffff ffff    	<unknown>
 800e570: ffff ffff    	<unknown>
 800e574: ffff ffff    	<unknown>
 800e578: ffff ffff    	<unknown>
 800e57c: ffff ffff    	<unknown>
 800e580: ffff ffff    	<unknown>
 800e584: ffff ffff    	<unknown>
 800e588: ffff ffff    	<unknown>
 800e58c: ffff ffff    	<unknown>
 800e590: ffff ffff    	<unknown>
 800e594: ffff ffff    	<unknown>
 800e598: ffff ffff    	<unknown>
 800e59c: ffff ffff    	<unknown>
 800e5a0: ffff ffff    	<unknown>
 800e5a4: ffff ffff    	<unknown>
 800e5a8: ffff ffff    	<unknown>
 800e5ac: ffff ffff    	<unknown>
 800e5b0: ffff ffff    	<unknown>
 800e5b4: ffff ffff    	<unknown>
 800e5b8: ffff ffff    	<unknown>
 800e5bc: ffff ffff    	<unknown>
 800e5c0: ffff ffff    	<unknown>
 800e5c4: ffff ffff    	<unknown>
 800e5c8: ffff ffff    	<unknown>
 800e5cc: ffff ffff    	<unknown>
 800e5d0: ffff ffff    	<unknown>
 800e5d4: ffff ffff    	<unknown>
 800e5d8: ffff ffff    	<unknown>
 800e5dc: ffff ffff    	<unknown>
 800e5e0: ffff ffff    	<unknown>
 800e5e4: ffff ffff    	<unknown>
 800e5e8: ffff ffff    	<unknown>
 800e5ec: ffff ffff    	<unknown>
 800e5f0: ffff ffff    	<unknown>
 800e5f4: ffff ffff    	<unknown>
 800e5f8: ffff ffff    	<unknown>
 800e5fc: ffff ffff    	<unknown>
 800e600: ffff ffff    	<unknown>
 800e604: ffff ffff    	<unknown>
 800e608: ffff ffff    	<unknown>
 800e60c: ffff ffff    	<unknown>
 800e610: ffff ffff    	<unknown>
 800e614: ffff ffff    	<unknown>
 800e618: ffff ffff    	<unknown>
 800e61c: ffff ffff    	<unknown>
 800e620: ffff ffff    	<unknown>
 800e624: ffff ffff    	<unknown>
 800e628: ffff ffff    	<unknown>
 800e62c: ffff ffff    	<unknown>
 800e630: ffff ffff    	<unknown>
 800e634: ffff ffff    	<unknown>
 800e638: ffff ffff    	<unknown>
 800e63c: ffff ffff    	<unknown>
 800e640: ffff ffff    	<unknown>
 800e644: ffff ffff    	<unknown>
 800e648: ffff ffff    	<unknown>
 800e64c: ffff ffff    	<unknown>
 800e650: ffff ffff    	<unknown>
 800e654: ffff ffff    	<unknown>
 800e658: ffff ffff    	<unknown>
 800e65c: ffff ffff    	<unknown>
 800e660: ffff ffff    	<unknown>
 800e664: ffff ffff    	<unknown>
 800e668: ffff ffff    	<unknown>
 800e66c: ffff ffff    	<unknown>
 800e670: ffff ffff    	<unknown>
 800e674: ffff ffff    	<unknown>
 800e678: ffff ffff    	<unknown>
 800e67c: ffff ffff    	<unknown>
 800e680: ffff ffff    	<unknown>
 800e684: ffff ffff    	<unknown>
 800e688: ffff ffff    	<unknown>
 800e68c: ffff ffff    	<unknown>
 800e690: ffff ffff    	<unknown>
 800e694: ffff ffff    	<unknown>
 800e698: ffff ffff    	<unknown>
 800e69c: ffff ffff    	<unknown>
 800e6a0: ffff ffff    	<unknown>
 800e6a4: ffff ffff    	<unknown>
 800e6a8: ffff ffff    	<unknown>
 800e6ac: ffff ffff    	<unknown>
 800e6b0: ffff ffff    	<unknown>
 800e6b4: ffff ffff    	<unknown>
 800e6b8: ffff ffff    	<unknown>
 800e6bc: ffff ffff    	<unknown>
 800e6c0: ffff ffff    	<unknown>
 800e6c4: ffff ffff    	<unknown>
 800e6c8: ffff ffff    	<unknown>
 800e6cc: ffff ffff    	<unknown>
 800e6d0: ffff ffff    	<unknown>
 800e6d4: ffff ffff    	<unknown>
 800e6d8: ffff ffff    	<unknown>
 800e6dc: ffff ffff    	<unknown>
 800e6e0: ffff ffff    	<unknown>
 800e6e4: ffff ffff    	<unknown>
 800e6e8: ffff ffff    	<unknown>
 800e6ec: ffff ffff    	<unknown>
 800e6f0: ffff ffff    	<unknown>
 800e6f4: ffff ffff    	<unknown>
 800e6f8: ffff ffff    	<unknown>
 800e6fc: ffff ffff    	<unknown>
 800e700: ffff ffff    	<unknown>
 800e704: ffff ffff    	<unknown>
 800e708: ffff ffff    	<unknown>
 800e70c: ffff ffff    	<unknown>
 800e710: ffff ffff    	<unknown>
 800e714: ffff ffff    	<unknown>
 800e718: ffff ffff    	<unknown>
 800e71c: ffff ffff    	<unknown>
 800e720: ffff ffff    	<unknown>
 800e724: ffff ffff    	<unknown>
 800e728: ffff ffff    	<unknown>
 800e72c: ffff ffff    	<unknown>
 800e730: ffff ffff    	<unknown>
 800e734: ffff ffff    	<unknown>
 800e738: ffff ffff    	<unknown>
 800e73c: ffff ffff    	<unknown>
 800e740: ffff ffff    	<unknown>
 800e744: ffff ffff    	<unknown>
 800e748: ffff ffff    	<unknown>
 800e74c: ffff ffff    	<unknown>
 800e750: ffff ffff    	<unknown>
 800e754: ffff ffff    	<unknown>
 800e758: ffff ffff    	<unknown>
 800e75c: ffff ffff    	<unknown>
 800e760: ffff ffff    	<unknown>
 800e764: ffff ffff    	<unknown>
 800e768: ffff ffff    	<unknown>
 800e76c: ffff ffff    	<unknown>
 800e770: ffff ffff    	<unknown>
 800e774: ffff ffff    	<unknown>
 800e778: ffff ffff    	<unknown>
 800e77c: ffff ffff    	<unknown>
 800e780: ffff ffff    	<unknown>
 800e784: ffff ffff    	<unknown>
 800e788: ffff ffff    	<unknown>
 800e78c: ffff ffff    	<unknown>
 800e790: ffff ffff    	<unknown>
 800e794: ffff ffff    	<unknown>
 800e798: ffff ffff    	<unknown>
 800e79c: ffff ffff    	<unknown>
 800e7a0: ffff ffff    	<unknown>
 800e7a4: ffff ffff    	<unknown>
 800e7a8: ffff ffff    	<unknown>
 800e7ac: ffff ffff    	<unknown>
 800e7b0: ffff ffff    	<unknown>
 800e7b4: ffff ffff    	<unknown>
 800e7b8: ffff ffff    	<unknown>
 800e7bc: ffff ffff    	<unknown>
 800e7c0: ffff ffff    	<unknown>
 800e7c4: ffff ffff    	<unknown>
 800e7c8: ffff ffff    	<unknown>
 800e7cc: ffff ffff    	<unknown>
 800e7d0: ffff ffff    	<unknown>
 800e7d4: ffff ffff    	<unknown>
 800e7d8: ffff ffff    	<unknown>
 800e7dc: ffff ffff    	<unknown>
 800e7e0: ffff ffff    	<unknown>
 800e7e4: ffff ffff    	<unknown>
 800e7e8: ffff ffff    	<unknown>
 800e7ec: ffff ffff    	<unknown>
 800e7f0: ffff ffff    	<unknown>
 800e7f4: ffff ffff    	<unknown>
 800e7f8: ffff ffff    	<unknown>
 800e7fc: ffff ffff    	<unknown>
 800e800: ffff ffff    	<unknown>
 800e804: ffff ffff    	<unknown>
 800e808: ffff ffff    	<unknown>
 800e80c: ffff ffff    	<unknown>
 800e810: ffff ffff    	<unknown>
 800e814: ffff ffff    	<unknown>
 800e818: ffff ffff    	<unknown>
 800e81c: ffff ffff    	<unknown>
 800e820: ffff ffff    	<unknown>
 800e824: ffff ffff    	<unknown>
 800e828: ffff ffff    	<unknown>
 800e82c: ffff ffff    	<unknown>
 800e830: ffff ffff    	<unknown>
 800e834: ffff ffff    	<unknown>
 800e838: ffff ffff    	<unknown>
 800e83c: ffff ffff    	<unknown>
 800e840: ffff ffff    	<unknown>
 800e844: ffff ffff    	<unknown>
 800e848: ffff ffff    	<unknown>
 800e84c: ffff ffff    	<unknown>
 800e850: ffff ffff    	<unknown>
 800e854: ffff ffff    	<unknown>
 800e858: ffff ffff    	<unknown>
 800e85c: ffff ffff    	<unknown>
 800e860: ffff ffff    	<unknown>
 800e864: ffff ffff    	<unknown>
 800e868: ffff ffff    	<unknown>
 800e86c: ffff ffff    	<unknown>
 800e870: ffff ffff    	<unknown>
 800e874: ffff ffff    	<unknown>
 800e878: ffff ffff    	<unknown>
 800e87c: ffff ffff    	<unknown>
 800e880: ffff ffff    	<unknown>
 800e884: ffff ffff    	<unknown>
 800e888: ffff ffff    	<unknown>
 800e88c: ffff ffff    	<unknown>
 800e890: ffff ffff    	<unknown>
 800e894: ffff ffff    	<unknown>
 800e898: ffff ffff    	<unknown>
 800e89c: ffff ffff    	<unknown>
 800e8a0: ffff ffff    	<unknown>
 800e8a4: ffff ffff    	<unknown>
 800e8a8: ffff ffff    	<unknown>
 800e8ac: ffff ffff    	<unknown>
 800e8b0: ffff ffff    	<unknown>
 800e8b4: ffff ffff    	<unknown>
 800e8b8: ffff ffff    	<unknown>
 800e8bc: ffff ffff    	<unknown>
 800e8c0: ffff ffff    	<unknown>
 800e8c4: ffff ffff    	<unknown>
 800e8c8: ffff ffff    	<unknown>
 800e8cc: ffff ffff    	<unknown>
 800e8d0: ffff ffff    	<unknown>
 800e8d4: ffff ffff    	<unknown>
 800e8d8: ffff ffff    	<unknown>
 800e8dc: ffff ffff    	<unknown>
 800e8e0: ffff ffff    	<unknown>
 800e8e4: ffff ffff    	<unknown>
 800e8e8: ffff ffff    	<unknown>
 800e8ec: ffff ffff    	<unknown>
 800e8f0: ffff ffff    	<unknown>
 800e8f4: ffff ffff    	<unknown>
 800e8f8: ffff ffff    	<unknown>
 800e8fc: ffff ffff    	<unknown>
 800e900: ffff ffff    	<unknown>
 800e904: ffff ffff    	<unknown>
 800e908: ffff ffff    	<unknown>
 800e90c: ffff ffff    	<unknown>
 800e910: ffff ffff    	<unknown>
 800e914: ffff ffff    	<unknown>
 800e918: ffff ffff    	<unknown>
 800e91c: ffff ffff    	<unknown>
 800e920: ffff ffff    	<unknown>
 800e924: ffff ffff    	<unknown>
 800e928: ffff ffff    	<unknown>
 800e92c: ffff ffff    	<unknown>
 800e930: ffff ffff    	<unknown>
 800e934: ffff ffff    	<unknown>
 800e938: ffff ffff    	<unknown>
 800e93c: ffff ffff    	<unknown>
 800e940: ffff ffff    	<unknown>
 800e944: ffff ffff    	<unknown>
 800e948: ffff ffff    	<unknown>
 800e94c: ffff ffff    	<unknown>
 800e950: ffff ffff    	<unknown>
 800e954: ffff ffff    	<unknown>
 800e958: ffff ffff    	<unknown>
 800e95c: ffff ffff    	<unknown>
 800e960: ffff ffff    	<unknown>
 800e964: ffff ffff    	<unknown>
 800e968: ffff ffff    	<unknown>
 800e96c: ffff ffff    	<unknown>
 800e970: ffff ffff    	<unknown>
 800e974: ffff ffff    	<unknown>
 800e978: ffff ffff    	<unknown>
 800e97c: ffff ffff    	<unknown>
 800e980: ffff ffff    	<unknown>
 800e984: ffff ffff    	<unknown>
 800e988: ffff ffff    	<unknown>
 800e98c: ffff ffff    	<unknown>
 800e990: ffff ffff    	<unknown>
 800e994: ffff ffff    	<unknown>
 800e998: ffff ffff    	<unknown>
 800e99c: ffff ffff    	<unknown>
 800e9a0: ffff ffff    	<unknown>
 800e9a4: ffff ffff    	<unknown>
 800e9a8: ffff ffff    	<unknown>
 800e9ac: ffff ffff    	<unknown>
 800e9b0: ffff ffff    	<unknown>
 800e9b4: ffff ffff    	<unknown>
 800e9b8: ffff ffff    	<unknown>
 800e9bc: ffff ffff    	<unknown>
 800e9c0: ffff ffff    	<unknown>
 800e9c4: ffff ffff    	<unknown>
 800e9c8: ffff ffff    	<unknown>
 800e9cc: ffff ffff    	<unknown>
 800e9d0: ffff ffff    	<unknown>
 800e9d4: ffff ffff    	<unknown>
 800e9d8: ffff ffff    	<unknown>
 800e9dc: ffff ffff    	<unknown>
 800e9e0: ffff ffff    	<unknown>
 800e9e4: ffff ffff    	<unknown>
 800e9e8: ffff ffff    	<unknown>
 800e9ec: ffff ffff    	<unknown>
 800e9f0: ffff ffff    	<unknown>
 800e9f4: ffff ffff    	<unknown>
 800e9f8: ffff ffff    	<unknown>
 800e9fc: ffff ffff    	<unknown>
 800ea00: ffff ffff    	<unknown>
 800ea04: ffff ffff    	<unknown>
 800ea08: ffff ffff    	<unknown>
 800ea0c: ffff ffff    	<unknown>
 800ea10: ffff ffff    	<unknown>
 800ea14: ffff ffff    	<unknown>
 800ea18: ffff ffff    	<unknown>
 800ea1c: ffff ffff    	<unknown>
 800ea20: ffff ffff    	<unknown>
 800ea24: ffff ffff    	<unknown>
 800ea28: ffff ffff    	<unknown>
 800ea2c: ffff ffff    	<unknown>
 800ea30: ffff ffff    	<unknown>
 800ea34: ffff ffff    	<unknown>
 800ea38: ffff ffff    	<unknown>
 800ea3c: ffff ffff    	<unknown>
 800ea40: ffff ffff    	<unknown>
 800ea44: ffff ffff    	<unknown>
 800ea48: ffff ffff    	<unknown>
 800ea4c: ffff ffff    	<unknown>
 800ea50: ffff ffff    	<unknown>
 800ea54: ffff ffff    	<unknown>
 800ea58: ffff ffff    	<unknown>
 800ea5c: ffff ffff    	<unknown>
 800ea60: ffff ffff    	<unknown>
 800ea64: ffff ffff    	<unknown>
 800ea68: ffff ffff    	<unknown>
 800ea6c: ffff ffff    	<unknown>
 800ea70: ffff ffff    	<unknown>
 800ea74: ffff ffff    	<unknown>
 800ea78: ffff ffff    	<unknown>
 800ea7c: ffff ffff    	<unknown>
 800ea80: ffff ffff    	<unknown>
 800ea84: ffff ffff    	<unknown>
 800ea88: ffff ffff    	<unknown>
 800ea8c: ffff ffff    	<unknown>
 800ea90: ffff ffff    	<unknown>
 800ea94: ffff ffff    	<unknown>
 800ea98: ffff ffff    	<unknown>
 800ea9c: ffff ffff    	<unknown>
 800eaa0: ffff ffff    	<unknown>
 800eaa4: ffff ffff    	<unknown>
 800eaa8: ffff ffff    	<unknown>
 800eaac: ffff ffff    	<unknown>
 800eab0: ffff ffff    	<unknown>
 800eab4: ffff ffff    	<unknown>
 800eab8: ffff ffff    	<unknown>
 800eabc: ffff ffff    	<unknown>
 800eac0: ffff ffff    	<unknown>
 800eac4: ffff ffff    	<unknown>
 800eac8: ffff ffff    	<unknown>
 800eacc: ffff ffff    	<unknown>
 800ead0: ffff ffff    	<unknown>
 800ead4: ffff ffff    	<unknown>
 800ead8: ffff ffff    	<unknown>
 800eadc: ffff ffff    	<unknown>
 800eae0: ffff ffff    	<unknown>
 800eae4: ffff ffff    	<unknown>
 800eae8: ffff ffff    	<unknown>
 800eaec: ffff ffff    	<unknown>
 800eaf0: ffff ffff    	<unknown>
 800eaf4: ffff ffff    	<unknown>
 800eaf8: ffff ffff    	<unknown>
 800eafc: ffff ffff    	<unknown>
 800eb00: ffff ffff    	<unknown>
 800eb04: ffff ffff    	<unknown>
 800eb08: ffff ffff    	<unknown>
 800eb0c: ffff ffff    	<unknown>
 800eb10: ffff ffff    	<unknown>
 800eb14: ffff ffff    	<unknown>
 800eb18: ffff ffff    	<unknown>
 800eb1c: ffff ffff    	<unknown>
 800eb20: ffff ffff    	<unknown>
 800eb24: ffff ffff    	<unknown>
 800eb28: ffff ffff    	<unknown>
 800eb2c: ffff ffff    	<unknown>
 800eb30: ffff ffff    	<unknown>
 800eb34: ffff ffff    	<unknown>
 800eb38: ffff ffff    	<unknown>
 800eb3c: ffff ffff    	<unknown>
 800eb40: ffff ffff    	<unknown>
 800eb44: ffff ffff    	<unknown>
 800eb48: ffff ffff    	<unknown>
 800eb4c: ffff ffff    	<unknown>
 800eb50: ffff ffff    	<unknown>
 800eb54: ffff ffff    	<unknown>
 800eb58: ffff ffff    	<unknown>
 800eb5c: ffff ffff    	<unknown>
 800eb60: ffff ffff    	<unknown>
 800eb64: ffff ffff    	<unknown>
 800eb68: ffff ffff    	<unknown>
 800eb6c: ffff ffff    	<unknown>
 800eb70: ffff ffff    	<unknown>
 800eb74: ffff ffff    	<unknown>
 800eb78: ffff ffff    	<unknown>
 800eb7c: ffff ffff    	<unknown>
 800eb80: ffff ffff    	<unknown>
 800eb84: ffff ffff    	<unknown>
 800eb88: ffff ffff    	<unknown>
 800eb8c: ffff ffff    	<unknown>
 800eb90: ffff ffff    	<unknown>
 800eb94: ffff ffff    	<unknown>
 800eb98: ffff ffff    	<unknown>
 800eb9c: ffff ffff    	<unknown>
 800eba0: ffff ffff    	<unknown>
 800eba4: ffff ffff    	<unknown>
 800eba8: ffff ffff    	<unknown>
 800ebac: ffff ffff    	<unknown>
 800ebb0: ffff ffff    	<unknown>
 800ebb4: ffff ffff    	<unknown>
 800ebb8: ffff ffff    	<unknown>
 800ebbc: ffff ffff    	<unknown>
 800ebc0: ffff ffff    	<unknown>
 800ebc4: ffff ffff    	<unknown>
 800ebc8: ffff ffff    	<unknown>
 800ebcc: ffff ffff    	<unknown>
 800ebd0: ffff ffff    	<unknown>
 800ebd4: ffff ffff    	<unknown>
 800ebd8: ffff ffff    	<unknown>
 800ebdc: ffff ffff    	<unknown>
 800ebe0: ffff ffff    	<unknown>
 800ebe4: ffff ffff    	<unknown>
 800ebe8: ffff ffff    	<unknown>
 800ebec: ffff ffff    	<unknown>
 800ebf0: ffff ffff    	<unknown>
 800ebf4: ffff ffff    	<unknown>
 800ebf8: ffff ffff    	<unknown>
 800ebfc: ffff ffff    	<unknown>
 800ec00: ffff ffff    	<unknown>
 800ec04: ffff ffff    	<unknown>
 800ec08: ffff ffff    	<unknown>
 800ec0c: ffff ffff    	<unknown>
 800ec10: ffff ffff    	<unknown>
 800ec14: ffff ffff    	<unknown>
 800ec18: ffff ffff    	<unknown>
 800ec1c: ffff ffff    	<unknown>
 800ec20: ffff ffff    	<unknown>
 800ec24: ffff ffff    	<unknown>
 800ec28: ffff ffff    	<unknown>
 800ec2c: ffff ffff    	<unknown>
 800ec30: ffff ffff    	<unknown>
 800ec34: ffff ffff    	<unknown>
 800ec38: ffff ffff    	<unknown>
 800ec3c: ffff ffff    	<unknown>
 800ec40: ffff ffff    	<unknown>
 800ec44: ffff ffff    	<unknown>
 800ec48: ffff ffff    	<unknown>
 800ec4c: ffff ffff    	<unknown>
 800ec50: ffff ffff    	<unknown>
 800ec54: ffff ffff    	<unknown>
 800ec58: ffff ffff    	<unknown>
 800ec5c: ffff ffff    	<unknown>
 800ec60: ffff ffff    	<unknown>
 800ec64: ffff ffff    	<unknown>
 800ec68: ffff ffff    	<unknown>
 800ec6c: ffff ffff    	<unknown>
 800ec70: ffff ffff    	<unknown>
 800ec74: ffff ffff    	<unknown>
 800ec78: ffff ffff    	<unknown>
 800ec7c: ffff ffff    	<unknown>
 800ec80: ffff ffff    	<unknown>
 800ec84: ffff ffff    	<unknown>
 800ec88: ffff ffff    	<unknown>
 800ec8c: ffff ffff    	<unknown>
 800ec90: ffff ffff    	<unknown>
 800ec94: ffff ffff    	<unknown>
 800ec98: ffff ffff    	<unknown>
 800ec9c: ffff ffff    	<unknown>
 800eca0: ffff ffff    	<unknown>
 800eca4: ffff ffff    	<unknown>
 800eca8: ffff ffff    	<unknown>
 800ecac: ffff ffff    	<unknown>
 800ecb0: ffff ffff    	<unknown>
 800ecb4: ffff ffff    	<unknown>
 800ecb8: ffff ffff    	<unknown>
 800ecbc: ffff ffff    	<unknown>
 800ecc0: ffff ffff    	<unknown>
 800ecc4: ffff ffff    	<unknown>
 800ecc8: ffff ffff    	<unknown>
 800eccc: ffff ffff    	<unknown>
 800ecd0: ffff ffff    	<unknown>
 800ecd4: ffff ffff    	<unknown>
 800ecd8: ffff ffff    	<unknown>
 800ecdc: ffff ffff    	<unknown>
 800ece0: ffff ffff    	<unknown>
 800ece4: ffff ffff    	<unknown>
 800ece8: ffff ffff    	<unknown>
 800ecec: ffff ffff    	<unknown>
 800ecf0: ffff ffff    	<unknown>
 800ecf4: ffff ffff    	<unknown>
 800ecf8: ffff ffff    	<unknown>
 800ecfc: ffff ffff    	<unknown>
 800ed00: ffff ffff    	<unknown>
 800ed04: ffff ffff    	<unknown>
 800ed08: ffff ffff    	<unknown>
 800ed0c: ffff ffff    	<unknown>
 800ed10: ffff ffff    	<unknown>
 800ed14: ffff ffff    	<unknown>
 800ed18: ffff ffff    	<unknown>
 800ed1c: ffff ffff    	<unknown>
 800ed20: ffff ffff    	<unknown>
 800ed24: ffff ffff    	<unknown>
 800ed28: ffff ffff    	<unknown>
 800ed2c: ffff ffff    	<unknown>
 800ed30: ffff ffff    	<unknown>
 800ed34: ffff ffff    	<unknown>
 800ed38: ffff ffff    	<unknown>
 800ed3c: ffff ffff    	<unknown>
 800ed40: ffff ffff    	<unknown>
 800ed44: ffff ffff    	<unknown>
 800ed48: ffff ffff    	<unknown>
 800ed4c: ffff ffff    	<unknown>
 800ed50: ffff ffff    	<unknown>
 800ed54: ffff ffff    	<unknown>
 800ed58: ffff ffff    	<unknown>
 800ed5c: ffff ffff    	<unknown>
 800ed60: ffff ffff    	<unknown>
 800ed64: ffff ffff    	<unknown>
 800ed68: ffff ffff    	<unknown>
 800ed6c: ffff ffff    	<unknown>
 800ed70: ffff ffff    	<unknown>
 800ed74: ffff ffff    	<unknown>
 800ed78: ffff ffff    	<unknown>
 800ed7c: ffff ffff    	<unknown>
 800ed80: ffff ffff    	<unknown>
 800ed84: ffff ffff    	<unknown>
 800ed88: ffff ffff    	<unknown>
 800ed8c: ffff ffff    	<unknown>
 800ed90: ffff ffff    	<unknown>
 800ed94: ffff ffff    	<unknown>
 800ed98: ffff ffff    	<unknown>
 800ed9c: ffff ffff    	<unknown>
 800eda0: ffff ffff    	<unknown>
 800eda4: ffff ffff    	<unknown>
 800eda8: ffff ffff    	<unknown>
 800edac: ffff ffff    	<unknown>
 800edb0: ffff ffff    	<unknown>
 800edb4: ffff ffff    	<unknown>
 800edb8: ffff ffff    	<unknown>
 800edbc: ffff ffff    	<unknown>
 800edc0: ffff ffff    	<unknown>
 800edc4: ffff ffff    	<unknown>
 800edc8: ffff ffff    	<unknown>
 800edcc: ffff ffff    	<unknown>
 800edd0: ffff ffff    	<unknown>
 800edd4: ffff ffff    	<unknown>
 800edd8: ffff ffff    	<unknown>
 800eddc: ffff ffff    	<unknown>
 800ede0: ffff ffff    	<unknown>
 800ede4: ffff ffff    	<unknown>
 800ede8: ffff ffff    	<unknown>
 800edec: ffff ffff    	<unknown>
 800edf0: ffff ffff    	<unknown>
 800edf4: ffff ffff    	<unknown>
 800edf8: ffff ffff    	<unknown>
 800edfc: ffff ffff    	<unknown>
 800ee00: ffff ffff    	<unknown>
 800ee04: ffff ffff    	<unknown>
 800ee08: ffff ffff    	<unknown>
 800ee0c: ffff ffff    	<unknown>
 800ee10: ffff ffff    	<unknown>
 800ee14: ffff ffff    	<unknown>
 800ee18: ffff ffff    	<unknown>
 800ee1c: ffff ffff    	<unknown>
 800ee20: ffff ffff    	<unknown>
 800ee24: ffff ffff    	<unknown>
 800ee28: ffff ffff    	<unknown>
 800ee2c: ffff ffff    	<unknown>
 800ee30: ffff ffff    	<unknown>
 800ee34: ffff ffff    	<unknown>
 800ee38: ffff ffff    	<unknown>
 800ee3c: ffff ffff    	<unknown>
 800ee40: ffff ffff    	<unknown>
 800ee44: ffff ffff    	<unknown>
 800ee48: ffff ffff    	<unknown>
 800ee4c: ffff ffff    	<unknown>
 800ee50: ffff ffff    	<unknown>
 800ee54: ffff ffff    	<unknown>
 800ee58: ffff ffff    	<unknown>
 800ee5c: ffff ffff    	<unknown>
 800ee60: ffff ffff    	<unknown>
 800ee64: ffff ffff    	<unknown>
 800ee68: ffff ffff    	<unknown>
 800ee6c: ffff ffff    	<unknown>
 800ee70: ffff ffff    	<unknown>
 800ee74: ffff ffff    	<unknown>
 800ee78: ffff ffff    	<unknown>
 800ee7c: ffff ffff    	<unknown>
 800ee80: ffff ffff    	<unknown>
 800ee84: ffff ffff    	<unknown>
 800ee88: ffff ffff    	<unknown>
 800ee8c: ffff ffff    	<unknown>
 800ee90: ffff ffff    	<unknown>
 800ee94: ffff ffff    	<unknown>
 800ee98: ffff ffff    	<unknown>
 800ee9c: ffff ffff    	<unknown>
 800eea0: ffff ffff    	<unknown>
 800eea4: ffff ffff    	<unknown>
 800eea8: ffff ffff    	<unknown>
 800eeac: ffff ffff    	<unknown>
 800eeb0: ffff ffff    	<unknown>
 800eeb4: ffff ffff    	<unknown>
 800eeb8: ffff ffff    	<unknown>
 800eebc: ffff ffff    	<unknown>
 800eec0: ffff ffff    	<unknown>
 800eec4: ffff ffff    	<unknown>
 800eec8: ffff ffff    	<unknown>
 800eecc: ffff ffff    	<unknown>
 800eed0: ffff ffff    	<unknown>
 800eed4: ffff ffff    	<unknown>
 800eed8: ffff ffff    	<unknown>
 800eedc: ffff ffff    	<unknown>
 800eee0: ffff ffff    	<unknown>
 800eee4: ffff ffff    	<unknown>
 800eee8: ffff ffff    	<unknown>
 800eeec: ffff ffff    	<unknown>
 800eef0: ffff ffff    	<unknown>
 800eef4: ffff ffff    	<unknown>
 800eef8: ffff ffff    	<unknown>
 800eefc: ffff ffff    	<unknown>
 800ef00: ffff ffff    	<unknown>
 800ef04: ffff ffff    	<unknown>
 800ef08: ffff ffff    	<unknown>
 800ef0c: ffff ffff    	<unknown>
 800ef10: ffff ffff    	<unknown>
 800ef14: ffff ffff    	<unknown>
 800ef18: ffff ffff    	<unknown>
 800ef1c: ffff ffff    	<unknown>
 800ef20: ffff ffff    	<unknown>
 800ef24: ffff ffff    	<unknown>
 800ef28: ffff ffff    	<unknown>
 800ef2c: ffff ffff    	<unknown>
 800ef30: ffff ffff    	<unknown>
 800ef34: ffff ffff    	<unknown>
 800ef38: ffff ffff    	<unknown>
 800ef3c: ffff ffff    	<unknown>
 800ef40: ffff ffff    	<unknown>
 800ef44: ffff ffff    	<unknown>
 800ef48: ffff ffff    	<unknown>
 800ef4c: ffff ffff    	<unknown>
 800ef50: ffff ffff    	<unknown>
 800ef54: ffff ffff    	<unknown>
 800ef58: ffff ffff    	<unknown>
 800ef5c: ffff ffff    	<unknown>
 800ef60: ffff ffff    	<unknown>
 800ef64: ffff ffff    	<unknown>
 800ef68: ffff ffff    	<unknown>
 800ef6c: ffff ffff    	<unknown>
 800ef70: ffff ffff    	<unknown>
 800ef74: ffff ffff    	<unknown>
 800ef78: ffff ffff    	<unknown>
 800ef7c: ffff ffff    	<unknown>
 800ef80: ffff ffff    	<unknown>
 800ef84: ffff ffff    	<unknown>
 800ef88: ffff ffff    	<unknown>
 800ef8c: ffff ffff    	<unknown>
 800ef90: ffff ffff    	<unknown>
 800ef94: ffff ffff    	<unknown>
 800ef98: ffff ffff    	<unknown>
 800ef9c: ffff ffff    	<unknown>
 800efa0: ffff ffff    	<unknown>
 800efa4: ffff ffff    	<unknown>
 800efa8: ffff ffff    	<unknown>
 800efac: ffff ffff    	<unknown>
 800efb0: ffff ffff    	<unknown>
 800efb4: ffff ffff    	<unknown>
 800efb8: ffff ffff    	<unknown>
 800efbc: ffff ffff    	<unknown>
 800efc0: ffff ffff    	<unknown>
 800efc4: ffff ffff    	<unknown>
 800efc8: ffff ffff    	<unknown>
 800efcc: ffff ffff    	<unknown>
 800efd0: ffff ffff    	<unknown>
 800efd4: ffff ffff    	<unknown>
 800efd8: ffff ffff    	<unknown>
 800efdc: ffff ffff    	<unknown>
 800efe0: ffff ffff    	<unknown>
 800efe4: ffff ffff    	<unknown>
 800efe8: ffff ffff    	<unknown>
 800efec: ffff ffff    	<unknown>
 800eff0: ffff ffff    	<unknown>
 800eff4: ffff ffff    	<unknown>
 800eff8: ffff ffff    	<unknown>
 800effc: ffff ffff    	<unknown>
 800f000: ffff ffff    	<unknown>
 800f004: ffff ffff    	<unknown>
 800f008: ffff ffff    	<unknown>
 800f00c: ffff ffff    	<unknown>
 800f010: ffff ffff    	<unknown>
 800f014: ffff ffff    	<unknown>
 800f018: ffff ffff    	<unknown>
 800f01c: ffff ffff    	<unknown>
 800f020: ffff ffff    	<unknown>
 800f024: ffff ffff    	<unknown>
 800f028: ffff ffff    	<unknown>
 800f02c: ffff ffff    	<unknown>
 800f030: ffff ffff    	<unknown>
 800f034: ffff ffff    	<unknown>
 800f038: ffff ffff    	<unknown>
 800f03c: ffff ffff    	<unknown>
 800f040: ffff ffff    	<unknown>
 800f044: ffff ffff    	<unknown>
 800f048: ffff ffff    	<unknown>
 800f04c: ffff ffff    	<unknown>
 800f050: ffff ffff    	<unknown>
 800f054: ffff ffff    	<unknown>
 800f058: ffff ffff    	<unknown>
 800f05c: ffff ffff    	<unknown>
 800f060: ffff ffff    	<unknown>
 800f064: ffff ffff    	<unknown>
 800f068: ffff ffff    	<unknown>
 800f06c: ffff ffff    	<unknown>
 800f070: ffff ffff    	<unknown>
 800f074: ffff ffff    	<unknown>
 800f078: ffff ffff    	<unknown>
 800f07c: ffff ffff    	<unknown>
 800f080: ffff ffff    	<unknown>
 800f084: ffff ffff    	<unknown>
 800f088: ffff ffff    	<unknown>
 800f08c: ffff ffff    	<unknown>
 800f090: ffff ffff    	<unknown>
 800f094: ffff ffff    	<unknown>
 800f098: ffff ffff    	<unknown>
 800f09c: ffff ffff    	<unknown>
 800f0a0: ffff ffff    	<unknown>
 800f0a4: ffff ffff    	<unknown>
 800f0a8: ffff ffff    	<unknown>
 800f0ac: ffff ffff    	<unknown>
 800f0b0: ffff ffff    	<unknown>
 800f0b4: ffff ffff    	<unknown>
 800f0b8: ffff ffff    	<unknown>
 800f0bc: ffff ffff    	<unknown>
 800f0c0: ffff ffff    	<unknown>
 800f0c4: ffff ffff    	<unknown>
 800f0c8: ffff ffff    	<unknown>
 800f0cc: ffff ffff    	<unknown>
 800f0d0: ffff ffff    	<unknown>
 800f0d4: ffff ffff    	<unknown>
 800f0d8: ffff ffff    	<unknown>
 800f0dc: ffff ffff    	<unknown>
 800f0e0: ffff ffff    	<unknown>
 800f0e4: ffff ffff    	<unknown>
 800f0e8: ffff ffff    	<unknown>
 800f0ec: ffff ffff    	<unknown>
 800f0f0: ffff ffff    	<unknown>
 800f0f4: ffff ffff    	<unknown>
 800f0f8: ffff ffff    	<unknown>
 800f0fc: ffff ffff    	<unknown>
 800f100: ffff ffff    	<unknown>
 800f104: ffff ffff    	<unknown>
 800f108: ffff ffff    	<unknown>
 800f10c: ffff ffff    	<unknown>
 800f110: ffff ffff    	<unknown>
 800f114: ffff ffff    	<unknown>
 800f118: ffff ffff    	<unknown>
 800f11c: ffff ffff    	<unknown>
 800f120: ffff ffff    	<unknown>
 800f124: ffff ffff    	<unknown>
 800f128: ffff ffff    	<unknown>
 800f12c: ffff ffff    	<unknown>
 800f130: ffff ffff    	<unknown>
 800f134: ffff ffff    	<unknown>
 800f138: ffff ffff    	<unknown>
 800f13c: ffff ffff    	<unknown>
 800f140: ffff ffff    	<unknown>
 800f144: ffff ffff    	<unknown>
 800f148: ffff ffff    	<unknown>
 800f14c: ffff ffff    	<unknown>
 800f150: ffff ffff    	<unknown>
 800f154: ffff ffff    	<unknown>
 800f158: ffff ffff    	<unknown>
 800f15c: ffff ffff    	<unknown>
 800f160: ffff ffff    	<unknown>
 800f164: ffff ffff    	<unknown>
 800f168: ffff ffff    	<unknown>
 800f16c: ffff ffff    	<unknown>
 800f170: ffff ffff    	<unknown>
 800f174: ffff ffff    	<unknown>
 800f178: ffff ffff    	<unknown>
 800f17c: ffff ffff    	<unknown>
 800f180: ffff ffff    	<unknown>
 800f184: ffff ffff    	<unknown>
 800f188: ffff ffff    	<unknown>
 800f18c: ffff ffff    	<unknown>
 800f190: ffff ffff    	<unknown>
 800f194: ffff ffff    	<unknown>
 800f198: ffff ffff    	<unknown>
 800f19c: ffff ffff    	<unknown>
 800f1a0: ffff ffff    	<unknown>
 800f1a4: ffff ffff    	<unknown>
 800f1a8: ffff ffff    	<unknown>
 800f1ac: ffff ffff    	<unknown>
 800f1b0: ffff ffff    	<unknown>
 800f1b4: ffff ffff    	<unknown>
 800f1b8: ffff ffff    	<unknown>
 800f1bc: ffff ffff    	<unknown>
 800f1c0: ffff ffff    	<unknown>
 800f1c4: ffff ffff    	<unknown>
 800f1c8: ffff ffff    	<unknown>
 800f1cc: ffff ffff    	<unknown>
 800f1d0: ffff ffff    	<unknown>
 800f1d4: ffff ffff    	<unknown>
 800f1d8: ffff ffff    	<unknown>
 800f1dc: ffff ffff    	<unknown>
 800f1e0: ffff ffff    	<unknown>
 800f1e4: ffff ffff    	<unknown>
 800f1e8: ffff ffff    	<unknown>
 800f1ec: ffff ffff    	<unknown>
 800f1f0: ffff ffff    	<unknown>
 800f1f4: ffff ffff    	<unknown>
 800f1f8: ffff ffff    	<unknown>
 800f1fc: ffff ffff    	<unknown>
 800f200: ffff ffff    	<unknown>
 800f204: ffff ffff    	<unknown>
 800f208: ffff ffff    	<unknown>
 800f20c: ffff ffff    	<unknown>
 800f210: ffff ffff    	<unknown>
 800f214: ffff ffff    	<unknown>
 800f218: ffff ffff    	<unknown>
 800f21c: ffff ffff    	<unknown>
 800f220: ffff ffff    	<unknown>
 800f224: ffff ffff    	<unknown>
 800f228: ffff ffff    	<unknown>
 800f22c: ffff ffff    	<unknown>
 800f230: ffff ffff    	<unknown>
 800f234: ffff ffff    	<unknown>
 800f238: ffff ffff    	<unknown>
 800f23c: ffff ffff    	<unknown>
 800f240: ffff ffff    	<unknown>
 800f244: ffff ffff    	<unknown>
 800f248: ffff ffff    	<unknown>
 800f24c: ffff ffff    	<unknown>
 800f250: ffff ffff    	<unknown>
 800f254: ffff ffff    	<unknown>
 800f258: ffff ffff    	<unknown>
 800f25c: ffff ffff    	<unknown>
 800f260: ffff ffff    	<unknown>
 800f264: ffff ffff    	<unknown>
 800f268: ffff ffff    	<unknown>
 800f26c: ffff ffff    	<unknown>
 800f270: ffff ffff    	<unknown>
 800f274: ffff ffff    	<unknown>
 800f278: ffff ffff    	<unknown>
 800f27c: ffff ffff    	<unknown>
 800f280: ffff ffff    	<unknown>
 800f284: ffff ffff    	<unknown>
 800f288: ffff ffff    	<unknown>
 800f28c: ffff ffff    	<unknown>
 800f290: ffff ffff    	<unknown>
 800f294: ffff ffff    	<unknown>
 800f298: ffff ffff    	<unknown>
 800f29c: ffff ffff    	<unknown>
 800f2a0: ffff ffff    	<unknown>
 800f2a4: ffff ffff    	<unknown>
 800f2a8: ffff ffff    	<unknown>
 800f2ac: ffff ffff    	<unknown>
 800f2b0: ffff ffff    	<unknown>
 800f2b4: ffff ffff    	<unknown>
 800f2b8: ffff ffff    	<unknown>
 800f2bc: ffff ffff    	<unknown>
 800f2c0: ffff ffff    	<unknown>
 800f2c4: ffff ffff    	<unknown>
 800f2c8: ffff ffff    	<unknown>
 800f2cc: ffff ffff    	<unknown>
 800f2d0: ffff ffff    	<unknown>
 800f2d4: ffff ffff    	<unknown>
 800f2d8: ffff ffff    	<unknown>
 800f2dc: ffff ffff    	<unknown>
 800f2e0: ffff ffff    	<unknown>
 800f2e4: ffff ffff    	<unknown>
 800f2e8: ffff ffff    	<unknown>
 800f2ec: ffff ffff    	<unknown>
 800f2f0: ffff ffff    	<unknown>
 800f2f4: ffff ffff    	<unknown>
 800f2f8: ffff ffff    	<unknown>
 800f2fc: ffff ffff    	<unknown>
 800f300: ffff ffff    	<unknown>
 800f304: ffff ffff    	<unknown>
 800f308: ffff ffff    	<unknown>
 800f30c: ffff ffff    	<unknown>
 800f310: ffff ffff    	<unknown>
 800f314: ffff ffff    	<unknown>
 800f318: ffff ffff    	<unknown>
 800f31c: ffff ffff    	<unknown>
 800f320: ffff ffff    	<unknown>
 800f324: ffff ffff    	<unknown>
 800f328: ffff ffff    	<unknown>
 800f32c: ffff ffff    	<unknown>
 800f330: ffff ffff    	<unknown>
 800f334: ffff ffff    	<unknown>
 800f338: ffff ffff    	<unknown>
 800f33c: ffff ffff    	<unknown>
 800f340: ffff ffff    	<unknown>
 800f344: ffff ffff    	<unknown>
 800f348: ffff ffff    	<unknown>
 800f34c: ffff ffff    	<unknown>
 800f350: ffff ffff    	<unknown>
 800f354: ffff ffff    	<unknown>
 800f358: ffff ffff    	<unknown>
 800f35c: ffff ffff    	<unknown>
 800f360: ffff ffff    	<unknown>
 800f364: ffff ffff    	<unknown>
 800f368: ffff ffff    	<unknown>
 800f36c: ffff ffff    	<unknown>
 800f370: ffff ffff    	<unknown>
 800f374: ffff ffff    	<unknown>
 800f378: ffff ffff    	<unknown>
 800f37c: ffff ffff    	<unknown>
 800f380: ffff ffff    	<unknown>
 800f384: ffff ffff    	<unknown>
 800f388: ffff ffff    	<unknown>
 800f38c: ffff ffff    	<unknown>
 800f390: ffff ffff    	<unknown>
 800f394: ffff ffff    	<unknown>
 800f398: ffff ffff    	<unknown>
 800f39c: ffff ffff    	<unknown>
 800f3a0: ffff ffff    	<unknown>
 800f3a4: ffff ffff    	<unknown>
 800f3a8: ffff ffff    	<unknown>
 800f3ac: ffff ffff    	<unknown>
 800f3b0: ffff ffff    	<unknown>
 800f3b4: ffff ffff    	<unknown>
 800f3b8: ffff ffff    	<unknown>
 800f3bc: ffff ffff    	<unknown>
 800f3c0: ffff ffff    	<unknown>
 800f3c4: ffff ffff    	<unknown>
 800f3c8: ffff ffff    	<unknown>
 800f3cc: ffff ffff    	<unknown>
 800f3d0: ffff ffff    	<unknown>
 800f3d4: ffff ffff    	<unknown>
 800f3d8: ffff ffff    	<unknown>
 800f3dc: ffff ffff    	<unknown>
 800f3e0: ffff ffff    	<unknown>
 800f3e4: ffff ffff    	<unknown>
 800f3e8: ffff ffff    	<unknown>
 800f3ec: ffff ffff    	<unknown>
 800f3f0: ffff ffff    	<unknown>
 800f3f4: ffff ffff    	<unknown>
 800f3f8: ffff ffff    	<unknown>
 800f3fc: ffff ffff    	<unknown>
 800f400: ffff ffff    	<unknown>
 800f404: ffff ffff    	<unknown>
 800f408: ffff ffff    	<unknown>
 800f40c: ffff ffff    	<unknown>
 800f410: ffff ffff    	<unknown>
 800f414: ffff ffff    	<unknown>
 800f418: ffff ffff    	<unknown>
 800f41c: ffff ffff    	<unknown>
 800f420: ffff ffff    	<unknown>
 800f424: ffff ffff    	<unknown>
 800f428: ffff ffff    	<unknown>
 800f42c: ffff ffff    	<unknown>
 800f430: ffff ffff    	<unknown>
 800f434: ffff ffff    	<unknown>
 800f438: ffff ffff    	<unknown>
 800f43c: ffff ffff    	<unknown>
 800f440: ffff ffff    	<unknown>
 800f444: ffff ffff    	<unknown>
 800f448: ffff ffff    	<unknown>
 800f44c: ffff ffff    	<unknown>
 800f450: ffff ffff    	<unknown>
 800f454: ffff ffff    	<unknown>
 800f458: ffff ffff    	<unknown>
 800f45c: ffff ffff    	<unknown>
 800f460: ffff ffff    	<unknown>
 800f464: ffff ffff    	<unknown>
 800f468: ffff ffff    	<unknown>
 800f46c: ffff ffff    	<unknown>
 800f470: ffff ffff    	<unknown>
 800f474: ffff ffff    	<unknown>
 800f478: ffff ffff    	<unknown>
 800f47c: ffff ffff    	<unknown>
 800f480: ffff ffff    	<unknown>
 800f484: ffff ffff    	<unknown>
 800f488: ffff ffff    	<unknown>
 800f48c: ffff ffff    	<unknown>
 800f490: ffff ffff    	<unknown>
 800f494: ffff ffff    	<unknown>
 800f498: ffff ffff    	<unknown>
 800f49c: ffff ffff    	<unknown>
 800f4a0: ffff ffff    	<unknown>
 800f4a4: ffff ffff    	<unknown>
 800f4a8: ffff ffff    	<unknown>
 800f4ac: ffff ffff    	<unknown>
 800f4b0: ffff ffff    	<unknown>
 800f4b4: ffff ffff    	<unknown>
 800f4b8: ffff ffff    	<unknown>
 800f4bc: ffff ffff    	<unknown>
 800f4c0: ffff ffff    	<unknown>
 800f4c4: ffff ffff    	<unknown>
 800f4c8: ffff ffff    	<unknown>
 800f4cc: ffff ffff    	<unknown>
 800f4d0: ffff ffff    	<unknown>
 800f4d4: ffff ffff    	<unknown>
 800f4d8: ffff ffff    	<unknown>
 800f4dc: ffff ffff    	<unknown>
 800f4e0: ffff ffff    	<unknown>
 800f4e4: ffff ffff    	<unknown>
 800f4e8: ffff ffff    	<unknown>
 800f4ec: ffff ffff    	<unknown>
 800f4f0: ffff ffff    	<unknown>
 800f4f4: ffff ffff    	<unknown>
 800f4f8: ffff ffff    	<unknown>
 800f4fc: ffff ffff    	<unknown>
 800f500: ffff ffff    	<unknown>
 800f504: ffff ffff    	<unknown>
 800f508: ffff ffff    	<unknown>
 800f50c: ffff ffff    	<unknown>
 800f510: ffff ffff    	<unknown>
 800f514: ffff ffff    	<unknown>
 800f518: ffff ffff    	<unknown>
 800f51c: ffff ffff    	<unknown>
 800f520: ffff ffff    	<unknown>
 800f524: ffff ffff    	<unknown>
 800f528: ffff ffff    	<unknown>
 800f52c: ffff ffff    	<unknown>
 800f530: ffff ffff    	<unknown>
 800f534: ffff ffff    	<unknown>
 800f538: ffff ffff    	<unknown>
 800f53c: ffff ffff    	<unknown>
 800f540: ffff ffff    	<unknown>
 800f544: ffff ffff    	<unknown>
 800f548: ffff ffff    	<unknown>
 800f54c: ffff ffff    	<unknown>
 800f550: ffff ffff    	<unknown>
 800f554: ffff ffff    	<unknown>
 800f558: ffff ffff    	<unknown>
 800f55c: ffff ffff    	<unknown>
 800f560: ffff ffff    	<unknown>
 800f564: ffff ffff    	<unknown>
 800f568: ffff ffff    	<unknown>
 800f56c: ffff ffff    	<unknown>
 800f570: ffff ffff    	<unknown>
 800f574: ffff ffff    	<unknown>
 800f578: ffff ffff    	<unknown>
 800f57c: ffff ffff    	<unknown>
 800f580: ffff ffff    	<unknown>
 800f584: ffff ffff    	<unknown>
 800f588: ffff ffff    	<unknown>
 800f58c: ffff ffff    	<unknown>
 800f590: ffff ffff    	<unknown>
 800f594: ffff ffff    	<unknown>
 800f598: ffff ffff    	<unknown>
 800f59c: ffff ffff    	<unknown>
 800f5a0: ffff ffff    	<unknown>
 800f5a4: ffff ffff    	<unknown>
 800f5a8: ffff ffff    	<unknown>
 800f5ac: ffff ffff    	<unknown>
 800f5b0: ffff ffff    	<unknown>
 800f5b4: ffff ffff    	<unknown>
 800f5b8: ffff ffff    	<unknown>
 800f5bc: ffff ffff    	<unknown>
 800f5c0: ffff ffff    	<unknown>
 800f5c4: ffff ffff    	<unknown>
 800f5c8: ffff ffff    	<unknown>
 800f5cc: ffff ffff    	<unknown>
 800f5d0: ffff ffff    	<unknown>
 800f5d4: ffff ffff    	<unknown>
 800f5d8: ffff ffff    	<unknown>
 800f5dc: ffff ffff    	<unknown>
 800f5e0: ffff ffff    	<unknown>
 800f5e4: ffff ffff    	<unknown>
 800f5e8: ffff ffff    	<unknown>
 800f5ec: ffff ffff    	<unknown>
 800f5f0: ffff ffff    	<unknown>
 800f5f4: ffff ffff    	<unknown>
 800f5f8: ffff ffff    	<unknown>
 800f5fc: ffff ffff    	<unknown>
 800f600: ffff ffff    	<unknown>
 800f604: ffff ffff    	<unknown>
 800f608: ffff ffff    	<unknown>
 800f60c: ffff ffff    	<unknown>
 800f610: ffff ffff    	<unknown>
 800f614: ffff ffff    	<unknown>
 800f618: ffff ffff    	<unknown>
 800f61c: ffff ffff    	<unknown>
 800f620: ffff ffff    	<unknown>
 800f624: ffff ffff    	<unknown>
 800f628: ffff ffff    	<unknown>
 800f62c: ffff ffff    	<unknown>
 800f630: ffff ffff    	<unknown>
 800f634: ffff ffff    	<unknown>
 800f638: ffff ffff    	<unknown>
 800f63c: ffff ffff    	<unknown>
 800f640: ffff ffff    	<unknown>
 800f644: ffff ffff    	<unknown>
 800f648: ffff ffff    	<unknown>
 800f64c: ffff ffff    	<unknown>
 800f650: ffff ffff    	<unknown>
 800f654: ffff ffff    	<unknown>
 800f658: ffff ffff    	<unknown>
 800f65c: ffff ffff    	<unknown>
 800f660: ffff ffff    	<unknown>
 800f664: ffff ffff    	<unknown>
 800f668: ffff ffff    	<unknown>
 800f66c: ffff ffff    	<unknown>
 800f670: ffff ffff    	<unknown>
 800f674: ffff ffff    	<unknown>
 800f678: ffff ffff    	<unknown>
 800f67c: ffff ffff    	<unknown>
 800f680: ffff ffff    	<unknown>
 800f684: ffff ffff    	<unknown>
 800f688: ffff ffff    	<unknown>
 800f68c: ffff ffff    	<unknown>
 800f690: ffff ffff    	<unknown>
 800f694: ffff ffff    	<unknown>
 800f698: ffff ffff    	<unknown>
 800f69c: ffff ffff    	<unknown>
 800f6a0: ffff ffff    	<unknown>
 800f6a4: ffff ffff    	<unknown>
 800f6a8: ffff ffff    	<unknown>
 800f6ac: ffff ffff    	<unknown>
 800f6b0: ffff ffff    	<unknown>
 800f6b4: ffff ffff    	<unknown>
 800f6b8: ffff ffff    	<unknown>
 800f6bc: ffff ffff    	<unknown>
 800f6c0: ffff ffff    	<unknown>
 800f6c4: ffff ffff    	<unknown>
 800f6c8: ffff ffff    	<unknown>
 800f6cc: ffff ffff    	<unknown>
 800f6d0: ffff ffff    	<unknown>
 800f6d4: ffff ffff    	<unknown>
 800f6d8: ffff ffff    	<unknown>
 800f6dc: ffff ffff    	<unknown>
 800f6e0: ffff ffff    	<unknown>
 800f6e4: ffff ffff    	<unknown>
 800f6e8: ffff ffff    	<unknown>
 800f6ec: ffff ffff    	<unknown>
 800f6f0: ffff ffff    	<unknown>
 800f6f4: ffff ffff    	<unknown>
 800f6f8: ffff ffff    	<unknown>
 800f6fc: ffff ffff    	<unknown>
 800f700: ffff ffff    	<unknown>
 800f704: ffff ffff    	<unknown>
 800f708: ffff ffff    	<unknown>
 800f70c: ffff ffff    	<unknown>
 800f710: ffff ffff    	<unknown>
 800f714: ffff ffff    	<unknown>
 800f718: ffff ffff    	<unknown>
 800f71c: ffff ffff    	<unknown>
 800f720: ffff ffff    	<unknown>
 800f724: ffff ffff    	<unknown>
 800f728: ffff ffff    	<unknown>
 800f72c: ffff ffff    	<unknown>
 800f730: ffff ffff    	<unknown>
 800f734: ffff ffff    	<unknown>
 800f738: ffff ffff    	<unknown>
 800f73c: ffff ffff    	<unknown>
 800f740: ffff ffff    	<unknown>
 800f744: ffff ffff    	<unknown>
 800f748: ffff ffff    	<unknown>
 800f74c: ffff ffff    	<unknown>
 800f750: ffff ffff    	<unknown>
 800f754: ffff ffff    	<unknown>
 800f758: ffff ffff    	<unknown>
 800f75c: ffff ffff    	<unknown>
 800f760: ffff ffff    	<unknown>
 800f764: ffff ffff    	<unknown>
 800f768: ffff ffff    	<unknown>
 800f76c: ffff ffff    	<unknown>
 800f770: ffff ffff    	<unknown>
 800f774: ffff ffff    	<unknown>
 800f778: ffff ffff    	<unknown>
 800f77c: ffff ffff    	<unknown>
 800f780: ffff ffff    	<unknown>
 800f784: ffff ffff    	<unknown>
 800f788: ffff ffff    	<unknown>
 800f78c: ffff ffff    	<unknown>
 800f790: ffff ffff    	<unknown>
 800f794: ffff ffff    	<unknown>
 800f798: ffff ffff    	<unknown>
 800f79c: ffff ffff    	<unknown>
 800f7a0: ffff ffff    	<unknown>
 800f7a4: ffff ffff    	<unknown>
 800f7a8: ffff ffff    	<unknown>
 800f7ac: ffff ffff    	<unknown>
 800f7b0: ffff ffff    	<unknown>
 800f7b4: ffff ffff    	<unknown>
 800f7b8: ffff ffff    	<unknown>
 800f7bc: ffff ffff    	<unknown>
 800f7c0: ffff ffff    	<unknown>
 800f7c4: ffff ffff    	<unknown>
 800f7c8: ffff ffff    	<unknown>
 800f7cc: ffff ffff    	<unknown>
 800f7d0: ffff ffff    	<unknown>
 800f7d4: ffff ffff    	<unknown>
 800f7d8: ffff ffff    	<unknown>
 800f7dc: ffff ffff    	<unknown>
 800f7e0: ffff ffff    	<unknown>
 800f7e4: ffff ffff    	<unknown>
 800f7e8: ffff ffff    	<unknown>
 800f7ec: ffff ffff    	<unknown>
 800f7f0: ffff ffff    	<unknown>
 800f7f4: ffff ffff    	<unknown>
 800f7f8: ffff ffff    	<unknown>
 800f7fc: ffff ffff    	<unknown>
 800f800: ffff ffff    	<unknown>
 800f804: ffff ffff    	<unknown>
 800f808: ffff ffff    	<unknown>
 800f80c: ffff ffff    	<unknown>
 800f810: ffff ffff    	<unknown>
 800f814: ffff ffff    	<unknown>
 800f818: ffff ffff    	<unknown>
 800f81c: ffff ffff    	<unknown>
 800f820: ffff ffff    	<unknown>
 800f824: ffff ffff    	<unknown>
 800f828: ffff ffff    	<unknown>
 800f82c: ffff ffff    	<unknown>
 800f830: ffff ffff    	<unknown>
 800f834: ffff ffff    	<unknown>
 800f838: ffff ffff    	<unknown>
 800f83c: ffff ffff    	<unknown>
 800f840: ffff ffff    	<unknown>
 800f844: ffff ffff    	<unknown>
 800f848: ffff ffff    	<unknown>
 800f84c: ffff ffff    	<unknown>
 800f850: ffff ffff    	<unknown>
 800f854: ffff ffff    	<unknown>
 800f858: ffff ffff    	<unknown>
 800f85c: ffff ffff    	<unknown>
 800f860: ffff ffff    	<unknown>
 800f864: ffff ffff    	<unknown>
 800f868: ffff ffff    	<unknown>
 800f86c: ffff ffff    	<unknown>
 800f870: ffff ffff    	<unknown>
 800f874: ffff ffff    	<unknown>
 800f878: ffff ffff    	<unknown>
 800f87c: ffff ffff    	<unknown>
 800f880: ffff ffff    	<unknown>
 800f884: ffff ffff    	<unknown>
 800f888: ffff ffff    	<unknown>
 800f88c: ffff ffff    	<unknown>
 800f890: ffff ffff    	<unknown>
 800f894: ffff ffff    	<unknown>
 800f898: ffff ffff    	<unknown>
 800f89c: ffff ffff    	<unknown>
 800f8a0: ffff ffff    	<unknown>
 800f8a4: ffff ffff    	<unknown>
 800f8a8: ffff ffff    	<unknown>
 800f8ac: ffff ffff    	<unknown>
 800f8b0: ffff ffff    	<unknown>
 800f8b4: ffff ffff    	<unknown>
 800f8b8: ffff ffff    	<unknown>
 800f8bc: ffff ffff    	<unknown>
 800f8c0: ffff ffff    	<unknown>
 800f8c4: ffff ffff    	<unknown>
 800f8c8: ffff ffff    	<unknown>
 800f8cc: ffff ffff    	<unknown>
 800f8d0: ffff ffff    	<unknown>
 800f8d4: ffff ffff    	<unknown>
 800f8d8: ffff ffff    	<unknown>
 800f8dc: ffff ffff    	<unknown>
 800f8e0: ffff ffff    	<unknown>
 800f8e4: ffff ffff    	<unknown>
 800f8e8: ffff ffff    	<unknown>
 800f8ec: ffff ffff    	<unknown>
 800f8f0: ffff ffff    	<unknown>
 800f8f4: ffff ffff    	<unknown>
 800f8f8: ffff ffff    	<unknown>
 800f8fc: ffff ffff    	<unknown>
 800f900: ffff ffff    	<unknown>
 800f904: ffff ffff    	<unknown>
 800f908: ffff ffff    	<unknown>
 800f90c: ffff ffff    	<unknown>
 800f910: ffff ffff    	<unknown>
 800f914: ffff ffff    	<unknown>
 800f918: ffff ffff    	<unknown>
 800f91c: ffff ffff    	<unknown>
 800f920: ffff ffff    	<unknown>
 800f924: ffff ffff    	<unknown>
 800f928: ffff ffff    	<unknown>
 800f92c: ffff ffff    	<unknown>
 800f930: ffff ffff    	<unknown>
 800f934: ffff ffff    	<unknown>
 800f938: ffff ffff    	<unknown>
 800f93c: ffff ffff    	<unknown>
 800f940: ffff ffff    	<unknown>
 800f944: ffff ffff    	<unknown>
 800f948: ffff ffff    	<unknown>
 800f94c: ffff ffff    	<unknown>
 800f950: ffff ffff    	<unknown>
 800f954: ffff ffff    	<unknown>
 800f958: ffff ffff    	<unknown>
 800f95c: ffff ffff    	<unknown>
 800f960: ffff ffff    	<unknown>
 800f964: ffff ffff    	<unknown>
 800f968: ffff ffff    	<unknown>
 800f96c: ffff ffff    	<unknown>
 800f970: ffff ffff    	<unknown>
 800f974: ffff ffff    	<unknown>
 800f978: ffff ffff    	<unknown>
 800f97c: ffff ffff    	<unknown>
 800f980: ffff ffff    	<unknown>
 800f984: ffff ffff    	<unknown>
 800f988: ffff ffff    	<unknown>
 800f98c: ffff ffff    	<unknown>
 800f990: ffff ffff    	<unknown>
 800f994: ffff ffff    	<unknown>
 800f998: ffff ffff    	<unknown>
 800f99c: ffff ffff    	<unknown>
 800f9a0: ffff ffff    	<unknown>
 800f9a4: ffff ffff    	<unknown>
 800f9a8: ffff ffff    	<unknown>
 800f9ac: ffff ffff    	<unknown>
 800f9b0: ffff ffff    	<unknown>
 800f9b4: ffff ffff    	<unknown>
 800f9b8: ffff ffff    	<unknown>
 800f9bc: ffff ffff    	<unknown>
 800f9c0: ffff ffff    	<unknown>
 800f9c4: ffff ffff    	<unknown>
 800f9c8: ffff ffff    	<unknown>
 800f9cc: ffff ffff    	<unknown>
 800f9d0: ffff ffff    	<unknown>
 800f9d4: ffff ffff    	<unknown>
 800f9d8: ffff ffff    	<unknown>
 800f9dc: ffff ffff    	<unknown>
 800f9e0: ffff ffff    	<unknown>
 800f9e4: ffff ffff    	<unknown>
 800f9e8: ffff ffff    	<unknown>
 800f9ec: ffff ffff    	<unknown>
 800f9f0: ffff ffff    	<unknown>
 800f9f4: ffff ffff    	<unknown>
 800f9f8: ffff ffff    	<unknown>
 800f9fc: ffff ffff    	<unknown>
 800fa00: ffff ffff    	<unknown>
 800fa04: ffff ffff    	<unknown>
 800fa08: ffff ffff    	<unknown>
 800fa0c: ffff ffff    	<unknown>
 800fa10: ffff ffff    	<unknown>
 800fa14: ffff ffff    	<unknown>
 800fa18: ffff ffff    	<unknown>
 800fa1c: ffff ffff    	<unknown>
 800fa20: ffff ffff    	<unknown>
 800fa24: ffff ffff    	<unknown>
 800fa28: ffff ffff    	<unknown>
 800fa2c: ffff ffff    	<unknown>
 800fa30: ffff ffff    	<unknown>
 800fa34: ffff ffff    	<unknown>
 800fa38: ffff ffff    	<unknown>
 800fa3c: ffff ffff    	<unknown>
 800fa40: ffff ffff    	<unknown>
 800fa44: ffff ffff    	<unknown>
 800fa48: ffff ffff    	<unknown>
 800fa4c: ffff ffff    	<unknown>
 800fa50: ffff ffff    	<unknown>
 800fa54: ffff ffff    	<unknown>
 800fa58: ffff ffff    	<unknown>
 800fa5c: ffff ffff    	<unknown>
 800fa60: ffff ffff    	<unknown>
 800fa64: ffff ffff    	<unknown>
 800fa68: ffff ffff    	<unknown>
 800fa6c: ffff ffff    	<unknown>
 800fa70: ffff ffff    	<unknown>
 800fa74: ffff ffff    	<unknown>
 800fa78: ffff ffff    	<unknown>
 800fa7c: ffff ffff    	<unknown>
 800fa80: ffff ffff    	<unknown>
 800fa84: ffff ffff    	<unknown>
 800fa88: ffff ffff    	<unknown>
 800fa8c: ffff ffff    	<unknown>
 800fa90: ffff ffff    	<unknown>
 800fa94: ffff ffff    	<unknown>
 800fa98: ffff ffff    	<unknown>
 800fa9c: ffff ffff    	<unknown>
 800faa0: ffff ffff    	<unknown>
 800faa4: ffff ffff    	<unknown>
 800faa8: ffff ffff    	<unknown>
 800faac: ffff ffff    	<unknown>
 800fab0: ffff ffff    	<unknown>
 800fab4: ffff ffff    	<unknown>
 800fab8: ffff ffff    	<unknown>
 800fabc: ffff ffff    	<unknown>
 800fac0: ffff ffff    	<unknown>
 800fac4: ffff ffff    	<unknown>
 800fac8: ffff ffff    	<unknown>
 800facc: ffff ffff    	<unknown>
 800fad0: ffff ffff    	<unknown>
 800fad4: ffff ffff    	<unknown>
 800fad8: ffff ffff    	<unknown>
 800fadc: ffff ffff    	<unknown>
 800fae0: ffff ffff    	<unknown>
 800fae4: ffff ffff    	<unknown>
 800fae8: ffff ffff    	<unknown>
 800faec: ffff ffff    	<unknown>
 800faf0: ffff ffff    	<unknown>
 800faf4: ffff ffff    	<unknown>
 800faf8: ffff ffff    	<unknown>
 800fafc: ffff ffff    	<unknown>
 800fb00: ffff ffff    	<unknown>
 800fb04: ffff ffff    	<unknown>
 800fb08: ffff ffff    	<unknown>
 800fb0c: ffff ffff    	<unknown>
 800fb10: ffff ffff    	<unknown>
 800fb14: ffff ffff    	<unknown>
 800fb18: ffff ffff    	<unknown>
 800fb1c: ffff ffff    	<unknown>
 800fb20: ffff ffff    	<unknown>
 800fb24: ffff ffff    	<unknown>
 800fb28: ffff ffff    	<unknown>
 800fb2c: ffff ffff    	<unknown>
 800fb30: ffff ffff    	<unknown>
 800fb34: ffff ffff    	<unknown>
 800fb38: ffff ffff    	<unknown>
 800fb3c: ffff ffff    	<unknown>
 800fb40: ffff ffff    	<unknown>
 800fb44: ffff ffff    	<unknown>
 800fb48: ffff ffff    	<unknown>
 800fb4c: ffff ffff    	<unknown>
 800fb50: ffff ffff    	<unknown>
 800fb54: ffff ffff    	<unknown>
 800fb58: ffff ffff    	<unknown>
 800fb5c: ffff ffff    	<unknown>
 800fb60: ffff ffff    	<unknown>
 800fb64: ffff ffff    	<unknown>
 800fb68: ffff ffff    	<unknown>
 800fb6c: ffff ffff    	<unknown>
 800fb70: ffff ffff    	<unknown>
 800fb74: ffff ffff    	<unknown>
 800fb78: ffff ffff    	<unknown>
 800fb7c: ffff ffff    	<unknown>
 800fb80: ffff ffff    	<unknown>
 800fb84: ffff ffff    	<unknown>
 800fb88: ffff ffff    	<unknown>
 800fb8c: ffff ffff    	<unknown>
 800fb90: ffff ffff    	<unknown>
 800fb94: ffff ffff    	<unknown>
 800fb98: ffff ffff    	<unknown>
 800fb9c: ffff ffff    	<unknown>
 800fba0: ffff ffff    	<unknown>
 800fba4: ffff ffff    	<unknown>
 800fba8: ffff ffff    	<unknown>
 800fbac: ffff ffff    	<unknown>
 800fbb0: ffff ffff    	<unknown>
 800fbb4: ffff ffff    	<unknown>
 800fbb8: ffff ffff    	<unknown>
 800fbbc: ffff ffff    	<unknown>
 800fbc0: ffff ffff    	<unknown>
 800fbc4: ffff ffff    	<unknown>
 800fbc8: ffff ffff    	<unknown>
 800fbcc: ffff ffff    	<unknown>
 800fbd0: ffff ffff    	<unknown>
 800fbd4: ffff ffff    	<unknown>
 800fbd8: ffff ffff    	<unknown>
 800fbdc: ffff ffff    	<unknown>
 800fbe0: ffff ffff    	<unknown>
 800fbe4: ffff ffff    	<unknown>
 800fbe8: ffff ffff    	<unknown>
 800fbec: ffff ffff    	<unknown>
 800fbf0: ffff ffff    	<unknown>
 800fbf4: ffff ffff    	<unknown>
 800fbf8: ffff ffff    	<unknown>
 800fbfc: ffff ffff    	<unknown>
 800fc00: ffff ffff    	<unknown>
 800fc04: ffff ffff    	<unknown>
 800fc08: ffff ffff    	<unknown>
 800fc0c: ffff ffff    	<unknown>
 800fc10: ffff ffff    	<unknown>
 800fc14: ffff ffff    	<unknown>
 800fc18: ffff ffff    	<unknown>
 800fc1c: ffff ffff    	<unknown>
 800fc20: ffff ffff    	<unknown>
 800fc24: ffff ffff    	<unknown>
 800fc28: ffff ffff    	<unknown>
 800fc2c: ffff ffff    	<unknown>
 800fc30: ffff ffff    	<unknown>
 800fc34: ffff ffff    	<unknown>
 800fc38: ffff ffff    	<unknown>
 800fc3c: ffff ffff    	<unknown>
 800fc40: ffff ffff    	<unknown>
 800fc44: ffff ffff    	<unknown>
 800fc48: ffff ffff    	<unknown>
 800fc4c: ffff ffff    	<unknown>
 800fc50: ffff ffff    	<unknown>
 800fc54: ffff ffff    	<unknown>
 800fc58: ffff ffff    	<unknown>
 800fc5c: ffff ffff    	<unknown>
 800fc60: ffff ffff    	<unknown>
 800fc64: ffff ffff    	<unknown>
 800fc68: ffff ffff    	<unknown>
 800fc6c: ffff ffff    	<unknown>
 800fc70: ffff ffff    	<unknown>
 800fc74: ffff ffff    	<unknown>
 800fc78: ffff ffff    	<unknown>
 800fc7c: ffff ffff    	<unknown>
 800fc80: ffff ffff    	<unknown>
 800fc84: ffff ffff    	<unknown>
 800fc88: ffff ffff    	<unknown>
 800fc8c: ffff ffff    	<unknown>
 800fc90: ffff ffff    	<unknown>
 800fc94: ffff ffff    	<unknown>
 800fc98: ffff ffff    	<unknown>
 800fc9c: ffff ffff    	<unknown>
 800fca0: ffff ffff    	<unknown>
 800fca4: ffff ffff    	<unknown>
 800fca8: ffff ffff    	<unknown>
 800fcac: ffff ffff    	<unknown>
 800fcb0: ffff ffff    	<unknown>
 800fcb4: ffff ffff    	<unknown>
 800fcb8: ffff ffff    	<unknown>
 800fcbc: ffff ffff    	<unknown>
 800fcc0: ffff ffff    	<unknown>
 800fcc4: ffff ffff    	<unknown>
 800fcc8: ffff ffff    	<unknown>
 800fccc: ffff ffff    	<unknown>
 800fcd0: ffff ffff    	<unknown>
 800fcd4: ffff ffff    	<unknown>
 800fcd8: ffff ffff    	<unknown>
 800fcdc: ffff ffff    	<unknown>
 800fce0: ffff ffff    	<unknown>
 800fce4: ffff ffff    	<unknown>
 800fce8: ffff ffff    	<unknown>
 800fcec: ffff ffff    	<unknown>
 800fcf0: ffff ffff    	<unknown>
 800fcf4: ffff ffff    	<unknown>
 800fcf8: ffff ffff    	<unknown>
 800fcfc: ffff ffff    	<unknown>
 800fd00: ffff ffff    	<unknown>
 800fd04: ffff ffff    	<unknown>
 800fd08: ffff ffff    	<unknown>
 800fd0c: ffff ffff    	<unknown>
 800fd10: ffff ffff    	<unknown>
 800fd14: ffff ffff    	<unknown>
 800fd18: ffff ffff    	<unknown>
 800fd1c: ffff ffff    	<unknown>
 800fd20: ffff ffff    	<unknown>
 800fd24: ffff ffff    	<unknown>
 800fd28: ffff ffff    	<unknown>
 800fd2c: ffff ffff    	<unknown>
 800fd30: ffff ffff    	<unknown>
 800fd34: ffff ffff    	<unknown>
 800fd38: ffff ffff    	<unknown>
 800fd3c: ffff ffff    	<unknown>
 800fd40: ffff ffff    	<unknown>
 800fd44: ffff ffff    	<unknown>
 800fd48: ffff ffff    	<unknown>
 800fd4c: ffff ffff    	<unknown>
 800fd50: ffff ffff    	<unknown>
 800fd54: ffff ffff    	<unknown>
 800fd58: ffff ffff    	<unknown>
 800fd5c: ffff ffff    	<unknown>
 800fd60: ffff ffff    	<unknown>
 800fd64: ffff ffff    	<unknown>
 800fd68: ffff ffff    	<unknown>
 800fd6c: ffff ffff    	<unknown>
 800fd70: ffff ffff    	<unknown>
 800fd74: ffff ffff    	<unknown>
 800fd78: ffff ffff    	<unknown>
 800fd7c: ffff ffff    	<unknown>
 800fd80: ffff ffff    	<unknown>
 800fd84: ffff ffff    	<unknown>
 800fd88: ffff ffff    	<unknown>
 800fd8c: ffff ffff    	<unknown>
 800fd90: ffff ffff    	<unknown>
 800fd94: ffff ffff    	<unknown>
 800fd98: ffff ffff    	<unknown>
 800fd9c: ffff ffff    	<unknown>
 800fda0: ffff ffff    	<unknown>
 800fda4: ffff ffff    	<unknown>
 800fda8: ffff ffff    	<unknown>
 800fdac: ffff ffff    	<unknown>
 800fdb0: ffff ffff    	<unknown>
 800fdb4: ffff ffff    	<unknown>
 800fdb8: ffff ffff    	<unknown>
 800fdbc: ffff ffff    	<unknown>
 800fdc0: ffff ffff    	<unknown>
 800fdc4: ffff ffff    	<unknown>
 800fdc8: ffff ffff    	<unknown>
 800fdcc: ffff ffff    	<unknown>
 800fdd0: ffff ffff    	<unknown>
 800fdd4: ffff ffff    	<unknown>
 800fdd8: ffff ffff    	<unknown>
 800fddc: ffff ffff    	<unknown>
 800fde0: ffff ffff    	<unknown>
 800fde4: ffff ffff    	<unknown>
 800fde8: ffff ffff    	<unknown>
 800fdec: ffff ffff    	<unknown>
 800fdf0: ffff ffff    	<unknown>
 800fdf4: ffff ffff    	<unknown>
 800fdf8: ffff ffff    	<unknown>
 800fdfc: ffff ffff    	<unknown>
 800fe00: ffff ffff    	<unknown>
 800fe04: ffff ffff    	<unknown>
 800fe08: ffff ffff    	<unknown>
 800fe0c: ffff ffff    	<unknown>
 800fe10: ffff ffff    	<unknown>
 800fe14: ffff ffff    	<unknown>
 800fe18: ffff ffff    	<unknown>
 800fe1c: ffff ffff    	<unknown>
 800fe20: ffff ffff    	<unknown>
 800fe24: ffff ffff    	<unknown>
 800fe28: ffff ffff    	<unknown>
 800fe2c: ffff ffff    	<unknown>
 800fe30: ffff ffff    	<unknown>
 800fe34: ffff ffff    	<unknown>
 800fe38: ffff ffff    	<unknown>
 800fe3c: ffff ffff    	<unknown>
 800fe40: ffff ffff    	<unknown>
 800fe44: ffff ffff    	<unknown>
 800fe48: ffff ffff    	<unknown>
 800fe4c: ffff ffff    	<unknown>
 800fe50: ffff ffff    	<unknown>
 800fe54: ffff ffff    	<unknown>
 800fe58: ffff ffff    	<unknown>
 800fe5c: ffff ffff    	<unknown>
 800fe60: ffff ffff    	<unknown>
 800fe64: ffff ffff    	<unknown>
 800fe68: ffff ffff    	<unknown>
 800fe6c: ffff ffff    	<unknown>
 800fe70: ffff ffff    	<unknown>
 800fe74: ffff ffff    	<unknown>
 800fe78: ffff ffff    	<unknown>
 800fe7c: ffff ffff    	<unknown>
 800fe80: ffff ffff    	<unknown>
 800fe84: ffff ffff    	<unknown>
 800fe88: ffff ffff    	<unknown>
 800fe8c: ffff ffff    	<unknown>
 800fe90: ffff ffff    	<unknown>
 800fe94: ffff ffff    	<unknown>
 800fe98: ffff ffff    	<unknown>
 800fe9c: ffff ffff    	<unknown>
 800fea0: ffff ffff    	<unknown>
 800fea4: ffff ffff    	<unknown>
 800fea8: ffff ffff    	<unknown>
 800feac: ffff ffff    	<unknown>
 800feb0: ffff ffff    	<unknown>
 800feb4: ffff ffff    	<unknown>
 800feb8: ffff ffff    	<unknown>
 800febc: ffff ffff    	<unknown>
 800fec0: ffff ffff    	<unknown>
 800fec4: ffff ffff    	<unknown>
 800fec8: ffff ffff    	<unknown>
 800fecc: ffff ffff    	<unknown>
 800fed0: ffff ffff    	<unknown>
 800fed4: ffff ffff    	<unknown>
 800fed8: ffff ffff    	<unknown>
 800fedc: ffff ffff    	<unknown>
 800fee0: ffff ffff    	<unknown>
 800fee4: ffff ffff    	<unknown>
 800fee8: ffff ffff    	<unknown>
 800feec: ffff ffff    	<unknown>
 800fef0: ffff ffff    	<unknown>
 800fef4: ffff ffff    	<unknown>
 800fef8: ffff ffff    	<unknown>
 800fefc: ffff ffff    	<unknown>
 800ff00: ffff ffff    	<unknown>
 800ff04: ffff ffff    	<unknown>
 800ff08: ffff ffff    	<unknown>
 800ff0c: ffff ffff    	<unknown>
 800ff10: ffff ffff    	<unknown>
 800ff14: ffff ffff    	<unknown>
 800ff18: ffff ffff    	<unknown>
 800ff1c: ffff ffff    	<unknown>
 800ff20: ffff ffff    	<unknown>
 800ff24: ffff ffff    	<unknown>
 800ff28: ffff ffff    	<unknown>
 800ff2c: ffff ffff    	<unknown>
 800ff30: ffff ffff    	<unknown>
 800ff34: ffff ffff    	<unknown>
 800ff38: ffff ffff    	<unknown>
 800ff3c: ffff ffff    	<unknown>
 800ff40: ffff ffff    	<unknown>
 800ff44: ffff ffff    	<unknown>
 800ff48: ffff ffff    	<unknown>
 800ff4c: ffff ffff    	<unknown>
 800ff50: ffff ffff    	<unknown>
 800ff54: ffff ffff    	<unknown>
 800ff58: ffff ffff    	<unknown>
 800ff5c: ffff ffff    	<unknown>
 800ff60: ffff ffff    	<unknown>
 800ff64: ffff ffff    	<unknown>
 800ff68: ffff ffff    	<unknown>
 800ff6c: ffff ffff    	<unknown>
 800ff70: ffff ffff    	<unknown>
 800ff74: ffff ffff    	<unknown>
 800ff78: ffff ffff    	<unknown>
 800ff7c: ffff ffff    	<unknown>
 800ff80: ffff ffff    	<unknown>
 800ff84: ffff ffff    	<unknown>
 800ff88: ffff ffff    	<unknown>
 800ff8c: ffff ffff    	<unknown>
 800ff90: ffff ffff    	<unknown>
 800ff94: ffff ffff    	<unknown>
 800ff98: ffff ffff    	<unknown>
 800ff9c: ffff ffff    	<unknown>
 800ffa0: ffff ffff    	<unknown>
 800ffa4: ffff ffff    	<unknown>
 800ffa8: ffff ffff    	<unknown>
 800ffac: ffff ffff    	<unknown>
 800ffb0: ffff ffff    	<unknown>
 800ffb4: ffff ffff    	<unknown>
 800ffb8: ffff ffff    	<unknown>
 800ffbc: ffff ffff    	<unknown>
 800ffc0: ffff ffff    	<unknown>
 800ffc4: ffff ffff    	<unknown>
 800ffc8: ffff ffff    	<unknown>
 800ffcc: ffff ffff    	<unknown>
 800ffd0: ffff ffff    	<unknown>
 800ffd4: ffff ffff    	<unknown>
 800ffd8: ffff ffff    	<unknown>
 800ffdc: ffff ffff    	<unknown>
 800ffe0: ffff ffff    	<unknown>
 800ffe4: ffff ffff    	<unknown>
 800ffe8: ffff ffff    	<unknown>
 800ffec: ffff ffff    	<unknown>
 800fff0: ffff ffff    	<unknown>
 800fff4: ffff ffff    	<unknown>
 800fff8: ffff ffff    	<unknown>
 800fffc: ffff ffff    	<unknown>
