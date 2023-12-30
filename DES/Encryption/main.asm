;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _p
	.globl _e
	.globl _s8
	.globl _s7
	.globl _s6
	.globl _s5
	.globl _s4
	.globl _s3
	.globl _s2
	.globl _s1
	.globl _fp
	.globl _ip
	.globl _pc2
	.globl _pc1
	.globl _main
	.globl _rotate
	.globl _G_Function
	.globl _spi_transmit
	.globl _spi_init
	.globl _spi_delay2
	.globl _spi_delay
	.globl _TR1
	.globl _RI
	.globl _TI
	.globl _d
	.globl _c
	.globl _b
	.globl _a
	.globl _RXD
	.globl _TXD
	.globl _miso
	.globl _mosi
	.globl _sclk
	.globl _cs
	.globl _TL1
	.globl _TH1
	.globl _TMOD
	.globl _SBUF
	.globl _SCON
	.globl _P3
	.globl _P2
	.globl _final_original_key
	.globl _Temp
	.globl _temp
	.globl _i
	.globl _arr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P2	=	0x00a0
_P3	=	0x00b0
_SCON	=	0x0098
_SBUF	=	0x0099
_TMOD	=	0x0089
_TH1	=	0x008d
_TL1	=	0x008b
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_cs	=	0x00a0
_sclk	=	0x00a1
_mosi	=	0x00a2
_miso	=	0x00a3
_TXD	=	0x00b1
_RXD	=	0x00b0
_a	=	0x00b2
_b	=	0x00b3
_c	=	0x00b4
_d	=	0x00b5
_TI	=	0x0099
_RI	=	0x0098
_TR1	=	0x008e
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_arr::
	.ds 16
_i::
	.ds 1
_temp::
	.ds 1
_Temp::
	.ds 4
_final_original_key::
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:310: __code uint8* arr[8]={s1,s2,s3,s4,s5,s6,s7,s8};
	mov	(_arr + 0),#_s1
	mov	(_arr + 1),#(_s1 >> 8)
	mov	((_arr + 0x0002) + 0),#_s2
	mov	((_arr + 0x0002) + 1),#(_s2 >> 8)
	mov	((_arr + 0x0004) + 0),#_s3
	mov	((_arr + 0x0004) + 1),#(_s3 >> 8)
	mov	((_arr + 0x0006) + 0),#_s4
	mov	((_arr + 0x0006) + 1),#(_s4 >> 8)
	mov	((_arr + 0x0008) + 0),#_s5
	mov	((_arr + 0x0008) + 1),#(_s5 >> 8)
	mov	((_arr + 0x000a) + 0),#_s6
	mov	((_arr + 0x000a) + 1),#(_s6 >> 8)
	mov	((_arr + 0x000c) + 0),#_s7
	mov	((_arr + 0x000c) + 1),#(_s7 >> 8)
	mov	((_arr + 0x000e) + 0),#_s8
	mov	((_arr + 0x000e) + 1),#(_s8 >> 8)
;	main.c:312: uint32 Temp = 0;
	clr	a
	mov	_Temp,a
	mov	(_Temp + 1),a
	mov	(_Temp + 2),a
	mov	(_Temp + 3),a
;	main.c:579: DATA final_original_key =  {.Array ={0x4b,0x41,0x53,0x48,0x49,0x53,0x41,0x42}};//{0x4b,0x41,0x53,0x48,0x49,0x53,0x41,0x42}};
	mov	_final_original_key,#0x4b
	mov	(_final_original_key + 0x0001),#0x41
	mov	(_final_original_key + 0x0002),#0x53
	mov	(_final_original_key + 0x0003),#0x48
	mov	(_final_original_key + 0x0004),#0x49
	mov	(_final_original_key + 0x0005),#0x53
	mov	(_final_original_key + 0x0006),#0x41
	mov	(_final_original_key + 0x0007),#0x42
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_delay'
;------------------------------------------------------------
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:126: void spi_delay (void){
;	-----------------------------------------
;	 function spi_delay
;	-----------------------------------------
_spi_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:128: for (j = 0; j <100 ; j++);
	mov	r7,#0x64
00104$:
	djnz	r7,00104$
;	main.c:129: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_delay2'
;------------------------------------------------------------
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:130: void spi_delay2 (void){
;	-----------------------------------------
;	 function spi_delay2
;	-----------------------------------------
_spi_delay2:
;	main.c:132: for (j = 0; j <3 ; j++);
	mov	r7,#0x03
00104$:
	djnz	r7,00104$
;	main.c:133: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;	main.c:135: void spi_init (void){
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	main.c:136: cs   = 0;
;	assignBit
	clr	_cs
;	main.c:137: cs   = 0;
;	assignBit
	clr	_cs
;	main.c:139: sclk = 0;
;	assignBit
	clr	_sclk
;	main.c:140: sclk = 0;
;	assignBit
	clr	_sclk
;	main.c:142: mosi = 0;
;	assignBit
	clr	_mosi
;	main.c:143: mosi = 0;
;	assignBit
	clr	_mosi
;	main.c:144: miso = 0;
;	assignBit
	clr	_miso
;	main.c:145: miso = 1;
;	assignBit
	setb	_miso
;	main.c:146: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transmit'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;tt                        Allocated to registers r6 
;------------------------------------------------------------
;	main.c:148: void spi_transmit (char byte){
;	-----------------------------------------
;	 function spi_transmit
;	-----------------------------------------
_spi_transmit:
	mov	r7,dpl
;	main.c:150: cs = 1;
;	assignBit
	setb	_cs
;	main.c:151: sclk = 0;
;	assignBit
	clr	_sclk
;	main.c:152: cs = 0;
;	assignBit
	clr	_cs
;	main.c:153: for (tt = 0 ; tt <8 ; tt++){
	mov	r6,#0x00
00102$:
;	main.c:154: mosi = ((byte >> tt) & 0x01); // send b0 first
	mov	b,r6
	inc	b
	mov	a,r7
	sjmp	00112$
00111$:
	clr	c
	rrc	a
00112$:
	djnz	b,00111$
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_mosi,c
;	main.c:155: spi_delay ();
	push	ar7
	push	ar6
	lcall	_spi_delay
;	main.c:156: sclk = 1; // rx read at rising edge
;	assignBit
	setb	_sclk
;	main.c:157: spi_delay2();
	lcall	_spi_delay2
;	main.c:158: sclk = 0;
;	assignBit
	clr	_sclk
;	main.c:159: spi_delay ();
	lcall	_spi_delay
	pop	ar6
	pop	ar7
;	main.c:153: for (tt = 0 ; tt <8 ; tt++){
	inc	r6
	cjne	r6,#0x08,00113$
00113$:
	jc	00102$
;	main.c:161: }}
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Permutation'
;------------------------------------------------------------
;permuted_text             Allocated to stack - _bp -5
;type                      Allocated to stack - _bp -6
;table                     Allocated to stack - _bp -9
;plain_text                Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	main.c:317: static void Permutation ( DATA *plain_text,DATA *permuted_text,uint8 type,uint8 *table){
;	-----------------------------------------
;	 function Permutation
;	-----------------------------------------
_Permutation:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	main.c:318: for (i = 0 ;i < type ; i++){
	mov	_i,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,_i
	subb	a,@r0
	jc	00115$
	ljmp	00105$
00115$:
;	main.c:321: temp = GET_BIT_ARRAY(plain_text->Array[((table[i] -1) / 8)],((table[i] -1) % 8));
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,_i
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	dec	r2
	cjne	r2,#0xff,00116$
	dec	r4
00116$:
	push	ar4
	push	ar2
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r4
	lcall	__divsint
	mov	r3,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	push	ar7
	push	ar3
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r4
	lcall	__modsint
	mov	r5,dpl
	dec	sp
	dec	sp
	pop	ar3
	pop	ar7
	mov	b,r5
	inc	b
	sjmp	00118$
00117$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r7
	rlc	a
	mov	r7,a
00118$:
	djnz	b,00117$
	anl	ar3,#0x80
	clr	a
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	jnb	acc.0,00119$
	orl	a,#0xfffffffe
00119$:
	mov	_temp,r3
;	main.c:324: WRITE_BIT_ARRAY(permuted_text->Array[(i/8)],(i%8),temp);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	r3,_i
	mov	r4,#0x00
	push	ar4
	push	ar3
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	__divsint
	mov	r2,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x07
	anl	a,r3
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	r4,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00121$
00120$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00121$:
	djnz	b,00120$
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	dpl,r2
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	anl	ar4,a
	mov	r3,_temp
	clr	a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r5,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,r5
	rlc	a
	mov	ov,c
	sjmp	00123$
00122$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r3
	rrc	a
	mov	r3,a
00123$:
	djnz	b,00122$
	mov	a,r3
	orl	ar4,a
	mov	dpl,r2
	mov	dph,r7
	mov	b,r6
	mov	a,r4
	lcall	__gptrput
;	main.c:318: for (i = 0 ;i < type ; i++){
	inc	_i
	ljmp	00103$
00105$:
;	main.c:326: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'G_Function'
;------------------------------------------------------------
;sub_key                   Allocated to stack - _bp -5
;out_g                     Allocated to stack - _bp -8
;round_text                Allocated to registers r5 r6 r7 
;j                         Allocated to stack - _bp +16
;in_s_box                  Allocated to registers r3 
;out_s_box                 Allocated to registers r3 
;raw_s                     Allocated to registers r2 
;column_s                  Allocated to registers r7 
;S_boxes_out               Allocated to registers r7 r6 r5 r4 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +8
;sloc3                     Allocated to stack - _bp +11
;sloc4                     Allocated to stack - _bp +24
;sloc5                     Allocated to stack - _bp +12
;------------------------------------------------------------
;	main.c:328: void G_Function (DATA *round_text,DATA *sub_key,DATA *out_g){
;	-----------------------------------------
;	 function G_Function
;	-----------------------------------------
_G_Function:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:331: Temp = 0;
	clr	a
	mov	_Temp,a
	mov	(_Temp + 1),a
	mov	(_Temp + 2),a
	mov	(_Temp + 3),a
;	main.c:332: for (i = 4 ; i<8 ; i++){
	mov	_i,#0x04
00107$:
;	main.c:333: Temp <<=8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:334: Temp |= round_text->Array[i];
	mov	a,_i
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	push	ar5
	push	ar6
	push	ar7
	clr	a
	mov	r3,a
	mov	r4,a
	mov	r7,a
	mov	a,r2
	orl	_Temp,a
	mov	a,r3
	orl	(_Temp + 1),a
	mov	a,r4
	orl	(_Temp + 2),a
	mov	a,r7
	orl	(_Temp + 3),a
;	main.c:332: for (i = 4 ; i<8 ; i++){
	inc	_i
	clr	c
	mov	a,_i
	subb	a,#0x08
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00107$
;	main.c:337: for (i = 0 ;i <= 47 ; i++){ //arr = {f0 ,aa, f0, aa} >>> aa f0 aa f0
	mov	_i,#0x00
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00109$:
;	main.c:339: temp =(uint8)(((Temp<<(e[i]-1)) & 0x80000000)>>31) ;
	mov	a,_i
	mov	dptr,#_e
	movc	a,@a+dptr
	mov	r4,a
	dec	r4
	mov	b,r4
	inc	b
	mov	r7,_Temp
	mov	r6,(_Temp + 1)
	mov	r5,(_Temp + 2)
	mov	r4,(_Temp + 3)
	sjmp	00180$
00179$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r4,a
00180$:
	djnz	b,00179$
	anl	ar4,#0x80
	mov	a,r4
	rl	a
	anl	a,#0x01
	mov	r7,a
	mov	r6,#0x00
	mov	_temp,r7
;	main.c:343: WRITE_BIT_ARRAY(out_g->Array[(i/8)],(i%8),temp); //
	mov	r7,_i
	push	ar7
	push	ar6
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r2,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,r2
	add	a,@r0
	mov	@r1,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	anl	ar7,#0x07
	mov	r6,#0x00
	mov	b,r7
	inc	b
	mov	r2,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00182$
00181$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r2
	rrc	a
	mov	r2,a
00182$:
	djnz	b,00181$
	mov	a,r2
	cpl	a
	mov	r2,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	anl	ar2,a
	mov	r3,_temp
	clr	a
	clr	c
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	mov	b,r7
	inc	b
	mov	a,r4
	rlc	a
	mov	ov,c
	sjmp	00184$
00183$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
00184$:
	djnz	b,00183$
	mov	a,r3
	orl	ar2,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	main.c:337: for (i = 0 ;i <= 47 ; i++){ //arr = {f0 ,aa, f0, aa} >>> aa f0 aa f0
	inc	_i
	mov	a,_i
	add	a,#0xff - 0x2f
	jc	00185$
	ljmp	00109$
00185$:
;	main.c:348: for (i = 0; i<7 ;i++){
	mov	_i,#0x00
00111$:
;	main.c:349: out_g->Array[i] ^=sub_key->Array[i];
	mov	r0,_bp
	inc	r0
	mov	a,_i
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,_i
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_i
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	xrl	ar2,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	main.c:348: for (i = 0; i<7 ;i++){
	inc	_i
	mov	a,#0x100 - 0x07
	add	a,_i
	jnc	00111$
;	main.c:355: uint32 S_boxes_out = 0;				// Output of the s-boxes
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	main.c:356: for (j = 0; j < 8; j++){
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,#0x00
00116$:
;	main.c:357: in_s_box  = 0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x00
;	main.c:361: for (i = j*6 ;i < (j*6+6) ; i++){                // 0 6    6 12      12 18   18 24       24 30        30 36      36 42   42 48
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	mov	b,#0x06
	mul	ab
	mov	_i,a
00114$:
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	push	ar2
	push	ar3
	mov	dptr,#0x0006
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r7,_i
	mov	r6,#0x00
	clr	c
	mov	a,r7
	subb	a,r2
	mov	a,r6
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	main.c:362: temp = GET_BIT_ARRAY(out_g->Array[(i/8)],(i%8));
	push	ar7
	push	ar6
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r2,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r5,#0x00
	mov	a,#0x07
	anl	a,r7
	mov	r3,a
	mov	b,r3
	inc	b
	mov	r3,ar2
	mov	r4,ar5
	sjmp	00189$
00188$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00189$:
	djnz	b,00188$
	anl	ar3,#0x80
	clr	a
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	jnb	acc.0,00190$
	orl	a,#0xfffffffe
00190$:
	mov	r4,a
	mov	_temp,r3
;	main.c:363: in_s_box <<= 1;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	mov	r3,a
;	main.c:364: in_s_box |= temp ;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_temp
	orl	a,r3
	mov	@r0,a
;	main.c:361: for (i = j*6 ;i < (j*6+6) ; i++){                // 0 6    6 12      12 18   18 24       24 30        30 36      36 42   42 48
	inc	_i
	ljmp	00114$
00104$:
;	main.c:367: column_s = in_s_box & 0b00011110;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x1e
	anl	a,@r0
;	main.c:368: column_s >>= 1;
	clr	c
	rrc	a
	mov	r7,a
;	main.c:370: raw_s = GET_BIT(in_s_box,5);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	mov	c,acc[5]
	clr	a
	rlc	a
;	main.c:371: raw_s <<= 1;
	add	a,acc
	mov	r2,a
;	main.c:372: raw_s |= GET_BIT(in_s_box,0);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	anl	a,#0x01
	orl	ar2,a
;	main.c:373: out_s_box = arr[j][raw_s * 16 + column_s];
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	add	a,acc
	add	a,#_arr
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar2
	mov	a,r4
	swap	a
	anl	a,#0xf0
	xch	a,@r0
	swap	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xf0
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r3
	add	a,r6
	mov	dpl,a
	mov	a,r4
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
;	main.c:374: S_boxes_out <<= 4;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	a,@r0
	swap	a
	anl	a,#0xf0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r4,a
	dec	r0
	dec	r0
	mov	a,@r0
	swap	a
	anl	a,#0x0f
	orl	a,r5
	mov	r5,a
	dec	r0
	mov	ar7,@r0
	inc	r0
	mov	a,@r0
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
;	main.c:375: S_boxes_out |= out_s_box;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	orl	a,r7
	mov	@r1,a
	inc	r0
	mov	a,@r0
	orl	a,r6
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	orl	a,r5
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	orl	a,r4
	inc	r1
	mov	@r1,a
;	main.c:356: for (j = 0; j < 8; j++){
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	cjne	@r0,#0x08,00191$
00191$:
	jnc	00192$
	ljmp	00116$
00192$:
;	main.c:378: out_g->Half[0]=0;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	main.c:379: out_g->Half[1]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	main.c:381: for (i = 0 ;i <= 31 ; i++){
	mov	_i,a
00118$:
;	main.c:382: temp = (uint8)(((S_boxes_out<<(p[i]-1)) & 0x80000000)>>31) ;//GET_BIT_ARRAY(S_boxes_out,(p[i] -1));
	mov	a,_i
	mov	dptr,#_p
	movc	a,@a+dptr
	mov	r4,a
	dec	r4
	mov	b,r4
	inc	b
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	sjmp	00194$
00193$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r4,a
00194$:
	djnz	b,00193$
	anl	ar4,#0x80
	mov	a,r4
	rl	a
	anl	a,#0x01
	mov	r7,a
	mov	r4,#0x00
	mov	_temp,r7
;	main.c:383: WRITE_BIT_ARRAY(out_g->Array[((i+32) / 8)],((i+32) % 8),temp); //
	mov	r3,_i
	mov	a,#0x20
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r6,a
	push	ar7
	push	ar6
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r2,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,r2
	add	a,@r0
	mov	@r1,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r7,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	mov	b,r7
	inc	b
	mov	r2,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00196$
00195$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r2
	rrc	a
	mov	r2,a
00196$:
	djnz	b,00195$
	mov	a,r2
	cpl	a
	mov	r2,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	anl	ar2,a
	mov	r3,_temp
	clr	a
	clr	c
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	mov	b,r7
	inc	b
	mov	a,r4
	rlc	a
	mov	ov,c
	sjmp	00198$
00197$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
00198$:
	djnz	b,00197$
	mov	a,r3
	orl	ar2,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	main.c:381: for (i = 0 ;i <= 31 ; i++){
	inc	_i
	mov	a,_i
	add	a,#0xff - 0x1f
	jc	00199$
	ljmp	00118$
00199$:
;	main.c:386: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rotate'
;------------------------------------------------------------
;round                     Allocated to stack - _bp -3
;sub_key                   Allocated to stack - _bp -6
;Key                       Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +8
;sloc2                     Allocated to stack - _bp +11
;sloc3                     Allocated to stack - _bp +14
;sloc4                     Allocated to stack - _bp +17
;------------------------------------------------------------
;	main.c:397: void rotate(DATA *Key,uint8 round,DATA *sub_key){ // arrr[]={ab,12,cd,45} temp |=ab >>temp =000000 ab >>> 00 00 ab 00
;	-----------------------------------------
;	 function rotate
;	-----------------------------------------
_rotate:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x11
	mov	sp,a
;	main.c:398: Temp = 0;
	clr	a
	mov	_Temp,a
	mov	(_Temp + 1),a
	mov	(_Temp + 2),a
	mov	(_Temp + 3),a
;	main.c:399: for (i = 0 ; i<4 ; i++){
	mov	_i,a
00113$:
;	main.c:400: Temp <<=8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:401: Temp |= Key->Array[i];
	mov	r0,_bp
	inc	r0
	mov	a,_i
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	clr	a
	mov	r3,a
	mov	r4,a
	mov	r7,a
	mov	a,r2
	orl	_Temp,a
	mov	a,r3
	orl	(_Temp + 1),a
	mov	a,r4
	orl	(_Temp + 2),a
	mov	a,r7
	orl	(_Temp + 3),a
;	main.c:399: for (i = 0 ; i<4 ; i++){
	inc	_i
	mov	a,#0x100 - 0x04
	add	a,_i
	jnc	00113$
;	main.c:405: Temp &=0xfffffff0; // Temp = ab 12 cd 4 >>> (1)010 1011 0001 0010 1100 1101 0100 0000
	anl	_Temp,#0xf0
;	main.c:406: temp = GET_BIT(Temp,31);
	mov	a,(_Temp + 3)
	rl	a
	anl	a,#0x01
	mov	_temp,a
;	main.c:407: Temp <<=1;
	mov	a,_Temp
	add	a,_Temp
	mov	_Temp,a
	mov	a,(_Temp + 1)
	rlc	a
	mov	(_Temp + 1),a
	mov	a,(_Temp + 2)
	rlc	a
	mov	(_Temp + 2),a
	mov	a,(_Temp + 3)
	rlc	a
	mov	(_Temp + 3),a
;	main.c:408: WRITE_BIT(Temp,4,temp);//Temp = 0101 0110 0010 0101 1001 1010 10(1)0 0000 >> 56 25 9a 90 >> 90 >>09
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0xef
	anl	a,_Temp
	mov	@r0,a
	inc	r0
	mov	@r0,(_Temp + 1)
	inc	r0
	mov	@r0,(_Temp + 2)
	inc	r0
	mov	@r0,(_Temp + 3)
	mov	r5,_temp
	clr	a
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r5
	orl	a,@r0
	mov	_Temp,a
	mov	a,r4
	inc	r0
	orl	a,@r0
	mov	(_Temp + 1),a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	(_Temp + 2),a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	(_Temp + 3),a
;	main.c:410: for (i = 0 ; i<3 ; i++){
	mov	_i,#0x00
;	main.c:493: sub_key->Half[0] = Key->Half[0];
;	main.c:410: for (i = 0 ; i<3 ; i++){
00115$:
;	main.c:411: Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); //array={56,25,9a,90}
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,_i
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,#0x03
	clr	c
	subb	a,_i
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r4,_Temp
	mov	r5,(_Temp + 1)
	mov	r6,(_Temp + 2)
	mov	r7,(_Temp + 3)
	sjmp	00189$
00188$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00189$:
	djnz	b,00188$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	main.c:410: for (i = 0 ; i<3 ; i++){
	inc	_i
	mov	a,#0x100 - 0x03
	add	a,_i
	jnc	00115$
;	main.c:413: Key->Array[3] &=0x0f;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x0f
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	main.c:414: Key->Array[3] |= (uint8)(Temp  & 0x000000f0);
	mov	r7,_Temp
	anl	ar7,#0xf0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	orl	ar7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	main.c:418: Temp |= Key->Array[3];   //76543210
	mov	_Temp,r7
	mov	(_Temp + 1),#0x00
	mov	(_Temp + 2),#0x00
;	main.c:419: Temp = Temp <<8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:421: Temp |= Key->Array[4];   //20
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r4
	orl	_Temp,a
	mov	a,r5
	orl	(_Temp + 1),a
	mov	a,r6
	orl	(_Temp + 2),a
	mov	a,r7
	orl	(_Temp + 3),a
;	main.c:423: Temp = Temp <<8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:424: Temp |= Key->Array[5];   //20
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,#0x05
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	clr	a
	mov	r3,a
	mov	r4,a
	mov	r7,a
	mov	a,r2
	orl	_Temp,a
	mov	a,r3
	orl	(_Temp + 1),a
	mov	a,r4
	orl	(_Temp + 2),a
	mov	a,r7
	orl	(_Temp + 3),a
;	main.c:425: Temp = Temp <<8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:426: Temp |= Key->Array[6];	//28
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,#0x06
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	clr	a
	mov	r3,a
	mov	r4,a
	mov	r7,a
	mov	a,r2
	orl	_Temp,a
	mov	a,r3
	orl	(_Temp + 1),a
	mov	a,r4
	orl	(_Temp + 2),a
	mov	a,r7
	orl	(_Temp + 3),a
;	main.c:427: Temp= Temp <<4;
	mov	a,(_Temp + 3)
	swap	a
	anl	a,#0xf0
	xch	a,(_Temp + 2)
	swap	a
	xch	a,(_Temp + 2)
	xrl	a,(_Temp + 2)
	xch	a,(_Temp + 2)
	anl	a,#0xf0
	xch	a,(_Temp + 2)
	xrl	a,(_Temp + 2)
	mov	(_Temp + 3),a
	mov	a,(_Temp + 1)
	swap	a
	anl	a,#0x0f
	orl	a,(_Temp + 2)
	mov	(_Temp + 2),a
	mov	a,(_Temp + 1)
	swap	a
	anl	a,#0xf0
	xch	a,_Temp
	swap	a
	xch	a,_Temp
	xrl	a,_Temp
	xch	a,_Temp
	anl	a,#0xf0
	xch	a,_Temp
	xrl	a,_Temp
	mov	(_Temp + 1),a
;	main.c:431: temp = GET_BIT(Temp,31);//
	mov	a,(_Temp + 3)
	rl	a
	anl	a,#0x01
	mov	_temp,a
;	main.c:432: Temp <<=1;//011 0001 0010 1100 1101 0100 0101 0000 0
	mov	a,_Temp
	add	a,_Temp
	mov	_Temp,a
	mov	a,(_Temp + 1)
	rlc	a
	mov	(_Temp + 1),a
	mov	a,(_Temp + 2)
	rlc	a
	mov	(_Temp + 2),a
	mov	a,(_Temp + 3)
	rlc	a
	mov	(_Temp + 3),a
;	main.c:433: WRITE_BIT(Temp,4,temp);// 0110 0010 0101 1001 1010 1000 101(1) 0000 >> 62 59 a9 b0
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0xef
	anl	a,_Temp
	mov	@r0,a
	inc	r0
	mov	@r0,(_Temp + 1)
	inc	r0
	mov	@r0,(_Temp + 2)
	inc	r0
	mov	@r0,(_Temp + 3)
	mov	r2,_temp
	clr	a
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,r2
	orl	a,@r0
	mov	_Temp,a
	mov	a,r3
	inc	r0
	orl	a,@r0
	mov	(_Temp + 1),a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	(_Temp + 2),a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	(_Temp + 3),a
;	main.c:435: Key->Array[3] &=0xf0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0xf0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	main.c:436: Key->Array[3] |= (uint8)((Temp)>>28); //62 59 a9 b0 >> 60 00 00 00 >>28 >>>> 00 00 00 06 >> 06
	mov	a,(_Temp + 3)
	swap	a
	anl	a,#0x0f
	mov	r4,a
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	orl	ar4,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	main.c:437: Temp <<=4; // Temp= 25 9a 9b 00 >> 00 00 00 25
	mov	a,(_Temp + 3)
	swap	a
	anl	a,#0xf0
	xch	a,(_Temp + 2)
	swap	a
	xch	a,(_Temp + 2)
	xrl	a,(_Temp + 2)
	xch	a,(_Temp + 2)
	anl	a,#0xf0
	xch	a,(_Temp + 2)
	xrl	a,(_Temp + 2)
	mov	(_Temp + 3),a
	mov	a,(_Temp + 1)
	swap	a
	anl	a,#0x0f
	orl	a,(_Temp + 2)
	mov	(_Temp + 2),a
	mov	a,(_Temp + 1)
	swap	a
	anl	a,#0xf0
	xch	a,_Temp
	swap	a
	xch	a,_Temp
	xrl	a,_Temp
	xch	a,_Temp
	anl	a,#0xf0
	xch	a,_Temp
	xrl	a,_Temp
	mov	(_Temp + 1),a
;	main.c:441: for (i = 4 ; i<8 ; i++){
	mov	_i,#0x04
00117$:
;	main.c:442: Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); //array={25,9a,9b,00}
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	mov	a,_i
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,#0x07
	clr	c
	subb	a,_i
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r4,a
	mov	b,r4
	inc	b
	mov	r2,_Temp
	mov	r3,(_Temp + 1)
	mov	r4,(_Temp + 2)
	mov	r7,(_Temp + 3)
	sjmp	00192$
00191$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00192$:
	djnz	b,00191$
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	main.c:441: for (i = 4 ; i<8 ; i++){
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jnc	00117$
;	main.c:445: if ((round == 1) || (round == 2) || (round == 9) ||(round == 16)){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x01,00194$
	ljmp	00109$
00194$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x02,00195$
	ljmp	00109$
00195$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x09,00196$
	ljmp	00109$
00196$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x10,00197$
	ljmp	00109$
00197$:
;	main.c:450: for (i = 0 ; i<4 ; i++){
	mov	_i,#0x00
00119$:
;	main.c:451: Temp <<=8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:452: Temp |= Key->Array[i];
	mov	r0,_bp
	inc	r0
	mov	a,_i
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r4,a
	mov	a,r5
	orl	_Temp,a
	mov	a,r7
	orl	(_Temp + 1),a
	mov	a,r6
	orl	(_Temp + 2),a
	mov	a,r4
	orl	(_Temp + 3),a
;	main.c:450: for (i = 0 ; i<4 ; i++){
	inc	_i
	mov	a,#0x100 - 0x04
	add	a,_i
	jnc	00119$
;	main.c:455: Temp &=0xfffffff0; // Temp = ab 12 cd 4 >>> (1)010 1011 0001 0010 1100 1101 0100 0000
	anl	_Temp,#0xf0
;	main.c:456: temp = GET_BIT(Temp,31);
	mov	a,(_Temp + 3)
	rl	a
	anl	a,#0x01
	mov	_temp,a
;	main.c:457: Temp <<=1;
	mov	a,_Temp
	add	a,_Temp
	mov	_Temp,a
	mov	a,(_Temp + 1)
	rlc	a
	mov	(_Temp + 1),a
	mov	a,(_Temp + 2)
	rlc	a
	mov	(_Temp + 2),a
	mov	a,(_Temp + 3)
	rlc	a
	mov	(_Temp + 3),a
;	main.c:458: WRITE_BIT(Temp,4,temp);//Temp = 0101 0110 0010 0101 1001 1010 10(1)0 0000 >> 56 25 9a 90 >> 90 >>09
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0xef
	anl	a,_Temp
	mov	@r0,a
	inc	r0
	mov	@r0,(_Temp + 1)
	inc	r0
	mov	@r0,(_Temp + 2)
	inc	r0
	mov	@r0,(_Temp + 3)
	mov	r2,_temp
	clr	a
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,r2
	orl	a,@r0
	mov	_Temp,a
	mov	a,r3
	inc	r0
	orl	a,@r0
	mov	(_Temp + 1),a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	(_Temp + 2),a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	(_Temp + 3),a
;	main.c:460: for (i = 0 ; i<3 ; i++){
	mov	_i,#0x00
00121$:
;	main.c:461: Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); //array={56,25,9a,90}
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	mov	a,_i
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,#0x03
	clr	c
	subb	a,_i
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r4,a
	mov	b,r4
	inc	b
	mov	r2,_Temp
	mov	r3,(_Temp + 1)
	mov	r4,(_Temp + 2)
	mov	r7,(_Temp + 3)
	sjmp	00200$
00199$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00200$:
	djnz	b,00199$
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	main.c:460: for (i = 0 ; i<3 ; i++){
	inc	_i
	mov	a,#0x100 - 0x03
	add	a,_i
	jnc	00121$
;	main.c:463: Key->Array[3] &=0x0f;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x0f
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	main.c:464: Key->Array[3] |= (uint8)(Temp  & 0x000000f0);
	mov	r7,_Temp
	anl	ar7,#0xf0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	orl	ar7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	main.c:468: Temp |= Key->Array[3];   //76543210
	mov	_Temp,r7
	mov	(_Temp + 1),#0x00
	mov	(_Temp + 2),#0x00
;	main.c:469: Temp = Temp <<8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:471: Temp |= Key->Array[4];   //20
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	orl	_Temp,a
	mov	a,r6
	orl	(_Temp + 1),a
	mov	a,r5
	orl	(_Temp + 2),a
	mov	a,r4
	orl	(_Temp + 3),a
;	main.c:473: Temp = Temp <<8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:474: Temp |= Key->Array[5];   //20
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	orl	_Temp,a
	mov	a,r6
	orl	(_Temp + 1),a
	mov	a,r5
	orl	(_Temp + 2),a
	mov	a,r4
	orl	(_Temp + 3),a
;	main.c:475: Temp = Temp <<8;
	mov	(_Temp + 3),(_Temp + 2)
	mov	(_Temp + 2),(_Temp + 1)
	mov	(_Temp + 1),_Temp
	mov	_Temp,#0x00
;	main.c:476: Temp |= Key->Array[6];	//28
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	orl	_Temp,a
	mov	a,r6
	orl	(_Temp + 1),a
	mov	a,r5
	orl	(_Temp + 2),a
	mov	a,r4
	orl	(_Temp + 3),a
;	main.c:477: Temp= Temp <<4;
	mov	a,(_Temp + 3)
	swap	a
	anl	a,#0xf0
	xch	a,(_Temp + 2)
	swap	a
	xch	a,(_Temp + 2)
	xrl	a,(_Temp + 2)
	xch	a,(_Temp + 2)
	anl	a,#0xf0
	xch	a,(_Temp + 2)
	xrl	a,(_Temp + 2)
	mov	(_Temp + 3),a
	mov	a,(_Temp + 1)
	swap	a
	anl	a,#0x0f
	orl	a,(_Temp + 2)
	mov	(_Temp + 2),a
	mov	a,(_Temp + 1)
	swap	a
	anl	a,#0xf0
	xch	a,_Temp
	swap	a
	xch	a,_Temp
	xrl	a,_Temp
	xch	a,_Temp
	anl	a,#0xf0
	xch	a,_Temp
	xrl	a,_Temp
	mov	(_Temp + 1),a
;	main.c:480: temp = GET_BIT(Temp,31);//
	mov	a,(_Temp + 3)
	rl	a
	anl	a,#0x01
	mov	_temp,a
;	main.c:481: Temp <<=1;//011 0001 0010 1100 1101 0100 0101 0000 0
	mov	a,_Temp
	add	a,_Temp
	mov	_Temp,a
	mov	a,(_Temp + 1)
	rlc	a
	mov	(_Temp + 1),a
	mov	a,(_Temp + 2)
	rlc	a
	mov	(_Temp + 2),a
	mov	a,(_Temp + 3)
	rlc	a
	mov	(_Temp + 3),a
;	main.c:482: WRITE_BIT(Temp,4,temp);// 0110 0010 0101 1001 1010 1000 101(1) 0000 >> 62 59 a9 b0
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0xef
	anl	a,_Temp
	mov	@r0,a
	inc	r0
	mov	@r0,(_Temp + 1)
	inc	r0
	mov	@r0,(_Temp + 2)
	inc	r0
	mov	@r0,(_Temp + 3)
	mov	r2,_temp
	clr	a
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,r2
	orl	a,@r0
	mov	_Temp,a
	mov	a,r3
	inc	r0
	orl	a,@r0
	mov	(_Temp + 1),a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	(_Temp + 2),a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	(_Temp + 3),a
;	main.c:484: Key->Array[3] &=0xf0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0xf0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	main.c:485: Key->Array[3] |= (uint8)((Temp)>>28); //62 59 a9 b0 >> 60 00 00 00 >>28 >>>> 00 00 00 06 >> 06
	mov	a,(_Temp + 3)
	swap	a
	anl	a,#0x0f
	mov	r4,a
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	orl	ar4,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	main.c:486: Temp <<=4; // Temp= 25 9a 9b 00 >> 00 00 00 25
	mov	a,(_Temp + 3)
	swap	a
	anl	a,#0xf0
	xch	a,(_Temp + 2)
	swap	a
	xch	a,(_Temp + 2)
	xrl	a,(_Temp + 2)
	xch	a,(_Temp + 2)
	anl	a,#0xf0
	xch	a,(_Temp + 2)
	xrl	a,(_Temp + 2)
	mov	(_Temp + 3),a
	mov	a,(_Temp + 1)
	swap	a
	anl	a,#0x0f
	orl	a,(_Temp + 2)
	mov	(_Temp + 2),a
	mov	a,(_Temp + 1)
	swap	a
	anl	a,#0xf0
	xch	a,_Temp
	swap	a
	xch	a,_Temp
	xrl	a,_Temp
	xch	a,_Temp
	anl	a,#0xf0
	xch	a,_Temp
	xrl	a,_Temp
	mov	(_Temp + 1),a
;	main.c:487: for (i = 4 ; i<8 ; i++){
	mov	_i,#0x04
00123$:
;	main.c:488: Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); //array={25,9a,9b,00}
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	mov	a,_i
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,#0x07
	clr	c
	subb	a,_i
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r4,a
	mov	b,r4
	inc	b
	mov	r2,_Temp
	mov	r3,(_Temp + 1)
	mov	r4,(_Temp + 2)
	mov	r7,(_Temp + 3)
	sjmp	00203$
00202$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00203$:
	djnz	b,00202$
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	main.c:487: for (i = 4 ; i<8 ; i++){
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jnc	00123$
00109$:
;	main.c:492: sub_key->Half[1] = Key->Half[1];
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	main.c:493: sub_key->Half[0] = Key->Half[0];
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	main.c:574: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;cipher_text               Allocated to stack - _bp +17
;round                     Allocated to stack - _bp +25
;round_in                  Allocated to stack - _bp +26
;subbkey                   Allocated to stack - _bp +34
;key_56                    Allocated to stack - _bp +42
;pc2_in                    Allocated to stack - _bp +50
;temp2                     Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;sloc2                     Allocated to stack - _bp +3
;sloc3                     Allocated to stack - _bp +4
;sloc4                     Allocated to stack - _bp +5
;sloc5                     Allocated to stack - _bp +6
;sloc6                     Allocated to stack - _bp +7
;sloc7                     Allocated to stack - _bp +10
;sloc8                     Allocated to stack - _bp +13
;------------------------------------------------------------
;	main.c:585: int main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x39
	mov	sp,a
;	main.c:586: spi_init();
	lcall	_spi_init
;	main.c:587: SCON=0x50;
	mov	_SCON,#0x50
;	main.c:588: TMOD=0x20;
	mov	_TMOD,#0x20
;	main.c:589: TH1=-3;
	mov	_TH1,#0xfd
;	main.c:590: TL1=-3;
	mov	_TL1,#0xfd
;	main.c:591: TR1=1;
;	assignBit
	setb	_TR1
;	main.c:594: DATA cipher_text =  {.Array = {0,0,0,0,0,0,0,0}}; // cipher =  0x76 0x35 0x49 0xd3 0x8b 0x57 0xc 0xe
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,_bp
	add	a,#0x11
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x05
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x07
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x00
;	main.c:597: SBUF = 'K';
	mov	_SBUF,#0x4b
;	main.c:598: while (0 == TI);
00101$:
;	main.c:599: TI = 0;
;	assignBit
	jbc	_TI,00368$
	sjmp	00101$
00368$:
;	main.c:600: spi_delay();
	lcall	_spi_delay
;	main.c:601: SBUF = ':';
	mov	_SBUF,#0x3a
;	main.c:602: while (0 == TI);
00104$:
;	main.c:603: TI = 0;
;	assignBit
	jbc	_TI,00369$
	sjmp	00104$
00369$:
;	main.c:604: spi_delay();
	lcall	_spi_delay
;	main.c:605: for (i=0 ; i<8;i++){
	mov	_i,#0x00
;	main.c:606: while(0==RI);
00107$:
	jnb	_RI,00107$
;	main.c:607: temp = SBUF;
	mov	_temp,_SBUF
;	main.c:608: RI=0;
;	assignBit
	clr	_RI
;	main.c:609: spi_delay();
	lcall	_spi_delay
;	main.c:610: SBUF = temp;
	mov	_SBUF,_temp
;	main.c:611: while(0==TI);
00110$:
;	main.c:612: TI=0;
;	assignBit
	jbc	_TI,00371$
	sjmp	00110$
00371$:
;	main.c:613: spi_delay();
	lcall	_spi_delay
;	main.c:614: temp -= 0x30;
	mov	a,_temp
	add	a,#0xd0
;	main.c:615: if(temp > 9 ){
	mov  _temp,a
	add	a,#0xff - 0x09
	jnc	00114$
;	main.c:616: temp -= 0x7;
	mov	a,_temp
	mov	r6,a
	add	a,#0xf9
	mov	_temp,a
00114$:
;	main.c:618: final_original_key.Array[i] = (temp<<4);
	mov	a,_i
	add	a,#_final_original_key
	mov	r1,a
	mov	a,_temp
	swap	a
	anl	a,#0xf0
	mov	@r1,a
;	main.c:619: final_original_key.Array[i] &= 0xF0;
	mov	a,_i
	add	a,#_final_original_key
	mov	r1,a
	mov	a,_i
	add	a,#_final_original_key
	mov	r0,a
	mov	ar6,@r0
	mov	a,#0xf0
	anl	a,r6
	mov	@r1,a
;	main.c:620: temp = 0;
	mov	_temp,#0x00
;	main.c:621: while(0==RI);
00115$:
	jnb	_RI,00115$
;	main.c:622: temp = SBUF;
	mov	_temp,_SBUF
;	main.c:623: RI=0;
;	assignBit
	clr	_RI
;	main.c:624: spi_delay();
	lcall	_spi_delay
;	main.c:625: SBUF = temp;
	mov	_SBUF,_temp
;	main.c:626: while(0==TI);
00118$:
;	main.c:627: TI=0;
;	assignBit
	jbc	_TI,00374$
	sjmp	00118$
00374$:
;	main.c:628: spi_delay();
	lcall	_spi_delay
;	main.c:629: temp -= 0x30;
	mov	a,_temp
	add	a,#0xd0
;	main.c:630: if(temp > 9 ){
	mov  _temp,a
	add	a,#0xff - 0x09
	jnc	00122$
;	main.c:631: temp -= 0x7;
	mov	a,_temp
	mov	r6,a
	add	a,#0xf9
	mov	_temp,a
00122$:
;	main.c:633: final_original_key.Array[i] |= temp; 
	mov	a,_i
	add	a,#_final_original_key
	mov	r1,a
	mov	a,_i
	add	a,#_final_original_key
	mov	r0,a
	mov	ar6,@r0
	mov	a,_temp
	orl	a,r6
	mov	@r1,a
;	main.c:605: for (i=0 ; i<8;i++){
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jc	00376$
	ljmp	00107$
00376$:
;	main.c:636: spi_delay();
	lcall	_spi_delay
;	main.c:638: while(1){
00163$:
;	main.c:640: SBUF = '\n';
	mov	_SBUF,#0x0a
;	main.c:641: while (0 == TI);
00124$:
;	main.c:642: TI = 0;
;	assignBit
	jbc	_TI,00377$
	sjmp	00124$
00377$:
;	main.c:643: spi_delay();
	lcall	_spi_delay
;	main.c:644: SBUF = 'P';
	mov	_SBUF,#0x50
;	main.c:645: while (0 == TI);
00127$:
;	main.c:646: TI = 0;
;	assignBit
	jbc	_TI,00378$
	sjmp	00127$
00378$:
;	main.c:647: spi_delay();
	lcall	_spi_delay
;	main.c:648: SBUF = 'T';
	mov	_SBUF,#0x54
;	main.c:649: while (0 == TI);
00130$:
;	main.c:650: TI = 0;
;	assignBit
	jbc	_TI,00379$
	sjmp	00130$
00379$:
;	main.c:651: spi_delay();
	lcall	_spi_delay
;	main.c:652: SBUF = ':';
	mov	_SBUF,#0x3a
;	main.c:653: while (0 == TI);
00133$:
;	main.c:654: TI = 0;
;	assignBit
	jbc	_TI,00380$
	sjmp	00133$
00380$:
;	main.c:655: spi_delay();
	lcall	_spi_delay
;	main.c:658: for (i=0 ; i<8;i++){
	mov	_i,#0x00
;	main.c:659: while(0==RI);
00136$:
	jnb	_RI,00136$
;	main.c:660: temp = SBUF;
	mov	_temp,_SBUF
;	main.c:661: RI=0;
;	assignBit
	clr	_RI
;	main.c:662: spi_delay();
	lcall	_spi_delay
;	main.c:663: SBUF = temp;
	mov	_SBUF,_temp
;	main.c:664: while(0==TI);
00139$:
;	main.c:665: TI=0;
;	assignBit
	jbc	_TI,00382$
	sjmp	00139$
00382$:
;	main.c:666: spi_delay();
	lcall	_spi_delay
;	main.c:667: cipher_text.Array[i] = temp;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,_i
	add	a,@r0
	mov	r0,a
	mov	@r0,_temp
;	main.c:668: temp = 0;
	mov	_temp,#0x00
;	main.c:658: for (i=0 ; i<8;i++){
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jnc	00136$
;	main.c:670: spi_delay();
	lcall	_spi_delay
;	main.c:675: DATA round_in = {.Array = {0,0,0,0,0,0,0,0}};
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x1a
	mov	r6,a
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x02
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x03
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x04
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x05
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x06
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x07
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
;	main.c:676: DATA subbkey = {.Array = {0,0,0,0,0,0,0,0}};
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x22
	mov	r6,a
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x02
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x03
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x04
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x05
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x06
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x07
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
;	main.c:677: DATA key_56 = {.Array = {0,0,0,0,0,0,0,0}};
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x2a
	mov	r6,a
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x02
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x03
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x04
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x05
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x06
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x07
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
;	main.c:678: DATA pc2_in = {.Array = {0,0,0,0,0,0,0,0}};
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x32
	mov	r6,a
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x02
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x03
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x04
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x05
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x06
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x07
	add	a,r6
	mov	r0,a
	mov	@r0,#0x00
;	main.c:681: Permutation ( &cipher_text, &round_in, Basic_Permutation, ip);
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar1
	push	ar0
	mov	a,#_ip
	push	acc
	mov	a,#(_ip >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	rr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_Permutation
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
;	main.c:682: for (i=0; i<8; i++){
	mov	_i,#0x00
;	main.c:746: for (i=0 ; i<8;i++){
;	main.c:682: for (i=0; i<8; i++){
00169$:
;	main.c:683: cipher_text.Array[i] = '0';
	mov	a,_i
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x30
	pop	ar0
;	main.c:682: for (i=0; i<8; i++){
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jnc	00169$
;	main.c:687: Permutation ( &final_original_key, &key_56,Pc1,pc1);
	mov	a,_bp
	add	a,#0x2a
	mov	r6,a
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar6
	push	ar1
	push	ar0
	mov	a,#_pc1
	push	acc
	mov	a,#(_pc1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x38
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_final_original_key
	mov	b,#0x40
	lcall	_Permutation
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar6
;	main.c:690: for (round = 1 ; round < 17 ; round++){
	push	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar6
	pop	ar0
	mov	a,_bp
	add	a,#0x22
	mov	r4,a
	push	ar1
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	@r1,ar0
	pop	ar1
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar4
	mov	r0,_bp
	inc	r0
	mov	@r0,ar1
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	@r0,#0x01
	pop	ar0
00171$:
;	main.c:692: rotate(&key_56,round,&pc2_in);
	push	ar0
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x32
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar3,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar6
	push	ar4
	push	ar1
	push	ar0
	mov	b,ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	lcall	_rotate
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar6
;	main.c:695: Permutation (&pc2_in,&subbkey,Pc2,pc2);
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar2,@r0
	pop	ar0
	push	ar4
	mov	r4,#0x00
	mov	r7,#0x40
	push	ar6
	push	ar4
	push	ar1
	push	ar0
	mov	a,#_pc2
	push	acc
	mov	a,#(_pc2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x30
	push	acc
	mov	b,ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	_Permutation
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar6
;	main.c:700: G_Function(&round_in,&subbkey,&cipher_text);
	push	ar0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar6
	push	ar4
	push	ar1
	push	ar0
	mov	b,ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	lcall	_G_Function
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar6
;	main.c:701: cipher_text.Half[1] = cipher_text.Half[1] ^ round_in.Half[0];
	mov	a,#0x04
	add	a,r0
	mov	r7,a
	push	ar0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	r0,ar7
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	xrl	ar2,a
	inc	r0
	mov	a,@r0
	xrl	ar3,a
	inc	r0
	mov	a,@r0
	xrl	ar4,a
	inc	r0
	mov	a,@r0
	xrl	ar5,a
	mov	r0,ar7
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	main.c:702: cipher_text.Half[0]  = round_in.Half[1];
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x04
	add	a,r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar0,@r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	dec	r0
	dec	r0
	pop	ar0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	dec	r0
	dec	r0
	dec	r0
;	main.c:704: key_56.Half[0] = pc2_in.Half[0];
	push	ar0
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar0,@r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	r0,ar6
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	main.c:705: key_56.Half[1] = pc2_in.Half[1];
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x04
	add	a,r6
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	dec	r0
	dec	r0
	dec	r0
;	main.c:707: pc2_in.Half[0] = 0;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	dec	r0
	dec	r0
	dec	r0
;	main.c:708: pc2_in.Half[1] = 0;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	dec	r0
	dec	r0
	dec	r0
	pop	ar0
;	main.c:710: round_in.Half[0] = cipher_text.Half[0];
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
	dec	r1
	dec	r1
;	main.c:711: round_in.Half[1] = cipher_text.Half[1];
	push	ar0
	mov	r0,ar7
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	dec	r0
	dec	r0
	dec	r0
	pop	ar0
;	main.c:714: cipher_text.Half[0] = 0;
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	dec	r0
	dec	r0
	dec	r0
;	main.c:715: cipher_text.Half[1] = 0;
	push	ar0
	mov	r0,ar7
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	main.c:690: for (round = 1 ; round < 17 ; round++){
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	cjne	@r0,#0x11,00385$
00385$:
	pop	ar0
	pop	ar4
	jnc	00386$
	ljmp	00171$
00386$:
;	main.c:717: pc2_in.Half[0] = round_in.Half[1];
	push	ar0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
	pop	ar0
;	main.c:718: pc2_in.Half[1] = round_in.Half[0];
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	ar1,@r1
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	main.c:720: Permutation (&pc2_in,&cipher_text,Basic_Permutation,fp);
	mov	ar7,r0
	mov	ar6,r7
	mov	r5,#0x00
	mov	r4,#0x40
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	ar3,@r1
	push	ar0
	mov	ar2,r3
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar0
	mov	a,#_fp
	push	acc
	mov	a,#(_fp >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	rr	a
	push	acc
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_Permutation
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
;	main.c:724: for (i=0 ; i<8;i++){
	mov	_i,#0x00
;	main.c:746: for (i=0 ; i<8;i++){
	pop	ar0
;	main.c:724: for (i=0 ; i<8;i++){
00173$:
;	main.c:725: spi_transmit (cipher_text.Array[i]);
	mov	a,_i
	add	a,r0
	mov	r1,a
	mov	dpl,@r1
	push	ar0
	lcall	_spi_transmit
	pop	ar0
;	main.c:724: for (i=0 ; i<8;i++){
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jnc	00173$
;	main.c:729: SBUF = '\n';
	mov	_SBUF,#0x0a
;	main.c:730: while (0 == TI);
00146$:
;	main.c:731: TI = 0;
;	assignBit
	jbc	_TI,00388$
	sjmp	00146$
00388$:
;	main.c:732: spi_delay();
	push	ar0
	lcall	_spi_delay
	pop	ar0
;	main.c:733: SBUF = 'C';
	mov	_SBUF,#0x43
;	main.c:734: while (0 == TI);
00149$:
;	main.c:735: TI = 0;
;	assignBit
	jbc	_TI,00389$
	sjmp	00149$
00389$:
;	main.c:736: SBUF = 'T';
	mov	_SBUF,#0x54
;	main.c:737: while (0 == TI);
00152$:
;	main.c:738: TI = 0;
;	assignBit
	jbc	_TI,00390$
	sjmp	00152$
00390$:
;	main.c:739: spi_delay();
	push	ar0
	lcall	_spi_delay
	pop	ar0
;	main.c:740: SBUF = ':';
	mov	_SBUF,#0x3a
;	main.c:741: while (0 == TI);
00155$:
;	main.c:742: TI = 0;
;	assignBit
	jbc	_TI,00391$
	sjmp	00155$
00391$:
;	main.c:743: spi_delay();
	push	ar0
	lcall	_spi_delay
;	main.c:744: spi_delay();
	lcall	_spi_delay
	pop	ar0
;	main.c:746: for (i=0 ; i<8;i++){
	mov	_i,#0x00
00175$:
;	main.c:747: temp2 = cipher_text.Array[i] ;
	mov	a,_i
	add	a,r0
	mov	r1,a
	mov	_SBUF,@r1
;	main.c:749: while(0==TI);
00158$:
;	main.c:750: TI=0;
;	assignBit
	jbc	_TI,00392$
	sjmp	00158$
00392$:
;	main.c:746: for (i=0 ; i<8;i++){
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jnc	00175$
;	main.c:752: spi_delay();
	lcall	_spi_delay
	ljmp	00163$
;	main.c:756: return 0;
;	main.c:757: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_pc1:
	.db #0x39	; 57	'9'
	.db #0x31	; 49	'1'
	.db #0x29	; 41
	.db #0x21	; 33
	.db #0x19	; 25
	.db #0x11	; 17
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3a	; 58
	.db #0x32	; 50	'2'
	.db #0x2a	; 42
	.db #0x22	; 34
	.db #0x1a	; 26
	.db #0x12	; 18
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x3b	; 59
	.db #0x33	; 51	'3'
	.db #0x2b	; 43
	.db #0x23	; 35
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0x03	; 3
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x3f	; 63
	.db #0x37	; 55	'7'
	.db #0x2f	; 47
	.db #0x27	; 39
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x3e	; 62
	.db #0x36	; 54	'6'
	.db #0x2e	; 46
	.db #0x26	; 38
	.db #0x1e	; 30
	.db #0x16	; 22
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x3d	; 61
	.db #0x35	; 53	'5'
	.db #0x2d	; 45
	.db #0x25	; 37
	.db #0x1d	; 29
	.db #0x15	; 21
	.db #0x0d	; 13
	.db #0x05	; 5
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x04	; 4
_pc2:
	.db #0x0e	; 14
	.db #0x11	; 17
	.db #0x0b	; 11
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x1c	; 28
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x15	; 21
	.db #0x0a	; 10
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x07	; 7
	.db #0x1b	; 27
	.db #0x14	; 20
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x29	; 41
	.db #0x34	; 52	'4'
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x2f	; 47
	.db #0x37	; 55	'7'
	.db #0x1e	; 30
	.db #0x28	; 40
	.db #0x33	; 51	'3'
	.db #0x2d	; 45
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x2c	; 44
	.db #0x31	; 49	'1'
	.db #0x27	; 39
	.db #0x38	; 56	'8'
	.db #0x22	; 34
	.db #0x35	; 53	'5'
	.db #0x2e	; 46
	.db #0x2a	; 42
	.db #0x32	; 50	'2'
	.db #0x24	; 36
	.db #0x1d	; 29
	.db #0x20	; 32
_ip:
	.db #0x3a	; 58
	.db #0x32	; 50	'2'
	.db #0x2a	; 42
	.db #0x22	; 34
	.db #0x1a	; 26
	.db #0x12	; 18
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x3e	; 62
	.db #0x36	; 54	'6'
	.db #0x2e	; 46
	.db #0x26	; 38
	.db #0x1e	; 30
	.db #0x16	; 22
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x39	; 57	'9'
	.db #0x31	; 49	'1'
	.db #0x29	; 41
	.db #0x21	; 33
	.db #0x19	; 25
	.db #0x11	; 17
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3b	; 59
	.db #0x33	; 51	'3'
	.db #0x2b	; 43
	.db #0x23	; 35
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0x03	; 3
	.db #0x3d	; 61
	.db #0x35	; 53	'5'
	.db #0x2d	; 45
	.db #0x25	; 37
	.db #0x1d	; 29
	.db #0x15	; 21
	.db #0x0d	; 13
	.db #0x05	; 5
	.db #0x3f	; 63
	.db #0x37	; 55	'7'
	.db #0x2f	; 47
	.db #0x27	; 39
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x0f	; 15
	.db #0x07	; 7
_fp:
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x18	; 24
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x07	; 7
	.db #0x2f	; 47
	.db #0x0f	; 15
	.db #0x37	; 55	'7'
	.db #0x17	; 23
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x26	; 38
	.db #0x06	; 6
	.db #0x2e	; 46
	.db #0x0e	; 14
	.db #0x36	; 54	'6'
	.db #0x16	; 22
	.db #0x3e	; 62
	.db #0x1e	; 30
	.db #0x25	; 37
	.db #0x05	; 5
	.db #0x2d	; 45
	.db #0x0d	; 13
	.db #0x35	; 53	'5'
	.db #0x15	; 21
	.db #0x3d	; 61
	.db #0x1d	; 29
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x2c	; 44
	.db #0x0c	; 12
	.db #0x34	; 52	'4'
	.db #0x14	; 20
	.db #0x3c	; 60
	.db #0x1c	; 28
	.db #0x23	; 35
	.db #0x03	; 3
	.db #0x2b	; 43
	.db #0x0b	; 11
	.db #0x33	; 51	'3'
	.db #0x13	; 19
	.db #0x3b	; 59
	.db #0x1b	; 27
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x2a	; 42
	.db #0x0a	; 10
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x3a	; 58
	.db #0x1a	; 26
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x09	; 9
	.db #0x31	; 49	'1'
	.db #0x11	; 17
	.db #0x39	; 57	'9'
	.db #0x19	; 25
_s1:
	.db #0x0e	; 14
	.db #0x04	; 4
	.db #0x0d	; 13
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x0d	; 13
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x0b	; 11
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x0b	; 11
	.db #0x03	; 3
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0d	; 13
_s2:
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x0b	; 11
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x0d	; 13
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0d	; 13
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x0b	; 11
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0e	; 14
	.db #0x09	; 9
_s3:
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x0b	; 11
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x0c	; 12
_s4:
	.db #0x07	; 7
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x0e	; 14
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x0e	; 14
_s5:
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x0b	; 11
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0d	; 13
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0d	; 13
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x0d	; 13
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x03	; 3
_s6:
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x0b	; 11
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0d	; 13
_s7:
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x02	; 2
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x0d	; 13
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x0b	; 11
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x0c	; 12
_s8:
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0e	; 14
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0a	; 10
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x0b	; 11
_e:
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x01	; 1
_p:
	.db #0x10	; 16
	.db #0x07	; 7
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x1d	; 29
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x11	; 17
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x17	; 23
	.db #0x1a	; 26
	.db #0x05	; 5
	.db #0x12	; 18
	.db #0x1f	; 31
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x0e	; 14
	.db #0x20	; 32
	.db #0x1b	; 27
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x13	; 19
	.db #0x0d	; 13
	.db #0x1e	; 30
	.db #0x06	; 6
	.db #0x16	; 22
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x19	; 25
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
