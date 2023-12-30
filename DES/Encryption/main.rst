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
                                     28 	.globl _spi_transmit
                                     29 	.globl _spi_init
                                     30 	.globl _spi_delay2
                                     31 	.globl _spi_delay
                                     32 	.globl _TR1
                                     33 	.globl _RI
                                     34 	.globl _TI
                                     35 	.globl _d
                                     36 	.globl _c
                                     37 	.globl _b
                                     38 	.globl _a
                                     39 	.globl _RXD
                                     40 	.globl _TXD
                                     41 	.globl _miso
                                     42 	.globl _mosi
                                     43 	.globl _sclk
                                     44 	.globl _cs
                                     45 	.globl _TL1
                                     46 	.globl _TH1
                                     47 	.globl _TMOD
                                     48 	.globl _SBUF
                                     49 	.globl _SCON
                                     50 	.globl _P3
                                     51 	.globl _P2
                                     52 	.globl _final_original_key
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
      00001E                        104 _final_original_key::
      00001E                        105 	.ds 8
                                    106 ;--------------------------------------------------------
                                    107 ; overlayable items in internal ram
                                    108 ;--------------------------------------------------------
                                    109 ;--------------------------------------------------------
                                    110 ; Stack segment in internal ram
                                    111 ;--------------------------------------------------------
                                    112 	.area SSEG
      000027                        113 __start__stack:
      000027                        114 	.ds	1
                                    115 
                                    116 ;--------------------------------------------------------
                                    117 ; indirectly addressable internal ram data
                                    118 ;--------------------------------------------------------
                                    119 	.area ISEG    (DATA)
                                    120 ;--------------------------------------------------------
                                    121 ; absolute internal ram data
                                    122 ;--------------------------------------------------------
                                    123 	.area IABS    (ABS,DATA)
                                    124 	.area IABS    (ABS,DATA)
                                    125 ;--------------------------------------------------------
                                    126 ; bit data
                                    127 ;--------------------------------------------------------
                                    128 	.area BSEG    (BIT)
                                    129 ;--------------------------------------------------------
                                    130 ; paged external ram data
                                    131 ;--------------------------------------------------------
                                    132 	.area PSEG    (PAG,XDATA)
                                    133 ;--------------------------------------------------------
                                    134 ; uninitialized external ram data
                                    135 ;--------------------------------------------------------
                                    136 	.area XSEG    (XDATA)
                                    137 ;--------------------------------------------------------
                                    138 ; absolute external ram data
                                    139 ;--------------------------------------------------------
                                    140 	.area XABS    (ABS,XDATA)
                                    141 ;--------------------------------------------------------
                                    142 ; initialized external ram data
                                    143 ;--------------------------------------------------------
                                    144 	.area XISEG   (XDATA)
                                    145 	.area HOME    (CODE)
                                    146 	.area GSINIT0 (CODE)
                                    147 	.area GSINIT1 (CODE)
                                    148 	.area GSINIT2 (CODE)
                                    149 	.area GSINIT3 (CODE)
                                    150 	.area GSINIT4 (CODE)
                                    151 	.area GSINIT5 (CODE)
                                    152 	.area GSINIT  (CODE)
                                    153 	.area GSFINAL (CODE)
                                    154 	.area CSEG    (CODE)
                                    155 ;--------------------------------------------------------
                                    156 ; interrupt vector
                                    157 ;--------------------------------------------------------
                                    158 	.area HOME    (CODE)
      000000                        159 __interrupt_vect:
      000000 02 00 06         [24]  160 	ljmp	__sdcc_gsinit_startup
                                    161 ;--------------------------------------------------------
                                    162 ; global & static initialisations
                                    163 ;--------------------------------------------------------
                                    164 	.area HOME    (CODE)
                                    165 	.area GSINIT  (CODE)
                                    166 	.area GSFINAL (CODE)
                                    167 	.area GSINIT  (CODE)
                                    168 	.globl __sdcc_gsinit_startup
                                    169 	.globl __sdcc_program_startup
                                    170 	.globl __start__stack
                                    171 	.globl __mcs51_genXINIT
                                    172 	.globl __mcs51_genXRAMCLEAR
                                    173 	.globl __mcs51_genRAMCLEAR
                                    174 ;	main.c:310: __code uint8* arr[8]={s1,s2,s3,s4,s5,s6,s7,s8};
      00005F 75 08 E8         [24]  175 	mov	(_arr + 0),#_s1
      000062 75 09 17         [24]  176 	mov	(_arr + 1),#(_s1 >> 8)
      000065 75 0A 28         [24]  177 	mov	((_arr + 0x0002) + 0),#_s2
      000068 75 0B 18         [24]  178 	mov	((_arr + 0x0002) + 1),#(_s2 >> 8)
      00006B 75 0C 68         [24]  179 	mov	((_arr + 0x0004) + 0),#_s3
      00006E 75 0D 18         [24]  180 	mov	((_arr + 0x0004) + 1),#(_s3 >> 8)
      000071 75 0E A8         [24]  181 	mov	((_arr + 0x0006) + 0),#_s4
      000074 75 0F 18         [24]  182 	mov	((_arr + 0x0006) + 1),#(_s4 >> 8)
      000077 75 10 E8         [24]  183 	mov	((_arr + 0x0008) + 0),#_s5
      00007A 75 11 18         [24]  184 	mov	((_arr + 0x0008) + 1),#(_s5 >> 8)
      00007D 75 12 28         [24]  185 	mov	((_arr + 0x000a) + 0),#_s6
      000080 75 13 19         [24]  186 	mov	((_arr + 0x000a) + 1),#(_s6 >> 8)
      000083 75 14 68         [24]  187 	mov	((_arr + 0x000c) + 0),#_s7
      000086 75 15 19         [24]  188 	mov	((_arr + 0x000c) + 1),#(_s7 >> 8)
      000089 75 16 A8         [24]  189 	mov	((_arr + 0x000e) + 0),#_s8
      00008C 75 17 19         [24]  190 	mov	((_arr + 0x000e) + 1),#(_s8 >> 8)
                                    191 ;	main.c:312: uint32 Temp = 0;
      00008F E4               [12]  192 	clr	a
      000090 F5 1A            [12]  193 	mov	_Temp,a
      000092 F5 1B            [12]  194 	mov	(_Temp + 1),a
      000094 F5 1C            [12]  195 	mov	(_Temp + 2),a
      000096 F5 1D            [12]  196 	mov	(_Temp + 3),a
                                    197 ;	main.c:579: DATA final_original_key =  {.Array ={0x4b,0x41,0x53,0x48,0x49,0x53,0x41,0x42}};//{0x4b,0x41,0x53,0x48,0x49,0x53,0x41,0x42}};
      000098 75 1E 4B         [24]  198 	mov	_final_original_key,#0x4b
      00009B 75 1F 41         [24]  199 	mov	(_final_original_key + 0x0001),#0x41
      00009E 75 20 53         [24]  200 	mov	(_final_original_key + 0x0002),#0x53
      0000A1 75 21 48         [24]  201 	mov	(_final_original_key + 0x0003),#0x48
      0000A4 75 22 49         [24]  202 	mov	(_final_original_key + 0x0004),#0x49
      0000A7 75 23 53         [24]  203 	mov	(_final_original_key + 0x0005),#0x53
      0000AA 75 24 41         [24]  204 	mov	(_final_original_key + 0x0006),#0x41
      0000AD 75 25 42         [24]  205 	mov	(_final_original_key + 0x0007),#0x42
                                    206 	.area GSFINAL (CODE)
      0000B0 02 00 03         [24]  207 	ljmp	__sdcc_program_startup
                                    208 ;--------------------------------------------------------
                                    209 ; Home
                                    210 ;--------------------------------------------------------
                                    211 	.area HOME    (CODE)
                                    212 	.area HOME    (CODE)
      000003                        213 __sdcc_program_startup:
      000003 02 0E E0         [24]  214 	ljmp	_main
                                    215 ;	return from main will return to caller
                                    216 ;--------------------------------------------------------
                                    217 ; code
                                    218 ;--------------------------------------------------------
                                    219 	.area CSEG    (CODE)
                                    220 ;------------------------------------------------------------
                                    221 ;Allocation info for local variables in function 'spi_delay'
                                    222 ;------------------------------------------------------------
                                    223 ;j                         Allocated to registers r7 
                                    224 ;------------------------------------------------------------
                                    225 ;	main.c:126: void spi_delay (void){
                                    226 ;	-----------------------------------------
                                    227 ;	 function spi_delay
                                    228 ;	-----------------------------------------
      0000B3                        229 _spi_delay:
                           000007   230 	ar7 = 0x07
                           000006   231 	ar6 = 0x06
                           000005   232 	ar5 = 0x05
                           000004   233 	ar4 = 0x04
                           000003   234 	ar3 = 0x03
                           000002   235 	ar2 = 0x02
                           000001   236 	ar1 = 0x01
                           000000   237 	ar0 = 0x00
                                    238 ;	main.c:128: for (j = 0; j <100 ; j++);
      0000B3 7F 64            [12]  239 	mov	r7,#0x64
      0000B5                        240 00104$:
      0000B5 DF FE            [24]  241 	djnz	r7,00104$
                                    242 ;	main.c:129: }
      0000B7 22               [24]  243 	ret
                                    244 ;------------------------------------------------------------
                                    245 ;Allocation info for local variables in function 'spi_delay2'
                                    246 ;------------------------------------------------------------
                                    247 ;j                         Allocated to registers r7 
                                    248 ;------------------------------------------------------------
                                    249 ;	main.c:130: void spi_delay2 (void){
                                    250 ;	-----------------------------------------
                                    251 ;	 function spi_delay2
                                    252 ;	-----------------------------------------
      0000B8                        253 _spi_delay2:
                                    254 ;	main.c:132: for (j = 0; j <3 ; j++);
      0000B8 7F 03            [12]  255 	mov	r7,#0x03
      0000BA                        256 00104$:
      0000BA DF FE            [24]  257 	djnz	r7,00104$
                                    258 ;	main.c:133: }
      0000BC 22               [24]  259 	ret
                                    260 ;------------------------------------------------------------
                                    261 ;Allocation info for local variables in function 'spi_init'
                                    262 ;------------------------------------------------------------
                                    263 ;	main.c:135: void spi_init (void){
                                    264 ;	-----------------------------------------
                                    265 ;	 function spi_init
                                    266 ;	-----------------------------------------
      0000BD                        267 _spi_init:
                                    268 ;	main.c:136: cs   = 0;
                                    269 ;	assignBit
      0000BD C2 A0            [12]  270 	clr	_cs
                                    271 ;	main.c:137: cs   = 0;
                                    272 ;	assignBit
      0000BF C2 A0            [12]  273 	clr	_cs
                                    274 ;	main.c:139: sclk = 0;
                                    275 ;	assignBit
      0000C1 C2 A1            [12]  276 	clr	_sclk
                                    277 ;	main.c:140: sclk = 0;
                                    278 ;	assignBit
      0000C3 C2 A1            [12]  279 	clr	_sclk
                                    280 ;	main.c:142: mosi = 0;
                                    281 ;	assignBit
      0000C5 C2 A2            [12]  282 	clr	_mosi
                                    283 ;	main.c:143: mosi = 0;
                                    284 ;	assignBit
      0000C7 C2 A2            [12]  285 	clr	_mosi
                                    286 ;	main.c:144: miso = 0;
                                    287 ;	assignBit
      0000C9 C2 A3            [12]  288 	clr	_miso
                                    289 ;	main.c:145: miso = 1;
                                    290 ;	assignBit
      0000CB D2 A3            [12]  291 	setb	_miso
                                    292 ;	main.c:146: }
      0000CD 22               [24]  293 	ret
                                    294 ;------------------------------------------------------------
                                    295 ;Allocation info for local variables in function 'spi_transmit'
                                    296 ;------------------------------------------------------------
                                    297 ;byte                      Allocated to registers r7 
                                    298 ;tt                        Allocated to registers r6 
                                    299 ;------------------------------------------------------------
                                    300 ;	main.c:148: void spi_transmit (char byte){
                                    301 ;	-----------------------------------------
                                    302 ;	 function spi_transmit
                                    303 ;	-----------------------------------------
      0000CE                        304 _spi_transmit:
      0000CE AF 82            [24]  305 	mov	r7,dpl
                                    306 ;	main.c:150: cs = 1;
                                    307 ;	assignBit
      0000D0 D2 A0            [12]  308 	setb	_cs
                                    309 ;	main.c:151: sclk = 0;
                                    310 ;	assignBit
      0000D2 C2 A1            [12]  311 	clr	_sclk
                                    312 ;	main.c:152: cs = 0;
                                    313 ;	assignBit
      0000D4 C2 A0            [12]  314 	clr	_cs
                                    315 ;	main.c:153: for (tt = 0 ; tt <8 ; tt++){
      0000D6 7E 00            [12]  316 	mov	r6,#0x00
      0000D8                        317 00102$:
                                    318 ;	main.c:154: mosi = ((byte >> tt) & 0x01); // send b0 first
      0000D8 8E F0            [24]  319 	mov	b,r6
      0000DA 05 F0            [12]  320 	inc	b
      0000DC EF               [12]  321 	mov	a,r7
      0000DD 80 02            [24]  322 	sjmp	00112$
      0000DF                        323 00111$:
      0000DF C3               [12]  324 	clr	c
      0000E0 13               [12]  325 	rrc	a
      0000E1                        326 00112$:
      0000E1 D5 F0 FB         [24]  327 	djnz	b,00111$
      0000E4 54 01            [12]  328 	anl	a,#0x01
                                    329 ;	assignBit
      0000E6 24 FF            [12]  330 	add	a,#0xff
      0000E8 92 A2            [24]  331 	mov	_mosi,c
                                    332 ;	main.c:155: spi_delay ();
      0000EA C0 07            [24]  333 	push	ar7
      0000EC C0 06            [24]  334 	push	ar6
      0000EE 12 00 B3         [24]  335 	lcall	_spi_delay
                                    336 ;	main.c:156: sclk = 1; // rx read at rising edge
                                    337 ;	assignBit
      0000F1 D2 A1            [12]  338 	setb	_sclk
                                    339 ;	main.c:157: spi_delay2();
      0000F3 12 00 B8         [24]  340 	lcall	_spi_delay2
                                    341 ;	main.c:158: sclk = 0;
                                    342 ;	assignBit
      0000F6 C2 A1            [12]  343 	clr	_sclk
                                    344 ;	main.c:159: spi_delay ();
      0000F8 12 00 B3         [24]  345 	lcall	_spi_delay
      0000FB D0 06            [24]  346 	pop	ar6
      0000FD D0 07            [24]  347 	pop	ar7
                                    348 ;	main.c:153: for (tt = 0 ; tt <8 ; tt++){
      0000FF 0E               [12]  349 	inc	r6
      000100 BE 08 00         [24]  350 	cjne	r6,#0x08,00113$
      000103                        351 00113$:
      000103 40 D3            [24]  352 	jc	00102$
                                    353 ;	main.c:161: }}
      000105 22               [24]  354 	ret
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'Permutation'
                                    357 ;------------------------------------------------------------
                                    358 ;permuted_text             Allocated to stack - _bp -5
                                    359 ;type                      Allocated to stack - _bp -6
                                    360 ;table                     Allocated to stack - _bp -9
                                    361 ;plain_text                Allocated to stack - _bp +1
                                    362 ;sloc0                     Allocated to stack - _bp +4
                                    363 ;------------------------------------------------------------
                                    364 ;	main.c:317: static void Permutation ( DATA *plain_text,DATA *permuted_text,uint8 type,uint8 *table){
                                    365 ;	-----------------------------------------
                                    366 ;	 function Permutation
                                    367 ;	-----------------------------------------
      000106                        368 _Permutation:
      000106 C0 26            [24]  369 	push	_bp
      000108 85 81 26         [24]  370 	mov	_bp,sp
      00010B C0 82            [24]  371 	push	dpl
      00010D C0 83            [24]  372 	push	dph
      00010F C0 F0            [24]  373 	push	b
      000111 05 81            [12]  374 	inc	sp
      000113 05 81            [12]  375 	inc	sp
      000115 05 81            [12]  376 	inc	sp
                                    377 ;	main.c:318: for (i = 0 ;i < type ; i++){
      000117 75 18 00         [24]  378 	mov	_i,#0x00
      00011A                        379 00103$:
      00011A E5 26            [12]  380 	mov	a,_bp
      00011C 24 FA            [12]  381 	add	a,#0xfa
      00011E F8               [12]  382 	mov	r0,a
      00011F C3               [12]  383 	clr	c
      000120 E5 18            [12]  384 	mov	a,_i
      000122 96               [12]  385 	subb	a,@r0
      000123 40 03            [24]  386 	jc	00115$
      000125 02 02 74         [24]  387 	ljmp	00105$
      000128                        388 00115$:
                                    389 ;	main.c:321: temp = GET_BIT_ARRAY(plain_text->Array[((table[i] -1) / 8)],((table[i] -1) % 8));
      000128 E5 26            [12]  390 	mov	a,_bp
      00012A 24 F7            [12]  391 	add	a,#0xf7
      00012C F8               [12]  392 	mov	r0,a
      00012D E5 18            [12]  393 	mov	a,_i
      00012F 26               [12]  394 	add	a,@r0
      000130 FA               [12]  395 	mov	r2,a
      000131 E4               [12]  396 	clr	a
      000132 08               [12]  397 	inc	r0
      000133 36               [12]  398 	addc	a,@r0
      000134 FB               [12]  399 	mov	r3,a
      000135 08               [12]  400 	inc	r0
      000136 86 04            [24]  401 	mov	ar4,@r0
      000138 8A 82            [24]  402 	mov	dpl,r2
      00013A 8B 83            [24]  403 	mov	dph,r3
      00013C 8C F0            [24]  404 	mov	b,r4
      00013E 12 15 F0         [24]  405 	lcall	__gptrget
      000141 FA               [12]  406 	mov	r2,a
      000142 7C 00            [12]  407 	mov	r4,#0x00
      000144 1A               [12]  408 	dec	r2
      000145 BA FF 01         [24]  409 	cjne	r2,#0xff,00116$
      000148 1C               [12]  410 	dec	r4
      000149                        411 00116$:
      000149 C0 04            [24]  412 	push	ar4
      00014B C0 02            [24]  413 	push	ar2
      00014D 74 08            [12]  414 	mov	a,#0x08
      00014F C0 E0            [24]  415 	push	acc
      000151 E4               [12]  416 	clr	a
      000152 C0 E0            [24]  417 	push	acc
      000154 8A 82            [24]  418 	mov	dpl,r2
      000156 8C 83            [24]  419 	mov	dph,r4
      000158 12 16 49         [24]  420 	lcall	__divsint
      00015B AB 82            [24]  421 	mov	r3,dpl
      00015D AF 83            [24]  422 	mov	r7,dph
      00015F 15 81            [12]  423 	dec	sp
      000161 15 81            [12]  424 	dec	sp
      000163 D0 02            [24]  425 	pop	ar2
      000165 D0 04            [24]  426 	pop	ar4
      000167 A8 26            [24]  427 	mov	r0,_bp
      000169 08               [12]  428 	inc	r0
      00016A EB               [12]  429 	mov	a,r3
      00016B 26               [12]  430 	add	a,@r0
      00016C FB               [12]  431 	mov	r3,a
      00016D EF               [12]  432 	mov	a,r7
      00016E 08               [12]  433 	inc	r0
      00016F 36               [12]  434 	addc	a,@r0
      000170 FF               [12]  435 	mov	r7,a
      000171 08               [12]  436 	inc	r0
      000172 86 06            [24]  437 	mov	ar6,@r0
      000174 8B 82            [24]  438 	mov	dpl,r3
      000176 8F 83            [24]  439 	mov	dph,r7
      000178 8E F0            [24]  440 	mov	b,r6
      00017A 12 15 F0         [24]  441 	lcall	__gptrget
      00017D FB               [12]  442 	mov	r3,a
      00017E 7F 00            [12]  443 	mov	r7,#0x00
      000180 C0 07            [24]  444 	push	ar7
      000182 C0 03            [24]  445 	push	ar3
      000184 74 08            [12]  446 	mov	a,#0x08
      000186 C0 E0            [24]  447 	push	acc
      000188 E4               [12]  448 	clr	a
      000189 C0 E0            [24]  449 	push	acc
      00018B 8A 82            [24]  450 	mov	dpl,r2
      00018D 8C 83            [24]  451 	mov	dph,r4
      00018F 12 16 0C         [24]  452 	lcall	__modsint
      000192 AD 82            [24]  453 	mov	r5,dpl
      000194 15 81            [12]  454 	dec	sp
      000196 15 81            [12]  455 	dec	sp
      000198 D0 03            [24]  456 	pop	ar3
      00019A D0 07            [24]  457 	pop	ar7
      00019C 8D F0            [24]  458 	mov	b,r5
      00019E 05 F0            [12]  459 	inc	b
      0001A0 80 06            [24]  460 	sjmp	00118$
      0001A2                        461 00117$:
      0001A2 EB               [12]  462 	mov	a,r3
      0001A3 2B               [12]  463 	add	a,r3
      0001A4 FB               [12]  464 	mov	r3,a
      0001A5 EF               [12]  465 	mov	a,r7
      0001A6 33               [12]  466 	rlc	a
      0001A7 FF               [12]  467 	mov	r7,a
      0001A8                        468 00118$:
      0001A8 D5 F0 F7         [24]  469 	djnz	b,00117$
      0001AB 53 03 80         [24]  470 	anl	ar3,#0x80
      0001AE E4               [12]  471 	clr	a
      0001AF A2 E7            [12]  472 	mov	c,acc.7
      0001B1 CB               [12]  473 	xch	a,r3
      0001B2 33               [12]  474 	rlc	a
      0001B3 CB               [12]  475 	xch	a,r3
      0001B4 33               [12]  476 	rlc	a
      0001B5 CB               [12]  477 	xch	a,r3
      0001B6 54 01            [12]  478 	anl	a,#0x01
      0001B8 30 E0 02         [24]  479 	jnb	acc.0,00119$
      0001BB 44 FE            [12]  480 	orl	a,#0xfffffffe
      0001BD                        481 00119$:
      0001BD 8B 19            [24]  482 	mov	_temp,r3
                                    483 ;	main.c:324: WRITE_BIT_ARRAY(permuted_text->Array[(i/8)],(i%8),temp);
      0001BF E5 26            [12]  484 	mov	a,_bp
      0001C1 24 FB            [12]  485 	add	a,#0xfb
      0001C3 F8               [12]  486 	mov	r0,a
      0001C4 E5 26            [12]  487 	mov	a,_bp
      0001C6 24 04            [12]  488 	add	a,#0x04
      0001C8 F9               [12]  489 	mov	r1,a
      0001C9 E6               [12]  490 	mov	a,@r0
      0001CA F7               [12]  491 	mov	@r1,a
      0001CB 08               [12]  492 	inc	r0
      0001CC E6               [12]  493 	mov	a,@r0
      0001CD 09               [12]  494 	inc	r1
      0001CE F7               [12]  495 	mov	@r1,a
      0001CF 08               [12]  496 	inc	r0
      0001D0 E6               [12]  497 	mov	a,@r0
      0001D1 09               [12]  498 	inc	r1
      0001D2 F7               [12]  499 	mov	@r1,a
      0001D3 AB 18            [24]  500 	mov	r3,_i
      0001D5 7C 00            [12]  501 	mov	r4,#0x00
      0001D7 C0 04            [24]  502 	push	ar4
      0001D9 C0 03            [24]  503 	push	ar3
      0001DB 74 08            [12]  504 	mov	a,#0x08
      0001DD C0 E0            [24]  505 	push	acc
      0001DF E4               [12]  506 	clr	a
      0001E0 C0 E0            [24]  507 	push	acc
      0001E2 8B 82            [24]  508 	mov	dpl,r3
      0001E4 8C 83            [24]  509 	mov	dph,r4
      0001E6 12 16 49         [24]  510 	lcall	__divsint
      0001E9 AA 82            [24]  511 	mov	r2,dpl
      0001EB AF 83            [24]  512 	mov	r7,dph
      0001ED 15 81            [12]  513 	dec	sp
      0001EF 15 81            [12]  514 	dec	sp
      0001F1 D0 03            [24]  515 	pop	ar3
      0001F3 D0 04            [24]  516 	pop	ar4
      0001F5 E5 26            [12]  517 	mov	a,_bp
      0001F7 24 04            [12]  518 	add	a,#0x04
      0001F9 F8               [12]  519 	mov	r0,a
      0001FA EA               [12]  520 	mov	a,r2
      0001FB 26               [12]  521 	add	a,@r0
      0001FC FA               [12]  522 	mov	r2,a
      0001FD EF               [12]  523 	mov	a,r7
      0001FE 08               [12]  524 	inc	r0
      0001FF 36               [12]  525 	addc	a,@r0
      000200 FF               [12]  526 	mov	r7,a
      000201 08               [12]  527 	inc	r0
      000202 86 06            [24]  528 	mov	ar6,@r0
      000204 E5 26            [12]  529 	mov	a,_bp
      000206 24 04            [12]  530 	add	a,#0x04
      000208 F8               [12]  531 	mov	r0,a
      000209 74 07            [12]  532 	mov	a,#0x07
      00020B 5B               [12]  533 	anl	a,r3
      00020C F6               [12]  534 	mov	@r0,a
      00020D 08               [12]  535 	inc	r0
      00020E 76 00            [12]  536 	mov	@r0,#0x00
      000210 E5 26            [12]  537 	mov	a,_bp
      000212 24 04            [12]  538 	add	a,#0x04
      000214 F8               [12]  539 	mov	r0,a
      000215 86 F0            [24]  540 	mov	b,@r0
      000217 05 F0            [12]  541 	inc	b
      000219 7C 80            [12]  542 	mov	r4,#0x80
      00021B E4               [12]  543 	clr	a
      00021C FD               [12]  544 	mov	r5,a
      00021D 33               [12]  545 	rlc	a
      00021E 92 D2            [24]  546 	mov	ov,c
      000220 80 08            [24]  547 	sjmp	00121$
      000222                        548 00120$:
      000222 A2 D2            [12]  549 	mov	c,ov
      000224 ED               [12]  550 	mov	a,r5
      000225 13               [12]  551 	rrc	a
      000226 FD               [12]  552 	mov	r5,a
      000227 EC               [12]  553 	mov	a,r4
      000228 13               [12]  554 	rrc	a
      000229 FC               [12]  555 	mov	r4,a
      00022A                        556 00121$:
      00022A D5 F0 F5         [24]  557 	djnz	b,00120$
      00022D EC               [12]  558 	mov	a,r4
      00022E F4               [12]  559 	cpl	a
      00022F FC               [12]  560 	mov	r4,a
      000230 8A 82            [24]  561 	mov	dpl,r2
      000232 8F 83            [24]  562 	mov	dph,r7
      000234 8E F0            [24]  563 	mov	b,r6
      000236 12 15 F0         [24]  564 	lcall	__gptrget
      000239 52 04            [12]  565 	anl	ar4,a
      00023B AB 19            [24]  566 	mov	r3,_temp
      00023D E4               [12]  567 	clr	a
      00023E 54 01            [12]  568 	anl	a,#0x01
      000240 A2 E0            [12]  569 	mov	c,acc.0
      000242 CB               [12]  570 	xch	a,r3
      000243 13               [12]  571 	rrc	a
      000244 CB               [12]  572 	xch	a,r3
      000245 13               [12]  573 	rrc	a
      000246 CB               [12]  574 	xch	a,r3
      000247 FD               [12]  575 	mov	r5,a
      000248 E5 26            [12]  576 	mov	a,_bp
      00024A 24 04            [12]  577 	add	a,#0x04
      00024C F8               [12]  578 	mov	r0,a
      00024D 86 F0            [24]  579 	mov	b,@r0
      00024F 05 F0            [12]  580 	inc	b
      000251 ED               [12]  581 	mov	a,r5
      000252 33               [12]  582 	rlc	a
      000253 92 D2            [24]  583 	mov	ov,c
      000255 80 08            [24]  584 	sjmp	00123$
      000257                        585 00122$:
      000257 A2 D2            [12]  586 	mov	c,ov
      000259 ED               [12]  587 	mov	a,r5
      00025A 13               [12]  588 	rrc	a
      00025B FD               [12]  589 	mov	r5,a
      00025C EB               [12]  590 	mov	a,r3
      00025D 13               [12]  591 	rrc	a
      00025E FB               [12]  592 	mov	r3,a
      00025F                        593 00123$:
      00025F D5 F0 F5         [24]  594 	djnz	b,00122$
      000262 EB               [12]  595 	mov	a,r3
      000263 42 04            [12]  596 	orl	ar4,a
      000265 8A 82            [24]  597 	mov	dpl,r2
      000267 8F 83            [24]  598 	mov	dph,r7
      000269 8E F0            [24]  599 	mov	b,r6
      00026B EC               [12]  600 	mov	a,r4
      00026C 12 15 B3         [24]  601 	lcall	__gptrput
                                    602 ;	main.c:318: for (i = 0 ;i < type ; i++){
      00026F 05 18            [12]  603 	inc	_i
      000271 02 01 1A         [24]  604 	ljmp	00103$
      000274                        605 00105$:
                                    606 ;	main.c:326: }
      000274 85 26 81         [24]  607 	mov	sp,_bp
      000277 D0 26            [24]  608 	pop	_bp
      000279 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'G_Function'
                                    612 ;------------------------------------------------------------
                                    613 ;sub_key                   Allocated to stack - _bp -5
                                    614 ;out_g                     Allocated to stack - _bp -8
                                    615 ;round_text                Allocated to registers r5 r6 r7 
                                    616 ;j                         Allocated to stack - _bp +16
                                    617 ;in_s_box                  Allocated to registers r3 
                                    618 ;out_s_box                 Allocated to registers r3 
                                    619 ;raw_s                     Allocated to registers r2 
                                    620 ;column_s                  Allocated to registers r7 
                                    621 ;S_boxes_out               Allocated to registers r7 r6 r5 r4 
                                    622 ;sloc0                     Allocated to stack - _bp +1
                                    623 ;sloc1                     Allocated to stack - _bp +4
                                    624 ;sloc2                     Allocated to stack - _bp +8
                                    625 ;sloc3                     Allocated to stack - _bp +11
                                    626 ;sloc4                     Allocated to stack - _bp +24
                                    627 ;sloc5                     Allocated to stack - _bp +12
                                    628 ;------------------------------------------------------------
                                    629 ;	main.c:328: void G_Function (DATA *round_text,DATA *sub_key,DATA *out_g){
                                    630 ;	-----------------------------------------
                                    631 ;	 function G_Function
                                    632 ;	-----------------------------------------
      00027A                        633 _G_Function:
      00027A C0 26            [24]  634 	push	_bp
      00027C E5 81            [12]  635 	mov	a,sp
      00027E F5 26            [12]  636 	mov	_bp,a
      000280 24 10            [12]  637 	add	a,#0x10
      000282 F5 81            [12]  638 	mov	sp,a
      000284 AD 82            [24]  639 	mov	r5,dpl
      000286 AE 83            [24]  640 	mov	r6,dph
      000288 AF F0            [24]  641 	mov	r7,b
                                    642 ;	main.c:331: Temp = 0;
      00028A E4               [12]  643 	clr	a
      00028B F5 1A            [12]  644 	mov	_Temp,a
      00028D F5 1B            [12]  645 	mov	(_Temp + 1),a
      00028F F5 1C            [12]  646 	mov	(_Temp + 2),a
      000291 F5 1D            [12]  647 	mov	(_Temp + 3),a
                                    648 ;	main.c:332: for (i = 4 ; i<8 ; i++){
      000293 75 18 04         [24]  649 	mov	_i,#0x04
      000296                        650 00107$:
                                    651 ;	main.c:333: Temp <<=8;
      000296 85 1C 1D         [24]  652 	mov	(_Temp + 3),(_Temp + 2)
      000299 85 1B 1C         [24]  653 	mov	(_Temp + 2),(_Temp + 1)
      00029C 85 1A 1B         [24]  654 	mov	(_Temp + 1),_Temp
      00029F 75 1A 00         [24]  655 	mov	_Temp,#0x00
                                    656 ;	main.c:334: Temp |= round_text->Array[i];
      0002A2 E5 18            [12]  657 	mov	a,_i
      0002A4 2D               [12]  658 	add	a,r5
      0002A5 FA               [12]  659 	mov	r2,a
      0002A6 E4               [12]  660 	clr	a
      0002A7 3E               [12]  661 	addc	a,r6
      0002A8 FB               [12]  662 	mov	r3,a
      0002A9 8F 04            [24]  663 	mov	ar4,r7
      0002AB 8A 82            [24]  664 	mov	dpl,r2
      0002AD 8B 83            [24]  665 	mov	dph,r3
      0002AF 8C F0            [24]  666 	mov	b,r4
      0002B1 12 15 F0         [24]  667 	lcall	__gptrget
      0002B4 FA               [12]  668 	mov	r2,a
      0002B5 C0 05            [24]  669 	push	ar5
      0002B7 C0 06            [24]  670 	push	ar6
      0002B9 C0 07            [24]  671 	push	ar7
      0002BB E4               [12]  672 	clr	a
      0002BC FB               [12]  673 	mov	r3,a
      0002BD FC               [12]  674 	mov	r4,a
      0002BE FF               [12]  675 	mov	r7,a
      0002BF EA               [12]  676 	mov	a,r2
      0002C0 42 1A            [12]  677 	orl	_Temp,a
      0002C2 EB               [12]  678 	mov	a,r3
      0002C3 42 1B            [12]  679 	orl	(_Temp + 1),a
      0002C5 EC               [12]  680 	mov	a,r4
      0002C6 42 1C            [12]  681 	orl	(_Temp + 2),a
      0002C8 EF               [12]  682 	mov	a,r7
      0002C9 42 1D            [12]  683 	orl	(_Temp + 3),a
                                    684 ;	main.c:332: for (i = 4 ; i<8 ; i++){
      0002CB 05 18            [12]  685 	inc	_i
      0002CD C3               [12]  686 	clr	c
      0002CE E5 18            [12]  687 	mov	a,_i
      0002D0 94 08            [12]  688 	subb	a,#0x08
      0002D2 D0 07            [24]  689 	pop	ar7
      0002D4 D0 06            [24]  690 	pop	ar6
      0002D6 D0 05            [24]  691 	pop	ar5
      0002D8 40 BC            [24]  692 	jc	00107$
                                    693 ;	main.c:337: for (i = 0 ;i <= 47 ; i++){ //arr = {f0 ,aa, f0, aa} >>> aa f0 aa f0
      0002DA 75 18 00         [24]  694 	mov	_i,#0x00
      0002DD E5 26            [12]  695 	mov	a,_bp
      0002DF 24 F8            [12]  696 	add	a,#0xf8
      0002E1 F8               [12]  697 	mov	r0,a
      0002E2 A9 26            [24]  698 	mov	r1,_bp
      0002E4 09               [12]  699 	inc	r1
      0002E5 E6               [12]  700 	mov	a,@r0
      0002E6 F7               [12]  701 	mov	@r1,a
      0002E7 08               [12]  702 	inc	r0
      0002E8 E6               [12]  703 	mov	a,@r0
      0002E9 09               [12]  704 	inc	r1
      0002EA F7               [12]  705 	mov	@r1,a
      0002EB 08               [12]  706 	inc	r0
      0002EC E6               [12]  707 	mov	a,@r0
      0002ED 09               [12]  708 	inc	r1
      0002EE F7               [12]  709 	mov	@r1,a
      0002EF                        710 00109$:
                                    711 ;	main.c:339: temp =(uint8)(((Temp<<(e[i]-1)) & 0x80000000)>>31) ;
      0002EF E5 18            [12]  712 	mov	a,_i
      0002F1 90 19 E8         [24]  713 	mov	dptr,#_e
      0002F4 93               [24]  714 	movc	a,@a+dptr
      0002F5 FC               [12]  715 	mov	r4,a
      0002F6 1C               [12]  716 	dec	r4
      0002F7 8C F0            [24]  717 	mov	b,r4
      0002F9 05 F0            [12]  718 	inc	b
      0002FB AF 1A            [24]  719 	mov	r7,_Temp
      0002FD AE 1B            [24]  720 	mov	r6,(_Temp + 1)
      0002FF AD 1C            [24]  721 	mov	r5,(_Temp + 2)
      000301 AC 1D            [24]  722 	mov	r4,(_Temp + 3)
      000303 80 0C            [24]  723 	sjmp	00180$
      000305                        724 00179$:
      000305 EF               [12]  725 	mov	a,r7
      000306 2F               [12]  726 	add	a,r7
      000307 FF               [12]  727 	mov	r7,a
      000308 EE               [12]  728 	mov	a,r6
      000309 33               [12]  729 	rlc	a
      00030A FE               [12]  730 	mov	r6,a
      00030B ED               [12]  731 	mov	a,r5
      00030C 33               [12]  732 	rlc	a
      00030D FD               [12]  733 	mov	r5,a
      00030E EC               [12]  734 	mov	a,r4
      00030F 33               [12]  735 	rlc	a
      000310 FC               [12]  736 	mov	r4,a
      000311                        737 00180$:
      000311 D5 F0 F1         [24]  738 	djnz	b,00179$
      000314 53 04 80         [24]  739 	anl	ar4,#0x80
      000317 EC               [12]  740 	mov	a,r4
      000318 23               [12]  741 	rl	a
      000319 54 01            [12]  742 	anl	a,#0x01
      00031B FF               [12]  743 	mov	r7,a
      00031C 7E 00            [12]  744 	mov	r6,#0x00
      00031E 8F 19            [24]  745 	mov	_temp,r7
                                    746 ;	main.c:343: WRITE_BIT_ARRAY(out_g->Array[(i/8)],(i%8),temp); //
      000320 AF 18            [24]  747 	mov	r7,_i
      000322 C0 07            [24]  748 	push	ar7
      000324 C0 06            [24]  749 	push	ar6
      000326 74 08            [12]  750 	mov	a,#0x08
      000328 C0 E0            [24]  751 	push	acc
      00032A E4               [12]  752 	clr	a
      00032B C0 E0            [24]  753 	push	acc
      00032D 8F 82            [24]  754 	mov	dpl,r7
      00032F 8E 83            [24]  755 	mov	dph,r6
      000331 12 16 49         [24]  756 	lcall	__divsint
      000334 AA 82            [24]  757 	mov	r2,dpl
      000336 AC 83            [24]  758 	mov	r4,dph
      000338 15 81            [12]  759 	dec	sp
      00033A 15 81            [12]  760 	dec	sp
      00033C D0 06            [24]  761 	pop	ar6
      00033E D0 07            [24]  762 	pop	ar7
      000340 A8 26            [24]  763 	mov	r0,_bp
      000342 08               [12]  764 	inc	r0
      000343 E5 26            [12]  765 	mov	a,_bp
      000345 24 08            [12]  766 	add	a,#0x08
      000347 F9               [12]  767 	mov	r1,a
      000348 EA               [12]  768 	mov	a,r2
      000349 26               [12]  769 	add	a,@r0
      00034A F7               [12]  770 	mov	@r1,a
      00034B EC               [12]  771 	mov	a,r4
      00034C 08               [12]  772 	inc	r0
      00034D 36               [12]  773 	addc	a,@r0
      00034E 09               [12]  774 	inc	r1
      00034F F7               [12]  775 	mov	@r1,a
      000350 08               [12]  776 	inc	r0
      000351 E6               [12]  777 	mov	a,@r0
      000352 09               [12]  778 	inc	r1
      000353 F7               [12]  779 	mov	@r1,a
      000354 53 07 07         [24]  780 	anl	ar7,#0x07
      000357 7E 00            [12]  781 	mov	r6,#0x00
      000359 8F F0            [24]  782 	mov	b,r7
      00035B 05 F0            [12]  783 	inc	b
      00035D 7A 80            [12]  784 	mov	r2,#0x80
      00035F E4               [12]  785 	clr	a
      000360 FC               [12]  786 	mov	r4,a
      000361 33               [12]  787 	rlc	a
      000362 92 D2            [24]  788 	mov	ov,c
      000364 80 08            [24]  789 	sjmp	00182$
      000366                        790 00181$:
      000366 A2 D2            [12]  791 	mov	c,ov
      000368 EC               [12]  792 	mov	a,r4
      000369 13               [12]  793 	rrc	a
      00036A FC               [12]  794 	mov	r4,a
      00036B EA               [12]  795 	mov	a,r2
      00036C 13               [12]  796 	rrc	a
      00036D FA               [12]  797 	mov	r2,a
      00036E                        798 00182$:
      00036E D5 F0 F5         [24]  799 	djnz	b,00181$
      000371 EA               [12]  800 	mov	a,r2
      000372 F4               [12]  801 	cpl	a
      000373 FA               [12]  802 	mov	r2,a
      000374 E5 26            [12]  803 	mov	a,_bp
      000376 24 08            [12]  804 	add	a,#0x08
      000378 F8               [12]  805 	mov	r0,a
      000379 86 82            [24]  806 	mov	dpl,@r0
      00037B 08               [12]  807 	inc	r0
      00037C 86 83            [24]  808 	mov	dph,@r0
      00037E 08               [12]  809 	inc	r0
      00037F 86 F0            [24]  810 	mov	b,@r0
      000381 12 15 F0         [24]  811 	lcall	__gptrget
      000384 52 02            [12]  812 	anl	ar2,a
      000386 AB 19            [24]  813 	mov	r3,_temp
      000388 E4               [12]  814 	clr	a
      000389 C3               [12]  815 	clr	c
      00038A CB               [12]  816 	xch	a,r3
      00038B 13               [12]  817 	rrc	a
      00038C CB               [12]  818 	xch	a,r3
      00038D 13               [12]  819 	rrc	a
      00038E CB               [12]  820 	xch	a,r3
      00038F FC               [12]  821 	mov	r4,a
      000390 8F F0            [24]  822 	mov	b,r7
      000392 05 F0            [12]  823 	inc	b
      000394 EC               [12]  824 	mov	a,r4
      000395 33               [12]  825 	rlc	a
      000396 92 D2            [24]  826 	mov	ov,c
      000398 80 08            [24]  827 	sjmp	00184$
      00039A                        828 00183$:
      00039A A2 D2            [12]  829 	mov	c,ov
      00039C EC               [12]  830 	mov	a,r4
      00039D 13               [12]  831 	rrc	a
      00039E FC               [12]  832 	mov	r4,a
      00039F EB               [12]  833 	mov	a,r3
      0003A0 13               [12]  834 	rrc	a
      0003A1 FB               [12]  835 	mov	r3,a
      0003A2                        836 00184$:
      0003A2 D5 F0 F5         [24]  837 	djnz	b,00183$
      0003A5 EB               [12]  838 	mov	a,r3
      0003A6 42 02            [12]  839 	orl	ar2,a
      0003A8 E5 26            [12]  840 	mov	a,_bp
      0003AA 24 08            [12]  841 	add	a,#0x08
      0003AC F8               [12]  842 	mov	r0,a
      0003AD 86 82            [24]  843 	mov	dpl,@r0
      0003AF 08               [12]  844 	inc	r0
      0003B0 86 83            [24]  845 	mov	dph,@r0
      0003B2 08               [12]  846 	inc	r0
      0003B3 86 F0            [24]  847 	mov	b,@r0
      0003B5 EA               [12]  848 	mov	a,r2
      0003B6 12 15 B3         [24]  849 	lcall	__gptrput
                                    850 ;	main.c:337: for (i = 0 ;i <= 47 ; i++){ //arr = {f0 ,aa, f0, aa} >>> aa f0 aa f0
      0003B9 05 18            [12]  851 	inc	_i
      0003BB E5 18            [12]  852 	mov	a,_i
      0003BD 24 D0            [12]  853 	add	a,#0xff - 0x2f
      0003BF 40 03            [24]  854 	jc	00185$
      0003C1 02 02 EF         [24]  855 	ljmp	00109$
      0003C4                        856 00185$:
                                    857 ;	main.c:348: for (i = 0; i<7 ;i++){
      0003C4 75 18 00         [24]  858 	mov	_i,#0x00
      0003C7                        859 00111$:
                                    860 ;	main.c:349: out_g->Array[i] ^=sub_key->Array[i];
      0003C7 A8 26            [24]  861 	mov	r0,_bp
      0003C9 08               [12]  862 	inc	r0
      0003CA E5 18            [12]  863 	mov	a,_i
      0003CC 26               [12]  864 	add	a,@r0
      0003CD FF               [12]  865 	mov	r7,a
      0003CE E4               [12]  866 	clr	a
      0003CF 08               [12]  867 	inc	r0
      0003D0 36               [12]  868 	addc	a,@r0
      0003D1 FE               [12]  869 	mov	r6,a
      0003D2 08               [12]  870 	inc	r0
      0003D3 86 05            [24]  871 	mov	ar5,@r0
      0003D5 A8 26            [24]  872 	mov	r0,_bp
      0003D7 08               [12]  873 	inc	r0
      0003D8 E5 26            [12]  874 	mov	a,_bp
      0003DA 24 04            [12]  875 	add	a,#0x04
      0003DC F9               [12]  876 	mov	r1,a
      0003DD E5 18            [12]  877 	mov	a,_i
      0003DF 26               [12]  878 	add	a,@r0
      0003E0 F7               [12]  879 	mov	@r1,a
      0003E1 E4               [12]  880 	clr	a
      0003E2 08               [12]  881 	inc	r0
      0003E3 36               [12]  882 	addc	a,@r0
      0003E4 09               [12]  883 	inc	r1
      0003E5 F7               [12]  884 	mov	@r1,a
      0003E6 08               [12]  885 	inc	r0
      0003E7 E6               [12]  886 	mov	a,@r0
      0003E8 09               [12]  887 	inc	r1
      0003E9 F7               [12]  888 	mov	@r1,a
      0003EA E5 26            [12]  889 	mov	a,_bp
      0003EC 24 FB            [12]  890 	add	a,#0xfb
      0003EE F8               [12]  891 	mov	r0,a
      0003EF 86 02            [24]  892 	mov	ar2,@r0
      0003F1 08               [12]  893 	inc	r0
      0003F2 86 03            [24]  894 	mov	ar3,@r0
      0003F4 08               [12]  895 	inc	r0
      0003F5 86 04            [24]  896 	mov	ar4,@r0
      0003F7 E5 18            [12]  897 	mov	a,_i
      0003F9 2A               [12]  898 	add	a,r2
      0003FA FA               [12]  899 	mov	r2,a
      0003FB E4               [12]  900 	clr	a
      0003FC 3B               [12]  901 	addc	a,r3
      0003FD FB               [12]  902 	mov	r3,a
      0003FE 8A 82            [24]  903 	mov	dpl,r2
      000400 8B 83            [24]  904 	mov	dph,r3
      000402 8C F0            [24]  905 	mov	b,r4
      000404 12 15 F0         [24]  906 	lcall	__gptrget
      000407 FA               [12]  907 	mov	r2,a
      000408 E5 26            [12]  908 	mov	a,_bp
      00040A 24 04            [12]  909 	add	a,#0x04
      00040C F8               [12]  910 	mov	r0,a
      00040D 86 82            [24]  911 	mov	dpl,@r0
      00040F 08               [12]  912 	inc	r0
      000410 86 83            [24]  913 	mov	dph,@r0
      000412 08               [12]  914 	inc	r0
      000413 86 F0            [24]  915 	mov	b,@r0
      000415 12 15 F0         [24]  916 	lcall	__gptrget
      000418 FC               [12]  917 	mov	r4,a
      000419 62 02            [12]  918 	xrl	ar2,a
      00041B 8F 82            [24]  919 	mov	dpl,r7
      00041D 8E 83            [24]  920 	mov	dph,r6
      00041F 8D F0            [24]  921 	mov	b,r5
      000421 EA               [12]  922 	mov	a,r2
      000422 12 15 B3         [24]  923 	lcall	__gptrput
                                    924 ;	main.c:348: for (i = 0; i<7 ;i++){
      000425 05 18            [12]  925 	inc	_i
      000427 74 F9            [12]  926 	mov	a,#0x100 - 0x07
      000429 25 18            [12]  927 	add	a,_i
      00042B 50 9A            [24]  928 	jnc	00111$
                                    929 ;	main.c:355: uint32 S_boxes_out = 0;				// Output of the s-boxes
      00042D E5 26            [12]  930 	mov	a,_bp
      00042F 24 04            [12]  931 	add	a,#0x04
      000431 F8               [12]  932 	mov	r0,a
      000432 E4               [12]  933 	clr	a
      000433 F6               [12]  934 	mov	@r0,a
      000434 08               [12]  935 	inc	r0
      000435 F6               [12]  936 	mov	@r0,a
      000436 08               [12]  937 	inc	r0
      000437 F6               [12]  938 	mov	@r0,a
      000438 08               [12]  939 	inc	r0
      000439 F6               [12]  940 	mov	@r0,a
                                    941 ;	main.c:356: for (j = 0; j < 8; j++){
      00043A E5 26            [12]  942 	mov	a,_bp
      00043C 24 10            [12]  943 	add	a,#0x10
      00043E F8               [12]  944 	mov	r0,a
      00043F 76 00            [12]  945 	mov	@r0,#0x00
      000441                        946 00116$:
                                    947 ;	main.c:357: in_s_box  = 0;
      000441 E5 26            [12]  948 	mov	a,_bp
      000443 24 0B            [12]  949 	add	a,#0x0b
      000445 F8               [12]  950 	mov	r0,a
      000446 76 00            [12]  951 	mov	@r0,#0x00
                                    952 ;	main.c:361: for (i = j*6 ;i < (j*6+6) ; i++){                // 0 6    6 12      12 18   18 24       24 30        30 36      36 42   42 48
      000448 E5 26            [12]  953 	mov	a,_bp
      00044A 24 10            [12]  954 	add	a,#0x10
      00044C F8               [12]  955 	mov	r0,a
      00044D E6               [12]  956 	mov	a,@r0
      00044E 75 F0 06         [24]  957 	mov	b,#0x06
      000451 A4               [48]  958 	mul	ab
      000452 F5 18            [12]  959 	mov	_i,a
      000454                        960 00114$:
      000454 E5 26            [12]  961 	mov	a,_bp
      000456 24 10            [12]  962 	add	a,#0x10
      000458 F8               [12]  963 	mov	r0,a
      000459 86 02            [24]  964 	mov	ar2,@r0
      00045B 7B 00            [12]  965 	mov	r3,#0x00
      00045D C0 02            [24]  966 	push	ar2
      00045F C0 03            [24]  967 	push	ar3
      000461 90 00 06         [24]  968 	mov	dptr,#0x0006
      000464 12 15 CE         [24]  969 	lcall	__mulint
      000467 AA 82            [24]  970 	mov	r2,dpl
      000469 AB 83            [24]  971 	mov	r3,dph
      00046B 15 81            [12]  972 	dec	sp
      00046D 15 81            [12]  973 	dec	sp
      00046F 74 06            [12]  974 	mov	a,#0x06
      000471 2A               [12]  975 	add	a,r2
      000472 FA               [12]  976 	mov	r2,a
      000473 E4               [12]  977 	clr	a
      000474 3B               [12]  978 	addc	a,r3
      000475 FB               [12]  979 	mov	r3,a
      000476 AF 18            [24]  980 	mov	r7,_i
      000478 7E 00            [12]  981 	mov	r6,#0x00
      00047A C3               [12]  982 	clr	c
      00047B EF               [12]  983 	mov	a,r7
      00047C 9A               [12]  984 	subb	a,r2
      00047D EE               [12]  985 	mov	a,r6
      00047E 64 80            [12]  986 	xrl	a,#0x80
      000480 8B F0            [24]  987 	mov	b,r3
      000482 63 F0 80         [24]  988 	xrl	b,#0x80
      000485 95 F0            [12]  989 	subb	a,b
      000487 50 79            [24]  990 	jnc	00104$
                                    991 ;	main.c:362: temp = GET_BIT_ARRAY(out_g->Array[(i/8)],(i%8));
      000489 C0 07            [24]  992 	push	ar7
      00048B C0 06            [24]  993 	push	ar6
      00048D 74 08            [12]  994 	mov	a,#0x08
      00048F C0 E0            [24]  995 	push	acc
      000491 E4               [12]  996 	clr	a
      000492 C0 E0            [24]  997 	push	acc
      000494 8F 82            [24]  998 	mov	dpl,r7
      000496 8E 83            [24]  999 	mov	dph,r6
      000498 12 16 49         [24] 1000 	lcall	__divsint
      00049B AA 82            [24] 1001 	mov	r2,dpl
      00049D AC 83            [24] 1002 	mov	r4,dph
      00049F 15 81            [12] 1003 	dec	sp
      0004A1 15 81            [12] 1004 	dec	sp
      0004A3 D0 06            [24] 1005 	pop	ar6
      0004A5 D0 07            [24] 1006 	pop	ar7
      0004A7 A8 26            [24] 1007 	mov	r0,_bp
      0004A9 08               [12] 1008 	inc	r0
      0004AA EA               [12] 1009 	mov	a,r2
      0004AB 26               [12] 1010 	add	a,@r0
      0004AC FA               [12] 1011 	mov	r2,a
      0004AD EC               [12] 1012 	mov	a,r4
      0004AE 08               [12] 1013 	inc	r0
      0004AF 36               [12] 1014 	addc	a,@r0
      0004B0 FB               [12] 1015 	mov	r3,a
      0004B1 08               [12] 1016 	inc	r0
      0004B2 86 04            [24] 1017 	mov	ar4,@r0
      0004B4 8A 82            [24] 1018 	mov	dpl,r2
      0004B6 8B 83            [24] 1019 	mov	dph,r3
      0004B8 8C F0            [24] 1020 	mov	b,r4
      0004BA 12 15 F0         [24] 1021 	lcall	__gptrget
      0004BD FA               [12] 1022 	mov	r2,a
      0004BE 7D 00            [12] 1023 	mov	r5,#0x00
      0004C0 74 07            [12] 1024 	mov	a,#0x07
      0004C2 5F               [12] 1025 	anl	a,r7
      0004C3 FB               [12] 1026 	mov	r3,a
      0004C4 8B F0            [24] 1027 	mov	b,r3
      0004C6 05 F0            [12] 1028 	inc	b
      0004C8 AB 02            [24] 1029 	mov	r3,ar2
      0004CA AC 05            [24] 1030 	mov	r4,ar5
      0004CC 80 06            [24] 1031 	sjmp	00189$
      0004CE                       1032 00188$:
      0004CE EB               [12] 1033 	mov	a,r3
      0004CF 2B               [12] 1034 	add	a,r3
      0004D0 FB               [12] 1035 	mov	r3,a
      0004D1 EC               [12] 1036 	mov	a,r4
      0004D2 33               [12] 1037 	rlc	a
      0004D3 FC               [12] 1038 	mov	r4,a
      0004D4                       1039 00189$:
      0004D4 D5 F0 F7         [24] 1040 	djnz	b,00188$
      0004D7 53 03 80         [24] 1041 	anl	ar3,#0x80
      0004DA E4               [12] 1042 	clr	a
      0004DB A2 E7            [12] 1043 	mov	c,acc.7
      0004DD CB               [12] 1044 	xch	a,r3
      0004DE 33               [12] 1045 	rlc	a
      0004DF CB               [12] 1046 	xch	a,r3
      0004E0 33               [12] 1047 	rlc	a
      0004E1 CB               [12] 1048 	xch	a,r3
      0004E2 54 01            [12] 1049 	anl	a,#0x01
      0004E4 30 E0 02         [24] 1050 	jnb	acc.0,00190$
      0004E7 44 FE            [12] 1051 	orl	a,#0xfffffffe
      0004E9                       1052 00190$:
      0004E9 FC               [12] 1053 	mov	r4,a
      0004EA 8B 19            [24] 1054 	mov	_temp,r3
                                   1055 ;	main.c:363: in_s_box <<= 1;
      0004EC E5 26            [12] 1056 	mov	a,_bp
      0004EE 24 0B            [12] 1057 	add	a,#0x0b
      0004F0 F8               [12] 1058 	mov	r0,a
      0004F1 E6               [12] 1059 	mov	a,@r0
      0004F2 26               [12] 1060 	add	a,@r0
      0004F3 FB               [12] 1061 	mov	r3,a
                                   1062 ;	main.c:364: in_s_box |= temp ;
      0004F4 E5 26            [12] 1063 	mov	a,_bp
      0004F6 24 0B            [12] 1064 	add	a,#0x0b
      0004F8 F8               [12] 1065 	mov	r0,a
      0004F9 E5 19            [12] 1066 	mov	a,_temp
      0004FB 4B               [12] 1067 	orl	a,r3
      0004FC F6               [12] 1068 	mov	@r0,a
                                   1069 ;	main.c:361: for (i = j*6 ;i < (j*6+6) ; i++){                // 0 6    6 12      12 18   18 24       24 30        30 36      36 42   42 48
      0004FD 05 18            [12] 1070 	inc	_i
      0004FF 02 04 54         [24] 1071 	ljmp	00114$
      000502                       1072 00104$:
                                   1073 ;	main.c:367: column_s = in_s_box & 0b00011110;
      000502 E5 26            [12] 1074 	mov	a,_bp
      000504 24 0B            [12] 1075 	add	a,#0x0b
      000506 F8               [12] 1076 	mov	r0,a
      000507 74 1E            [12] 1077 	mov	a,#0x1e
      000509 56               [12] 1078 	anl	a,@r0
                                   1079 ;	main.c:368: column_s >>= 1;
      00050A C3               [12] 1080 	clr	c
      00050B 13               [12] 1081 	rrc	a
      00050C FF               [12] 1082 	mov	r7,a
                                   1083 ;	main.c:370: raw_s = GET_BIT(in_s_box,5);
      00050D E5 26            [12] 1084 	mov	a,_bp
      00050F 24 0B            [12] 1085 	add	a,#0x0b
      000511 F8               [12] 1086 	mov	r0,a
      000512 E6               [12] 1087 	mov	a,@r0
      000513 A2 E5            [12] 1088 	mov	c,acc[5]
      000515 E4               [12] 1089 	clr	a
      000516 33               [12] 1090 	rlc	a
                                   1091 ;	main.c:371: raw_s <<= 1;
      000517 25 E0            [12] 1092 	add	a,acc
      000519 FA               [12] 1093 	mov	r2,a
                                   1094 ;	main.c:372: raw_s |= GET_BIT(in_s_box,0);
      00051A E5 26            [12] 1095 	mov	a,_bp
      00051C 24 0B            [12] 1096 	add	a,#0x0b
      00051E F8               [12] 1097 	mov	r0,a
      00051F E6               [12] 1098 	mov	a,@r0
      000520 54 01            [12] 1099 	anl	a,#0x01
      000522 42 02            [12] 1100 	orl	ar2,a
                                   1101 ;	main.c:373: out_s_box = arr[j][raw_s * 16 + column_s];
      000524 E5 26            [12] 1102 	mov	a,_bp
      000526 24 10            [12] 1103 	add	a,#0x10
      000528 F8               [12] 1104 	mov	r0,a
      000529 E6               [12] 1105 	mov	a,@r0
      00052A 25 E0            [12] 1106 	add	a,acc
      00052C 24 08            [12] 1107 	add	a,#_arr
      00052E F9               [12] 1108 	mov	r1,a
      00052F 87 06            [24] 1109 	mov	ar6,@r1
      000531 09               [12] 1110 	inc	r1
      000532 87 05            [24] 1111 	mov	ar5,@r1
      000534 19               [12] 1112 	dec	r1
      000535 7C 00            [12] 1113 	mov	r4,#0x00
      000537 E5 26            [12] 1114 	mov	a,_bp
      000539 24 08            [12] 1115 	add	a,#0x08
      00053B F8               [12] 1116 	mov	r0,a
      00053C A6 02            [24] 1117 	mov	@r0,ar2
      00053E EC               [12] 1118 	mov	a,r4
      00053F C4               [12] 1119 	swap	a
      000540 54 F0            [12] 1120 	anl	a,#0xf0
      000542 C6               [12] 1121 	xch	a,@r0
      000543 C4               [12] 1122 	swap	a
      000544 C6               [12] 1123 	xch	a,@r0
      000545 66               [12] 1124 	xrl	a,@r0
      000546 C6               [12] 1125 	xch	a,@r0
      000547 54 F0            [12] 1126 	anl	a,#0xf0
      000549 C6               [12] 1127 	xch	a,@r0
      00054A 66               [12] 1128 	xrl	a,@r0
      00054B 08               [12] 1129 	inc	r0
      00054C F6               [12] 1130 	mov	@r0,a
      00054D 8F 03            [24] 1131 	mov	ar3,r7
      00054F 7C 00            [12] 1132 	mov	r4,#0x00
      000551 E5 26            [12] 1133 	mov	a,_bp
      000553 24 08            [12] 1134 	add	a,#0x08
      000555 F8               [12] 1135 	mov	r0,a
      000556 EB               [12] 1136 	mov	a,r3
      000557 26               [12] 1137 	add	a,@r0
      000558 FB               [12] 1138 	mov	r3,a
      000559 EC               [12] 1139 	mov	a,r4
      00055A 08               [12] 1140 	inc	r0
      00055B 36               [12] 1141 	addc	a,@r0
      00055C FC               [12] 1142 	mov	r4,a
      00055D EB               [12] 1143 	mov	a,r3
      00055E 2E               [12] 1144 	add	a,r6
      00055F F5 82            [12] 1145 	mov	dpl,a
      000561 EC               [12] 1146 	mov	a,r4
      000562 3D               [12] 1147 	addc	a,r5
      000563 F5 83            [12] 1148 	mov	dph,a
      000565 E4               [12] 1149 	clr	a
      000566 93               [24] 1150 	movc	a,@a+dptr
      000567 FB               [12] 1151 	mov	r3,a
                                   1152 ;	main.c:374: S_boxes_out <<= 4;
      000568 E5 26            [12] 1153 	mov	a,_bp
      00056A 24 04            [12] 1154 	add	a,#0x04
      00056C F8               [12] 1155 	mov	r0,a
      00056D 08               [12] 1156 	inc	r0
      00056E 08               [12] 1157 	inc	r0
      00056F 86 05            [24] 1158 	mov	ar5,@r0
      000571 08               [12] 1159 	inc	r0
      000572 E6               [12] 1160 	mov	a,@r0
      000573 C4               [12] 1161 	swap	a
      000574 54 F0            [12] 1162 	anl	a,#0xf0
      000576 CD               [12] 1163 	xch	a,r5
      000577 C4               [12] 1164 	swap	a
      000578 CD               [12] 1165 	xch	a,r5
      000579 6D               [12] 1166 	xrl	a,r5
      00057A CD               [12] 1167 	xch	a,r5
      00057B 54 F0            [12] 1168 	anl	a,#0xf0
      00057D CD               [12] 1169 	xch	a,r5
      00057E 6D               [12] 1170 	xrl	a,r5
      00057F FC               [12] 1171 	mov	r4,a
      000580 18               [12] 1172 	dec	r0
      000581 18               [12] 1173 	dec	r0
      000582 E6               [12] 1174 	mov	a,@r0
      000583 C4               [12] 1175 	swap	a
      000584 54 0F            [12] 1176 	anl	a,#0x0f
      000586 4D               [12] 1177 	orl	a,r5
      000587 FD               [12] 1178 	mov	r5,a
      000588 18               [12] 1179 	dec	r0
      000589 86 07            [24] 1180 	mov	ar7,@r0
      00058B 08               [12] 1181 	inc	r0
      00058C E6               [12] 1182 	mov	a,@r0
      00058D C4               [12] 1183 	swap	a
      00058E 54 F0            [12] 1184 	anl	a,#0xf0
      000590 CF               [12] 1185 	xch	a,r7
      000591 C4               [12] 1186 	swap	a
      000592 CF               [12] 1187 	xch	a,r7
      000593 6F               [12] 1188 	xrl	a,r7
      000594 CF               [12] 1189 	xch	a,r7
      000595 54 F0            [12] 1190 	anl	a,#0xf0
      000597 CF               [12] 1191 	xch	a,r7
      000598 6F               [12] 1192 	xrl	a,r7
      000599 FE               [12] 1193 	mov	r6,a
                                   1194 ;	main.c:375: S_boxes_out |= out_s_box;
      00059A E5 26            [12] 1195 	mov	a,_bp
      00059C 24 0C            [12] 1196 	add	a,#0x0c
      00059E F8               [12] 1197 	mov	r0,a
      00059F A6 03            [24] 1198 	mov	@r0,ar3
      0005A1 08               [12] 1199 	inc	r0
      0005A2 76 00            [12] 1200 	mov	@r0,#0x00
      0005A4 08               [12] 1201 	inc	r0
      0005A5 76 00            [12] 1202 	mov	@r0,#0x00
      0005A7 08               [12] 1203 	inc	r0
      0005A8 76 00            [12] 1204 	mov	@r0,#0x00
      0005AA E5 26            [12] 1205 	mov	a,_bp
      0005AC 24 0C            [12] 1206 	add	a,#0x0c
      0005AE F8               [12] 1207 	mov	r0,a
      0005AF E5 26            [12] 1208 	mov	a,_bp
      0005B1 24 04            [12] 1209 	add	a,#0x04
      0005B3 F9               [12] 1210 	mov	r1,a
      0005B4 E6               [12] 1211 	mov	a,@r0
      0005B5 4F               [12] 1212 	orl	a,r7
      0005B6 F7               [12] 1213 	mov	@r1,a
      0005B7 08               [12] 1214 	inc	r0
      0005B8 E6               [12] 1215 	mov	a,@r0
      0005B9 4E               [12] 1216 	orl	a,r6
      0005BA 09               [12] 1217 	inc	r1
      0005BB F7               [12] 1218 	mov	@r1,a
      0005BC 08               [12] 1219 	inc	r0
      0005BD E6               [12] 1220 	mov	a,@r0
      0005BE 4D               [12] 1221 	orl	a,r5
      0005BF 09               [12] 1222 	inc	r1
      0005C0 F7               [12] 1223 	mov	@r1,a
      0005C1 08               [12] 1224 	inc	r0
      0005C2 E6               [12] 1225 	mov	a,@r0
      0005C3 4C               [12] 1226 	orl	a,r4
      0005C4 09               [12] 1227 	inc	r1
      0005C5 F7               [12] 1228 	mov	@r1,a
                                   1229 ;	main.c:356: for (j = 0; j < 8; j++){
      0005C6 E5 26            [12] 1230 	mov	a,_bp
      0005C8 24 10            [12] 1231 	add	a,#0x10
      0005CA F8               [12] 1232 	mov	r0,a
      0005CB 06               [12] 1233 	inc	@r0
      0005CC E5 26            [12] 1234 	mov	a,_bp
      0005CE 24 10            [12] 1235 	add	a,#0x10
      0005D0 F8               [12] 1236 	mov	r0,a
      0005D1 B6 08 00         [24] 1237 	cjne	@r0,#0x08,00191$
      0005D4                       1238 00191$:
      0005D4 50 03            [24] 1239 	jnc	00192$
      0005D6 02 04 41         [24] 1240 	ljmp	00116$
      0005D9                       1241 00192$:
                                   1242 ;	main.c:378: out_g->Half[0]=0;
      0005D9 A8 26            [24] 1243 	mov	r0,_bp
      0005DB 08               [12] 1244 	inc	r0
      0005DC 86 82            [24] 1245 	mov	dpl,@r0
      0005DE 08               [12] 1246 	inc	r0
      0005DF 86 83            [24] 1247 	mov	dph,@r0
      0005E1 08               [12] 1248 	inc	r0
      0005E2 86 F0            [24] 1249 	mov	b,@r0
      0005E4 E4               [12] 1250 	clr	a
      0005E5 12 15 B3         [24] 1251 	lcall	__gptrput
      0005E8 A3               [24] 1252 	inc	dptr
      0005E9 12 15 B3         [24] 1253 	lcall	__gptrput
      0005EC A3               [24] 1254 	inc	dptr
      0005ED 12 15 B3         [24] 1255 	lcall	__gptrput
      0005F0 A3               [24] 1256 	inc	dptr
      0005F1 12 15 B3         [24] 1257 	lcall	__gptrput
                                   1258 ;	main.c:379: out_g->Half[1]=0;
      0005F4 A8 26            [24] 1259 	mov	r0,_bp
      0005F6 08               [12] 1260 	inc	r0
      0005F7 74 04            [12] 1261 	mov	a,#0x04
      0005F9 26               [12] 1262 	add	a,@r0
      0005FA FA               [12] 1263 	mov	r2,a
      0005FB E4               [12] 1264 	clr	a
      0005FC 08               [12] 1265 	inc	r0
      0005FD 36               [12] 1266 	addc	a,@r0
      0005FE FB               [12] 1267 	mov	r3,a
      0005FF 08               [12] 1268 	inc	r0
      000600 86 04            [24] 1269 	mov	ar4,@r0
      000602 8A 82            [24] 1270 	mov	dpl,r2
      000604 8B 83            [24] 1271 	mov	dph,r3
      000606 8C F0            [24] 1272 	mov	b,r4
      000608 E4               [12] 1273 	clr	a
      000609 12 15 B3         [24] 1274 	lcall	__gptrput
      00060C A3               [24] 1275 	inc	dptr
      00060D 12 15 B3         [24] 1276 	lcall	__gptrput
      000610 A3               [24] 1277 	inc	dptr
      000611 12 15 B3         [24] 1278 	lcall	__gptrput
      000614 A3               [24] 1279 	inc	dptr
      000615 12 15 B3         [24] 1280 	lcall	__gptrput
                                   1281 ;	main.c:381: for (i = 0 ;i <= 31 ; i++){
      000618 F5 18            [12] 1282 	mov	_i,a
      00061A                       1283 00118$:
                                   1284 ;	main.c:382: temp = (uint8)(((S_boxes_out<<(p[i]-1)) & 0x80000000)>>31) ;//GET_BIT_ARRAY(S_boxes_out,(p[i] -1));
      00061A E5 18            [12] 1285 	mov	a,_i
      00061C 90 1A 18         [24] 1286 	mov	dptr,#_p
      00061F 93               [24] 1287 	movc	a,@a+dptr
      000620 FC               [12] 1288 	mov	r4,a
      000621 1C               [12] 1289 	dec	r4
      000622 8C F0            [24] 1290 	mov	b,r4
      000624 05 F0            [12] 1291 	inc	b
      000626 E5 26            [12] 1292 	mov	a,_bp
      000628 24 04            [12] 1293 	add	a,#0x04
      00062A F8               [12] 1294 	mov	r0,a
      00062B 86 07            [24] 1295 	mov	ar7,@r0
      00062D 08               [12] 1296 	inc	r0
      00062E 86 06            [24] 1297 	mov	ar6,@r0
      000630 08               [12] 1298 	inc	r0
      000631 86 05            [24] 1299 	mov	ar5,@r0
      000633 08               [12] 1300 	inc	r0
      000634 86 04            [24] 1301 	mov	ar4,@r0
      000636 80 0C            [24] 1302 	sjmp	00194$
      000638                       1303 00193$:
      000638 EF               [12] 1304 	mov	a,r7
      000639 2F               [12] 1305 	add	a,r7
      00063A FF               [12] 1306 	mov	r7,a
      00063B EE               [12] 1307 	mov	a,r6
      00063C 33               [12] 1308 	rlc	a
      00063D FE               [12] 1309 	mov	r6,a
      00063E ED               [12] 1310 	mov	a,r5
      00063F 33               [12] 1311 	rlc	a
      000640 FD               [12] 1312 	mov	r5,a
      000641 EC               [12] 1313 	mov	a,r4
      000642 33               [12] 1314 	rlc	a
      000643 FC               [12] 1315 	mov	r4,a
      000644                       1316 00194$:
      000644 D5 F0 F1         [24] 1317 	djnz	b,00193$
      000647 53 04 80         [24] 1318 	anl	ar4,#0x80
      00064A EC               [12] 1319 	mov	a,r4
      00064B 23               [12] 1320 	rl	a
      00064C 54 01            [12] 1321 	anl	a,#0x01
      00064E FF               [12] 1322 	mov	r7,a
      00064F 7C 00            [12] 1323 	mov	r4,#0x00
      000651 8F 19            [24] 1324 	mov	_temp,r7
                                   1325 ;	main.c:383: WRITE_BIT_ARRAY(out_g->Array[((i+32) / 8)],((i+32) % 8),temp); //
      000653 AB 18            [24] 1326 	mov	r3,_i
      000655 74 20            [12] 1327 	mov	a,#0x20
      000657 2B               [12] 1328 	add	a,r3
      000658 FF               [12] 1329 	mov	r7,a
      000659 E4               [12] 1330 	clr	a
      00065A 3C               [12] 1331 	addc	a,r4
      00065B FE               [12] 1332 	mov	r6,a
      00065C C0 07            [24] 1333 	push	ar7
      00065E C0 06            [24] 1334 	push	ar6
      000660 74 08            [12] 1335 	mov	a,#0x08
      000662 C0 E0            [24] 1336 	push	acc
      000664 E4               [12] 1337 	clr	a
      000665 C0 E0            [24] 1338 	push	acc
      000667 8F 82            [24] 1339 	mov	dpl,r7
      000669 8E 83            [24] 1340 	mov	dph,r6
      00066B 12 16 49         [24] 1341 	lcall	__divsint
      00066E AA 82            [24] 1342 	mov	r2,dpl
      000670 AC 83            [24] 1343 	mov	r4,dph
      000672 15 81            [12] 1344 	dec	sp
      000674 15 81            [12] 1345 	dec	sp
      000676 D0 06            [24] 1346 	pop	ar6
      000678 D0 07            [24] 1347 	pop	ar7
      00067A A8 26            [24] 1348 	mov	r0,_bp
      00067C 08               [12] 1349 	inc	r0
      00067D E5 26            [12] 1350 	mov	a,_bp
      00067F 24 08            [12] 1351 	add	a,#0x08
      000681 F9               [12] 1352 	mov	r1,a
      000682 EA               [12] 1353 	mov	a,r2
      000683 26               [12] 1354 	add	a,@r0
      000684 F7               [12] 1355 	mov	@r1,a
      000685 EC               [12] 1356 	mov	a,r4
      000686 08               [12] 1357 	inc	r0
      000687 36               [12] 1358 	addc	a,@r0
      000688 09               [12] 1359 	inc	r1
      000689 F7               [12] 1360 	mov	@r1,a
      00068A 08               [12] 1361 	inc	r0
      00068B E6               [12] 1362 	mov	a,@r0
      00068C 09               [12] 1363 	inc	r1
      00068D F7               [12] 1364 	mov	@r1,a
      00068E 74 08            [12] 1365 	mov	a,#0x08
      000690 C0 E0            [24] 1366 	push	acc
      000692 E4               [12] 1367 	clr	a
      000693 C0 E0            [24] 1368 	push	acc
      000695 8F 82            [24] 1369 	mov	dpl,r7
      000697 8E 83            [24] 1370 	mov	dph,r6
      000699 12 16 0C         [24] 1371 	lcall	__modsint
      00069C AF 82            [24] 1372 	mov	r7,dpl
      00069E AE 83            [24] 1373 	mov	r6,dph
      0006A0 15 81            [12] 1374 	dec	sp
      0006A2 15 81            [12] 1375 	dec	sp
      0006A4 8F F0            [24] 1376 	mov	b,r7
      0006A6 05 F0            [12] 1377 	inc	b
      0006A8 7A 80            [12] 1378 	mov	r2,#0x80
      0006AA E4               [12] 1379 	clr	a
      0006AB FC               [12] 1380 	mov	r4,a
      0006AC 33               [12] 1381 	rlc	a
      0006AD 92 D2            [24] 1382 	mov	ov,c
      0006AF 80 08            [24] 1383 	sjmp	00196$
      0006B1                       1384 00195$:
      0006B1 A2 D2            [12] 1385 	mov	c,ov
      0006B3 EC               [12] 1386 	mov	a,r4
      0006B4 13               [12] 1387 	rrc	a
      0006B5 FC               [12] 1388 	mov	r4,a
      0006B6 EA               [12] 1389 	mov	a,r2
      0006B7 13               [12] 1390 	rrc	a
      0006B8 FA               [12] 1391 	mov	r2,a
      0006B9                       1392 00196$:
      0006B9 D5 F0 F5         [24] 1393 	djnz	b,00195$
      0006BC EA               [12] 1394 	mov	a,r2
      0006BD F4               [12] 1395 	cpl	a
      0006BE FA               [12] 1396 	mov	r2,a
      0006BF E5 26            [12] 1397 	mov	a,_bp
      0006C1 24 08            [12] 1398 	add	a,#0x08
      0006C3 F8               [12] 1399 	mov	r0,a
      0006C4 86 82            [24] 1400 	mov	dpl,@r0
      0006C6 08               [12] 1401 	inc	r0
      0006C7 86 83            [24] 1402 	mov	dph,@r0
      0006C9 08               [12] 1403 	inc	r0
      0006CA 86 F0            [24] 1404 	mov	b,@r0
      0006CC 12 15 F0         [24] 1405 	lcall	__gptrget
      0006CF 52 02            [12] 1406 	anl	ar2,a
      0006D1 AB 19            [24] 1407 	mov	r3,_temp
      0006D3 E4               [12] 1408 	clr	a
      0006D4 C3               [12] 1409 	clr	c
      0006D5 CB               [12] 1410 	xch	a,r3
      0006D6 13               [12] 1411 	rrc	a
      0006D7 CB               [12] 1412 	xch	a,r3
      0006D8 13               [12] 1413 	rrc	a
      0006D9 CB               [12] 1414 	xch	a,r3
      0006DA FC               [12] 1415 	mov	r4,a
      0006DB 8F F0            [24] 1416 	mov	b,r7
      0006DD 05 F0            [12] 1417 	inc	b
      0006DF EC               [12] 1418 	mov	a,r4
      0006E0 33               [12] 1419 	rlc	a
      0006E1 92 D2            [24] 1420 	mov	ov,c
      0006E3 80 08            [24] 1421 	sjmp	00198$
      0006E5                       1422 00197$:
      0006E5 A2 D2            [12] 1423 	mov	c,ov
      0006E7 EC               [12] 1424 	mov	a,r4
      0006E8 13               [12] 1425 	rrc	a
      0006E9 FC               [12] 1426 	mov	r4,a
      0006EA EB               [12] 1427 	mov	a,r3
      0006EB 13               [12] 1428 	rrc	a
      0006EC FB               [12] 1429 	mov	r3,a
      0006ED                       1430 00198$:
      0006ED D5 F0 F5         [24] 1431 	djnz	b,00197$
      0006F0 EB               [12] 1432 	mov	a,r3
      0006F1 42 02            [12] 1433 	orl	ar2,a
      0006F3 E5 26            [12] 1434 	mov	a,_bp
      0006F5 24 08            [12] 1435 	add	a,#0x08
      0006F7 F8               [12] 1436 	mov	r0,a
      0006F8 86 82            [24] 1437 	mov	dpl,@r0
      0006FA 08               [12] 1438 	inc	r0
      0006FB 86 83            [24] 1439 	mov	dph,@r0
      0006FD 08               [12] 1440 	inc	r0
      0006FE 86 F0            [24] 1441 	mov	b,@r0
      000700 EA               [12] 1442 	mov	a,r2
      000701 12 15 B3         [24] 1443 	lcall	__gptrput
                                   1444 ;	main.c:381: for (i = 0 ;i <= 31 ; i++){
      000704 05 18            [12] 1445 	inc	_i
      000706 E5 18            [12] 1446 	mov	a,_i
      000708 24 E0            [12] 1447 	add	a,#0xff - 0x1f
      00070A 40 03            [24] 1448 	jc	00199$
      00070C 02 06 1A         [24] 1449 	ljmp	00118$
      00070F                       1450 00199$:
                                   1451 ;	main.c:386: }
      00070F 85 26 81         [24] 1452 	mov	sp,_bp
      000712 D0 26            [24] 1453 	pop	_bp
      000714 22               [24] 1454 	ret
                                   1455 ;------------------------------------------------------------
                                   1456 ;Allocation info for local variables in function 'rotate'
                                   1457 ;------------------------------------------------------------
                                   1458 ;round                     Allocated to stack - _bp -3
                                   1459 ;sub_key                   Allocated to stack - _bp -6
                                   1460 ;Key                       Allocated to stack - _bp +1
                                   1461 ;sloc0                     Allocated to stack - _bp +4
                                   1462 ;sloc1                     Allocated to stack - _bp +8
                                   1463 ;sloc2                     Allocated to stack - _bp +11
                                   1464 ;sloc3                     Allocated to stack - _bp +14
                                   1465 ;sloc4                     Allocated to stack - _bp +17
                                   1466 ;------------------------------------------------------------
                                   1467 ;	main.c:397: void rotate(DATA *Key,uint8 round,DATA *sub_key){ // arrr[]={ab,12,cd,45} temp |=ab >>temp =000000 ab >>> 00 00 ab 00
                                   1468 ;	-----------------------------------------
                                   1469 ;	 function rotate
                                   1470 ;	-----------------------------------------
      000715                       1471 _rotate:
      000715 C0 26            [24] 1472 	push	_bp
      000717 85 81 26         [24] 1473 	mov	_bp,sp
      00071A C0 82            [24] 1474 	push	dpl
      00071C C0 83            [24] 1475 	push	dph
      00071E C0 F0            [24] 1476 	push	b
      000720 E5 81            [12] 1477 	mov	a,sp
      000722 24 11            [12] 1478 	add	a,#0x11
      000724 F5 81            [12] 1479 	mov	sp,a
                                   1480 ;	main.c:398: Temp = 0;
      000726 E4               [12] 1481 	clr	a
      000727 F5 1A            [12] 1482 	mov	_Temp,a
      000729 F5 1B            [12] 1483 	mov	(_Temp + 1),a
      00072B F5 1C            [12] 1484 	mov	(_Temp + 2),a
      00072D F5 1D            [12] 1485 	mov	(_Temp + 3),a
                                   1486 ;	main.c:399: for (i = 0 ; i<4 ; i++){
      00072F F5 18            [12] 1487 	mov	_i,a
      000731                       1488 00113$:
                                   1489 ;	main.c:400: Temp <<=8;
      000731 85 1C 1D         [24] 1490 	mov	(_Temp + 3),(_Temp + 2)
      000734 85 1B 1C         [24] 1491 	mov	(_Temp + 2),(_Temp + 1)
      000737 85 1A 1B         [24] 1492 	mov	(_Temp + 1),_Temp
      00073A 75 1A 00         [24] 1493 	mov	_Temp,#0x00
                                   1494 ;	main.c:401: Temp |= Key->Array[i];
      00073D A8 26            [24] 1495 	mov	r0,_bp
      00073F 08               [12] 1496 	inc	r0
      000740 E5 18            [12] 1497 	mov	a,_i
      000742 26               [12] 1498 	add	a,@r0
      000743 FA               [12] 1499 	mov	r2,a
      000744 E4               [12] 1500 	clr	a
      000745 08               [12] 1501 	inc	r0
      000746 36               [12] 1502 	addc	a,@r0
      000747 FB               [12] 1503 	mov	r3,a
      000748 08               [12] 1504 	inc	r0
      000749 86 04            [24] 1505 	mov	ar4,@r0
      00074B 8A 82            [24] 1506 	mov	dpl,r2
      00074D 8B 83            [24] 1507 	mov	dph,r3
      00074F 8C F0            [24] 1508 	mov	b,r4
      000751 12 15 F0         [24] 1509 	lcall	__gptrget
      000754 FA               [12] 1510 	mov	r2,a
      000755 E4               [12] 1511 	clr	a
      000756 FB               [12] 1512 	mov	r3,a
      000757 FC               [12] 1513 	mov	r4,a
      000758 FF               [12] 1514 	mov	r7,a
      000759 EA               [12] 1515 	mov	a,r2
      00075A 42 1A            [12] 1516 	orl	_Temp,a
      00075C EB               [12] 1517 	mov	a,r3
      00075D 42 1B            [12] 1518 	orl	(_Temp + 1),a
      00075F EC               [12] 1519 	mov	a,r4
      000760 42 1C            [12] 1520 	orl	(_Temp + 2),a
      000762 EF               [12] 1521 	mov	a,r7
      000763 42 1D            [12] 1522 	orl	(_Temp + 3),a
                                   1523 ;	main.c:399: for (i = 0 ; i<4 ; i++){
      000765 05 18            [12] 1524 	inc	_i
      000767 74 FC            [12] 1525 	mov	a,#0x100 - 0x04
      000769 25 18            [12] 1526 	add	a,_i
      00076B 50 C4            [24] 1527 	jnc	00113$
                                   1528 ;	main.c:405: Temp &=0xfffffff0; // Temp = ab 12 cd 4 >>> (1)010 1011 0001 0010 1100 1101 0100 0000
      00076D 53 1A F0         [24] 1529 	anl	_Temp,#0xf0
                                   1530 ;	main.c:406: temp = GET_BIT(Temp,31);
      000770 E5 1D            [12] 1531 	mov	a,(_Temp + 3)
      000772 23               [12] 1532 	rl	a
      000773 54 01            [12] 1533 	anl	a,#0x01
      000775 F5 19            [12] 1534 	mov	_temp,a
                                   1535 ;	main.c:407: Temp <<=1;
      000777 E5 1A            [12] 1536 	mov	a,_Temp
      000779 25 1A            [12] 1537 	add	a,_Temp
      00077B F5 1A            [12] 1538 	mov	_Temp,a
      00077D E5 1B            [12] 1539 	mov	a,(_Temp + 1)
      00077F 33               [12] 1540 	rlc	a
      000780 F5 1B            [12] 1541 	mov	(_Temp + 1),a
      000782 E5 1C            [12] 1542 	mov	a,(_Temp + 2)
      000784 33               [12] 1543 	rlc	a
      000785 F5 1C            [12] 1544 	mov	(_Temp + 2),a
      000787 E5 1D            [12] 1545 	mov	a,(_Temp + 3)
      000789 33               [12] 1546 	rlc	a
      00078A F5 1D            [12] 1547 	mov	(_Temp + 3),a
                                   1548 ;	main.c:408: WRITE_BIT(Temp,4,temp);//Temp = 0101 0110 0010 0101 1001 1010 10(1)0 0000 >> 56 25 9a 90 >> 90 >>09
      00078C E5 26            [12] 1549 	mov	a,_bp
      00078E 24 04            [12] 1550 	add	a,#0x04
      000790 F8               [12] 1551 	mov	r0,a
      000791 74 EF            [12] 1552 	mov	a,#0xef
      000793 55 1A            [12] 1553 	anl	a,_Temp
      000795 F6               [12] 1554 	mov	@r0,a
      000796 08               [12] 1555 	inc	r0
      000797 A6 1B            [24] 1556 	mov	@r0,(_Temp + 1)
      000799 08               [12] 1557 	inc	r0
      00079A A6 1C            [24] 1558 	mov	@r0,(_Temp + 2)
      00079C 08               [12] 1559 	inc	r0
      00079D A6 1D            [24] 1560 	mov	@r0,(_Temp + 3)
      00079F AD 19            [24] 1561 	mov	r5,_temp
      0007A1 E4               [12] 1562 	clr	a
      0007A2 CD               [12] 1563 	xch	a,r5
      0007A3 C4               [12] 1564 	swap	a
      0007A4 CD               [12] 1565 	xch	a,r5
      0007A5 6D               [12] 1566 	xrl	a,r5
      0007A6 CD               [12] 1567 	xch	a,r5
      0007A7 54 F0            [12] 1568 	anl	a,#0xf0
      0007A9 CD               [12] 1569 	xch	a,r5
      0007AA 6D               [12] 1570 	xrl	a,r5
      0007AB FC               [12] 1571 	mov	r4,a
      0007AC 33               [12] 1572 	rlc	a
      0007AD 95 E0            [12] 1573 	subb	a,acc
      0007AF FE               [12] 1574 	mov	r6,a
      0007B0 FF               [12] 1575 	mov	r7,a
      0007B1 E5 26            [12] 1576 	mov	a,_bp
      0007B3 24 04            [12] 1577 	add	a,#0x04
      0007B5 F8               [12] 1578 	mov	r0,a
      0007B6 ED               [12] 1579 	mov	a,r5
      0007B7 46               [12] 1580 	orl	a,@r0
      0007B8 F5 1A            [12] 1581 	mov	_Temp,a
      0007BA EC               [12] 1582 	mov	a,r4
      0007BB 08               [12] 1583 	inc	r0
      0007BC 46               [12] 1584 	orl	a,@r0
      0007BD F5 1B            [12] 1585 	mov	(_Temp + 1),a
      0007BF EE               [12] 1586 	mov	a,r6
      0007C0 08               [12] 1587 	inc	r0
      0007C1 46               [12] 1588 	orl	a,@r0
      0007C2 F5 1C            [12] 1589 	mov	(_Temp + 2),a
      0007C4 EF               [12] 1590 	mov	a,r7
      0007C5 08               [12] 1591 	inc	r0
      0007C6 46               [12] 1592 	orl	a,@r0
      0007C7 F5 1D            [12] 1593 	mov	(_Temp + 3),a
                                   1594 ;	main.c:410: for (i = 0 ; i<3 ; i++){
      0007C9 75 18 00         [24] 1595 	mov	_i,#0x00
                                   1596 ;	main.c:493: sub_key->Half[0] = Key->Half[0];
                                   1597 ;	main.c:410: for (i = 0 ; i<3 ; i++){
      0007CC                       1598 00115$:
                                   1599 ;	main.c:411: Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); //array={56,25,9a,90}
      0007CC A8 26            [24] 1600 	mov	r0,_bp
      0007CE 08               [12] 1601 	inc	r0
      0007CF E5 26            [12] 1602 	mov	a,_bp
      0007D1 24 04            [12] 1603 	add	a,#0x04
      0007D3 F9               [12] 1604 	mov	r1,a
      0007D4 E5 18            [12] 1605 	mov	a,_i
      0007D6 26               [12] 1606 	add	a,@r0
      0007D7 F7               [12] 1607 	mov	@r1,a
      0007D8 E4               [12] 1608 	clr	a
      0007D9 08               [12] 1609 	inc	r0
      0007DA 36               [12] 1610 	addc	a,@r0
      0007DB 09               [12] 1611 	inc	r1
      0007DC F7               [12] 1612 	mov	@r1,a
      0007DD 08               [12] 1613 	inc	r0
      0007DE E6               [12] 1614 	mov	a,@r0
      0007DF 09               [12] 1615 	inc	r1
      0007E0 F7               [12] 1616 	mov	@r1,a
      0007E1 74 03            [12] 1617 	mov	a,#0x03
      0007E3 C3               [12] 1618 	clr	c
      0007E4 95 18            [12] 1619 	subb	a,_i
      0007E6 C4               [12] 1620 	swap	a
      0007E7 03               [12] 1621 	rr	a
      0007E8 54 F8            [12] 1622 	anl	a,#0xf8
      0007EA FF               [12] 1623 	mov	r7,a
      0007EB 8F F0            [24] 1624 	mov	b,r7
      0007ED 05 F0            [12] 1625 	inc	b
      0007EF AC 1A            [24] 1626 	mov	r4,_Temp
      0007F1 AD 1B            [24] 1627 	mov	r5,(_Temp + 1)
      0007F3 AE 1C            [24] 1628 	mov	r6,(_Temp + 2)
      0007F5 AF 1D            [24] 1629 	mov	r7,(_Temp + 3)
      0007F7 80 0D            [24] 1630 	sjmp	00189$
      0007F9                       1631 00188$:
      0007F9 C3               [12] 1632 	clr	c
      0007FA EF               [12] 1633 	mov	a,r7
      0007FB 13               [12] 1634 	rrc	a
      0007FC FF               [12] 1635 	mov	r7,a
      0007FD EE               [12] 1636 	mov	a,r6
      0007FE 13               [12] 1637 	rrc	a
      0007FF FE               [12] 1638 	mov	r6,a
      000800 ED               [12] 1639 	mov	a,r5
      000801 13               [12] 1640 	rrc	a
      000802 FD               [12] 1641 	mov	r5,a
      000803 EC               [12] 1642 	mov	a,r4
      000804 13               [12] 1643 	rrc	a
      000805 FC               [12] 1644 	mov	r4,a
      000806                       1645 00189$:
      000806 D5 F0 F0         [24] 1646 	djnz	b,00188$
      000809 E5 26            [12] 1647 	mov	a,_bp
      00080B 24 04            [12] 1648 	add	a,#0x04
      00080D F8               [12] 1649 	mov	r0,a
      00080E 86 82            [24] 1650 	mov	dpl,@r0
      000810 08               [12] 1651 	inc	r0
      000811 86 83            [24] 1652 	mov	dph,@r0
      000813 08               [12] 1653 	inc	r0
      000814 86 F0            [24] 1654 	mov	b,@r0
      000816 EC               [12] 1655 	mov	a,r4
      000817 12 15 B3         [24] 1656 	lcall	__gptrput
                                   1657 ;	main.c:410: for (i = 0 ; i<3 ; i++){
      00081A 05 18            [12] 1658 	inc	_i
      00081C 74 FD            [12] 1659 	mov	a,#0x100 - 0x03
      00081E 25 18            [12] 1660 	add	a,_i
      000820 50 AA            [24] 1661 	jnc	00115$
                                   1662 ;	main.c:413: Key->Array[3] &=0x0f;
      000822 A8 26            [24] 1663 	mov	r0,_bp
      000824 08               [12] 1664 	inc	r0
      000825 E5 26            [12] 1665 	mov	a,_bp
      000827 24 08            [12] 1666 	add	a,#0x08
      000829 F9               [12] 1667 	mov	r1,a
      00082A 74 03            [12] 1668 	mov	a,#0x03
      00082C 26               [12] 1669 	add	a,@r0
      00082D F7               [12] 1670 	mov	@r1,a
      00082E E4               [12] 1671 	clr	a
      00082F 08               [12] 1672 	inc	r0
      000830 36               [12] 1673 	addc	a,@r0
      000831 09               [12] 1674 	inc	r1
      000832 F7               [12] 1675 	mov	@r1,a
      000833 08               [12] 1676 	inc	r0
      000834 E6               [12] 1677 	mov	a,@r0
      000835 09               [12] 1678 	inc	r1
      000836 F7               [12] 1679 	mov	@r1,a
      000837 E5 26            [12] 1680 	mov	a,_bp
      000839 24 08            [12] 1681 	add	a,#0x08
      00083B F8               [12] 1682 	mov	r0,a
      00083C 86 82            [24] 1683 	mov	dpl,@r0
      00083E 08               [12] 1684 	inc	r0
      00083F 86 83            [24] 1685 	mov	dph,@r0
      000841 08               [12] 1686 	inc	r0
      000842 86 F0            [24] 1687 	mov	b,@r0
      000844 12 15 F0         [24] 1688 	lcall	__gptrget
      000847 FF               [12] 1689 	mov	r7,a
      000848 53 07 0F         [24] 1690 	anl	ar7,#0x0f
      00084B E5 26            [12] 1691 	mov	a,_bp
      00084D 24 08            [12] 1692 	add	a,#0x08
      00084F F8               [12] 1693 	mov	r0,a
      000850 86 82            [24] 1694 	mov	dpl,@r0
      000852 08               [12] 1695 	inc	r0
      000853 86 83            [24] 1696 	mov	dph,@r0
      000855 08               [12] 1697 	inc	r0
      000856 86 F0            [24] 1698 	mov	b,@r0
      000858 EF               [12] 1699 	mov	a,r7
      000859 12 15 B3         [24] 1700 	lcall	__gptrput
                                   1701 ;	main.c:414: Key->Array[3] |= (uint8)(Temp  & 0x000000f0);
      00085C AF 1A            [24] 1702 	mov	r7,_Temp
      00085E 53 07 F0         [24] 1703 	anl	ar7,#0xf0
      000861 E5 26            [12] 1704 	mov	a,_bp
      000863 24 08            [12] 1705 	add	a,#0x08
      000865 F8               [12] 1706 	mov	r0,a
      000866 86 82            [24] 1707 	mov	dpl,@r0
      000868 08               [12] 1708 	inc	r0
      000869 86 83            [24] 1709 	mov	dph,@r0
      00086B 08               [12] 1710 	inc	r0
      00086C 86 F0            [24] 1711 	mov	b,@r0
      00086E 12 15 F0         [24] 1712 	lcall	__gptrget
      000871 42 07            [12] 1713 	orl	ar7,a
      000873 E5 26            [12] 1714 	mov	a,_bp
      000875 24 08            [12] 1715 	add	a,#0x08
      000877 F8               [12] 1716 	mov	r0,a
      000878 86 82            [24] 1717 	mov	dpl,@r0
      00087A 08               [12] 1718 	inc	r0
      00087B 86 83            [24] 1719 	mov	dph,@r0
      00087D 08               [12] 1720 	inc	r0
      00087E 86 F0            [24] 1721 	mov	b,@r0
      000880 EF               [12] 1722 	mov	a,r7
      000881 12 15 B3         [24] 1723 	lcall	__gptrput
                                   1724 ;	main.c:418: Temp |= Key->Array[3];   //76543210
      000884 8F 1A            [24] 1725 	mov	_Temp,r7
      000886 75 1B 00         [24] 1726 	mov	(_Temp + 1),#0x00
      000889 75 1C 00         [24] 1727 	mov	(_Temp + 2),#0x00
                                   1728 ;	main.c:419: Temp = Temp <<8;
      00088C 85 1C 1D         [24] 1729 	mov	(_Temp + 3),(_Temp + 2)
      00088F 85 1B 1C         [24] 1730 	mov	(_Temp + 2),(_Temp + 1)
      000892 85 1A 1B         [24] 1731 	mov	(_Temp + 1),_Temp
      000895 75 1A 00         [24] 1732 	mov	_Temp,#0x00
                                   1733 ;	main.c:421: Temp |= Key->Array[4];   //20
      000898 A8 26            [24] 1734 	mov	r0,_bp
      00089A 08               [12] 1735 	inc	r0
      00089B E5 26            [12] 1736 	mov	a,_bp
      00089D 24 04            [12] 1737 	add	a,#0x04
      00089F F9               [12] 1738 	mov	r1,a
      0008A0 74 04            [12] 1739 	mov	a,#0x04
      0008A2 26               [12] 1740 	add	a,@r0
      0008A3 F7               [12] 1741 	mov	@r1,a
      0008A4 E4               [12] 1742 	clr	a
      0008A5 08               [12] 1743 	inc	r0
      0008A6 36               [12] 1744 	addc	a,@r0
      0008A7 09               [12] 1745 	inc	r1
      0008A8 F7               [12] 1746 	mov	@r1,a
      0008A9 08               [12] 1747 	inc	r0
      0008AA E6               [12] 1748 	mov	a,@r0
      0008AB 09               [12] 1749 	inc	r1
      0008AC F7               [12] 1750 	mov	@r1,a
      0008AD E5 26            [12] 1751 	mov	a,_bp
      0008AF 24 04            [12] 1752 	add	a,#0x04
      0008B1 F8               [12] 1753 	mov	r0,a
      0008B2 86 82            [24] 1754 	mov	dpl,@r0
      0008B4 08               [12] 1755 	inc	r0
      0008B5 86 83            [24] 1756 	mov	dph,@r0
      0008B7 08               [12] 1757 	inc	r0
      0008B8 86 F0            [24] 1758 	mov	b,@r0
      0008BA 12 15 F0         [24] 1759 	lcall	__gptrget
      0008BD FC               [12] 1760 	mov	r4,a
      0008BE E4               [12] 1761 	clr	a
      0008BF FD               [12] 1762 	mov	r5,a
      0008C0 FE               [12] 1763 	mov	r6,a
      0008C1 FF               [12] 1764 	mov	r7,a
      0008C2 EC               [12] 1765 	mov	a,r4
      0008C3 42 1A            [12] 1766 	orl	_Temp,a
      0008C5 ED               [12] 1767 	mov	a,r5
      0008C6 42 1B            [12] 1768 	orl	(_Temp + 1),a
      0008C8 EE               [12] 1769 	mov	a,r6
      0008C9 42 1C            [12] 1770 	orl	(_Temp + 2),a
      0008CB EF               [12] 1771 	mov	a,r7
      0008CC 42 1D            [12] 1772 	orl	(_Temp + 3),a
                                   1773 ;	main.c:423: Temp = Temp <<8;
      0008CE 85 1C 1D         [24] 1774 	mov	(_Temp + 3),(_Temp + 2)
      0008D1 85 1B 1C         [24] 1775 	mov	(_Temp + 2),(_Temp + 1)
      0008D4 85 1A 1B         [24] 1776 	mov	(_Temp + 1),_Temp
      0008D7 75 1A 00         [24] 1777 	mov	_Temp,#0x00
                                   1778 ;	main.c:424: Temp |= Key->Array[5];   //20
      0008DA A8 26            [24] 1779 	mov	r0,_bp
      0008DC 08               [12] 1780 	inc	r0
      0008DD E5 26            [12] 1781 	mov	a,_bp
      0008DF 24 0B            [12] 1782 	add	a,#0x0b
      0008E1 F9               [12] 1783 	mov	r1,a
      0008E2 74 05            [12] 1784 	mov	a,#0x05
      0008E4 26               [12] 1785 	add	a,@r0
      0008E5 F7               [12] 1786 	mov	@r1,a
      0008E6 E4               [12] 1787 	clr	a
      0008E7 08               [12] 1788 	inc	r0
      0008E8 36               [12] 1789 	addc	a,@r0
      0008E9 09               [12] 1790 	inc	r1
      0008EA F7               [12] 1791 	mov	@r1,a
      0008EB 08               [12] 1792 	inc	r0
      0008EC E6               [12] 1793 	mov	a,@r0
      0008ED 09               [12] 1794 	inc	r1
      0008EE F7               [12] 1795 	mov	@r1,a
      0008EF E5 26            [12] 1796 	mov	a,_bp
      0008F1 24 0B            [12] 1797 	add	a,#0x0b
      0008F3 F8               [12] 1798 	mov	r0,a
      0008F4 86 82            [24] 1799 	mov	dpl,@r0
      0008F6 08               [12] 1800 	inc	r0
      0008F7 86 83            [24] 1801 	mov	dph,@r0
      0008F9 08               [12] 1802 	inc	r0
      0008FA 86 F0            [24] 1803 	mov	b,@r0
      0008FC 12 15 F0         [24] 1804 	lcall	__gptrget
      0008FF FA               [12] 1805 	mov	r2,a
      000900 E4               [12] 1806 	clr	a
      000901 FB               [12] 1807 	mov	r3,a
      000902 FC               [12] 1808 	mov	r4,a
      000903 FF               [12] 1809 	mov	r7,a
      000904 EA               [12] 1810 	mov	a,r2
      000905 42 1A            [12] 1811 	orl	_Temp,a
      000907 EB               [12] 1812 	mov	a,r3
      000908 42 1B            [12] 1813 	orl	(_Temp + 1),a
      00090A EC               [12] 1814 	mov	a,r4
      00090B 42 1C            [12] 1815 	orl	(_Temp + 2),a
      00090D EF               [12] 1816 	mov	a,r7
      00090E 42 1D            [12] 1817 	orl	(_Temp + 3),a
                                   1818 ;	main.c:425: Temp = Temp <<8;
      000910 85 1C 1D         [24] 1819 	mov	(_Temp + 3),(_Temp + 2)
      000913 85 1B 1C         [24] 1820 	mov	(_Temp + 2),(_Temp + 1)
      000916 85 1A 1B         [24] 1821 	mov	(_Temp + 1),_Temp
      000919 75 1A 00         [24] 1822 	mov	_Temp,#0x00
                                   1823 ;	main.c:426: Temp |= Key->Array[6];	//28
      00091C A8 26            [24] 1824 	mov	r0,_bp
      00091E 08               [12] 1825 	inc	r0
      00091F E5 26            [12] 1826 	mov	a,_bp
      000921 24 0E            [12] 1827 	add	a,#0x0e
      000923 F9               [12] 1828 	mov	r1,a
      000924 74 06            [12] 1829 	mov	a,#0x06
      000926 26               [12] 1830 	add	a,@r0
      000927 F7               [12] 1831 	mov	@r1,a
      000928 E4               [12] 1832 	clr	a
      000929 08               [12] 1833 	inc	r0
      00092A 36               [12] 1834 	addc	a,@r0
      00092B 09               [12] 1835 	inc	r1
      00092C F7               [12] 1836 	mov	@r1,a
      00092D 08               [12] 1837 	inc	r0
      00092E E6               [12] 1838 	mov	a,@r0
      00092F 09               [12] 1839 	inc	r1
      000930 F7               [12] 1840 	mov	@r1,a
      000931 E5 26            [12] 1841 	mov	a,_bp
      000933 24 0E            [12] 1842 	add	a,#0x0e
      000935 F8               [12] 1843 	mov	r0,a
      000936 86 82            [24] 1844 	mov	dpl,@r0
      000938 08               [12] 1845 	inc	r0
      000939 86 83            [24] 1846 	mov	dph,@r0
      00093B 08               [12] 1847 	inc	r0
      00093C 86 F0            [24] 1848 	mov	b,@r0
      00093E 12 15 F0         [24] 1849 	lcall	__gptrget
      000941 FA               [12] 1850 	mov	r2,a
      000942 E4               [12] 1851 	clr	a
      000943 FB               [12] 1852 	mov	r3,a
      000944 FC               [12] 1853 	mov	r4,a
      000945 FF               [12] 1854 	mov	r7,a
      000946 EA               [12] 1855 	mov	a,r2
      000947 42 1A            [12] 1856 	orl	_Temp,a
      000949 EB               [12] 1857 	mov	a,r3
      00094A 42 1B            [12] 1858 	orl	(_Temp + 1),a
      00094C EC               [12] 1859 	mov	a,r4
      00094D 42 1C            [12] 1860 	orl	(_Temp + 2),a
      00094F EF               [12] 1861 	mov	a,r7
      000950 42 1D            [12] 1862 	orl	(_Temp + 3),a
                                   1863 ;	main.c:427: Temp= Temp <<4;
      000952 E5 1D            [12] 1864 	mov	a,(_Temp + 3)
      000954 C4               [12] 1865 	swap	a
      000955 54 F0            [12] 1866 	anl	a,#0xf0
      000957 C5 1C            [12] 1867 	xch	a,(_Temp + 2)
      000959 C4               [12] 1868 	swap	a
      00095A C5 1C            [12] 1869 	xch	a,(_Temp + 2)
      00095C 65 1C            [12] 1870 	xrl	a,(_Temp + 2)
      00095E C5 1C            [12] 1871 	xch	a,(_Temp + 2)
      000960 54 F0            [12] 1872 	anl	a,#0xf0
      000962 C5 1C            [12] 1873 	xch	a,(_Temp + 2)
      000964 65 1C            [12] 1874 	xrl	a,(_Temp + 2)
      000966 F5 1D            [12] 1875 	mov	(_Temp + 3),a
      000968 E5 1B            [12] 1876 	mov	a,(_Temp + 1)
      00096A C4               [12] 1877 	swap	a
      00096B 54 0F            [12] 1878 	anl	a,#0x0f
      00096D 45 1C            [12] 1879 	orl	a,(_Temp + 2)
      00096F F5 1C            [12] 1880 	mov	(_Temp + 2),a
      000971 E5 1B            [12] 1881 	mov	a,(_Temp + 1)
      000973 C4               [12] 1882 	swap	a
      000974 54 F0            [12] 1883 	anl	a,#0xf0
      000976 C5 1A            [12] 1884 	xch	a,_Temp
      000978 C4               [12] 1885 	swap	a
      000979 C5 1A            [12] 1886 	xch	a,_Temp
      00097B 65 1A            [12] 1887 	xrl	a,_Temp
      00097D C5 1A            [12] 1888 	xch	a,_Temp
      00097F 54 F0            [12] 1889 	anl	a,#0xf0
      000981 C5 1A            [12] 1890 	xch	a,_Temp
      000983 65 1A            [12] 1891 	xrl	a,_Temp
      000985 F5 1B            [12] 1892 	mov	(_Temp + 1),a
                                   1893 ;	main.c:431: temp = GET_BIT(Temp,31);//
      000987 E5 1D            [12] 1894 	mov	a,(_Temp + 3)
      000989 23               [12] 1895 	rl	a
      00098A 54 01            [12] 1896 	anl	a,#0x01
      00098C F5 19            [12] 1897 	mov	_temp,a
                                   1898 ;	main.c:432: Temp <<=1;//011 0001 0010 1100 1101 0100 0101 0000 0
      00098E E5 1A            [12] 1899 	mov	a,_Temp
      000990 25 1A            [12] 1900 	add	a,_Temp
      000992 F5 1A            [12] 1901 	mov	_Temp,a
      000994 E5 1B            [12] 1902 	mov	a,(_Temp + 1)
      000996 33               [12] 1903 	rlc	a
      000997 F5 1B            [12] 1904 	mov	(_Temp + 1),a
      000999 E5 1C            [12] 1905 	mov	a,(_Temp + 2)
      00099B 33               [12] 1906 	rlc	a
      00099C F5 1C            [12] 1907 	mov	(_Temp + 2),a
      00099E E5 1D            [12] 1908 	mov	a,(_Temp + 3)
      0009A0 33               [12] 1909 	rlc	a
      0009A1 F5 1D            [12] 1910 	mov	(_Temp + 3),a
                                   1911 ;	main.c:433: WRITE_BIT(Temp,4,temp);// 0110 0010 0101 1001 1010 1000 101(1) 0000 >> 62 59 a9 b0
      0009A3 E5 26            [12] 1912 	mov	a,_bp
      0009A5 24 11            [12] 1913 	add	a,#0x11
      0009A7 F8               [12] 1914 	mov	r0,a
      0009A8 74 EF            [12] 1915 	mov	a,#0xef
      0009AA 55 1A            [12] 1916 	anl	a,_Temp
      0009AC F6               [12] 1917 	mov	@r0,a
      0009AD 08               [12] 1918 	inc	r0
      0009AE A6 1B            [24] 1919 	mov	@r0,(_Temp + 1)
      0009B0 08               [12] 1920 	inc	r0
      0009B1 A6 1C            [24] 1921 	mov	@r0,(_Temp + 2)
      0009B3 08               [12] 1922 	inc	r0
      0009B4 A6 1D            [24] 1923 	mov	@r0,(_Temp + 3)
      0009B6 AA 19            [24] 1924 	mov	r2,_temp
      0009B8 E4               [12] 1925 	clr	a
      0009B9 CA               [12] 1926 	xch	a,r2
      0009BA C4               [12] 1927 	swap	a
      0009BB CA               [12] 1928 	xch	a,r2
      0009BC 6A               [12] 1929 	xrl	a,r2
      0009BD CA               [12] 1930 	xch	a,r2
      0009BE 54 F0            [12] 1931 	anl	a,#0xf0
      0009C0 CA               [12] 1932 	xch	a,r2
      0009C1 6A               [12] 1933 	xrl	a,r2
      0009C2 FB               [12] 1934 	mov	r3,a
      0009C3 33               [12] 1935 	rlc	a
      0009C4 95 E0            [12] 1936 	subb	a,acc
      0009C6 FE               [12] 1937 	mov	r6,a
      0009C7 FF               [12] 1938 	mov	r7,a
      0009C8 E5 26            [12] 1939 	mov	a,_bp
      0009CA 24 11            [12] 1940 	add	a,#0x11
      0009CC F8               [12] 1941 	mov	r0,a
      0009CD EA               [12] 1942 	mov	a,r2
      0009CE 46               [12] 1943 	orl	a,@r0
      0009CF F5 1A            [12] 1944 	mov	_Temp,a
      0009D1 EB               [12] 1945 	mov	a,r3
      0009D2 08               [12] 1946 	inc	r0
      0009D3 46               [12] 1947 	orl	a,@r0
      0009D4 F5 1B            [12] 1948 	mov	(_Temp + 1),a
      0009D6 EE               [12] 1949 	mov	a,r6
      0009D7 08               [12] 1950 	inc	r0
      0009D8 46               [12] 1951 	orl	a,@r0
      0009D9 F5 1C            [12] 1952 	mov	(_Temp + 2),a
      0009DB EF               [12] 1953 	mov	a,r7
      0009DC 08               [12] 1954 	inc	r0
      0009DD 46               [12] 1955 	orl	a,@r0
      0009DE F5 1D            [12] 1956 	mov	(_Temp + 3),a
                                   1957 ;	main.c:435: Key->Array[3] &=0xf0;
      0009E0 E5 26            [12] 1958 	mov	a,_bp
      0009E2 24 08            [12] 1959 	add	a,#0x08
      0009E4 F8               [12] 1960 	mov	r0,a
      0009E5 86 82            [24] 1961 	mov	dpl,@r0
      0009E7 08               [12] 1962 	inc	r0
      0009E8 86 83            [24] 1963 	mov	dph,@r0
      0009EA 08               [12] 1964 	inc	r0
      0009EB 86 F0            [24] 1965 	mov	b,@r0
      0009ED 12 15 F0         [24] 1966 	lcall	__gptrget
      0009F0 FF               [12] 1967 	mov	r7,a
      0009F1 53 07 F0         [24] 1968 	anl	ar7,#0xf0
      0009F4 E5 26            [12] 1969 	mov	a,_bp
      0009F6 24 08            [12] 1970 	add	a,#0x08
      0009F8 F8               [12] 1971 	mov	r0,a
      0009F9 86 82            [24] 1972 	mov	dpl,@r0
      0009FB 08               [12] 1973 	inc	r0
      0009FC 86 83            [24] 1974 	mov	dph,@r0
      0009FE 08               [12] 1975 	inc	r0
      0009FF 86 F0            [24] 1976 	mov	b,@r0
      000A01 EF               [12] 1977 	mov	a,r7
      000A02 12 15 B3         [24] 1978 	lcall	__gptrput
                                   1979 ;	main.c:436: Key->Array[3] |= (uint8)((Temp)>>28); //62 59 a9 b0 >> 60 00 00 00 >>28 >>>> 00 00 00 06 >> 06
      000A05 E5 1D            [12] 1980 	mov	a,(_Temp + 3)
      000A07 C4               [12] 1981 	swap	a
      000A08 54 0F            [12] 1982 	anl	a,#0x0f
      000A0A FC               [12] 1983 	mov	r4,a
      000A0B E4               [12] 1984 	clr	a
      000A0C FD               [12] 1985 	mov	r5,a
      000A0D FE               [12] 1986 	mov	r6,a
      000A0E E5 26            [12] 1987 	mov	a,_bp
      000A10 24 08            [12] 1988 	add	a,#0x08
      000A12 F8               [12] 1989 	mov	r0,a
      000A13 86 82            [24] 1990 	mov	dpl,@r0
      000A15 08               [12] 1991 	inc	r0
      000A16 86 83            [24] 1992 	mov	dph,@r0
      000A18 08               [12] 1993 	inc	r0
      000A19 86 F0            [24] 1994 	mov	b,@r0
      000A1B 12 15 F0         [24] 1995 	lcall	__gptrget
      000A1E FF               [12] 1996 	mov	r7,a
      000A1F 42 04            [12] 1997 	orl	ar4,a
      000A21 E5 26            [12] 1998 	mov	a,_bp
      000A23 24 08            [12] 1999 	add	a,#0x08
      000A25 F8               [12] 2000 	mov	r0,a
      000A26 86 82            [24] 2001 	mov	dpl,@r0
      000A28 08               [12] 2002 	inc	r0
      000A29 86 83            [24] 2003 	mov	dph,@r0
      000A2B 08               [12] 2004 	inc	r0
      000A2C 86 F0            [24] 2005 	mov	b,@r0
      000A2E EC               [12] 2006 	mov	a,r4
      000A2F 12 15 B3         [24] 2007 	lcall	__gptrput
                                   2008 ;	main.c:437: Temp <<=4; // Temp= 25 9a 9b 00 >> 00 00 00 25
      000A32 E5 1D            [12] 2009 	mov	a,(_Temp + 3)
      000A34 C4               [12] 2010 	swap	a
      000A35 54 F0            [12] 2011 	anl	a,#0xf0
      000A37 C5 1C            [12] 2012 	xch	a,(_Temp + 2)
      000A39 C4               [12] 2013 	swap	a
      000A3A C5 1C            [12] 2014 	xch	a,(_Temp + 2)
      000A3C 65 1C            [12] 2015 	xrl	a,(_Temp + 2)
      000A3E C5 1C            [12] 2016 	xch	a,(_Temp + 2)
      000A40 54 F0            [12] 2017 	anl	a,#0xf0
      000A42 C5 1C            [12] 2018 	xch	a,(_Temp + 2)
      000A44 65 1C            [12] 2019 	xrl	a,(_Temp + 2)
      000A46 F5 1D            [12] 2020 	mov	(_Temp + 3),a
      000A48 E5 1B            [12] 2021 	mov	a,(_Temp + 1)
      000A4A C4               [12] 2022 	swap	a
      000A4B 54 0F            [12] 2023 	anl	a,#0x0f
      000A4D 45 1C            [12] 2024 	orl	a,(_Temp + 2)
      000A4F F5 1C            [12] 2025 	mov	(_Temp + 2),a
      000A51 E5 1B            [12] 2026 	mov	a,(_Temp + 1)
      000A53 C4               [12] 2027 	swap	a
      000A54 54 F0            [12] 2028 	anl	a,#0xf0
      000A56 C5 1A            [12] 2029 	xch	a,_Temp
      000A58 C4               [12] 2030 	swap	a
      000A59 C5 1A            [12] 2031 	xch	a,_Temp
      000A5B 65 1A            [12] 2032 	xrl	a,_Temp
      000A5D C5 1A            [12] 2033 	xch	a,_Temp
      000A5F 54 F0            [12] 2034 	anl	a,#0xf0
      000A61 C5 1A            [12] 2035 	xch	a,_Temp
      000A63 65 1A            [12] 2036 	xrl	a,_Temp
      000A65 F5 1B            [12] 2037 	mov	(_Temp + 1),a
                                   2038 ;	main.c:441: for (i = 4 ; i<8 ; i++){
      000A67 75 18 04         [24] 2039 	mov	_i,#0x04
      000A6A                       2040 00117$:
                                   2041 ;	main.c:442: Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); //array={25,9a,9b,00}
      000A6A A8 26            [24] 2042 	mov	r0,_bp
      000A6C 08               [12] 2043 	inc	r0
      000A6D E5 26            [12] 2044 	mov	a,_bp
      000A6F 24 11            [12] 2045 	add	a,#0x11
      000A71 F9               [12] 2046 	mov	r1,a
      000A72 E5 18            [12] 2047 	mov	a,_i
      000A74 26               [12] 2048 	add	a,@r0
      000A75 F7               [12] 2049 	mov	@r1,a
      000A76 E4               [12] 2050 	clr	a
      000A77 08               [12] 2051 	inc	r0
      000A78 36               [12] 2052 	addc	a,@r0
      000A79 09               [12] 2053 	inc	r1
      000A7A F7               [12] 2054 	mov	@r1,a
      000A7B 08               [12] 2055 	inc	r0
      000A7C E6               [12] 2056 	mov	a,@r0
      000A7D 09               [12] 2057 	inc	r1
      000A7E F7               [12] 2058 	mov	@r1,a
      000A7F 74 07            [12] 2059 	mov	a,#0x07
      000A81 C3               [12] 2060 	clr	c
      000A82 95 18            [12] 2061 	subb	a,_i
      000A84 C4               [12] 2062 	swap	a
      000A85 03               [12] 2063 	rr	a
      000A86 54 F8            [12] 2064 	anl	a,#0xf8
      000A88 FC               [12] 2065 	mov	r4,a
      000A89 8C F0            [24] 2066 	mov	b,r4
      000A8B 05 F0            [12] 2067 	inc	b
      000A8D AA 1A            [24] 2068 	mov	r2,_Temp
      000A8F AB 1B            [24] 2069 	mov	r3,(_Temp + 1)
      000A91 AC 1C            [24] 2070 	mov	r4,(_Temp + 2)
      000A93 AF 1D            [24] 2071 	mov	r7,(_Temp + 3)
      000A95 80 0D            [24] 2072 	sjmp	00192$
      000A97                       2073 00191$:
      000A97 C3               [12] 2074 	clr	c
      000A98 EF               [12] 2075 	mov	a,r7
      000A99 13               [12] 2076 	rrc	a
      000A9A FF               [12] 2077 	mov	r7,a
      000A9B EC               [12] 2078 	mov	a,r4
      000A9C 13               [12] 2079 	rrc	a
      000A9D FC               [12] 2080 	mov	r4,a
      000A9E EB               [12] 2081 	mov	a,r3
      000A9F 13               [12] 2082 	rrc	a
      000AA0 FB               [12] 2083 	mov	r3,a
      000AA1 EA               [12] 2084 	mov	a,r2
      000AA2 13               [12] 2085 	rrc	a
      000AA3 FA               [12] 2086 	mov	r2,a
      000AA4                       2087 00192$:
      000AA4 D5 F0 F0         [24] 2088 	djnz	b,00191$
      000AA7 E5 26            [12] 2089 	mov	a,_bp
      000AA9 24 11            [12] 2090 	add	a,#0x11
      000AAB F8               [12] 2091 	mov	r0,a
      000AAC 86 82            [24] 2092 	mov	dpl,@r0
      000AAE 08               [12] 2093 	inc	r0
      000AAF 86 83            [24] 2094 	mov	dph,@r0
      000AB1 08               [12] 2095 	inc	r0
      000AB2 86 F0            [24] 2096 	mov	b,@r0
      000AB4 EA               [12] 2097 	mov	a,r2
      000AB5 12 15 B3         [24] 2098 	lcall	__gptrput
                                   2099 ;	main.c:441: for (i = 4 ; i<8 ; i++){
      000AB8 05 18            [12] 2100 	inc	_i
      000ABA 74 F8            [12] 2101 	mov	a,#0x100 - 0x08
      000ABC 25 18            [12] 2102 	add	a,_i
      000ABE 50 AA            [24] 2103 	jnc	00117$
                                   2104 ;	main.c:445: if ((round == 1) || (round == 2) || (round == 9) ||(round == 16)){
      000AC0 E5 26            [12] 2105 	mov	a,_bp
      000AC2 24 FD            [12] 2106 	add	a,#0xfd
      000AC4 F8               [12] 2107 	mov	r0,a
      000AC5 B6 01 03         [24] 2108 	cjne	@r0,#0x01,00194$
      000AC8 02 0E 2A         [24] 2109 	ljmp	00109$
      000ACB                       2110 00194$:
      000ACB E5 26            [12] 2111 	mov	a,_bp
      000ACD 24 FD            [12] 2112 	add	a,#0xfd
      000ACF F8               [12] 2113 	mov	r0,a
      000AD0 B6 02 03         [24] 2114 	cjne	@r0,#0x02,00195$
      000AD3 02 0E 2A         [24] 2115 	ljmp	00109$
      000AD6                       2116 00195$:
      000AD6 E5 26            [12] 2117 	mov	a,_bp
      000AD8 24 FD            [12] 2118 	add	a,#0xfd
      000ADA F8               [12] 2119 	mov	r0,a
      000ADB B6 09 03         [24] 2120 	cjne	@r0,#0x09,00196$
      000ADE 02 0E 2A         [24] 2121 	ljmp	00109$
      000AE1                       2122 00196$:
      000AE1 E5 26            [12] 2123 	mov	a,_bp
      000AE3 24 FD            [12] 2124 	add	a,#0xfd
      000AE5 F8               [12] 2125 	mov	r0,a
      000AE6 B6 10 03         [24] 2126 	cjne	@r0,#0x10,00197$
      000AE9 02 0E 2A         [24] 2127 	ljmp	00109$
      000AEC                       2128 00197$:
                                   2129 ;	main.c:450: for (i = 0 ; i<4 ; i++){
      000AEC 75 18 00         [24] 2130 	mov	_i,#0x00
      000AEF                       2131 00119$:
                                   2132 ;	main.c:451: Temp <<=8;
      000AEF 85 1C 1D         [24] 2133 	mov	(_Temp + 3),(_Temp + 2)
      000AF2 85 1B 1C         [24] 2134 	mov	(_Temp + 2),(_Temp + 1)
      000AF5 85 1A 1B         [24] 2135 	mov	(_Temp + 1),_Temp
      000AF8 75 1A 00         [24] 2136 	mov	_Temp,#0x00
                                   2137 ;	main.c:452: Temp |= Key->Array[i];
      000AFB A8 26            [24] 2138 	mov	r0,_bp
      000AFD 08               [12] 2139 	inc	r0
      000AFE E5 18            [12] 2140 	mov	a,_i
      000B00 26               [12] 2141 	add	a,@r0
      000B01 FD               [12] 2142 	mov	r5,a
      000B02 E4               [12] 2143 	clr	a
      000B03 08               [12] 2144 	inc	r0
      000B04 36               [12] 2145 	addc	a,@r0
      000B05 FE               [12] 2146 	mov	r6,a
      000B06 08               [12] 2147 	inc	r0
      000B07 86 07            [24] 2148 	mov	ar7,@r0
      000B09 8D 82            [24] 2149 	mov	dpl,r5
      000B0B 8E 83            [24] 2150 	mov	dph,r6
      000B0D 8F F0            [24] 2151 	mov	b,r7
      000B0F 12 15 F0         [24] 2152 	lcall	__gptrget
      000B12 FD               [12] 2153 	mov	r5,a
      000B13 E4               [12] 2154 	clr	a
      000B14 FF               [12] 2155 	mov	r7,a
      000B15 FE               [12] 2156 	mov	r6,a
      000B16 FC               [12] 2157 	mov	r4,a
      000B17 ED               [12] 2158 	mov	a,r5
      000B18 42 1A            [12] 2159 	orl	_Temp,a
      000B1A EF               [12] 2160 	mov	a,r7
      000B1B 42 1B            [12] 2161 	orl	(_Temp + 1),a
      000B1D EE               [12] 2162 	mov	a,r6
      000B1E 42 1C            [12] 2163 	orl	(_Temp + 2),a
      000B20 EC               [12] 2164 	mov	a,r4
      000B21 42 1D            [12] 2165 	orl	(_Temp + 3),a
                                   2166 ;	main.c:450: for (i = 0 ; i<4 ; i++){
      000B23 05 18            [12] 2167 	inc	_i
      000B25 74 FC            [12] 2168 	mov	a,#0x100 - 0x04
      000B27 25 18            [12] 2169 	add	a,_i
      000B29 50 C4            [24] 2170 	jnc	00119$
                                   2171 ;	main.c:455: Temp &=0xfffffff0; // Temp = ab 12 cd 4 >>> (1)010 1011 0001 0010 1100 1101 0100 0000
      000B2B 53 1A F0         [24] 2172 	anl	_Temp,#0xf0
                                   2173 ;	main.c:456: temp = GET_BIT(Temp,31);
      000B2E E5 1D            [12] 2174 	mov	a,(_Temp + 3)
      000B30 23               [12] 2175 	rl	a
      000B31 54 01            [12] 2176 	anl	a,#0x01
      000B33 F5 19            [12] 2177 	mov	_temp,a
                                   2178 ;	main.c:457: Temp <<=1;
      000B35 E5 1A            [12] 2179 	mov	a,_Temp
      000B37 25 1A            [12] 2180 	add	a,_Temp
      000B39 F5 1A            [12] 2181 	mov	_Temp,a
      000B3B E5 1B            [12] 2182 	mov	a,(_Temp + 1)
      000B3D 33               [12] 2183 	rlc	a
      000B3E F5 1B            [12] 2184 	mov	(_Temp + 1),a
      000B40 E5 1C            [12] 2185 	mov	a,(_Temp + 2)
      000B42 33               [12] 2186 	rlc	a
      000B43 F5 1C            [12] 2187 	mov	(_Temp + 2),a
      000B45 E5 1D            [12] 2188 	mov	a,(_Temp + 3)
      000B47 33               [12] 2189 	rlc	a
      000B48 F5 1D            [12] 2190 	mov	(_Temp + 3),a
                                   2191 ;	main.c:458: WRITE_BIT(Temp,4,temp);//Temp = 0101 0110 0010 0101 1001 1010 10(1)0 0000 >> 56 25 9a 90 >> 90 >>09
      000B4A E5 26            [12] 2192 	mov	a,_bp
      000B4C 24 11            [12] 2193 	add	a,#0x11
      000B4E F8               [12] 2194 	mov	r0,a
      000B4F 74 EF            [12] 2195 	mov	a,#0xef
      000B51 55 1A            [12] 2196 	anl	a,_Temp
      000B53 F6               [12] 2197 	mov	@r0,a
      000B54 08               [12] 2198 	inc	r0
      000B55 A6 1B            [24] 2199 	mov	@r0,(_Temp + 1)
      000B57 08               [12] 2200 	inc	r0
      000B58 A6 1C            [24] 2201 	mov	@r0,(_Temp + 2)
      000B5A 08               [12] 2202 	inc	r0
      000B5B A6 1D            [24] 2203 	mov	@r0,(_Temp + 3)
      000B5D AA 19            [24] 2204 	mov	r2,_temp
      000B5F E4               [12] 2205 	clr	a
      000B60 CA               [12] 2206 	xch	a,r2
      000B61 C4               [12] 2207 	swap	a
      000B62 CA               [12] 2208 	xch	a,r2
      000B63 6A               [12] 2209 	xrl	a,r2
      000B64 CA               [12] 2210 	xch	a,r2
      000B65 54 F0            [12] 2211 	anl	a,#0xf0
      000B67 CA               [12] 2212 	xch	a,r2
      000B68 6A               [12] 2213 	xrl	a,r2
      000B69 FB               [12] 2214 	mov	r3,a
      000B6A 33               [12] 2215 	rlc	a
      000B6B 95 E0            [12] 2216 	subb	a,acc
      000B6D FE               [12] 2217 	mov	r6,a
      000B6E FF               [12] 2218 	mov	r7,a
      000B6F E5 26            [12] 2219 	mov	a,_bp
      000B71 24 11            [12] 2220 	add	a,#0x11
      000B73 F8               [12] 2221 	mov	r0,a
      000B74 EA               [12] 2222 	mov	a,r2
      000B75 46               [12] 2223 	orl	a,@r0
      000B76 F5 1A            [12] 2224 	mov	_Temp,a
      000B78 EB               [12] 2225 	mov	a,r3
      000B79 08               [12] 2226 	inc	r0
      000B7A 46               [12] 2227 	orl	a,@r0
      000B7B F5 1B            [12] 2228 	mov	(_Temp + 1),a
      000B7D EE               [12] 2229 	mov	a,r6
      000B7E 08               [12] 2230 	inc	r0
      000B7F 46               [12] 2231 	orl	a,@r0
      000B80 F5 1C            [12] 2232 	mov	(_Temp + 2),a
      000B82 EF               [12] 2233 	mov	a,r7
      000B83 08               [12] 2234 	inc	r0
      000B84 46               [12] 2235 	orl	a,@r0
      000B85 F5 1D            [12] 2236 	mov	(_Temp + 3),a
                                   2237 ;	main.c:460: for (i = 0 ; i<3 ; i++){
      000B87 75 18 00         [24] 2238 	mov	_i,#0x00
      000B8A                       2239 00121$:
                                   2240 ;	main.c:461: Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); //array={56,25,9a,90}
      000B8A A8 26            [24] 2241 	mov	r0,_bp
      000B8C 08               [12] 2242 	inc	r0
      000B8D E5 26            [12] 2243 	mov	a,_bp
      000B8F 24 11            [12] 2244 	add	a,#0x11
      000B91 F9               [12] 2245 	mov	r1,a
      000B92 E5 18            [12] 2246 	mov	a,_i
      000B94 26               [12] 2247 	add	a,@r0
      000B95 F7               [12] 2248 	mov	@r1,a
      000B96 E4               [12] 2249 	clr	a
      000B97 08               [12] 2250 	inc	r0
      000B98 36               [12] 2251 	addc	a,@r0
      000B99 09               [12] 2252 	inc	r1
      000B9A F7               [12] 2253 	mov	@r1,a
      000B9B 08               [12] 2254 	inc	r0
      000B9C E6               [12] 2255 	mov	a,@r0
      000B9D 09               [12] 2256 	inc	r1
      000B9E F7               [12] 2257 	mov	@r1,a
      000B9F 74 03            [12] 2258 	mov	a,#0x03
      000BA1 C3               [12] 2259 	clr	c
      000BA2 95 18            [12] 2260 	subb	a,_i
      000BA4 C4               [12] 2261 	swap	a
      000BA5 03               [12] 2262 	rr	a
      000BA6 54 F8            [12] 2263 	anl	a,#0xf8
      000BA8 FC               [12] 2264 	mov	r4,a
      000BA9 8C F0            [24] 2265 	mov	b,r4
      000BAB 05 F0            [12] 2266 	inc	b
      000BAD AA 1A            [24] 2267 	mov	r2,_Temp
      000BAF AB 1B            [24] 2268 	mov	r3,(_Temp + 1)
      000BB1 AC 1C            [24] 2269 	mov	r4,(_Temp + 2)
      000BB3 AF 1D            [24] 2270 	mov	r7,(_Temp + 3)
      000BB5 80 0D            [24] 2271 	sjmp	00200$
      000BB7                       2272 00199$:
      000BB7 C3               [12] 2273 	clr	c
      000BB8 EF               [12] 2274 	mov	a,r7
      000BB9 13               [12] 2275 	rrc	a
      000BBA FF               [12] 2276 	mov	r7,a
      000BBB EC               [12] 2277 	mov	a,r4
      000BBC 13               [12] 2278 	rrc	a
      000BBD FC               [12] 2279 	mov	r4,a
      000BBE EB               [12] 2280 	mov	a,r3
      000BBF 13               [12] 2281 	rrc	a
      000BC0 FB               [12] 2282 	mov	r3,a
      000BC1 EA               [12] 2283 	mov	a,r2
      000BC2 13               [12] 2284 	rrc	a
      000BC3 FA               [12] 2285 	mov	r2,a
      000BC4                       2286 00200$:
      000BC4 D5 F0 F0         [24] 2287 	djnz	b,00199$
      000BC7 E5 26            [12] 2288 	mov	a,_bp
      000BC9 24 11            [12] 2289 	add	a,#0x11
      000BCB F8               [12] 2290 	mov	r0,a
      000BCC 86 82            [24] 2291 	mov	dpl,@r0
      000BCE 08               [12] 2292 	inc	r0
      000BCF 86 83            [24] 2293 	mov	dph,@r0
      000BD1 08               [12] 2294 	inc	r0
      000BD2 86 F0            [24] 2295 	mov	b,@r0
      000BD4 EA               [12] 2296 	mov	a,r2
      000BD5 12 15 B3         [24] 2297 	lcall	__gptrput
                                   2298 ;	main.c:460: for (i = 0 ; i<3 ; i++){
      000BD8 05 18            [12] 2299 	inc	_i
      000BDA 74 FD            [12] 2300 	mov	a,#0x100 - 0x03
      000BDC 25 18            [12] 2301 	add	a,_i
      000BDE 50 AA            [24] 2302 	jnc	00121$
                                   2303 ;	main.c:463: Key->Array[3] &=0x0f;
      000BE0 E5 26            [12] 2304 	mov	a,_bp
      000BE2 24 08            [12] 2305 	add	a,#0x08
      000BE4 F8               [12] 2306 	mov	r0,a
      000BE5 86 82            [24] 2307 	mov	dpl,@r0
      000BE7 08               [12] 2308 	inc	r0
      000BE8 86 83            [24] 2309 	mov	dph,@r0
      000BEA 08               [12] 2310 	inc	r0
      000BEB 86 F0            [24] 2311 	mov	b,@r0
      000BED 12 15 F0         [24] 2312 	lcall	__gptrget
      000BF0 FF               [12] 2313 	mov	r7,a
      000BF1 53 07 0F         [24] 2314 	anl	ar7,#0x0f
      000BF4 E5 26            [12] 2315 	mov	a,_bp
      000BF6 24 08            [12] 2316 	add	a,#0x08
      000BF8 F8               [12] 2317 	mov	r0,a
      000BF9 86 82            [24] 2318 	mov	dpl,@r0
      000BFB 08               [12] 2319 	inc	r0
      000BFC 86 83            [24] 2320 	mov	dph,@r0
      000BFE 08               [12] 2321 	inc	r0
      000BFF 86 F0            [24] 2322 	mov	b,@r0
      000C01 EF               [12] 2323 	mov	a,r7
      000C02 12 15 B3         [24] 2324 	lcall	__gptrput
                                   2325 ;	main.c:464: Key->Array[3] |= (uint8)(Temp  & 0x000000f0);
      000C05 AF 1A            [24] 2326 	mov	r7,_Temp
      000C07 53 07 F0         [24] 2327 	anl	ar7,#0xf0
      000C0A E5 26            [12] 2328 	mov	a,_bp
      000C0C 24 08            [12] 2329 	add	a,#0x08
      000C0E F8               [12] 2330 	mov	r0,a
      000C0F 86 82            [24] 2331 	mov	dpl,@r0
      000C11 08               [12] 2332 	inc	r0
      000C12 86 83            [24] 2333 	mov	dph,@r0
      000C14 08               [12] 2334 	inc	r0
      000C15 86 F0            [24] 2335 	mov	b,@r0
      000C17 12 15 F0         [24] 2336 	lcall	__gptrget
      000C1A 42 07            [12] 2337 	orl	ar7,a
      000C1C E5 26            [12] 2338 	mov	a,_bp
      000C1E 24 08            [12] 2339 	add	a,#0x08
      000C20 F8               [12] 2340 	mov	r0,a
      000C21 86 82            [24] 2341 	mov	dpl,@r0
      000C23 08               [12] 2342 	inc	r0
      000C24 86 83            [24] 2343 	mov	dph,@r0
      000C26 08               [12] 2344 	inc	r0
      000C27 86 F0            [24] 2345 	mov	b,@r0
      000C29 EF               [12] 2346 	mov	a,r7
      000C2A 12 15 B3         [24] 2347 	lcall	__gptrput
                                   2348 ;	main.c:468: Temp |= Key->Array[3];   //76543210
      000C2D 8F 1A            [24] 2349 	mov	_Temp,r7
      000C2F 75 1B 00         [24] 2350 	mov	(_Temp + 1),#0x00
      000C32 75 1C 00         [24] 2351 	mov	(_Temp + 2),#0x00
                                   2352 ;	main.c:469: Temp = Temp <<8;
      000C35 85 1C 1D         [24] 2353 	mov	(_Temp + 3),(_Temp + 2)
      000C38 85 1B 1C         [24] 2354 	mov	(_Temp + 2),(_Temp + 1)
      000C3B 85 1A 1B         [24] 2355 	mov	(_Temp + 1),_Temp
      000C3E 75 1A 00         [24] 2356 	mov	_Temp,#0x00
                                   2357 ;	main.c:471: Temp |= Key->Array[4];   //20
      000C41 E5 26            [12] 2358 	mov	a,_bp
      000C43 24 04            [12] 2359 	add	a,#0x04
      000C45 F8               [12] 2360 	mov	r0,a
      000C46 86 82            [24] 2361 	mov	dpl,@r0
      000C48 08               [12] 2362 	inc	r0
      000C49 86 83            [24] 2363 	mov	dph,@r0
      000C4B 08               [12] 2364 	inc	r0
      000C4C 86 F0            [24] 2365 	mov	b,@r0
      000C4E 12 15 F0         [24] 2366 	lcall	__gptrget
      000C51 FF               [12] 2367 	mov	r7,a
      000C52 E4               [12] 2368 	clr	a
      000C53 FE               [12] 2369 	mov	r6,a
      000C54 FD               [12] 2370 	mov	r5,a
      000C55 FC               [12] 2371 	mov	r4,a
      000C56 EF               [12] 2372 	mov	a,r7
      000C57 42 1A            [12] 2373 	orl	_Temp,a
      000C59 EE               [12] 2374 	mov	a,r6
      000C5A 42 1B            [12] 2375 	orl	(_Temp + 1),a
      000C5C ED               [12] 2376 	mov	a,r5
      000C5D 42 1C            [12] 2377 	orl	(_Temp + 2),a
      000C5F EC               [12] 2378 	mov	a,r4
      000C60 42 1D            [12] 2379 	orl	(_Temp + 3),a
                                   2380 ;	main.c:473: Temp = Temp <<8;
      000C62 85 1C 1D         [24] 2381 	mov	(_Temp + 3),(_Temp + 2)
      000C65 85 1B 1C         [24] 2382 	mov	(_Temp + 2),(_Temp + 1)
      000C68 85 1A 1B         [24] 2383 	mov	(_Temp + 1),_Temp
      000C6B 75 1A 00         [24] 2384 	mov	_Temp,#0x00
                                   2385 ;	main.c:474: Temp |= Key->Array[5];   //20
      000C6E E5 26            [12] 2386 	mov	a,_bp
      000C70 24 0B            [12] 2387 	add	a,#0x0b
      000C72 F8               [12] 2388 	mov	r0,a
      000C73 86 82            [24] 2389 	mov	dpl,@r0
      000C75 08               [12] 2390 	inc	r0
      000C76 86 83            [24] 2391 	mov	dph,@r0
      000C78 08               [12] 2392 	inc	r0
      000C79 86 F0            [24] 2393 	mov	b,@r0
      000C7B 12 15 F0         [24] 2394 	lcall	__gptrget
      000C7E FF               [12] 2395 	mov	r7,a
      000C7F E4               [12] 2396 	clr	a
      000C80 FE               [12] 2397 	mov	r6,a
      000C81 FD               [12] 2398 	mov	r5,a
      000C82 FC               [12] 2399 	mov	r4,a
      000C83 EF               [12] 2400 	mov	a,r7
      000C84 42 1A            [12] 2401 	orl	_Temp,a
      000C86 EE               [12] 2402 	mov	a,r6
      000C87 42 1B            [12] 2403 	orl	(_Temp + 1),a
      000C89 ED               [12] 2404 	mov	a,r5
      000C8A 42 1C            [12] 2405 	orl	(_Temp + 2),a
      000C8C EC               [12] 2406 	mov	a,r4
      000C8D 42 1D            [12] 2407 	orl	(_Temp + 3),a
                                   2408 ;	main.c:475: Temp = Temp <<8;
      000C8F 85 1C 1D         [24] 2409 	mov	(_Temp + 3),(_Temp + 2)
      000C92 85 1B 1C         [24] 2410 	mov	(_Temp + 2),(_Temp + 1)
      000C95 85 1A 1B         [24] 2411 	mov	(_Temp + 1),_Temp
      000C98 75 1A 00         [24] 2412 	mov	_Temp,#0x00
                                   2413 ;	main.c:476: Temp |= Key->Array[6];	//28
      000C9B E5 26            [12] 2414 	mov	a,_bp
      000C9D 24 0E            [12] 2415 	add	a,#0x0e
      000C9F F8               [12] 2416 	mov	r0,a
      000CA0 86 82            [24] 2417 	mov	dpl,@r0
      000CA2 08               [12] 2418 	inc	r0
      000CA3 86 83            [24] 2419 	mov	dph,@r0
      000CA5 08               [12] 2420 	inc	r0
      000CA6 86 F0            [24] 2421 	mov	b,@r0
      000CA8 12 15 F0         [24] 2422 	lcall	__gptrget
      000CAB FF               [12] 2423 	mov	r7,a
      000CAC E4               [12] 2424 	clr	a
      000CAD FE               [12] 2425 	mov	r6,a
      000CAE FD               [12] 2426 	mov	r5,a
      000CAF FC               [12] 2427 	mov	r4,a
      000CB0 EF               [12] 2428 	mov	a,r7
      000CB1 42 1A            [12] 2429 	orl	_Temp,a
      000CB3 EE               [12] 2430 	mov	a,r6
      000CB4 42 1B            [12] 2431 	orl	(_Temp + 1),a
      000CB6 ED               [12] 2432 	mov	a,r5
      000CB7 42 1C            [12] 2433 	orl	(_Temp + 2),a
      000CB9 EC               [12] 2434 	mov	a,r4
      000CBA 42 1D            [12] 2435 	orl	(_Temp + 3),a
                                   2436 ;	main.c:477: Temp= Temp <<4;
      000CBC E5 1D            [12] 2437 	mov	a,(_Temp + 3)
      000CBE C4               [12] 2438 	swap	a
      000CBF 54 F0            [12] 2439 	anl	a,#0xf0
      000CC1 C5 1C            [12] 2440 	xch	a,(_Temp + 2)
      000CC3 C4               [12] 2441 	swap	a
      000CC4 C5 1C            [12] 2442 	xch	a,(_Temp + 2)
      000CC6 65 1C            [12] 2443 	xrl	a,(_Temp + 2)
      000CC8 C5 1C            [12] 2444 	xch	a,(_Temp + 2)
      000CCA 54 F0            [12] 2445 	anl	a,#0xf0
      000CCC C5 1C            [12] 2446 	xch	a,(_Temp + 2)
      000CCE 65 1C            [12] 2447 	xrl	a,(_Temp + 2)
      000CD0 F5 1D            [12] 2448 	mov	(_Temp + 3),a
      000CD2 E5 1B            [12] 2449 	mov	a,(_Temp + 1)
      000CD4 C4               [12] 2450 	swap	a
      000CD5 54 0F            [12] 2451 	anl	a,#0x0f
      000CD7 45 1C            [12] 2452 	orl	a,(_Temp + 2)
      000CD9 F5 1C            [12] 2453 	mov	(_Temp + 2),a
      000CDB E5 1B            [12] 2454 	mov	a,(_Temp + 1)
      000CDD C4               [12] 2455 	swap	a
      000CDE 54 F0            [12] 2456 	anl	a,#0xf0
      000CE0 C5 1A            [12] 2457 	xch	a,_Temp
      000CE2 C4               [12] 2458 	swap	a
      000CE3 C5 1A            [12] 2459 	xch	a,_Temp
      000CE5 65 1A            [12] 2460 	xrl	a,_Temp
      000CE7 C5 1A            [12] 2461 	xch	a,_Temp
      000CE9 54 F0            [12] 2462 	anl	a,#0xf0
      000CEB C5 1A            [12] 2463 	xch	a,_Temp
      000CED 65 1A            [12] 2464 	xrl	a,_Temp
      000CEF F5 1B            [12] 2465 	mov	(_Temp + 1),a
                                   2466 ;	main.c:480: temp = GET_BIT(Temp,31);//
      000CF1 E5 1D            [12] 2467 	mov	a,(_Temp + 3)
      000CF3 23               [12] 2468 	rl	a
      000CF4 54 01            [12] 2469 	anl	a,#0x01
      000CF6 F5 19            [12] 2470 	mov	_temp,a
                                   2471 ;	main.c:481: Temp <<=1;//011 0001 0010 1100 1101 0100 0101 0000 0
      000CF8 E5 1A            [12] 2472 	mov	a,_Temp
      000CFA 25 1A            [12] 2473 	add	a,_Temp
      000CFC F5 1A            [12] 2474 	mov	_Temp,a
      000CFE E5 1B            [12] 2475 	mov	a,(_Temp + 1)
      000D00 33               [12] 2476 	rlc	a
      000D01 F5 1B            [12] 2477 	mov	(_Temp + 1),a
      000D03 E5 1C            [12] 2478 	mov	a,(_Temp + 2)
      000D05 33               [12] 2479 	rlc	a
      000D06 F5 1C            [12] 2480 	mov	(_Temp + 2),a
      000D08 E5 1D            [12] 2481 	mov	a,(_Temp + 3)
      000D0A 33               [12] 2482 	rlc	a
      000D0B F5 1D            [12] 2483 	mov	(_Temp + 3),a
                                   2484 ;	main.c:482: WRITE_BIT(Temp,4,temp);// 0110 0010 0101 1001 1010 1000 101(1) 0000 >> 62 59 a9 b0
      000D0D E5 26            [12] 2485 	mov	a,_bp
      000D0F 24 11            [12] 2486 	add	a,#0x11
      000D11 F8               [12] 2487 	mov	r0,a
      000D12 74 EF            [12] 2488 	mov	a,#0xef
      000D14 55 1A            [12] 2489 	anl	a,_Temp
      000D16 F6               [12] 2490 	mov	@r0,a
      000D17 08               [12] 2491 	inc	r0
      000D18 A6 1B            [24] 2492 	mov	@r0,(_Temp + 1)
      000D1A 08               [12] 2493 	inc	r0
      000D1B A6 1C            [24] 2494 	mov	@r0,(_Temp + 2)
      000D1D 08               [12] 2495 	inc	r0
      000D1E A6 1D            [24] 2496 	mov	@r0,(_Temp + 3)
      000D20 AA 19            [24] 2497 	mov	r2,_temp
      000D22 E4               [12] 2498 	clr	a
      000D23 CA               [12] 2499 	xch	a,r2
      000D24 C4               [12] 2500 	swap	a
      000D25 CA               [12] 2501 	xch	a,r2
      000D26 6A               [12] 2502 	xrl	a,r2
      000D27 CA               [12] 2503 	xch	a,r2
      000D28 54 F0            [12] 2504 	anl	a,#0xf0
      000D2A CA               [12] 2505 	xch	a,r2
      000D2B 6A               [12] 2506 	xrl	a,r2
      000D2C FB               [12] 2507 	mov	r3,a
      000D2D 33               [12] 2508 	rlc	a
      000D2E 95 E0            [12] 2509 	subb	a,acc
      000D30 FE               [12] 2510 	mov	r6,a
      000D31 FF               [12] 2511 	mov	r7,a
      000D32 E5 26            [12] 2512 	mov	a,_bp
      000D34 24 11            [12] 2513 	add	a,#0x11
      000D36 F8               [12] 2514 	mov	r0,a
      000D37 EA               [12] 2515 	mov	a,r2
      000D38 46               [12] 2516 	orl	a,@r0
      000D39 F5 1A            [12] 2517 	mov	_Temp,a
      000D3B EB               [12] 2518 	mov	a,r3
      000D3C 08               [12] 2519 	inc	r0
      000D3D 46               [12] 2520 	orl	a,@r0
      000D3E F5 1B            [12] 2521 	mov	(_Temp + 1),a
      000D40 EE               [12] 2522 	mov	a,r6
      000D41 08               [12] 2523 	inc	r0
      000D42 46               [12] 2524 	orl	a,@r0
      000D43 F5 1C            [12] 2525 	mov	(_Temp + 2),a
      000D45 EF               [12] 2526 	mov	a,r7
      000D46 08               [12] 2527 	inc	r0
      000D47 46               [12] 2528 	orl	a,@r0
      000D48 F5 1D            [12] 2529 	mov	(_Temp + 3),a
                                   2530 ;	main.c:484: Key->Array[3] &=0xf0;
      000D4A E5 26            [12] 2531 	mov	a,_bp
      000D4C 24 08            [12] 2532 	add	a,#0x08
      000D4E F8               [12] 2533 	mov	r0,a
      000D4F 86 82            [24] 2534 	mov	dpl,@r0
      000D51 08               [12] 2535 	inc	r0
      000D52 86 83            [24] 2536 	mov	dph,@r0
      000D54 08               [12] 2537 	inc	r0
      000D55 86 F0            [24] 2538 	mov	b,@r0
      000D57 12 15 F0         [24] 2539 	lcall	__gptrget
      000D5A FF               [12] 2540 	mov	r7,a
      000D5B 53 07 F0         [24] 2541 	anl	ar7,#0xf0
      000D5E E5 26            [12] 2542 	mov	a,_bp
      000D60 24 08            [12] 2543 	add	a,#0x08
      000D62 F8               [12] 2544 	mov	r0,a
      000D63 86 82            [24] 2545 	mov	dpl,@r0
      000D65 08               [12] 2546 	inc	r0
      000D66 86 83            [24] 2547 	mov	dph,@r0
      000D68 08               [12] 2548 	inc	r0
      000D69 86 F0            [24] 2549 	mov	b,@r0
      000D6B EF               [12] 2550 	mov	a,r7
      000D6C 12 15 B3         [24] 2551 	lcall	__gptrput
                                   2552 ;	main.c:485: Key->Array[3] |= (uint8)((Temp)>>28); //62 59 a9 b0 >> 60 00 00 00 >>28 >>>> 00 00 00 06 >> 06
      000D6F E5 1D            [12] 2553 	mov	a,(_Temp + 3)
      000D71 C4               [12] 2554 	swap	a
      000D72 54 0F            [12] 2555 	anl	a,#0x0f
      000D74 FC               [12] 2556 	mov	r4,a
      000D75 E4               [12] 2557 	clr	a
      000D76 FD               [12] 2558 	mov	r5,a
      000D77 FE               [12] 2559 	mov	r6,a
      000D78 E5 26            [12] 2560 	mov	a,_bp
      000D7A 24 08            [12] 2561 	add	a,#0x08
      000D7C F8               [12] 2562 	mov	r0,a
      000D7D 86 82            [24] 2563 	mov	dpl,@r0
      000D7F 08               [12] 2564 	inc	r0
      000D80 86 83            [24] 2565 	mov	dph,@r0
      000D82 08               [12] 2566 	inc	r0
      000D83 86 F0            [24] 2567 	mov	b,@r0
      000D85 12 15 F0         [24] 2568 	lcall	__gptrget
      000D88 FF               [12] 2569 	mov	r7,a
      000D89 42 04            [12] 2570 	orl	ar4,a
      000D8B E5 26            [12] 2571 	mov	a,_bp
      000D8D 24 08            [12] 2572 	add	a,#0x08
      000D8F F8               [12] 2573 	mov	r0,a
      000D90 86 82            [24] 2574 	mov	dpl,@r0
      000D92 08               [12] 2575 	inc	r0
      000D93 86 83            [24] 2576 	mov	dph,@r0
      000D95 08               [12] 2577 	inc	r0
      000D96 86 F0            [24] 2578 	mov	b,@r0
      000D98 EC               [12] 2579 	mov	a,r4
      000D99 12 15 B3         [24] 2580 	lcall	__gptrput
                                   2581 ;	main.c:486: Temp <<=4; // Temp= 25 9a 9b 00 >> 00 00 00 25
      000D9C E5 1D            [12] 2582 	mov	a,(_Temp + 3)
      000D9E C4               [12] 2583 	swap	a
      000D9F 54 F0            [12] 2584 	anl	a,#0xf0
      000DA1 C5 1C            [12] 2585 	xch	a,(_Temp + 2)
      000DA3 C4               [12] 2586 	swap	a
      000DA4 C5 1C            [12] 2587 	xch	a,(_Temp + 2)
      000DA6 65 1C            [12] 2588 	xrl	a,(_Temp + 2)
      000DA8 C5 1C            [12] 2589 	xch	a,(_Temp + 2)
      000DAA 54 F0            [12] 2590 	anl	a,#0xf0
      000DAC C5 1C            [12] 2591 	xch	a,(_Temp + 2)
      000DAE 65 1C            [12] 2592 	xrl	a,(_Temp + 2)
      000DB0 F5 1D            [12] 2593 	mov	(_Temp + 3),a
      000DB2 E5 1B            [12] 2594 	mov	a,(_Temp + 1)
      000DB4 C4               [12] 2595 	swap	a
      000DB5 54 0F            [12] 2596 	anl	a,#0x0f
      000DB7 45 1C            [12] 2597 	orl	a,(_Temp + 2)
      000DB9 F5 1C            [12] 2598 	mov	(_Temp + 2),a
      000DBB E5 1B            [12] 2599 	mov	a,(_Temp + 1)
      000DBD C4               [12] 2600 	swap	a
      000DBE 54 F0            [12] 2601 	anl	a,#0xf0
      000DC0 C5 1A            [12] 2602 	xch	a,_Temp
      000DC2 C4               [12] 2603 	swap	a
      000DC3 C5 1A            [12] 2604 	xch	a,_Temp
      000DC5 65 1A            [12] 2605 	xrl	a,_Temp
      000DC7 C5 1A            [12] 2606 	xch	a,_Temp
      000DC9 54 F0            [12] 2607 	anl	a,#0xf0
      000DCB C5 1A            [12] 2608 	xch	a,_Temp
      000DCD 65 1A            [12] 2609 	xrl	a,_Temp
      000DCF F5 1B            [12] 2610 	mov	(_Temp + 1),a
                                   2611 ;	main.c:487: for (i = 4 ; i<8 ; i++){
      000DD1 75 18 04         [24] 2612 	mov	_i,#0x04
      000DD4                       2613 00123$:
                                   2614 ;	main.c:488: Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); //array={25,9a,9b,00}
      000DD4 A8 26            [24] 2615 	mov	r0,_bp
      000DD6 08               [12] 2616 	inc	r0
      000DD7 E5 26            [12] 2617 	mov	a,_bp
      000DD9 24 11            [12] 2618 	add	a,#0x11
      000DDB F9               [12] 2619 	mov	r1,a
      000DDC E5 18            [12] 2620 	mov	a,_i
      000DDE 26               [12] 2621 	add	a,@r0
      000DDF F7               [12] 2622 	mov	@r1,a
      000DE0 E4               [12] 2623 	clr	a
      000DE1 08               [12] 2624 	inc	r0
      000DE2 36               [12] 2625 	addc	a,@r0
      000DE3 09               [12] 2626 	inc	r1
      000DE4 F7               [12] 2627 	mov	@r1,a
      000DE5 08               [12] 2628 	inc	r0
      000DE6 E6               [12] 2629 	mov	a,@r0
      000DE7 09               [12] 2630 	inc	r1
      000DE8 F7               [12] 2631 	mov	@r1,a
      000DE9 74 07            [12] 2632 	mov	a,#0x07
      000DEB C3               [12] 2633 	clr	c
      000DEC 95 18            [12] 2634 	subb	a,_i
      000DEE C4               [12] 2635 	swap	a
      000DEF 03               [12] 2636 	rr	a
      000DF0 54 F8            [12] 2637 	anl	a,#0xf8
      000DF2 FC               [12] 2638 	mov	r4,a
      000DF3 8C F0            [24] 2639 	mov	b,r4
      000DF5 05 F0            [12] 2640 	inc	b
      000DF7 AA 1A            [24] 2641 	mov	r2,_Temp
      000DF9 AB 1B            [24] 2642 	mov	r3,(_Temp + 1)
      000DFB AC 1C            [24] 2643 	mov	r4,(_Temp + 2)
      000DFD AF 1D            [24] 2644 	mov	r7,(_Temp + 3)
      000DFF 80 0D            [24] 2645 	sjmp	00203$
      000E01                       2646 00202$:
      000E01 C3               [12] 2647 	clr	c
      000E02 EF               [12] 2648 	mov	a,r7
      000E03 13               [12] 2649 	rrc	a
      000E04 FF               [12] 2650 	mov	r7,a
      000E05 EC               [12] 2651 	mov	a,r4
      000E06 13               [12] 2652 	rrc	a
      000E07 FC               [12] 2653 	mov	r4,a
      000E08 EB               [12] 2654 	mov	a,r3
      000E09 13               [12] 2655 	rrc	a
      000E0A FB               [12] 2656 	mov	r3,a
      000E0B EA               [12] 2657 	mov	a,r2
      000E0C 13               [12] 2658 	rrc	a
      000E0D FA               [12] 2659 	mov	r2,a
      000E0E                       2660 00203$:
      000E0E D5 F0 F0         [24] 2661 	djnz	b,00202$
      000E11 E5 26            [12] 2662 	mov	a,_bp
      000E13 24 11            [12] 2663 	add	a,#0x11
      000E15 F8               [12] 2664 	mov	r0,a
      000E16 86 82            [24] 2665 	mov	dpl,@r0
      000E18 08               [12] 2666 	inc	r0
      000E19 86 83            [24] 2667 	mov	dph,@r0
      000E1B 08               [12] 2668 	inc	r0
      000E1C 86 F0            [24] 2669 	mov	b,@r0
      000E1E EA               [12] 2670 	mov	a,r2
      000E1F 12 15 B3         [24] 2671 	lcall	__gptrput
                                   2672 ;	main.c:487: for (i = 4 ; i<8 ; i++){
      000E22 05 18            [12] 2673 	inc	_i
      000E24 74 F8            [12] 2674 	mov	a,#0x100 - 0x08
      000E26 25 18            [12] 2675 	add	a,_i
      000E28 50 AA            [24] 2676 	jnc	00123$
      000E2A                       2677 00109$:
                                   2678 ;	main.c:492: sub_key->Half[1] = Key->Half[1];
      000E2A E5 26            [12] 2679 	mov	a,_bp
      000E2C 24 FA            [12] 2680 	add	a,#0xfa
      000E2E F8               [12] 2681 	mov	r0,a
      000E2F E5 26            [12] 2682 	mov	a,_bp
      000E31 24 0E            [12] 2683 	add	a,#0x0e
      000E33 F9               [12] 2684 	mov	r1,a
      000E34 E6               [12] 2685 	mov	a,@r0
      000E35 F7               [12] 2686 	mov	@r1,a
      000E36 08               [12] 2687 	inc	r0
      000E37 E6               [12] 2688 	mov	a,@r0
      000E38 09               [12] 2689 	inc	r1
      000E39 F7               [12] 2690 	mov	@r1,a
      000E3A 08               [12] 2691 	inc	r0
      000E3B E6               [12] 2692 	mov	a,@r0
      000E3C 09               [12] 2693 	inc	r1
      000E3D F7               [12] 2694 	mov	@r1,a
      000E3E E5 26            [12] 2695 	mov	a,_bp
      000E40 24 0E            [12] 2696 	add	a,#0x0e
      000E42 F8               [12] 2697 	mov	r0,a
      000E43 E5 26            [12] 2698 	mov	a,_bp
      000E45 24 11            [12] 2699 	add	a,#0x11
      000E47 F9               [12] 2700 	mov	r1,a
      000E48 74 04            [12] 2701 	mov	a,#0x04
      000E4A 26               [12] 2702 	add	a,@r0
      000E4B F7               [12] 2703 	mov	@r1,a
      000E4C E4               [12] 2704 	clr	a
      000E4D 08               [12] 2705 	inc	r0
      000E4E 36               [12] 2706 	addc	a,@r0
      000E4F 09               [12] 2707 	inc	r1
      000E50 F7               [12] 2708 	mov	@r1,a
      000E51 08               [12] 2709 	inc	r0
      000E52 E6               [12] 2710 	mov	a,@r0
      000E53 09               [12] 2711 	inc	r1
      000E54 F7               [12] 2712 	mov	@r1,a
      000E55 A8 26            [24] 2713 	mov	r0,_bp
      000E57 08               [12] 2714 	inc	r0
      000E58 74 04            [12] 2715 	mov	a,#0x04
      000E5A 26               [12] 2716 	add	a,@r0
      000E5B FA               [12] 2717 	mov	r2,a
      000E5C E4               [12] 2718 	clr	a
      000E5D 08               [12] 2719 	inc	r0
      000E5E 36               [12] 2720 	addc	a,@r0
      000E5F FB               [12] 2721 	mov	r3,a
      000E60 08               [12] 2722 	inc	r0
      000E61 86 04            [24] 2723 	mov	ar4,@r0
      000E63 8A 82            [24] 2724 	mov	dpl,r2
      000E65 8B 83            [24] 2725 	mov	dph,r3
      000E67 8C F0            [24] 2726 	mov	b,r4
      000E69 12 15 F0         [24] 2727 	lcall	__gptrget
      000E6C FA               [12] 2728 	mov	r2,a
      000E6D A3               [24] 2729 	inc	dptr
      000E6E 12 15 F0         [24] 2730 	lcall	__gptrget
      000E71 FB               [12] 2731 	mov	r3,a
      000E72 A3               [24] 2732 	inc	dptr
      000E73 12 15 F0         [24] 2733 	lcall	__gptrget
      000E76 FC               [12] 2734 	mov	r4,a
      000E77 A3               [24] 2735 	inc	dptr
      000E78 12 15 F0         [24] 2736 	lcall	__gptrget
      000E7B FF               [12] 2737 	mov	r7,a
      000E7C E5 26            [12] 2738 	mov	a,_bp
      000E7E 24 11            [12] 2739 	add	a,#0x11
      000E80 F8               [12] 2740 	mov	r0,a
      000E81 86 82            [24] 2741 	mov	dpl,@r0
      000E83 08               [12] 2742 	inc	r0
      000E84 86 83            [24] 2743 	mov	dph,@r0
      000E86 08               [12] 2744 	inc	r0
      000E87 86 F0            [24] 2745 	mov	b,@r0
      000E89 EA               [12] 2746 	mov	a,r2
      000E8A 12 15 B3         [24] 2747 	lcall	__gptrput
      000E8D A3               [24] 2748 	inc	dptr
      000E8E EB               [12] 2749 	mov	a,r3
      000E8F 12 15 B3         [24] 2750 	lcall	__gptrput
      000E92 A3               [24] 2751 	inc	dptr
      000E93 EC               [12] 2752 	mov	a,r4
      000E94 12 15 B3         [24] 2753 	lcall	__gptrput
      000E97 A3               [24] 2754 	inc	dptr
      000E98 EF               [12] 2755 	mov	a,r7
      000E99 12 15 B3         [24] 2756 	lcall	__gptrput
                                   2757 ;	main.c:493: sub_key->Half[0] = Key->Half[0];
      000E9C A8 26            [24] 2758 	mov	r0,_bp
      000E9E 08               [12] 2759 	inc	r0
      000E9F 86 82            [24] 2760 	mov	dpl,@r0
      000EA1 08               [12] 2761 	inc	r0
      000EA2 86 83            [24] 2762 	mov	dph,@r0
      000EA4 08               [12] 2763 	inc	r0
      000EA5 86 F0            [24] 2764 	mov	b,@r0
      000EA7 12 15 F0         [24] 2765 	lcall	__gptrget
      000EAA FD               [12] 2766 	mov	r5,a
      000EAB A3               [24] 2767 	inc	dptr
      000EAC 12 15 F0         [24] 2768 	lcall	__gptrget
      000EAF FE               [12] 2769 	mov	r6,a
      000EB0 A3               [24] 2770 	inc	dptr
      000EB1 12 15 F0         [24] 2771 	lcall	__gptrget
      000EB4 FC               [12] 2772 	mov	r4,a
      000EB5 A3               [24] 2773 	inc	dptr
      000EB6 12 15 F0         [24] 2774 	lcall	__gptrget
      000EB9 FF               [12] 2775 	mov	r7,a
      000EBA E5 26            [12] 2776 	mov	a,_bp
      000EBC 24 0E            [12] 2777 	add	a,#0x0e
      000EBE F8               [12] 2778 	mov	r0,a
      000EBF 86 82            [24] 2779 	mov	dpl,@r0
      000EC1 08               [12] 2780 	inc	r0
      000EC2 86 83            [24] 2781 	mov	dph,@r0
      000EC4 08               [12] 2782 	inc	r0
      000EC5 86 F0            [24] 2783 	mov	b,@r0
      000EC7 ED               [12] 2784 	mov	a,r5
      000EC8 12 15 B3         [24] 2785 	lcall	__gptrput
      000ECB A3               [24] 2786 	inc	dptr
      000ECC EE               [12] 2787 	mov	a,r6
      000ECD 12 15 B3         [24] 2788 	lcall	__gptrput
      000ED0 A3               [24] 2789 	inc	dptr
      000ED1 EC               [12] 2790 	mov	a,r4
      000ED2 12 15 B3         [24] 2791 	lcall	__gptrput
      000ED5 A3               [24] 2792 	inc	dptr
      000ED6 EF               [12] 2793 	mov	a,r7
      000ED7 12 15 B3         [24] 2794 	lcall	__gptrput
                                   2795 ;	main.c:574: }
      000EDA 85 26 81         [24] 2796 	mov	sp,_bp
      000EDD D0 26            [24] 2797 	pop	_bp
      000EDF 22               [24] 2798 	ret
                                   2799 ;------------------------------------------------------------
                                   2800 ;Allocation info for local variables in function 'main'
                                   2801 ;------------------------------------------------------------
                                   2802 ;cipher_text               Allocated to stack - _bp +17
                                   2803 ;round                     Allocated to stack - _bp +25
                                   2804 ;round_in                  Allocated to stack - _bp +26
                                   2805 ;subbkey                   Allocated to stack - _bp +34
                                   2806 ;key_56                    Allocated to stack - _bp +42
                                   2807 ;pc2_in                    Allocated to stack - _bp +50
                                   2808 ;temp2                     Allocated to registers 
                                   2809 ;sloc0                     Allocated to stack - _bp +1
                                   2810 ;sloc1                     Allocated to stack - _bp +2
                                   2811 ;sloc2                     Allocated to stack - _bp +3
                                   2812 ;sloc3                     Allocated to stack - _bp +4
                                   2813 ;sloc4                     Allocated to stack - _bp +5
                                   2814 ;sloc5                     Allocated to stack - _bp +6
                                   2815 ;sloc6                     Allocated to stack - _bp +7
                                   2816 ;sloc7                     Allocated to stack - _bp +10
                                   2817 ;sloc8                     Allocated to stack - _bp +13
                                   2818 ;------------------------------------------------------------
                                   2819 ;	main.c:585: int main(void){
                                   2820 ;	-----------------------------------------
                                   2821 ;	 function main
                                   2822 ;	-----------------------------------------
      000EE0                       2823 _main:
      000EE0 C0 26            [24] 2824 	push	_bp
      000EE2 E5 81            [12] 2825 	mov	a,sp
      000EE4 F5 26            [12] 2826 	mov	_bp,a
      000EE6 24 39            [12] 2827 	add	a,#0x39
      000EE8 F5 81            [12] 2828 	mov	sp,a
                                   2829 ;	main.c:586: spi_init();
      000EEA 12 00 BD         [24] 2830 	lcall	_spi_init
                                   2831 ;	main.c:587: SCON=0x50;
      000EED 75 98 50         [24] 2832 	mov	_SCON,#0x50
                                   2833 ;	main.c:588: TMOD=0x20;
      000EF0 75 89 20         [24] 2834 	mov	_TMOD,#0x20
                                   2835 ;	main.c:589: TH1=-3;
      000EF3 75 8D FD         [24] 2836 	mov	_TH1,#0xfd
                                   2837 ;	main.c:590: TL1=-3;
      000EF6 75 8B FD         [24] 2838 	mov	_TL1,#0xfd
                                   2839 ;	main.c:591: TR1=1;
                                   2840 ;	assignBit
      000EF9 D2 8E            [12] 2841 	setb	_TR1
                                   2842 ;	main.c:594: DATA cipher_text =  {.Array = {0,0,0,0,0,0,0,0}}; // cipher =  0x76 0x35 0x49 0xd3 0x8b 0x57 0xc 0xe
      000EFB E5 26            [12] 2843 	mov	a,_bp
      000EFD 24 11            [12] 2844 	add	a,#0x11
      000EFF F8               [12] 2845 	mov	r0,a
      000F00 76 00            [12] 2846 	mov	@r0,#0x00
      000F02 A8 26            [24] 2847 	mov	r0,_bp
      000F04 08               [12] 2848 	inc	r0
      000F05 08               [12] 2849 	inc	r0
      000F06 E5 26            [12] 2850 	mov	a,_bp
      000F08 24 11            [12] 2851 	add	a,#0x11
      000F0A F6               [12] 2852 	mov	@r0,a
      000F0B A8 26            [24] 2853 	mov	r0,_bp
      000F0D 08               [12] 2854 	inc	r0
      000F0E 08               [12] 2855 	inc	r0
      000F0F E6               [12] 2856 	mov	a,@r0
      000F10 04               [12] 2857 	inc	a
      000F11 F8               [12] 2858 	mov	r0,a
      000F12 76 00            [12] 2859 	mov	@r0,#0x00
      000F14 A8 26            [24] 2860 	mov	r0,_bp
      000F16 08               [12] 2861 	inc	r0
      000F17 08               [12] 2862 	inc	r0
      000F18 74 02            [12] 2863 	mov	a,#0x02
      000F1A 26               [12] 2864 	add	a,@r0
      000F1B F8               [12] 2865 	mov	r0,a
      000F1C 76 00            [12] 2866 	mov	@r0,#0x00
      000F1E A8 26            [24] 2867 	mov	r0,_bp
      000F20 08               [12] 2868 	inc	r0
      000F21 08               [12] 2869 	inc	r0
      000F22 74 03            [12] 2870 	mov	a,#0x03
      000F24 26               [12] 2871 	add	a,@r0
      000F25 F8               [12] 2872 	mov	r0,a
      000F26 76 00            [12] 2873 	mov	@r0,#0x00
      000F28 A8 26            [24] 2874 	mov	r0,_bp
      000F2A 08               [12] 2875 	inc	r0
      000F2B 08               [12] 2876 	inc	r0
      000F2C 74 04            [12] 2877 	mov	a,#0x04
      000F2E 26               [12] 2878 	add	a,@r0
      000F2F F8               [12] 2879 	mov	r0,a
      000F30 76 00            [12] 2880 	mov	@r0,#0x00
      000F32 A8 26            [24] 2881 	mov	r0,_bp
      000F34 08               [12] 2882 	inc	r0
      000F35 08               [12] 2883 	inc	r0
      000F36 74 05            [12] 2884 	mov	a,#0x05
      000F38 26               [12] 2885 	add	a,@r0
      000F39 F8               [12] 2886 	mov	r0,a
      000F3A 76 00            [12] 2887 	mov	@r0,#0x00
      000F3C A8 26            [24] 2888 	mov	r0,_bp
      000F3E 08               [12] 2889 	inc	r0
      000F3F 08               [12] 2890 	inc	r0
      000F40 74 06            [12] 2891 	mov	a,#0x06
      000F42 26               [12] 2892 	add	a,@r0
      000F43 F8               [12] 2893 	mov	r0,a
      000F44 76 00            [12] 2894 	mov	@r0,#0x00
      000F46 A8 26            [24] 2895 	mov	r0,_bp
      000F48 08               [12] 2896 	inc	r0
      000F49 08               [12] 2897 	inc	r0
      000F4A 74 07            [12] 2898 	mov	a,#0x07
      000F4C 26               [12] 2899 	add	a,@r0
      000F4D F8               [12] 2900 	mov	r0,a
      000F4E 76 00            [12] 2901 	mov	@r0,#0x00
                                   2902 ;	main.c:597: SBUF = 'K';
      000F50 75 99 4B         [24] 2903 	mov	_SBUF,#0x4b
                                   2904 ;	main.c:598: while (0 == TI);
      000F53                       2905 00101$:
                                   2906 ;	main.c:599: TI = 0;
                                   2907 ;	assignBit
      000F53 10 99 02         [24] 2908 	jbc	_TI,00368$
      000F56 80 FB            [24] 2909 	sjmp	00101$
      000F58                       2910 00368$:
                                   2911 ;	main.c:600: spi_delay();
      000F58 12 00 B3         [24] 2912 	lcall	_spi_delay
                                   2913 ;	main.c:601: SBUF = ':';
      000F5B 75 99 3A         [24] 2914 	mov	_SBUF,#0x3a
                                   2915 ;	main.c:602: while (0 == TI);
      000F5E                       2916 00104$:
                                   2917 ;	main.c:603: TI = 0;
                                   2918 ;	assignBit
      000F5E 10 99 02         [24] 2919 	jbc	_TI,00369$
      000F61 80 FB            [24] 2920 	sjmp	00104$
      000F63                       2921 00369$:
                                   2922 ;	main.c:604: spi_delay();
      000F63 12 00 B3         [24] 2923 	lcall	_spi_delay
                                   2924 ;	main.c:605: for (i=0 ; i<8;i++){
      000F66 75 18 00         [24] 2925 	mov	_i,#0x00
                                   2926 ;	main.c:606: while(0==RI);
      000F69                       2927 00107$:
      000F69 30 98 FD         [24] 2928 	jnb	_RI,00107$
                                   2929 ;	main.c:607: temp = SBUF;
      000F6C 85 99 19         [24] 2930 	mov	_temp,_SBUF
                                   2931 ;	main.c:608: RI=0;
                                   2932 ;	assignBit
      000F6F C2 98            [12] 2933 	clr	_RI
                                   2934 ;	main.c:609: spi_delay();
      000F71 12 00 B3         [24] 2935 	lcall	_spi_delay
                                   2936 ;	main.c:610: SBUF = temp;
      000F74 85 19 99         [24] 2937 	mov	_SBUF,_temp
                                   2938 ;	main.c:611: while(0==TI);
      000F77                       2939 00110$:
                                   2940 ;	main.c:612: TI=0;
                                   2941 ;	assignBit
      000F77 10 99 02         [24] 2942 	jbc	_TI,00371$
      000F7A 80 FB            [24] 2943 	sjmp	00110$
      000F7C                       2944 00371$:
                                   2945 ;	main.c:613: spi_delay();
      000F7C 12 00 B3         [24] 2946 	lcall	_spi_delay
                                   2947 ;	main.c:614: temp -= 0x30;
      000F7F E5 19            [12] 2948 	mov	a,_temp
      000F81 24 D0            [12] 2949 	add	a,#0xd0
                                   2950 ;	main.c:615: if(temp > 9 ){
      000F83 F5 19            [12] 2951 	mov  _temp,a
      000F85 24 F6            [12] 2952 	add	a,#0xff - 0x09
      000F87 50 07            [24] 2953 	jnc	00114$
                                   2954 ;	main.c:616: temp -= 0x7;
      000F89 E5 19            [12] 2955 	mov	a,_temp
      000F8B FE               [12] 2956 	mov	r6,a
      000F8C 24 F9            [12] 2957 	add	a,#0xf9
      000F8E F5 19            [12] 2958 	mov	_temp,a
      000F90                       2959 00114$:
                                   2960 ;	main.c:618: final_original_key.Array[i] = (temp<<4);
      000F90 E5 18            [12] 2961 	mov	a,_i
      000F92 24 1E            [12] 2962 	add	a,#_final_original_key
      000F94 F9               [12] 2963 	mov	r1,a
      000F95 E5 19            [12] 2964 	mov	a,_temp
      000F97 C4               [12] 2965 	swap	a
      000F98 54 F0            [12] 2966 	anl	a,#0xf0
      000F9A F7               [12] 2967 	mov	@r1,a
                                   2968 ;	main.c:619: final_original_key.Array[i] &= 0xF0;
      000F9B E5 18            [12] 2969 	mov	a,_i
      000F9D 24 1E            [12] 2970 	add	a,#_final_original_key
      000F9F F9               [12] 2971 	mov	r1,a
      000FA0 E5 18            [12] 2972 	mov	a,_i
      000FA2 24 1E            [12] 2973 	add	a,#_final_original_key
      000FA4 F8               [12] 2974 	mov	r0,a
      000FA5 86 06            [24] 2975 	mov	ar6,@r0
      000FA7 74 F0            [12] 2976 	mov	a,#0xf0
      000FA9 5E               [12] 2977 	anl	a,r6
      000FAA F7               [12] 2978 	mov	@r1,a
                                   2979 ;	main.c:620: temp = 0;
      000FAB 75 19 00         [24] 2980 	mov	_temp,#0x00
                                   2981 ;	main.c:621: while(0==RI);
      000FAE                       2982 00115$:
      000FAE 30 98 FD         [24] 2983 	jnb	_RI,00115$
                                   2984 ;	main.c:622: temp = SBUF;
      000FB1 85 99 19         [24] 2985 	mov	_temp,_SBUF
                                   2986 ;	main.c:623: RI=0;
                                   2987 ;	assignBit
      000FB4 C2 98            [12] 2988 	clr	_RI
                                   2989 ;	main.c:624: spi_delay();
      000FB6 12 00 B3         [24] 2990 	lcall	_spi_delay
                                   2991 ;	main.c:625: SBUF = temp;
      000FB9 85 19 99         [24] 2992 	mov	_SBUF,_temp
                                   2993 ;	main.c:626: while(0==TI);
      000FBC                       2994 00118$:
                                   2995 ;	main.c:627: TI=0;
                                   2996 ;	assignBit
      000FBC 10 99 02         [24] 2997 	jbc	_TI,00374$
      000FBF 80 FB            [24] 2998 	sjmp	00118$
      000FC1                       2999 00374$:
                                   3000 ;	main.c:628: spi_delay();
      000FC1 12 00 B3         [24] 3001 	lcall	_spi_delay
                                   3002 ;	main.c:629: temp -= 0x30;
      000FC4 E5 19            [12] 3003 	mov	a,_temp
      000FC6 24 D0            [12] 3004 	add	a,#0xd0
                                   3005 ;	main.c:630: if(temp > 9 ){
      000FC8 F5 19            [12] 3006 	mov  _temp,a
      000FCA 24 F6            [12] 3007 	add	a,#0xff - 0x09
      000FCC 50 07            [24] 3008 	jnc	00122$
                                   3009 ;	main.c:631: temp -= 0x7;
      000FCE E5 19            [12] 3010 	mov	a,_temp
      000FD0 FE               [12] 3011 	mov	r6,a
      000FD1 24 F9            [12] 3012 	add	a,#0xf9
      000FD3 F5 19            [12] 3013 	mov	_temp,a
      000FD5                       3014 00122$:
                                   3015 ;	main.c:633: final_original_key.Array[i] |= temp; 
      000FD5 E5 18            [12] 3016 	mov	a,_i
      000FD7 24 1E            [12] 3017 	add	a,#_final_original_key
      000FD9 F9               [12] 3018 	mov	r1,a
      000FDA E5 18            [12] 3019 	mov	a,_i
      000FDC 24 1E            [12] 3020 	add	a,#_final_original_key
      000FDE F8               [12] 3021 	mov	r0,a
      000FDF 86 06            [24] 3022 	mov	ar6,@r0
      000FE1 E5 19            [12] 3023 	mov	a,_temp
      000FE3 4E               [12] 3024 	orl	a,r6
      000FE4 F7               [12] 3025 	mov	@r1,a
                                   3026 ;	main.c:605: for (i=0 ; i<8;i++){
      000FE5 05 18            [12] 3027 	inc	_i
      000FE7 74 F8            [12] 3028 	mov	a,#0x100 - 0x08
      000FE9 25 18            [12] 3029 	add	a,_i
      000FEB 40 03            [24] 3030 	jc	00376$
      000FED 02 0F 69         [24] 3031 	ljmp	00107$
      000FF0                       3032 00376$:
                                   3033 ;	main.c:636: spi_delay();
      000FF0 12 00 B3         [24] 3034 	lcall	_spi_delay
                                   3035 ;	main.c:638: while(1){
      000FF3                       3036 00163$:
                                   3037 ;	main.c:640: SBUF = '\n';
      000FF3 75 99 0A         [24] 3038 	mov	_SBUF,#0x0a
                                   3039 ;	main.c:641: while (0 == TI);
      000FF6                       3040 00124$:
                                   3041 ;	main.c:642: TI = 0;
                                   3042 ;	assignBit
      000FF6 10 99 02         [24] 3043 	jbc	_TI,00377$
      000FF9 80 FB            [24] 3044 	sjmp	00124$
      000FFB                       3045 00377$:
                                   3046 ;	main.c:643: spi_delay();
      000FFB 12 00 B3         [24] 3047 	lcall	_spi_delay
                                   3048 ;	main.c:644: SBUF = 'P';
      000FFE 75 99 50         [24] 3049 	mov	_SBUF,#0x50
                                   3050 ;	main.c:645: while (0 == TI);
      001001                       3051 00127$:
                                   3052 ;	main.c:646: TI = 0;
                                   3053 ;	assignBit
      001001 10 99 02         [24] 3054 	jbc	_TI,00378$
      001004 80 FB            [24] 3055 	sjmp	00127$
      001006                       3056 00378$:
                                   3057 ;	main.c:647: spi_delay();
      001006 12 00 B3         [24] 3058 	lcall	_spi_delay
                                   3059 ;	main.c:648: SBUF = 'T';
      001009 75 99 54         [24] 3060 	mov	_SBUF,#0x54
                                   3061 ;	main.c:649: while (0 == TI);
      00100C                       3062 00130$:
                                   3063 ;	main.c:650: TI = 0;
                                   3064 ;	assignBit
      00100C 10 99 02         [24] 3065 	jbc	_TI,00379$
      00100F 80 FB            [24] 3066 	sjmp	00130$
      001011                       3067 00379$:
                                   3068 ;	main.c:651: spi_delay();
      001011 12 00 B3         [24] 3069 	lcall	_spi_delay
                                   3070 ;	main.c:652: SBUF = ':';
      001014 75 99 3A         [24] 3071 	mov	_SBUF,#0x3a
                                   3072 ;	main.c:653: while (0 == TI);
      001017                       3073 00133$:
                                   3074 ;	main.c:654: TI = 0;
                                   3075 ;	assignBit
      001017 10 99 02         [24] 3076 	jbc	_TI,00380$
      00101A 80 FB            [24] 3077 	sjmp	00133$
      00101C                       3078 00380$:
                                   3079 ;	main.c:655: spi_delay();
      00101C 12 00 B3         [24] 3080 	lcall	_spi_delay
                                   3081 ;	main.c:658: for (i=0 ; i<8;i++){
      00101F 75 18 00         [24] 3082 	mov	_i,#0x00
                                   3083 ;	main.c:659: while(0==RI);
      001022                       3084 00136$:
      001022 30 98 FD         [24] 3085 	jnb	_RI,00136$
                                   3086 ;	main.c:660: temp = SBUF;
      001025 85 99 19         [24] 3087 	mov	_temp,_SBUF
                                   3088 ;	main.c:661: RI=0;
                                   3089 ;	assignBit
      001028 C2 98            [12] 3090 	clr	_RI
                                   3091 ;	main.c:662: spi_delay();
      00102A 12 00 B3         [24] 3092 	lcall	_spi_delay
                                   3093 ;	main.c:663: SBUF = temp;
      00102D 85 19 99         [24] 3094 	mov	_SBUF,_temp
                                   3095 ;	main.c:664: while(0==TI);
      001030                       3096 00139$:
                                   3097 ;	main.c:665: TI=0;
                                   3098 ;	assignBit
      001030 10 99 02         [24] 3099 	jbc	_TI,00382$
      001033 80 FB            [24] 3100 	sjmp	00139$
      001035                       3101 00382$:
                                   3102 ;	main.c:666: spi_delay();
      001035 12 00 B3         [24] 3103 	lcall	_spi_delay
                                   3104 ;	main.c:667: cipher_text.Array[i] = temp;
      001038 A8 26            [24] 3105 	mov	r0,_bp
      00103A 08               [12] 3106 	inc	r0
      00103B 08               [12] 3107 	inc	r0
      00103C E5 18            [12] 3108 	mov	a,_i
      00103E 26               [12] 3109 	add	a,@r0
      00103F F8               [12] 3110 	mov	r0,a
      001040 A6 19            [24] 3111 	mov	@r0,_temp
                                   3112 ;	main.c:668: temp = 0;
      001042 75 19 00         [24] 3113 	mov	_temp,#0x00
                                   3114 ;	main.c:658: for (i=0 ; i<8;i++){
      001045 05 18            [12] 3115 	inc	_i
      001047 74 F8            [12] 3116 	mov	a,#0x100 - 0x08
      001049 25 18            [12] 3117 	add	a,_i
      00104B 50 D5            [24] 3118 	jnc	00136$
                                   3119 ;	main.c:670: spi_delay();
      00104D 12 00 B3         [24] 3120 	lcall	_spi_delay
                                   3121 ;	main.c:675: DATA round_in = {.Array = {0,0,0,0,0,0,0,0}};
      001050 E5 26            [12] 3122 	mov	a,_bp
      001052 24 1A            [12] 3123 	add	a,#0x1a
      001054 F8               [12] 3124 	mov	r0,a
      001055 76 00            [12] 3125 	mov	@r0,#0x00
      001057 E5 26            [12] 3126 	mov	a,_bp
      001059 24 1A            [12] 3127 	add	a,#0x1a
      00105B FE               [12] 3128 	mov	r6,a
      00105C 04               [12] 3129 	inc	a
      00105D F8               [12] 3130 	mov	r0,a
      00105E 76 00            [12] 3131 	mov	@r0,#0x00
      001060 74 02            [12] 3132 	mov	a,#0x02
      001062 2E               [12] 3133 	add	a,r6
      001063 F8               [12] 3134 	mov	r0,a
      001064 76 00            [12] 3135 	mov	@r0,#0x00
      001066 74 03            [12] 3136 	mov	a,#0x03
      001068 2E               [12] 3137 	add	a,r6
      001069 F8               [12] 3138 	mov	r0,a
      00106A 76 00            [12] 3139 	mov	@r0,#0x00
      00106C 74 04            [12] 3140 	mov	a,#0x04
      00106E 2E               [12] 3141 	add	a,r6
      00106F F8               [12] 3142 	mov	r0,a
      001070 76 00            [12] 3143 	mov	@r0,#0x00
      001072 74 05            [12] 3144 	mov	a,#0x05
      001074 2E               [12] 3145 	add	a,r6
      001075 F8               [12] 3146 	mov	r0,a
      001076 76 00            [12] 3147 	mov	@r0,#0x00
      001078 74 06            [12] 3148 	mov	a,#0x06
      00107A 2E               [12] 3149 	add	a,r6
      00107B F8               [12] 3150 	mov	r0,a
      00107C 76 00            [12] 3151 	mov	@r0,#0x00
      00107E 74 07            [12] 3152 	mov	a,#0x07
      001080 2E               [12] 3153 	add	a,r6
      001081 F8               [12] 3154 	mov	r0,a
      001082 76 00            [12] 3155 	mov	@r0,#0x00
                                   3156 ;	main.c:676: DATA subbkey = {.Array = {0,0,0,0,0,0,0,0}};
      001084 E5 26            [12] 3157 	mov	a,_bp
      001086 24 22            [12] 3158 	add	a,#0x22
      001088 F8               [12] 3159 	mov	r0,a
      001089 76 00            [12] 3160 	mov	@r0,#0x00
      00108B E5 26            [12] 3161 	mov	a,_bp
      00108D 24 22            [12] 3162 	add	a,#0x22
      00108F FE               [12] 3163 	mov	r6,a
      001090 04               [12] 3164 	inc	a
      001091 F8               [12] 3165 	mov	r0,a
      001092 76 00            [12] 3166 	mov	@r0,#0x00
      001094 74 02            [12] 3167 	mov	a,#0x02
      001096 2E               [12] 3168 	add	a,r6
      001097 F8               [12] 3169 	mov	r0,a
      001098 76 00            [12] 3170 	mov	@r0,#0x00
      00109A 74 03            [12] 3171 	mov	a,#0x03
      00109C 2E               [12] 3172 	add	a,r6
      00109D F8               [12] 3173 	mov	r0,a
      00109E 76 00            [12] 3174 	mov	@r0,#0x00
      0010A0 74 04            [12] 3175 	mov	a,#0x04
      0010A2 2E               [12] 3176 	add	a,r6
      0010A3 F8               [12] 3177 	mov	r0,a
      0010A4 76 00            [12] 3178 	mov	@r0,#0x00
      0010A6 74 05            [12] 3179 	mov	a,#0x05
      0010A8 2E               [12] 3180 	add	a,r6
      0010A9 F8               [12] 3181 	mov	r0,a
      0010AA 76 00            [12] 3182 	mov	@r0,#0x00
      0010AC 74 06            [12] 3183 	mov	a,#0x06
      0010AE 2E               [12] 3184 	add	a,r6
      0010AF F8               [12] 3185 	mov	r0,a
      0010B0 76 00            [12] 3186 	mov	@r0,#0x00
      0010B2 74 07            [12] 3187 	mov	a,#0x07
      0010B4 2E               [12] 3188 	add	a,r6
      0010B5 F8               [12] 3189 	mov	r0,a
      0010B6 76 00            [12] 3190 	mov	@r0,#0x00
                                   3191 ;	main.c:677: DATA key_56 = {.Array = {0,0,0,0,0,0,0,0}};
      0010B8 E5 26            [12] 3192 	mov	a,_bp
      0010BA 24 2A            [12] 3193 	add	a,#0x2a
      0010BC F8               [12] 3194 	mov	r0,a
      0010BD 76 00            [12] 3195 	mov	@r0,#0x00
      0010BF E5 26            [12] 3196 	mov	a,_bp
      0010C1 24 2A            [12] 3197 	add	a,#0x2a
      0010C3 FE               [12] 3198 	mov	r6,a
      0010C4 04               [12] 3199 	inc	a
      0010C5 F8               [12] 3200 	mov	r0,a
      0010C6 76 00            [12] 3201 	mov	@r0,#0x00
      0010C8 74 02            [12] 3202 	mov	a,#0x02
      0010CA 2E               [12] 3203 	add	a,r6
      0010CB F8               [12] 3204 	mov	r0,a
      0010CC 76 00            [12] 3205 	mov	@r0,#0x00
      0010CE 74 03            [12] 3206 	mov	a,#0x03
      0010D0 2E               [12] 3207 	add	a,r6
      0010D1 F8               [12] 3208 	mov	r0,a
      0010D2 76 00            [12] 3209 	mov	@r0,#0x00
      0010D4 74 04            [12] 3210 	mov	a,#0x04
      0010D6 2E               [12] 3211 	add	a,r6
      0010D7 F8               [12] 3212 	mov	r0,a
      0010D8 76 00            [12] 3213 	mov	@r0,#0x00
      0010DA 74 05            [12] 3214 	mov	a,#0x05
      0010DC 2E               [12] 3215 	add	a,r6
      0010DD F8               [12] 3216 	mov	r0,a
      0010DE 76 00            [12] 3217 	mov	@r0,#0x00
      0010E0 74 06            [12] 3218 	mov	a,#0x06
      0010E2 2E               [12] 3219 	add	a,r6
      0010E3 F8               [12] 3220 	mov	r0,a
      0010E4 76 00            [12] 3221 	mov	@r0,#0x00
      0010E6 74 07            [12] 3222 	mov	a,#0x07
      0010E8 2E               [12] 3223 	add	a,r6
      0010E9 F8               [12] 3224 	mov	r0,a
      0010EA 76 00            [12] 3225 	mov	@r0,#0x00
                                   3226 ;	main.c:678: DATA pc2_in = {.Array = {0,0,0,0,0,0,0,0}};
      0010EC E5 26            [12] 3227 	mov	a,_bp
      0010EE 24 32            [12] 3228 	add	a,#0x32
      0010F0 F8               [12] 3229 	mov	r0,a
      0010F1 76 00            [12] 3230 	mov	@r0,#0x00
      0010F3 E5 26            [12] 3231 	mov	a,_bp
      0010F5 24 32            [12] 3232 	add	a,#0x32
      0010F7 FE               [12] 3233 	mov	r6,a
      0010F8 04               [12] 3234 	inc	a
      0010F9 F8               [12] 3235 	mov	r0,a
      0010FA 76 00            [12] 3236 	mov	@r0,#0x00
      0010FC 74 02            [12] 3237 	mov	a,#0x02
      0010FE 2E               [12] 3238 	add	a,r6
      0010FF F8               [12] 3239 	mov	r0,a
      001100 76 00            [12] 3240 	mov	@r0,#0x00
      001102 74 03            [12] 3241 	mov	a,#0x03
      001104 2E               [12] 3242 	add	a,r6
      001105 F8               [12] 3243 	mov	r0,a
      001106 76 00            [12] 3244 	mov	@r0,#0x00
      001108 74 04            [12] 3245 	mov	a,#0x04
      00110A 2E               [12] 3246 	add	a,r6
      00110B F8               [12] 3247 	mov	r0,a
      00110C 76 00            [12] 3248 	mov	@r0,#0x00
      00110E 74 05            [12] 3249 	mov	a,#0x05
      001110 2E               [12] 3250 	add	a,r6
      001111 F8               [12] 3251 	mov	r0,a
      001112 76 00            [12] 3252 	mov	@r0,#0x00
      001114 74 06            [12] 3253 	mov	a,#0x06
      001116 2E               [12] 3254 	add	a,r6
      001117 F8               [12] 3255 	mov	r0,a
      001118 76 00            [12] 3256 	mov	@r0,#0x00
      00111A 74 07            [12] 3257 	mov	a,#0x07
      00111C 2E               [12] 3258 	add	a,r6
      00111D F8               [12] 3259 	mov	r0,a
      00111E 76 00            [12] 3260 	mov	@r0,#0x00
                                   3261 ;	main.c:681: Permutation ( &cipher_text, &round_in, Basic_Permutation, ip);
      001120 E5 26            [12] 3262 	mov	a,_bp
      001122 24 1A            [12] 3263 	add	a,#0x1a
      001124 F9               [12] 3264 	mov	r1,a
      001125 FC               [12] 3265 	mov	r4,a
      001126 7D 00            [12] 3266 	mov	r5,#0x00
      001128 7E 40            [12] 3267 	mov	r6,#0x40
      00112A E5 26            [12] 3268 	mov	a,_bp
      00112C 24 11            [12] 3269 	add	a,#0x11
      00112E F8               [12] 3270 	mov	r0,a
      00112F FA               [12] 3271 	mov	r2,a
      001130 7B 00            [12] 3272 	mov	r3,#0x00
      001132 7F 40            [12] 3273 	mov	r7,#0x40
      001134 C0 01            [24] 3274 	push	ar1
      001136 C0 00            [24] 3275 	push	ar0
      001138 74 68            [12] 3276 	mov	a,#_ip
      00113A C0 E0            [24] 3277 	push	acc
      00113C 74 17            [12] 3278 	mov	a,#(_ip >> 8)
      00113E C0 E0            [24] 3279 	push	acc
      001140 74 80            [12] 3280 	mov	a,#0x80
      001142 C0 E0            [24] 3281 	push	acc
      001144 03               [12] 3282 	rr	a
      001145 C0 E0            [24] 3283 	push	acc
      001147 C0 04            [24] 3284 	push	ar4
      001149 C0 05            [24] 3285 	push	ar5
      00114B C0 06            [24] 3286 	push	ar6
      00114D 8A 82            [24] 3287 	mov	dpl,r2
      00114F 8B 83            [24] 3288 	mov	dph,r3
      001151 8F F0            [24] 3289 	mov	b,r7
      001153 12 01 06         [24] 3290 	lcall	_Permutation
      001156 E5 81            [12] 3291 	mov	a,sp
      001158 24 F9            [12] 3292 	add	a,#0xf9
      00115A F5 81            [12] 3293 	mov	sp,a
      00115C D0 00            [24] 3294 	pop	ar0
      00115E D0 01            [24] 3295 	pop	ar1
                                   3296 ;	main.c:682: for (i=0; i<8; i++){
      001160 75 18 00         [24] 3297 	mov	_i,#0x00
                                   3298 ;	main.c:746: for (i=0 ; i<8;i++){
                                   3299 ;	main.c:682: for (i=0; i<8; i++){
      001163                       3300 00169$:
                                   3301 ;	main.c:683: cipher_text.Array[i] = '0';
      001163 E5 18            [12] 3302 	mov	a,_i
      001165 28               [12] 3303 	add	a,r0
      001166 C0 00            [24] 3304 	push	ar0
      001168 F8               [12] 3305 	mov	r0,a
      001169 76 30            [12] 3306 	mov	@r0,#0x30
      00116B D0 00            [24] 3307 	pop	ar0
                                   3308 ;	main.c:682: for (i=0; i<8; i++){
      00116D 05 18            [12] 3309 	inc	_i
      00116F 74 F8            [12] 3310 	mov	a,#0x100 - 0x08
      001171 25 18            [12] 3311 	add	a,_i
      001173 50 EE            [24] 3312 	jnc	00169$
                                   3313 ;	main.c:687: Permutation ( &final_original_key, &key_56,Pc1,pc1);
      001175 E5 26            [12] 3314 	mov	a,_bp
      001177 24 2A            [12] 3315 	add	a,#0x2a
      001179 FE               [12] 3316 	mov	r6,a
      00117A FB               [12] 3317 	mov	r3,a
      00117B 7C 00            [12] 3318 	mov	r4,#0x00
      00117D 7D 40            [12] 3319 	mov	r5,#0x40
      00117F C0 06            [24] 3320 	push	ar6
      001181 C0 01            [24] 3321 	push	ar1
      001183 C0 00            [24] 3322 	push	ar0
      001185 74 00            [12] 3323 	mov	a,#_pc1
      001187 C0 E0            [24] 3324 	push	acc
      001189 74 17            [12] 3325 	mov	a,#(_pc1 >> 8)
      00118B C0 E0            [24] 3326 	push	acc
      00118D 74 80            [12] 3327 	mov	a,#0x80
      00118F C0 E0            [24] 3328 	push	acc
      001191 74 38            [12] 3329 	mov	a,#0x38
      001193 C0 E0            [24] 3330 	push	acc
      001195 C0 03            [24] 3331 	push	ar3
      001197 C0 04            [24] 3332 	push	ar4
      001199 C0 05            [24] 3333 	push	ar5
      00119B 90 00 1E         [24] 3334 	mov	dptr,#_final_original_key
      00119E 75 F0 40         [24] 3335 	mov	b,#0x40
      0011A1 12 01 06         [24] 3336 	lcall	_Permutation
      0011A4 E5 81            [12] 3337 	mov	a,sp
      0011A6 24 F9            [12] 3338 	add	a,#0xf9
      0011A8 F5 81            [12] 3339 	mov	sp,a
      0011AA D0 00            [24] 3340 	pop	ar0
      0011AC D0 01            [24] 3341 	pop	ar1
      0011AE D0 06            [24] 3342 	pop	ar6
                                   3343 ;	main.c:690: for (round = 1 ; round < 17 ; round++){
      0011B0 C0 00            [24] 3344 	push	ar0
      0011B2 E5 26            [12] 3345 	mov	a,_bp
      0011B4 24 06            [12] 3346 	add	a,#0x06
      0011B6 F8               [12] 3347 	mov	r0,a
      0011B7 A6 06            [24] 3348 	mov	@r0,ar6
      0011B9 D0 00            [24] 3349 	pop	ar0
      0011BB E5 26            [12] 3350 	mov	a,_bp
      0011BD 24 22            [12] 3351 	add	a,#0x22
      0011BF FC               [12] 3352 	mov	r4,a
      0011C0 C0 01            [24] 3353 	push	ar1
      0011C2 E5 26            [12] 3354 	mov	a,_bp
      0011C4 24 05            [12] 3355 	add	a,#0x05
      0011C6 F9               [12] 3356 	mov	r1,a
      0011C7 A7 00            [24] 3357 	mov	@r1,ar0
      0011C9 D0 01            [24] 3358 	pop	ar1
      0011CB C0 00            [24] 3359 	push	ar0
      0011CD E5 26            [12] 3360 	mov	a,_bp
      0011CF 24 04            [12] 3361 	add	a,#0x04
      0011D1 F8               [12] 3362 	mov	r0,a
      0011D2 A6 04            [24] 3363 	mov	@r0,ar4
      0011D4 A8 26            [24] 3364 	mov	r0,_bp
      0011D6 08               [12] 3365 	inc	r0
      0011D7 A6 01            [24] 3366 	mov	@r0,ar1
      0011D9 E5 26            [12] 3367 	mov	a,_bp
      0011DB 24 19            [12] 3368 	add	a,#0x19
      0011DD F8               [12] 3369 	mov	r0,a
      0011DE 76 01            [12] 3370 	mov	@r0,#0x01
      0011E0 D0 00            [24] 3371 	pop	ar0
      0011E2                       3372 00171$:
                                   3373 ;	main.c:692: rotate(&key_56,round,&pc2_in);
      0011E2 C0 00            [24] 3374 	push	ar0
      0011E4 E5 26            [12] 3375 	mov	a,_bp
      0011E6 24 03            [12] 3376 	add	a,#0x03
      0011E8 F8               [12] 3377 	mov	r0,a
      0011E9 E5 26            [12] 3378 	mov	a,_bp
      0011EB 24 32            [12] 3379 	add	a,#0x32
      0011ED F6               [12] 3380 	mov	@r0,a
      0011EE E5 26            [12] 3381 	mov	a,_bp
      0011F0 24 03            [12] 3382 	add	a,#0x03
      0011F2 F8               [12] 3383 	mov	r0,a
      0011F3 C0 01            [24] 3384 	push	ar1
      0011F5 E5 26            [12] 3385 	mov	a,_bp
      0011F7 24 07            [12] 3386 	add	a,#0x07
      0011F9 F9               [12] 3387 	mov	r1,a
      0011FA E6               [12] 3388 	mov	a,@r0
      0011FB F7               [12] 3389 	mov	@r1,a
      0011FC 09               [12] 3390 	inc	r1
      0011FD 77 00            [12] 3391 	mov	@r1,#0x00
      0011FF 09               [12] 3392 	inc	r1
      001200 77 40            [12] 3393 	mov	@r1,#0x40
      001202 D0 01            [24] 3394 	pop	ar1
      001204 E5 26            [12] 3395 	mov	a,_bp
      001206 24 06            [12] 3396 	add	a,#0x06
      001208 F8               [12] 3397 	mov	r0,a
      001209 86 03            [24] 3398 	mov	ar3,@r0
      00120B 7D 00            [12] 3399 	mov	r5,#0x00
      00120D 7F 40            [12] 3400 	mov	r7,#0x40
      00120F D0 00            [24] 3401 	pop	ar0
      001211 C0 06            [24] 3402 	push	ar6
      001213 C0 04            [24] 3403 	push	ar4
      001215 C0 01            [24] 3404 	push	ar1
      001217 C0 00            [24] 3405 	push	ar0
      001219 85 00 F0         [24] 3406 	mov	b,ar0
      00121C E5 26            [12] 3407 	mov	a,_bp
      00121E 24 07            [12] 3408 	add	a,#0x07
      001220 F8               [12] 3409 	mov	r0,a
      001221 E6               [12] 3410 	mov	a,@r0
      001222 C0 E0            [24] 3411 	push	acc
      001224 08               [12] 3412 	inc	r0
      001225 E6               [12] 3413 	mov	a,@r0
      001226 C0 E0            [24] 3414 	push	acc
      001228 08               [12] 3415 	inc	r0
      001229 E6               [12] 3416 	mov	a,@r0
      00122A C0 E0            [24] 3417 	push	acc
      00122C A8 F0            [24] 3418 	mov	r0,b
      00122E 85 00 F0         [24] 3419 	mov	b,ar0
      001231 E5 26            [12] 3420 	mov	a,_bp
      001233 24 19            [12] 3421 	add	a,#0x19
      001235 F8               [12] 3422 	mov	r0,a
      001236 E6               [12] 3423 	mov	a,@r0
      001237 C0 E0            [24] 3424 	push	acc
      001239 8B 82            [24] 3425 	mov	dpl,r3
      00123B 8D 83            [24] 3426 	mov	dph,r5
      00123D 8F F0            [24] 3427 	mov	b,r7
      00123F 12 07 15         [24] 3428 	lcall	_rotate
      001242 E5 81            [12] 3429 	mov	a,sp
      001244 24 FC            [12] 3430 	add	a,#0xfc
      001246 F5 81            [12] 3431 	mov	sp,a
      001248 D0 00            [24] 3432 	pop	ar0
      00124A D0 01            [24] 3433 	pop	ar1
      00124C D0 04            [24] 3434 	pop	ar4
      00124E D0 06            [24] 3435 	pop	ar6
                                   3436 ;	main.c:695: Permutation (&pc2_in,&subbkey,Pc2,pc2);
      001250 C0 00            [24] 3437 	push	ar0
      001252 E5 26            [12] 3438 	mov	a,_bp
      001254 24 07            [12] 3439 	add	a,#0x07
      001256 F8               [12] 3440 	mov	r0,a
      001257 A6 04            [24] 3441 	mov	@r0,ar4
      001259 08               [12] 3442 	inc	r0
      00125A 76 00            [12] 3443 	mov	@r0,#0x00
      00125C 08               [12] 3444 	inc	r0
      00125D 76 40            [12] 3445 	mov	@r0,#0x40
      00125F E5 26            [12] 3446 	mov	a,_bp
      001261 24 03            [12] 3447 	add	a,#0x03
      001263 F8               [12] 3448 	mov	r0,a
      001264 86 02            [24] 3449 	mov	ar2,@r0
      001266 D0 00            [24] 3450 	pop	ar0
      001268 C0 04            [24] 3451 	push	ar4
      00126A 7C 00            [12] 3452 	mov	r4,#0x00
      00126C 7F 40            [12] 3453 	mov	r7,#0x40
      00126E C0 06            [24] 3454 	push	ar6
      001270 C0 04            [24] 3455 	push	ar4
      001272 C0 01            [24] 3456 	push	ar1
      001274 C0 00            [24] 3457 	push	ar0
      001276 74 38            [12] 3458 	mov	a,#_pc2
      001278 C0 E0            [24] 3459 	push	acc
      00127A 74 17            [12] 3460 	mov	a,#(_pc2 >> 8)
      00127C C0 E0            [24] 3461 	push	acc
      00127E 74 80            [12] 3462 	mov	a,#0x80
      001280 C0 E0            [24] 3463 	push	acc
      001282 74 30            [12] 3464 	mov	a,#0x30
      001284 C0 E0            [24] 3465 	push	acc
      001286 85 00 F0         [24] 3466 	mov	b,ar0
      001289 E5 26            [12] 3467 	mov	a,_bp
      00128B 24 07            [12] 3468 	add	a,#0x07
      00128D F8               [12] 3469 	mov	r0,a
      00128E E6               [12] 3470 	mov	a,@r0
      00128F C0 E0            [24] 3471 	push	acc
      001291 08               [12] 3472 	inc	r0
      001292 E6               [12] 3473 	mov	a,@r0
      001293 C0 E0            [24] 3474 	push	acc
      001295 08               [12] 3475 	inc	r0
      001296 E6               [12] 3476 	mov	a,@r0
      001297 C0 E0            [24] 3477 	push	acc
      001299 8A 82            [24] 3478 	mov	dpl,r2
      00129B 8C 83            [24] 3479 	mov	dph,r4
      00129D 8F F0            [24] 3480 	mov	b,r7
      00129F 12 01 06         [24] 3481 	lcall	_Permutation
      0012A2 E5 81            [12] 3482 	mov	a,sp
      0012A4 24 F9            [12] 3483 	add	a,#0xf9
      0012A6 F5 81            [12] 3484 	mov	sp,a
      0012A8 D0 00            [24] 3485 	pop	ar0
      0012AA D0 01            [24] 3486 	pop	ar1
      0012AC D0 04            [24] 3487 	pop	ar4
      0012AE D0 06            [24] 3488 	pop	ar6
                                   3489 ;	main.c:700: G_Function(&round_in,&subbkey,&cipher_text);
      0012B0 C0 00            [24] 3490 	push	ar0
      0012B2 E5 26            [12] 3491 	mov	a,_bp
      0012B4 24 05            [12] 3492 	add	a,#0x05
      0012B6 F8               [12] 3493 	mov	r0,a
      0012B7 C0 01            [24] 3494 	push	ar1
      0012B9 E5 26            [12] 3495 	mov	a,_bp
      0012BB 24 07            [12] 3496 	add	a,#0x07
      0012BD F9               [12] 3497 	mov	r1,a
      0012BE E6               [12] 3498 	mov	a,@r0
      0012BF F7               [12] 3499 	mov	@r1,a
      0012C0 09               [12] 3500 	inc	r1
      0012C1 77 00            [12] 3501 	mov	@r1,#0x00
      0012C3 09               [12] 3502 	inc	r1
      0012C4 77 40            [12] 3503 	mov	@r1,#0x40
      0012C6 E5 26            [12] 3504 	mov	a,_bp
      0012C8 24 04            [12] 3505 	add	a,#0x04
      0012CA F8               [12] 3506 	mov	r0,a
      0012CB E5 26            [12] 3507 	mov	a,_bp
      0012CD 24 0A            [12] 3508 	add	a,#0x0a
      0012CF F9               [12] 3509 	mov	r1,a
      0012D0 E6               [12] 3510 	mov	a,@r0
      0012D1 F7               [12] 3511 	mov	@r1,a
      0012D2 09               [12] 3512 	inc	r1
      0012D3 77 00            [12] 3513 	mov	@r1,#0x00
      0012D5 09               [12] 3514 	inc	r1
      0012D6 77 40            [12] 3515 	mov	@r1,#0x40
      0012D8 D0 01            [24] 3516 	pop	ar1
      0012DA A8 26            [24] 3517 	mov	r0,_bp
      0012DC 08               [12] 3518 	inc	r0
      0012DD 86 03            [24] 3519 	mov	ar3,@r0
      0012DF 7D 00            [12] 3520 	mov	r5,#0x00
      0012E1 7F 40            [12] 3521 	mov	r7,#0x40
      0012E3 D0 00            [24] 3522 	pop	ar0
      0012E5 C0 06            [24] 3523 	push	ar6
      0012E7 C0 04            [24] 3524 	push	ar4
      0012E9 C0 01            [24] 3525 	push	ar1
      0012EB C0 00            [24] 3526 	push	ar0
      0012ED 85 00 F0         [24] 3527 	mov	b,ar0
      0012F0 E5 26            [12] 3528 	mov	a,_bp
      0012F2 24 07            [12] 3529 	add	a,#0x07
      0012F4 F8               [12] 3530 	mov	r0,a
      0012F5 E6               [12] 3531 	mov	a,@r0
      0012F6 C0 E0            [24] 3532 	push	acc
      0012F8 08               [12] 3533 	inc	r0
      0012F9 E6               [12] 3534 	mov	a,@r0
      0012FA C0 E0            [24] 3535 	push	acc
      0012FC 08               [12] 3536 	inc	r0
      0012FD E6               [12] 3537 	mov	a,@r0
      0012FE C0 E0            [24] 3538 	push	acc
      001300 A8 F0            [24] 3539 	mov	r0,b
      001302 85 00 F0         [24] 3540 	mov	b,ar0
      001305 E5 26            [12] 3541 	mov	a,_bp
      001307 24 0A            [12] 3542 	add	a,#0x0a
      001309 F8               [12] 3543 	mov	r0,a
      00130A E6               [12] 3544 	mov	a,@r0
      00130B C0 E0            [24] 3545 	push	acc
      00130D 08               [12] 3546 	inc	r0
      00130E E6               [12] 3547 	mov	a,@r0
      00130F C0 E0            [24] 3548 	push	acc
      001311 08               [12] 3549 	inc	r0
      001312 E6               [12] 3550 	mov	a,@r0
      001313 C0 E0            [24] 3551 	push	acc
      001315 8B 82            [24] 3552 	mov	dpl,r3
      001317 8D 83            [24] 3553 	mov	dph,r5
      001319 8F F0            [24] 3554 	mov	b,r7
      00131B 12 02 7A         [24] 3555 	lcall	_G_Function
      00131E E5 81            [12] 3556 	mov	a,sp
      001320 24 FA            [12] 3557 	add	a,#0xfa
      001322 F5 81            [12] 3558 	mov	sp,a
      001324 D0 00            [24] 3559 	pop	ar0
      001326 D0 01            [24] 3560 	pop	ar1
      001328 D0 04            [24] 3561 	pop	ar4
      00132A D0 06            [24] 3562 	pop	ar6
                                   3563 ;	main.c:701: cipher_text.Half[1] = cipher_text.Half[1] ^ round_in.Half[0];
      00132C 74 04            [12] 3564 	mov	a,#0x04
      00132E 28               [12] 3565 	add	a,r0
      00132F FF               [12] 3566 	mov	r7,a
      001330 C0 00            [24] 3567 	push	ar0
      001332 E5 26            [12] 3568 	mov	a,_bp
      001334 24 0D            [12] 3569 	add	a,#0x0d
      001336 F8               [12] 3570 	mov	r0,a
      001337 E7               [12] 3571 	mov	a,@r1
      001338 F6               [12] 3572 	mov	@r0,a
      001339 09               [12] 3573 	inc	r1
      00133A E7               [12] 3574 	mov	a,@r1
      00133B 08               [12] 3575 	inc	r0
      00133C F6               [12] 3576 	mov	@r0,a
      00133D 09               [12] 3577 	inc	r1
      00133E E7               [12] 3578 	mov	a,@r1
      00133F 08               [12] 3579 	inc	r0
      001340 F6               [12] 3580 	mov	@r0,a
      001341 09               [12] 3581 	inc	r1
      001342 E7               [12] 3582 	mov	a,@r1
      001343 08               [12] 3583 	inc	r0
      001344 F6               [12] 3584 	mov	@r0,a
      001345 19               [12] 3585 	dec	r1
      001346 19               [12] 3586 	dec	r1
      001347 19               [12] 3587 	dec	r1
      001348 A8 07            [24] 3588 	mov	r0,ar7
      00134A 86 02            [24] 3589 	mov	ar2,@r0
      00134C 08               [12] 3590 	inc	r0
      00134D 86 03            [24] 3591 	mov	ar3,@r0
      00134F 08               [12] 3592 	inc	r0
      001350 86 04            [24] 3593 	mov	ar4,@r0
      001352 08               [12] 3594 	inc	r0
      001353 86 05            [24] 3595 	mov	ar5,@r0
      001355 E5 26            [12] 3596 	mov	a,_bp
      001357 24 0D            [12] 3597 	add	a,#0x0d
      001359 F8               [12] 3598 	mov	r0,a
      00135A E6               [12] 3599 	mov	a,@r0
      00135B 62 02            [12] 3600 	xrl	ar2,a
      00135D 08               [12] 3601 	inc	r0
      00135E E6               [12] 3602 	mov	a,@r0
      00135F 62 03            [12] 3603 	xrl	ar3,a
      001361 08               [12] 3604 	inc	r0
      001362 E6               [12] 3605 	mov	a,@r0
      001363 62 04            [12] 3606 	xrl	ar4,a
      001365 08               [12] 3607 	inc	r0
      001366 E6               [12] 3608 	mov	a,@r0
      001367 62 05            [12] 3609 	xrl	ar5,a
      001369 A8 07            [24] 3610 	mov	r0,ar7
      00136B A6 02            [24] 3611 	mov	@r0,ar2
      00136D 08               [12] 3612 	inc	r0
      00136E A6 03            [24] 3613 	mov	@r0,ar3
      001370 08               [12] 3614 	inc	r0
      001371 A6 04            [24] 3615 	mov	@r0,ar4
      001373 08               [12] 3616 	inc	r0
      001374 A6 05            [24] 3617 	mov	@r0,ar5
                                   3618 ;	main.c:702: cipher_text.Half[0]  = round_in.Half[1];
      001376 E5 26            [12] 3619 	mov	a,_bp
      001378 24 0D            [12] 3620 	add	a,#0x0d
      00137A F8               [12] 3621 	mov	r0,a
      00137B 74 04            [12] 3622 	mov	a,#0x04
      00137D 29               [12] 3623 	add	a,r1
      00137E F6               [12] 3624 	mov	@r0,a
      00137F E5 26            [12] 3625 	mov	a,_bp
      001381 24 0D            [12] 3626 	add	a,#0x0d
      001383 F8               [12] 3627 	mov	r0,a
      001384 86 00            [24] 3628 	mov	ar0,@r0
      001386 86 02            [24] 3629 	mov	ar2,@r0
      001388 08               [12] 3630 	inc	r0
      001389 86 03            [24] 3631 	mov	ar3,@r0
      00138B 08               [12] 3632 	inc	r0
      00138C 86 04            [24] 3633 	mov	ar4,@r0
      00138E 08               [12] 3634 	inc	r0
      00138F 86 05            [24] 3635 	mov	ar5,@r0
      001391 18               [12] 3636 	dec	r0
      001392 18               [12] 3637 	dec	r0
      001393 18               [12] 3638 	dec	r0
      001394 D0 00            [24] 3639 	pop	ar0
      001396 A6 02            [24] 3640 	mov	@r0,ar2
      001398 08               [12] 3641 	inc	r0
      001399 A6 03            [24] 3642 	mov	@r0,ar3
      00139B 08               [12] 3643 	inc	r0
      00139C A6 04            [24] 3644 	mov	@r0,ar4
      00139E 08               [12] 3645 	inc	r0
      00139F A6 05            [24] 3646 	mov	@r0,ar5
      0013A1 18               [12] 3647 	dec	r0
      0013A2 18               [12] 3648 	dec	r0
      0013A3 18               [12] 3649 	dec	r0
                                   3650 ;	main.c:704: key_56.Half[0] = pc2_in.Half[0];
      0013A4 C0 00            [24] 3651 	push	ar0
      0013A6 E5 26            [12] 3652 	mov	a,_bp
      0013A8 24 03            [12] 3653 	add	a,#0x03
      0013AA F8               [12] 3654 	mov	r0,a
      0013AB 86 00            [24] 3655 	mov	ar0,@r0
      0013AD 86 02            [24] 3656 	mov	ar2,@r0
      0013AF 08               [12] 3657 	inc	r0
      0013B0 86 03            [24] 3658 	mov	ar3,@r0
      0013B2 08               [12] 3659 	inc	r0
      0013B3 86 04            [24] 3660 	mov	ar4,@r0
      0013B5 08               [12] 3661 	inc	r0
      0013B6 86 05            [24] 3662 	mov	ar5,@r0
      0013B8 18               [12] 3663 	dec	r0
      0013B9 18               [12] 3664 	dec	r0
      0013BA 18               [12] 3665 	dec	r0
      0013BB A8 06            [24] 3666 	mov	r0,ar6
      0013BD A6 02            [24] 3667 	mov	@r0,ar2
      0013BF 08               [12] 3668 	inc	r0
      0013C0 A6 03            [24] 3669 	mov	@r0,ar3
      0013C2 08               [12] 3670 	inc	r0
      0013C3 A6 04            [24] 3671 	mov	@r0,ar4
      0013C5 08               [12] 3672 	inc	r0
      0013C6 A6 05            [24] 3673 	mov	@r0,ar5
                                   3674 ;	main.c:705: key_56.Half[1] = pc2_in.Half[1];
      0013C8 E5 26            [12] 3675 	mov	a,_bp
      0013CA 24 07            [12] 3676 	add	a,#0x07
      0013CC F8               [12] 3677 	mov	r0,a
      0013CD 74 04            [12] 3678 	mov	a,#0x04
      0013CF 2E               [12] 3679 	add	a,r6
      0013D0 F6               [12] 3680 	mov	@r0,a
      0013D1 E5 26            [12] 3681 	mov	a,_bp
      0013D3 24 03            [12] 3682 	add	a,#0x03
      0013D5 F8               [12] 3683 	mov	r0,a
      0013D6 C0 01            [24] 3684 	push	ar1
      0013D8 E5 26            [12] 3685 	mov	a,_bp
      0013DA 24 0A            [12] 3686 	add	a,#0x0a
      0013DC F9               [12] 3687 	mov	r1,a
      0013DD 74 04            [12] 3688 	mov	a,#0x04
      0013DF 26               [12] 3689 	add	a,@r0
      0013E0 F7               [12] 3690 	mov	@r1,a
      0013E1 D0 01            [24] 3691 	pop	ar1
      0013E3 E5 26            [12] 3692 	mov	a,_bp
      0013E5 24 0A            [12] 3693 	add	a,#0x0a
      0013E7 F8               [12] 3694 	mov	r0,a
      0013E8 86 00            [24] 3695 	mov	ar0,@r0
      0013EA 86 02            [24] 3696 	mov	ar2,@r0
      0013EC 08               [12] 3697 	inc	r0
      0013ED 86 03            [24] 3698 	mov	ar3,@r0
      0013EF 08               [12] 3699 	inc	r0
      0013F0 86 04            [24] 3700 	mov	ar4,@r0
      0013F2 08               [12] 3701 	inc	r0
      0013F3 86 05            [24] 3702 	mov	ar5,@r0
      0013F5 18               [12] 3703 	dec	r0
      0013F6 18               [12] 3704 	dec	r0
      0013F7 18               [12] 3705 	dec	r0
      0013F8 E5 26            [12] 3706 	mov	a,_bp
      0013FA 24 07            [12] 3707 	add	a,#0x07
      0013FC F8               [12] 3708 	mov	r0,a
      0013FD 86 00            [24] 3709 	mov	ar0,@r0
      0013FF A6 02            [24] 3710 	mov	@r0,ar2
      001401 08               [12] 3711 	inc	r0
      001402 A6 03            [24] 3712 	mov	@r0,ar3
      001404 08               [12] 3713 	inc	r0
      001405 A6 04            [24] 3714 	mov	@r0,ar4
      001407 08               [12] 3715 	inc	r0
      001408 A6 05            [24] 3716 	mov	@r0,ar5
      00140A 18               [12] 3717 	dec	r0
      00140B 18               [12] 3718 	dec	r0
      00140C 18               [12] 3719 	dec	r0
                                   3720 ;	main.c:707: pc2_in.Half[0] = 0;
      00140D E5 26            [12] 3721 	mov	a,_bp
      00140F 24 03            [12] 3722 	add	a,#0x03
      001411 F8               [12] 3723 	mov	r0,a
      001412 86 00            [24] 3724 	mov	ar0,@r0
      001414 76 00            [12] 3725 	mov	@r0,#0x00
      001416 08               [12] 3726 	inc	r0
      001417 76 00            [12] 3727 	mov	@r0,#0x00
      001419 08               [12] 3728 	inc	r0
      00141A 76 00            [12] 3729 	mov	@r0,#0x00
      00141C 08               [12] 3730 	inc	r0
      00141D 76 00            [12] 3731 	mov	@r0,#0x00
      00141F 18               [12] 3732 	dec	r0
      001420 18               [12] 3733 	dec	r0
      001421 18               [12] 3734 	dec	r0
                                   3735 ;	main.c:708: pc2_in.Half[1] = 0;
      001422 E5 26            [12] 3736 	mov	a,_bp
      001424 24 0A            [12] 3737 	add	a,#0x0a
      001426 F8               [12] 3738 	mov	r0,a
      001427 86 00            [24] 3739 	mov	ar0,@r0
      001429 76 00            [12] 3740 	mov	@r0,#0x00
      00142B 08               [12] 3741 	inc	r0
      00142C 76 00            [12] 3742 	mov	@r0,#0x00
      00142E 08               [12] 3743 	inc	r0
      00142F 76 00            [12] 3744 	mov	@r0,#0x00
      001431 08               [12] 3745 	inc	r0
      001432 76 00            [12] 3746 	mov	@r0,#0x00
      001434 18               [12] 3747 	dec	r0
      001435 18               [12] 3748 	dec	r0
      001436 18               [12] 3749 	dec	r0
      001437 D0 00            [24] 3750 	pop	ar0
                                   3751 ;	main.c:710: round_in.Half[0] = cipher_text.Half[0];
      001439 86 02            [24] 3752 	mov	ar2,@r0
      00143B 08               [12] 3753 	inc	r0
      00143C 86 03            [24] 3754 	mov	ar3,@r0
      00143E 08               [12] 3755 	inc	r0
      00143F 86 04            [24] 3756 	mov	ar4,@r0
      001441 08               [12] 3757 	inc	r0
      001442 86 05            [24] 3758 	mov	ar5,@r0
      001444 18               [12] 3759 	dec	r0
      001445 18               [12] 3760 	dec	r0
      001446 18               [12] 3761 	dec	r0
      001447 A7 02            [24] 3762 	mov	@r1,ar2
      001449 09               [12] 3763 	inc	r1
      00144A A7 03            [24] 3764 	mov	@r1,ar3
      00144C 09               [12] 3765 	inc	r1
      00144D A7 04            [24] 3766 	mov	@r1,ar4
      00144F 09               [12] 3767 	inc	r1
      001450 A7 05            [24] 3768 	mov	@r1,ar5
      001452 19               [12] 3769 	dec	r1
      001453 19               [12] 3770 	dec	r1
      001454 19               [12] 3771 	dec	r1
                                   3772 ;	main.c:711: round_in.Half[1] = cipher_text.Half[1];
      001455 C0 00            [24] 3773 	push	ar0
      001457 A8 07            [24] 3774 	mov	r0,ar7
      001459 86 02            [24] 3775 	mov	ar2,@r0
      00145B 08               [12] 3776 	inc	r0
      00145C 86 03            [24] 3777 	mov	ar3,@r0
      00145E 08               [12] 3778 	inc	r0
      00145F 86 04            [24] 3779 	mov	ar4,@r0
      001461 08               [12] 3780 	inc	r0
      001462 86 05            [24] 3781 	mov	ar5,@r0
      001464 E5 26            [12] 3782 	mov	a,_bp
      001466 24 0D            [12] 3783 	add	a,#0x0d
      001468 F8               [12] 3784 	mov	r0,a
      001469 86 00            [24] 3785 	mov	ar0,@r0
      00146B A6 02            [24] 3786 	mov	@r0,ar2
      00146D 08               [12] 3787 	inc	r0
      00146E A6 03            [24] 3788 	mov	@r0,ar3
      001470 08               [12] 3789 	inc	r0
      001471 A6 04            [24] 3790 	mov	@r0,ar4
      001473 08               [12] 3791 	inc	r0
      001474 A6 05            [24] 3792 	mov	@r0,ar5
      001476 18               [12] 3793 	dec	r0
      001477 18               [12] 3794 	dec	r0
      001478 18               [12] 3795 	dec	r0
      001479 D0 00            [24] 3796 	pop	ar0
                                   3797 ;	main.c:714: cipher_text.Half[0] = 0;
      00147B 76 00            [12] 3798 	mov	@r0,#0x00
      00147D 08               [12] 3799 	inc	r0
      00147E 76 00            [12] 3800 	mov	@r0,#0x00
      001480 08               [12] 3801 	inc	r0
      001481 76 00            [12] 3802 	mov	@r0,#0x00
      001483 08               [12] 3803 	inc	r0
      001484 76 00            [12] 3804 	mov	@r0,#0x00
      001486 18               [12] 3805 	dec	r0
      001487 18               [12] 3806 	dec	r0
      001488 18               [12] 3807 	dec	r0
                                   3808 ;	main.c:715: cipher_text.Half[1] = 0;
      001489 C0 00            [24] 3809 	push	ar0
      00148B A8 07            [24] 3810 	mov	r0,ar7
      00148D 76 00            [12] 3811 	mov	@r0,#0x00
      00148F 08               [12] 3812 	inc	r0
      001490 76 00            [12] 3813 	mov	@r0,#0x00
      001492 08               [12] 3814 	inc	r0
      001493 76 00            [12] 3815 	mov	@r0,#0x00
      001495 08               [12] 3816 	inc	r0
      001496 76 00            [12] 3817 	mov	@r0,#0x00
                                   3818 ;	main.c:690: for (round = 1 ; round < 17 ; round++){
      001498 E5 26            [12] 3819 	mov	a,_bp
      00149A 24 19            [12] 3820 	add	a,#0x19
      00149C F8               [12] 3821 	mov	r0,a
      00149D 06               [12] 3822 	inc	@r0
      00149E E5 26            [12] 3823 	mov	a,_bp
      0014A0 24 19            [12] 3824 	add	a,#0x19
      0014A2 F8               [12] 3825 	mov	r0,a
      0014A3 B6 11 00         [24] 3826 	cjne	@r0,#0x11,00385$
      0014A6                       3827 00385$:
      0014A6 D0 00            [24] 3828 	pop	ar0
      0014A8 D0 04            [24] 3829 	pop	ar4
      0014AA 50 03            [24] 3830 	jnc	00386$
      0014AC 02 11 E2         [24] 3831 	ljmp	00171$
      0014AF                       3832 00386$:
                                   3833 ;	main.c:717: pc2_in.Half[0] = round_in.Half[1];
      0014AF C0 00            [24] 3834 	push	ar0
      0014B1 E5 26            [12] 3835 	mov	a,_bp
      0014B3 24 0D            [12] 3836 	add	a,#0x0d
      0014B5 F8               [12] 3837 	mov	r0,a
      0014B6 86 00            [24] 3838 	mov	ar0,@r0
      0014B8 86 03            [24] 3839 	mov	ar3,@r0
      0014BA 08               [12] 3840 	inc	r0
      0014BB 86 05            [24] 3841 	mov	ar5,@r0
      0014BD 08               [12] 3842 	inc	r0
      0014BE 86 06            [24] 3843 	mov	ar6,@r0
      0014C0 08               [12] 3844 	inc	r0
      0014C1 86 07            [24] 3845 	mov	ar7,@r0
      0014C3 18               [12] 3846 	dec	r0
      0014C4 18               [12] 3847 	dec	r0
      0014C5 18               [12] 3848 	dec	r0
      0014C6 E5 26            [12] 3849 	mov	a,_bp
      0014C8 24 03            [12] 3850 	add	a,#0x03
      0014CA F8               [12] 3851 	mov	r0,a
      0014CB 86 00            [24] 3852 	mov	ar0,@r0
      0014CD A6 03            [24] 3853 	mov	@r0,ar3
      0014CF 08               [12] 3854 	inc	r0
      0014D0 A6 05            [24] 3855 	mov	@r0,ar5
      0014D2 08               [12] 3856 	inc	r0
      0014D3 A6 06            [24] 3857 	mov	@r0,ar6
      0014D5 08               [12] 3858 	inc	r0
      0014D6 A6 07            [24] 3859 	mov	@r0,ar7
      0014D8 18               [12] 3860 	dec	r0
      0014D9 18               [12] 3861 	dec	r0
      0014DA 18               [12] 3862 	dec	r0
      0014DB D0 00            [24] 3863 	pop	ar0
                                   3864 ;	main.c:718: pc2_in.Half[1] = round_in.Half[0];
      0014DD 87 03            [24] 3865 	mov	ar3,@r1
      0014DF 09               [12] 3866 	inc	r1
      0014E0 87 05            [24] 3867 	mov	ar5,@r1
      0014E2 09               [12] 3868 	inc	r1
      0014E3 87 06            [24] 3869 	mov	ar6,@r1
      0014E5 09               [12] 3870 	inc	r1
      0014E6 87 07            [24] 3871 	mov	ar7,@r1
      0014E8 19               [12] 3872 	dec	r1
      0014E9 19               [12] 3873 	dec	r1
      0014EA 19               [12] 3874 	dec	r1
      0014EB E5 26            [12] 3875 	mov	a,_bp
      0014ED 24 0A            [12] 3876 	add	a,#0x0a
      0014EF F9               [12] 3877 	mov	r1,a
      0014F0 87 01            [24] 3878 	mov	ar1,@r1
      0014F2 A7 03            [24] 3879 	mov	@r1,ar3
      0014F4 09               [12] 3880 	inc	r1
      0014F5 A7 05            [24] 3881 	mov	@r1,ar5
      0014F7 09               [12] 3882 	inc	r1
      0014F8 A7 06            [24] 3883 	mov	@r1,ar6
      0014FA 09               [12] 3884 	inc	r1
      0014FB A7 07            [24] 3885 	mov	@r1,ar7
      0014FD 19               [12] 3886 	dec	r1
      0014FE 19               [12] 3887 	dec	r1
      0014FF 19               [12] 3888 	dec	r1
                                   3889 ;	main.c:720: Permutation (&pc2_in,&cipher_text,Basic_Permutation,fp);
      001500 88 07            [24] 3890 	mov	ar7,r0
      001502 8F 06            [24] 3891 	mov	ar6,r7
      001504 7D 00            [12] 3892 	mov	r5,#0x00
      001506 7C 40            [12] 3893 	mov	r4,#0x40
      001508 E5 26            [12] 3894 	mov	a,_bp
      00150A 24 03            [12] 3895 	add	a,#0x03
      00150C F9               [12] 3896 	mov	r1,a
      00150D 87 03            [24] 3897 	mov	ar3,@r1
      00150F C0 00            [24] 3898 	push	ar0
      001511 8B 02            [24] 3899 	mov	ar2,r3
      001513 7B 00            [12] 3900 	mov	r3,#0x00
      001515 7F 40            [12] 3901 	mov	r7,#0x40
      001517 C0 00            [24] 3902 	push	ar0
      001519 74 A8            [12] 3903 	mov	a,#_fp
      00151B C0 E0            [24] 3904 	push	acc
      00151D 74 17            [12] 3905 	mov	a,#(_fp >> 8)
      00151F C0 E0            [24] 3906 	push	acc
      001521 74 80            [12] 3907 	mov	a,#0x80
      001523 C0 E0            [24] 3908 	push	acc
      001525 03               [12] 3909 	rr	a
      001526 C0 E0            [24] 3910 	push	acc
      001528 C0 06            [24] 3911 	push	ar6
      00152A C0 05            [24] 3912 	push	ar5
      00152C C0 04            [24] 3913 	push	ar4
      00152E 8A 82            [24] 3914 	mov	dpl,r2
      001530 8B 83            [24] 3915 	mov	dph,r3
      001532 8F F0            [24] 3916 	mov	b,r7
      001534 12 01 06         [24] 3917 	lcall	_Permutation
      001537 E5 81            [12] 3918 	mov	a,sp
      001539 24 F9            [12] 3919 	add	a,#0xf9
      00153B F5 81            [12] 3920 	mov	sp,a
      00153D D0 00            [24] 3921 	pop	ar0
                                   3922 ;	main.c:724: for (i=0 ; i<8;i++){
      00153F 75 18 00         [24] 3923 	mov	_i,#0x00
                                   3924 ;	main.c:746: for (i=0 ; i<8;i++){
      001542 D0 00            [24] 3925 	pop	ar0
                                   3926 ;	main.c:724: for (i=0 ; i<8;i++){
      001544                       3927 00173$:
                                   3928 ;	main.c:725: spi_transmit (cipher_text.Array[i]);
      001544 E5 18            [12] 3929 	mov	a,_i
      001546 28               [12] 3930 	add	a,r0
      001547 F9               [12] 3931 	mov	r1,a
      001548 87 82            [24] 3932 	mov	dpl,@r1
      00154A C0 00            [24] 3933 	push	ar0
      00154C 12 00 CE         [24] 3934 	lcall	_spi_transmit
      00154F D0 00            [24] 3935 	pop	ar0
                                   3936 ;	main.c:724: for (i=0 ; i<8;i++){
      001551 05 18            [12] 3937 	inc	_i
      001553 74 F8            [12] 3938 	mov	a,#0x100 - 0x08
      001555 25 18            [12] 3939 	add	a,_i
      001557 50 EB            [24] 3940 	jnc	00173$
                                   3941 ;	main.c:729: SBUF = '\n';
      001559 75 99 0A         [24] 3942 	mov	_SBUF,#0x0a
                                   3943 ;	main.c:730: while (0 == TI);
      00155C                       3944 00146$:
                                   3945 ;	main.c:731: TI = 0;
                                   3946 ;	assignBit
      00155C 10 99 02         [24] 3947 	jbc	_TI,00388$
      00155F 80 FB            [24] 3948 	sjmp	00146$
      001561                       3949 00388$:
                                   3950 ;	main.c:732: spi_delay();
      001561 C0 00            [24] 3951 	push	ar0
      001563 12 00 B3         [24] 3952 	lcall	_spi_delay
      001566 D0 00            [24] 3953 	pop	ar0
                                   3954 ;	main.c:733: SBUF = 'C';
      001568 75 99 43         [24] 3955 	mov	_SBUF,#0x43
                                   3956 ;	main.c:734: while (0 == TI);
      00156B                       3957 00149$:
                                   3958 ;	main.c:735: TI = 0;
                                   3959 ;	assignBit
      00156B 10 99 02         [24] 3960 	jbc	_TI,00389$
      00156E 80 FB            [24] 3961 	sjmp	00149$
      001570                       3962 00389$:
                                   3963 ;	main.c:736: SBUF = 'T';
      001570 75 99 54         [24] 3964 	mov	_SBUF,#0x54
                                   3965 ;	main.c:737: while (0 == TI);
      001573                       3966 00152$:
                                   3967 ;	main.c:738: TI = 0;
                                   3968 ;	assignBit
      001573 10 99 02         [24] 3969 	jbc	_TI,00390$
      001576 80 FB            [24] 3970 	sjmp	00152$
      001578                       3971 00390$:
                                   3972 ;	main.c:739: spi_delay();
      001578 C0 00            [24] 3973 	push	ar0
      00157A 12 00 B3         [24] 3974 	lcall	_spi_delay
      00157D D0 00            [24] 3975 	pop	ar0
                                   3976 ;	main.c:740: SBUF = ':';
      00157F 75 99 3A         [24] 3977 	mov	_SBUF,#0x3a
                                   3978 ;	main.c:741: while (0 == TI);
      001582                       3979 00155$:
                                   3980 ;	main.c:742: TI = 0;
                                   3981 ;	assignBit
      001582 10 99 02         [24] 3982 	jbc	_TI,00391$
      001585 80 FB            [24] 3983 	sjmp	00155$
      001587                       3984 00391$:
                                   3985 ;	main.c:743: spi_delay();
      001587 C0 00            [24] 3986 	push	ar0
      001589 12 00 B3         [24] 3987 	lcall	_spi_delay
                                   3988 ;	main.c:744: spi_delay();
      00158C 12 00 B3         [24] 3989 	lcall	_spi_delay
      00158F D0 00            [24] 3990 	pop	ar0
                                   3991 ;	main.c:746: for (i=0 ; i<8;i++){
      001591 75 18 00         [24] 3992 	mov	_i,#0x00
      001594                       3993 00175$:
                                   3994 ;	main.c:747: temp2 = cipher_text.Array[i] ;
      001594 E5 18            [12] 3995 	mov	a,_i
      001596 28               [12] 3996 	add	a,r0
      001597 F9               [12] 3997 	mov	r1,a
      001598 87 99            [24] 3998 	mov	_SBUF,@r1
                                   3999 ;	main.c:749: while(0==TI);
      00159A                       4000 00158$:
                                   4001 ;	main.c:750: TI=0;
                                   4002 ;	assignBit
      00159A 10 99 02         [24] 4003 	jbc	_TI,00392$
      00159D 80 FB            [24] 4004 	sjmp	00158$
      00159F                       4005 00392$:
                                   4006 ;	main.c:746: for (i=0 ; i<8;i++){
      00159F 05 18            [12] 4007 	inc	_i
      0015A1 74 F8            [12] 4008 	mov	a,#0x100 - 0x08
      0015A3 25 18            [12] 4009 	add	a,_i
      0015A5 50 ED            [24] 4010 	jnc	00175$
                                   4011 ;	main.c:752: spi_delay();
      0015A7 12 00 B3         [24] 4012 	lcall	_spi_delay
      0015AA 02 0F F3         [24] 4013 	ljmp	00163$
                                   4014 ;	main.c:756: return 0;
                                   4015 ;	main.c:757: }
      0015AD 85 26 81         [24] 4016 	mov	sp,_bp
      0015B0 D0 26            [24] 4017 	pop	_bp
      0015B2 22               [24] 4018 	ret
                                   4019 	.area CSEG    (CODE)
                                   4020 	.area CONST   (CODE)
      001700                       4021 _pc1:
      001700 39                    4022 	.db #0x39	; 57	'9'
      001701 31                    4023 	.db #0x31	; 49	'1'
      001702 29                    4024 	.db #0x29	; 41
      001703 21                    4025 	.db #0x21	; 33
      001704 19                    4026 	.db #0x19	; 25
      001705 11                    4027 	.db #0x11	; 17
      001706 09                    4028 	.db #0x09	; 9
      001707 01                    4029 	.db #0x01	; 1
      001708 3A                    4030 	.db #0x3a	; 58
      001709 32                    4031 	.db #0x32	; 50	'2'
      00170A 2A                    4032 	.db #0x2a	; 42
      00170B 22                    4033 	.db #0x22	; 34
      00170C 1A                    4034 	.db #0x1a	; 26
      00170D 12                    4035 	.db #0x12	; 18
      00170E 0A                    4036 	.db #0x0a	; 10
      00170F 02                    4037 	.db #0x02	; 2
      001710 3B                    4038 	.db #0x3b	; 59
      001711 33                    4039 	.db #0x33	; 51	'3'
      001712 2B                    4040 	.db #0x2b	; 43
      001713 23                    4041 	.db #0x23	; 35
      001714 1B                    4042 	.db #0x1b	; 27
      001715 13                    4043 	.db #0x13	; 19
      001716 0B                    4044 	.db #0x0b	; 11
      001717 03                    4045 	.db #0x03	; 3
      001718 3C                    4046 	.db #0x3c	; 60
      001719 34                    4047 	.db #0x34	; 52	'4'
      00171A 2C                    4048 	.db #0x2c	; 44
      00171B 24                    4049 	.db #0x24	; 36
      00171C 3F                    4050 	.db #0x3f	; 63
      00171D 37                    4051 	.db #0x37	; 55	'7'
      00171E 2F                    4052 	.db #0x2f	; 47
      00171F 27                    4053 	.db #0x27	; 39
      001720 1F                    4054 	.db #0x1f	; 31
      001721 17                    4055 	.db #0x17	; 23
      001722 0F                    4056 	.db #0x0f	; 15
      001723 07                    4057 	.db #0x07	; 7
      001724 3E                    4058 	.db #0x3e	; 62
      001725 36                    4059 	.db #0x36	; 54	'6'
      001726 2E                    4060 	.db #0x2e	; 46
      001727 26                    4061 	.db #0x26	; 38
      001728 1E                    4062 	.db #0x1e	; 30
      001729 16                    4063 	.db #0x16	; 22
      00172A 0E                    4064 	.db #0x0e	; 14
      00172B 06                    4065 	.db #0x06	; 6
      00172C 3D                    4066 	.db #0x3d	; 61
      00172D 35                    4067 	.db #0x35	; 53	'5'
      00172E 2D                    4068 	.db #0x2d	; 45
      00172F 25                    4069 	.db #0x25	; 37
      001730 1D                    4070 	.db #0x1d	; 29
      001731 15                    4071 	.db #0x15	; 21
      001732 0D                    4072 	.db #0x0d	; 13
      001733 05                    4073 	.db #0x05	; 5
      001734 1C                    4074 	.db #0x1c	; 28
      001735 14                    4075 	.db #0x14	; 20
      001736 0C                    4076 	.db #0x0c	; 12
      001737 04                    4077 	.db #0x04	; 4
      001738                       4078 _pc2:
      001738 0E                    4079 	.db #0x0e	; 14
      001739 11                    4080 	.db #0x11	; 17
      00173A 0B                    4081 	.db #0x0b	; 11
      00173B 18                    4082 	.db #0x18	; 24
      00173C 01                    4083 	.db #0x01	; 1
      00173D 05                    4084 	.db #0x05	; 5
      00173E 03                    4085 	.db #0x03	; 3
      00173F 1C                    4086 	.db #0x1c	; 28
      001740 0F                    4087 	.db #0x0f	; 15
      001741 06                    4088 	.db #0x06	; 6
      001742 15                    4089 	.db #0x15	; 21
      001743 0A                    4090 	.db #0x0a	; 10
      001744 17                    4091 	.db #0x17	; 23
      001745 13                    4092 	.db #0x13	; 19
      001746 0C                    4093 	.db #0x0c	; 12
      001747 04                    4094 	.db #0x04	; 4
      001748 1A                    4095 	.db #0x1a	; 26
      001749 08                    4096 	.db #0x08	; 8
      00174A 10                    4097 	.db #0x10	; 16
      00174B 07                    4098 	.db #0x07	; 7
      00174C 1B                    4099 	.db #0x1b	; 27
      00174D 14                    4100 	.db #0x14	; 20
      00174E 0D                    4101 	.db #0x0d	; 13
      00174F 02                    4102 	.db #0x02	; 2
      001750 29                    4103 	.db #0x29	; 41
      001751 34                    4104 	.db #0x34	; 52	'4'
      001752 1F                    4105 	.db #0x1f	; 31
      001753 25                    4106 	.db #0x25	; 37
      001754 2F                    4107 	.db #0x2f	; 47
      001755 37                    4108 	.db #0x37	; 55	'7'
      001756 1E                    4109 	.db #0x1e	; 30
      001757 28                    4110 	.db #0x28	; 40
      001758 33                    4111 	.db #0x33	; 51	'3'
      001759 2D                    4112 	.db #0x2d	; 45
      00175A 21                    4113 	.db #0x21	; 33
      00175B 30                    4114 	.db #0x30	; 48	'0'
      00175C 2C                    4115 	.db #0x2c	; 44
      00175D 31                    4116 	.db #0x31	; 49	'1'
      00175E 27                    4117 	.db #0x27	; 39
      00175F 38                    4118 	.db #0x38	; 56	'8'
      001760 22                    4119 	.db #0x22	; 34
      001761 35                    4120 	.db #0x35	; 53	'5'
      001762 2E                    4121 	.db #0x2e	; 46
      001763 2A                    4122 	.db #0x2a	; 42
      001764 32                    4123 	.db #0x32	; 50	'2'
      001765 24                    4124 	.db #0x24	; 36
      001766 1D                    4125 	.db #0x1d	; 29
      001767 20                    4126 	.db #0x20	; 32
      001768                       4127 _ip:
      001768 3A                    4128 	.db #0x3a	; 58
      001769 32                    4129 	.db #0x32	; 50	'2'
      00176A 2A                    4130 	.db #0x2a	; 42
      00176B 22                    4131 	.db #0x22	; 34
      00176C 1A                    4132 	.db #0x1a	; 26
      00176D 12                    4133 	.db #0x12	; 18
      00176E 0A                    4134 	.db #0x0a	; 10
      00176F 02                    4135 	.db #0x02	; 2
      001770 3C                    4136 	.db #0x3c	; 60
      001771 34                    4137 	.db #0x34	; 52	'4'
      001772 2C                    4138 	.db #0x2c	; 44
      001773 24                    4139 	.db #0x24	; 36
      001774 1C                    4140 	.db #0x1c	; 28
      001775 14                    4141 	.db #0x14	; 20
      001776 0C                    4142 	.db #0x0c	; 12
      001777 04                    4143 	.db #0x04	; 4
      001778 3E                    4144 	.db #0x3e	; 62
      001779 36                    4145 	.db #0x36	; 54	'6'
      00177A 2E                    4146 	.db #0x2e	; 46
      00177B 26                    4147 	.db #0x26	; 38
      00177C 1E                    4148 	.db #0x1e	; 30
      00177D 16                    4149 	.db #0x16	; 22
      00177E 0E                    4150 	.db #0x0e	; 14
      00177F 06                    4151 	.db #0x06	; 6
      001780 40                    4152 	.db #0x40	; 64
      001781 38                    4153 	.db #0x38	; 56	'8'
      001782 30                    4154 	.db #0x30	; 48	'0'
      001783 28                    4155 	.db #0x28	; 40
      001784 20                    4156 	.db #0x20	; 32
      001785 18                    4157 	.db #0x18	; 24
      001786 10                    4158 	.db #0x10	; 16
      001787 08                    4159 	.db #0x08	; 8
      001788 39                    4160 	.db #0x39	; 57	'9'
      001789 31                    4161 	.db #0x31	; 49	'1'
      00178A 29                    4162 	.db #0x29	; 41
      00178B 21                    4163 	.db #0x21	; 33
      00178C 19                    4164 	.db #0x19	; 25
      00178D 11                    4165 	.db #0x11	; 17
      00178E 09                    4166 	.db #0x09	; 9
      00178F 01                    4167 	.db #0x01	; 1
      001790 3B                    4168 	.db #0x3b	; 59
      001791 33                    4169 	.db #0x33	; 51	'3'
      001792 2B                    4170 	.db #0x2b	; 43
      001793 23                    4171 	.db #0x23	; 35
      001794 1B                    4172 	.db #0x1b	; 27
      001795 13                    4173 	.db #0x13	; 19
      001796 0B                    4174 	.db #0x0b	; 11
      001797 03                    4175 	.db #0x03	; 3
      001798 3D                    4176 	.db #0x3d	; 61
      001799 35                    4177 	.db #0x35	; 53	'5'
      00179A 2D                    4178 	.db #0x2d	; 45
      00179B 25                    4179 	.db #0x25	; 37
      00179C 1D                    4180 	.db #0x1d	; 29
      00179D 15                    4181 	.db #0x15	; 21
      00179E 0D                    4182 	.db #0x0d	; 13
      00179F 05                    4183 	.db #0x05	; 5
      0017A0 3F                    4184 	.db #0x3f	; 63
      0017A1 37                    4185 	.db #0x37	; 55	'7'
      0017A2 2F                    4186 	.db #0x2f	; 47
      0017A3 27                    4187 	.db #0x27	; 39
      0017A4 1F                    4188 	.db #0x1f	; 31
      0017A5 17                    4189 	.db #0x17	; 23
      0017A6 0F                    4190 	.db #0x0f	; 15
      0017A7 07                    4191 	.db #0x07	; 7
      0017A8                       4192 _fp:
      0017A8 28                    4193 	.db #0x28	; 40
      0017A9 08                    4194 	.db #0x08	; 8
      0017AA 30                    4195 	.db #0x30	; 48	'0'
      0017AB 10                    4196 	.db #0x10	; 16
      0017AC 38                    4197 	.db #0x38	; 56	'8'
      0017AD 18                    4198 	.db #0x18	; 24
      0017AE 40                    4199 	.db #0x40	; 64
      0017AF 20                    4200 	.db #0x20	; 32
      0017B0 27                    4201 	.db #0x27	; 39
      0017B1 07                    4202 	.db #0x07	; 7
      0017B2 2F                    4203 	.db #0x2f	; 47
      0017B3 0F                    4204 	.db #0x0f	; 15
      0017B4 37                    4205 	.db #0x37	; 55	'7'
      0017B5 17                    4206 	.db #0x17	; 23
      0017B6 3F                    4207 	.db #0x3f	; 63
      0017B7 1F                    4208 	.db #0x1f	; 31
      0017B8 26                    4209 	.db #0x26	; 38
      0017B9 06                    4210 	.db #0x06	; 6
      0017BA 2E                    4211 	.db #0x2e	; 46
      0017BB 0E                    4212 	.db #0x0e	; 14
      0017BC 36                    4213 	.db #0x36	; 54	'6'
      0017BD 16                    4214 	.db #0x16	; 22
      0017BE 3E                    4215 	.db #0x3e	; 62
      0017BF 1E                    4216 	.db #0x1e	; 30
      0017C0 25                    4217 	.db #0x25	; 37
      0017C1 05                    4218 	.db #0x05	; 5
      0017C2 2D                    4219 	.db #0x2d	; 45
      0017C3 0D                    4220 	.db #0x0d	; 13
      0017C4 35                    4221 	.db #0x35	; 53	'5'
      0017C5 15                    4222 	.db #0x15	; 21
      0017C6 3D                    4223 	.db #0x3d	; 61
      0017C7 1D                    4224 	.db #0x1d	; 29
      0017C8 24                    4225 	.db #0x24	; 36
      0017C9 04                    4226 	.db #0x04	; 4
      0017CA 2C                    4227 	.db #0x2c	; 44
      0017CB 0C                    4228 	.db #0x0c	; 12
      0017CC 34                    4229 	.db #0x34	; 52	'4'
      0017CD 14                    4230 	.db #0x14	; 20
      0017CE 3C                    4231 	.db #0x3c	; 60
      0017CF 1C                    4232 	.db #0x1c	; 28
      0017D0 23                    4233 	.db #0x23	; 35
      0017D1 03                    4234 	.db #0x03	; 3
      0017D2 2B                    4235 	.db #0x2b	; 43
      0017D3 0B                    4236 	.db #0x0b	; 11
      0017D4 33                    4237 	.db #0x33	; 51	'3'
      0017D5 13                    4238 	.db #0x13	; 19
      0017D6 3B                    4239 	.db #0x3b	; 59
      0017D7 1B                    4240 	.db #0x1b	; 27
      0017D8 22                    4241 	.db #0x22	; 34
      0017D9 02                    4242 	.db #0x02	; 2
      0017DA 2A                    4243 	.db #0x2a	; 42
      0017DB 0A                    4244 	.db #0x0a	; 10
      0017DC 32                    4245 	.db #0x32	; 50	'2'
      0017DD 12                    4246 	.db #0x12	; 18
      0017DE 3A                    4247 	.db #0x3a	; 58
      0017DF 1A                    4248 	.db #0x1a	; 26
      0017E0 21                    4249 	.db #0x21	; 33
      0017E1 01                    4250 	.db #0x01	; 1
      0017E2 29                    4251 	.db #0x29	; 41
      0017E3 09                    4252 	.db #0x09	; 9
      0017E4 31                    4253 	.db #0x31	; 49	'1'
      0017E5 11                    4254 	.db #0x11	; 17
      0017E6 39                    4255 	.db #0x39	; 57	'9'
      0017E7 19                    4256 	.db #0x19	; 25
      0017E8                       4257 _s1:
      0017E8 0E                    4258 	.db #0x0e	; 14
      0017E9 04                    4259 	.db #0x04	; 4
      0017EA 0D                    4260 	.db #0x0d	; 13
      0017EB 01                    4261 	.db #0x01	; 1
      0017EC 02                    4262 	.db #0x02	; 2
      0017ED 0F                    4263 	.db #0x0f	; 15
      0017EE 0B                    4264 	.db #0x0b	; 11
      0017EF 08                    4265 	.db #0x08	; 8
      0017F0 03                    4266 	.db #0x03	; 3
      0017F1 0A                    4267 	.db #0x0a	; 10
      0017F2 06                    4268 	.db #0x06	; 6
      0017F3 0C                    4269 	.db #0x0c	; 12
      0017F4 05                    4270 	.db #0x05	; 5
      0017F5 09                    4271 	.db #0x09	; 9
      0017F6 00                    4272 	.db #0x00	; 0
      0017F7 07                    4273 	.db #0x07	; 7
      0017F8 00                    4274 	.db #0x00	; 0
      0017F9 0F                    4275 	.db #0x0f	; 15
      0017FA 07                    4276 	.db #0x07	; 7
      0017FB 04                    4277 	.db #0x04	; 4
      0017FC 0E                    4278 	.db #0x0e	; 14
      0017FD 02                    4279 	.db #0x02	; 2
      0017FE 0D                    4280 	.db #0x0d	; 13
      0017FF 01                    4281 	.db #0x01	; 1
      001800 0A                    4282 	.db #0x0a	; 10
      001801 06                    4283 	.db #0x06	; 6
      001802 0C                    4284 	.db #0x0c	; 12
      001803 0B                    4285 	.db #0x0b	; 11
      001804 09                    4286 	.db #0x09	; 9
      001805 05                    4287 	.db #0x05	; 5
      001806 03                    4288 	.db #0x03	; 3
      001807 08                    4289 	.db #0x08	; 8
      001808 04                    4290 	.db #0x04	; 4
      001809 01                    4291 	.db #0x01	; 1
      00180A 0E                    4292 	.db #0x0e	; 14
      00180B 08                    4293 	.db #0x08	; 8
      00180C 0D                    4294 	.db #0x0d	; 13
      00180D 06                    4295 	.db #0x06	; 6
      00180E 02                    4296 	.db #0x02	; 2
      00180F 0B                    4297 	.db #0x0b	; 11
      001810 0F                    4298 	.db #0x0f	; 15
      001811 0C                    4299 	.db #0x0c	; 12
      001812 09                    4300 	.db #0x09	; 9
      001813 07                    4301 	.db #0x07	; 7
      001814 03                    4302 	.db #0x03	; 3
      001815 0A                    4303 	.db #0x0a	; 10
      001816 05                    4304 	.db #0x05	; 5
      001817 00                    4305 	.db #0x00	; 0
      001818 0F                    4306 	.db #0x0f	; 15
      001819 0C                    4307 	.db #0x0c	; 12
      00181A 08                    4308 	.db #0x08	; 8
      00181B 02                    4309 	.db #0x02	; 2
      00181C 04                    4310 	.db #0x04	; 4
      00181D 09                    4311 	.db #0x09	; 9
      00181E 01                    4312 	.db #0x01	; 1
      00181F 07                    4313 	.db #0x07	; 7
      001820 05                    4314 	.db #0x05	; 5
      001821 0B                    4315 	.db #0x0b	; 11
      001822 03                    4316 	.db #0x03	; 3
      001823 0E                    4317 	.db #0x0e	; 14
      001824 0A                    4318 	.db #0x0a	; 10
      001825 00                    4319 	.db #0x00	; 0
      001826 06                    4320 	.db #0x06	; 6
      001827 0D                    4321 	.db #0x0d	; 13
      001828                       4322 _s2:
      001828 0F                    4323 	.db #0x0f	; 15
      001829 01                    4324 	.db #0x01	; 1
      00182A 08                    4325 	.db #0x08	; 8
      00182B 0E                    4326 	.db #0x0e	; 14
      00182C 06                    4327 	.db #0x06	; 6
      00182D 0B                    4328 	.db #0x0b	; 11
      00182E 03                    4329 	.db #0x03	; 3
      00182F 04                    4330 	.db #0x04	; 4
      001830 09                    4331 	.db #0x09	; 9
      001831 07                    4332 	.db #0x07	; 7
      001832 02                    4333 	.db #0x02	; 2
      001833 0D                    4334 	.db #0x0d	; 13
      001834 0C                    4335 	.db #0x0c	; 12
      001835 00                    4336 	.db #0x00	; 0
      001836 05                    4337 	.db #0x05	; 5
      001837 0A                    4338 	.db #0x0a	; 10
      001838 03                    4339 	.db #0x03	; 3
      001839 0D                    4340 	.db #0x0d	; 13
      00183A 04                    4341 	.db #0x04	; 4
      00183B 07                    4342 	.db #0x07	; 7
      00183C 0F                    4343 	.db #0x0f	; 15
      00183D 02                    4344 	.db #0x02	; 2
      00183E 08                    4345 	.db #0x08	; 8
      00183F 0E                    4346 	.db #0x0e	; 14
      001840 0C                    4347 	.db #0x0c	; 12
      001841 00                    4348 	.db #0x00	; 0
      001842 01                    4349 	.db #0x01	; 1
      001843 0A                    4350 	.db #0x0a	; 10
      001844 06                    4351 	.db #0x06	; 6
      001845 09                    4352 	.db #0x09	; 9
      001846 0B                    4353 	.db #0x0b	; 11
      001847 05                    4354 	.db #0x05	; 5
      001848 00                    4355 	.db #0x00	; 0
      001849 0E                    4356 	.db #0x0e	; 14
      00184A 07                    4357 	.db #0x07	; 7
      00184B 0B                    4358 	.db #0x0b	; 11
      00184C 0A                    4359 	.db #0x0a	; 10
      00184D 04                    4360 	.db #0x04	; 4
      00184E 0D                    4361 	.db #0x0d	; 13
      00184F 01                    4362 	.db #0x01	; 1
      001850 05                    4363 	.db #0x05	; 5
      001851 08                    4364 	.db #0x08	; 8
      001852 0C                    4365 	.db #0x0c	; 12
      001853 06                    4366 	.db #0x06	; 6
      001854 09                    4367 	.db #0x09	; 9
      001855 03                    4368 	.db #0x03	; 3
      001856 02                    4369 	.db #0x02	; 2
      001857 0F                    4370 	.db #0x0f	; 15
      001858 0D                    4371 	.db #0x0d	; 13
      001859 08                    4372 	.db #0x08	; 8
      00185A 0A                    4373 	.db #0x0a	; 10
      00185B 01                    4374 	.db #0x01	; 1
      00185C 03                    4375 	.db #0x03	; 3
      00185D 0F                    4376 	.db #0x0f	; 15
      00185E 04                    4377 	.db #0x04	; 4
      00185F 02                    4378 	.db #0x02	; 2
      001860 0B                    4379 	.db #0x0b	; 11
      001861 06                    4380 	.db #0x06	; 6
      001862 07                    4381 	.db #0x07	; 7
      001863 0C                    4382 	.db #0x0c	; 12
      001864 00                    4383 	.db #0x00	; 0
      001865 05                    4384 	.db #0x05	; 5
      001866 0E                    4385 	.db #0x0e	; 14
      001867 09                    4386 	.db #0x09	; 9
      001868                       4387 _s3:
      001868 0A                    4388 	.db #0x0a	; 10
      001869 00                    4389 	.db #0x00	; 0
      00186A 09                    4390 	.db #0x09	; 9
      00186B 0E                    4391 	.db #0x0e	; 14
      00186C 06                    4392 	.db #0x06	; 6
      00186D 03                    4393 	.db #0x03	; 3
      00186E 0F                    4394 	.db #0x0f	; 15
      00186F 05                    4395 	.db #0x05	; 5
      001870 01                    4396 	.db #0x01	; 1
      001871 0D                    4397 	.db #0x0d	; 13
      001872 0C                    4398 	.db #0x0c	; 12
      001873 07                    4399 	.db #0x07	; 7
      001874 0B                    4400 	.db #0x0b	; 11
      001875 04                    4401 	.db #0x04	; 4
      001876 02                    4402 	.db #0x02	; 2
      001877 08                    4403 	.db #0x08	; 8
      001878 0D                    4404 	.db #0x0d	; 13
      001879 07                    4405 	.db #0x07	; 7
      00187A 00                    4406 	.db #0x00	; 0
      00187B 09                    4407 	.db #0x09	; 9
      00187C 03                    4408 	.db #0x03	; 3
      00187D 04                    4409 	.db #0x04	; 4
      00187E 06                    4410 	.db #0x06	; 6
      00187F 0A                    4411 	.db #0x0a	; 10
      001880 02                    4412 	.db #0x02	; 2
      001881 08                    4413 	.db #0x08	; 8
      001882 05                    4414 	.db #0x05	; 5
      001883 0E                    4415 	.db #0x0e	; 14
      001884 0C                    4416 	.db #0x0c	; 12
      001885 0B                    4417 	.db #0x0b	; 11
      001886 0F                    4418 	.db #0x0f	; 15
      001887 01                    4419 	.db #0x01	; 1
      001888 0D                    4420 	.db #0x0d	; 13
      001889 06                    4421 	.db #0x06	; 6
      00188A 04                    4422 	.db #0x04	; 4
      00188B 09                    4423 	.db #0x09	; 9
      00188C 08                    4424 	.db #0x08	; 8
      00188D 0F                    4425 	.db #0x0f	; 15
      00188E 03                    4426 	.db #0x03	; 3
      00188F 00                    4427 	.db #0x00	; 0
      001890 0B                    4428 	.db #0x0b	; 11
      001891 01                    4429 	.db #0x01	; 1
      001892 02                    4430 	.db #0x02	; 2
      001893 0C                    4431 	.db #0x0c	; 12
      001894 05                    4432 	.db #0x05	; 5
      001895 0A                    4433 	.db #0x0a	; 10
      001896 0E                    4434 	.db #0x0e	; 14
      001897 07                    4435 	.db #0x07	; 7
      001898 01                    4436 	.db #0x01	; 1
      001899 0A                    4437 	.db #0x0a	; 10
      00189A 0D                    4438 	.db #0x0d	; 13
      00189B 00                    4439 	.db #0x00	; 0
      00189C 06                    4440 	.db #0x06	; 6
      00189D 09                    4441 	.db #0x09	; 9
      00189E 08                    4442 	.db #0x08	; 8
      00189F 07                    4443 	.db #0x07	; 7
      0018A0 04                    4444 	.db #0x04	; 4
      0018A1 0F                    4445 	.db #0x0f	; 15
      0018A2 0E                    4446 	.db #0x0e	; 14
      0018A3 03                    4447 	.db #0x03	; 3
      0018A4 0B                    4448 	.db #0x0b	; 11
      0018A5 05                    4449 	.db #0x05	; 5
      0018A6 02                    4450 	.db #0x02	; 2
      0018A7 0C                    4451 	.db #0x0c	; 12
      0018A8                       4452 _s4:
      0018A8 07                    4453 	.db #0x07	; 7
      0018A9 0D                    4454 	.db #0x0d	; 13
      0018AA 0E                    4455 	.db #0x0e	; 14
      0018AB 03                    4456 	.db #0x03	; 3
      0018AC 00                    4457 	.db #0x00	; 0
      0018AD 06                    4458 	.db #0x06	; 6
      0018AE 09                    4459 	.db #0x09	; 9
      0018AF 0A                    4460 	.db #0x0a	; 10
      0018B0 01                    4461 	.db #0x01	; 1
      0018B1 02                    4462 	.db #0x02	; 2
      0018B2 08                    4463 	.db #0x08	; 8
      0018B3 05                    4464 	.db #0x05	; 5
      0018B4 0B                    4465 	.db #0x0b	; 11
      0018B5 0C                    4466 	.db #0x0c	; 12
      0018B6 04                    4467 	.db #0x04	; 4
      0018B7 0F                    4468 	.db #0x0f	; 15
      0018B8 0D                    4469 	.db #0x0d	; 13
      0018B9 08                    4470 	.db #0x08	; 8
      0018BA 0B                    4471 	.db #0x0b	; 11
      0018BB 05                    4472 	.db #0x05	; 5
      0018BC 06                    4473 	.db #0x06	; 6
      0018BD 0F                    4474 	.db #0x0f	; 15
      0018BE 00                    4475 	.db #0x00	; 0
      0018BF 03                    4476 	.db #0x03	; 3
      0018C0 04                    4477 	.db #0x04	; 4
      0018C1 07                    4478 	.db #0x07	; 7
      0018C2 02                    4479 	.db #0x02	; 2
      0018C3 0C                    4480 	.db #0x0c	; 12
      0018C4 01                    4481 	.db #0x01	; 1
      0018C5 0A                    4482 	.db #0x0a	; 10
      0018C6 0E                    4483 	.db #0x0e	; 14
      0018C7 09                    4484 	.db #0x09	; 9
      0018C8 0A                    4485 	.db #0x0a	; 10
      0018C9 06                    4486 	.db #0x06	; 6
      0018CA 09                    4487 	.db #0x09	; 9
      0018CB 00                    4488 	.db #0x00	; 0
      0018CC 0C                    4489 	.db #0x0c	; 12
      0018CD 0B                    4490 	.db #0x0b	; 11
      0018CE 07                    4491 	.db #0x07	; 7
      0018CF 0D                    4492 	.db #0x0d	; 13
      0018D0 0F                    4493 	.db #0x0f	; 15
      0018D1 01                    4494 	.db #0x01	; 1
      0018D2 03                    4495 	.db #0x03	; 3
      0018D3 0E                    4496 	.db #0x0e	; 14
      0018D4 05                    4497 	.db #0x05	; 5
      0018D5 02                    4498 	.db #0x02	; 2
      0018D6 08                    4499 	.db #0x08	; 8
      0018D7 04                    4500 	.db #0x04	; 4
      0018D8 03                    4501 	.db #0x03	; 3
      0018D9 0F                    4502 	.db #0x0f	; 15
      0018DA 00                    4503 	.db #0x00	; 0
      0018DB 06                    4504 	.db #0x06	; 6
      0018DC 0A                    4505 	.db #0x0a	; 10
      0018DD 01                    4506 	.db #0x01	; 1
      0018DE 0D                    4507 	.db #0x0d	; 13
      0018DF 08                    4508 	.db #0x08	; 8
      0018E0 09                    4509 	.db #0x09	; 9
      0018E1 04                    4510 	.db #0x04	; 4
      0018E2 05                    4511 	.db #0x05	; 5
      0018E3 0B                    4512 	.db #0x0b	; 11
      0018E4 0C                    4513 	.db #0x0c	; 12
      0018E5 07                    4514 	.db #0x07	; 7
      0018E6 02                    4515 	.db #0x02	; 2
      0018E7 0E                    4516 	.db #0x0e	; 14
      0018E8                       4517 _s5:
      0018E8 02                    4518 	.db #0x02	; 2
      0018E9 0C                    4519 	.db #0x0c	; 12
      0018EA 04                    4520 	.db #0x04	; 4
      0018EB 01                    4521 	.db #0x01	; 1
      0018EC 07                    4522 	.db #0x07	; 7
      0018ED 0A                    4523 	.db #0x0a	; 10
      0018EE 0B                    4524 	.db #0x0b	; 11
      0018EF 06                    4525 	.db #0x06	; 6
      0018F0 08                    4526 	.db #0x08	; 8
      0018F1 05                    4527 	.db #0x05	; 5
      0018F2 03                    4528 	.db #0x03	; 3
      0018F3 0F                    4529 	.db #0x0f	; 15
      0018F4 0D                    4530 	.db #0x0d	; 13
      0018F5 00                    4531 	.db #0x00	; 0
      0018F6 0E                    4532 	.db #0x0e	; 14
      0018F7 09                    4533 	.db #0x09	; 9
      0018F8 0E                    4534 	.db #0x0e	; 14
      0018F9 0B                    4535 	.db #0x0b	; 11
      0018FA 02                    4536 	.db #0x02	; 2
      0018FB 0C                    4537 	.db #0x0c	; 12
      0018FC 04                    4538 	.db #0x04	; 4
      0018FD 07                    4539 	.db #0x07	; 7
      0018FE 0D                    4540 	.db #0x0d	; 13
      0018FF 01                    4541 	.db #0x01	; 1
      001900 05                    4542 	.db #0x05	; 5
      001901 00                    4543 	.db #0x00	; 0
      001902 0F                    4544 	.db #0x0f	; 15
      001903 0A                    4545 	.db #0x0a	; 10
      001904 03                    4546 	.db #0x03	; 3
      001905 09                    4547 	.db #0x09	; 9
      001906 08                    4548 	.db #0x08	; 8
      001907 06                    4549 	.db #0x06	; 6
      001908 04                    4550 	.db #0x04	; 4
      001909 02                    4551 	.db #0x02	; 2
      00190A 01                    4552 	.db #0x01	; 1
      00190B 0B                    4553 	.db #0x0b	; 11
      00190C 0A                    4554 	.db #0x0a	; 10
      00190D 0D                    4555 	.db #0x0d	; 13
      00190E 07                    4556 	.db #0x07	; 7
      00190F 08                    4557 	.db #0x08	; 8
      001910 0F                    4558 	.db #0x0f	; 15
      001911 09                    4559 	.db #0x09	; 9
      001912 0C                    4560 	.db #0x0c	; 12
      001913 05                    4561 	.db #0x05	; 5
      001914 06                    4562 	.db #0x06	; 6
      001915 03                    4563 	.db #0x03	; 3
      001916 00                    4564 	.db #0x00	; 0
      001917 0E                    4565 	.db #0x0e	; 14
      001918 0B                    4566 	.db #0x0b	; 11
      001919 08                    4567 	.db #0x08	; 8
      00191A 0C                    4568 	.db #0x0c	; 12
      00191B 07                    4569 	.db #0x07	; 7
      00191C 01                    4570 	.db #0x01	; 1
      00191D 0E                    4571 	.db #0x0e	; 14
      00191E 02                    4572 	.db #0x02	; 2
      00191F 0D                    4573 	.db #0x0d	; 13
      001920 06                    4574 	.db #0x06	; 6
      001921 0F                    4575 	.db #0x0f	; 15
      001922 00                    4576 	.db #0x00	; 0
      001923 09                    4577 	.db #0x09	; 9
      001924 0A                    4578 	.db #0x0a	; 10
      001925 04                    4579 	.db #0x04	; 4
      001926 05                    4580 	.db #0x05	; 5
      001927 03                    4581 	.db #0x03	; 3
      001928                       4582 _s6:
      001928 0C                    4583 	.db #0x0c	; 12
      001929 01                    4584 	.db #0x01	; 1
      00192A 0A                    4585 	.db #0x0a	; 10
      00192B 0F                    4586 	.db #0x0f	; 15
      00192C 09                    4587 	.db #0x09	; 9
      00192D 02                    4588 	.db #0x02	; 2
      00192E 06                    4589 	.db #0x06	; 6
      00192F 08                    4590 	.db #0x08	; 8
      001930 00                    4591 	.db #0x00	; 0
      001931 0D                    4592 	.db #0x0d	; 13
      001932 03                    4593 	.db #0x03	; 3
      001933 04                    4594 	.db #0x04	; 4
      001934 0E                    4595 	.db #0x0e	; 14
      001935 07                    4596 	.db #0x07	; 7
      001936 05                    4597 	.db #0x05	; 5
      001937 0B                    4598 	.db #0x0b	; 11
      001938 0A                    4599 	.db #0x0a	; 10
      001939 0F                    4600 	.db #0x0f	; 15
      00193A 04                    4601 	.db #0x04	; 4
      00193B 02                    4602 	.db #0x02	; 2
      00193C 07                    4603 	.db #0x07	; 7
      00193D 0C                    4604 	.db #0x0c	; 12
      00193E 09                    4605 	.db #0x09	; 9
      00193F 05                    4606 	.db #0x05	; 5
      001940 06                    4607 	.db #0x06	; 6
      001941 01                    4608 	.db #0x01	; 1
      001942 0D                    4609 	.db #0x0d	; 13
      001943 0E                    4610 	.db #0x0e	; 14
      001944 00                    4611 	.db #0x00	; 0
      001945 0B                    4612 	.db #0x0b	; 11
      001946 03                    4613 	.db #0x03	; 3
      001947 08                    4614 	.db #0x08	; 8
      001948 09                    4615 	.db #0x09	; 9
      001949 0E                    4616 	.db #0x0e	; 14
      00194A 0F                    4617 	.db #0x0f	; 15
      00194B 05                    4618 	.db #0x05	; 5
      00194C 02                    4619 	.db #0x02	; 2
      00194D 08                    4620 	.db #0x08	; 8
      00194E 0C                    4621 	.db #0x0c	; 12
      00194F 03                    4622 	.db #0x03	; 3
      001950 07                    4623 	.db #0x07	; 7
      001951 00                    4624 	.db #0x00	; 0
      001952 04                    4625 	.db #0x04	; 4
      001953 0A                    4626 	.db #0x0a	; 10
      001954 01                    4627 	.db #0x01	; 1
      001955 0D                    4628 	.db #0x0d	; 13
      001956 0B                    4629 	.db #0x0b	; 11
      001957 06                    4630 	.db #0x06	; 6
      001958 04                    4631 	.db #0x04	; 4
      001959 03                    4632 	.db #0x03	; 3
      00195A 02                    4633 	.db #0x02	; 2
      00195B 0C                    4634 	.db #0x0c	; 12
      00195C 09                    4635 	.db #0x09	; 9
      00195D 05                    4636 	.db #0x05	; 5
      00195E 0F                    4637 	.db #0x0f	; 15
      00195F 0A                    4638 	.db #0x0a	; 10
      001960 0B                    4639 	.db #0x0b	; 11
      001961 0E                    4640 	.db #0x0e	; 14
      001962 01                    4641 	.db #0x01	; 1
      001963 07                    4642 	.db #0x07	; 7
      001964 06                    4643 	.db #0x06	; 6
      001965 00                    4644 	.db #0x00	; 0
      001966 08                    4645 	.db #0x08	; 8
      001967 0D                    4646 	.db #0x0d	; 13
      001968                       4647 _s7:
      001968 04                    4648 	.db #0x04	; 4
      001969 0B                    4649 	.db #0x0b	; 11
      00196A 02                    4650 	.db #0x02	; 2
      00196B 0E                    4651 	.db #0x0e	; 14
      00196C 0F                    4652 	.db #0x0f	; 15
      00196D 00                    4653 	.db #0x00	; 0
      00196E 08                    4654 	.db #0x08	; 8
      00196F 0D                    4655 	.db #0x0d	; 13
      001970 03                    4656 	.db #0x03	; 3
      001971 0C                    4657 	.db #0x0c	; 12
      001972 09                    4658 	.db #0x09	; 9
      001973 07                    4659 	.db #0x07	; 7
      001974 05                    4660 	.db #0x05	; 5
      001975 0A                    4661 	.db #0x0a	; 10
      001976 06                    4662 	.db #0x06	; 6
      001977 01                    4663 	.db #0x01	; 1
      001978 0D                    4664 	.db #0x0d	; 13
      001979 00                    4665 	.db #0x00	; 0
      00197A 0B                    4666 	.db #0x0b	; 11
      00197B 07                    4667 	.db #0x07	; 7
      00197C 04                    4668 	.db #0x04	; 4
      00197D 09                    4669 	.db #0x09	; 9
      00197E 01                    4670 	.db #0x01	; 1
      00197F 0A                    4671 	.db #0x0a	; 10
      001980 0E                    4672 	.db #0x0e	; 14
      001981 03                    4673 	.db #0x03	; 3
      001982 05                    4674 	.db #0x05	; 5
      001983 0C                    4675 	.db #0x0c	; 12
      001984 02                    4676 	.db #0x02	; 2
      001985 0F                    4677 	.db #0x0f	; 15
      001986 08                    4678 	.db #0x08	; 8
      001987 06                    4679 	.db #0x06	; 6
      001988 01                    4680 	.db #0x01	; 1
      001989 04                    4681 	.db #0x04	; 4
      00198A 0B                    4682 	.db #0x0b	; 11
      00198B 0D                    4683 	.db #0x0d	; 13
      00198C 0C                    4684 	.db #0x0c	; 12
      00198D 03                    4685 	.db #0x03	; 3
      00198E 07                    4686 	.db #0x07	; 7
      00198F 0E                    4687 	.db #0x0e	; 14
      001990 0A                    4688 	.db #0x0a	; 10
      001991 0F                    4689 	.db #0x0f	; 15
      001992 06                    4690 	.db #0x06	; 6
      001993 08                    4691 	.db #0x08	; 8
      001994 00                    4692 	.db #0x00	; 0
      001995 05                    4693 	.db #0x05	; 5
      001996 09                    4694 	.db #0x09	; 9
      001997 02                    4695 	.db #0x02	; 2
      001998 06                    4696 	.db #0x06	; 6
      001999 0B                    4697 	.db #0x0b	; 11
      00199A 0D                    4698 	.db #0x0d	; 13
      00199B 08                    4699 	.db #0x08	; 8
      00199C 01                    4700 	.db #0x01	; 1
      00199D 04                    4701 	.db #0x04	; 4
      00199E 0A                    4702 	.db #0x0a	; 10
      00199F 07                    4703 	.db #0x07	; 7
      0019A0 09                    4704 	.db #0x09	; 9
      0019A1 05                    4705 	.db #0x05	; 5
      0019A2 00                    4706 	.db #0x00	; 0
      0019A3 0F                    4707 	.db #0x0f	; 15
      0019A4 0E                    4708 	.db #0x0e	; 14
      0019A5 02                    4709 	.db #0x02	; 2
      0019A6 03                    4710 	.db #0x03	; 3
      0019A7 0C                    4711 	.db #0x0c	; 12
      0019A8                       4712 _s8:
      0019A8 0D                    4713 	.db #0x0d	; 13
      0019A9 02                    4714 	.db #0x02	; 2
      0019AA 08                    4715 	.db #0x08	; 8
      0019AB 04                    4716 	.db #0x04	; 4
      0019AC 06                    4717 	.db #0x06	; 6
      0019AD 0F                    4718 	.db #0x0f	; 15
      0019AE 0B                    4719 	.db #0x0b	; 11
      0019AF 01                    4720 	.db #0x01	; 1
      0019B0 0A                    4721 	.db #0x0a	; 10
      0019B1 09                    4722 	.db #0x09	; 9
      0019B2 03                    4723 	.db #0x03	; 3
      0019B3 0E                    4724 	.db #0x0e	; 14
      0019B4 05                    4725 	.db #0x05	; 5
      0019B5 00                    4726 	.db #0x00	; 0
      0019B6 0C                    4727 	.db #0x0c	; 12
      0019B7 07                    4728 	.db #0x07	; 7
      0019B8 01                    4729 	.db #0x01	; 1
      0019B9 0F                    4730 	.db #0x0f	; 15
      0019BA 0D                    4731 	.db #0x0d	; 13
      0019BB 08                    4732 	.db #0x08	; 8
      0019BC 0A                    4733 	.db #0x0a	; 10
      0019BD 03                    4734 	.db #0x03	; 3
      0019BE 07                    4735 	.db #0x07	; 7
      0019BF 04                    4736 	.db #0x04	; 4
      0019C0 0C                    4737 	.db #0x0c	; 12
      0019C1 05                    4738 	.db #0x05	; 5
      0019C2 06                    4739 	.db #0x06	; 6
      0019C3 0B                    4740 	.db #0x0b	; 11
      0019C4 00                    4741 	.db #0x00	; 0
      0019C5 0E                    4742 	.db #0x0e	; 14
      0019C6 09                    4743 	.db #0x09	; 9
      0019C7 02                    4744 	.db #0x02	; 2
      0019C8 07                    4745 	.db #0x07	; 7
      0019C9 0B                    4746 	.db #0x0b	; 11
      0019CA 04                    4747 	.db #0x04	; 4
      0019CB 01                    4748 	.db #0x01	; 1
      0019CC 09                    4749 	.db #0x09	; 9
      0019CD 0C                    4750 	.db #0x0c	; 12
      0019CE 0E                    4751 	.db #0x0e	; 14
      0019CF 02                    4752 	.db #0x02	; 2
      0019D0 00                    4753 	.db #0x00	; 0
      0019D1 06                    4754 	.db #0x06	; 6
      0019D2 0A                    4755 	.db #0x0a	; 10
      0019D3 0D                    4756 	.db #0x0d	; 13
      0019D4 0F                    4757 	.db #0x0f	; 15
      0019D5 03                    4758 	.db #0x03	; 3
      0019D6 05                    4759 	.db #0x05	; 5
      0019D7 08                    4760 	.db #0x08	; 8
      0019D8 02                    4761 	.db #0x02	; 2
      0019D9 01                    4762 	.db #0x01	; 1
      0019DA 0E                    4763 	.db #0x0e	; 14
      0019DB 07                    4764 	.db #0x07	; 7
      0019DC 04                    4765 	.db #0x04	; 4
      0019DD 0A                    4766 	.db #0x0a	; 10
      0019DE 08                    4767 	.db #0x08	; 8
      0019DF 0D                    4768 	.db #0x0d	; 13
      0019E0 0F                    4769 	.db #0x0f	; 15
      0019E1 0C                    4770 	.db #0x0c	; 12
      0019E2 09                    4771 	.db #0x09	; 9
      0019E3 00                    4772 	.db #0x00	; 0
      0019E4 03                    4773 	.db #0x03	; 3
      0019E5 05                    4774 	.db #0x05	; 5
      0019E6 06                    4775 	.db #0x06	; 6
      0019E7 0B                    4776 	.db #0x0b	; 11
      0019E8                       4777 _e:
      0019E8 20                    4778 	.db #0x20	; 32
      0019E9 01                    4779 	.db #0x01	; 1
      0019EA 02                    4780 	.db #0x02	; 2
      0019EB 03                    4781 	.db #0x03	; 3
      0019EC 04                    4782 	.db #0x04	; 4
      0019ED 05                    4783 	.db #0x05	; 5
      0019EE 04                    4784 	.db #0x04	; 4
      0019EF 05                    4785 	.db #0x05	; 5
      0019F0 06                    4786 	.db #0x06	; 6
      0019F1 07                    4787 	.db #0x07	; 7
      0019F2 08                    4788 	.db #0x08	; 8
      0019F3 09                    4789 	.db #0x09	; 9
      0019F4 08                    4790 	.db #0x08	; 8
      0019F5 09                    4791 	.db #0x09	; 9
      0019F6 0A                    4792 	.db #0x0a	; 10
      0019F7 0B                    4793 	.db #0x0b	; 11
      0019F8 0C                    4794 	.db #0x0c	; 12
      0019F9 0D                    4795 	.db #0x0d	; 13
      0019FA 0C                    4796 	.db #0x0c	; 12
      0019FB 0D                    4797 	.db #0x0d	; 13
      0019FC 0E                    4798 	.db #0x0e	; 14
      0019FD 0F                    4799 	.db #0x0f	; 15
      0019FE 10                    4800 	.db #0x10	; 16
      0019FF 11                    4801 	.db #0x11	; 17
      001A00 10                    4802 	.db #0x10	; 16
      001A01 11                    4803 	.db #0x11	; 17
      001A02 12                    4804 	.db #0x12	; 18
      001A03 13                    4805 	.db #0x13	; 19
      001A04 14                    4806 	.db #0x14	; 20
      001A05 15                    4807 	.db #0x15	; 21
      001A06 14                    4808 	.db #0x14	; 20
      001A07 15                    4809 	.db #0x15	; 21
      001A08 16                    4810 	.db #0x16	; 22
      001A09 17                    4811 	.db #0x17	; 23
      001A0A 18                    4812 	.db #0x18	; 24
      001A0B 19                    4813 	.db #0x19	; 25
      001A0C 18                    4814 	.db #0x18	; 24
      001A0D 19                    4815 	.db #0x19	; 25
      001A0E 1A                    4816 	.db #0x1a	; 26
      001A0F 1B                    4817 	.db #0x1b	; 27
      001A10 1C                    4818 	.db #0x1c	; 28
      001A11 1D                    4819 	.db #0x1d	; 29
      001A12 1C                    4820 	.db #0x1c	; 28
      001A13 1D                    4821 	.db #0x1d	; 29
      001A14 1E                    4822 	.db #0x1e	; 30
      001A15 1F                    4823 	.db #0x1f	; 31
      001A16 20                    4824 	.db #0x20	; 32
      001A17 01                    4825 	.db #0x01	; 1
      001A18                       4826 _p:
      001A18 10                    4827 	.db #0x10	; 16
      001A19 07                    4828 	.db #0x07	; 7
      001A1A 14                    4829 	.db #0x14	; 20
      001A1B 15                    4830 	.db #0x15	; 21
      001A1C 1D                    4831 	.db #0x1d	; 29
      001A1D 0C                    4832 	.db #0x0c	; 12
      001A1E 1C                    4833 	.db #0x1c	; 28
      001A1F 11                    4834 	.db #0x11	; 17
      001A20 01                    4835 	.db #0x01	; 1
      001A21 0F                    4836 	.db #0x0f	; 15
      001A22 17                    4837 	.db #0x17	; 23
      001A23 1A                    4838 	.db #0x1a	; 26
      001A24 05                    4839 	.db #0x05	; 5
      001A25 12                    4840 	.db #0x12	; 18
      001A26 1F                    4841 	.db #0x1f	; 31
      001A27 0A                    4842 	.db #0x0a	; 10
      001A28 02                    4843 	.db #0x02	; 2
      001A29 08                    4844 	.db #0x08	; 8
      001A2A 18                    4845 	.db #0x18	; 24
      001A2B 0E                    4846 	.db #0x0e	; 14
      001A2C 20                    4847 	.db #0x20	; 32
      001A2D 1B                    4848 	.db #0x1b	; 27
      001A2E 03                    4849 	.db #0x03	; 3
      001A2F 09                    4850 	.db #0x09	; 9
      001A30 13                    4851 	.db #0x13	; 19
      001A31 0D                    4852 	.db #0x0d	; 13
      001A32 1E                    4853 	.db #0x1e	; 30
      001A33 06                    4854 	.db #0x06	; 6
      001A34 16                    4855 	.db #0x16	; 22
      001A35 0B                    4856 	.db #0x0b	; 11
      001A36 04                    4857 	.db #0x04	; 4
      001A37 19                    4858 	.db #0x19	; 25
                                   4859 	.area XINIT   (CODE)
                                   4860 	.area CABS    (ABS,CODE)
