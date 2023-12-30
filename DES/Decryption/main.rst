                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _p
                                     12 	.globl _e
                                     13 	.globl _s8
                                     14 	.globl _s7
                                     15 	.globl _s6
                                     16 	.globl _s5
                                     17 	.globl _s4
                                     18 	.globl _s3
                                     19 	.globl _s2
                                     20 	.globl _s1
                                     21 	.globl _fp
                                     22 	.globl _ip
                                     23 	.globl _pc2
                                     24 	.globl _pc1
                                     25 	.globl _main
                                     26 	.globl _rotate
                                     27 	.globl _G_Function
                                     28 	.globl _spi_receive
                                     29 	.globl _spi_init
                                     30 	.globl _spi_delay
                                     31 	.globl _TR1
                                     32 	.globl _RI
                                     33 	.globl _TI
                                     34 	.globl _d
                                     35 	.globl _c
                                     36 	.globl _b
                                     37 	.globl _a
                                     38 	.globl _RXD
                                     39 	.globl _TXD
                                     40 	.globl _miso
                                     41 	.globl _mosi
                                     42 	.globl _sclk
                                     43 	.globl _cs
                                     44 	.globl _TL1
                                     45 	.globl _TH1
                                     46 	.globl _TMOD
                                     47 	.globl _SBUF
                                     48 	.globl _SCON
                                     49 	.globl _P3
                                     50 	.globl _P2
                                     51 	.globl _final_original_key
                                     52 	.globl _final_plain_text
                                     53 	.globl _Temp
                                     54 	.globl _temp
                                     55 	.globl _i
                                     56 	.globl _arr
                                     57 ;--------------------------------------------------------
                                     58 ; special function registers
                                     59 ;--------------------------------------------------------
                                     60 	.area RSEG    (ABS,DATA)
      000000                         61 	.org 0x0000
                           0000A0    62 _P2	=	0x00a0
                           0000B0    63 _P3	=	0x00b0
                           000098    64 _SCON	=	0x0098
                           000099    65 _SBUF	=	0x0099
                           000089    66 _TMOD	=	0x0089
                           00008D    67 _TH1	=	0x008d
                           00008B    68 _TL1	=	0x008b
                                     69 ;--------------------------------------------------------
                                     70 ; special function bits
                                     71 ;--------------------------------------------------------
                                     72 	.area RSEG    (ABS,DATA)
      000000                         73 	.org 0x0000
                           0000A0    74 _cs	=	0x00a0
                           0000A1    75 _sclk	=	0x00a1
                           0000A2    76 _mosi	=	0x00a2
                           0000A3    77 _miso	=	0x00a3
                           0000B1    78 _TXD	=	0x00b1
                           0000B0    79 _RXD	=	0x00b0
                           0000B2    80 _a	=	0x00b2
                           0000B3    81 _b	=	0x00b3
                           0000B4    82 _c	=	0x00b4
                           0000B5    83 _d	=	0x00b5
                           000099    84 _TI	=	0x0099
                           000098    85 _RI	=	0x0098
                           00008E    86 _TR1	=	0x008e
                                     87 ;--------------------------------------------------------
                                     88 ; overlayable register banks
                                     89 ;--------------------------------------------------------
                                     90 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         91 	.ds 8
                                     92 ;--------------------------------------------------------
                                     93 ; internal ram data
                                     94 ;--------------------------------------------------------
                                     95 	.area DSEG    (DATA)
      000008                         96 _arr::
      000008                         97 	.ds 16
      000018                         98 _i::
      000018                         99 	.ds 1
      000019                        100 _temp::
      000019                        101 	.ds 1
      00001A                        102 _Temp::
      00001A                        103 	.ds 4
      00001E                        104 _final_plain_text::
      00001E                        105 	.ds 8
      000026                        106 _final_original_key::
      000026                        107 	.ds 8
                                    108 ;--------------------------------------------------------
                                    109 ; overlayable items in internal ram
                                    110 ;--------------------------------------------------------
                                    111 ;--------------------------------------------------------
                                    112 ; Stack segment in internal ram
                                    113 ;--------------------------------------------------------
                                    114 	.area SSEG
      00002F                        115 __start__stack:
      00002F                        116 	.ds	1
                                    117 
                                    118 ;--------------------------------------------------------
                                    119 ; indirectly addressable internal ram data
                                    120 ;--------------------------------------------------------
                                    121 	.area ISEG    (DATA)
                                    122 ;--------------------------------------------------------
                                    123 ; absolute internal ram data
                                    124 ;--------------------------------------------------------
                                    125 	.area IABS    (ABS,DATA)
                                    126 	.area IABS    (ABS,DATA)
                                    127 ;--------------------------------------------------------
                                    128 ; bit data
                                    129 ;--------------------------------------------------------
                                    130 	.area BSEG    (BIT)
                                    131 ;--------------------------------------------------------
                                    132 ; paged external ram data
                                    133 ;--------------------------------------------------------
                                    134 	.area PSEG    (PAG,XDATA)
                                    135 ;--------------------------------------------------------
                                    136 ; uninitialized external ram data
                                    137 ;--------------------------------------------------------
                                    138 	.area XSEG    (XDATA)
                                    139 ;--------------------------------------------------------
                                    140 ; absolute external ram data
                                    141 ;--------------------------------------------------------
                                    142 	.area XABS    (ABS,XDATA)
                                    143 ;--------------------------------------------------------
                                    144 ; initialized external ram data
                                    145 ;--------------------------------------------------------
                                    146 	.area XISEG   (XDATA)
                                    147 	.area HOME    (CODE)
                                    148 	.area GSINIT0 (CODE)
                                    149 	.area GSINIT1 (CODE)
                                    150 	.area GSINIT2 (CODE)
                                    151 	.area GSINIT3 (CODE)
                                    152 	.area GSINIT4 (CODE)
                                    153 	.area GSINIT5 (CODE)
                                    154 	.area GSINIT  (CODE)
                                    155 	.area GSFINAL (CODE)
                                    156 	.area CSEG    (CODE)
                                    157 ;--------------------------------------------------------
                                    158 ; interrupt vector
                                    159 ;--------------------------------------------------------
                                    160 	.area HOME    (CODE)
      000000                        161 __interrupt_vect:
      000000 02 00 06         [24]  162 	ljmp	__sdcc_gsinit_startup
                                    163 ;--------------------------------------------------------
                                    164 ; global & static initialisations
                                    165 ;--------------------------------------------------------
                                    166 	.area HOME    (CODE)
                                    167 	.area GSINIT  (CODE)
                                    168 	.area GSFINAL (CODE)
                                    169 	.area GSINIT  (CODE)
                                    170 	.globl __sdcc_gsinit_startup
                                    171 	.globl __sdcc_program_startup
                                    172 	.globl __start__stack
                                    173 	.globl __mcs51_genXINIT
                                    174 	.globl __mcs51_genXRAMCLEAR
                                    175 	.globl __mcs51_genRAMCLEAR
                                    176 ;	main.c:301: __code uint8* arr[8]={s1,s2,s3,s4,s5,s6,s7,s8}; 
      00005F 75 08 C4         [24]  177 	mov	(_arr + 0),#_s1
      000062 75 09 16         [24]  178 	mov	(_arr + 1),#(_s1 >> 8)
      000065 75 0A 04         [24]  179 	mov	((_arr + 0x0002) + 0),#_s2
      000068 75 0B 17         [24]  180 	mov	((_arr + 0x0002) + 1),#(_s2 >> 8)
      00006B 75 0C 44         [24]  181 	mov	((_arr + 0x0004) + 0),#_s3
      00006E 75 0D 17         [24]  182 	mov	((_arr + 0x0004) + 1),#(_s3 >> 8)
      000071 75 0E 84         [24]  183 	mov	((_arr + 0x0006) + 0),#_s4
      000074 75 0F 17         [24]  184 	mov	((_arr + 0x0006) + 1),#(_s4 >> 8)
      000077 75 10 C4         [24]  185 	mov	((_arr + 0x0008) + 0),#_s5
      00007A 75 11 17         [24]  186 	mov	((_arr + 0x0008) + 1),#(_s5 >> 8)
      00007D 75 12 04         [24]  187 	mov	((_arr + 0x000a) + 0),#_s6
      000080 75 13 18         [24]  188 	mov	((_arr + 0x000a) + 1),#(_s6 >> 8)
      000083 75 14 44         [24]  189 	mov	((_arr + 0x000c) + 0),#_s7
      000086 75 15 18         [24]  190 	mov	((_arr + 0x000c) + 1),#(_s7 >> 8)
      000089 75 16 84         [24]  191 	mov	((_arr + 0x000e) + 0),#_s8
      00008C 75 17 18         [24]  192 	mov	((_arr + 0x000e) + 1),#(_s8 >> 8)
                                    193 ;	main.c:303: uint32 Temp = 0;
      00008F E4               [12]  194 	clr	a
      000090 F5 1A            [12]  195 	mov	_Temp,a
      000092 F5 1B            [12]  196 	mov	(_Temp + 1),a
      000094 F5 1C            [12]  197 	mov	(_Temp + 2),a
      000096 F5 1D            [12]  198 	mov	(_Temp + 3),a
                                    199 ;	main.c:581: DATA final_plain_text = {.Array = {0x76, 0x35 ,0x49 ,0xd3, 0x8b, 0x57, 0xc, 0xe}};
      000098 75 1E 76         [24]  200 	mov	_final_plain_text,#0x76
      00009B 75 1F 35         [24]  201 	mov	(_final_plain_text + 0x0001),#0x35
      00009E 75 20 49         [24]  202 	mov	(_final_plain_text + 0x0002),#0x49
      0000A1 75 21 D3         [24]  203 	mov	(_final_plain_text + 0x0003),#0xd3
      0000A4 75 22 8B         [24]  204 	mov	(_final_plain_text + 0x0004),#0x8b
      0000A7 75 23 57         [24]  205 	mov	(_final_plain_text + 0x0005),#0x57
      0000AA 75 24 0C         [24]  206 	mov	(_final_plain_text + 0x0006),#0x0c
      0000AD 75 25 0E         [24]  207 	mov	(_final_plain_text + 0x0007),#0x0e
                                    208 ;	main.c:582: DATA final_original_key =  {.Array = {0x4b,0x41,0x53,0x48,0x49,0x53,0x41,0x42}};
      0000B0 75 26 4B         [24]  209 	mov	_final_original_key,#0x4b
      0000B3 75 27 41         [24]  210 	mov	(_final_original_key + 0x0001),#0x41
      0000B6 75 28 53         [24]  211 	mov	(_final_original_key + 0x0002),#0x53
      0000B9 75 29 48         [24]  212 	mov	(_final_original_key + 0x0003),#0x48
      0000BC 75 2A 49         [24]  213 	mov	(_final_original_key + 0x0004),#0x49
      0000BF 75 2B 53         [24]  214 	mov	(_final_original_key + 0x0005),#0x53
      0000C2 75 2C 41         [24]  215 	mov	(_final_original_key + 0x0006),#0x41
      0000C5 75 2D 42         [24]  216 	mov	(_final_original_key + 0x0007),#0x42
                                    217 	.area GSFINAL (CODE)
      0000C8 02 00 03         [24]  218 	ljmp	__sdcc_program_startup
                                    219 ;--------------------------------------------------------
                                    220 ; Home
                                    221 ;--------------------------------------------------------
                                    222 	.area HOME    (CODE)
                                    223 	.area HOME    (CODE)
      000003                        224 __sdcc_program_startup:
      000003 02 0F 0F         [24]  225 	ljmp	_main
                                    226 ;	return from main will return to caller
                                    227 ;--------------------------------------------------------
                                    228 ; code
                                    229 ;--------------------------------------------------------
                                    230 	.area CSEG    (CODE)
                                    231 ;------------------------------------------------------------
                                    232 ;Allocation info for local variables in function 'spi_delay'
                                    233 ;------------------------------------------------------------
                                    234 ;j                         Allocated to registers r7 
                                    235 ;------------------------------------------------------------
                                    236 ;	main.c:118: void spi_delay (void){
                                    237 ;	-----------------------------------------
                                    238 ;	 function spi_delay
                                    239 ;	-----------------------------------------
      0000CB                        240 _spi_delay:
                           000007   241 	ar7 = 0x07
                           000006   242 	ar6 = 0x06
                           000005   243 	ar5 = 0x05
                           000004   244 	ar4 = 0x04
                           000003   245 	ar3 = 0x03
                           000002   246 	ar2 = 0x02
                           000001   247 	ar1 = 0x01
                           000000   248 	ar0 = 0x00
                                    249 ;	main.c:120: for (j = 0; j <2 ; j++);
      0000CB 7F 02            [12]  250 	mov	r7,#0x02
      0000CD                        251 00104$:
      0000CD DF FE            [24]  252 	djnz	r7,00104$
                                    253 ;	main.c:121: }
      0000CF 22               [24]  254 	ret
                                    255 ;------------------------------------------------------------
                                    256 ;Allocation info for local variables in function 'spi_init'
                                    257 ;------------------------------------------------------------
                                    258 ;	main.c:123: void spi_init (void){
                                    259 ;	-----------------------------------------
                                    260 ;	 function spi_init
                                    261 ;	-----------------------------------------
      0000D0                        262 _spi_init:
                                    263 ;	main.c:124: cs   = 1;
                                    264 ;	assignBit
      0000D0 D2 A0            [12]  265 	setb	_cs
                                    266 ;	main.c:125: cs   = 0;
                                    267 ;	assignBit
      0000D2 C2 A0            [12]  268 	clr	_cs
                                    269 ;	main.c:126: sclk = 1;
                                    270 ;	assignBit
      0000D4 D2 A1            [12]  271 	setb	_sclk
                                    272 ;	main.c:127: sclk = 0;
                                    273 ;	assignBit
      0000D6 C2 A1            [12]  274 	clr	_sclk
                                    275 ;	main.c:128: mosi = 1; 
                                    276 ;	assignBit
      0000D8 D2 A2            [12]  277 	setb	_mosi
                                    278 ;	main.c:129: miso = 0;
                                    279 ;	assignBit
      0000DA C2 A3            [12]  280 	clr	_miso
                                    281 ;	main.c:130: }
      0000DC 22               [24]  282 	ret
                                    283 ;------------------------------------------------------------
                                    284 ;Allocation info for local variables in function 'spi_receive'
                                    285 ;------------------------------------------------------------
                                    286 ;byte                      Allocated to registers r5 r6 r7 
                                    287 ;ir                        Allocated to registers r4 
                                    288 ;x                         Allocated to stack - _bp +1
                                    289 ;------------------------------------------------------------
                                    290 ;	main.c:132: void spi_receive (char *byte){
                                    291 ;	-----------------------------------------
                                    292 ;	 function spi_receive
                                    293 ;	-----------------------------------------
      0000DD                        294 _spi_receive:
      0000DD C0 2E            [24]  295 	push	_bp
      0000DF 85 81 2E         [24]  296 	mov	_bp,sp
      0000E2 05 81            [12]  297 	inc	sp
      0000E4 AD 82            [24]  298 	mov	r5,dpl
      0000E6 AE 83            [24]  299 	mov	r6,dph
      0000E8 AF F0            [24]  300 	mov	r7,b
                                    301 ;	main.c:134: while (cs == 0);
      0000EA                        302 00101$:
      0000EA 30 A0 FD         [24]  303 	jnb	_cs,00101$
                                    304 ;	main.c:136: while (sclk == 0);
      0000ED 7C 00            [12]  305 	mov	r4,#0x00
      0000EF                        306 00104$:
      0000EF 30 A1 FD         [24]  307 	jnb	_sclk,00104$
                                    308 ;	main.c:137: x = mosi;
      0000F2 A8 2E            [24]  309 	mov	r0,_bp
      0000F4 08               [12]  310 	inc	r0
      0000F5 A2 A2            [12]  311 	mov	c,_mosi
      0000F7 E4               [12]  312 	clr	a
      0000F8 33               [12]  313 	rlc	a
      0000F9 F6               [12]  314 	mov	@r0,a
                                    315 ;	main.c:138: spi_delay ();
      0000FA C0 07            [24]  316 	push	ar7
      0000FC C0 06            [24]  317 	push	ar6
      0000FE C0 05            [24]  318 	push	ar5
      000100 C0 04            [24]  319 	push	ar4
      000102 12 00 CB         [24]  320 	lcall	_spi_delay
      000105 D0 04            [24]  321 	pop	ar4
      000107 D0 05            [24]  322 	pop	ar5
      000109 D0 06            [24]  323 	pop	ar6
      00010B D0 07            [24]  324 	pop	ar7
                                    325 ;	main.c:139: *byte = ((*byte & ~(1<<(ir))) | (x<<(ir)));
      00010D 8D 82            [24]  326 	mov	dpl,r5
      00010F 8E 83            [24]  327 	mov	dph,r6
      000111 8F F0            [24]  328 	mov	b,r7
      000113 12 14 CC         [24]  329 	lcall	__gptrget
      000116 FA               [12]  330 	mov	r2,a
      000117 8C 03            [24]  331 	mov	ar3,r4
      000119 8B F0            [24]  332 	mov	b,r3
      00011B 05 F0            [12]  333 	inc	b
      00011D 74 01            [12]  334 	mov	a,#0x01
      00011F 80 02            [24]  335 	sjmp	00133$
      000121                        336 00131$:
      000121 25 E0            [12]  337 	add	a,acc
      000123                        338 00133$:
      000123 D5 F0 FB         [24]  339 	djnz	b,00131$
      000126 F4               [12]  340 	cpl	a
      000127 52 02            [12]  341 	anl	ar2,a
      000129 8C F0            [24]  342 	mov	b,r4
      00012B 05 F0            [12]  343 	inc	b
      00012D A8 2E            [24]  344 	mov	r0,_bp
      00012F 08               [12]  345 	inc	r0
      000130 E6               [12]  346 	mov	a,@r0
      000131 80 02            [24]  347 	sjmp	00136$
      000133                        348 00134$:
      000133 25 E0            [12]  349 	add	a,acc
      000135                        350 00136$:
      000135 D5 F0 FB         [24]  351 	djnz	b,00134$
      000138 42 02            [12]  352 	orl	ar2,a
      00013A 8D 82            [24]  353 	mov	dpl,r5
      00013C 8E 83            [24]  354 	mov	dph,r6
      00013E 8F F0            [24]  355 	mov	b,r7
      000140 EA               [12]  356 	mov	a,r2
      000141 12 14 8F         [24]  357 	lcall	__gptrput
                                    358 ;	main.c:135: for (ir = 0 ; ir <8 ; ir++){
      000144 0C               [12]  359 	inc	r4
      000145 BC 08 00         [24]  360 	cjne	r4,#0x08,00137$
      000148                        361 00137$:
      000148 40 A5            [24]  362 	jc	00104$
                                    363 ;	main.c:142: }
      00014A 15 81            [12]  364 	dec	sp
      00014C D0 2E            [24]  365 	pop	_bp
      00014E 22               [24]  366 	ret
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'Permutation'
                                    369 ;------------------------------------------------------------
                                    370 ;permuted_text             Allocated to stack - _bp -5
                                    371 ;type                      Allocated to stack - _bp -6
                                    372 ;table                     Allocated to stack - _bp -9
                                    373 ;plain_text                Allocated to stack - _bp +1
                                    374 ;sloc0                     Allocated to stack - _bp +4
                                    375 ;------------------------------------------------------------
                                    376 ;	main.c:308: static void Permutation ( DATA *plain_text,DATA *permuted_text,uint8 type,uint8 *table){
                                    377 ;	-----------------------------------------
                                    378 ;	 function Permutation
                                    379 ;	-----------------------------------------
      00014F                        380 _Permutation:
      00014F C0 2E            [24]  381 	push	_bp
      000151 85 81 2E         [24]  382 	mov	_bp,sp
      000154 C0 82            [24]  383 	push	dpl
      000156 C0 83            [24]  384 	push	dph
      000158 C0 F0            [24]  385 	push	b
      00015A 05 81            [12]  386 	inc	sp
      00015C 05 81            [12]  387 	inc	sp
      00015E 05 81            [12]  388 	inc	sp
                                    389 ;	main.c:309: for (i = 0 ;i < type ; i++){
      000160 75 18 00         [24]  390 	mov	_i,#0x00
      000163                        391 00103$:
      000163 E5 2E            [12]  392 	mov	a,_bp
      000165 24 FA            [12]  393 	add	a,#0xfa
      000167 F8               [12]  394 	mov	r0,a
      000168 C3               [12]  395 	clr	c
      000169 E5 18            [12]  396 	mov	a,_i
      00016B 96               [12]  397 	subb	a,@r0
      00016C 40 03            [24]  398 	jc	00115$
      00016E 02 02 BD         [24]  399 	ljmp	00105$
      000171                        400 00115$:
                                    401 ;	main.c:312: temp = GET_BIT_ARRAY(plain_text->Array[((table[i] -1) / 8)],((table[i] -1) % 8));
      000171 E5 2E            [12]  402 	mov	a,_bp
      000173 24 F7            [12]  403 	add	a,#0xf7
      000175 F8               [12]  404 	mov	r0,a
      000176 E5 18            [12]  405 	mov	a,_i
      000178 26               [12]  406 	add	a,@r0
      000179 FA               [12]  407 	mov	r2,a
      00017A E4               [12]  408 	clr	a
      00017B 08               [12]  409 	inc	r0
      00017C 36               [12]  410 	addc	a,@r0
      00017D FB               [12]  411 	mov	r3,a
      00017E 08               [12]  412 	inc	r0
      00017F 86 04            [24]  413 	mov	ar4,@r0
      000181 8A 82            [24]  414 	mov	dpl,r2
      000183 8B 83            [24]  415 	mov	dph,r3
      000185 8C F0            [24]  416 	mov	b,r4
      000187 12 14 CC         [24]  417 	lcall	__gptrget
      00018A FA               [12]  418 	mov	r2,a
      00018B 7C 00            [12]  419 	mov	r4,#0x00
      00018D 1A               [12]  420 	dec	r2
      00018E BA FF 01         [24]  421 	cjne	r2,#0xff,00116$
      000191 1C               [12]  422 	dec	r4
      000192                        423 00116$:
      000192 C0 04            [24]  424 	push	ar4
      000194 C0 02            [24]  425 	push	ar2
      000196 74 08            [12]  426 	mov	a,#0x08
      000198 C0 E0            [24]  427 	push	acc
      00019A E4               [12]  428 	clr	a
      00019B C0 E0            [24]  429 	push	acc
      00019D 8A 82            [24]  430 	mov	dpl,r2
      00019F 8C 83            [24]  431 	mov	dph,r4
      0001A1 12 15 25         [24]  432 	lcall	__divsint
      0001A4 AB 82            [24]  433 	mov	r3,dpl
      0001A6 AF 83            [24]  434 	mov	r7,dph
      0001A8 15 81            [12]  435 	dec	sp
      0001AA 15 81            [12]  436 	dec	sp
      0001AC D0 02            [24]  437 	pop	ar2
      0001AE D0 04            [24]  438 	pop	ar4
      0001B0 A8 2E            [24]  439 	mov	r0,_bp
      0001B2 08               [12]  440 	inc	r0
      0001B3 EB               [12]  441 	mov	a,r3
      0001B4 26               [12]  442 	add	a,@r0
      0001B5 FB               [12]  443 	mov	r3,a
      0001B6 EF               [12]  444 	mov	a,r7
      0001B7 08               [12]  445 	inc	r0
      0001B8 36               [12]  446 	addc	a,@r0
      0001B9 FF               [12]  447 	mov	r7,a
      0001BA 08               [12]  448 	inc	r0
      0001BB 86 06            [24]  449 	mov	ar6,@r0
      0001BD 8B 82            [24]  450 	mov	dpl,r3
      0001BF 8F 83            [24]  451 	mov	dph,r7
      0001C1 8E F0            [24]  452 	mov	b,r6
      0001C3 12 14 CC         [24]  453 	lcall	__gptrget
      0001C6 FB               [12]  454 	mov	r3,a
      0001C7 7F 00            [12]  455 	mov	r7,#0x00
      0001C9 C0 07            [24]  456 	push	ar7
      0001CB C0 03            [24]  457 	push	ar3
      0001CD 74 08            [12]  458 	mov	a,#0x08
      0001CF C0 E0            [24]  459 	push	acc
      0001D1 E4               [12]  460 	clr	a
      0001D2 C0 E0            [24]  461 	push	acc
      0001D4 8A 82            [24]  462 	mov	dpl,r2
      0001D6 8C 83            [24]  463 	mov	dph,r4
      0001D8 12 14 E8         [24]  464 	lcall	__modsint
      0001DB AD 82            [24]  465 	mov	r5,dpl
      0001DD 15 81            [12]  466 	dec	sp
      0001DF 15 81            [12]  467 	dec	sp
      0001E1 D0 03            [24]  468 	pop	ar3
      0001E3 D0 07            [24]  469 	pop	ar7
      0001E5 8D F0            [24]  470 	mov	b,r5
      0001E7 05 F0            [12]  471 	inc	b
      0001E9 80 06            [24]  472 	sjmp	00118$
      0001EB                        473 00117$:
      0001EB EB               [12]  474 	mov	a,r3
      0001EC 2B               [12]  475 	add	a,r3
      0001ED FB               [12]  476 	mov	r3,a
      0001EE EF               [12]  477 	mov	a,r7
      0001EF 33               [12]  478 	rlc	a
      0001F0 FF               [12]  479 	mov	r7,a
      0001F1                        480 00118$:
      0001F1 D5 F0 F7         [24]  481 	djnz	b,00117$
      0001F4 53 03 80         [24]  482 	anl	ar3,#0x80
      0001F7 E4               [12]  483 	clr	a
      0001F8 A2 E7            [12]  484 	mov	c,acc.7
      0001FA CB               [12]  485 	xch	a,r3
      0001FB 33               [12]  486 	rlc	a
      0001FC CB               [12]  487 	xch	a,r3
      0001FD 33               [12]  488 	rlc	a
      0001FE CB               [12]  489 	xch	a,r3
      0001FF 54 01            [12]  490 	anl	a,#0x01
      000201 30 E0 02         [24]  491 	jnb	acc.0,00119$
      000204 44 FE            [12]  492 	orl	a,#0xfffffffe
      000206                        493 00119$:
      000206 8B 19            [24]  494 	mov	_temp,r3
                                    495 ;	main.c:315: WRITE_BIT_ARRAY(permuted_text->Array[(i/8)],(i%8),temp);
      000208 E5 2E            [12]  496 	mov	a,_bp
      00020A 24 FB            [12]  497 	add	a,#0xfb
      00020C F8               [12]  498 	mov	r0,a
      00020D E5 2E            [12]  499 	mov	a,_bp
      00020F 24 04            [12]  500 	add	a,#0x04
      000211 F9               [12]  501 	mov	r1,a
      000212 E6               [12]  502 	mov	a,@r0
      000213 F7               [12]  503 	mov	@r1,a
      000214 08               [12]  504 	inc	r0
      000215 E6               [12]  505 	mov	a,@r0
      000216 09               [12]  506 	inc	r1
      000217 F7               [12]  507 	mov	@r1,a
      000218 08               [12]  508 	inc	r0
      000219 E6               [12]  509 	mov	a,@r0
      00021A 09               [12]  510 	inc	r1
      00021B F7               [12]  511 	mov	@r1,a
      00021C AB 18            [24]  512 	mov	r3,_i
      00021E 7C 00            [12]  513 	mov	r4,#0x00
      000220 C0 04            [24]  514 	push	ar4
      000222 C0 03            [24]  515 	push	ar3
      000224 74 08            [12]  516 	mov	a,#0x08
      000226 C0 E0            [24]  517 	push	acc
      000228 E4               [12]  518 	clr	a
      000229 C0 E0            [24]  519 	push	acc
      00022B 8B 82            [24]  520 	mov	dpl,r3
      00022D 8C 83            [24]  521 	mov	dph,r4
      00022F 12 15 25         [24]  522 	lcall	__divsint
      000232 AA 82            [24]  523 	mov	r2,dpl
      000234 AF 83            [24]  524 	mov	r7,dph
      000236 15 81            [12]  525 	dec	sp
      000238 15 81            [12]  526 	dec	sp
      00023A D0 03            [24]  527 	pop	ar3
      00023C D0 04            [24]  528 	pop	ar4
      00023E E5 2E            [12]  529 	mov	a,_bp
      000240 24 04            [12]  530 	add	a,#0x04
      000242 F8               [12]  531 	mov	r0,a
      000243 EA               [12]  532 	mov	a,r2
      000244 26               [12]  533 	add	a,@r0
      000245 FA               [12]  534 	mov	r2,a
      000246 EF               [12]  535 	mov	a,r7
      000247 08               [12]  536 	inc	r0
      000248 36               [12]  537 	addc	a,@r0
      000249 FF               [12]  538 	mov	r7,a
      00024A 08               [12]  539 	inc	r0
      00024B 86 06            [24]  540 	mov	ar6,@r0
      00024D E5 2E            [12]  541 	mov	a,_bp
      00024F 24 04            [12]  542 	add	a,#0x04
      000251 F8               [12]  543 	mov	r0,a
      000252 74 07            [12]  544 	mov	a,#0x07
      000254 5B               [12]  545 	anl	a,r3
      000255 F6               [12]  546 	mov	@r0,a
      000256 08               [12]  547 	inc	r0
      000257 76 00            [12]  548 	mov	@r0,#0x00
      000259 E5 2E            [12]  549 	mov	a,_bp
      00025B 24 04            [12]  550 	add	a,#0x04
      00025D F8               [12]  551 	mov	r0,a
      00025E 86 F0            [24]  552 	mov	b,@r0
      000260 05 F0            [12]  553 	inc	b
      000262 7C 80            [12]  554 	mov	r4,#0x80
      000264 E4               [12]  555 	clr	a
      000265 FD               [12]  556 	mov	r5,a
      000266 33               [12]  557 	rlc	a
      000267 92 D2            [24]  558 	mov	ov,c
      000269 80 08            [24]  559 	sjmp	00121$
      00026B                        560 00120$:
      00026B A2 D2            [12]  561 	mov	c,ov
      00026D ED               [12]  562 	mov	a,r5
      00026E 13               [12]  563 	rrc	a
      00026F FD               [12]  564 	mov	r5,a
      000270 EC               [12]  565 	mov	a,r4
      000271 13               [12]  566 	rrc	a
      000272 FC               [12]  567 	mov	r4,a
      000273                        568 00121$:
      000273 D5 F0 F5         [24]  569 	djnz	b,00120$
      000276 EC               [12]  570 	mov	a,r4
      000277 F4               [12]  571 	cpl	a
      000278 FC               [12]  572 	mov	r4,a
      000279 8A 82            [24]  573 	mov	dpl,r2
      00027B 8F 83            [24]  574 	mov	dph,r7
      00027D 8E F0            [24]  575 	mov	b,r6
      00027F 12 14 CC         [24]  576 	lcall	__gptrget
      000282 52 04            [12]  577 	anl	ar4,a
      000284 AB 19            [24]  578 	mov	r3,_temp
      000286 E4               [12]  579 	clr	a
      000287 54 01            [12]  580 	anl	a,#0x01
      000289 A2 E0            [12]  581 	mov	c,acc.0
      00028B CB               [12]  582 	xch	a,r3
      00028C 13               [12]  583 	rrc	a
      00028D CB               [12]  584 	xch	a,r3
      00028E 13               [12]  585 	rrc	a
      00028F CB               [12]  586 	xch	a,r3
      000290 FD               [12]  587 	mov	r5,a
      000291 E5 2E            [12]  588 	mov	a,_bp
      000293 24 04            [12]  589 	add	a,#0x04
      000295 F8               [12]  590 	mov	r0,a
      000296 86 F0            [24]  591 	mov	b,@r0
      000298 05 F0            [12]  592 	inc	b
      00029A ED               [12]  593 	mov	a,r5
      00029B 33               [12]  594 	rlc	a
      00029C 92 D2            [24]  595 	mov	ov,c
      00029E 80 08            [24]  596 	sjmp	00123$
      0002A0                        597 00122$:
      0002A0 A2 D2            [12]  598 	mov	c,ov
      0002A2 ED               [12]  599 	mov	a,r5
      0002A3 13               [12]  600 	rrc	a
      0002A4 FD               [12]  601 	mov	r5,a
      0002A5 EB               [12]  602 	mov	a,r3
      0002A6 13               [12]  603 	rrc	a
      0002A7 FB               [12]  604 	mov	r3,a
      0002A8                        605 00123$:
      0002A8 D5 F0 F5         [24]  606 	djnz	b,00122$
      0002AB EB               [12]  607 	mov	a,r3
      0002AC 42 04            [12]  608 	orl	ar4,a
      0002AE 8A 82            [24]  609 	mov	dpl,r2
      0002B0 8F 83            [24]  610 	mov	dph,r7
      0002B2 8E F0            [24]  611 	mov	b,r6
      0002B4 EC               [12]  612 	mov	a,r4
      0002B5 12 14 8F         [24]  613 	lcall	__gptrput
                                    614 ;	main.c:309: for (i = 0 ;i < type ; i++){
      0002B8 05 18            [12]  615 	inc	_i
      0002BA 02 01 63         [24]  616 	ljmp	00103$
      0002BD                        617 00105$:
                                    618 ;	main.c:317: }
      0002BD 85 2E 81         [24]  619 	mov	sp,_bp
      0002C0 D0 2E            [24]  620 	pop	_bp
      0002C2 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'G_Function'
                                    624 ;------------------------------------------------------------
                                    625 ;sub_key                   Allocated to stack - _bp -5
                                    626 ;out_g                     Allocated to stack - _bp -8
                                    627 ;round_text                Allocated to registers r5 r6 r7 
                                    628 ;j                         Allocated to stack - _bp +16
                                    629 ;in_s_box                  Allocated to registers r3 
                                    630 ;out_s_box                 Allocated to registers r3 
                                    631 ;raw_s                     Allocated to registers r2 
                                    632 ;column_s                  Allocated to registers r7 
                                    633 ;S_boxes_out               Allocated to registers r7 r6 r5 r4 
                                    634 ;sloc0                     Allocated to stack - _bp +1
                                    635 ;sloc1                     Allocated to stack - _bp +4
                                    636 ;sloc2                     Allocated to stack - _bp +8
                                    637 ;sloc3                     Allocated to stack - _bp +11
                                    638 ;sloc4                     Allocated to stack - _bp +24
                                    639 ;sloc5                     Allocated to stack - _bp +12
                                    640 ;------------------------------------------------------------
                                    641 ;	main.c:319: void G_Function (DATA *round_text,DATA *sub_key,DATA *out_g){
                                    642 ;	-----------------------------------------
                                    643 ;	 function G_Function
                                    644 ;	-----------------------------------------
      0002C3                        645 _G_Function:
      0002C3 C0 2E            [24]  646 	push	_bp
      0002C5 E5 81            [12]  647 	mov	a,sp
      0002C7 F5 2E            [12]  648 	mov	_bp,a
      0002C9 24 10            [12]  649 	add	a,#0x10
      0002CB F5 81            [12]  650 	mov	sp,a
      0002CD AD 82            [24]  651 	mov	r5,dpl
      0002CF AE 83            [24]  652 	mov	r6,dph
      0002D1 AF F0            [24]  653 	mov	r7,b
                                    654 ;	main.c:322: Temp = 0;
      0002D3 E4               [12]  655 	clr	a
      0002D4 F5 1A            [12]  656 	mov	_Temp,a
      0002D6 F5 1B            [12]  657 	mov	(_Temp + 1),a
      0002D8 F5 1C            [12]  658 	mov	(_Temp + 2),a
      0002DA F5 1D            [12]  659 	mov	(_Temp + 3),a
                                    660 ;	main.c:323: for (i = 4 ; i<8 ; i++){
      0002DC 75 18 04         [24]  661 	mov	_i,#0x04
      0002DF                        662 00107$:
                                    663 ;	main.c:324: Temp <<=8;
      0002DF 85 1C 1D         [24]  664 	mov	(_Temp + 3),(_Temp + 2)
      0002E2 85 1B 1C         [24]  665 	mov	(_Temp + 2),(_Temp + 1)
      0002E5 85 1A 1B         [24]  666 	mov	(_Temp + 1),_Temp
      0002E8 75 1A 00         [24]  667 	mov	_Temp,#0x00
                                    668 ;	main.c:325: Temp |= round_text->Array[i];
      0002EB E5 18            [12]  669 	mov	a,_i
      0002ED 2D               [12]  670 	add	a,r5
      0002EE FA               [12]  671 	mov	r2,a
      0002EF E4               [12]  672 	clr	a
      0002F0 3E               [12]  673 	addc	a,r6
      0002F1 FB               [12]  674 	mov	r3,a
      0002F2 8F 04            [24]  675 	mov	ar4,r7
      0002F4 8A 82            [24]  676 	mov	dpl,r2
      0002F6 8B 83            [24]  677 	mov	dph,r3
      0002F8 8C F0            [24]  678 	mov	b,r4
      0002FA 12 14 CC         [24]  679 	lcall	__gptrget
      0002FD FA               [12]  680 	mov	r2,a
      0002FE C0 05            [24]  681 	push	ar5
      000300 C0 06            [24]  682 	push	ar6
      000302 C0 07            [24]  683 	push	ar7
      000304 E4               [12]  684 	clr	a
      000305 FB               [12]  685 	mov	r3,a
      000306 FC               [12]  686 	mov	r4,a
      000307 FF               [12]  687 	mov	r7,a
      000308 EA               [12]  688 	mov	a,r2
      000309 42 1A            [12]  689 	orl	_Temp,a
      00030B EB               [12]  690 	mov	a,r3
      00030C 42 1B            [12]  691 	orl	(_Temp + 1),a
      00030E EC               [12]  692 	mov	a,r4
      00030F 42 1C            [12]  693 	orl	(_Temp + 2),a
      000311 EF               [12]  694 	mov	a,r7
      000312 42 1D            [12]  695 	orl	(_Temp + 3),a
                                    696 ;	main.c:323: for (i = 4 ; i<8 ; i++){
      000314 05 18            [12]  697 	inc	_i
      000316 C3               [12]  698 	clr	c
      000317 E5 18            [12]  699 	mov	a,_i
      000319 94 08            [12]  700 	subb	a,#0x08
      00031B D0 07            [24]  701 	pop	ar7
      00031D D0 06            [24]  702 	pop	ar6
      00031F D0 05            [24]  703 	pop	ar5
      000321 40 BC            [24]  704 	jc	00107$
                                    705 ;	main.c:328: for (i = 0 ;i <= 47 ; i++){ //arr = {f0 ,aa, f0, aa} >>> aa f0 aa f0
      000323 75 18 00         [24]  706 	mov	_i,#0x00
      000326 E5 2E            [12]  707 	mov	a,_bp
      000328 24 F8            [12]  708 	add	a,#0xf8
      00032A F8               [12]  709 	mov	r0,a
      00032B A9 2E            [24]  710 	mov	r1,_bp
      00032D 09               [12]  711 	inc	r1
      00032E E6               [12]  712 	mov	a,@r0
      00032F F7               [12]  713 	mov	@r1,a
      000330 08               [12]  714 	inc	r0
      000331 E6               [12]  715 	mov	a,@r0
      000332 09               [12]  716 	inc	r1
      000333 F7               [12]  717 	mov	@r1,a
      000334 08               [12]  718 	inc	r0
      000335 E6               [12]  719 	mov	a,@r0
      000336 09               [12]  720 	inc	r1
      000337 F7               [12]  721 	mov	@r1,a
      000338                        722 00109$:
                                    723 ;	main.c:330: temp =(uint8)(((Temp<<(e[i]-1)) & 0x80000000)>>31) ;
      000338 E5 18            [12]  724 	mov	a,_i
      00033A 90 18 C4         [24]  725 	mov	dptr,#_e
      00033D 93               [24]  726 	movc	a,@a+dptr
      00033E FC               [12]  727 	mov	r4,a
      00033F 1C               [12]  728 	dec	r4
      000340 8C F0            [24]  729 	mov	b,r4
      000342 05 F0            [12]  730 	inc	b
      000344 AF 1A            [24]  731 	mov	r7,_Temp
      000346 AE 1B            [24]  732 	mov	r6,(_Temp + 1)
      000348 AD 1C            [24]  733 	mov	r5,(_Temp + 2)
      00034A AC 1D            [24]  734 	mov	r4,(_Temp + 3)
      00034C 80 0C            [24]  735 	sjmp	00180$
      00034E                        736 00179$:
      00034E EF               [12]  737 	mov	a,r7
      00034F 2F               [12]  738 	add	a,r7
      000350 FF               [12]  739 	mov	r7,a
      000351 EE               [12]  740 	mov	a,r6
      000352 33               [12]  741 	rlc	a
      000353 FE               [12]  742 	mov	r6,a
      000354 ED               [12]  743 	mov	a,r5
      000355 33               [12]  744 	rlc	a
      000356 FD               [12]  745 	mov	r5,a
      000357 EC               [12]  746 	mov	a,r4
      000358 33               [12]  747 	rlc	a
      000359 FC               [12]  748 	mov	r4,a
      00035A                        749 00180$:
      00035A D5 F0 F1         [24]  750 	djnz	b,00179$
      00035D 53 04 80         [24]  751 	anl	ar4,#0x80
      000360 EC               [12]  752 	mov	a,r4
      000361 23               [12]  753 	rl	a
      000362 54 01            [12]  754 	anl	a,#0x01
      000364 FF               [12]  755 	mov	r7,a
      000365 7E 00            [12]  756 	mov	r6,#0x00
      000367 8F 19            [24]  757 	mov	_temp,r7
                                    758 ;	main.c:334: WRITE_BIT_ARRAY(out_g->Array[(i/8)],(i%8),temp); // 
      000369 AF 18            [24]  759 	mov	r7,_i
      00036B C0 07            [24]  760 	push	ar7
      00036D C0 06            [24]  761 	push	ar6
      00036F 74 08            [12]  762 	mov	a,#0x08
      000371 C0 E0            [24]  763 	push	acc
      000373 E4               [12]  764 	clr	a
      000374 C0 E0            [24]  765 	push	acc
      000376 8F 82            [24]  766 	mov	dpl,r7
      000378 8E 83            [24]  767 	mov	dph,r6
      00037A 12 15 25         [24]  768 	lcall	__divsint
      00037D AA 82            [24]  769 	mov	r2,dpl
      00037F AC 83            [24]  770 	mov	r4,dph
      000381 15 81            [12]  771 	dec	sp
      000383 15 81            [12]  772 	dec	sp
      000385 D0 06            [24]  773 	pop	ar6
      000387 D0 07            [24]  774 	pop	ar7
      000389 A8 2E            [24]  775 	mov	r0,_bp
      00038B 08               [12]  776 	inc	r0
      00038C E5 2E            [12]  777 	mov	a,_bp
      00038E 24 08            [12]  778 	add	a,#0x08
      000390 F9               [12]  779 	mov	r1,a
      000391 EA               [12]  780 	mov	a,r2
      000392 26               [12]  781 	add	a,@r0
      000393 F7               [12]  782 	mov	@r1,a
      000394 EC               [12]  783 	mov	a,r4
      000395 08               [12]  784 	inc	r0
      000396 36               [12]  785 	addc	a,@r0
      000397 09               [12]  786 	inc	r1
      000398 F7               [12]  787 	mov	@r1,a
      000399 08               [12]  788 	inc	r0
      00039A E6               [12]  789 	mov	a,@r0
      00039B 09               [12]  790 	inc	r1
      00039C F7               [12]  791 	mov	@r1,a
      00039D 53 07 07         [24]  792 	anl	ar7,#0x07
      0003A0 7E 00            [12]  793 	mov	r6,#0x00
      0003A2 8F F0            [24]  794 	mov	b,r7
      0003A4 05 F0            [12]  795 	inc	b
      0003A6 7A 80            [12]  796 	mov	r2,#0x80
      0003A8 E4               [12]  797 	clr	a
      0003A9 FC               [12]  798 	mov	r4,a
      0003AA 33               [12]  799 	rlc	a
      0003AB 92 D2            [24]  800 	mov	ov,c
      0003AD 80 08            [24]  801 	sjmp	00182$
      0003AF                        802 00181$:
      0003AF A2 D2            [12]  803 	mov	c,ov
      0003B1 EC               [12]  804 	mov	a,r4
      0003B2 13               [12]  805 	rrc	a
      0003B3 FC               [12]  806 	mov	r4,a
      0003B4 EA               [12]  807 	mov	a,r2
      0003B5 13               [12]  808 	rrc	a
      0003B6 FA               [12]  809 	mov	r2,a
      0003B7                        810 00182$:
      0003B7 D5 F0 F5         [24]  811 	djnz	b,00181$
      0003BA EA               [12]  812 	mov	a,r2
      0003BB F4               [12]  813 	cpl	a
      0003BC FA               [12]  814 	mov	r2,a
      0003BD E5 2E            [12]  815 	mov	a,_bp
      0003BF 24 08            [12]  816 	add	a,#0x08
      0003C1 F8               [12]  817 	mov	r0,a
      0003C2 86 82            [24]  818 	mov	dpl,@r0
      0003C4 08               [12]  819 	inc	r0
      0003C5 86 83            [24]  820 	mov	dph,@r0
      0003C7 08               [12]  821 	inc	r0
      0003C8 86 F0            [24]  822 	mov	b,@r0
      0003CA 12 14 CC         [24]  823 	lcall	__gptrget
      0003CD 52 02            [12]  824 	anl	ar2,a
      0003CF AB 19            [24]  825 	mov	r3,_temp
      0003D1 E4               [12]  826 	clr	a
      0003D2 C3               [12]  827 	clr	c
      0003D3 CB               [12]  828 	xch	a,r3
      0003D4 13               [12]  829 	rrc	a
      0003D5 CB               [12]  830 	xch	a,r3
      0003D6 13               [12]  831 	rrc	a
      0003D7 CB               [12]  832 	xch	a,r3
      0003D8 FC               [12]  833 	mov	r4,a
      0003D9 8F F0            [24]  834 	mov	b,r7
      0003DB 05 F0            [12]  835 	inc	b
      0003DD EC               [12]  836 	mov	a,r4
      0003DE 33               [12]  837 	rlc	a
      0003DF 92 D2            [24]  838 	mov	ov,c
      0003E1 80 08            [24]  839 	sjmp	00184$
      0003E3                        840 00183$:
      0003E3 A2 D2            [12]  841 	mov	c,ov
      0003E5 EC               [12]  842 	mov	a,r4
      0003E6 13               [12]  843 	rrc	a
      0003E7 FC               [12]  844 	mov	r4,a
      0003E8 EB               [12]  845 	mov	a,r3
      0003E9 13               [12]  846 	rrc	a
      0003EA FB               [12]  847 	mov	r3,a
      0003EB                        848 00184$:
      0003EB D5 F0 F5         [24]  849 	djnz	b,00183$
      0003EE EB               [12]  850 	mov	a,r3
      0003EF 42 02            [12]  851 	orl	ar2,a
      0003F1 E5 2E            [12]  852 	mov	a,_bp
      0003F3 24 08            [12]  853 	add	a,#0x08
      0003F5 F8               [12]  854 	mov	r0,a
      0003F6 86 82            [24]  855 	mov	dpl,@r0
      0003F8 08               [12]  856 	inc	r0
      0003F9 86 83            [24]  857 	mov	dph,@r0
      0003FB 08               [12]  858 	inc	r0
      0003FC 86 F0            [24]  859 	mov	b,@r0
      0003FE EA               [12]  860 	mov	a,r2
      0003FF 12 14 8F         [24]  861 	lcall	__gptrput
                                    862 ;	main.c:328: for (i = 0 ;i <= 47 ; i++){ //arr = {f0 ,aa, f0, aa} >>> aa f0 aa f0
      000402 05 18            [12]  863 	inc	_i
      000404 E5 18            [12]  864 	mov	a,_i
      000406 24 D0            [12]  865 	add	a,#0xff - 0x2f
      000408 40 03            [24]  866 	jc	00185$
      00040A 02 03 38         [24]  867 	ljmp	00109$
      00040D                        868 00185$:
                                    869 ;	main.c:339: for (i = 0; i<7 ;i++){
      00040D 75 18 00         [24]  870 	mov	_i,#0x00
      000410                        871 00111$:
                                    872 ;	main.c:340: out_g->Array[i] ^=sub_key->Array[i];
      000410 A8 2E            [24]  873 	mov	r0,_bp
      000412 08               [12]  874 	inc	r0
      000413 E5 18            [12]  875 	mov	a,_i
      000415 26               [12]  876 	add	a,@r0
      000416 FF               [12]  877 	mov	r7,a
      000417 E4               [12]  878 	clr	a
      000418 08               [12]  879 	inc	r0
      000419 36               [12]  880 	addc	a,@r0
      00041A FE               [12]  881 	mov	r6,a
      00041B 08               [12]  882 	inc	r0
      00041C 86 05            [24]  883 	mov	ar5,@r0
      00041E A8 2E            [24]  884 	mov	r0,_bp
      000420 08               [12]  885 	inc	r0
      000421 E5 2E            [12]  886 	mov	a,_bp
      000423 24 04            [12]  887 	add	a,#0x04
      000425 F9               [12]  888 	mov	r1,a
      000426 E5 18            [12]  889 	mov	a,_i
      000428 26               [12]  890 	add	a,@r0
      000429 F7               [12]  891 	mov	@r1,a
      00042A E4               [12]  892 	clr	a
      00042B 08               [12]  893 	inc	r0
      00042C 36               [12]  894 	addc	a,@r0
      00042D 09               [12]  895 	inc	r1
      00042E F7               [12]  896 	mov	@r1,a
      00042F 08               [12]  897 	inc	r0
      000430 E6               [12]  898 	mov	a,@r0
      000431 09               [12]  899 	inc	r1
      000432 F7               [12]  900 	mov	@r1,a
      000433 E5 2E            [12]  901 	mov	a,_bp
      000435 24 FB            [12]  902 	add	a,#0xfb
      000437 F8               [12]  903 	mov	r0,a
      000438 86 02            [24]  904 	mov	ar2,@r0
      00043A 08               [12]  905 	inc	r0
      00043B 86 03            [24]  906 	mov	ar3,@r0
      00043D 08               [12]  907 	inc	r0
      00043E 86 04            [24]  908 	mov	ar4,@r0
      000440 E5 18            [12]  909 	mov	a,_i
      000442 2A               [12]  910 	add	a,r2
      000443 FA               [12]  911 	mov	r2,a
      000444 E4               [12]  912 	clr	a
      000445 3B               [12]  913 	addc	a,r3
      000446 FB               [12]  914 	mov	r3,a
      000447 8A 82            [24]  915 	mov	dpl,r2
      000449 8B 83            [24]  916 	mov	dph,r3
      00044B 8C F0            [24]  917 	mov	b,r4
      00044D 12 14 CC         [24]  918 	lcall	__gptrget
      000450 FA               [12]  919 	mov	r2,a
      000451 E5 2E            [12]  920 	mov	a,_bp
      000453 24 04            [12]  921 	add	a,#0x04
      000455 F8               [12]  922 	mov	r0,a
      000456 86 82            [24]  923 	mov	dpl,@r0
      000458 08               [12]  924 	inc	r0
      000459 86 83            [24]  925 	mov	dph,@r0
      00045B 08               [12]  926 	inc	r0
      00045C 86 F0            [24]  927 	mov	b,@r0
      00045E 12 14 CC         [24]  928 	lcall	__gptrget
      000461 FC               [12]  929 	mov	r4,a
      000462 62 02            [12]  930 	xrl	ar2,a
      000464 8F 82            [24]  931 	mov	dpl,r7
      000466 8E 83            [24]  932 	mov	dph,r6
      000468 8D F0            [24]  933 	mov	b,r5
      00046A EA               [12]  934 	mov	a,r2
      00046B 12 14 8F         [24]  935 	lcall	__gptrput
                                    936 ;	main.c:339: for (i = 0; i<7 ;i++){
      00046E 05 18            [12]  937 	inc	_i
      000470 74 F9            [12]  938 	mov	a,#0x100 - 0x07
      000472 25 18            [12]  939 	add	a,_i
      000474 50 9A            [24]  940 	jnc	00111$
                                    941 ;	main.c:346: uint32 S_boxes_out = 0;				// Output of the s-boxes
      000476 E5 2E            [12]  942 	mov	a,_bp
      000478 24 04            [12]  943 	add	a,#0x04
      00047A F8               [12]  944 	mov	r0,a
      00047B E4               [12]  945 	clr	a
      00047C F6               [12]  946 	mov	@r0,a
      00047D 08               [12]  947 	inc	r0
      00047E F6               [12]  948 	mov	@r0,a
      00047F 08               [12]  949 	inc	r0
      000480 F6               [12]  950 	mov	@r0,a
      000481 08               [12]  951 	inc	r0
      000482 F6               [12]  952 	mov	@r0,a
                                    953 ;	main.c:347: for (j = 0; j < 8; j++){
      000483 E5 2E            [12]  954 	mov	a,_bp
      000485 24 10            [12]  955 	add	a,#0x10
      000487 F8               [12]  956 	mov	r0,a
      000488 76 00            [12]  957 	mov	@r0,#0x00
      00048A                        958 00116$:
                                    959 ;	main.c:348: in_s_box  = 0;
      00048A E5 2E            [12]  960 	mov	a,_bp
      00048C 24 0B            [12]  961 	add	a,#0x0b
      00048E F8               [12]  962 	mov	r0,a
      00048F 76 00            [12]  963 	mov	@r0,#0x00
                                    964 ;	main.c:352: for (i = j*6 ;i < (j*6+6) ; i++){                // 0 6    6 12      12 18   18 24       24 30        30 36      36 42   42 48   
      000491 E5 2E            [12]  965 	mov	a,_bp
      000493 24 10            [12]  966 	add	a,#0x10
      000495 F8               [12]  967 	mov	r0,a
      000496 E6               [12]  968 	mov	a,@r0
      000497 75 F0 06         [24]  969 	mov	b,#0x06
      00049A A4               [48]  970 	mul	ab
      00049B F5 18            [12]  971 	mov	_i,a
      00049D                        972 00114$:
      00049D E5 2E            [12]  973 	mov	a,_bp
      00049F 24 10            [12]  974 	add	a,#0x10
      0004A1 F8               [12]  975 	mov	r0,a
      0004A2 86 02            [24]  976 	mov	ar2,@r0
      0004A4 7B 00            [12]  977 	mov	r3,#0x00
      0004A6 C0 02            [24]  978 	push	ar2
      0004A8 C0 03            [24]  979 	push	ar3
      0004AA 90 00 06         [24]  980 	mov	dptr,#0x0006
      0004AD 12 14 AA         [24]  981 	lcall	__mulint
      0004B0 AA 82            [24]  982 	mov	r2,dpl
      0004B2 AB 83            [24]  983 	mov	r3,dph
      0004B4 15 81            [12]  984 	dec	sp
      0004B6 15 81            [12]  985 	dec	sp
      0004B8 74 06            [12]  986 	mov	a,#0x06
      0004BA 2A               [12]  987 	add	a,r2
      0004BB FA               [12]  988 	mov	r2,a
      0004BC E4               [12]  989 	clr	a
      0004BD 3B               [12]  990 	addc	a,r3
      0004BE FB               [12]  991 	mov	r3,a
      0004BF AF 18            [24]  992 	mov	r7,_i
      0004C1 7E 00            [12]  993 	mov	r6,#0x00
      0004C3 C3               [12]  994 	clr	c
      0004C4 EF               [12]  995 	mov	a,r7
      0004C5 9A               [12]  996 	subb	a,r2
      0004C6 EE               [12]  997 	mov	a,r6
      0004C7 64 80            [12]  998 	xrl	a,#0x80
      0004C9 8B F0            [24]  999 	mov	b,r3
      0004CB 63 F0 80         [24] 1000 	xrl	b,#0x80
      0004CE 95 F0            [12] 1001 	subb	a,b
      0004D0 50 79            [24] 1002 	jnc	00104$
                                   1003 ;	main.c:353: temp = GET_BIT_ARRAY(out_g->Array[(i/8)],(i%8));
      0004D2 C0 07            [24] 1004 	push	ar7
      0004D4 C0 06            [24] 1005 	push	ar6
      0004D6 74 08            [12] 1006 	mov	a,#0x08
      0004D8 C0 E0            [24] 1007 	push	acc
      0004DA E4               [12] 1008 	clr	a
      0004DB C0 E0            [24] 1009 	push	acc
      0004DD 8F 82            [24] 1010 	mov	dpl,r7
      0004DF 8E 83            [24] 1011 	mov	dph,r6
      0004E1 12 15 25         [24] 1012 	lcall	__divsint
      0004E4 AA 82            [24] 1013 	mov	r2,dpl
      0004E6 AC 83            [24] 1014 	mov	r4,dph
      0004E8 15 81            [12] 1015 	dec	sp
      0004EA 15 81            [12] 1016 	dec	sp
      0004EC D0 06            [24] 1017 	pop	ar6
      0004EE D0 07            [24] 1018 	pop	ar7
      0004F0 A8 2E            [24] 1019 	mov	r0,_bp
      0004F2 08               [12] 1020 	inc	r0
      0004F3 EA               [12] 1021 	mov	a,r2
      0004F4 26               [12] 1022 	add	a,@r0
      0004F5 FA               [12] 1023 	mov	r2,a
      0004F6 EC               [12] 1024 	mov	a,r4
      0004F7 08               [12] 1025 	inc	r0
      0004F8 36               [12] 1026 	addc	a,@r0
      0004F9 FB               [12] 1027 	mov	r3,a
      0004FA 08               [12] 1028 	inc	r0
      0004FB 86 04            [24] 1029 	mov	ar4,@r0
      0004FD 8A 82            [24] 1030 	mov	dpl,r2
      0004FF 8B 83            [24] 1031 	mov	dph,r3
      000501 8C F0            [24] 1032 	mov	b,r4
      000503 12 14 CC         [24] 1033 	lcall	__gptrget
      000506 FA               [12] 1034 	mov	r2,a
      000507 7D 00            [12] 1035 	mov	r5,#0x00
      000509 74 07            [12] 1036 	mov	a,#0x07
      00050B 5F               [12] 1037 	anl	a,r7
      00050C FB               [12] 1038 	mov	r3,a
      00050D 8B F0            [24] 1039 	mov	b,r3
      00050F 05 F0            [12] 1040 	inc	b
      000511 AB 02            [24] 1041 	mov	r3,ar2
      000513 AC 05            [24] 1042 	mov	r4,ar5
      000515 80 06            [24] 1043 	sjmp	00189$
      000517                       1044 00188$:
      000517 EB               [12] 1045 	mov	a,r3
      000518 2B               [12] 1046 	add	a,r3
      000519 FB               [12] 1047 	mov	r3,a
      00051A EC               [12] 1048 	mov	a,r4
      00051B 33               [12] 1049 	rlc	a
      00051C FC               [12] 1050 	mov	r4,a
      00051D                       1051 00189$:
      00051D D5 F0 F7         [24] 1052 	djnz	b,00188$
      000520 53 03 80         [24] 1053 	anl	ar3,#0x80
      000523 E4               [12] 1054 	clr	a
      000524 A2 E7            [12] 1055 	mov	c,acc.7
      000526 CB               [12] 1056 	xch	a,r3
      000527 33               [12] 1057 	rlc	a
      000528 CB               [12] 1058 	xch	a,r3
      000529 33               [12] 1059 	rlc	a
      00052A CB               [12] 1060 	xch	a,r3
      00052B 54 01            [12] 1061 	anl	a,#0x01
      00052D 30 E0 02         [24] 1062 	jnb	acc.0,00190$
      000530 44 FE            [12] 1063 	orl	a,#0xfffffffe
      000532                       1064 00190$:
      000532 FC               [12] 1065 	mov	r4,a
      000533 8B 19            [24] 1066 	mov	_temp,r3
                                   1067 ;	main.c:354: in_s_box <<= 1;	
      000535 E5 2E            [12] 1068 	mov	a,_bp
      000537 24 0B            [12] 1069 	add	a,#0x0b
      000539 F8               [12] 1070 	mov	r0,a
      00053A E6               [12] 1071 	mov	a,@r0
      00053B 26               [12] 1072 	add	a,@r0
      00053C FB               [12] 1073 	mov	r3,a
                                   1074 ;	main.c:355: in_s_box |= temp ;
      00053D E5 2E            [12] 1075 	mov	a,_bp
      00053F 24 0B            [12] 1076 	add	a,#0x0b
      000541 F8               [12] 1077 	mov	r0,a
      000542 E5 19            [12] 1078 	mov	a,_temp
      000544 4B               [12] 1079 	orl	a,r3
      000545 F6               [12] 1080 	mov	@r0,a
                                   1081 ;	main.c:352: for (i = j*6 ;i < (j*6+6) ; i++){                // 0 6    6 12      12 18   18 24       24 30        30 36      36 42   42 48   
      000546 05 18            [12] 1082 	inc	_i
      000548 02 04 9D         [24] 1083 	ljmp	00114$
      00054B                       1084 00104$:
                                   1085 ;	main.c:358: column_s = in_s_box & 0b00011110;
      00054B E5 2E            [12] 1086 	mov	a,_bp
      00054D 24 0B            [12] 1087 	add	a,#0x0b
      00054F F8               [12] 1088 	mov	r0,a
      000550 74 1E            [12] 1089 	mov	a,#0x1e
      000552 56               [12] 1090 	anl	a,@r0
                                   1091 ;	main.c:359: column_s >>= 1;
      000553 C3               [12] 1092 	clr	c
      000554 13               [12] 1093 	rrc	a
      000555 FF               [12] 1094 	mov	r7,a
                                   1095 ;	main.c:361: raw_s = GET_BIT(in_s_box,5);     
      000556 E5 2E            [12] 1096 	mov	a,_bp
      000558 24 0B            [12] 1097 	add	a,#0x0b
      00055A F8               [12] 1098 	mov	r0,a
      00055B E6               [12] 1099 	mov	a,@r0
      00055C A2 E5            [12] 1100 	mov	c,acc[5]
      00055E E4               [12] 1101 	clr	a
      00055F 33               [12] 1102 	rlc	a
                                   1103 ;	main.c:362: raw_s <<= 1;
      000560 25 E0            [12] 1104 	add	a,acc
      000562 FA               [12] 1105 	mov	r2,a
                                   1106 ;	main.c:363: raw_s |= GET_BIT(in_s_box,0);
      000563 E5 2E            [12] 1107 	mov	a,_bp
      000565 24 0B            [12] 1108 	add	a,#0x0b
      000567 F8               [12] 1109 	mov	r0,a
      000568 E6               [12] 1110 	mov	a,@r0
      000569 54 01            [12] 1111 	anl	a,#0x01
      00056B 42 02            [12] 1112 	orl	ar2,a
                                   1113 ;	main.c:364: out_s_box = arr[j][raw_s * 16 + column_s];
      00056D E5 2E            [12] 1114 	mov	a,_bp
      00056F 24 10            [12] 1115 	add	a,#0x10
      000571 F8               [12] 1116 	mov	r0,a
      000572 E6               [12] 1117 	mov	a,@r0
      000573 25 E0            [12] 1118 	add	a,acc
      000575 24 08            [12] 1119 	add	a,#_arr
      000577 F9               [12] 1120 	mov	r1,a
      000578 87 06            [24] 1121 	mov	ar6,@r1
      00057A 09               [12] 1122 	inc	r1
      00057B 87 05            [24] 1123 	mov	ar5,@r1
      00057D 19               [12] 1124 	dec	r1
      00057E 7C 00            [12] 1125 	mov	r4,#0x00
      000580 E5 2E            [12] 1126 	mov	a,_bp
      000582 24 08            [12] 1127 	add	a,#0x08
      000584 F8               [12] 1128 	mov	r0,a
      000585 A6 02            [24] 1129 	mov	@r0,ar2
      000587 EC               [12] 1130 	mov	a,r4
      000588 C4               [12] 1131 	swap	a
      000589 54 F0            [12] 1132 	anl	a,#0xf0
      00058B C6               [12] 1133 	xch	a,@r0
      00058C C4               [12] 1134 	swap	a
      00058D C6               [12] 1135 	xch	a,@r0
      00058E 66               [12] 1136 	xrl	a,@r0
      00058F C6               [12] 1137 	xch	a,@r0
      000590 54 F0            [12] 1138 	anl	a,#0xf0
      000592 C6               [12] 1139 	xch	a,@r0
      000593 66               [12] 1140 	xrl	a,@r0
      000594 08               [12] 1141 	inc	r0
      000595 F6               [12] 1142 	mov	@r0,a
      000596 8F 03            [24] 1143 	mov	ar3,r7
      000598 7C 00            [12] 1144 	mov	r4,#0x00
      00059A E5 2E            [12] 1145 	mov	a,_bp
      00059C 24 08            [12] 1146 	add	a,#0x08
      00059E F8               [12] 1147 	mov	r0,a
      00059F EB               [12] 1148 	mov	a,r3
      0005A0 26               [12] 1149 	add	a,@r0
      0005A1 FB               [12] 1150 	mov	r3,a
      0005A2 EC               [12] 1151 	mov	a,r4
      0005A3 08               [12] 1152 	inc	r0
      0005A4 36               [12] 1153 	addc	a,@r0
      0005A5 FC               [12] 1154 	mov	r4,a
      0005A6 EB               [12] 1155 	mov	a,r3
      0005A7 2E               [12] 1156 	add	a,r6
      0005A8 F5 82            [12] 1157 	mov	dpl,a
      0005AA EC               [12] 1158 	mov	a,r4
      0005AB 3D               [12] 1159 	addc	a,r5
      0005AC F5 83            [12] 1160 	mov	dph,a
      0005AE E4               [12] 1161 	clr	a
      0005AF 93               [24] 1162 	movc	a,@a+dptr
      0005B0 FB               [12] 1163 	mov	r3,a
                                   1164 ;	main.c:365: S_boxes_out <<= 4;
      0005B1 E5 2E            [12] 1165 	mov	a,_bp
      0005B3 24 04            [12] 1166 	add	a,#0x04
      0005B5 F8               [12] 1167 	mov	r0,a
      0005B6 08               [12] 1168 	inc	r0
      0005B7 08               [12] 1169 	inc	r0
      0005B8 86 05            [24] 1170 	mov	ar5,@r0
      0005BA 08               [12] 1171 	inc	r0
      0005BB E6               [12] 1172 	mov	a,@r0
      0005BC C4               [12] 1173 	swap	a
      0005BD 54 F0            [12] 1174 	anl	a,#0xf0
      0005BF CD               [12] 1175 	xch	a,r5
      0005C0 C4               [12] 1176 	swap	a
      0005C1 CD               [12] 1177 	xch	a,r5
      0005C2 6D               [12] 1178 	xrl	a,r5
      0005C3 CD               [12] 1179 	xch	a,r5
      0005C4 54 F0            [12] 1180 	anl	a,#0xf0
      0005C6 CD               [12] 1181 	xch	a,r5
      0005C7 6D               [12] 1182 	xrl	a,r5
      0005C8 FC               [12] 1183 	mov	r4,a
      0005C9 18               [12] 1184 	dec	r0
      0005CA 18               [12] 1185 	dec	r0
      0005CB E6               [12] 1186 	mov	a,@r0
      0005CC C4               [12] 1187 	swap	a
      0005CD 54 0F            [12] 1188 	anl	a,#0x0f
      0005CF 4D               [12] 1189 	orl	a,r5
      0005D0 FD               [12] 1190 	mov	r5,a
      0005D1 18               [12] 1191 	dec	r0
      0005D2 86 07            [24] 1192 	mov	ar7,@r0
      0005D4 08               [12] 1193 	inc	r0
      0005D5 E6               [12] 1194 	mov	a,@r0
      0005D6 C4               [12] 1195 	swap	a
      0005D7 54 F0            [12] 1196 	anl	a,#0xf0
      0005D9 CF               [12] 1197 	xch	a,r7
      0005DA C4               [12] 1198 	swap	a
      0005DB CF               [12] 1199 	xch	a,r7
      0005DC 6F               [12] 1200 	xrl	a,r7
      0005DD CF               [12] 1201 	xch	a,r7
      0005DE 54 F0            [12] 1202 	anl	a,#0xf0
      0005E0 CF               [12] 1203 	xch	a,r7
      0005E1 6F               [12] 1204 	xrl	a,r7
      0005E2 FE               [12] 1205 	mov	r6,a
                                   1206 ;	main.c:366: S_boxes_out |= out_s_box; 
      0005E3 E5 2E            [12] 1207 	mov	a,_bp
      0005E5 24 0C            [12] 1208 	add	a,#0x0c
      0005E7 F8               [12] 1209 	mov	r0,a
      0005E8 A6 03            [24] 1210 	mov	@r0,ar3
      0005EA 08               [12] 1211 	inc	r0
      0005EB 76 00            [12] 1212 	mov	@r0,#0x00
      0005ED 08               [12] 1213 	inc	r0
      0005EE 76 00            [12] 1214 	mov	@r0,#0x00
      0005F0 08               [12] 1215 	inc	r0
      0005F1 76 00            [12] 1216 	mov	@r0,#0x00
      0005F3 E5 2E            [12] 1217 	mov	a,_bp
      0005F5 24 0C            [12] 1218 	add	a,#0x0c
      0005F7 F8               [12] 1219 	mov	r0,a
      0005F8 E5 2E            [12] 1220 	mov	a,_bp
      0005FA 24 04            [12] 1221 	add	a,#0x04
      0005FC F9               [12] 1222 	mov	r1,a
      0005FD E6               [12] 1223 	mov	a,@r0
      0005FE 4F               [12] 1224 	orl	a,r7
      0005FF F7               [12] 1225 	mov	@r1,a
      000600 08               [12] 1226 	inc	r0
      000601 E6               [12] 1227 	mov	a,@r0
      000602 4E               [12] 1228 	orl	a,r6
      000603 09               [12] 1229 	inc	r1
      000604 F7               [12] 1230 	mov	@r1,a
      000605 08               [12] 1231 	inc	r0
      000606 E6               [12] 1232 	mov	a,@r0
      000607 4D               [12] 1233 	orl	a,r5
      000608 09               [12] 1234 	inc	r1
      000609 F7               [12] 1235 	mov	@r1,a
      00060A 08               [12] 1236 	inc	r0
      00060B E6               [12] 1237 	mov	a,@r0
      00060C 4C               [12] 1238 	orl	a,r4
      00060D 09               [12] 1239 	inc	r1
      00060E F7               [12] 1240 	mov	@r1,a
                                   1241 ;	main.c:347: for (j = 0; j < 8; j++){
      00060F E5 2E            [12] 1242 	mov	a,_bp
      000611 24 10            [12] 1243 	add	a,#0x10
      000613 F8               [12] 1244 	mov	r0,a
      000614 06               [12] 1245 	inc	@r0
      000615 E5 2E            [12] 1246 	mov	a,_bp
      000617 24 10            [12] 1247 	add	a,#0x10
      000619 F8               [12] 1248 	mov	r0,a
      00061A B6 08 00         [24] 1249 	cjne	@r0,#0x08,00191$
      00061D                       1250 00191$:
      00061D 50 03            [24] 1251 	jnc	00192$
      00061F 02 04 8A         [24] 1252 	ljmp	00116$
      000622                       1253 00192$:
                                   1254 ;	main.c:369: out_g->Half[0]=0;
      000622 A8 2E            [24] 1255 	mov	r0,_bp
      000624 08               [12] 1256 	inc	r0
      000625 86 82            [24] 1257 	mov	dpl,@r0
      000627 08               [12] 1258 	inc	r0
      000628 86 83            [24] 1259 	mov	dph,@r0
      00062A 08               [12] 1260 	inc	r0
      00062B 86 F0            [24] 1261 	mov	b,@r0
      00062D E4               [12] 1262 	clr	a
      00062E 12 14 8F         [24] 1263 	lcall	__gptrput
      000631 A3               [24] 1264 	inc	dptr
      000632 12 14 8F         [24] 1265 	lcall	__gptrput
      000635 A3               [24] 1266 	inc	dptr
      000636 12 14 8F         [24] 1267 	lcall	__gptrput
      000639 A3               [24] 1268 	inc	dptr
      00063A 12 14 8F         [24] 1269 	lcall	__gptrput
                                   1270 ;	main.c:370: out_g->Half[1]=0;
      00063D A8 2E            [24] 1271 	mov	r0,_bp
      00063F 08               [12] 1272 	inc	r0
      000640 74 04            [12] 1273 	mov	a,#0x04
      000642 26               [12] 1274 	add	a,@r0
      000643 FA               [12] 1275 	mov	r2,a
      000644 E4               [12] 1276 	clr	a
      000645 08               [12] 1277 	inc	r0
      000646 36               [12] 1278 	addc	a,@r0
      000647 FB               [12] 1279 	mov	r3,a
      000648 08               [12] 1280 	inc	r0
      000649 86 04            [24] 1281 	mov	ar4,@r0
      00064B 8A 82            [24] 1282 	mov	dpl,r2
      00064D 8B 83            [24] 1283 	mov	dph,r3
      00064F 8C F0            [24] 1284 	mov	b,r4
      000651 E4               [12] 1285 	clr	a
      000652 12 14 8F         [24] 1286 	lcall	__gptrput
      000655 A3               [24] 1287 	inc	dptr
      000656 12 14 8F         [24] 1288 	lcall	__gptrput
      000659 A3               [24] 1289 	inc	dptr
      00065A 12 14 8F         [24] 1290 	lcall	__gptrput
      00065D A3               [24] 1291 	inc	dptr
      00065E 12 14 8F         [24] 1292 	lcall	__gptrput
                                   1293 ;	main.c:372: for (i = 0 ;i <= 31 ; i++){
      000661 F5 18            [12] 1294 	mov	_i,a
      000663                       1295 00118$:
                                   1296 ;	main.c:373: temp = (uint8)(((S_boxes_out<<(p[i]-1)) & 0x80000000)>>31) ;//GET_BIT_ARRAY(S_boxes_out,(p[i] -1));
      000663 E5 18            [12] 1297 	mov	a,_i
      000665 90 18 F4         [24] 1298 	mov	dptr,#_p
      000668 93               [24] 1299 	movc	a,@a+dptr
      000669 FC               [12] 1300 	mov	r4,a
      00066A 1C               [12] 1301 	dec	r4
      00066B 8C F0            [24] 1302 	mov	b,r4
      00066D 05 F0            [12] 1303 	inc	b
      00066F E5 2E            [12] 1304 	mov	a,_bp
      000671 24 04            [12] 1305 	add	a,#0x04
      000673 F8               [12] 1306 	mov	r0,a
      000674 86 07            [24] 1307 	mov	ar7,@r0
      000676 08               [12] 1308 	inc	r0
      000677 86 06            [24] 1309 	mov	ar6,@r0
      000679 08               [12] 1310 	inc	r0
      00067A 86 05            [24] 1311 	mov	ar5,@r0
      00067C 08               [12] 1312 	inc	r0
      00067D 86 04            [24] 1313 	mov	ar4,@r0
      00067F 80 0C            [24] 1314 	sjmp	00194$
      000681                       1315 00193$:
      000681 EF               [12] 1316 	mov	a,r7
      000682 2F               [12] 1317 	add	a,r7
      000683 FF               [12] 1318 	mov	r7,a
      000684 EE               [12] 1319 	mov	a,r6
      000685 33               [12] 1320 	rlc	a
      000686 FE               [12] 1321 	mov	r6,a
      000687 ED               [12] 1322 	mov	a,r5
      000688 33               [12] 1323 	rlc	a
      000689 FD               [12] 1324 	mov	r5,a
      00068A EC               [12] 1325 	mov	a,r4
      00068B 33               [12] 1326 	rlc	a
      00068C FC               [12] 1327 	mov	r4,a
      00068D                       1328 00194$:
      00068D D5 F0 F1         [24] 1329 	djnz	b,00193$
      000690 53 04 80         [24] 1330 	anl	ar4,#0x80
      000693 EC               [12] 1331 	mov	a,r4
      000694 23               [12] 1332 	rl	a
      000695 54 01            [12] 1333 	anl	a,#0x01
      000697 FF               [12] 1334 	mov	r7,a
      000698 7C 00            [12] 1335 	mov	r4,#0x00
      00069A 8F 19            [24] 1336 	mov	_temp,r7
                                   1337 ;	main.c:374: WRITE_BIT_ARRAY(out_g->Array[((i+32) / 8)],((i+32) % 8),temp); // 
      00069C AB 18            [24] 1338 	mov	r3,_i
      00069E 74 20            [12] 1339 	mov	a,#0x20
      0006A0 2B               [12] 1340 	add	a,r3
      0006A1 FF               [12] 1341 	mov	r7,a
      0006A2 E4               [12] 1342 	clr	a
      0006A3 3C               [12] 1343 	addc	a,r4
      0006A4 FE               [12] 1344 	mov	r6,a
      0006A5 C0 07            [24] 1345 	push	ar7
      0006A7 C0 06            [24] 1346 	push	ar6
      0006A9 74 08            [12] 1347 	mov	a,#0x08
      0006AB C0 E0            [24] 1348 	push	acc
      0006AD E4               [12] 1349 	clr	a
      0006AE C0 E0            [24] 1350 	push	acc
      0006B0 8F 82            [24] 1351 	mov	dpl,r7
      0006B2 8E 83            [24] 1352 	mov	dph,r6
      0006B4 12 15 25         [24] 1353 	lcall	__divsint
      0006B7 AA 82            [24] 1354 	mov	r2,dpl
      0006B9 AC 83            [24] 1355 	mov	r4,dph
      0006BB 15 81            [12] 1356 	dec	sp
      0006BD 15 81            [12] 1357 	dec	sp
      0006BF D0 06            [24] 1358 	pop	ar6
      0006C1 D0 07            [24] 1359 	pop	ar7
      0006C3 A8 2E            [24] 1360 	mov	r0,_bp
      0006C5 08               [12] 1361 	inc	r0
      0006C6 E5 2E            [12] 1362 	mov	a,_bp
      0006C8 24 08            [12] 1363 	add	a,#0x08
      0006CA F9               [12] 1364 	mov	r1,a
      0006CB EA               [12] 1365 	mov	a,r2
      0006CC 26               [12] 1366 	add	a,@r0
      0006CD F7               [12] 1367 	mov	@r1,a
      0006CE EC               [12] 1368 	mov	a,r4
      0006CF 08               [12] 1369 	inc	r0
      0006D0 36               [12] 1370 	addc	a,@r0
      0006D1 09               [12] 1371 	inc	r1
      0006D2 F7               [12] 1372 	mov	@r1,a
      0006D3 08               [12] 1373 	inc	r0
      0006D4 E6               [12] 1374 	mov	a,@r0
      0006D5 09               [12] 1375 	inc	r1
      0006D6 F7               [12] 1376 	mov	@r1,a
      0006D7 74 08            [12] 1377 	mov	a,#0x08
      0006D9 C0 E0            [24] 1378 	push	acc
      0006DB E4               [12] 1379 	clr	a
      0006DC C0 E0            [24] 1380 	push	acc
      0006DE 8F 82            [24] 1381 	mov	dpl,r7
      0006E0 8E 83            [24] 1382 	mov	dph,r6
      0006E2 12 14 E8         [24] 1383 	lcall	__modsint
      0006E5 AF 82            [24] 1384 	mov	r7,dpl
      0006E7 AE 83            [24] 1385 	mov	r6,dph
      0006E9 15 81            [12] 1386 	dec	sp
      0006EB 15 81            [12] 1387 	dec	sp
      0006ED 8F F0            [24] 1388 	mov	b,r7
      0006EF 05 F0            [12] 1389 	inc	b
      0006F1 7A 80            [12] 1390 	mov	r2,#0x80
      0006F3 E4               [12] 1391 	clr	a
      0006F4 FC               [12] 1392 	mov	r4,a
      0006F5 33               [12] 1393 	rlc	a
      0006F6 92 D2            [24] 1394 	mov	ov,c
      0006F8 80 08            [24] 1395 	sjmp	00196$
      0006FA                       1396 00195$:
      0006FA A2 D2            [12] 1397 	mov	c,ov
      0006FC EC               [12] 1398 	mov	a,r4
      0006FD 13               [12] 1399 	rrc	a
      0006FE FC               [12] 1400 	mov	r4,a
      0006FF EA               [12] 1401 	mov	a,r2
      000700 13               [12] 1402 	rrc	a
      000701 FA               [12] 1403 	mov	r2,a
      000702                       1404 00196$:
      000702 D5 F0 F5         [24] 1405 	djnz	b,00195$
      000705 EA               [12] 1406 	mov	a,r2
      000706 F4               [12] 1407 	cpl	a
      000707 FA               [12] 1408 	mov	r2,a
      000708 E5 2E            [12] 1409 	mov	a,_bp
      00070A 24 08            [12] 1410 	add	a,#0x08
      00070C F8               [12] 1411 	mov	r0,a
      00070D 86 82            [24] 1412 	mov	dpl,@r0
      00070F 08               [12] 1413 	inc	r0
      000710 86 83            [24] 1414 	mov	dph,@r0
      000712 08               [12] 1415 	inc	r0
      000713 86 F0            [24] 1416 	mov	b,@r0
      000715 12 14 CC         [24] 1417 	lcall	__gptrget
      000718 52 02            [12] 1418 	anl	ar2,a
      00071A AB 19            [24] 1419 	mov	r3,_temp
      00071C E4               [12] 1420 	clr	a
      00071D C3               [12] 1421 	clr	c
      00071E CB               [12] 1422 	xch	a,r3
      00071F 13               [12] 1423 	rrc	a
      000720 CB               [12] 1424 	xch	a,r3
      000721 13               [12] 1425 	rrc	a
      000722 CB               [12] 1426 	xch	a,r3
      000723 FC               [12] 1427 	mov	r4,a
      000724 8F F0            [24] 1428 	mov	b,r7
      000726 05 F0            [12] 1429 	inc	b
      000728 EC               [12] 1430 	mov	a,r4
      000729 33               [12] 1431 	rlc	a
      00072A 92 D2            [24] 1432 	mov	ov,c
      00072C 80 08            [24] 1433 	sjmp	00198$
      00072E                       1434 00197$:
      00072E A2 D2            [12] 1435 	mov	c,ov
      000730 EC               [12] 1436 	mov	a,r4
      000731 13               [12] 1437 	rrc	a
      000732 FC               [12] 1438 	mov	r4,a
      000733 EB               [12] 1439 	mov	a,r3
      000734 13               [12] 1440 	rrc	a
      000735 FB               [12] 1441 	mov	r3,a
      000736                       1442 00198$:
      000736 D5 F0 F5         [24] 1443 	djnz	b,00197$
      000739 EB               [12] 1444 	mov	a,r3
      00073A 42 02            [12] 1445 	orl	ar2,a
      00073C E5 2E            [12] 1446 	mov	a,_bp
      00073E 24 08            [12] 1447 	add	a,#0x08
      000740 F8               [12] 1448 	mov	r0,a
      000741 86 82            [24] 1449 	mov	dpl,@r0
      000743 08               [12] 1450 	inc	r0
      000744 86 83            [24] 1451 	mov	dph,@r0
      000746 08               [12] 1452 	inc	r0
      000747 86 F0            [24] 1453 	mov	b,@r0
      000749 EA               [12] 1454 	mov	a,r2
      00074A 12 14 8F         [24] 1455 	lcall	__gptrput
                                   1456 ;	main.c:372: for (i = 0 ;i <= 31 ; i++){
      00074D 05 18            [12] 1457 	inc	_i
      00074F E5 18            [12] 1458 	mov	a,_i
      000751 24 E0            [12] 1459 	add	a,#0xff - 0x1f
      000753 40 03            [24] 1460 	jc	00199$
      000755 02 06 63         [24] 1461 	ljmp	00118$
      000758                       1462 00199$:
                                   1463 ;	main.c:377: }
      000758 85 2E 81         [24] 1464 	mov	sp,_bp
      00075B D0 2E            [24] 1465 	pop	_bp
      00075D 22               [24] 1466 	ret
                                   1467 ;------------------------------------------------------------
                                   1468 ;Allocation info for local variables in function 'rotate'
                                   1469 ;------------------------------------------------------------
                                   1470 ;round                     Allocated to stack - _bp -3
                                   1471 ;sub_key                   Allocated to stack - _bp -6
                                   1472 ;Key                       Allocated to stack - _bp +1
                                   1473 ;sloc0                     Allocated to stack - _bp +4
                                   1474 ;sloc1                     Allocated to stack - _bp +8
                                   1475 ;sloc2                     Allocated to stack - _bp +11
                                   1476 ;sloc3                     Allocated to stack - _bp +14
                                   1477 ;sloc4                     Allocated to stack - _bp +17
                                   1478 ;------------------------------------------------------------
                                   1479 ;	main.c:388: void rotate(DATA *Key,uint8 round,DATA *sub_key){ // arrr[]={ab,12,cd,45} temp |=ab >>temp =000000 ab >>> 00 00 ab 00
                                   1480 ;	-----------------------------------------
                                   1481 ;	 function rotate
                                   1482 ;	-----------------------------------------
      00075E                       1483 _rotate:
      00075E C0 2E            [24] 1484 	push	_bp
      000760 85 81 2E         [24] 1485 	mov	_bp,sp
      000763 C0 82            [24] 1486 	push	dpl
      000765 C0 83            [24] 1487 	push	dph
      000767 C0 F0            [24] 1488 	push	b
      000769 E5 81            [12] 1489 	mov	a,sp
      00076B 24 11            [12] 1490 	add	a,#0x11
      00076D F5 81            [12] 1491 	mov	sp,a
                                   1492 ;	main.c:389: Temp = 0;
      00076F E4               [12] 1493 	clr	a
      000770 F5 1A            [12] 1494 	mov	_Temp,a
      000772 F5 1B            [12] 1495 	mov	(_Temp + 1),a
      000774 F5 1C            [12] 1496 	mov	(_Temp + 2),a
      000776 F5 1D            [12] 1497 	mov	(_Temp + 3),a
                                   1498 ;	main.c:390: for (i = 0 ; i<4 ; i++){
      000778 F5 18            [12] 1499 	mov	_i,a
      00077A                       1500 00114$:
                                   1501 ;	main.c:391: Temp <<=8;
      00077A 85 1C 1D         [24] 1502 	mov	(_Temp + 3),(_Temp + 2)
      00077D 85 1B 1C         [24] 1503 	mov	(_Temp + 2),(_Temp + 1)
      000780 85 1A 1B         [24] 1504 	mov	(_Temp + 1),_Temp
      000783 75 1A 00         [24] 1505 	mov	_Temp,#0x00
                                   1506 ;	main.c:392: Temp |= Key->Array[i];
      000786 A8 2E            [24] 1507 	mov	r0,_bp
      000788 08               [12] 1508 	inc	r0
      000789 E5 18            [12] 1509 	mov	a,_i
      00078B 26               [12] 1510 	add	a,@r0
      00078C FA               [12] 1511 	mov	r2,a
      00078D E4               [12] 1512 	clr	a
      00078E 08               [12] 1513 	inc	r0
      00078F 36               [12] 1514 	addc	a,@r0
      000790 FB               [12] 1515 	mov	r3,a
      000791 08               [12] 1516 	inc	r0
      000792 86 04            [24] 1517 	mov	ar4,@r0
      000794 8A 82            [24] 1518 	mov	dpl,r2
      000796 8B 83            [24] 1519 	mov	dph,r3
      000798 8C F0            [24] 1520 	mov	b,r4
      00079A 12 14 CC         [24] 1521 	lcall	__gptrget
      00079D FA               [12] 1522 	mov	r2,a
      00079E E4               [12] 1523 	clr	a
      00079F FB               [12] 1524 	mov	r3,a
      0007A0 FC               [12] 1525 	mov	r4,a
      0007A1 FF               [12] 1526 	mov	r7,a
      0007A2 EA               [12] 1527 	mov	a,r2
      0007A3 42 1A            [12] 1528 	orl	_Temp,a
      0007A5 EB               [12] 1529 	mov	a,r3
      0007A6 42 1B            [12] 1530 	orl	(_Temp + 1),a
      0007A8 EC               [12] 1531 	mov	a,r4
      0007A9 42 1C            [12] 1532 	orl	(_Temp + 2),a
      0007AB EF               [12] 1533 	mov	a,r7
      0007AC 42 1D            [12] 1534 	orl	(_Temp + 3),a
                                   1535 ;	main.c:390: for (i = 0 ; i<4 ; i++){
      0007AE 05 18            [12] 1536 	inc	_i
      0007B0 74 FC            [12] 1537 	mov	a,#0x100 - 0x04
      0007B2 25 18            [12] 1538 	add	a,_i
      0007B4 50 C4            [24] 1539 	jnc	00114$
                                   1540 ;	main.c:488: if (round == 1){
      0007B6 E5 2E            [12] 1541 	mov	a,_bp
      0007B8 24 FD            [12] 1542 	add	a,#0xfd
      0007BA F8               [12] 1543 	mov	r0,a
      0007BB B6 01 03         [24] 1544 	cjne	@r0,#0x01,00189$
      0007BE 02 0E 59         [24] 1545 	ljmp	00113$
      0007C1                       1546 00189$:
                                   1547 ;	main.c:494: Temp &=0xfffffff0; // Temp = (ab 12 cd 4)0 >>> (1)010 1011 0001 0010 1100 1101 0100 0000  // bit0   bit
      0007C1 53 1A F0         [24] 1548 	anl	_Temp,#0xf0
                                   1549 ;	main.c:495: temp = GET_BIT(Temp,4);
      0007C4 E5 1A            [12] 1550 	mov	a,_Temp
      0007C6 C4               [12] 1551 	swap	a
      0007C7 54 01            [12] 1552 	anl	a,#0x01
      0007C9 F5 19            [12] 1553 	mov	_temp,a
                                   1554 ;	main.c:496: Temp >>=1;
      0007CB E5 1D            [12] 1555 	mov	a,(_Temp + 3)
      0007CD C3               [12] 1556 	clr	c
      0007CE 13               [12] 1557 	rrc	a
      0007CF F5 1D            [12] 1558 	mov	(_Temp + 3),a
      0007D1 E5 1C            [12] 1559 	mov	a,(_Temp + 2)
      0007D3 13               [12] 1560 	rrc	a
      0007D4 F5 1C            [12] 1561 	mov	(_Temp + 2),a
      0007D6 E5 1B            [12] 1562 	mov	a,(_Temp + 1)
      0007D8 13               [12] 1563 	rrc	a
      0007D9 F5 1B            [12] 1564 	mov	(_Temp + 1),a
      0007DB E5 1A            [12] 1565 	mov	a,_Temp
      0007DD 13               [12] 1566 	rrc	a
      0007DE F5 1A            [12] 1567 	mov	_Temp,a
                                   1568 ;	main.c:497: Temp = ((Temp & ~( ((uint32)1)<<31)) | (((uint32)temp) << 31));//Temp = 0101 0110 0010 0101 1001 1010 10(1)0 0000 >> 56 25 9a 90 >> 90 >>09
      0007E0 E5 2E            [12] 1569 	mov	a,_bp
      0007E2 24 04            [12] 1570 	add	a,#0x04
      0007E4 F8               [12] 1571 	mov	r0,a
      0007E5 A6 1A            [24] 1572 	mov	@r0,_Temp
      0007E7 08               [12] 1573 	inc	r0
      0007E8 A6 1B            [24] 1574 	mov	@r0,(_Temp + 1)
      0007EA 08               [12] 1575 	inc	r0
      0007EB A6 1C            [24] 1576 	mov	@r0,(_Temp + 2)
      0007ED 74 7F            [12] 1577 	mov	a,#0x7f
      0007EF 55 1D            [12] 1578 	anl	a,(_Temp + 3)
      0007F1 08               [12] 1579 	inc	r0
      0007F2 F6               [12] 1580 	mov	@r0,a
      0007F3 AC 19            [24] 1581 	mov	r4,_temp
      0007F5 E4               [12] 1582 	clr	a
      0007F6 FD               [12] 1583 	mov	r5,a
      0007F7 FE               [12] 1584 	mov	r6,a
      0007F8 EC               [12] 1585 	mov	a,r4
      0007F9 03               [12] 1586 	rr	a
      0007FA 54 80            [12] 1587 	anl	a,#0x80
      0007FC FF               [12] 1588 	mov	r7,a
      0007FD 7C 00            [12] 1589 	mov	r4,#0x00
      0007FF E5 2E            [12] 1590 	mov	a,_bp
      000801 24 04            [12] 1591 	add	a,#0x04
      000803 F8               [12] 1592 	mov	r0,a
      000804 EC               [12] 1593 	mov	a,r4
      000805 46               [12] 1594 	orl	a,@r0
      000806 F5 1A            [12] 1595 	mov	_Temp,a
      000808 ED               [12] 1596 	mov	a,r5
      000809 08               [12] 1597 	inc	r0
      00080A 46               [12] 1598 	orl	a,@r0
      00080B F5 1B            [12] 1599 	mov	(_Temp + 1),a
      00080D EE               [12] 1600 	mov	a,r6
      00080E 08               [12] 1601 	inc	r0
      00080F 46               [12] 1602 	orl	a,@r0
      000810 F5 1C            [12] 1603 	mov	(_Temp + 2),a
      000812 EF               [12] 1604 	mov	a,r7
      000813 08               [12] 1605 	inc	r0
      000814 46               [12] 1606 	orl	a,@r0
      000815 F5 1D            [12] 1607 	mov	(_Temp + 3),a
                                   1608 ;	main.c:499: for (i = 0 ; i<3 ; i++){
      000817 8E 18            [24] 1609 	mov	_i,r6
                                   1610 ;	main.c:575: sub_key->Half[0] = Key->Half[0];
                                   1611 ;	main.c:499: for (i = 0 ; i<3 ; i++){
      000819                       1612 00116$:
                                   1613 ;	main.c:500: Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); //array={56,25,9a,90}
      000819 A8 2E            [24] 1614 	mov	r0,_bp
      00081B 08               [12] 1615 	inc	r0
      00081C E5 2E            [12] 1616 	mov	a,_bp
      00081E 24 04            [12] 1617 	add	a,#0x04
      000820 F9               [12] 1618 	mov	r1,a
      000821 E5 18            [12] 1619 	mov	a,_i
      000823 26               [12] 1620 	add	a,@r0
      000824 F7               [12] 1621 	mov	@r1,a
      000825 E4               [12] 1622 	clr	a
      000826 08               [12] 1623 	inc	r0
      000827 36               [12] 1624 	addc	a,@r0
      000828 09               [12] 1625 	inc	r1
      000829 F7               [12] 1626 	mov	@r1,a
      00082A 08               [12] 1627 	inc	r0
      00082B E6               [12] 1628 	mov	a,@r0
      00082C 09               [12] 1629 	inc	r1
      00082D F7               [12] 1630 	mov	@r1,a
      00082E 74 03            [12] 1631 	mov	a,#0x03
      000830 C3               [12] 1632 	clr	c
      000831 95 18            [12] 1633 	subb	a,_i
      000833 C4               [12] 1634 	swap	a
      000834 03               [12] 1635 	rr	a
      000835 54 F8            [12] 1636 	anl	a,#0xf8
      000837 FF               [12] 1637 	mov	r7,a
      000838 8F F0            [24] 1638 	mov	b,r7
      00083A 05 F0            [12] 1639 	inc	b
      00083C AC 1A            [24] 1640 	mov	r4,_Temp
      00083E AD 1B            [24] 1641 	mov	r5,(_Temp + 1)
      000840 AE 1C            [24] 1642 	mov	r6,(_Temp + 2)
      000842 AF 1D            [24] 1643 	mov	r7,(_Temp + 3)
      000844 80 0D            [24] 1644 	sjmp	00191$
      000846                       1645 00190$:
      000846 C3               [12] 1646 	clr	c
      000847 EF               [12] 1647 	mov	a,r7
      000848 13               [12] 1648 	rrc	a
      000849 FF               [12] 1649 	mov	r7,a
      00084A EE               [12] 1650 	mov	a,r6
      00084B 13               [12] 1651 	rrc	a
      00084C FE               [12] 1652 	mov	r6,a
      00084D ED               [12] 1653 	mov	a,r5
      00084E 13               [12] 1654 	rrc	a
      00084F FD               [12] 1655 	mov	r5,a
      000850 EC               [12] 1656 	mov	a,r4
      000851 13               [12] 1657 	rrc	a
      000852 FC               [12] 1658 	mov	r4,a
      000853                       1659 00191$:
      000853 D5 F0 F0         [24] 1660 	djnz	b,00190$
      000856 E5 2E            [12] 1661 	mov	a,_bp
      000858 24 04            [12] 1662 	add	a,#0x04
      00085A F8               [12] 1663 	mov	r0,a
      00085B 86 82            [24] 1664 	mov	dpl,@r0
      00085D 08               [12] 1665 	inc	r0
      00085E 86 83            [24] 1666 	mov	dph,@r0
      000860 08               [12] 1667 	inc	r0
      000861 86 F0            [24] 1668 	mov	b,@r0
      000863 EC               [12] 1669 	mov	a,r4
      000864 12 14 8F         [24] 1670 	lcall	__gptrput
                                   1671 ;	main.c:499: for (i = 0 ; i<3 ; i++){
      000867 05 18            [12] 1672 	inc	_i
      000869 74 FD            [12] 1673 	mov	a,#0x100 - 0x03
      00086B 25 18            [12] 1674 	add	a,_i
      00086D 50 AA            [24] 1675 	jnc	00116$
                                   1676 ;	main.c:502: Key->Array[3] &=0x0f; 
      00086F A8 2E            [24] 1677 	mov	r0,_bp
      000871 08               [12] 1678 	inc	r0
      000872 E5 2E            [12] 1679 	mov	a,_bp
      000874 24 08            [12] 1680 	add	a,#0x08
      000876 F9               [12] 1681 	mov	r1,a
      000877 74 03            [12] 1682 	mov	a,#0x03
      000879 26               [12] 1683 	add	a,@r0
      00087A F7               [12] 1684 	mov	@r1,a
      00087B E4               [12] 1685 	clr	a
      00087C 08               [12] 1686 	inc	r0
      00087D 36               [12] 1687 	addc	a,@r0
      00087E 09               [12] 1688 	inc	r1
      00087F F7               [12] 1689 	mov	@r1,a
      000880 08               [12] 1690 	inc	r0
      000881 E6               [12] 1691 	mov	a,@r0
      000882 09               [12] 1692 	inc	r1
      000883 F7               [12] 1693 	mov	@r1,a
      000884 E5 2E            [12] 1694 	mov	a,_bp
      000886 24 08            [12] 1695 	add	a,#0x08
      000888 F8               [12] 1696 	mov	r0,a
      000889 86 82            [24] 1697 	mov	dpl,@r0
      00088B 08               [12] 1698 	inc	r0
      00088C 86 83            [24] 1699 	mov	dph,@r0
      00088E 08               [12] 1700 	inc	r0
      00088F 86 F0            [24] 1701 	mov	b,@r0
      000891 12 14 CC         [24] 1702 	lcall	__gptrget
      000894 FF               [12] 1703 	mov	r7,a
      000895 53 07 0F         [24] 1704 	anl	ar7,#0x0f
      000898 E5 2E            [12] 1705 	mov	a,_bp
      00089A 24 08            [12] 1706 	add	a,#0x08
      00089C F8               [12] 1707 	mov	r0,a
      00089D 86 82            [24] 1708 	mov	dpl,@r0
      00089F 08               [12] 1709 	inc	r0
      0008A0 86 83            [24] 1710 	mov	dph,@r0
      0008A2 08               [12] 1711 	inc	r0
      0008A3 86 F0            [24] 1712 	mov	b,@r0
      0008A5 EF               [12] 1713 	mov	a,r7
      0008A6 12 14 8F         [24] 1714 	lcall	__gptrput
                                   1715 ;	main.c:503: Key->Array[3] |= (uint8)(Temp  & 0x000000f0); 
      0008A9 AF 1A            [24] 1716 	mov	r7,_Temp
      0008AB 53 07 F0         [24] 1717 	anl	ar7,#0xf0
      0008AE E5 2E            [12] 1718 	mov	a,_bp
      0008B0 24 08            [12] 1719 	add	a,#0x08
      0008B2 F8               [12] 1720 	mov	r0,a
      0008B3 86 82            [24] 1721 	mov	dpl,@r0
      0008B5 08               [12] 1722 	inc	r0
      0008B6 86 83            [24] 1723 	mov	dph,@r0
      0008B8 08               [12] 1724 	inc	r0
      0008B9 86 F0            [24] 1725 	mov	b,@r0
      0008BB 12 14 CC         [24] 1726 	lcall	__gptrget
      0008BE 42 07            [12] 1727 	orl	ar7,a
      0008C0 E5 2E            [12] 1728 	mov	a,_bp
      0008C2 24 08            [12] 1729 	add	a,#0x08
      0008C4 F8               [12] 1730 	mov	r0,a
      0008C5 86 82            [24] 1731 	mov	dpl,@r0
      0008C7 08               [12] 1732 	inc	r0
      0008C8 86 83            [24] 1733 	mov	dph,@r0
      0008CA 08               [12] 1734 	inc	r0
      0008CB 86 F0            [24] 1735 	mov	b,@r0
      0008CD EF               [12] 1736 	mov	a,r7
      0008CE 12 14 8F         [24] 1737 	lcall	__gptrput
                                   1738 ;	main.c:507: Temp |= Key->Array[3];   //76543210 
      0008D1 8F 1A            [24] 1739 	mov	_Temp,r7
      0008D3 75 1B 00         [24] 1740 	mov	(_Temp + 1),#0x00
      0008D6 75 1C 00         [24] 1741 	mov	(_Temp + 2),#0x00
                                   1742 ;	main.c:508: Temp = Temp <<8;
      0008D9 85 1C 1D         [24] 1743 	mov	(_Temp + 3),(_Temp + 2)
      0008DC 85 1B 1C         [24] 1744 	mov	(_Temp + 2),(_Temp + 1)
      0008DF 85 1A 1B         [24] 1745 	mov	(_Temp + 1),_Temp
      0008E2 75 1A 00         [24] 1746 	mov	_Temp,#0x00
                                   1747 ;	main.c:510: Temp |= Key->Array[4];   //20
      0008E5 A8 2E            [24] 1748 	mov	r0,_bp
      0008E7 08               [12] 1749 	inc	r0
      0008E8 E5 2E            [12] 1750 	mov	a,_bp
      0008EA 24 04            [12] 1751 	add	a,#0x04
      0008EC F9               [12] 1752 	mov	r1,a
      0008ED 74 04            [12] 1753 	mov	a,#0x04
      0008EF 26               [12] 1754 	add	a,@r0
      0008F0 F7               [12] 1755 	mov	@r1,a
      0008F1 E4               [12] 1756 	clr	a
      0008F2 08               [12] 1757 	inc	r0
      0008F3 36               [12] 1758 	addc	a,@r0
      0008F4 09               [12] 1759 	inc	r1
      0008F5 F7               [12] 1760 	mov	@r1,a
      0008F6 08               [12] 1761 	inc	r0
      0008F7 E6               [12] 1762 	mov	a,@r0
      0008F8 09               [12] 1763 	inc	r1
      0008F9 F7               [12] 1764 	mov	@r1,a
      0008FA E5 2E            [12] 1765 	mov	a,_bp
      0008FC 24 04            [12] 1766 	add	a,#0x04
      0008FE F8               [12] 1767 	mov	r0,a
      0008FF 86 82            [24] 1768 	mov	dpl,@r0
      000901 08               [12] 1769 	inc	r0
      000902 86 83            [24] 1770 	mov	dph,@r0
      000904 08               [12] 1771 	inc	r0
      000905 86 F0            [24] 1772 	mov	b,@r0
      000907 12 14 CC         [24] 1773 	lcall	__gptrget
      00090A FC               [12] 1774 	mov	r4,a
      00090B E4               [12] 1775 	clr	a
      00090C FD               [12] 1776 	mov	r5,a
      00090D FE               [12] 1777 	mov	r6,a
      00090E FF               [12] 1778 	mov	r7,a
      00090F EC               [12] 1779 	mov	a,r4
      000910 42 1A            [12] 1780 	orl	_Temp,a
      000912 ED               [12] 1781 	mov	a,r5
      000913 42 1B            [12] 1782 	orl	(_Temp + 1),a
      000915 EE               [12] 1783 	mov	a,r6
      000916 42 1C            [12] 1784 	orl	(_Temp + 2),a
      000918 EF               [12] 1785 	mov	a,r7
      000919 42 1D            [12] 1786 	orl	(_Temp + 3),a
                                   1787 ;	main.c:512: Temp = Temp <<8;
      00091B 85 1C 1D         [24] 1788 	mov	(_Temp + 3),(_Temp + 2)
      00091E 85 1B 1C         [24] 1789 	mov	(_Temp + 2),(_Temp + 1)
      000921 85 1A 1B         [24] 1790 	mov	(_Temp + 1),_Temp
      000924 75 1A 00         [24] 1791 	mov	_Temp,#0x00
                                   1792 ;	main.c:513: Temp |= Key->Array[5];   //20
      000927 A8 2E            [24] 1793 	mov	r0,_bp
      000929 08               [12] 1794 	inc	r0
      00092A E5 2E            [12] 1795 	mov	a,_bp
      00092C 24 0B            [12] 1796 	add	a,#0x0b
      00092E F9               [12] 1797 	mov	r1,a
      00092F 74 05            [12] 1798 	mov	a,#0x05
      000931 26               [12] 1799 	add	a,@r0
      000932 F7               [12] 1800 	mov	@r1,a
      000933 E4               [12] 1801 	clr	a
      000934 08               [12] 1802 	inc	r0
      000935 36               [12] 1803 	addc	a,@r0
      000936 09               [12] 1804 	inc	r1
      000937 F7               [12] 1805 	mov	@r1,a
      000938 08               [12] 1806 	inc	r0
      000939 E6               [12] 1807 	mov	a,@r0
      00093A 09               [12] 1808 	inc	r1
      00093B F7               [12] 1809 	mov	@r1,a
      00093C E5 2E            [12] 1810 	mov	a,_bp
      00093E 24 0B            [12] 1811 	add	a,#0x0b
      000940 F8               [12] 1812 	mov	r0,a
      000941 86 82            [24] 1813 	mov	dpl,@r0
      000943 08               [12] 1814 	inc	r0
      000944 86 83            [24] 1815 	mov	dph,@r0
      000946 08               [12] 1816 	inc	r0
      000947 86 F0            [24] 1817 	mov	b,@r0
      000949 12 14 CC         [24] 1818 	lcall	__gptrget
      00094C FA               [12] 1819 	mov	r2,a
      00094D E4               [12] 1820 	clr	a
      00094E FB               [12] 1821 	mov	r3,a
      00094F FC               [12] 1822 	mov	r4,a
      000950 FF               [12] 1823 	mov	r7,a
      000951 EA               [12] 1824 	mov	a,r2
      000952 42 1A            [12] 1825 	orl	_Temp,a
      000954 EB               [12] 1826 	mov	a,r3
      000955 42 1B            [12] 1827 	orl	(_Temp + 1),a
      000957 EC               [12] 1828 	mov	a,r4
      000958 42 1C            [12] 1829 	orl	(_Temp + 2),a
      00095A EF               [12] 1830 	mov	a,r7
      00095B 42 1D            [12] 1831 	orl	(_Temp + 3),a
                                   1832 ;	main.c:514: Temp = Temp <<8;
      00095D 85 1C 1D         [24] 1833 	mov	(_Temp + 3),(_Temp + 2)
      000960 85 1B 1C         [24] 1834 	mov	(_Temp + 2),(_Temp + 1)
      000963 85 1A 1B         [24] 1835 	mov	(_Temp + 1),_Temp
      000966 75 1A 00         [24] 1836 	mov	_Temp,#0x00
                                   1837 ;	main.c:515: Temp |= Key->Array[6];	//28
      000969 A8 2E            [24] 1838 	mov	r0,_bp
      00096B 08               [12] 1839 	inc	r0
      00096C E5 2E            [12] 1840 	mov	a,_bp
      00096E 24 0E            [12] 1841 	add	a,#0x0e
      000970 F9               [12] 1842 	mov	r1,a
      000971 74 06            [12] 1843 	mov	a,#0x06
      000973 26               [12] 1844 	add	a,@r0
      000974 F7               [12] 1845 	mov	@r1,a
      000975 E4               [12] 1846 	clr	a
      000976 08               [12] 1847 	inc	r0
      000977 36               [12] 1848 	addc	a,@r0
      000978 09               [12] 1849 	inc	r1
      000979 F7               [12] 1850 	mov	@r1,a
      00097A 08               [12] 1851 	inc	r0
      00097B E6               [12] 1852 	mov	a,@r0
      00097C 09               [12] 1853 	inc	r1
      00097D F7               [12] 1854 	mov	@r1,a
      00097E E5 2E            [12] 1855 	mov	a,_bp
      000980 24 0E            [12] 1856 	add	a,#0x0e
      000982 F8               [12] 1857 	mov	r0,a
      000983 86 82            [24] 1858 	mov	dpl,@r0
      000985 08               [12] 1859 	inc	r0
      000986 86 83            [24] 1860 	mov	dph,@r0
      000988 08               [12] 1861 	inc	r0
      000989 86 F0            [24] 1862 	mov	b,@r0
      00098B 12 14 CC         [24] 1863 	lcall	__gptrget
      00098E FA               [12] 1864 	mov	r2,a
      00098F E4               [12] 1865 	clr	a
      000990 FB               [12] 1866 	mov	r3,a
      000991 FC               [12] 1867 	mov	r4,a
      000992 FF               [12] 1868 	mov	r7,a
      000993 EA               [12] 1869 	mov	a,r2
      000994 42 1A            [12] 1870 	orl	_Temp,a
      000996 EB               [12] 1871 	mov	a,r3
      000997 42 1B            [12] 1872 	orl	(_Temp + 1),a
      000999 EC               [12] 1873 	mov	a,r4
      00099A 42 1C            [12] 1874 	orl	(_Temp + 2),a
      00099C EF               [12] 1875 	mov	a,r7
      00099D 42 1D            [12] 1876 	orl	(_Temp + 3),a
                                   1877 ;	main.c:516: Temp= Temp <<4;
      00099F E5 1D            [12] 1878 	mov	a,(_Temp + 3)
      0009A1 C4               [12] 1879 	swap	a
      0009A2 54 F0            [12] 1880 	anl	a,#0xf0
      0009A4 C5 1C            [12] 1881 	xch	a,(_Temp + 2)
      0009A6 C4               [12] 1882 	swap	a
      0009A7 C5 1C            [12] 1883 	xch	a,(_Temp + 2)
      0009A9 65 1C            [12] 1884 	xrl	a,(_Temp + 2)
      0009AB C5 1C            [12] 1885 	xch	a,(_Temp + 2)
      0009AD 54 F0            [12] 1886 	anl	a,#0xf0
      0009AF C5 1C            [12] 1887 	xch	a,(_Temp + 2)
      0009B1 65 1C            [12] 1888 	xrl	a,(_Temp + 2)
      0009B3 F5 1D            [12] 1889 	mov	(_Temp + 3),a
      0009B5 E5 1B            [12] 1890 	mov	a,(_Temp + 1)
      0009B7 C4               [12] 1891 	swap	a
      0009B8 54 0F            [12] 1892 	anl	a,#0x0f
      0009BA 45 1C            [12] 1893 	orl	a,(_Temp + 2)
      0009BC F5 1C            [12] 1894 	mov	(_Temp + 2),a
      0009BE E5 1B            [12] 1895 	mov	a,(_Temp + 1)
      0009C0 C4               [12] 1896 	swap	a
      0009C1 54 F0            [12] 1897 	anl	a,#0xf0
      0009C3 C5 1A            [12] 1898 	xch	a,_Temp
      0009C5 C4               [12] 1899 	swap	a
      0009C6 C5 1A            [12] 1900 	xch	a,_Temp
      0009C8 65 1A            [12] 1901 	xrl	a,_Temp
      0009CA C5 1A            [12] 1902 	xch	a,_Temp
      0009CC 54 F0            [12] 1903 	anl	a,#0xf0
      0009CE C5 1A            [12] 1904 	xch	a,_Temp
      0009D0 65 1A            [12] 1905 	xrl	a,_Temp
      0009D2 F5 1B            [12] 1906 	mov	(_Temp + 1),a
                                   1907 ;	main.c:519: temp = GET_BIT(Temp,4);//
      0009D4 E5 1A            [12] 1908 	mov	a,_Temp
      0009D6 C4               [12] 1909 	swap	a
      0009D7 54 01            [12] 1910 	anl	a,#0x01
      0009D9 F5 19            [12] 1911 	mov	_temp,a
                                   1912 ;	main.c:520: Temp >>=1;//011 0001 0010 1100 1101 0100 0101 0000 0
      0009DB E5 1D            [12] 1913 	mov	a,(_Temp + 3)
      0009DD C3               [12] 1914 	clr	c
      0009DE 13               [12] 1915 	rrc	a
      0009DF F5 1D            [12] 1916 	mov	(_Temp + 3),a
      0009E1 E5 1C            [12] 1917 	mov	a,(_Temp + 2)
      0009E3 13               [12] 1918 	rrc	a
      0009E4 F5 1C            [12] 1919 	mov	(_Temp + 2),a
      0009E6 E5 1B            [12] 1920 	mov	a,(_Temp + 1)
      0009E8 13               [12] 1921 	rrc	a
      0009E9 F5 1B            [12] 1922 	mov	(_Temp + 1),a
      0009EB E5 1A            [12] 1923 	mov	a,_Temp
      0009ED 13               [12] 1924 	rrc	a
      0009EE F5 1A            [12] 1925 	mov	_Temp,a
                                   1926 ;	main.c:521: Temp = ((Temp & ~( ((uint32)1)<<31)) | (((uint32)temp) << 31));// 0110 0010 0101 1001 1010 1000 101(1) 0000 >> 62 59 a9 b0
      0009F0 E5 2E            [12] 1927 	mov	a,_bp
      0009F2 24 11            [12] 1928 	add	a,#0x11
      0009F4 F8               [12] 1929 	mov	r0,a
      0009F5 A6 1A            [24] 1930 	mov	@r0,_Temp
      0009F7 08               [12] 1931 	inc	r0
      0009F8 A6 1B            [24] 1932 	mov	@r0,(_Temp + 1)
      0009FA 08               [12] 1933 	inc	r0
      0009FB A6 1C            [24] 1934 	mov	@r0,(_Temp + 2)
      0009FD 74 7F            [12] 1935 	mov	a,#0x7f
      0009FF 55 1D            [12] 1936 	anl	a,(_Temp + 3)
      000A01 08               [12] 1937 	inc	r0
      000A02 F6               [12] 1938 	mov	@r0,a
      000A03 AA 19            [24] 1939 	mov	r2,_temp
      000A05 E4               [12] 1940 	clr	a
      000A06 FB               [12] 1941 	mov	r3,a
      000A07 FE               [12] 1942 	mov	r6,a
      000A08 EA               [12] 1943 	mov	a,r2
      000A09 03               [12] 1944 	rr	a
      000A0A 54 80            [12] 1945 	anl	a,#0x80
      000A0C FF               [12] 1946 	mov	r7,a
      000A0D 7A 00            [12] 1947 	mov	r2,#0x00
      000A0F E5 2E            [12] 1948 	mov	a,_bp
      000A11 24 11            [12] 1949 	add	a,#0x11
      000A13 F8               [12] 1950 	mov	r0,a
      000A14 EA               [12] 1951 	mov	a,r2
      000A15 46               [12] 1952 	orl	a,@r0
      000A16 F5 1A            [12] 1953 	mov	_Temp,a
      000A18 EB               [12] 1954 	mov	a,r3
      000A19 08               [12] 1955 	inc	r0
      000A1A 46               [12] 1956 	orl	a,@r0
      000A1B F5 1B            [12] 1957 	mov	(_Temp + 1),a
      000A1D EE               [12] 1958 	mov	a,r6
      000A1E 08               [12] 1959 	inc	r0
      000A1F 46               [12] 1960 	orl	a,@r0
      000A20 F5 1C            [12] 1961 	mov	(_Temp + 2),a
      000A22 EF               [12] 1962 	mov	a,r7
      000A23 08               [12] 1963 	inc	r0
      000A24 46               [12] 1964 	orl	a,@r0
      000A25 F5 1D            [12] 1965 	mov	(_Temp + 3),a
                                   1966 ;	main.c:523: Key->Array[3] &=0xf0; 
      000A27 E5 2E            [12] 1967 	mov	a,_bp
      000A29 24 08            [12] 1968 	add	a,#0x08
      000A2B F8               [12] 1969 	mov	r0,a
      000A2C 86 82            [24] 1970 	mov	dpl,@r0
      000A2E 08               [12] 1971 	inc	r0
      000A2F 86 83            [24] 1972 	mov	dph,@r0
      000A31 08               [12] 1973 	inc	r0
      000A32 86 F0            [24] 1974 	mov	b,@r0
      000A34 12 14 CC         [24] 1975 	lcall	__gptrget
      000A37 FF               [12] 1976 	mov	r7,a
      000A38 53 07 F0         [24] 1977 	anl	ar7,#0xf0
      000A3B E5 2E            [12] 1978 	mov	a,_bp
      000A3D 24 08            [12] 1979 	add	a,#0x08
      000A3F F8               [12] 1980 	mov	r0,a
      000A40 86 82            [24] 1981 	mov	dpl,@r0
      000A42 08               [12] 1982 	inc	r0
      000A43 86 83            [24] 1983 	mov	dph,@r0
      000A45 08               [12] 1984 	inc	r0
      000A46 86 F0            [24] 1985 	mov	b,@r0
      000A48 EF               [12] 1986 	mov	a,r7
      000A49 12 14 8F         [24] 1987 	lcall	__gptrput
                                   1988 ;	main.c:524: Key->Array[3] |= (uint8)((Temp)>>28); //62 59 a9 b0 >> 60 00 00 00 >>28 >>>> 00 00 00 06 >> 06
      000A4C E5 1D            [12] 1989 	mov	a,(_Temp + 3)
      000A4E C4               [12] 1990 	swap	a
      000A4F 54 0F            [12] 1991 	anl	a,#0x0f
      000A51 FC               [12] 1992 	mov	r4,a
      000A52 E4               [12] 1993 	clr	a
      000A53 FD               [12] 1994 	mov	r5,a
      000A54 FE               [12] 1995 	mov	r6,a
      000A55 E5 2E            [12] 1996 	mov	a,_bp
      000A57 24 08            [12] 1997 	add	a,#0x08
      000A59 F8               [12] 1998 	mov	r0,a
      000A5A 86 82            [24] 1999 	mov	dpl,@r0
      000A5C 08               [12] 2000 	inc	r0
      000A5D 86 83            [24] 2001 	mov	dph,@r0
      000A5F 08               [12] 2002 	inc	r0
      000A60 86 F0            [24] 2003 	mov	b,@r0
      000A62 12 14 CC         [24] 2004 	lcall	__gptrget
      000A65 FF               [12] 2005 	mov	r7,a
      000A66 42 04            [12] 2006 	orl	ar4,a
      000A68 E5 2E            [12] 2007 	mov	a,_bp
      000A6A 24 08            [12] 2008 	add	a,#0x08
      000A6C F8               [12] 2009 	mov	r0,a
      000A6D 86 82            [24] 2010 	mov	dpl,@r0
      000A6F 08               [12] 2011 	inc	r0
      000A70 86 83            [24] 2012 	mov	dph,@r0
      000A72 08               [12] 2013 	inc	r0
      000A73 86 F0            [24] 2014 	mov	b,@r0
      000A75 EC               [12] 2015 	mov	a,r4
      000A76 12 14 8F         [24] 2016 	lcall	__gptrput
                                   2017 ;	main.c:525: Temp <<=4; // Temp= 25 9a 9b 00 >> 00 00 00 25
      000A79 E5 1D            [12] 2018 	mov	a,(_Temp + 3)
      000A7B C4               [12] 2019 	swap	a
      000A7C 54 F0            [12] 2020 	anl	a,#0xf0
      000A7E C5 1C            [12] 2021 	xch	a,(_Temp + 2)
      000A80 C4               [12] 2022 	swap	a
      000A81 C5 1C            [12] 2023 	xch	a,(_Temp + 2)
      000A83 65 1C            [12] 2024 	xrl	a,(_Temp + 2)
      000A85 C5 1C            [12] 2025 	xch	a,(_Temp + 2)
      000A87 54 F0            [12] 2026 	anl	a,#0xf0
      000A89 C5 1C            [12] 2027 	xch	a,(_Temp + 2)
      000A8B 65 1C            [12] 2028 	xrl	a,(_Temp + 2)
      000A8D F5 1D            [12] 2029 	mov	(_Temp + 3),a
      000A8F E5 1B            [12] 2030 	mov	a,(_Temp + 1)
      000A91 C4               [12] 2031 	swap	a
      000A92 54 0F            [12] 2032 	anl	a,#0x0f
      000A94 45 1C            [12] 2033 	orl	a,(_Temp + 2)
      000A96 F5 1C            [12] 2034 	mov	(_Temp + 2),a
      000A98 E5 1B            [12] 2035 	mov	a,(_Temp + 1)
      000A9A C4               [12] 2036 	swap	a
      000A9B 54 F0            [12] 2037 	anl	a,#0xf0
      000A9D C5 1A            [12] 2038 	xch	a,_Temp
      000A9F C4               [12] 2039 	swap	a
      000AA0 C5 1A            [12] 2040 	xch	a,_Temp
      000AA2 65 1A            [12] 2041 	xrl	a,_Temp
      000AA4 C5 1A            [12] 2042 	xch	a,_Temp
      000AA6 54 F0            [12] 2043 	anl	a,#0xf0
      000AA8 C5 1A            [12] 2044 	xch	a,_Temp
      000AAA 65 1A            [12] 2045 	xrl	a,_Temp
      000AAC F5 1B            [12] 2046 	mov	(_Temp + 1),a
                                   2047 ;	main.c:526: for (i = 4 ; i<8 ; i++){
      000AAE 75 18 04         [24] 2048 	mov	_i,#0x04
      000AB1                       2049 00118$:
                                   2050 ;	main.c:527: Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); //array={25,9a,9b,00}
      000AB1 A8 2E            [24] 2051 	mov	r0,_bp
      000AB3 08               [12] 2052 	inc	r0
      000AB4 E5 2E            [12] 2053 	mov	a,_bp
      000AB6 24 11            [12] 2054 	add	a,#0x11
      000AB8 F9               [12] 2055 	mov	r1,a
      000AB9 E5 18            [12] 2056 	mov	a,_i
      000ABB 26               [12] 2057 	add	a,@r0
      000ABC F7               [12] 2058 	mov	@r1,a
      000ABD E4               [12] 2059 	clr	a
      000ABE 08               [12] 2060 	inc	r0
      000ABF 36               [12] 2061 	addc	a,@r0
      000AC0 09               [12] 2062 	inc	r1
      000AC1 F7               [12] 2063 	mov	@r1,a
      000AC2 08               [12] 2064 	inc	r0
      000AC3 E6               [12] 2065 	mov	a,@r0
      000AC4 09               [12] 2066 	inc	r1
      000AC5 F7               [12] 2067 	mov	@r1,a
      000AC6 74 07            [12] 2068 	mov	a,#0x07
      000AC8 C3               [12] 2069 	clr	c
      000AC9 95 18            [12] 2070 	subb	a,_i
      000ACB C4               [12] 2071 	swap	a
      000ACC 03               [12] 2072 	rr	a
      000ACD 54 F8            [12] 2073 	anl	a,#0xf8
      000ACF FC               [12] 2074 	mov	r4,a
      000AD0 8C F0            [24] 2075 	mov	b,r4
      000AD2 05 F0            [12] 2076 	inc	b
      000AD4 AA 1A            [24] 2077 	mov	r2,_Temp
      000AD6 AB 1B            [24] 2078 	mov	r3,(_Temp + 1)
      000AD8 AC 1C            [24] 2079 	mov	r4,(_Temp + 2)
      000ADA AF 1D            [24] 2080 	mov	r7,(_Temp + 3)
      000ADC 80 0D            [24] 2081 	sjmp	00194$
      000ADE                       2082 00193$:
      000ADE C3               [12] 2083 	clr	c
      000ADF EF               [12] 2084 	mov	a,r7
      000AE0 13               [12] 2085 	rrc	a
      000AE1 FF               [12] 2086 	mov	r7,a
      000AE2 EC               [12] 2087 	mov	a,r4
      000AE3 13               [12] 2088 	rrc	a
      000AE4 FC               [12] 2089 	mov	r4,a
      000AE5 EB               [12] 2090 	mov	a,r3
      000AE6 13               [12] 2091 	rrc	a
      000AE7 FB               [12] 2092 	mov	r3,a
      000AE8 EA               [12] 2093 	mov	a,r2
      000AE9 13               [12] 2094 	rrc	a
      000AEA FA               [12] 2095 	mov	r2,a
      000AEB                       2096 00194$:
      000AEB D5 F0 F0         [24] 2097 	djnz	b,00193$
      000AEE E5 2E            [12] 2098 	mov	a,_bp
      000AF0 24 11            [12] 2099 	add	a,#0x11
      000AF2 F8               [12] 2100 	mov	r0,a
      000AF3 86 82            [24] 2101 	mov	dpl,@r0
      000AF5 08               [12] 2102 	inc	r0
      000AF6 86 83            [24] 2103 	mov	dph,@r0
      000AF8 08               [12] 2104 	inc	r0
      000AF9 86 F0            [24] 2105 	mov	b,@r0
      000AFB EA               [12] 2106 	mov	a,r2
      000AFC 12 14 8F         [24] 2107 	lcall	__gptrput
                                   2108 ;	main.c:526: for (i = 4 ; i<8 ; i++){
      000AFF 05 18            [12] 2109 	inc	_i
      000B01 74 F8            [12] 2110 	mov	a,#0x100 - 0x08
      000B03 25 18            [12] 2111 	add	a,_i
      000B05 50 AA            [24] 2112 	jnc	00118$
                                   2113 ;	main.c:530: if ((round != 2) && (round != 9) && (round != 16)){
      000B07 E5 2E            [12] 2114 	mov	a,_bp
      000B09 24 FD            [12] 2115 	add	a,#0xfd
      000B0B F8               [12] 2116 	mov	r0,a
      000B0C B6 02 03         [24] 2117 	cjne	@r0,#0x02,00196$
      000B0F 02 0E 59         [24] 2118 	ljmp	00113$
      000B12                       2119 00196$:
      000B12 E5 2E            [12] 2120 	mov	a,_bp
      000B14 24 FD            [12] 2121 	add	a,#0xfd
      000B16 F8               [12] 2122 	mov	r0,a
      000B17 B6 09 03         [24] 2123 	cjne	@r0,#0x09,00197$
      000B1A 02 0E 59         [24] 2124 	ljmp	00113$
      000B1D                       2125 00197$:
      000B1D E5 2E            [12] 2126 	mov	a,_bp
      000B1F 24 FD            [12] 2127 	add	a,#0xfd
      000B21 F8               [12] 2128 	mov	r0,a
      000B22 B6 10 03         [24] 2129 	cjne	@r0,#0x10,00198$
      000B25 02 0E 59         [24] 2130 	ljmp	00113$
      000B28                       2131 00198$:
                                   2132 ;	main.c:531: for (i = 0 ; i<4 ; i++){
      000B28 75 18 00         [24] 2133 	mov	_i,#0x00
      000B2B                       2134 00120$:
                                   2135 ;	main.c:532: Temp <<=8;
      000B2B 85 1C 1D         [24] 2136 	mov	(_Temp + 3),(_Temp + 2)
      000B2E 85 1B 1C         [24] 2137 	mov	(_Temp + 2),(_Temp + 1)
      000B31 85 1A 1B         [24] 2138 	mov	(_Temp + 1),_Temp
      000B34 75 1A 00         [24] 2139 	mov	_Temp,#0x00
                                   2140 ;	main.c:533: Temp |= Key->Array[i];
      000B37 A8 2E            [24] 2141 	mov	r0,_bp
      000B39 08               [12] 2142 	inc	r0
      000B3A E5 18            [12] 2143 	mov	a,_i
      000B3C 26               [12] 2144 	add	a,@r0
      000B3D FD               [12] 2145 	mov	r5,a
      000B3E E4               [12] 2146 	clr	a
      000B3F 08               [12] 2147 	inc	r0
      000B40 36               [12] 2148 	addc	a,@r0
      000B41 FE               [12] 2149 	mov	r6,a
      000B42 08               [12] 2150 	inc	r0
      000B43 86 07            [24] 2151 	mov	ar7,@r0
      000B45 8D 82            [24] 2152 	mov	dpl,r5
      000B47 8E 83            [24] 2153 	mov	dph,r6
      000B49 8F F0            [24] 2154 	mov	b,r7
      000B4B 12 14 CC         [24] 2155 	lcall	__gptrget
      000B4E FD               [12] 2156 	mov	r5,a
      000B4F E4               [12] 2157 	clr	a
      000B50 FF               [12] 2158 	mov	r7,a
      000B51 FE               [12] 2159 	mov	r6,a
      000B52 FC               [12] 2160 	mov	r4,a
      000B53 ED               [12] 2161 	mov	a,r5
      000B54 42 1A            [12] 2162 	orl	_Temp,a
      000B56 EF               [12] 2163 	mov	a,r7
      000B57 42 1B            [12] 2164 	orl	(_Temp + 1),a
      000B59 EE               [12] 2165 	mov	a,r6
      000B5A 42 1C            [12] 2166 	orl	(_Temp + 2),a
      000B5C EC               [12] 2167 	mov	a,r4
      000B5D 42 1D            [12] 2168 	orl	(_Temp + 3),a
                                   2169 ;	main.c:531: for (i = 0 ; i<4 ; i++){
      000B5F 05 18            [12] 2170 	inc	_i
      000B61 74 FC            [12] 2171 	mov	a,#0x100 - 0x04
      000B63 25 18            [12] 2172 	add	a,_i
      000B65 50 C4            [24] 2173 	jnc	00120$
                                   2174 ;	main.c:536: Temp &=0xfffffff0; // Temp = (ab 12 cd 4)0 >>> (1)010 1011 0001 0010 1100 1101 0100 0000  // bit0   bit
      000B67 53 1A F0         [24] 2175 	anl	_Temp,#0xf0
                                   2176 ;	main.c:537: temp = GET_BIT(Temp,4);
      000B6A E5 1A            [12] 2177 	mov	a,_Temp
      000B6C C4               [12] 2178 	swap	a
      000B6D 54 01            [12] 2179 	anl	a,#0x01
      000B6F F5 19            [12] 2180 	mov	_temp,a
                                   2181 ;	main.c:538: Temp >>=1;
      000B71 E5 1D            [12] 2182 	mov	a,(_Temp + 3)
      000B73 C3               [12] 2183 	clr	c
      000B74 13               [12] 2184 	rrc	a
      000B75 F5 1D            [12] 2185 	mov	(_Temp + 3),a
      000B77 E5 1C            [12] 2186 	mov	a,(_Temp + 2)
      000B79 13               [12] 2187 	rrc	a
      000B7A F5 1C            [12] 2188 	mov	(_Temp + 2),a
      000B7C E5 1B            [12] 2189 	mov	a,(_Temp + 1)
      000B7E 13               [12] 2190 	rrc	a
      000B7F F5 1B            [12] 2191 	mov	(_Temp + 1),a
      000B81 E5 1A            [12] 2192 	mov	a,_Temp
      000B83 13               [12] 2193 	rrc	a
      000B84 F5 1A            [12] 2194 	mov	_Temp,a
                                   2195 ;	main.c:539: Temp = ((Temp & ~( ((uint32)1)<<31)) | (((uint32)temp) << 31));//Temp = 0101 0110 0010 0101 1001 1010 10(1)0 0000 >> 56 25 9a 90 >> 90 >>09
      000B86 E5 2E            [12] 2196 	mov	a,_bp
      000B88 24 11            [12] 2197 	add	a,#0x11
      000B8A F8               [12] 2198 	mov	r0,a
      000B8B A6 1A            [24] 2199 	mov	@r0,_Temp
      000B8D 08               [12] 2200 	inc	r0
      000B8E A6 1B            [24] 2201 	mov	@r0,(_Temp + 1)
      000B90 08               [12] 2202 	inc	r0
      000B91 A6 1C            [24] 2203 	mov	@r0,(_Temp + 2)
      000B93 74 7F            [12] 2204 	mov	a,#0x7f
      000B95 55 1D            [12] 2205 	anl	a,(_Temp + 3)
      000B97 08               [12] 2206 	inc	r0
      000B98 F6               [12] 2207 	mov	@r0,a
      000B99 AA 19            [24] 2208 	mov	r2,_temp
      000B9B E4               [12] 2209 	clr	a
      000B9C FB               [12] 2210 	mov	r3,a
      000B9D FE               [12] 2211 	mov	r6,a
      000B9E EA               [12] 2212 	mov	a,r2
      000B9F 03               [12] 2213 	rr	a
      000BA0 54 80            [12] 2214 	anl	a,#0x80
      000BA2 FF               [12] 2215 	mov	r7,a
      000BA3 7A 00            [12] 2216 	mov	r2,#0x00
      000BA5 E5 2E            [12] 2217 	mov	a,_bp
      000BA7 24 11            [12] 2218 	add	a,#0x11
      000BA9 F8               [12] 2219 	mov	r0,a
      000BAA EA               [12] 2220 	mov	a,r2
      000BAB 46               [12] 2221 	orl	a,@r0
      000BAC F5 1A            [12] 2222 	mov	_Temp,a
      000BAE EB               [12] 2223 	mov	a,r3
      000BAF 08               [12] 2224 	inc	r0
      000BB0 46               [12] 2225 	orl	a,@r0
      000BB1 F5 1B            [12] 2226 	mov	(_Temp + 1),a
      000BB3 EE               [12] 2227 	mov	a,r6
      000BB4 08               [12] 2228 	inc	r0
      000BB5 46               [12] 2229 	orl	a,@r0
      000BB6 F5 1C            [12] 2230 	mov	(_Temp + 2),a
      000BB8 EF               [12] 2231 	mov	a,r7
      000BB9 08               [12] 2232 	inc	r0
      000BBA 46               [12] 2233 	orl	a,@r0
      000BBB F5 1D            [12] 2234 	mov	(_Temp + 3),a
                                   2235 ;	main.c:541: for (i = 0 ; i<3 ; i++){
      000BBD 8E 18            [24] 2236 	mov	_i,r6
      000BBF                       2237 00122$:
                                   2238 ;	main.c:542: Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); //array={56,25,9a,90}
      000BBF A8 2E            [24] 2239 	mov	r0,_bp
      000BC1 08               [12] 2240 	inc	r0
      000BC2 E5 2E            [12] 2241 	mov	a,_bp
      000BC4 24 11            [12] 2242 	add	a,#0x11
      000BC6 F9               [12] 2243 	mov	r1,a
      000BC7 E5 18            [12] 2244 	mov	a,_i
      000BC9 26               [12] 2245 	add	a,@r0
      000BCA F7               [12] 2246 	mov	@r1,a
      000BCB E4               [12] 2247 	clr	a
      000BCC 08               [12] 2248 	inc	r0
      000BCD 36               [12] 2249 	addc	a,@r0
      000BCE 09               [12] 2250 	inc	r1
      000BCF F7               [12] 2251 	mov	@r1,a
      000BD0 08               [12] 2252 	inc	r0
      000BD1 E6               [12] 2253 	mov	a,@r0
      000BD2 09               [12] 2254 	inc	r1
      000BD3 F7               [12] 2255 	mov	@r1,a
      000BD4 74 03            [12] 2256 	mov	a,#0x03
      000BD6 C3               [12] 2257 	clr	c
      000BD7 95 18            [12] 2258 	subb	a,_i
      000BD9 C4               [12] 2259 	swap	a
      000BDA 03               [12] 2260 	rr	a
      000BDB 54 F8            [12] 2261 	anl	a,#0xf8
      000BDD FC               [12] 2262 	mov	r4,a
      000BDE 8C F0            [24] 2263 	mov	b,r4
      000BE0 05 F0            [12] 2264 	inc	b
      000BE2 AA 1A            [24] 2265 	mov	r2,_Temp
      000BE4 AB 1B            [24] 2266 	mov	r3,(_Temp + 1)
      000BE6 AC 1C            [24] 2267 	mov	r4,(_Temp + 2)
      000BE8 AF 1D            [24] 2268 	mov	r7,(_Temp + 3)
      000BEA 80 0D            [24] 2269 	sjmp	00201$
      000BEC                       2270 00200$:
      000BEC C3               [12] 2271 	clr	c
      000BED EF               [12] 2272 	mov	a,r7
      000BEE 13               [12] 2273 	rrc	a
      000BEF FF               [12] 2274 	mov	r7,a
      000BF0 EC               [12] 2275 	mov	a,r4
      000BF1 13               [12] 2276 	rrc	a
      000BF2 FC               [12] 2277 	mov	r4,a
      000BF3 EB               [12] 2278 	mov	a,r3
      000BF4 13               [12] 2279 	rrc	a
      000BF5 FB               [12] 2280 	mov	r3,a
      000BF6 EA               [12] 2281 	mov	a,r2
      000BF7 13               [12] 2282 	rrc	a
      000BF8 FA               [12] 2283 	mov	r2,a
      000BF9                       2284 00201$:
      000BF9 D5 F0 F0         [24] 2285 	djnz	b,00200$
      000BFC E5 2E            [12] 2286 	mov	a,_bp
      000BFE 24 11            [12] 2287 	add	a,#0x11
      000C00 F8               [12] 2288 	mov	r0,a
      000C01 86 82            [24] 2289 	mov	dpl,@r0
      000C03 08               [12] 2290 	inc	r0
      000C04 86 83            [24] 2291 	mov	dph,@r0
      000C06 08               [12] 2292 	inc	r0
      000C07 86 F0            [24] 2293 	mov	b,@r0
      000C09 EA               [12] 2294 	mov	a,r2
      000C0A 12 14 8F         [24] 2295 	lcall	__gptrput
                                   2296 ;	main.c:541: for (i = 0 ; i<3 ; i++){
      000C0D 05 18            [12] 2297 	inc	_i
      000C0F 74 FD            [12] 2298 	mov	a,#0x100 - 0x03
      000C11 25 18            [12] 2299 	add	a,_i
      000C13 50 AA            [24] 2300 	jnc	00122$
                                   2301 ;	main.c:544: Key->Array[3] &=0x0f; 
      000C15 E5 2E            [12] 2302 	mov	a,_bp
      000C17 24 08            [12] 2303 	add	a,#0x08
      000C19 F8               [12] 2304 	mov	r0,a
      000C1A 86 82            [24] 2305 	mov	dpl,@r0
      000C1C 08               [12] 2306 	inc	r0
      000C1D 86 83            [24] 2307 	mov	dph,@r0
      000C1F 08               [12] 2308 	inc	r0
      000C20 86 F0            [24] 2309 	mov	b,@r0
      000C22 12 14 CC         [24] 2310 	lcall	__gptrget
      000C25 FF               [12] 2311 	mov	r7,a
      000C26 53 07 0F         [24] 2312 	anl	ar7,#0x0f
      000C29 E5 2E            [12] 2313 	mov	a,_bp
      000C2B 24 08            [12] 2314 	add	a,#0x08
      000C2D F8               [12] 2315 	mov	r0,a
      000C2E 86 82            [24] 2316 	mov	dpl,@r0
      000C30 08               [12] 2317 	inc	r0
      000C31 86 83            [24] 2318 	mov	dph,@r0
      000C33 08               [12] 2319 	inc	r0
      000C34 86 F0            [24] 2320 	mov	b,@r0
      000C36 EF               [12] 2321 	mov	a,r7
      000C37 12 14 8F         [24] 2322 	lcall	__gptrput
                                   2323 ;	main.c:545: Key->Array[3] |= (uint8)(Temp  & 0x000000f0); 
      000C3A AF 1A            [24] 2324 	mov	r7,_Temp
      000C3C 53 07 F0         [24] 2325 	anl	ar7,#0xf0
      000C3F E5 2E            [12] 2326 	mov	a,_bp
      000C41 24 08            [12] 2327 	add	a,#0x08
      000C43 F8               [12] 2328 	mov	r0,a
      000C44 86 82            [24] 2329 	mov	dpl,@r0
      000C46 08               [12] 2330 	inc	r0
      000C47 86 83            [24] 2331 	mov	dph,@r0
      000C49 08               [12] 2332 	inc	r0
      000C4A 86 F0            [24] 2333 	mov	b,@r0
      000C4C 12 14 CC         [24] 2334 	lcall	__gptrget
      000C4F 42 07            [12] 2335 	orl	ar7,a
      000C51 E5 2E            [12] 2336 	mov	a,_bp
      000C53 24 08            [12] 2337 	add	a,#0x08
      000C55 F8               [12] 2338 	mov	r0,a
      000C56 86 82            [24] 2339 	mov	dpl,@r0
      000C58 08               [12] 2340 	inc	r0
      000C59 86 83            [24] 2341 	mov	dph,@r0
      000C5B 08               [12] 2342 	inc	r0
      000C5C 86 F0            [24] 2343 	mov	b,@r0
      000C5E EF               [12] 2344 	mov	a,r7
      000C5F 12 14 8F         [24] 2345 	lcall	__gptrput
                                   2346 ;	main.c:549: Temp |= Key->Array[3];   //76543210 
      000C62 8F 1A            [24] 2347 	mov	_Temp,r7
      000C64 75 1B 00         [24] 2348 	mov	(_Temp + 1),#0x00
      000C67 75 1C 00         [24] 2349 	mov	(_Temp + 2),#0x00
                                   2350 ;	main.c:550: Temp = Temp <<8;
      000C6A 85 1C 1D         [24] 2351 	mov	(_Temp + 3),(_Temp + 2)
      000C6D 85 1B 1C         [24] 2352 	mov	(_Temp + 2),(_Temp + 1)
      000C70 85 1A 1B         [24] 2353 	mov	(_Temp + 1),_Temp
      000C73 75 1A 00         [24] 2354 	mov	_Temp,#0x00
                                   2355 ;	main.c:552: Temp |= Key->Array[4];   //20
      000C76 E5 2E            [12] 2356 	mov	a,_bp
      000C78 24 04            [12] 2357 	add	a,#0x04
      000C7A F8               [12] 2358 	mov	r0,a
      000C7B 86 82            [24] 2359 	mov	dpl,@r0
      000C7D 08               [12] 2360 	inc	r0
      000C7E 86 83            [24] 2361 	mov	dph,@r0
      000C80 08               [12] 2362 	inc	r0
      000C81 86 F0            [24] 2363 	mov	b,@r0
      000C83 12 14 CC         [24] 2364 	lcall	__gptrget
      000C86 FF               [12] 2365 	mov	r7,a
      000C87 E4               [12] 2366 	clr	a
      000C88 FE               [12] 2367 	mov	r6,a
      000C89 FD               [12] 2368 	mov	r5,a
      000C8A FC               [12] 2369 	mov	r4,a
      000C8B EF               [12] 2370 	mov	a,r7
      000C8C 42 1A            [12] 2371 	orl	_Temp,a
      000C8E EE               [12] 2372 	mov	a,r6
      000C8F 42 1B            [12] 2373 	orl	(_Temp + 1),a
      000C91 ED               [12] 2374 	mov	a,r5
      000C92 42 1C            [12] 2375 	orl	(_Temp + 2),a
      000C94 EC               [12] 2376 	mov	a,r4
      000C95 42 1D            [12] 2377 	orl	(_Temp + 3),a
                                   2378 ;	main.c:554: Temp = Temp <<8;
      000C97 85 1C 1D         [24] 2379 	mov	(_Temp + 3),(_Temp + 2)
      000C9A 85 1B 1C         [24] 2380 	mov	(_Temp + 2),(_Temp + 1)
      000C9D 85 1A 1B         [24] 2381 	mov	(_Temp + 1),_Temp
      000CA0 75 1A 00         [24] 2382 	mov	_Temp,#0x00
                                   2383 ;	main.c:555: Temp |= Key->Array[5];   //20
      000CA3 E5 2E            [12] 2384 	mov	a,_bp
      000CA5 24 0B            [12] 2385 	add	a,#0x0b
      000CA7 F8               [12] 2386 	mov	r0,a
      000CA8 86 82            [24] 2387 	mov	dpl,@r0
      000CAA 08               [12] 2388 	inc	r0
      000CAB 86 83            [24] 2389 	mov	dph,@r0
      000CAD 08               [12] 2390 	inc	r0
      000CAE 86 F0            [24] 2391 	mov	b,@r0
      000CB0 12 14 CC         [24] 2392 	lcall	__gptrget
      000CB3 FF               [12] 2393 	mov	r7,a
      000CB4 E4               [12] 2394 	clr	a
      000CB5 FE               [12] 2395 	mov	r6,a
      000CB6 FD               [12] 2396 	mov	r5,a
      000CB7 FC               [12] 2397 	mov	r4,a
      000CB8 EF               [12] 2398 	mov	a,r7
      000CB9 42 1A            [12] 2399 	orl	_Temp,a
      000CBB EE               [12] 2400 	mov	a,r6
      000CBC 42 1B            [12] 2401 	orl	(_Temp + 1),a
      000CBE ED               [12] 2402 	mov	a,r5
      000CBF 42 1C            [12] 2403 	orl	(_Temp + 2),a
      000CC1 EC               [12] 2404 	mov	a,r4
      000CC2 42 1D            [12] 2405 	orl	(_Temp + 3),a
                                   2406 ;	main.c:556: Temp = Temp <<8;
      000CC4 85 1C 1D         [24] 2407 	mov	(_Temp + 3),(_Temp + 2)
      000CC7 85 1B 1C         [24] 2408 	mov	(_Temp + 2),(_Temp + 1)
      000CCA 85 1A 1B         [24] 2409 	mov	(_Temp + 1),_Temp
      000CCD 75 1A 00         [24] 2410 	mov	_Temp,#0x00
                                   2411 ;	main.c:557: Temp |= Key->Array[6];	//28
      000CD0 E5 2E            [12] 2412 	mov	a,_bp
      000CD2 24 0E            [12] 2413 	add	a,#0x0e
      000CD4 F8               [12] 2414 	mov	r0,a
      000CD5 86 82            [24] 2415 	mov	dpl,@r0
      000CD7 08               [12] 2416 	inc	r0
      000CD8 86 83            [24] 2417 	mov	dph,@r0
      000CDA 08               [12] 2418 	inc	r0
      000CDB 86 F0            [24] 2419 	mov	b,@r0
      000CDD 12 14 CC         [24] 2420 	lcall	__gptrget
      000CE0 FF               [12] 2421 	mov	r7,a
      000CE1 E4               [12] 2422 	clr	a
      000CE2 FE               [12] 2423 	mov	r6,a
      000CE3 FD               [12] 2424 	mov	r5,a
      000CE4 FC               [12] 2425 	mov	r4,a
      000CE5 EF               [12] 2426 	mov	a,r7
      000CE6 42 1A            [12] 2427 	orl	_Temp,a
      000CE8 EE               [12] 2428 	mov	a,r6
      000CE9 42 1B            [12] 2429 	orl	(_Temp + 1),a
      000CEB ED               [12] 2430 	mov	a,r5
      000CEC 42 1C            [12] 2431 	orl	(_Temp + 2),a
      000CEE EC               [12] 2432 	mov	a,r4
      000CEF 42 1D            [12] 2433 	orl	(_Temp + 3),a
                                   2434 ;	main.c:558: Temp= Temp <<4;
      000CF1 E5 1D            [12] 2435 	mov	a,(_Temp + 3)
      000CF3 C4               [12] 2436 	swap	a
      000CF4 54 F0            [12] 2437 	anl	a,#0xf0
      000CF6 C5 1C            [12] 2438 	xch	a,(_Temp + 2)
      000CF8 C4               [12] 2439 	swap	a
      000CF9 C5 1C            [12] 2440 	xch	a,(_Temp + 2)
      000CFB 65 1C            [12] 2441 	xrl	a,(_Temp + 2)
      000CFD C5 1C            [12] 2442 	xch	a,(_Temp + 2)
      000CFF 54 F0            [12] 2443 	anl	a,#0xf0
      000D01 C5 1C            [12] 2444 	xch	a,(_Temp + 2)
      000D03 65 1C            [12] 2445 	xrl	a,(_Temp + 2)
      000D05 F5 1D            [12] 2446 	mov	(_Temp + 3),a
      000D07 E5 1B            [12] 2447 	mov	a,(_Temp + 1)
      000D09 C4               [12] 2448 	swap	a
      000D0A 54 0F            [12] 2449 	anl	a,#0x0f
      000D0C 45 1C            [12] 2450 	orl	a,(_Temp + 2)
      000D0E F5 1C            [12] 2451 	mov	(_Temp + 2),a
      000D10 E5 1B            [12] 2452 	mov	a,(_Temp + 1)
      000D12 C4               [12] 2453 	swap	a
      000D13 54 F0            [12] 2454 	anl	a,#0xf0
      000D15 C5 1A            [12] 2455 	xch	a,_Temp
      000D17 C4               [12] 2456 	swap	a
      000D18 C5 1A            [12] 2457 	xch	a,_Temp
      000D1A 65 1A            [12] 2458 	xrl	a,_Temp
      000D1C C5 1A            [12] 2459 	xch	a,_Temp
      000D1E 54 F0            [12] 2460 	anl	a,#0xf0
      000D20 C5 1A            [12] 2461 	xch	a,_Temp
      000D22 65 1A            [12] 2462 	xrl	a,_Temp
      000D24 F5 1B            [12] 2463 	mov	(_Temp + 1),a
                                   2464 ;	main.c:561: temp = GET_BIT(Temp,4);//
      000D26 E5 1A            [12] 2465 	mov	a,_Temp
      000D28 C4               [12] 2466 	swap	a
      000D29 54 01            [12] 2467 	anl	a,#0x01
      000D2B F5 19            [12] 2468 	mov	_temp,a
                                   2469 ;	main.c:562: Temp >>=1;//011 0001 0010 1100 1101 0100 0101 0000 0
      000D2D E5 1D            [12] 2470 	mov	a,(_Temp + 3)
      000D2F C3               [12] 2471 	clr	c
      000D30 13               [12] 2472 	rrc	a
      000D31 F5 1D            [12] 2473 	mov	(_Temp + 3),a
      000D33 E5 1C            [12] 2474 	mov	a,(_Temp + 2)
      000D35 13               [12] 2475 	rrc	a
      000D36 F5 1C            [12] 2476 	mov	(_Temp + 2),a
      000D38 E5 1B            [12] 2477 	mov	a,(_Temp + 1)
      000D3A 13               [12] 2478 	rrc	a
      000D3B F5 1B            [12] 2479 	mov	(_Temp + 1),a
      000D3D E5 1A            [12] 2480 	mov	a,_Temp
      000D3F 13               [12] 2481 	rrc	a
      000D40 F5 1A            [12] 2482 	mov	_Temp,a
                                   2483 ;	main.c:563: Temp = ((Temp & ~( ((uint32)1)<<31)) | (((uint32)temp) << 31));// 0110 0010 0101 1001 1010 1000 101(1) 0000 >> 62 59 a9 b0
      000D42 E5 2E            [12] 2484 	mov	a,_bp
      000D44 24 11            [12] 2485 	add	a,#0x11
      000D46 F8               [12] 2486 	mov	r0,a
      000D47 A6 1A            [24] 2487 	mov	@r0,_Temp
      000D49 08               [12] 2488 	inc	r0
      000D4A A6 1B            [24] 2489 	mov	@r0,(_Temp + 1)
      000D4C 08               [12] 2490 	inc	r0
      000D4D A6 1C            [24] 2491 	mov	@r0,(_Temp + 2)
      000D4F 74 7F            [12] 2492 	mov	a,#0x7f
      000D51 55 1D            [12] 2493 	anl	a,(_Temp + 3)
      000D53 08               [12] 2494 	inc	r0
      000D54 F6               [12] 2495 	mov	@r0,a
      000D55 AA 19            [24] 2496 	mov	r2,_temp
      000D57 E4               [12] 2497 	clr	a
      000D58 FB               [12] 2498 	mov	r3,a
      000D59 FE               [12] 2499 	mov	r6,a
      000D5A EA               [12] 2500 	mov	a,r2
      000D5B 03               [12] 2501 	rr	a
      000D5C 54 80            [12] 2502 	anl	a,#0x80
      000D5E FF               [12] 2503 	mov	r7,a
      000D5F 7A 00            [12] 2504 	mov	r2,#0x00
      000D61 E5 2E            [12] 2505 	mov	a,_bp
      000D63 24 11            [12] 2506 	add	a,#0x11
      000D65 F8               [12] 2507 	mov	r0,a
      000D66 EA               [12] 2508 	mov	a,r2
      000D67 46               [12] 2509 	orl	a,@r0
      000D68 F5 1A            [12] 2510 	mov	_Temp,a
      000D6A EB               [12] 2511 	mov	a,r3
      000D6B 08               [12] 2512 	inc	r0
      000D6C 46               [12] 2513 	orl	a,@r0
      000D6D F5 1B            [12] 2514 	mov	(_Temp + 1),a
      000D6F EE               [12] 2515 	mov	a,r6
      000D70 08               [12] 2516 	inc	r0
      000D71 46               [12] 2517 	orl	a,@r0
      000D72 F5 1C            [12] 2518 	mov	(_Temp + 2),a
      000D74 EF               [12] 2519 	mov	a,r7
      000D75 08               [12] 2520 	inc	r0
      000D76 46               [12] 2521 	orl	a,@r0
      000D77 F5 1D            [12] 2522 	mov	(_Temp + 3),a
                                   2523 ;	main.c:565: Key->Array[3] &=0xf0; 
      000D79 E5 2E            [12] 2524 	mov	a,_bp
      000D7B 24 08            [12] 2525 	add	a,#0x08
      000D7D F8               [12] 2526 	mov	r0,a
      000D7E 86 82            [24] 2527 	mov	dpl,@r0
      000D80 08               [12] 2528 	inc	r0
      000D81 86 83            [24] 2529 	mov	dph,@r0
      000D83 08               [12] 2530 	inc	r0
      000D84 86 F0            [24] 2531 	mov	b,@r0
      000D86 12 14 CC         [24] 2532 	lcall	__gptrget
      000D89 FF               [12] 2533 	mov	r7,a
      000D8A 53 07 F0         [24] 2534 	anl	ar7,#0xf0
      000D8D E5 2E            [12] 2535 	mov	a,_bp
      000D8F 24 08            [12] 2536 	add	a,#0x08
      000D91 F8               [12] 2537 	mov	r0,a
      000D92 86 82            [24] 2538 	mov	dpl,@r0
      000D94 08               [12] 2539 	inc	r0
      000D95 86 83            [24] 2540 	mov	dph,@r0
      000D97 08               [12] 2541 	inc	r0
      000D98 86 F0            [24] 2542 	mov	b,@r0
      000D9A EF               [12] 2543 	mov	a,r7
      000D9B 12 14 8F         [24] 2544 	lcall	__gptrput
                                   2545 ;	main.c:566: Key->Array[3] |= (uint8)((Temp)>>28); //62 59 a9 b0 >> 60 00 00 00 >>28 >>>> 00 00 00 06 >> 06
      000D9E E5 1D            [12] 2546 	mov	a,(_Temp + 3)
      000DA0 C4               [12] 2547 	swap	a
      000DA1 54 0F            [12] 2548 	anl	a,#0x0f
      000DA3 FC               [12] 2549 	mov	r4,a
      000DA4 E4               [12] 2550 	clr	a
      000DA5 FD               [12] 2551 	mov	r5,a
      000DA6 FE               [12] 2552 	mov	r6,a
      000DA7 E5 2E            [12] 2553 	mov	a,_bp
      000DA9 24 08            [12] 2554 	add	a,#0x08
      000DAB F8               [12] 2555 	mov	r0,a
      000DAC 86 82            [24] 2556 	mov	dpl,@r0
      000DAE 08               [12] 2557 	inc	r0
      000DAF 86 83            [24] 2558 	mov	dph,@r0
      000DB1 08               [12] 2559 	inc	r0
      000DB2 86 F0            [24] 2560 	mov	b,@r0
      000DB4 12 14 CC         [24] 2561 	lcall	__gptrget
      000DB7 FF               [12] 2562 	mov	r7,a
      000DB8 42 04            [12] 2563 	orl	ar4,a
      000DBA E5 2E            [12] 2564 	mov	a,_bp
      000DBC 24 08            [12] 2565 	add	a,#0x08
      000DBE F8               [12] 2566 	mov	r0,a
      000DBF 86 82            [24] 2567 	mov	dpl,@r0
      000DC1 08               [12] 2568 	inc	r0
      000DC2 86 83            [24] 2569 	mov	dph,@r0
      000DC4 08               [12] 2570 	inc	r0
      000DC5 86 F0            [24] 2571 	mov	b,@r0
      000DC7 EC               [12] 2572 	mov	a,r4
      000DC8 12 14 8F         [24] 2573 	lcall	__gptrput
                                   2574 ;	main.c:567: Temp <<=4; // Temp= 25 9a 9b 00 >> 00 00 00 25
      000DCB E5 1D            [12] 2575 	mov	a,(_Temp + 3)
      000DCD C4               [12] 2576 	swap	a
      000DCE 54 F0            [12] 2577 	anl	a,#0xf0
      000DD0 C5 1C            [12] 2578 	xch	a,(_Temp + 2)
      000DD2 C4               [12] 2579 	swap	a
      000DD3 C5 1C            [12] 2580 	xch	a,(_Temp + 2)
      000DD5 65 1C            [12] 2581 	xrl	a,(_Temp + 2)
      000DD7 C5 1C            [12] 2582 	xch	a,(_Temp + 2)
      000DD9 54 F0            [12] 2583 	anl	a,#0xf0
      000DDB C5 1C            [12] 2584 	xch	a,(_Temp + 2)
      000DDD 65 1C            [12] 2585 	xrl	a,(_Temp + 2)
      000DDF F5 1D            [12] 2586 	mov	(_Temp + 3),a
      000DE1 E5 1B            [12] 2587 	mov	a,(_Temp + 1)
      000DE3 C4               [12] 2588 	swap	a
      000DE4 54 0F            [12] 2589 	anl	a,#0x0f
      000DE6 45 1C            [12] 2590 	orl	a,(_Temp + 2)
      000DE8 F5 1C            [12] 2591 	mov	(_Temp + 2),a
      000DEA E5 1B            [12] 2592 	mov	a,(_Temp + 1)
      000DEC C4               [12] 2593 	swap	a
      000DED 54 F0            [12] 2594 	anl	a,#0xf0
      000DEF C5 1A            [12] 2595 	xch	a,_Temp
      000DF1 C4               [12] 2596 	swap	a
      000DF2 C5 1A            [12] 2597 	xch	a,_Temp
      000DF4 65 1A            [12] 2598 	xrl	a,_Temp
      000DF6 C5 1A            [12] 2599 	xch	a,_Temp
      000DF8 54 F0            [12] 2600 	anl	a,#0xf0
      000DFA C5 1A            [12] 2601 	xch	a,_Temp
      000DFC 65 1A            [12] 2602 	xrl	a,_Temp
      000DFE F5 1B            [12] 2603 	mov	(_Temp + 1),a
                                   2604 ;	main.c:568: for (i = 4 ; i<8 ; i++){
      000E00 75 18 04         [24] 2605 	mov	_i,#0x04
      000E03                       2606 00124$:
                                   2607 ;	main.c:569: Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); //array={25,9a,9b,00}
      000E03 A8 2E            [24] 2608 	mov	r0,_bp
      000E05 08               [12] 2609 	inc	r0
      000E06 E5 2E            [12] 2610 	mov	a,_bp
      000E08 24 11            [12] 2611 	add	a,#0x11
      000E0A F9               [12] 2612 	mov	r1,a
      000E0B E5 18            [12] 2613 	mov	a,_i
      000E0D 26               [12] 2614 	add	a,@r0
      000E0E F7               [12] 2615 	mov	@r1,a
      000E0F E4               [12] 2616 	clr	a
      000E10 08               [12] 2617 	inc	r0
      000E11 36               [12] 2618 	addc	a,@r0
      000E12 09               [12] 2619 	inc	r1
      000E13 F7               [12] 2620 	mov	@r1,a
      000E14 08               [12] 2621 	inc	r0
      000E15 E6               [12] 2622 	mov	a,@r0
      000E16 09               [12] 2623 	inc	r1
      000E17 F7               [12] 2624 	mov	@r1,a
      000E18 74 07            [12] 2625 	mov	a,#0x07
      000E1A C3               [12] 2626 	clr	c
      000E1B 95 18            [12] 2627 	subb	a,_i
      000E1D C4               [12] 2628 	swap	a
      000E1E 03               [12] 2629 	rr	a
      000E1F 54 F8            [12] 2630 	anl	a,#0xf8
      000E21 FC               [12] 2631 	mov	r4,a
      000E22 8C F0            [24] 2632 	mov	b,r4
      000E24 05 F0            [12] 2633 	inc	b
      000E26 AA 1A            [24] 2634 	mov	r2,_Temp
      000E28 AB 1B            [24] 2635 	mov	r3,(_Temp + 1)
      000E2A AC 1C            [24] 2636 	mov	r4,(_Temp + 2)
      000E2C AF 1D            [24] 2637 	mov	r7,(_Temp + 3)
      000E2E 80 0D            [24] 2638 	sjmp	00204$
      000E30                       2639 00203$:
      000E30 C3               [12] 2640 	clr	c
      000E31 EF               [12] 2641 	mov	a,r7
      000E32 13               [12] 2642 	rrc	a
      000E33 FF               [12] 2643 	mov	r7,a
      000E34 EC               [12] 2644 	mov	a,r4
      000E35 13               [12] 2645 	rrc	a
      000E36 FC               [12] 2646 	mov	r4,a
      000E37 EB               [12] 2647 	mov	a,r3
      000E38 13               [12] 2648 	rrc	a
      000E39 FB               [12] 2649 	mov	r3,a
      000E3A EA               [12] 2650 	mov	a,r2
      000E3B 13               [12] 2651 	rrc	a
      000E3C FA               [12] 2652 	mov	r2,a
      000E3D                       2653 00204$:
      000E3D D5 F0 F0         [24] 2654 	djnz	b,00203$
      000E40 E5 2E            [12] 2655 	mov	a,_bp
      000E42 24 11            [12] 2656 	add	a,#0x11
      000E44 F8               [12] 2657 	mov	r0,a
      000E45 86 82            [24] 2658 	mov	dpl,@r0
      000E47 08               [12] 2659 	inc	r0
      000E48 86 83            [24] 2660 	mov	dph,@r0
      000E4A 08               [12] 2661 	inc	r0
      000E4B 86 F0            [24] 2662 	mov	b,@r0
      000E4D EA               [12] 2663 	mov	a,r2
      000E4E 12 14 8F         [24] 2664 	lcall	__gptrput
                                   2665 ;	main.c:568: for (i = 4 ; i<8 ; i++){
      000E51 05 18            [12] 2666 	inc	_i
      000E53 74 F8            [12] 2667 	mov	a,#0x100 - 0x08
      000E55 25 18            [12] 2668 	add	a,_i
      000E57 50 AA            [24] 2669 	jnc	00124$
      000E59                       2670 00113$:
                                   2671 ;	main.c:574: sub_key->Half[1] = Key->Half[1];
      000E59 E5 2E            [12] 2672 	mov	a,_bp
      000E5B 24 FA            [12] 2673 	add	a,#0xfa
      000E5D F8               [12] 2674 	mov	r0,a
      000E5E E5 2E            [12] 2675 	mov	a,_bp
      000E60 24 0E            [12] 2676 	add	a,#0x0e
      000E62 F9               [12] 2677 	mov	r1,a
      000E63 E6               [12] 2678 	mov	a,@r0
      000E64 F7               [12] 2679 	mov	@r1,a
      000E65 08               [12] 2680 	inc	r0
      000E66 E6               [12] 2681 	mov	a,@r0
      000E67 09               [12] 2682 	inc	r1
      000E68 F7               [12] 2683 	mov	@r1,a
      000E69 08               [12] 2684 	inc	r0
      000E6A E6               [12] 2685 	mov	a,@r0
      000E6B 09               [12] 2686 	inc	r1
      000E6C F7               [12] 2687 	mov	@r1,a
      000E6D E5 2E            [12] 2688 	mov	a,_bp
      000E6F 24 0E            [12] 2689 	add	a,#0x0e
      000E71 F8               [12] 2690 	mov	r0,a
      000E72 E5 2E            [12] 2691 	mov	a,_bp
      000E74 24 11            [12] 2692 	add	a,#0x11
      000E76 F9               [12] 2693 	mov	r1,a
      000E77 74 04            [12] 2694 	mov	a,#0x04
      000E79 26               [12] 2695 	add	a,@r0
      000E7A F7               [12] 2696 	mov	@r1,a
      000E7B E4               [12] 2697 	clr	a
      000E7C 08               [12] 2698 	inc	r0
      000E7D 36               [12] 2699 	addc	a,@r0
      000E7E 09               [12] 2700 	inc	r1
      000E7F F7               [12] 2701 	mov	@r1,a
      000E80 08               [12] 2702 	inc	r0
      000E81 E6               [12] 2703 	mov	a,@r0
      000E82 09               [12] 2704 	inc	r1
      000E83 F7               [12] 2705 	mov	@r1,a
      000E84 A8 2E            [24] 2706 	mov	r0,_bp
      000E86 08               [12] 2707 	inc	r0
      000E87 74 04            [12] 2708 	mov	a,#0x04
      000E89 26               [12] 2709 	add	a,@r0
      000E8A FA               [12] 2710 	mov	r2,a
      000E8B E4               [12] 2711 	clr	a
      000E8C 08               [12] 2712 	inc	r0
      000E8D 36               [12] 2713 	addc	a,@r0
      000E8E FB               [12] 2714 	mov	r3,a
      000E8F 08               [12] 2715 	inc	r0
      000E90 86 04            [24] 2716 	mov	ar4,@r0
      000E92 8A 82            [24] 2717 	mov	dpl,r2
      000E94 8B 83            [24] 2718 	mov	dph,r3
      000E96 8C F0            [24] 2719 	mov	b,r4
      000E98 12 14 CC         [24] 2720 	lcall	__gptrget
      000E9B FA               [12] 2721 	mov	r2,a
      000E9C A3               [24] 2722 	inc	dptr
      000E9D 12 14 CC         [24] 2723 	lcall	__gptrget
      000EA0 FB               [12] 2724 	mov	r3,a
      000EA1 A3               [24] 2725 	inc	dptr
      000EA2 12 14 CC         [24] 2726 	lcall	__gptrget
      000EA5 FC               [12] 2727 	mov	r4,a
      000EA6 A3               [24] 2728 	inc	dptr
      000EA7 12 14 CC         [24] 2729 	lcall	__gptrget
      000EAA FF               [12] 2730 	mov	r7,a
      000EAB E5 2E            [12] 2731 	mov	a,_bp
      000EAD 24 11            [12] 2732 	add	a,#0x11
      000EAF F8               [12] 2733 	mov	r0,a
      000EB0 86 82            [24] 2734 	mov	dpl,@r0
      000EB2 08               [12] 2735 	inc	r0
      000EB3 86 83            [24] 2736 	mov	dph,@r0
      000EB5 08               [12] 2737 	inc	r0
      000EB6 86 F0            [24] 2738 	mov	b,@r0
      000EB8 EA               [12] 2739 	mov	a,r2
      000EB9 12 14 8F         [24] 2740 	lcall	__gptrput
      000EBC A3               [24] 2741 	inc	dptr
      000EBD EB               [12] 2742 	mov	a,r3
      000EBE 12 14 8F         [24] 2743 	lcall	__gptrput
      000EC1 A3               [24] 2744 	inc	dptr
      000EC2 EC               [12] 2745 	mov	a,r4
      000EC3 12 14 8F         [24] 2746 	lcall	__gptrput
      000EC6 A3               [24] 2747 	inc	dptr
      000EC7 EF               [12] 2748 	mov	a,r7
      000EC8 12 14 8F         [24] 2749 	lcall	__gptrput
                                   2750 ;	main.c:575: sub_key->Half[0] = Key->Half[0];
      000ECB A8 2E            [24] 2751 	mov	r0,_bp
      000ECD 08               [12] 2752 	inc	r0
      000ECE 86 82            [24] 2753 	mov	dpl,@r0
      000ED0 08               [12] 2754 	inc	r0
      000ED1 86 83            [24] 2755 	mov	dph,@r0
      000ED3 08               [12] 2756 	inc	r0
      000ED4 86 F0            [24] 2757 	mov	b,@r0
      000ED6 12 14 CC         [24] 2758 	lcall	__gptrget
      000ED9 FD               [12] 2759 	mov	r5,a
      000EDA A3               [24] 2760 	inc	dptr
      000EDB 12 14 CC         [24] 2761 	lcall	__gptrget
      000EDE FE               [12] 2762 	mov	r6,a
      000EDF A3               [24] 2763 	inc	dptr
      000EE0 12 14 CC         [24] 2764 	lcall	__gptrget
      000EE3 FC               [12] 2765 	mov	r4,a
      000EE4 A3               [24] 2766 	inc	dptr
      000EE5 12 14 CC         [24] 2767 	lcall	__gptrget
      000EE8 FF               [12] 2768 	mov	r7,a
      000EE9 E5 2E            [12] 2769 	mov	a,_bp
      000EEB 24 0E            [12] 2770 	add	a,#0x0e
      000EED F8               [12] 2771 	mov	r0,a
      000EEE 86 82            [24] 2772 	mov	dpl,@r0
      000EF0 08               [12] 2773 	inc	r0
      000EF1 86 83            [24] 2774 	mov	dph,@r0
      000EF3 08               [12] 2775 	inc	r0
      000EF4 86 F0            [24] 2776 	mov	b,@r0
      000EF6 ED               [12] 2777 	mov	a,r5
      000EF7 12 14 8F         [24] 2778 	lcall	__gptrput
      000EFA A3               [24] 2779 	inc	dptr
      000EFB EE               [12] 2780 	mov	a,r6
      000EFC 12 14 8F         [24] 2781 	lcall	__gptrput
      000EFF A3               [24] 2782 	inc	dptr
      000F00 EC               [12] 2783 	mov	a,r4
      000F01 12 14 8F         [24] 2784 	lcall	__gptrput
      000F04 A3               [24] 2785 	inc	dptr
      000F05 EF               [12] 2786 	mov	a,r7
      000F06 12 14 8F         [24] 2787 	lcall	__gptrput
                                   2788 ;	main.c:577: }
      000F09 85 2E 81         [24] 2789 	mov	sp,_bp
      000F0C D0 2E            [24] 2790 	pop	_bp
      000F0E 22               [24] 2791 	ret
                                   2792 ;------------------------------------------------------------
                                   2793 ;Allocation info for local variables in function 'main'
                                   2794 ;------------------------------------------------------------
                                   2795 ;temp2                     Allocated to registers 
                                   2796 ;round                     Allocated to stack - _bp +8
                                   2797 ;round_in                  Allocated to stack - _bp +9
                                   2798 ;subbkey                   Allocated to stack - _bp +17
                                   2799 ;key_56                    Allocated to stack - _bp +25
                                   2800 ;pc2_in                    Allocated to stack - _bp +33
                                   2801 ;sloc0                     Allocated to stack - _bp +1
                                   2802 ;sloc1                     Allocated to stack - _bp +2
                                   2803 ;sloc2                     Allocated to stack - _bp +3
                                   2804 ;sloc3                     Allocated to stack - _bp +4
                                   2805 ;sloc4                     Allocated to stack - _bp +7
                                   2806 ;------------------------------------------------------------
                                   2807 ;	main.c:588: int main(void){
                                   2808 ;	-----------------------------------------
                                   2809 ;	 function main
                                   2810 ;	-----------------------------------------
      000F0F                       2811 _main:
      000F0F C0 2E            [24] 2812 	push	_bp
      000F11 E5 81            [12] 2813 	mov	a,sp
      000F13 F5 2E            [12] 2814 	mov	_bp,a
      000F15 24 28            [12] 2815 	add	a,#0x28
      000F17 F5 81            [12] 2816 	mov	sp,a
                                   2817 ;	main.c:589: SCON=0x50;
      000F19 75 98 50         [24] 2818 	mov	_SCON,#0x50
                                   2819 ;	main.c:590: TMOD=0x20;
      000F1C 75 89 20         [24] 2820 	mov	_TMOD,#0x20
                                   2821 ;	main.c:591: TH1=-3;
      000F1F 75 8D FD         [24] 2822 	mov	_TH1,#0xfd
                                   2823 ;	main.c:592: TL1=-3;
      000F22 75 8B FD         [24] 2824 	mov	_TL1,#0xfd
                                   2825 ;	main.c:593: TR1=1;
                                   2826 ;	assignBit
      000F25 D2 8E            [12] 2827 	setb	_TR1
                                   2828 ;	main.c:599: SBUF = 'K';
      000F27 75 99 4B         [24] 2829 	mov	_SBUF,#0x4b
                                   2830 ;	main.c:600: while (0 == TI);
      000F2A                       2831 00101$:
                                   2832 ;	main.c:601: TI = 0;
                                   2833 ;	assignBit
      000F2A 10 99 02         [24] 2834 	jbc	_TI,00407$
      000F2D 80 FB            [24] 2835 	sjmp	00101$
      000F2F                       2836 00407$:
                                   2837 ;	main.c:602: spi_delay();
      000F2F 12 00 CB         [24] 2838 	lcall	_spi_delay
                                   2839 ;	main.c:603: SBUF = ':';
      000F32 75 99 3A         [24] 2840 	mov	_SBUF,#0x3a
                                   2841 ;	main.c:604: while (0 == TI);
      000F35                       2842 00104$:
                                   2843 ;	main.c:605: TI = 0;
                                   2844 ;	assignBit
      000F35 10 99 02         [24] 2845 	jbc	_TI,00408$
      000F38 80 FB            [24] 2846 	sjmp	00104$
      000F3A                       2847 00408$:
                                   2848 ;	main.c:606: spi_delay();
      000F3A 12 00 CB         [24] 2849 	lcall	_spi_delay
                                   2850 ;	main.c:607: for (i=0 ; i<8;i++){
      000F3D 75 18 00         [24] 2851 	mov	_i,#0x00
                                   2852 ;	main.c:608: while(0==RI);
      000F40                       2853 00107$:
      000F40 30 98 FD         [24] 2854 	jnb	_RI,00107$
                                   2855 ;	main.c:609: temp = SBUF;
      000F43 85 99 19         [24] 2856 	mov	_temp,_SBUF
                                   2857 ;	main.c:610: RI=0;
                                   2858 ;	assignBit
      000F46 C2 98            [12] 2859 	clr	_RI
                                   2860 ;	main.c:611: spi_delay();
      000F48 12 00 CB         [24] 2861 	lcall	_spi_delay
                                   2862 ;	main.c:612: SBUF = temp;
      000F4B 85 19 99         [24] 2863 	mov	_SBUF,_temp
                                   2864 ;	main.c:613: while(0==TI);
      000F4E                       2865 00110$:
                                   2866 ;	main.c:614: TI=0;
                                   2867 ;	assignBit
      000F4E 10 99 02         [24] 2868 	jbc	_TI,00410$
      000F51 80 FB            [24] 2869 	sjmp	00110$
      000F53                       2870 00410$:
                                   2871 ;	main.c:615: spi_delay();
      000F53 12 00 CB         [24] 2872 	lcall	_spi_delay
                                   2873 ;	main.c:616: temp -= 0x30;
      000F56 E5 19            [12] 2874 	mov	a,_temp
      000F58 24 D0            [12] 2875 	add	a,#0xd0
                                   2876 ;	main.c:617: if(temp > 9 ){
      000F5A F5 19            [12] 2877 	mov  _temp,a
      000F5C 24 F6            [12] 2878 	add	a,#0xff - 0x09
      000F5E 50 07            [24] 2879 	jnc	00114$
                                   2880 ;	main.c:618: temp -= 0x7;
      000F60 E5 19            [12] 2881 	mov	a,_temp
      000F62 FF               [12] 2882 	mov	r7,a
      000F63 24 F9            [12] 2883 	add	a,#0xf9
      000F65 F5 19            [12] 2884 	mov	_temp,a
      000F67                       2885 00114$:
                                   2886 ;	main.c:620: final_original_key.Array[i] = (temp<<4);
      000F67 E5 18            [12] 2887 	mov	a,_i
      000F69 24 26            [12] 2888 	add	a,#_final_original_key
      000F6B F9               [12] 2889 	mov	r1,a
      000F6C E5 19            [12] 2890 	mov	a,_temp
      000F6E C4               [12] 2891 	swap	a
      000F6F 54 F0            [12] 2892 	anl	a,#0xf0
      000F71 F7               [12] 2893 	mov	@r1,a
                                   2894 ;	main.c:621: final_original_key.Array[i] &= 0xF0;
      000F72 E5 18            [12] 2895 	mov	a,_i
      000F74 24 26            [12] 2896 	add	a,#_final_original_key
      000F76 F9               [12] 2897 	mov	r1,a
      000F77 E5 18            [12] 2898 	mov	a,_i
      000F79 24 26            [12] 2899 	add	a,#_final_original_key
      000F7B F8               [12] 2900 	mov	r0,a
      000F7C 86 07            [24] 2901 	mov	ar7,@r0
      000F7E 74 F0            [12] 2902 	mov	a,#0xf0
      000F80 5F               [12] 2903 	anl	a,r7
      000F81 F7               [12] 2904 	mov	@r1,a
                                   2905 ;	main.c:622: temp = 0;
      000F82 75 19 00         [24] 2906 	mov	_temp,#0x00
                                   2907 ;	main.c:623: while(0==RI);
      000F85                       2908 00115$:
      000F85 30 98 FD         [24] 2909 	jnb	_RI,00115$
                                   2910 ;	main.c:624: temp = SBUF;
      000F88 85 99 19         [24] 2911 	mov	_temp,_SBUF
                                   2912 ;	main.c:625: RI=0;
                                   2913 ;	assignBit
      000F8B C2 98            [12] 2914 	clr	_RI
                                   2915 ;	main.c:626: spi_delay();
      000F8D 12 00 CB         [24] 2916 	lcall	_spi_delay
                                   2917 ;	main.c:627: SBUF = temp;
      000F90 85 19 99         [24] 2918 	mov	_SBUF,_temp
                                   2919 ;	main.c:628: while(0==TI);
      000F93                       2920 00118$:
                                   2921 ;	main.c:629: TI=0;
                                   2922 ;	assignBit
      000F93 10 99 02         [24] 2923 	jbc	_TI,00413$
      000F96 80 FB            [24] 2924 	sjmp	00118$
      000F98                       2925 00413$:
                                   2926 ;	main.c:630: spi_delay();
      000F98 12 00 CB         [24] 2927 	lcall	_spi_delay
                                   2928 ;	main.c:631: temp -= 0x30;
      000F9B E5 19            [12] 2929 	mov	a,_temp
      000F9D 24 D0            [12] 2930 	add	a,#0xd0
                                   2931 ;	main.c:632: if(temp > 9 ){
      000F9F F5 19            [12] 2932 	mov  _temp,a
      000FA1 24 F6            [12] 2933 	add	a,#0xff - 0x09
      000FA3 50 07            [24] 2934 	jnc	00122$
                                   2935 ;	main.c:633: temp -= 0x7;
      000FA5 E5 19            [12] 2936 	mov	a,_temp
      000FA7 FF               [12] 2937 	mov	r7,a
      000FA8 24 F9            [12] 2938 	add	a,#0xf9
      000FAA F5 19            [12] 2939 	mov	_temp,a
      000FAC                       2940 00122$:
                                   2941 ;	main.c:635: final_original_key.Array[i] |= temp; 
      000FAC E5 18            [12] 2942 	mov	a,_i
      000FAE 24 26            [12] 2943 	add	a,#_final_original_key
      000FB0 F9               [12] 2944 	mov	r1,a
      000FB1 E5 18            [12] 2945 	mov	a,_i
      000FB3 24 26            [12] 2946 	add	a,#_final_original_key
      000FB5 F8               [12] 2947 	mov	r0,a
      000FB6 86 07            [24] 2948 	mov	ar7,@r0
      000FB8 E5 19            [12] 2949 	mov	a,_temp
      000FBA 4F               [12] 2950 	orl	a,r7
      000FBB F7               [12] 2951 	mov	@r1,a
                                   2952 ;	main.c:607: for (i=0 ; i<8;i++){
      000FBC 05 18            [12] 2953 	inc	_i
      000FBE 74 F8            [12] 2954 	mov	a,#0x100 - 0x08
      000FC0 25 18            [12] 2955 	add	a,_i
      000FC2 40 03            [24] 2956 	jc	00415$
      000FC4 02 0F 40         [24] 2957 	ljmp	00107$
      000FC7                       2958 00415$:
                                   2959 ;	main.c:638: spi_delay();
      000FC7 12 00 CB         [24] 2960 	lcall	_spi_delay
                                   2961 ;	main.c:640: while (1){
      000FCA                       2962 00160$:
                                   2963 ;	main.c:643: for (i=0 ; i<8;i++){
      000FCA 75 18 00         [24] 2964 	mov	_i,#0x00
      000FCD                       2965 00164$:
                                   2966 ;	main.c:644: spi_receive (&(final_plain_text.Array[i]));
      000FCD E5 18            [12] 2967 	mov	a,_i
      000FCF 24 1E            [12] 2968 	add	a,#_final_plain_text
      000FD1 FF               [12] 2969 	mov	r7,a
      000FD2 7E 00            [12] 2970 	mov	r6,#0x00
      000FD4 7D 40            [12] 2971 	mov	r5,#0x40
      000FD6 8F 82            [24] 2972 	mov	dpl,r7
      000FD8 8E 83            [24] 2973 	mov	dph,r6
      000FDA 8D F0            [24] 2974 	mov	b,r5
      000FDC 12 00 DD         [24] 2975 	lcall	_spi_receive
                                   2976 ;	main.c:643: for (i=0 ; i<8;i++){
      000FDF 05 18            [12] 2977 	inc	_i
      000FE1 74 F8            [12] 2978 	mov	a,#0x100 - 0x08
      000FE3 25 18            [12] 2979 	add	a,_i
      000FE5 50 E6            [24] 2980 	jnc	00164$
                                   2981 ;	main.c:647: SBUF = '\n';
      000FE7 75 99 0A         [24] 2982 	mov	_SBUF,#0x0a
                                   2983 ;	main.c:648: while (0 == TI);
      000FEA                       2984 00125$:
                                   2985 ;	main.c:649: TI = 0;
                                   2986 ;	assignBit
      000FEA 10 99 02         [24] 2987 	jbc	_TI,00417$
      000FED 80 FB            [24] 2988 	sjmp	00125$
      000FEF                       2989 00417$:
                                   2990 ;	main.c:650: spi_delay();
      000FEF 12 00 CB         [24] 2991 	lcall	_spi_delay
                                   2992 ;	main.c:651: SBUF = 'C';
      000FF2 75 99 43         [24] 2993 	mov	_SBUF,#0x43
                                   2994 ;	main.c:652: while (0 == TI);
      000FF5                       2995 00128$:
                                   2996 ;	main.c:653: TI = 0;
                                   2997 ;	assignBit
      000FF5 10 99 02         [24] 2998 	jbc	_TI,00418$
      000FF8 80 FB            [24] 2999 	sjmp	00128$
      000FFA                       3000 00418$:
                                   3001 ;	main.c:654: SBUF = 'T';
      000FFA 75 99 54         [24] 3002 	mov	_SBUF,#0x54
                                   3003 ;	main.c:655: while (0 == TI);
      000FFD                       3004 00131$:
                                   3005 ;	main.c:656: TI = 0;
                                   3006 ;	assignBit
      000FFD 10 99 02         [24] 3007 	jbc	_TI,00419$
      001000 80 FB            [24] 3008 	sjmp	00131$
      001002                       3009 00419$:
                                   3010 ;	main.c:657: spi_delay();
      001002 12 00 CB         [24] 3011 	lcall	_spi_delay
                                   3012 ;	main.c:658: SBUF = ':';
      001005 75 99 3A         [24] 3013 	mov	_SBUF,#0x3a
                                   3014 ;	main.c:659: while (0 == TI);
      001008                       3015 00134$:
                                   3016 ;	main.c:660: TI = 0;
                                   3017 ;	assignBit
      001008 10 99 02         [24] 3018 	jbc	_TI,00420$
      00100B 80 FB            [24] 3019 	sjmp	00134$
      00100D                       3020 00420$:
                                   3021 ;	main.c:661: spi_delay();
      00100D 12 00 CB         [24] 3022 	lcall	_spi_delay
                                   3023 ;	main.c:662: spi_delay();
      001010 12 00 CB         [24] 3024 	lcall	_spi_delay
                                   3025 ;	main.c:664: for (i=0 ; i<8;i++){
      001013 75 18 00         [24] 3026 	mov	_i,#0x00
      001016                       3027 00166$:
                                   3028 ;	main.c:666: temp2 = final_plain_text.Array[i] ;
      001016 E5 18            [12] 3029 	mov	a,_i
      001018 24 1E            [12] 3030 	add	a,#_final_plain_text
      00101A F9               [12] 3031 	mov	r1,a
      00101B 87 99            [24] 3032 	mov	_SBUF,@r1
                                   3033 ;	main.c:668: while(0==TI);
      00101D                       3034 00137$:
                                   3035 ;	main.c:669: TI=0;
                                   3036 ;	assignBit
      00101D 10 99 02         [24] 3037 	jbc	_TI,00421$
      001020 80 FB            [24] 3038 	sjmp	00137$
      001022                       3039 00421$:
                                   3040 ;	main.c:664: for (i=0 ; i<8;i++){
      001022 05 18            [12] 3041 	inc	_i
      001024 74 F8            [12] 3042 	mov	a,#0x100 - 0x08
      001026 25 18            [12] 3043 	add	a,_i
      001028 50 EC            [24] 3044 	jnc	00166$
                                   3045 ;	main.c:671: spi_delay();
      00102A 12 00 CB         [24] 3046 	lcall	_spi_delay
                                   3047 ;	main.c:678: DATA round_in = {.Array = {0,0,0,0,0,0,0,0}};
      00102D E5 2E            [12] 3048 	mov	a,_bp
      00102F 24 09            [12] 3049 	add	a,#0x09
      001031 F8               [12] 3050 	mov	r0,a
      001032 76 00            [12] 3051 	mov	@r0,#0x00
      001034 E5 2E            [12] 3052 	mov	a,_bp
      001036 24 09            [12] 3053 	add	a,#0x09
      001038 FF               [12] 3054 	mov	r7,a
      001039 04               [12] 3055 	inc	a
      00103A F8               [12] 3056 	mov	r0,a
      00103B 76 00            [12] 3057 	mov	@r0,#0x00
      00103D 74 02            [12] 3058 	mov	a,#0x02
      00103F 2F               [12] 3059 	add	a,r7
      001040 F8               [12] 3060 	mov	r0,a
      001041 76 00            [12] 3061 	mov	@r0,#0x00
      001043 74 03            [12] 3062 	mov	a,#0x03
      001045 2F               [12] 3063 	add	a,r7
      001046 F8               [12] 3064 	mov	r0,a
      001047 76 00            [12] 3065 	mov	@r0,#0x00
      001049 74 04            [12] 3066 	mov	a,#0x04
      00104B 2F               [12] 3067 	add	a,r7
      00104C F8               [12] 3068 	mov	r0,a
      00104D 76 00            [12] 3069 	mov	@r0,#0x00
      00104F 74 05            [12] 3070 	mov	a,#0x05
      001051 2F               [12] 3071 	add	a,r7
      001052 F8               [12] 3072 	mov	r0,a
      001053 76 00            [12] 3073 	mov	@r0,#0x00
      001055 74 06            [12] 3074 	mov	a,#0x06
      001057 2F               [12] 3075 	add	a,r7
      001058 F8               [12] 3076 	mov	r0,a
      001059 76 00            [12] 3077 	mov	@r0,#0x00
      00105B 74 07            [12] 3078 	mov	a,#0x07
      00105D 2F               [12] 3079 	add	a,r7
      00105E F8               [12] 3080 	mov	r0,a
      00105F 76 00            [12] 3081 	mov	@r0,#0x00
                                   3082 ;	main.c:679: DATA subbkey = {.Array = {0,0,0,0,0,0,0,0}};
      001061 E5 2E            [12] 3083 	mov	a,_bp
      001063 24 11            [12] 3084 	add	a,#0x11
      001065 F8               [12] 3085 	mov	r0,a
      001066 76 00            [12] 3086 	mov	@r0,#0x00
      001068 E5 2E            [12] 3087 	mov	a,_bp
      00106A 24 11            [12] 3088 	add	a,#0x11
      00106C FF               [12] 3089 	mov	r7,a
      00106D 04               [12] 3090 	inc	a
      00106E F8               [12] 3091 	mov	r0,a
      00106F 76 00            [12] 3092 	mov	@r0,#0x00
      001071 74 02            [12] 3093 	mov	a,#0x02
      001073 2F               [12] 3094 	add	a,r7
      001074 F8               [12] 3095 	mov	r0,a
      001075 76 00            [12] 3096 	mov	@r0,#0x00
      001077 74 03            [12] 3097 	mov	a,#0x03
      001079 2F               [12] 3098 	add	a,r7
      00107A F8               [12] 3099 	mov	r0,a
      00107B 76 00            [12] 3100 	mov	@r0,#0x00
      00107D 74 04            [12] 3101 	mov	a,#0x04
      00107F 2F               [12] 3102 	add	a,r7
      001080 F8               [12] 3103 	mov	r0,a
      001081 76 00            [12] 3104 	mov	@r0,#0x00
      001083 74 05            [12] 3105 	mov	a,#0x05
      001085 2F               [12] 3106 	add	a,r7
      001086 F8               [12] 3107 	mov	r0,a
      001087 76 00            [12] 3108 	mov	@r0,#0x00
      001089 74 06            [12] 3109 	mov	a,#0x06
      00108B 2F               [12] 3110 	add	a,r7
      00108C F8               [12] 3111 	mov	r0,a
      00108D 76 00            [12] 3112 	mov	@r0,#0x00
      00108F 74 07            [12] 3113 	mov	a,#0x07
      001091 2F               [12] 3114 	add	a,r7
      001092 F8               [12] 3115 	mov	r0,a
      001093 76 00            [12] 3116 	mov	@r0,#0x00
                                   3117 ;	main.c:680: DATA key_56 = {.Array = {0,0,0,0,0,0,0,0}};
      001095 E5 2E            [12] 3118 	mov	a,_bp
      001097 24 19            [12] 3119 	add	a,#0x19
      001099 F8               [12] 3120 	mov	r0,a
      00109A 76 00            [12] 3121 	mov	@r0,#0x00
      00109C E5 2E            [12] 3122 	mov	a,_bp
      00109E 24 19            [12] 3123 	add	a,#0x19
      0010A0 FF               [12] 3124 	mov	r7,a
      0010A1 04               [12] 3125 	inc	a
      0010A2 F8               [12] 3126 	mov	r0,a
      0010A3 76 00            [12] 3127 	mov	@r0,#0x00
      0010A5 74 02            [12] 3128 	mov	a,#0x02
      0010A7 2F               [12] 3129 	add	a,r7
      0010A8 F8               [12] 3130 	mov	r0,a
      0010A9 76 00            [12] 3131 	mov	@r0,#0x00
      0010AB 74 03            [12] 3132 	mov	a,#0x03
      0010AD 2F               [12] 3133 	add	a,r7
      0010AE F8               [12] 3134 	mov	r0,a
      0010AF 76 00            [12] 3135 	mov	@r0,#0x00
      0010B1 74 04            [12] 3136 	mov	a,#0x04
      0010B3 2F               [12] 3137 	add	a,r7
      0010B4 F8               [12] 3138 	mov	r0,a
      0010B5 76 00            [12] 3139 	mov	@r0,#0x00
      0010B7 74 05            [12] 3140 	mov	a,#0x05
      0010B9 2F               [12] 3141 	add	a,r7
      0010BA F8               [12] 3142 	mov	r0,a
      0010BB 76 00            [12] 3143 	mov	@r0,#0x00
      0010BD 74 06            [12] 3144 	mov	a,#0x06
      0010BF 2F               [12] 3145 	add	a,r7
      0010C0 F8               [12] 3146 	mov	r0,a
      0010C1 76 00            [12] 3147 	mov	@r0,#0x00
      0010C3 74 07            [12] 3148 	mov	a,#0x07
      0010C5 2F               [12] 3149 	add	a,r7
      0010C6 F8               [12] 3150 	mov	r0,a
      0010C7 76 00            [12] 3151 	mov	@r0,#0x00
                                   3152 ;	main.c:681: DATA pc2_in = {.Array = {0,0,0,0,0,0,0,0}};
      0010C9 E5 2E            [12] 3153 	mov	a,_bp
      0010CB 24 21            [12] 3154 	add	a,#0x21
      0010CD F8               [12] 3155 	mov	r0,a
      0010CE 76 00            [12] 3156 	mov	@r0,#0x00
      0010D0 E5 2E            [12] 3157 	mov	a,_bp
      0010D2 24 21            [12] 3158 	add	a,#0x21
      0010D4 FF               [12] 3159 	mov	r7,a
      0010D5 04               [12] 3160 	inc	a
      0010D6 F8               [12] 3161 	mov	r0,a
      0010D7 76 00            [12] 3162 	mov	@r0,#0x00
      0010D9 74 02            [12] 3163 	mov	a,#0x02
      0010DB 2F               [12] 3164 	add	a,r7
      0010DC F8               [12] 3165 	mov	r0,a
      0010DD 76 00            [12] 3166 	mov	@r0,#0x00
      0010DF 74 03            [12] 3167 	mov	a,#0x03
      0010E1 2F               [12] 3168 	add	a,r7
      0010E2 F8               [12] 3169 	mov	r0,a
      0010E3 76 00            [12] 3170 	mov	@r0,#0x00
      0010E5 74 04            [12] 3171 	mov	a,#0x04
      0010E7 2F               [12] 3172 	add	a,r7
      0010E8 F8               [12] 3173 	mov	r0,a
      0010E9 76 00            [12] 3174 	mov	@r0,#0x00
      0010EB 74 05            [12] 3175 	mov	a,#0x05
      0010ED 2F               [12] 3176 	add	a,r7
      0010EE F8               [12] 3177 	mov	r0,a
      0010EF 76 00            [12] 3178 	mov	@r0,#0x00
      0010F1 74 06            [12] 3179 	mov	a,#0x06
      0010F3 2F               [12] 3180 	add	a,r7
      0010F4 F8               [12] 3181 	mov	r0,a
      0010F5 76 00            [12] 3182 	mov	@r0,#0x00
      0010F7 74 07            [12] 3183 	mov	a,#0x07
      0010F9 2F               [12] 3184 	add	a,r7
      0010FA F8               [12] 3185 	mov	r0,a
      0010FB 76 00            [12] 3186 	mov	@r0,#0x00
                                   3187 ;	main.c:684: Permutation ( &final_plain_text, &round_in, Basic_Permutation, ip);
      0010FD E5 2E            [12] 3188 	mov	a,_bp
      0010FF 24 09            [12] 3189 	add	a,#0x09
      001101 F9               [12] 3190 	mov	r1,a
      001102 FD               [12] 3191 	mov	r5,a
      001103 7E 00            [12] 3192 	mov	r6,#0x00
      001105 7F 40            [12] 3193 	mov	r7,#0x40
      001107 C0 01            [24] 3194 	push	ar1
      001109 74 44            [12] 3195 	mov	a,#_ip
      00110B C0 E0            [24] 3196 	push	acc
      00110D 74 16            [12] 3197 	mov	a,#(_ip >> 8)
      00110F C0 E0            [24] 3198 	push	acc
      001111 74 80            [12] 3199 	mov	a,#0x80
      001113 C0 E0            [24] 3200 	push	acc
      001115 03               [12] 3201 	rr	a
      001116 C0 E0            [24] 3202 	push	acc
      001118 C0 05            [24] 3203 	push	ar5
      00111A C0 06            [24] 3204 	push	ar6
      00111C C0 07            [24] 3205 	push	ar7
      00111E 90 00 1E         [24] 3206 	mov	dptr,#_final_plain_text
      001121 F5 F0            [12] 3207 	mov	b,a
      001123 12 01 4F         [24] 3208 	lcall	_Permutation
      001126 E5 81            [12] 3209 	mov	a,sp
      001128 24 F9            [12] 3210 	add	a,#0xf9
      00112A F5 81            [12] 3211 	mov	sp,a
      00112C D0 01            [24] 3212 	pop	ar1
                                   3213 ;	main.c:685: for (i=0; i<8; i++){
      00112E 75 18 00         [24] 3214 	mov	_i,#0x00
      001131                       3215 00168$:
                                   3216 ;	main.c:686: final_plain_text.Array[i] = '0';
      001131 E5 18            [12] 3217 	mov	a,_i
      001133 24 1E            [12] 3218 	add	a,#_final_plain_text
      001135 F8               [12] 3219 	mov	r0,a
      001136 76 30            [12] 3220 	mov	@r0,#0x30
                                   3221 ;	main.c:685: for (i=0; i<8; i++){
      001138 05 18            [12] 3222 	inc	_i
      00113A 74 F8            [12] 3223 	mov	a,#0x100 - 0x08
      00113C 25 18            [12] 3224 	add	a,_i
      00113E 50 F1            [24] 3225 	jnc	00168$
                                   3226 ;	main.c:690: Permutation ( &final_original_key, &key_56,Pc1,pc1);
      001140 E5 2E            [12] 3227 	mov	a,_bp
      001142 24 19            [12] 3228 	add	a,#0x19
      001144 F8               [12] 3229 	mov	r0,a
      001145 FD               [12] 3230 	mov	r5,a
      001146 7E 00            [12] 3231 	mov	r6,#0x00
      001148 7F 40            [12] 3232 	mov	r7,#0x40
      00114A C0 01            [24] 3233 	push	ar1
      00114C C0 00            [24] 3234 	push	ar0
      00114E 74 DC            [12] 3235 	mov	a,#_pc1
      001150 C0 E0            [24] 3236 	push	acc
      001152 74 15            [12] 3237 	mov	a,#(_pc1 >> 8)
      001154 C0 E0            [24] 3238 	push	acc
      001156 74 80            [12] 3239 	mov	a,#0x80
      001158 C0 E0            [24] 3240 	push	acc
      00115A 74 38            [12] 3241 	mov	a,#0x38
      00115C C0 E0            [24] 3242 	push	acc
      00115E C0 05            [24] 3243 	push	ar5
      001160 C0 06            [24] 3244 	push	ar6
      001162 C0 07            [24] 3245 	push	ar7
      001164 90 00 26         [24] 3246 	mov	dptr,#_final_original_key
      001167 75 F0 40         [24] 3247 	mov	b,#0x40
      00116A 12 01 4F         [24] 3248 	lcall	_Permutation
      00116D E5 81            [12] 3249 	mov	a,sp
      00116F 24 F9            [12] 3250 	add	a,#0xf9
      001171 F5 81            [12] 3251 	mov	sp,a
      001173 D0 00            [24] 3252 	pop	ar0
                                   3253 ;	main.c:693: for (round = 1 ; round < 17 ; round++){
      001175 E5 2E            [12] 3254 	mov	a,_bp
      001177 24 03            [12] 3255 	add	a,#0x03
      001179 F9               [12] 3256 	mov	r1,a
      00117A A7 00            [24] 3257 	mov	@r1,ar0
      00117C D0 01            [24] 3258 	pop	ar1
      00117E E5 2E            [12] 3259 	mov	a,_bp
      001180 24 11            [12] 3260 	add	a,#0x11
      001182 FE               [12] 3261 	mov	r6,a
      001183 C0 00            [24] 3262 	push	ar0
      001185 A8 2E            [24] 3263 	mov	r0,_bp
      001187 08               [12] 3264 	inc	r0
      001188 08               [12] 3265 	inc	r0
      001189 A6 06            [24] 3266 	mov	@r0,ar6
      00118B A8 2E            [24] 3267 	mov	r0,_bp
      00118D 08               [12] 3268 	inc	r0
      00118E A6 01            [24] 3269 	mov	@r0,ar1
      001190 E5 2E            [12] 3270 	mov	a,_bp
      001192 24 08            [12] 3271 	add	a,#0x08
      001194 F8               [12] 3272 	mov	r0,a
      001195 76 01            [12] 3273 	mov	@r0,#0x01
      001197 D0 00            [24] 3274 	pop	ar0
      001199                       3275 00170$:
                                   3276 ;	main.c:695: rotate(&key_56,round,&pc2_in);
      001199 E5 2E            [12] 3277 	mov	a,_bp
      00119B 24 21            [12] 3278 	add	a,#0x21
      00119D FA               [12] 3279 	mov	r2,a
      00119E C0 00            [24] 3280 	push	ar0
      0011A0 E5 2E            [12] 3281 	mov	a,_bp
      0011A2 24 04            [12] 3282 	add	a,#0x04
      0011A4 F8               [12] 3283 	mov	r0,a
      0011A5 A6 02            [24] 3284 	mov	@r0,ar2
      0011A7 08               [12] 3285 	inc	r0
      0011A8 76 00            [12] 3286 	mov	@r0,#0x00
      0011AA 08               [12] 3287 	inc	r0
      0011AB 76 40            [12] 3288 	mov	@r0,#0x40
      0011AD E5 2E            [12] 3289 	mov	a,_bp
      0011AF 24 03            [12] 3290 	add	a,#0x03
      0011B1 F8               [12] 3291 	mov	r0,a
      0011B2 86 04            [24] 3292 	mov	ar4,@r0
      0011B4 7D 00            [12] 3293 	mov	r5,#0x00
      0011B6 7F 40            [12] 3294 	mov	r7,#0x40
      0011B8 D0 00            [24] 3295 	pop	ar0
      0011BA C0 06            [24] 3296 	push	ar6
      0011BC C0 02            [24] 3297 	push	ar2
      0011BE C0 01            [24] 3298 	push	ar1
      0011C0 C0 00            [24] 3299 	push	ar0
      0011C2 85 00 F0         [24] 3300 	mov	b,ar0
      0011C5 E5 2E            [12] 3301 	mov	a,_bp
      0011C7 24 04            [12] 3302 	add	a,#0x04
      0011C9 F8               [12] 3303 	mov	r0,a
      0011CA E6               [12] 3304 	mov	a,@r0
      0011CB C0 E0            [24] 3305 	push	acc
      0011CD 08               [12] 3306 	inc	r0
      0011CE E6               [12] 3307 	mov	a,@r0
      0011CF C0 E0            [24] 3308 	push	acc
      0011D1 08               [12] 3309 	inc	r0
      0011D2 E6               [12] 3310 	mov	a,@r0
      0011D3 C0 E0            [24] 3311 	push	acc
      0011D5 A8 F0            [24] 3312 	mov	r0,b
      0011D7 85 00 F0         [24] 3313 	mov	b,ar0
      0011DA E5 2E            [12] 3314 	mov	a,_bp
      0011DC 24 08            [12] 3315 	add	a,#0x08
      0011DE F8               [12] 3316 	mov	r0,a
      0011DF E6               [12] 3317 	mov	a,@r0
      0011E0 C0 E0            [24] 3318 	push	acc
      0011E2 8C 82            [24] 3319 	mov	dpl,r4
      0011E4 8D 83            [24] 3320 	mov	dph,r5
      0011E6 8F F0            [24] 3321 	mov	b,r7
      0011E8 12 07 5E         [24] 3322 	lcall	_rotate
      0011EB E5 81            [12] 3323 	mov	a,sp
      0011ED 24 FC            [12] 3324 	add	a,#0xfc
      0011EF F5 81            [12] 3325 	mov	sp,a
      0011F1 D0 00            [24] 3326 	pop	ar0
      0011F3 D0 01            [24] 3327 	pop	ar1
      0011F5 D0 02            [24] 3328 	pop	ar2
      0011F7 D0 06            [24] 3329 	pop	ar6
                                   3330 ;	main.c:698: Permutation (&pc2_in,&subbkey,Pc2,pc2);
      0011F9 C0 00            [24] 3331 	push	ar0
      0011FB E5 2E            [12] 3332 	mov	a,_bp
      0011FD 24 04            [12] 3333 	add	a,#0x04
      0011FF F8               [12] 3334 	mov	r0,a
      001200 A6 06            [24] 3335 	mov	@r0,ar6
      001202 08               [12] 3336 	inc	r0
      001203 76 00            [12] 3337 	mov	@r0,#0x00
      001205 08               [12] 3338 	inc	r0
      001206 76 40            [12] 3339 	mov	@r0,#0x40
      001208 D0 00            [24] 3340 	pop	ar0
      00120A 8A 03            [24] 3341 	mov	ar3,r2
      00120C C0 06            [24] 3342 	push	ar6
      00120E 7E 00            [12] 3343 	mov	r6,#0x00
      001210 7F 40            [12] 3344 	mov	r7,#0x40
      001212 C0 06            [24] 3345 	push	ar6
      001214 C0 02            [24] 3346 	push	ar2
      001216 C0 01            [24] 3347 	push	ar1
      001218 C0 00            [24] 3348 	push	ar0
      00121A 74 14            [12] 3349 	mov	a,#_pc2
      00121C C0 E0            [24] 3350 	push	acc
      00121E 74 16            [12] 3351 	mov	a,#(_pc2 >> 8)
      001220 C0 E0            [24] 3352 	push	acc
      001222 74 80            [12] 3353 	mov	a,#0x80
      001224 C0 E0            [24] 3354 	push	acc
      001226 74 30            [12] 3355 	mov	a,#0x30
      001228 C0 E0            [24] 3356 	push	acc
      00122A 85 00 F0         [24] 3357 	mov	b,ar0
      00122D E5 2E            [12] 3358 	mov	a,_bp
      00122F 24 04            [12] 3359 	add	a,#0x04
      001231 F8               [12] 3360 	mov	r0,a
      001232 E6               [12] 3361 	mov	a,@r0
      001233 C0 E0            [24] 3362 	push	acc
      001235 08               [12] 3363 	inc	r0
      001236 E6               [12] 3364 	mov	a,@r0
      001237 C0 E0            [24] 3365 	push	acc
      001239 08               [12] 3366 	inc	r0
      00123A E6               [12] 3367 	mov	a,@r0
      00123B C0 E0            [24] 3368 	push	acc
      00123D 8B 82            [24] 3369 	mov	dpl,r3
      00123F 8E 83            [24] 3370 	mov	dph,r6
      001241 8F F0            [24] 3371 	mov	b,r7
      001243 12 01 4F         [24] 3372 	lcall	_Permutation
      001246 E5 81            [12] 3373 	mov	a,sp
      001248 24 F9            [12] 3374 	add	a,#0xf9
      00124A F5 81            [12] 3375 	mov	sp,a
      00124C D0 00            [24] 3376 	pop	ar0
      00124E D0 01            [24] 3377 	pop	ar1
      001250 D0 02            [24] 3378 	pop	ar2
      001252 D0 06            [24] 3379 	pop	ar6
                                   3380 ;	main.c:703: G_Function(&round_in,&subbkey,&final_plain_text);
      001254 C0 00            [24] 3381 	push	ar0
      001256 A8 2E            [24] 3382 	mov	r0,_bp
      001258 08               [12] 3383 	inc	r0
      001259 08               [12] 3384 	inc	r0
      00125A C0 01            [24] 3385 	push	ar1
      00125C E5 2E            [12] 3386 	mov	a,_bp
      00125E 24 04            [12] 3387 	add	a,#0x04
      001260 F9               [12] 3388 	mov	r1,a
      001261 E6               [12] 3389 	mov	a,@r0
      001262 F7               [12] 3390 	mov	@r1,a
      001263 09               [12] 3391 	inc	r1
      001264 77 00            [12] 3392 	mov	@r1,#0x00
      001266 09               [12] 3393 	inc	r1
      001267 77 40            [12] 3394 	mov	@r1,#0x40
      001269 D0 01            [24] 3395 	pop	ar1
      00126B A8 2E            [24] 3396 	mov	r0,_bp
      00126D 08               [12] 3397 	inc	r0
      00126E 86 03            [24] 3398 	mov	ar3,@r0
      001270 7C 00            [12] 3399 	mov	r4,#0x00
      001272 7F 40            [12] 3400 	mov	r7,#0x40
      001274 D0 00            [24] 3401 	pop	ar0
      001276 C0 06            [24] 3402 	push	ar6
      001278 C0 02            [24] 3403 	push	ar2
      00127A C0 01            [24] 3404 	push	ar1
      00127C C0 00            [24] 3405 	push	ar0
      00127E 74 1E            [12] 3406 	mov	a,#_final_plain_text
      001280 C0 E0            [24] 3407 	push	acc
      001282 74 00            [12] 3408 	mov	a,#(_final_plain_text >> 8)
      001284 C0 E0            [24] 3409 	push	acc
      001286 EF               [12] 3410 	mov	a,r7
      001287 C0 E0            [24] 3411 	push	acc
      001289 85 00 F0         [24] 3412 	mov	b,ar0
      00128C E5 2E            [12] 3413 	mov	a,_bp
      00128E 24 04            [12] 3414 	add	a,#0x04
      001290 F8               [12] 3415 	mov	r0,a
      001291 E6               [12] 3416 	mov	a,@r0
      001292 C0 E0            [24] 3417 	push	acc
      001294 08               [12] 3418 	inc	r0
      001295 E6               [12] 3419 	mov	a,@r0
      001296 C0 E0            [24] 3420 	push	acc
      001298 08               [12] 3421 	inc	r0
      001299 E6               [12] 3422 	mov	a,@r0
      00129A C0 E0            [24] 3423 	push	acc
      00129C 8B 82            [24] 3424 	mov	dpl,r3
      00129E 8C 83            [24] 3425 	mov	dph,r4
      0012A0 8F F0            [24] 3426 	mov	b,r7
      0012A2 12 02 C3         [24] 3427 	lcall	_G_Function
      0012A5 E5 81            [12] 3428 	mov	a,sp
      0012A7 24 FA            [12] 3429 	add	a,#0xfa
      0012A9 F5 81            [12] 3430 	mov	sp,a
      0012AB D0 00            [24] 3431 	pop	ar0
      0012AD D0 01            [24] 3432 	pop	ar1
      0012AF D0 02            [24] 3433 	pop	ar2
      0012B1 D0 06            [24] 3434 	pop	ar6
                                   3435 ;	main.c:704: final_plain_text.Half[1] = final_plain_text.Half[1] ^ round_in.Half[0];
      0012B3 87 04            [24] 3436 	mov	ar4,@r1
      0012B5 09               [12] 3437 	inc	r1
      0012B6 87 05            [24] 3438 	mov	ar5,@r1
      0012B8 09               [12] 3439 	inc	r1
      0012B9 87 06            [24] 3440 	mov	ar6,@r1
      0012BB 09               [12] 3441 	inc	r1
      0012BC 87 07            [24] 3442 	mov	ar7,@r1
      0012BE 19               [12] 3443 	dec	r1
      0012BF 19               [12] 3444 	dec	r1
      0012C0 19               [12] 3445 	dec	r1
      0012C1 E5 22            [12] 3446 	mov	a,(_final_plain_text + 0x0004)
      0012C3 62 04            [12] 3447 	xrl	ar4,a
      0012C5 E5 23            [12] 3448 	mov	a,((_final_plain_text + 0x0004) + 1)
      0012C7 62 05            [12] 3449 	xrl	ar5,a
      0012C9 E5 24            [12] 3450 	mov	a,((_final_plain_text + 0x0004) + 2)
      0012CB 62 06            [12] 3451 	xrl	ar6,a
      0012CD E5 25            [12] 3452 	mov	a,((_final_plain_text + 0x0004) + 3)
      0012CF 62 07            [12] 3453 	xrl	ar7,a
      0012D1 8C 22            [24] 3454 	mov	((_final_plain_text + 0x0004) + 0),r4
      0012D3 8D 23            [24] 3455 	mov	((_final_plain_text + 0x0004) + 1),r5
      0012D5 8E 24            [24] 3456 	mov	((_final_plain_text + 0x0004) + 2),r6
      0012D7 8F 25            [24] 3457 	mov	((_final_plain_text + 0x0004) + 3),r7
                                   3458 ;	main.c:705: final_plain_text.Half[0]  = round_in.Half[1];
      0012D9 C0 00            [24] 3459 	push	ar0
      0012DB E5 2E            [12] 3460 	mov	a,_bp
      0012DD 24 04            [12] 3461 	add	a,#0x04
      0012DF F8               [12] 3462 	mov	r0,a
      0012E0 74 04            [12] 3463 	mov	a,#0x04
      0012E2 29               [12] 3464 	add	a,r1
      0012E3 F6               [12] 3465 	mov	@r0,a
      0012E4 E5 2E            [12] 3466 	mov	a,_bp
      0012E6 24 04            [12] 3467 	add	a,#0x04
      0012E8 F8               [12] 3468 	mov	r0,a
      0012E9 86 00            [24] 3469 	mov	ar0,@r0
      0012EB 86 04            [24] 3470 	mov	ar4,@r0
      0012ED 08               [12] 3471 	inc	r0
      0012EE 86 05            [24] 3472 	mov	ar5,@r0
      0012F0 08               [12] 3473 	inc	r0
      0012F1 86 06            [24] 3474 	mov	ar6,@r0
      0012F3 08               [12] 3475 	inc	r0
      0012F4 86 07            [24] 3476 	mov	ar7,@r0
      0012F6 18               [12] 3477 	dec	r0
      0012F7 18               [12] 3478 	dec	r0
      0012F8 18               [12] 3479 	dec	r0
      0012F9 8C 1E            [24] 3480 	mov	(_final_plain_text + 0),r4
      0012FB 8D 1F            [24] 3481 	mov	(_final_plain_text + 1),r5
      0012FD 8E 20            [24] 3482 	mov	(_final_plain_text + 2),r6
      0012FF 8F 21            [24] 3483 	mov	(_final_plain_text + 3),r7
                                   3484 ;	main.c:707: key_56.Half[0] = pc2_in.Half[0]; 
      001301 A8 02            [24] 3485 	mov	r0,ar2
      001303 86 04            [24] 3486 	mov	ar4,@r0
      001305 08               [12] 3487 	inc	r0
      001306 86 05            [24] 3488 	mov	ar5,@r0
      001308 08               [12] 3489 	inc	r0
      001309 86 06            [24] 3490 	mov	ar6,@r0
      00130B 08               [12] 3491 	inc	r0
      00130C 86 07            [24] 3492 	mov	ar7,@r0
      00130E D0 00            [24] 3493 	pop	ar0
      001310 A6 04            [24] 3494 	mov	@r0,ar4
      001312 08               [12] 3495 	inc	r0
      001313 A6 05            [24] 3496 	mov	@r0,ar5
      001315 08               [12] 3497 	inc	r0
      001316 A6 06            [24] 3498 	mov	@r0,ar6
      001318 08               [12] 3499 	inc	r0
      001319 A6 07            [24] 3500 	mov	@r0,ar7
      00131B 18               [12] 3501 	dec	r0
      00131C 18               [12] 3502 	dec	r0
      00131D 18               [12] 3503 	dec	r0
                                   3504 ;	main.c:708: key_56.Half[1] = pc2_in.Half[1];
      00131E 74 04            [12] 3505 	mov	a,#0x04
      001320 28               [12] 3506 	add	a,r0
      001321 FF               [12] 3507 	mov	r7,a
      001322 C0 00            [24] 3508 	push	ar0
      001324 E5 2E            [12] 3509 	mov	a,_bp
      001326 24 07            [12] 3510 	add	a,#0x07
      001328 F8               [12] 3511 	mov	r0,a
      001329 74 04            [12] 3512 	mov	a,#0x04
      00132B 2A               [12] 3513 	add	a,r2
      00132C F6               [12] 3514 	mov	@r0,a
      00132D E5 2E            [12] 3515 	mov	a,_bp
      00132F 24 07            [12] 3516 	add	a,#0x07
      001331 F8               [12] 3517 	mov	r0,a
      001332 86 00            [24] 3518 	mov	ar0,@r0
      001334 86 03            [24] 3519 	mov	ar3,@r0
      001336 08               [12] 3520 	inc	r0
      001337 86 04            [24] 3521 	mov	ar4,@r0
      001339 08               [12] 3522 	inc	r0
      00133A 86 05            [24] 3523 	mov	ar5,@r0
      00133C 08               [12] 3524 	inc	r0
      00133D 86 06            [24] 3525 	mov	ar6,@r0
      00133F 18               [12] 3526 	dec	r0
      001340 18               [12] 3527 	dec	r0
      001341 18               [12] 3528 	dec	r0
      001342 A8 07            [24] 3529 	mov	r0,ar7
      001344 A6 03            [24] 3530 	mov	@r0,ar3
      001346 08               [12] 3531 	inc	r0
      001347 A6 04            [24] 3532 	mov	@r0,ar4
      001349 08               [12] 3533 	inc	r0
      00134A A6 05            [24] 3534 	mov	@r0,ar5
      00134C 08               [12] 3535 	inc	r0
      00134D A6 06            [24] 3536 	mov	@r0,ar6
                                   3537 ;	main.c:710: pc2_in.Half[0] = 0;
      00134F A8 02            [24] 3538 	mov	r0,ar2
      001351 76 00            [12] 3539 	mov	@r0,#0x00
      001353 08               [12] 3540 	inc	r0
      001354 76 00            [12] 3541 	mov	@r0,#0x00
      001356 08               [12] 3542 	inc	r0
      001357 76 00            [12] 3543 	mov	@r0,#0x00
      001359 08               [12] 3544 	inc	r0
      00135A 76 00            [12] 3545 	mov	@r0,#0x00
                                   3546 ;	main.c:711: pc2_in.Half[1] = 0;
      00135C E5 2E            [12] 3547 	mov	a,_bp
      00135E 24 07            [12] 3548 	add	a,#0x07
      001360 F8               [12] 3549 	mov	r0,a
      001361 86 00            [24] 3550 	mov	ar0,@r0
      001363 76 00            [12] 3551 	mov	@r0,#0x00
      001365 08               [12] 3552 	inc	r0
      001366 76 00            [12] 3553 	mov	@r0,#0x00
      001368 08               [12] 3554 	inc	r0
      001369 76 00            [12] 3555 	mov	@r0,#0x00
      00136B 08               [12] 3556 	inc	r0
      00136C 76 00            [12] 3557 	mov	@r0,#0x00
      00136E 18               [12] 3558 	dec	r0
      00136F 18               [12] 3559 	dec	r0
      001370 18               [12] 3560 	dec	r0
                                   3561 ;	main.c:713: round_in.Half[0] = final_plain_text.Half[0]; 
      001371 AC 1E            [24] 3562 	mov	r4,(_final_plain_text + 0)
      001373 AD 1F            [24] 3563 	mov	r5,(_final_plain_text + 1)
      001375 AE 20            [24] 3564 	mov	r6,(_final_plain_text + 2)
      001377 AF 21            [24] 3565 	mov	r7,(_final_plain_text + 3)
      001379 A7 04            [24] 3566 	mov	@r1,ar4
      00137B 09               [12] 3567 	inc	r1
      00137C A7 05            [24] 3568 	mov	@r1,ar5
      00137E 09               [12] 3569 	inc	r1
      00137F A7 06            [24] 3570 	mov	@r1,ar6
      001381 09               [12] 3571 	inc	r1
      001382 A7 07            [24] 3572 	mov	@r1,ar7
      001384 19               [12] 3573 	dec	r1
      001385 19               [12] 3574 	dec	r1
      001386 19               [12] 3575 	dec	r1
                                   3576 ;	main.c:714: round_in.Half[1] = final_plain_text.Half[1]; 
      001387 AC 22            [24] 3577 	mov	r4,((_final_plain_text + 0x0004) + 0)
      001389 AD 23            [24] 3578 	mov	r5,((_final_plain_text + 0x0004) + 1)
      00138B AE 24            [24] 3579 	mov	r6,((_final_plain_text + 0x0004) + 2)
      00138D AF 25            [24] 3580 	mov	r7,((_final_plain_text + 0x0004) + 3)
      00138F E5 2E            [12] 3581 	mov	a,_bp
      001391 24 04            [12] 3582 	add	a,#0x04
      001393 F8               [12] 3583 	mov	r0,a
      001394 86 00            [24] 3584 	mov	ar0,@r0
      001396 A6 04            [24] 3585 	mov	@r0,ar4
      001398 08               [12] 3586 	inc	r0
      001399 A6 05            [24] 3587 	mov	@r0,ar5
      00139B 08               [12] 3588 	inc	r0
      00139C A6 06            [24] 3589 	mov	@r0,ar6
      00139E 08               [12] 3590 	inc	r0
      00139F A6 07            [24] 3591 	mov	@r0,ar7
      0013A1 18               [12] 3592 	dec	r0
      0013A2 18               [12] 3593 	dec	r0
      0013A3 18               [12] 3594 	dec	r0
                                   3595 ;	main.c:717: final_plain_text.Half[0] = 0;
      0013A4 E4               [12] 3596 	clr	a
      0013A5 F5 1E            [12] 3597 	mov	(_final_plain_text + 0),a
      0013A7 F5 1F            [12] 3598 	mov	(_final_plain_text + 1),a
      0013A9 F5 20            [12] 3599 	mov	(_final_plain_text + 2),a
      0013AB F5 21            [12] 3600 	mov	(_final_plain_text + 3),a
                                   3601 ;	main.c:718: final_plain_text.Half[1] = 0;
      0013AD F5 22            [12] 3602 	mov	((_final_plain_text + 0x0004) + 0),a
      0013AF F5 23            [12] 3603 	mov	((_final_plain_text + 0x0004) + 1),a
      0013B1 F5 24            [12] 3604 	mov	((_final_plain_text + 0x0004) + 2),a
      0013B3 F5 25            [12] 3605 	mov	((_final_plain_text + 0x0004) + 3),a
                                   3606 ;	main.c:693: for (round = 1 ; round < 17 ; round++){
      0013B5 E5 2E            [12] 3607 	mov	a,_bp
      0013B7 24 08            [12] 3608 	add	a,#0x08
      0013B9 F8               [12] 3609 	mov	r0,a
      0013BA 06               [12] 3610 	inc	@r0
      0013BB E5 2E            [12] 3611 	mov	a,_bp
      0013BD 24 08            [12] 3612 	add	a,#0x08
      0013BF F8               [12] 3613 	mov	r0,a
      0013C0 B6 11 00         [24] 3614 	cjne	@r0,#0x11,00424$
      0013C3                       3615 00424$:
      0013C3 D0 00            [24] 3616 	pop	ar0
      0013C5 D0 06            [24] 3617 	pop	ar6
      0013C7 50 03            [24] 3618 	jnc	00425$
      0013C9 02 11 99         [24] 3619 	ljmp	00170$
      0013CC                       3620 00425$:
                                   3621 ;	main.c:720: pc2_in.Half[0] = round_in.Half[1];
      0013CC E5 2E            [12] 3622 	mov	a,_bp
      0013CE 24 04            [12] 3623 	add	a,#0x04
      0013D0 F8               [12] 3624 	mov	r0,a
      0013D1 86 00            [24] 3625 	mov	ar0,@r0
      0013D3 86 03            [24] 3626 	mov	ar3,@r0
      0013D5 08               [12] 3627 	inc	r0
      0013D6 86 04            [24] 3628 	mov	ar4,@r0
      0013D8 08               [12] 3629 	inc	r0
      0013D9 86 05            [24] 3630 	mov	ar5,@r0
      0013DB 08               [12] 3631 	inc	r0
      0013DC 86 07            [24] 3632 	mov	ar7,@r0
      0013DE 18               [12] 3633 	dec	r0
      0013DF 18               [12] 3634 	dec	r0
      0013E0 18               [12] 3635 	dec	r0
      0013E1 A8 02            [24] 3636 	mov	r0,ar2
      0013E3 A6 03            [24] 3637 	mov	@r0,ar3
      0013E5 08               [12] 3638 	inc	r0
      0013E6 A6 04            [24] 3639 	mov	@r0,ar4
      0013E8 08               [12] 3640 	inc	r0
      0013E9 A6 05            [24] 3641 	mov	@r0,ar5
      0013EB 08               [12] 3642 	inc	r0
      0013EC A6 07            [24] 3643 	mov	@r0,ar7
                                   3644 ;	main.c:721: pc2_in.Half[1] = round_in.Half[0];
      0013EE 87 03            [24] 3645 	mov	ar3,@r1
      0013F0 09               [12] 3646 	inc	r1
      0013F1 87 04            [24] 3647 	mov	ar4,@r1
      0013F3 09               [12] 3648 	inc	r1
      0013F4 87 05            [24] 3649 	mov	ar5,@r1
      0013F6 09               [12] 3650 	inc	r1
      0013F7 87 07            [24] 3651 	mov	ar7,@r1
      0013F9 19               [12] 3652 	dec	r1
      0013FA 19               [12] 3653 	dec	r1
      0013FB 19               [12] 3654 	dec	r1
      0013FC E5 2E            [12] 3655 	mov	a,_bp
      0013FE 24 07            [12] 3656 	add	a,#0x07
      001400 F8               [12] 3657 	mov	r0,a
      001401 86 00            [24] 3658 	mov	ar0,@r0
      001403 A6 03            [24] 3659 	mov	@r0,ar3
      001405 08               [12] 3660 	inc	r0
      001406 A6 04            [24] 3661 	mov	@r0,ar4
      001408 08               [12] 3662 	inc	r0
      001409 A6 05            [24] 3663 	mov	@r0,ar5
      00140B 08               [12] 3664 	inc	r0
      00140C A6 07            [24] 3665 	mov	@r0,ar7
      00140E 18               [12] 3666 	dec	r0
      00140F 18               [12] 3667 	dec	r0
      001410 18               [12] 3668 	dec	r0
                                   3669 ;	main.c:723: Permutation (&pc2_in,&final_plain_text,Basic_Permutation,fp);
      001411 8A 07            [24] 3670 	mov	ar7,r2
      001413 7D 00            [12] 3671 	mov	r5,#0x00
      001415 7C 40            [12] 3672 	mov	r4,#0x40
      001417 74 84            [12] 3673 	mov	a,#_fp
      001419 C0 E0            [24] 3674 	push	acc
      00141B 74 16            [12] 3675 	mov	a,#(_fp >> 8)
      00141D C0 E0            [24] 3676 	push	acc
      00141F 74 80            [12] 3677 	mov	a,#0x80
      001421 C0 E0            [24] 3678 	push	acc
      001423 03               [12] 3679 	rr	a
      001424 C0 E0            [24] 3680 	push	acc
      001426 74 1E            [12] 3681 	mov	a,#_final_plain_text
      001428 C0 E0            [24] 3682 	push	acc
      00142A 74 00            [12] 3683 	mov	a,#(_final_plain_text >> 8)
      00142C C0 E0            [24] 3684 	push	acc
      00142E EC               [12] 3685 	mov	a,r4
      00142F C0 E0            [24] 3686 	push	acc
      001431 8F 82            [24] 3687 	mov	dpl,r7
      001433 8D 83            [24] 3688 	mov	dph,r5
      001435 8C F0            [24] 3689 	mov	b,r4
      001437 12 01 4F         [24] 3690 	lcall	_Permutation
      00143A E5 81            [12] 3691 	mov	a,sp
      00143C 24 F9            [12] 3692 	add	a,#0xf9
      00143E F5 81            [12] 3693 	mov	sp,a
                                   3694 ;	main.c:728: SBUF = '\n';
      001440 75 99 0A         [24] 3695 	mov	_SBUF,#0x0a
                                   3696 ;	main.c:729: while (0 == TI);
      001443                       3697 00143$:
                                   3698 ;	main.c:730: TI = 0;
                                   3699 ;	assignBit
      001443 10 99 02         [24] 3700 	jbc	_TI,00426$
      001446 80 FB            [24] 3701 	sjmp	00143$
      001448                       3702 00426$:
                                   3703 ;	main.c:731: spi_delay();
      001448 12 00 CB         [24] 3704 	lcall	_spi_delay
                                   3705 ;	main.c:732: SBUF = 'P';
      00144B 75 99 50         [24] 3706 	mov	_SBUF,#0x50
                                   3707 ;	main.c:733: while (0 == TI);
      00144E                       3708 00146$:
                                   3709 ;	main.c:734: TI = 0;
                                   3710 ;	assignBit
      00144E 10 99 02         [24] 3711 	jbc	_TI,00427$
      001451 80 FB            [24] 3712 	sjmp	00146$
      001453                       3713 00427$:
                                   3714 ;	main.c:735: SBUF = 'T';
      001453 75 99 54         [24] 3715 	mov	_SBUF,#0x54
                                   3716 ;	main.c:736: while (0 == TI);
      001456                       3717 00149$:
                                   3718 ;	main.c:737: TI = 0;
                                   3719 ;	assignBit
      001456 10 99 02         [24] 3720 	jbc	_TI,00428$
      001459 80 FB            [24] 3721 	sjmp	00149$
      00145B                       3722 00428$:
                                   3723 ;	main.c:738: spi_delay();
      00145B 12 00 CB         [24] 3724 	lcall	_spi_delay
                                   3725 ;	main.c:739: SBUF = ':';
      00145E 75 99 3A         [24] 3726 	mov	_SBUF,#0x3a
                                   3727 ;	main.c:740: while (0 == TI);
      001461                       3728 00152$:
                                   3729 ;	main.c:741: TI = 0;
                                   3730 ;	assignBit
      001461 10 99 02         [24] 3731 	jbc	_TI,00429$
      001464 80 FB            [24] 3732 	sjmp	00152$
      001466                       3733 00429$:
                                   3734 ;	main.c:742: spi_delay();
      001466 12 00 CB         [24] 3735 	lcall	_spi_delay
                                   3736 ;	main.c:743: spi_delay();
      001469 12 00 CB         [24] 3737 	lcall	_spi_delay
                                   3738 ;	main.c:744: for (i=0 ; i<8;i++){
      00146C 75 18 00         [24] 3739 	mov	_i,#0x00
      00146F                       3740 00172$:
                                   3741 ;	main.c:746: temp2 = final_plain_text.Array[i] ;
      00146F E5 18            [12] 3742 	mov	a,_i
      001471 24 1E            [12] 3743 	add	a,#_final_plain_text
      001473 F9               [12] 3744 	mov	r1,a
      001474 87 99            [24] 3745 	mov	_SBUF,@r1
                                   3746 ;	main.c:748: while(0==TI);
      001476                       3747 00155$:
                                   3748 ;	main.c:749: TI=0;
                                   3749 ;	assignBit
      001476 10 99 02         [24] 3750 	jbc	_TI,00430$
      001479 80 FB            [24] 3751 	sjmp	00155$
      00147B                       3752 00430$:
                                   3753 ;	main.c:744: for (i=0 ; i<8;i++){
      00147B 05 18            [12] 3754 	inc	_i
      00147D 74 F8            [12] 3755 	mov	a,#0x100 - 0x08
      00147F 25 18            [12] 3756 	add	a,_i
      001481 50 EC            [24] 3757 	jnc	00172$
                                   3758 ;	main.c:751: spi_delay();
      001483 12 00 CB         [24] 3759 	lcall	_spi_delay
      001486 02 0F CA         [24] 3760 	ljmp	00160$
                                   3761 ;	main.c:754: return 0;
                                   3762 ;	main.c:755: }
      001489 85 2E 81         [24] 3763 	mov	sp,_bp
      00148C D0 2E            [24] 3764 	pop	_bp
      00148E 22               [24] 3765 	ret
                                   3766 	.area CSEG    (CODE)
                                   3767 	.area CONST   (CODE)
      0015DC                       3768 _pc1:
      0015DC 39                    3769 	.db #0x39	; 57	'9'
      0015DD 31                    3770 	.db #0x31	; 49	'1'
      0015DE 29                    3771 	.db #0x29	; 41
      0015DF 21                    3772 	.db #0x21	; 33
      0015E0 19                    3773 	.db #0x19	; 25
      0015E1 11                    3774 	.db #0x11	; 17
      0015E2 09                    3775 	.db #0x09	; 9
      0015E3 01                    3776 	.db #0x01	; 1
      0015E4 3A                    3777 	.db #0x3a	; 58
      0015E5 32                    3778 	.db #0x32	; 50	'2'
      0015E6 2A                    3779 	.db #0x2a	; 42
      0015E7 22                    3780 	.db #0x22	; 34
      0015E8 1A                    3781 	.db #0x1a	; 26
      0015E9 12                    3782 	.db #0x12	; 18
      0015EA 0A                    3783 	.db #0x0a	; 10
      0015EB 02                    3784 	.db #0x02	; 2
      0015EC 3B                    3785 	.db #0x3b	; 59
      0015ED 33                    3786 	.db #0x33	; 51	'3'
      0015EE 2B                    3787 	.db #0x2b	; 43
      0015EF 23                    3788 	.db #0x23	; 35
      0015F0 1B                    3789 	.db #0x1b	; 27
      0015F1 13                    3790 	.db #0x13	; 19
      0015F2 0B                    3791 	.db #0x0b	; 11
      0015F3 03                    3792 	.db #0x03	; 3
      0015F4 3C                    3793 	.db #0x3c	; 60
      0015F5 34                    3794 	.db #0x34	; 52	'4'
      0015F6 2C                    3795 	.db #0x2c	; 44
      0015F7 24                    3796 	.db #0x24	; 36
      0015F8 3F                    3797 	.db #0x3f	; 63
      0015F9 37                    3798 	.db #0x37	; 55	'7'
      0015FA 2F                    3799 	.db #0x2f	; 47
      0015FB 27                    3800 	.db #0x27	; 39
      0015FC 1F                    3801 	.db #0x1f	; 31
      0015FD 17                    3802 	.db #0x17	; 23
      0015FE 0F                    3803 	.db #0x0f	; 15
      0015FF 07                    3804 	.db #0x07	; 7
      001600 3E                    3805 	.db #0x3e	; 62
      001601 36                    3806 	.db #0x36	; 54	'6'
      001602 2E                    3807 	.db #0x2e	; 46
      001603 26                    3808 	.db #0x26	; 38
      001604 1E                    3809 	.db #0x1e	; 30
      001605 16                    3810 	.db #0x16	; 22
      001606 0E                    3811 	.db #0x0e	; 14
      001607 06                    3812 	.db #0x06	; 6
      001608 3D                    3813 	.db #0x3d	; 61
      001609 35                    3814 	.db #0x35	; 53	'5'
      00160A 2D                    3815 	.db #0x2d	; 45
      00160B 25                    3816 	.db #0x25	; 37
      00160C 1D                    3817 	.db #0x1d	; 29
      00160D 15                    3818 	.db #0x15	; 21
      00160E 0D                    3819 	.db #0x0d	; 13
      00160F 05                    3820 	.db #0x05	; 5
      001610 1C                    3821 	.db #0x1c	; 28
      001611 14                    3822 	.db #0x14	; 20
      001612 0C                    3823 	.db #0x0c	; 12
      001613 04                    3824 	.db #0x04	; 4
      001614                       3825 _pc2:
      001614 0E                    3826 	.db #0x0e	; 14
      001615 11                    3827 	.db #0x11	; 17
      001616 0B                    3828 	.db #0x0b	; 11
      001617 18                    3829 	.db #0x18	; 24
      001618 01                    3830 	.db #0x01	; 1
      001619 05                    3831 	.db #0x05	; 5
      00161A 03                    3832 	.db #0x03	; 3
      00161B 1C                    3833 	.db #0x1c	; 28
      00161C 0F                    3834 	.db #0x0f	; 15
      00161D 06                    3835 	.db #0x06	; 6
      00161E 15                    3836 	.db #0x15	; 21
      00161F 0A                    3837 	.db #0x0a	; 10
      001620 17                    3838 	.db #0x17	; 23
      001621 13                    3839 	.db #0x13	; 19
      001622 0C                    3840 	.db #0x0c	; 12
      001623 04                    3841 	.db #0x04	; 4
      001624 1A                    3842 	.db #0x1a	; 26
      001625 08                    3843 	.db #0x08	; 8
      001626 10                    3844 	.db #0x10	; 16
      001627 07                    3845 	.db #0x07	; 7
      001628 1B                    3846 	.db #0x1b	; 27
      001629 14                    3847 	.db #0x14	; 20
      00162A 0D                    3848 	.db #0x0d	; 13
      00162B 02                    3849 	.db #0x02	; 2
      00162C 29                    3850 	.db #0x29	; 41
      00162D 34                    3851 	.db #0x34	; 52	'4'
      00162E 1F                    3852 	.db #0x1f	; 31
      00162F 25                    3853 	.db #0x25	; 37
      001630 2F                    3854 	.db #0x2f	; 47
      001631 37                    3855 	.db #0x37	; 55	'7'
      001632 1E                    3856 	.db #0x1e	; 30
      001633 28                    3857 	.db #0x28	; 40
      001634 33                    3858 	.db #0x33	; 51	'3'
      001635 2D                    3859 	.db #0x2d	; 45
      001636 21                    3860 	.db #0x21	; 33
      001637 30                    3861 	.db #0x30	; 48	'0'
      001638 2C                    3862 	.db #0x2c	; 44
      001639 31                    3863 	.db #0x31	; 49	'1'
      00163A 27                    3864 	.db #0x27	; 39
      00163B 38                    3865 	.db #0x38	; 56	'8'
      00163C 22                    3866 	.db #0x22	; 34
      00163D 35                    3867 	.db #0x35	; 53	'5'
      00163E 2E                    3868 	.db #0x2e	; 46
      00163F 2A                    3869 	.db #0x2a	; 42
      001640 32                    3870 	.db #0x32	; 50	'2'
      001641 24                    3871 	.db #0x24	; 36
      001642 1D                    3872 	.db #0x1d	; 29
      001643 20                    3873 	.db #0x20	; 32
      001644                       3874 _ip:
      001644 3A                    3875 	.db #0x3a	; 58
      001645 32                    3876 	.db #0x32	; 50	'2'
      001646 2A                    3877 	.db #0x2a	; 42
      001647 22                    3878 	.db #0x22	; 34
      001648 1A                    3879 	.db #0x1a	; 26
      001649 12                    3880 	.db #0x12	; 18
      00164A 0A                    3881 	.db #0x0a	; 10
      00164B 02                    3882 	.db #0x02	; 2
      00164C 3C                    3883 	.db #0x3c	; 60
      00164D 34                    3884 	.db #0x34	; 52	'4'
      00164E 2C                    3885 	.db #0x2c	; 44
      00164F 24                    3886 	.db #0x24	; 36
      001650 1C                    3887 	.db #0x1c	; 28
      001651 14                    3888 	.db #0x14	; 20
      001652 0C                    3889 	.db #0x0c	; 12
      001653 04                    3890 	.db #0x04	; 4
      001654 3E                    3891 	.db #0x3e	; 62
      001655 36                    3892 	.db #0x36	; 54	'6'
      001656 2E                    3893 	.db #0x2e	; 46
      001657 26                    3894 	.db #0x26	; 38
      001658 1E                    3895 	.db #0x1e	; 30
      001659 16                    3896 	.db #0x16	; 22
      00165A 0E                    3897 	.db #0x0e	; 14
      00165B 06                    3898 	.db #0x06	; 6
      00165C 40                    3899 	.db #0x40	; 64
      00165D 38                    3900 	.db #0x38	; 56	'8'
      00165E 30                    3901 	.db #0x30	; 48	'0'
      00165F 28                    3902 	.db #0x28	; 40
      001660 20                    3903 	.db #0x20	; 32
      001661 18                    3904 	.db #0x18	; 24
      001662 10                    3905 	.db #0x10	; 16
      001663 08                    3906 	.db #0x08	; 8
      001664 39                    3907 	.db #0x39	; 57	'9'
      001665 31                    3908 	.db #0x31	; 49	'1'
      001666 29                    3909 	.db #0x29	; 41
      001667 21                    3910 	.db #0x21	; 33
      001668 19                    3911 	.db #0x19	; 25
      001669 11                    3912 	.db #0x11	; 17
      00166A 09                    3913 	.db #0x09	; 9
      00166B 01                    3914 	.db #0x01	; 1
      00166C 3B                    3915 	.db #0x3b	; 59
      00166D 33                    3916 	.db #0x33	; 51	'3'
      00166E 2B                    3917 	.db #0x2b	; 43
      00166F 23                    3918 	.db #0x23	; 35
      001670 1B                    3919 	.db #0x1b	; 27
      001671 13                    3920 	.db #0x13	; 19
      001672 0B                    3921 	.db #0x0b	; 11
      001673 03                    3922 	.db #0x03	; 3
      001674 3D                    3923 	.db #0x3d	; 61
      001675 35                    3924 	.db #0x35	; 53	'5'
      001676 2D                    3925 	.db #0x2d	; 45
      001677 25                    3926 	.db #0x25	; 37
      001678 1D                    3927 	.db #0x1d	; 29
      001679 15                    3928 	.db #0x15	; 21
      00167A 0D                    3929 	.db #0x0d	; 13
      00167B 05                    3930 	.db #0x05	; 5
      00167C 3F                    3931 	.db #0x3f	; 63
      00167D 37                    3932 	.db #0x37	; 55	'7'
      00167E 2F                    3933 	.db #0x2f	; 47
      00167F 27                    3934 	.db #0x27	; 39
      001680 1F                    3935 	.db #0x1f	; 31
      001681 17                    3936 	.db #0x17	; 23
      001682 0F                    3937 	.db #0x0f	; 15
      001683 07                    3938 	.db #0x07	; 7
      001684                       3939 _fp:
      001684 28                    3940 	.db #0x28	; 40
      001685 08                    3941 	.db #0x08	; 8
      001686 30                    3942 	.db #0x30	; 48	'0'
      001687 10                    3943 	.db #0x10	; 16
      001688 38                    3944 	.db #0x38	; 56	'8'
      001689 18                    3945 	.db #0x18	; 24
      00168A 40                    3946 	.db #0x40	; 64
      00168B 20                    3947 	.db #0x20	; 32
      00168C 27                    3948 	.db #0x27	; 39
      00168D 07                    3949 	.db #0x07	; 7
      00168E 2F                    3950 	.db #0x2f	; 47
      00168F 0F                    3951 	.db #0x0f	; 15
      001690 37                    3952 	.db #0x37	; 55	'7'
      001691 17                    3953 	.db #0x17	; 23
      001692 3F                    3954 	.db #0x3f	; 63
      001693 1F                    3955 	.db #0x1f	; 31
      001694 26                    3956 	.db #0x26	; 38
      001695 06                    3957 	.db #0x06	; 6
      001696 2E                    3958 	.db #0x2e	; 46
      001697 0E                    3959 	.db #0x0e	; 14
      001698 36                    3960 	.db #0x36	; 54	'6'
      001699 16                    3961 	.db #0x16	; 22
      00169A 3E                    3962 	.db #0x3e	; 62
      00169B 1E                    3963 	.db #0x1e	; 30
      00169C 25                    3964 	.db #0x25	; 37
      00169D 05                    3965 	.db #0x05	; 5
      00169E 2D                    3966 	.db #0x2d	; 45
      00169F 0D                    3967 	.db #0x0d	; 13
      0016A0 35                    3968 	.db #0x35	; 53	'5'
      0016A1 15                    3969 	.db #0x15	; 21
      0016A2 3D                    3970 	.db #0x3d	; 61
      0016A3 1D                    3971 	.db #0x1d	; 29
      0016A4 24                    3972 	.db #0x24	; 36
      0016A5 04                    3973 	.db #0x04	; 4
      0016A6 2C                    3974 	.db #0x2c	; 44
      0016A7 0C                    3975 	.db #0x0c	; 12
      0016A8 34                    3976 	.db #0x34	; 52	'4'
      0016A9 14                    3977 	.db #0x14	; 20
      0016AA 3C                    3978 	.db #0x3c	; 60
      0016AB 1C                    3979 	.db #0x1c	; 28
      0016AC 23                    3980 	.db #0x23	; 35
      0016AD 03                    3981 	.db #0x03	; 3
      0016AE 2B                    3982 	.db #0x2b	; 43
      0016AF 0B                    3983 	.db #0x0b	; 11
      0016B0 33                    3984 	.db #0x33	; 51	'3'
      0016B1 13                    3985 	.db #0x13	; 19
      0016B2 3B                    3986 	.db #0x3b	; 59
      0016B3 1B                    3987 	.db #0x1b	; 27
      0016B4 22                    3988 	.db #0x22	; 34
      0016B5 02                    3989 	.db #0x02	; 2
      0016B6 2A                    3990 	.db #0x2a	; 42
      0016B7 0A                    3991 	.db #0x0a	; 10
      0016B8 32                    3992 	.db #0x32	; 50	'2'
      0016B9 12                    3993 	.db #0x12	; 18
      0016BA 3A                    3994 	.db #0x3a	; 58
      0016BB 1A                    3995 	.db #0x1a	; 26
      0016BC 21                    3996 	.db #0x21	; 33
      0016BD 01                    3997 	.db #0x01	; 1
      0016BE 29                    3998 	.db #0x29	; 41
      0016BF 09                    3999 	.db #0x09	; 9
      0016C0 31                    4000 	.db #0x31	; 49	'1'
      0016C1 11                    4001 	.db #0x11	; 17
      0016C2 39                    4002 	.db #0x39	; 57	'9'
      0016C3 19                    4003 	.db #0x19	; 25
      0016C4                       4004 _s1:
      0016C4 0E                    4005 	.db #0x0e	; 14
      0016C5 04                    4006 	.db #0x04	; 4
      0016C6 0D                    4007 	.db #0x0d	; 13
      0016C7 01                    4008 	.db #0x01	; 1
      0016C8 02                    4009 	.db #0x02	; 2
      0016C9 0F                    4010 	.db #0x0f	; 15
      0016CA 0B                    4011 	.db #0x0b	; 11
      0016CB 08                    4012 	.db #0x08	; 8
      0016CC 03                    4013 	.db #0x03	; 3
      0016CD 0A                    4014 	.db #0x0a	; 10
      0016CE 06                    4015 	.db #0x06	; 6
      0016CF 0C                    4016 	.db #0x0c	; 12
      0016D0 05                    4017 	.db #0x05	; 5
      0016D1 09                    4018 	.db #0x09	; 9
      0016D2 00                    4019 	.db #0x00	; 0
      0016D3 07                    4020 	.db #0x07	; 7
      0016D4 00                    4021 	.db #0x00	; 0
      0016D5 0F                    4022 	.db #0x0f	; 15
      0016D6 07                    4023 	.db #0x07	; 7
      0016D7 04                    4024 	.db #0x04	; 4
      0016D8 0E                    4025 	.db #0x0e	; 14
      0016D9 02                    4026 	.db #0x02	; 2
      0016DA 0D                    4027 	.db #0x0d	; 13
      0016DB 01                    4028 	.db #0x01	; 1
      0016DC 0A                    4029 	.db #0x0a	; 10
      0016DD 06                    4030 	.db #0x06	; 6
      0016DE 0C                    4031 	.db #0x0c	; 12
      0016DF 0B                    4032 	.db #0x0b	; 11
      0016E0 09                    4033 	.db #0x09	; 9
      0016E1 05                    4034 	.db #0x05	; 5
      0016E2 03                    4035 	.db #0x03	; 3
      0016E3 08                    4036 	.db #0x08	; 8
      0016E4 04                    4037 	.db #0x04	; 4
      0016E5 01                    4038 	.db #0x01	; 1
      0016E6 0E                    4039 	.db #0x0e	; 14
      0016E7 08                    4040 	.db #0x08	; 8
      0016E8 0D                    4041 	.db #0x0d	; 13
      0016E9 06                    4042 	.db #0x06	; 6
      0016EA 02                    4043 	.db #0x02	; 2
      0016EB 0B                    4044 	.db #0x0b	; 11
      0016EC 0F                    4045 	.db #0x0f	; 15
      0016ED 0C                    4046 	.db #0x0c	; 12
      0016EE 09                    4047 	.db #0x09	; 9
      0016EF 07                    4048 	.db #0x07	; 7
      0016F0 03                    4049 	.db #0x03	; 3
      0016F1 0A                    4050 	.db #0x0a	; 10
      0016F2 05                    4051 	.db #0x05	; 5
      0016F3 00                    4052 	.db #0x00	; 0
      0016F4 0F                    4053 	.db #0x0f	; 15
      0016F5 0C                    4054 	.db #0x0c	; 12
      0016F6 08                    4055 	.db #0x08	; 8
      0016F7 02                    4056 	.db #0x02	; 2
      0016F8 04                    4057 	.db #0x04	; 4
      0016F9 09                    4058 	.db #0x09	; 9
      0016FA 01                    4059 	.db #0x01	; 1
      0016FB 07                    4060 	.db #0x07	; 7
      0016FC 05                    4061 	.db #0x05	; 5
      0016FD 0B                    4062 	.db #0x0b	; 11
      0016FE 03                    4063 	.db #0x03	; 3
      0016FF 0E                    4064 	.db #0x0e	; 14
      001700 0A                    4065 	.db #0x0a	; 10
      001701 00                    4066 	.db #0x00	; 0
      001702 06                    4067 	.db #0x06	; 6
      001703 0D                    4068 	.db #0x0d	; 13
      001704                       4069 _s2:
      001704 0F                    4070 	.db #0x0f	; 15
      001705 01                    4071 	.db #0x01	; 1
      001706 08                    4072 	.db #0x08	; 8
      001707 0E                    4073 	.db #0x0e	; 14
      001708 06                    4074 	.db #0x06	; 6
      001709 0B                    4075 	.db #0x0b	; 11
      00170A 03                    4076 	.db #0x03	; 3
      00170B 04                    4077 	.db #0x04	; 4
      00170C 09                    4078 	.db #0x09	; 9
      00170D 07                    4079 	.db #0x07	; 7
      00170E 02                    4080 	.db #0x02	; 2
      00170F 0D                    4081 	.db #0x0d	; 13
      001710 0C                    4082 	.db #0x0c	; 12
      001711 00                    4083 	.db #0x00	; 0
      001712 05                    4084 	.db #0x05	; 5
      001713 0A                    4085 	.db #0x0a	; 10
      001714 03                    4086 	.db #0x03	; 3
      001715 0D                    4087 	.db #0x0d	; 13
      001716 04                    4088 	.db #0x04	; 4
      001717 07                    4089 	.db #0x07	; 7
      001718 0F                    4090 	.db #0x0f	; 15
      001719 02                    4091 	.db #0x02	; 2
      00171A 08                    4092 	.db #0x08	; 8
      00171B 0E                    4093 	.db #0x0e	; 14
      00171C 0C                    4094 	.db #0x0c	; 12
      00171D 00                    4095 	.db #0x00	; 0
      00171E 01                    4096 	.db #0x01	; 1
      00171F 0A                    4097 	.db #0x0a	; 10
      001720 06                    4098 	.db #0x06	; 6
      001721 09                    4099 	.db #0x09	; 9
      001722 0B                    4100 	.db #0x0b	; 11
      001723 05                    4101 	.db #0x05	; 5
      001724 00                    4102 	.db #0x00	; 0
      001725 0E                    4103 	.db #0x0e	; 14
      001726 07                    4104 	.db #0x07	; 7
      001727 0B                    4105 	.db #0x0b	; 11
      001728 0A                    4106 	.db #0x0a	; 10
      001729 04                    4107 	.db #0x04	; 4
      00172A 0D                    4108 	.db #0x0d	; 13
      00172B 01                    4109 	.db #0x01	; 1
      00172C 05                    4110 	.db #0x05	; 5
      00172D 08                    4111 	.db #0x08	; 8
      00172E 0C                    4112 	.db #0x0c	; 12
      00172F 06                    4113 	.db #0x06	; 6
      001730 09                    4114 	.db #0x09	; 9
      001731 03                    4115 	.db #0x03	; 3
      001732 02                    4116 	.db #0x02	; 2
      001733 0F                    4117 	.db #0x0f	; 15
      001734 0D                    4118 	.db #0x0d	; 13
      001735 08                    4119 	.db #0x08	; 8
      001736 0A                    4120 	.db #0x0a	; 10
      001737 01                    4121 	.db #0x01	; 1
      001738 03                    4122 	.db #0x03	; 3
      001739 0F                    4123 	.db #0x0f	; 15
      00173A 04                    4124 	.db #0x04	; 4
      00173B 02                    4125 	.db #0x02	; 2
      00173C 0B                    4126 	.db #0x0b	; 11
      00173D 06                    4127 	.db #0x06	; 6
      00173E 07                    4128 	.db #0x07	; 7
      00173F 0C                    4129 	.db #0x0c	; 12
      001740 00                    4130 	.db #0x00	; 0
      001741 05                    4131 	.db #0x05	; 5
      001742 0E                    4132 	.db #0x0e	; 14
      001743 09                    4133 	.db #0x09	; 9
      001744                       4134 _s3:
      001744 0A                    4135 	.db #0x0a	; 10
      001745 00                    4136 	.db #0x00	; 0
      001746 09                    4137 	.db #0x09	; 9
      001747 0E                    4138 	.db #0x0e	; 14
      001748 06                    4139 	.db #0x06	; 6
      001749 03                    4140 	.db #0x03	; 3
      00174A 0F                    4141 	.db #0x0f	; 15
      00174B 05                    4142 	.db #0x05	; 5
      00174C 01                    4143 	.db #0x01	; 1
      00174D 0D                    4144 	.db #0x0d	; 13
      00174E 0C                    4145 	.db #0x0c	; 12
      00174F 07                    4146 	.db #0x07	; 7
      001750 0B                    4147 	.db #0x0b	; 11
      001751 04                    4148 	.db #0x04	; 4
      001752 02                    4149 	.db #0x02	; 2
      001753 08                    4150 	.db #0x08	; 8
      001754 0D                    4151 	.db #0x0d	; 13
      001755 07                    4152 	.db #0x07	; 7
      001756 00                    4153 	.db #0x00	; 0
      001757 09                    4154 	.db #0x09	; 9
      001758 03                    4155 	.db #0x03	; 3
      001759 04                    4156 	.db #0x04	; 4
      00175A 06                    4157 	.db #0x06	; 6
      00175B 0A                    4158 	.db #0x0a	; 10
      00175C 02                    4159 	.db #0x02	; 2
      00175D 08                    4160 	.db #0x08	; 8
      00175E 05                    4161 	.db #0x05	; 5
      00175F 0E                    4162 	.db #0x0e	; 14
      001760 0C                    4163 	.db #0x0c	; 12
      001761 0B                    4164 	.db #0x0b	; 11
      001762 0F                    4165 	.db #0x0f	; 15
      001763 01                    4166 	.db #0x01	; 1
      001764 0D                    4167 	.db #0x0d	; 13
      001765 06                    4168 	.db #0x06	; 6
      001766 04                    4169 	.db #0x04	; 4
      001767 09                    4170 	.db #0x09	; 9
      001768 08                    4171 	.db #0x08	; 8
      001769 0F                    4172 	.db #0x0f	; 15
      00176A 03                    4173 	.db #0x03	; 3
      00176B 00                    4174 	.db #0x00	; 0
      00176C 0B                    4175 	.db #0x0b	; 11
      00176D 01                    4176 	.db #0x01	; 1
      00176E 02                    4177 	.db #0x02	; 2
      00176F 0C                    4178 	.db #0x0c	; 12
      001770 05                    4179 	.db #0x05	; 5
      001771 0A                    4180 	.db #0x0a	; 10
      001772 0E                    4181 	.db #0x0e	; 14
      001773 07                    4182 	.db #0x07	; 7
      001774 01                    4183 	.db #0x01	; 1
      001775 0A                    4184 	.db #0x0a	; 10
      001776 0D                    4185 	.db #0x0d	; 13
      001777 00                    4186 	.db #0x00	; 0
      001778 06                    4187 	.db #0x06	; 6
      001779 09                    4188 	.db #0x09	; 9
      00177A 08                    4189 	.db #0x08	; 8
      00177B 07                    4190 	.db #0x07	; 7
      00177C 04                    4191 	.db #0x04	; 4
      00177D 0F                    4192 	.db #0x0f	; 15
      00177E 0E                    4193 	.db #0x0e	; 14
      00177F 03                    4194 	.db #0x03	; 3
      001780 0B                    4195 	.db #0x0b	; 11
      001781 05                    4196 	.db #0x05	; 5
      001782 02                    4197 	.db #0x02	; 2
      001783 0C                    4198 	.db #0x0c	; 12
      001784                       4199 _s4:
      001784 07                    4200 	.db #0x07	; 7
      001785 0D                    4201 	.db #0x0d	; 13
      001786 0E                    4202 	.db #0x0e	; 14
      001787 03                    4203 	.db #0x03	; 3
      001788 00                    4204 	.db #0x00	; 0
      001789 06                    4205 	.db #0x06	; 6
      00178A 09                    4206 	.db #0x09	; 9
      00178B 0A                    4207 	.db #0x0a	; 10
      00178C 01                    4208 	.db #0x01	; 1
      00178D 02                    4209 	.db #0x02	; 2
      00178E 08                    4210 	.db #0x08	; 8
      00178F 05                    4211 	.db #0x05	; 5
      001790 0B                    4212 	.db #0x0b	; 11
      001791 0C                    4213 	.db #0x0c	; 12
      001792 04                    4214 	.db #0x04	; 4
      001793 0F                    4215 	.db #0x0f	; 15
      001794 0D                    4216 	.db #0x0d	; 13
      001795 08                    4217 	.db #0x08	; 8
      001796 0B                    4218 	.db #0x0b	; 11
      001797 05                    4219 	.db #0x05	; 5
      001798 06                    4220 	.db #0x06	; 6
      001799 0F                    4221 	.db #0x0f	; 15
      00179A 00                    4222 	.db #0x00	; 0
      00179B 03                    4223 	.db #0x03	; 3
      00179C 04                    4224 	.db #0x04	; 4
      00179D 07                    4225 	.db #0x07	; 7
      00179E 02                    4226 	.db #0x02	; 2
      00179F 0C                    4227 	.db #0x0c	; 12
      0017A0 01                    4228 	.db #0x01	; 1
      0017A1 0A                    4229 	.db #0x0a	; 10
      0017A2 0E                    4230 	.db #0x0e	; 14
      0017A3 09                    4231 	.db #0x09	; 9
      0017A4 0A                    4232 	.db #0x0a	; 10
      0017A5 06                    4233 	.db #0x06	; 6
      0017A6 09                    4234 	.db #0x09	; 9
      0017A7 00                    4235 	.db #0x00	; 0
      0017A8 0C                    4236 	.db #0x0c	; 12
      0017A9 0B                    4237 	.db #0x0b	; 11
      0017AA 07                    4238 	.db #0x07	; 7
      0017AB 0D                    4239 	.db #0x0d	; 13
      0017AC 0F                    4240 	.db #0x0f	; 15
      0017AD 01                    4241 	.db #0x01	; 1
      0017AE 03                    4242 	.db #0x03	; 3
      0017AF 0E                    4243 	.db #0x0e	; 14
      0017B0 05                    4244 	.db #0x05	; 5
      0017B1 02                    4245 	.db #0x02	; 2
      0017B2 08                    4246 	.db #0x08	; 8
      0017B3 04                    4247 	.db #0x04	; 4
      0017B4 03                    4248 	.db #0x03	; 3
      0017B5 0F                    4249 	.db #0x0f	; 15
      0017B6 00                    4250 	.db #0x00	; 0
      0017B7 06                    4251 	.db #0x06	; 6
      0017B8 0A                    4252 	.db #0x0a	; 10
      0017B9 01                    4253 	.db #0x01	; 1
      0017BA 0D                    4254 	.db #0x0d	; 13
      0017BB 08                    4255 	.db #0x08	; 8
      0017BC 09                    4256 	.db #0x09	; 9
      0017BD 04                    4257 	.db #0x04	; 4
      0017BE 05                    4258 	.db #0x05	; 5
      0017BF 0B                    4259 	.db #0x0b	; 11
      0017C0 0C                    4260 	.db #0x0c	; 12
      0017C1 07                    4261 	.db #0x07	; 7
      0017C2 02                    4262 	.db #0x02	; 2
      0017C3 0E                    4263 	.db #0x0e	; 14
      0017C4                       4264 _s5:
      0017C4 02                    4265 	.db #0x02	; 2
      0017C5 0C                    4266 	.db #0x0c	; 12
      0017C6 04                    4267 	.db #0x04	; 4
      0017C7 01                    4268 	.db #0x01	; 1
      0017C8 07                    4269 	.db #0x07	; 7
      0017C9 0A                    4270 	.db #0x0a	; 10
      0017CA 0B                    4271 	.db #0x0b	; 11
      0017CB 06                    4272 	.db #0x06	; 6
      0017CC 08                    4273 	.db #0x08	; 8
      0017CD 05                    4274 	.db #0x05	; 5
      0017CE 03                    4275 	.db #0x03	; 3
      0017CF 0F                    4276 	.db #0x0f	; 15
      0017D0 0D                    4277 	.db #0x0d	; 13
      0017D1 00                    4278 	.db #0x00	; 0
      0017D2 0E                    4279 	.db #0x0e	; 14
      0017D3 09                    4280 	.db #0x09	; 9
      0017D4 0E                    4281 	.db #0x0e	; 14
      0017D5 0B                    4282 	.db #0x0b	; 11
      0017D6 02                    4283 	.db #0x02	; 2
      0017D7 0C                    4284 	.db #0x0c	; 12
      0017D8 04                    4285 	.db #0x04	; 4
      0017D9 07                    4286 	.db #0x07	; 7
      0017DA 0D                    4287 	.db #0x0d	; 13
      0017DB 01                    4288 	.db #0x01	; 1
      0017DC 05                    4289 	.db #0x05	; 5
      0017DD 00                    4290 	.db #0x00	; 0
      0017DE 0F                    4291 	.db #0x0f	; 15
      0017DF 0A                    4292 	.db #0x0a	; 10
      0017E0 03                    4293 	.db #0x03	; 3
      0017E1 09                    4294 	.db #0x09	; 9
      0017E2 08                    4295 	.db #0x08	; 8
      0017E3 06                    4296 	.db #0x06	; 6
      0017E4 04                    4297 	.db #0x04	; 4
      0017E5 02                    4298 	.db #0x02	; 2
      0017E6 01                    4299 	.db #0x01	; 1
      0017E7 0B                    4300 	.db #0x0b	; 11
      0017E8 0A                    4301 	.db #0x0a	; 10
      0017E9 0D                    4302 	.db #0x0d	; 13
      0017EA 07                    4303 	.db #0x07	; 7
      0017EB 08                    4304 	.db #0x08	; 8
      0017EC 0F                    4305 	.db #0x0f	; 15
      0017ED 09                    4306 	.db #0x09	; 9
      0017EE 0C                    4307 	.db #0x0c	; 12
      0017EF 05                    4308 	.db #0x05	; 5
      0017F0 06                    4309 	.db #0x06	; 6
      0017F1 03                    4310 	.db #0x03	; 3
      0017F2 00                    4311 	.db #0x00	; 0
      0017F3 0E                    4312 	.db #0x0e	; 14
      0017F4 0B                    4313 	.db #0x0b	; 11
      0017F5 08                    4314 	.db #0x08	; 8
      0017F6 0C                    4315 	.db #0x0c	; 12
      0017F7 07                    4316 	.db #0x07	; 7
      0017F8 01                    4317 	.db #0x01	; 1
      0017F9 0E                    4318 	.db #0x0e	; 14
      0017FA 02                    4319 	.db #0x02	; 2
      0017FB 0D                    4320 	.db #0x0d	; 13
      0017FC 06                    4321 	.db #0x06	; 6
      0017FD 0F                    4322 	.db #0x0f	; 15
      0017FE 00                    4323 	.db #0x00	; 0
      0017FF 09                    4324 	.db #0x09	; 9
      001800 0A                    4325 	.db #0x0a	; 10
      001801 04                    4326 	.db #0x04	; 4
      001802 05                    4327 	.db #0x05	; 5
      001803 03                    4328 	.db #0x03	; 3
      001804                       4329 _s6:
      001804 0C                    4330 	.db #0x0c	; 12
      001805 01                    4331 	.db #0x01	; 1
      001806 0A                    4332 	.db #0x0a	; 10
      001807 0F                    4333 	.db #0x0f	; 15
      001808 09                    4334 	.db #0x09	; 9
      001809 02                    4335 	.db #0x02	; 2
      00180A 06                    4336 	.db #0x06	; 6
      00180B 08                    4337 	.db #0x08	; 8
      00180C 00                    4338 	.db #0x00	; 0
      00180D 0D                    4339 	.db #0x0d	; 13
      00180E 03                    4340 	.db #0x03	; 3
      00180F 04                    4341 	.db #0x04	; 4
      001810 0E                    4342 	.db #0x0e	; 14
      001811 07                    4343 	.db #0x07	; 7
      001812 05                    4344 	.db #0x05	; 5
      001813 0B                    4345 	.db #0x0b	; 11
      001814 0A                    4346 	.db #0x0a	; 10
      001815 0F                    4347 	.db #0x0f	; 15
      001816 04                    4348 	.db #0x04	; 4
      001817 02                    4349 	.db #0x02	; 2
      001818 07                    4350 	.db #0x07	; 7
      001819 0C                    4351 	.db #0x0c	; 12
      00181A 09                    4352 	.db #0x09	; 9
      00181B 05                    4353 	.db #0x05	; 5
      00181C 06                    4354 	.db #0x06	; 6
      00181D 01                    4355 	.db #0x01	; 1
      00181E 0D                    4356 	.db #0x0d	; 13
      00181F 0E                    4357 	.db #0x0e	; 14
      001820 00                    4358 	.db #0x00	; 0
      001821 0B                    4359 	.db #0x0b	; 11
      001822 03                    4360 	.db #0x03	; 3
      001823 08                    4361 	.db #0x08	; 8
      001824 09                    4362 	.db #0x09	; 9
      001825 0E                    4363 	.db #0x0e	; 14
      001826 0F                    4364 	.db #0x0f	; 15
      001827 05                    4365 	.db #0x05	; 5
      001828 02                    4366 	.db #0x02	; 2
      001829 08                    4367 	.db #0x08	; 8
      00182A 0C                    4368 	.db #0x0c	; 12
      00182B 03                    4369 	.db #0x03	; 3
      00182C 07                    4370 	.db #0x07	; 7
      00182D 00                    4371 	.db #0x00	; 0
      00182E 04                    4372 	.db #0x04	; 4
      00182F 0A                    4373 	.db #0x0a	; 10
      001830 01                    4374 	.db #0x01	; 1
      001831 0D                    4375 	.db #0x0d	; 13
      001832 0B                    4376 	.db #0x0b	; 11
      001833 06                    4377 	.db #0x06	; 6
      001834 04                    4378 	.db #0x04	; 4
      001835 03                    4379 	.db #0x03	; 3
      001836 02                    4380 	.db #0x02	; 2
      001837 0C                    4381 	.db #0x0c	; 12
      001838 09                    4382 	.db #0x09	; 9
      001839 05                    4383 	.db #0x05	; 5
      00183A 0F                    4384 	.db #0x0f	; 15
      00183B 0A                    4385 	.db #0x0a	; 10
      00183C 0B                    4386 	.db #0x0b	; 11
      00183D 0E                    4387 	.db #0x0e	; 14
      00183E 01                    4388 	.db #0x01	; 1
      00183F 07                    4389 	.db #0x07	; 7
      001840 06                    4390 	.db #0x06	; 6
      001841 00                    4391 	.db #0x00	; 0
      001842 08                    4392 	.db #0x08	; 8
      001843 0D                    4393 	.db #0x0d	; 13
      001844                       4394 _s7:
      001844 04                    4395 	.db #0x04	; 4
      001845 0B                    4396 	.db #0x0b	; 11
      001846 02                    4397 	.db #0x02	; 2
      001847 0E                    4398 	.db #0x0e	; 14
      001848 0F                    4399 	.db #0x0f	; 15
      001849 00                    4400 	.db #0x00	; 0
      00184A 08                    4401 	.db #0x08	; 8
      00184B 0D                    4402 	.db #0x0d	; 13
      00184C 03                    4403 	.db #0x03	; 3
      00184D 0C                    4404 	.db #0x0c	; 12
      00184E 09                    4405 	.db #0x09	; 9
      00184F 07                    4406 	.db #0x07	; 7
      001850 05                    4407 	.db #0x05	; 5
      001851 0A                    4408 	.db #0x0a	; 10
      001852 06                    4409 	.db #0x06	; 6
      001853 01                    4410 	.db #0x01	; 1
      001854 0D                    4411 	.db #0x0d	; 13
      001855 00                    4412 	.db #0x00	; 0
      001856 0B                    4413 	.db #0x0b	; 11
      001857 07                    4414 	.db #0x07	; 7
      001858 04                    4415 	.db #0x04	; 4
      001859 09                    4416 	.db #0x09	; 9
      00185A 01                    4417 	.db #0x01	; 1
      00185B 0A                    4418 	.db #0x0a	; 10
      00185C 0E                    4419 	.db #0x0e	; 14
      00185D 03                    4420 	.db #0x03	; 3
      00185E 05                    4421 	.db #0x05	; 5
      00185F 0C                    4422 	.db #0x0c	; 12
      001860 02                    4423 	.db #0x02	; 2
      001861 0F                    4424 	.db #0x0f	; 15
      001862 08                    4425 	.db #0x08	; 8
      001863 06                    4426 	.db #0x06	; 6
      001864 01                    4427 	.db #0x01	; 1
      001865 04                    4428 	.db #0x04	; 4
      001866 0B                    4429 	.db #0x0b	; 11
      001867 0D                    4430 	.db #0x0d	; 13
      001868 0C                    4431 	.db #0x0c	; 12
      001869 03                    4432 	.db #0x03	; 3
      00186A 07                    4433 	.db #0x07	; 7
      00186B 0E                    4434 	.db #0x0e	; 14
      00186C 0A                    4435 	.db #0x0a	; 10
      00186D 0F                    4436 	.db #0x0f	; 15
      00186E 06                    4437 	.db #0x06	; 6
      00186F 08                    4438 	.db #0x08	; 8
      001870 00                    4439 	.db #0x00	; 0
      001871 05                    4440 	.db #0x05	; 5
      001872 09                    4441 	.db #0x09	; 9
      001873 02                    4442 	.db #0x02	; 2
      001874 06                    4443 	.db #0x06	; 6
      001875 0B                    4444 	.db #0x0b	; 11
      001876 0D                    4445 	.db #0x0d	; 13
      001877 08                    4446 	.db #0x08	; 8
      001878 01                    4447 	.db #0x01	; 1
      001879 04                    4448 	.db #0x04	; 4
      00187A 0A                    4449 	.db #0x0a	; 10
      00187B 07                    4450 	.db #0x07	; 7
      00187C 09                    4451 	.db #0x09	; 9
      00187D 05                    4452 	.db #0x05	; 5
      00187E 00                    4453 	.db #0x00	; 0
      00187F 0F                    4454 	.db #0x0f	; 15
      001880 0E                    4455 	.db #0x0e	; 14
      001881 02                    4456 	.db #0x02	; 2
      001882 03                    4457 	.db #0x03	; 3
      001883 0C                    4458 	.db #0x0c	; 12
      001884                       4459 _s8:
      001884 0D                    4460 	.db #0x0d	; 13
      001885 02                    4461 	.db #0x02	; 2
      001886 08                    4462 	.db #0x08	; 8
      001887 04                    4463 	.db #0x04	; 4
      001888 06                    4464 	.db #0x06	; 6
      001889 0F                    4465 	.db #0x0f	; 15
      00188A 0B                    4466 	.db #0x0b	; 11
      00188B 01                    4467 	.db #0x01	; 1
      00188C 0A                    4468 	.db #0x0a	; 10
      00188D 09                    4469 	.db #0x09	; 9
      00188E 03                    4470 	.db #0x03	; 3
      00188F 0E                    4471 	.db #0x0e	; 14
      001890 05                    4472 	.db #0x05	; 5
      001891 00                    4473 	.db #0x00	; 0
      001892 0C                    4474 	.db #0x0c	; 12
      001893 07                    4475 	.db #0x07	; 7
      001894 01                    4476 	.db #0x01	; 1
      001895 0F                    4477 	.db #0x0f	; 15
      001896 0D                    4478 	.db #0x0d	; 13
      001897 08                    4479 	.db #0x08	; 8
      001898 0A                    4480 	.db #0x0a	; 10
      001899 03                    4481 	.db #0x03	; 3
      00189A 07                    4482 	.db #0x07	; 7
      00189B 04                    4483 	.db #0x04	; 4
      00189C 0C                    4484 	.db #0x0c	; 12
      00189D 05                    4485 	.db #0x05	; 5
      00189E 06                    4486 	.db #0x06	; 6
      00189F 0B                    4487 	.db #0x0b	; 11
      0018A0 00                    4488 	.db #0x00	; 0
      0018A1 0E                    4489 	.db #0x0e	; 14
      0018A2 09                    4490 	.db #0x09	; 9
      0018A3 02                    4491 	.db #0x02	; 2
      0018A4 07                    4492 	.db #0x07	; 7
      0018A5 0B                    4493 	.db #0x0b	; 11
      0018A6 04                    4494 	.db #0x04	; 4
      0018A7 01                    4495 	.db #0x01	; 1
      0018A8 09                    4496 	.db #0x09	; 9
      0018A9 0C                    4497 	.db #0x0c	; 12
      0018AA 0E                    4498 	.db #0x0e	; 14
      0018AB 02                    4499 	.db #0x02	; 2
      0018AC 00                    4500 	.db #0x00	; 0
      0018AD 06                    4501 	.db #0x06	; 6
      0018AE 0A                    4502 	.db #0x0a	; 10
      0018AF 0D                    4503 	.db #0x0d	; 13
      0018B0 0F                    4504 	.db #0x0f	; 15
      0018B1 03                    4505 	.db #0x03	; 3
      0018B2 05                    4506 	.db #0x05	; 5
      0018B3 08                    4507 	.db #0x08	; 8
      0018B4 02                    4508 	.db #0x02	; 2
      0018B5 01                    4509 	.db #0x01	; 1
      0018B6 0E                    4510 	.db #0x0e	; 14
      0018B7 07                    4511 	.db #0x07	; 7
      0018B8 04                    4512 	.db #0x04	; 4
      0018B9 0A                    4513 	.db #0x0a	; 10
      0018BA 08                    4514 	.db #0x08	; 8
      0018BB 0D                    4515 	.db #0x0d	; 13
      0018BC 0F                    4516 	.db #0x0f	; 15
      0018BD 0C                    4517 	.db #0x0c	; 12
      0018BE 09                    4518 	.db #0x09	; 9
      0018BF 00                    4519 	.db #0x00	; 0
      0018C0 03                    4520 	.db #0x03	; 3
      0018C1 05                    4521 	.db #0x05	; 5
      0018C2 06                    4522 	.db #0x06	; 6
      0018C3 0B                    4523 	.db #0x0b	; 11
      0018C4                       4524 _e:
      0018C4 20                    4525 	.db #0x20	; 32
      0018C5 01                    4526 	.db #0x01	; 1
      0018C6 02                    4527 	.db #0x02	; 2
      0018C7 03                    4528 	.db #0x03	; 3
      0018C8 04                    4529 	.db #0x04	; 4
      0018C9 05                    4530 	.db #0x05	; 5
      0018CA 04                    4531 	.db #0x04	; 4
      0018CB 05                    4532 	.db #0x05	; 5
      0018CC 06                    4533 	.db #0x06	; 6
      0018CD 07                    4534 	.db #0x07	; 7
      0018CE 08                    4535 	.db #0x08	; 8
      0018CF 09                    4536 	.db #0x09	; 9
      0018D0 08                    4537 	.db #0x08	; 8
      0018D1 09                    4538 	.db #0x09	; 9
      0018D2 0A                    4539 	.db #0x0a	; 10
      0018D3 0B                    4540 	.db #0x0b	; 11
      0018D4 0C                    4541 	.db #0x0c	; 12
      0018D5 0D                    4542 	.db #0x0d	; 13
      0018D6 0C                    4543 	.db #0x0c	; 12
      0018D7 0D                    4544 	.db #0x0d	; 13
      0018D8 0E                    4545 	.db #0x0e	; 14
      0018D9 0F                    4546 	.db #0x0f	; 15
      0018DA 10                    4547 	.db #0x10	; 16
      0018DB 11                    4548 	.db #0x11	; 17
      0018DC 10                    4549 	.db #0x10	; 16
      0018DD 11                    4550 	.db #0x11	; 17
      0018DE 12                    4551 	.db #0x12	; 18
      0018DF 13                    4552 	.db #0x13	; 19
      0018E0 14                    4553 	.db #0x14	; 20
      0018E1 15                    4554 	.db #0x15	; 21
      0018E2 14                    4555 	.db #0x14	; 20
      0018E3 15                    4556 	.db #0x15	; 21
      0018E4 16                    4557 	.db #0x16	; 22
      0018E5 17                    4558 	.db #0x17	; 23
      0018E6 18                    4559 	.db #0x18	; 24
      0018E7 19                    4560 	.db #0x19	; 25
      0018E8 18                    4561 	.db #0x18	; 24
      0018E9 19                    4562 	.db #0x19	; 25
      0018EA 1A                    4563 	.db #0x1a	; 26
      0018EB 1B                    4564 	.db #0x1b	; 27
      0018EC 1C                    4565 	.db #0x1c	; 28
      0018ED 1D                    4566 	.db #0x1d	; 29
      0018EE 1C                    4567 	.db #0x1c	; 28
      0018EF 1D                    4568 	.db #0x1d	; 29
      0018F0 1E                    4569 	.db #0x1e	; 30
      0018F1 1F                    4570 	.db #0x1f	; 31
      0018F2 20                    4571 	.db #0x20	; 32
      0018F3 01                    4572 	.db #0x01	; 1
      0018F4                       4573 _p:
      0018F4 10                    4574 	.db #0x10	; 16
      0018F5 07                    4575 	.db #0x07	; 7
      0018F6 14                    4576 	.db #0x14	; 20
      0018F7 15                    4577 	.db #0x15	; 21
      0018F8 1D                    4578 	.db #0x1d	; 29
      0018F9 0C                    4579 	.db #0x0c	; 12
      0018FA 1C                    4580 	.db #0x1c	; 28
      0018FB 11                    4581 	.db #0x11	; 17
      0018FC 01                    4582 	.db #0x01	; 1
      0018FD 0F                    4583 	.db #0x0f	; 15
      0018FE 17                    4584 	.db #0x17	; 23
      0018FF 1A                    4585 	.db #0x1a	; 26
      001900 05                    4586 	.db #0x05	; 5
      001901 12                    4587 	.db #0x12	; 18
      001902 1F                    4588 	.db #0x1f	; 31
      001903 0A                    4589 	.db #0x0a	; 10
      001904 02                    4590 	.db #0x02	; 2
      001905 08                    4591 	.db #0x08	; 8
      001906 18                    4592 	.db #0x18	; 24
      001907 0E                    4593 	.db #0x0e	; 14
      001908 20                    4594 	.db #0x20	; 32
      001909 1B                    4595 	.db #0x1b	; 27
      00190A 03                    4596 	.db #0x03	; 3
      00190B 09                    4597 	.db #0x09	; 9
      00190C 13                    4598 	.db #0x13	; 19
      00190D 0D                    4599 	.db #0x0d	; 13
      00190E 1E                    4600 	.db #0x1e	; 30
      00190F 06                    4601 	.db #0x06	; 6
      001910 16                    4602 	.db #0x16	; 22
      001911 0B                    4603 	.db #0x0b	; 11
      001912 04                    4604 	.db #0x04	; 4
      001913 19                    4605 	.db #0x19	; 25
                                   4606 	.area XINIT   (CODE)
                                   4607 	.area CABS    (ABS,CODE)
