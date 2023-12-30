/********************* Reg52 .h ***************************************/
/* P2*/
__sfr __at (0xA0) P2;
__sbit __at (0xA0) cs; 		/*spi*/
__sbit __at (0xA1) sclk;	/*spi*/
__sbit __at (0xA2) mosi;	/*spi*/
__sbit __at (0xA3) miso;	/*spi*/
/*P3*/
__sfr __at (0xB0) P3;		/*uart*/
__sbit __at (0xB1) TXD;		/*uart*/
__sbit __at (0xB0) RXD;		/*uart*/

__sfr __at (0x98) SCON;
__sfr __at (0x99) SBUF;
__sfr __at (0x89) TMOD;
__sfr __at (0x8D) TH1;
__sfr __at (0x8B) TL1;

/*  SCON  */
__sbit __at (0x99) TI;
__sbit __at (0x98) RI;

/*  TCON  */
__sbit __at (0x8E) TR1;

/*********************** STD_TYPES.h **********************************/
typedef unsigned char      	uint8;
typedef unsigned short int 	uint16;
typedef unsigned long int  	uint32;

/*********************** Bit_MATH.h **********************************/
#define GET_BIT_ARRAY(REG,BIT)       (((REG << BIT) & 128) >> 7) // b0...b7
#define WRITE_BIT_ARRAY(REG,POS,BIT)	REG = ((REG & ~(128>>POS)) | ((BIT * 128)>>POS)) 
#define GET_BIT(REG,BIT)       ((REG >> BIT) & 1) // b7 ... b0
#define WRITE_BIT(REG,POS,BIT)	REG = ((REG & ~(1<<POS)) | ((BIT) << POS)) 

/*********************** DES.h ***************************************/
typedef union{

	uint8 Array[8];

	uint32 Half[2]; // [Left = Half[0] , Right = Half[1]] 
}DATA;

/************************ SPI *****************************************/

void spi_delay (void){
	char j = 0;
	for (j = 0; j <2 ; j++);
}

void spi_init (void){
	cs   = 1; //input
	sclk = 1; //input
	mosi = 1; //input
	miso = 0; //output
}

void spi_receive (char *byte){
	char ir = 0,x;
	while (cs == 0);
	// start recieve
	for (ir = 0 ; ir <8 ; ir++){
		while (sclk == 0);
		// start read at rising edge
		x = mosi;
		spi_delay ();
		*byte = ((*byte & ~(1<<(ir))) | (x<<(ir)));
		
	}
}






/*********************** DES.c ***************************************/
#define Basic_Permutation		64
#define Pc1 					56
#define Pc2 					48
#define Operation				Decryption
#define Encryption				0
#define Decryption				1

__code uint8 pc1[56] = {
	57,	49,	41,	33,	25,	17,	9,	
	1,	58,	50,	42,	34,	26,	18,	
	10,	2,	59,	51,	43,	35,	27,	
	19,	11,	3,	60,	52,	44,	36,	
	63,	55,	47,	39,	31,	23,	15,	
	7,	62,	54,	46,	38,	30,	22,	
	14,	6,	61,	53,	45,	37,	29,	
	21,	13,	5,	28,	20,	12,	4
};

__code uint8 pc2[48] = {
	14,	17,	11,	24,	1,	5,
	3,	28,	15,	6,	21,	10,
	23,	19,	12,	4,	26,	8,
	16,	7,	27,	20,	13,	2,
	41,	52,	31,	37,	47,	55,
	30,	40,	51,	45,	33,	48,
	44,	49,	39,	56,	34,	53,
	46,	42,	50,	36,	29,	32
};
__code uint8 ip[64] = {
	58,	50,	42,	34,	26,	18,	10,	2,
	60,	52,	44,	36,	28,	20,	12,	4,
	62,	54,	46,	38,	30,	22,	14,	6,
	64,	56,	48,	40,	32,	24,	16,	8,
	57,	49,	41,	33,	25,	17,	9,	1,
	59,	51,	43,	35,	27,	19,	11,	3,
	61,	53,	45,	37,	29,	21,	13,	5,
	63,	55,	47,	39,	31,	23,	15,	7};

__code uint8 fp[64] = {
	40,	8,	48,	16,	56,	24,	64,	32,
	39,	7,	47,	15,	55,	23,	63,	31,
	38,	6,	46,	14,	54,	22,	62,	30,
	37,	5,	45,	13,	53,	21,	61,	29,
	36,	4,	44,	12,	52,	20,	60,	28,
	35,	3,	43,	11,	51,	19,	59,	27,
	34,	2,	42,	10,	50,	18,	58,	26,
	33,	1,	41,	9,	49,	17,	57,	25};

		//3-S-boxes
__code uint8 s1[64] = {
	14,	4,	13,	1,	2,	15,	11,	8,
	3,	10,	6,	12,	5,	9,	0,	7,
	0,	15,	7,	4,	14,	2,	13,	1,
	10,	6,	12,	11,	9,	5,	3,	8,
	4,	1,	14,	8,	13,	6,	2,	11,
	15,	12,	9,	7,	3,	10,	5,	0,
	15,	12,	8,	2,	4,	9,	1,	7,
	5,	11,	3,	14,	10,	0,	6,	13};

__code uint8  s2[64] = {
    15,	1,	8,	14,	6,	11,	3,	4,
    9,	7,	2,	13,	12,	0,	5,	10,
    3,	13,	4,	7,	15,	2,	8,	14,
    12,	0,	1,	10,	6,	9,	11,	5,
    0,	14,	7,	11,	10,	4,	13,	1,
    5,	8,	12,	6,	9,	3,	2,	15,
    13,	8,	10,	1,	3,	15,	4,	2,
    11,	6,	7,	12,	0,	5,	14,	9
};

__code uint8 s3[64] = {
    10,	0,	9,	14,	6,	3,	15,	5,
    1,	13,	12,	7,	11,	4,	2,	8,
    13,	7,	0,	9,	3,	4,	6,	10,
    2,	8,	5,	14,	12,	11,	15,	1,
    13,	6,	4,	9,	8,	15,	3,	0,
    11,	1,	2,	12,	5,	10,	14,	7,
    1,	10,	13,	0,	6,	9,	8,	7,
    4,	15,	14,	3,	11,	5,	2,	12
};
__code uint8  s4[64] = {
    7,	13,	14,	3,	0,	6,	9,	10,
    1,	2,	8,	5,	11,	12,	4,	15,
    13,	8,	11,	5,	6,	15,	0,	3,
    4,	7,	2,	12,	1,	10,	14,	9,
    10,	6,	9,	0,	12,	11,	7,	13,
    15,	1,	3,	14,	5,	2,	8,	4,
    3,	15,	0,	6,	10,	1,	13,	8,
     9,	4,	5,	11,	12,	7,	2,	14
};

__code uint8  s5[64] = {
    2,	12,	4,	1,	7,	10,	11,	6,
    8,	5,	3,	15,	13,	0,	14,	9,
    14,	11,	2,	12,	4,	7,	13,	1,
    5,	0,	15,	10,	3,	9,	8,	6,
    4,	2,	1,	11,	10,	13,	7,	8,
    15,	9,	12,	5,	6,	3,	0,	14,
    11,	8,	12,	7,	1,	14,	2,	13,
    6,	15,	0,	9,	10,	4,	5,	3
};

__code uint8 s6[64] = {
    12,	1,	10,	15,	9,	2,	6,	8,
    0,	13,	3,	4,	14,	7,	5,	11,
    10,	15,	4,	2,	7,	12,	9,	5,
    6,	1,	13,	14,	0,	11,	3,	8,
    9,	14,	15,	5,	2,	8,	12,	3,
    7,	0,	4,	10,	1,	13,	11,	6,
    4,	3,	2,	12,	9,	5,	15,	10,
    11,	14,	1,	7,	6,	0,	8,	13
 };

__code uint8 s7[64] = {
    4,	11,	2,	14,	15,	0,	8,	13,
    3,	12,	9,	7,	5,	10,	6,	1,
    13,	0,	11,	7,	4,	9,	1,	10,
    14,	3,	5,	12,	2,	15,	8,	6,
    1,	4,	11,	13,	12,	3,	7,	14,
    10,	15,	6,	8,	0,	5,	9,	2,
    6,	11,	13,	8,	1,	4,	10,	7,
    9,	5,	0,	15,	14,	2,	3,	12
 };

 __code uint8 s8[64] = {
    13,	2,	8,	4,	6,	15,	11,	1, 10,	9,	3,	14,	5,	0,	12,	7,
    1,	15,	13,	8,	10,	3,	7,	4, 12,	5,	6,	11,	0,	14,	9,	2,
    7,	11,	4,	1,	9,	12,	14,	2, 0,	6,	10,	13,	15,	3,	5,	8,
    2,	1,	14,	7,	4,	10,	8,	13,15,	12,	9,	0,	3,	5,	6,	11
};
__code uint8 e[48] = {
	32,	1,	2,	3,	4,	5,
	4,	5,	6,	7,	8,	9,
	8,	9,	10,	11,	12,	13,
	12,	13,	14,	15,	16,	17,
	16,	17,	18,	19,	20,	21,
	20,	21,	22,	23,	24,	25,
	24,	25,	26,	27,	28,	29,
	28,	29,	30,	31,	32,	1
};

__code uint8 p[32] = {
	16,	7,	20,	21,
	29,	12,	28,	17,
	1,	15,	23,	26,
	5,	18,	31,	10,
	2,	8,	24,	14,
	32,	27,	3,	9,
	19,	13,	30,	6,
	22,	11,	4,	25};
/************** Global Var **************/
__code uint8* arr[8]={s1,s2,s3,s4,s5,s6,s7,s8}; 
uint8 i,temp;
uint32 Temp = 0;
/***************************************/


/* IP    FP    PC-1    PC-2*/
static void Permutation ( DATA *plain_text,DATA *permuted_text,uint8 type,uint8 *table){
	for (i = 0 ;i < type ; i++){
		temp = GET_BIT_ARRAY(plain_text->Array[((table[i] -1) / 8)],((table[i] -1) % 8));
		WRITE_BIT_ARRAY(permuted_text->Array[(i/8)],(i%8),temp);
	}
}

void G_Function (DATA *round_text,DATA *sub_key,DATA *out_g){
	uint8 j; 
	Temp = 0;
	for (i = 4 ; i<8 ; i++){
		Temp <<=8;
		Temp |= round_text->Array[i];
	}
	// 1- Expansion	
	for (i = 0 ;i <= 47 ; i++){ 
		
		temp =(uint8)(((Temp<<(e[i]-1)) & 0x80000000)>>31) ;
		WRITE_BIT_ARRAY(out_g->Array[(i/8)],(i%8),temp); 
	}
	
	//2-XOR with subkey
	for (i = 0; i<7 ;i++){
		out_g->Array[i] ^=sub_key->Array[i];
	}

	//3- S-Boxes
    uint8 in_s_box, out_s_box;         // 100101  raw =11=3   column = 0010=2
    uint8 raw_s = 0, column_s = 0;
    uint32 S_boxes_out = 0;				// Output of the s-boxes
    for (j = 0; j < 8; j++){
        in_s_box  = 0;
        out_s_box = 0;
        raw_s     = 0;
        column_s  = 0;
        for (i = j*6 ;i < (j*6+6) ; i++){                // 0 6    6 12      12 18   18 24       24 30        30 36      36 42   42 48   
            temp = GET_BIT_ARRAY(out_g->Array[(i/8)],(i%8));
            in_s_box <<= 1;	
            in_s_box |= temp ;
        
        }
        column_s = in_s_box & 0b00011110;
        column_s >>= 1;

        raw_s = GET_BIT(in_s_box,5);     
        raw_s <<= 1;
        raw_s |= GET_BIT(in_s_box,0);
        out_s_box = arr[j][raw_s * 16 + column_s];
        S_boxes_out <<= 4;
        S_boxes_out |= out_s_box; 
   }
   //4-Permutation 
   out_g->Half[0]=0;
   out_g->Half[1]=0;

    for (i = 0 ;i <= 31 ; i++){
		temp = (uint8)(((S_boxes_out<<(p[i]-1)) & 0x80000000)>>31) ;
		WRITE_BIT_ARRAY(out_g->Array[((i+32) / 8)],((i+32) % 8),temp);  

	}
}


//1- rotate
void rotate(DATA *Key,uint8 round,DATA *sub_key){ 
	Temp = 0;
	for (i = 0 ; i<4 ; i++){
		Temp <<=8;
		Temp |= Key->Array[i];
	} 
	#if (Operation == Encryption)
	// left C
	Temp &=0xfffffff0; 
	temp = GET_BIT(Temp,31);
	Temp <<=1;
	WRITE_BIT(Temp,4,temp);

	for (i = 0 ; i<3 ; i++){
		Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff);
	}
	Key->Array[3] &=0x0f; 
	Key->Array[3] |= (uint8)(Temp  & 0x000000f0); 

	//right
	Temp = 0; 
	Temp |= Key->Array[3];   
	Temp = Temp <<8;

	Temp |= Key->Array[4];   

	Temp = Temp <<8;
	Temp |= Key->Array[5];   
	Temp = Temp <<8;
	Temp |= Key->Array[6];	
	Temp= Temp <<4;
	
	temp = GET_BIT(Temp,31);
	Temp <<=1;
	WRITE_BIT(Temp,4,temp);

	Key->Array[3] &=0xf0; 
	Key->Array[3] |= (uint8)((Temp)>>28); 
	Temp <<=4; 
	
	for (i = 4 ; i<8 ; i++){
		Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); 
	}

	if ((round == 1) || (round == 2) || (round == 9) ||(round == 16)){
		//Nothing
	}
	else{
		// left C
		for (i = 0 ; i<4 ; i++){
			Temp <<=8;
			Temp |= Key->Array[i];
		} 
		// left C
		Temp &=0xfffffff0; 
		temp = GET_BIT(Temp,31);
		Temp <<=1;
		WRITE_BIT(Temp,4,temp);
		for (i = 0 ; i<3 ; i++){
			Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); 
		}
		Key->Array[3] &=0x0f; 
		Key->Array[3] |= (uint8)(Temp  & 0x000000f0); 

		//right
		Temp = 0; 
		Temp |= Key->Array[3]; 
		Temp = Temp <<8;

		Temp |= Key->Array[4];  

		Temp = Temp <<8;
		Temp |= Key->Array[5];   
		Temp = Temp <<8;
		Temp |= Key->Array[6];	
		Temp= Temp <<4;

		temp = GET_BIT(Temp,31);
		Temp <<=1;
		WRITE_BIT(Temp,4,temp);

		Key->Array[3] &=0xf0; 
		Key->Array[3] |= (uint8)((Temp)>>28); 
		Temp <<=4; 
		for (i = 4 ; i<8 ; i++){
			Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff);
		}
	}

	sub_key->Half[1] = Key->Half[1];
	sub_key->Half[0] = Key->Half[0];
	
	#elif (Operation == Decryption)

	if (round == 1){

	}
	else{
		
		// left C
		Temp &=0xfffffff0; 
		temp = GET_BIT(Temp,4);
		Temp >>=1;
		Temp = ((Temp & ~( ((uint32)1)<<31)) | (((uint32)temp) << 31));
		for (i = 0 ; i<3 ; i++){
			Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); 
		}
		Key->Array[3] &=0x0f; 
		Key->Array[3] |= (uint8)(Temp  & 0x000000f0); 

		//right
		Temp = 0; 
		Temp |= Key->Array[3];  
		Temp = Temp <<8;

		Temp |= Key->Array[4];   

		Temp = Temp <<8;
		Temp |= Key->Array[5];
		Temp = Temp <<8;
		Temp |= Key->Array[6];
		Temp= Temp <<4;

		temp = GET_BIT(Temp,4);
		Temp >>=1;
		Temp = ((Temp & ~( ((uint32)1)<<31)) | (((uint32)temp) << 31));

		Key->Array[3] &=0xf0; 
		Key->Array[3] |= (uint8)((Temp)>>28); 
		Temp <<=4; 
		for (i = 4 ; i<8 ; i++){
			Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); 
		}

		if ((round != 2) && (round != 9) && (round != 16)){
			for (i = 0 ; i<4 ; i++){
				Temp <<=8;
				Temp |= Key->Array[i];
			} 
			// left C
			Temp &=0xfffffff0; 
			temp = GET_BIT(Temp,4);
			Temp >>=1;
			Temp = ((Temp & ~( ((uint32)1)<<31)) | (((uint32)temp) << 31));

			for (i = 0 ; i<3 ; i++){
				Key->Array[i]= (uint8)((Temp >> ((3-i)*8)) & 0x000000ff); 
			}
			Key->Array[3] &=0x0f; 
			Key->Array[3] |= (uint8)(Temp  & 0x000000f0); 

			//right
			Temp = 0; 
			Temp |= Key->Array[3];  
			Temp = Temp <<8;

			Temp |= Key->Array[4];   

			Temp = Temp <<8;
			Temp |= Key->Array[5];   
			Temp = Temp <<8;
			Temp |= Key->Array[6];	
			Temp= Temp <<4;

			temp = GET_BIT(Temp,4);
			Temp >>=1;
			Temp = ((Temp & ~( ((uint32)1)<<31)) | (((uint32)temp) << 31));

			Key->Array[3] &=0xf0; 
			Key->Array[3] |= (uint8)((Temp)>>28); 
			Temp <<=4; 
			for (i = 4 ; i<8 ; i++){
				Key->Array[i]= (uint8)((Temp >> ((7-i)*8)) & 0x000000ff); 
			}
		}
	}

	sub_key->Half[1] = Key->Half[1];
	sub_key->Half[0] = Key->Half[0];
	#endif
}



DATA final_plain_text = {.Array = {0,0,0,0,0,0,0,0}};
DATA final_original_key =  {.Array = {0,0,0,0,0,0,0,0}};

/*** Dec ****/
int main(void){
	SCON=0x50;
	TMOD=0x20;
	TH1=-3;
	TL1=-3;
	TR1=1;



/************************** Recieve Key ************************************/

	SBUF = 'K';
	while (0 == TI);
	TI = 0;
	spi_delay();
	SBUF = ':';
	while (0 == TI);
	TI = 0;
	spi_delay();
	for (i=0 ; i<8;i++){
		while(0==RI);
		temp = SBUF;
		RI=0;
		spi_delay();
		SBUF = temp;
		while(0==TI);
		TI=0;
		spi_delay();
		temp -= 0x30;
		if(temp > 9 ){
			temp -= 0x7;
		}
		final_original_key.Array[i] = (temp<<4);
		final_original_key.Array[i] &= 0xF0;
		temp = 0;
		while(0==RI);
		temp = SBUF;
		RI=0;
		spi_delay();
		SBUF = temp;
		while(0==TI);
		TI=0;
		spi_delay();
		temp -= 0x30;
		if(temp > 9 ){
			temp -= 0x7;
		}
		final_original_key.Array[i] |= temp; 

	}
	spi_delay();

	while (1){
		/************************** Recieve Cipher Text *********************/

		for (i=0 ; i<8;i++){
			spi_receive (&(final_plain_text.Array[i]));
		} 

		SBUF = '\n';
		while (0 == TI);
		TI = 0;
		spi_delay();
		SBUF = 'C';
		while (0 == TI);
		TI = 0;
		SBUF = 'T';
		while (0 == TI);
		TI = 0;
		spi_delay();
		SBUF = ':';
		while (0 == TI);
		TI = 0;
		spi_delay();
		spi_delay();
		uint8 temp2 = 0;
		for (i=0 ; i<8;i++){
			
			temp2 = final_plain_text.Array[i] ;
			SBUF = temp2;
			while(0==TI);
			TI=0;
		}
		spi_delay();


/***************************** Start Dec**********************************************/
		uint8 round = 0;
		DATA round_in = {.Array = {0,0,0,0,0,0,0,0}};
		DATA subbkey = {.Array = {0,0,0,0,0,0,0,0}};
		DATA key_56 = {.Array = {0,0,0,0,0,0,0,0}};
		DATA pc2_in = {.Array = {0,0,0,0,0,0,0,0}};

		/**************** 1 - initial Permutation **********************/
		Permutation ( &final_plain_text, &round_in, Basic_Permutation, ip);
		// update plain_text
		for (i=0; i<8; i++){
			final_plain_text.Array[i] = '0';
		}
		/*********************************** Sub Key  **********************************/
		/**************** 1- PC-1 **********************/
		Permutation ( &final_original_key, &key_56,Pc1,pc1);
		/************************************ 16 Rounds *******************************/
		for (round = 1 ; round < 17 ; round++){
			/**************** 2- Rotate  **********************/
			rotate(&key_56,round,&pc2_in);

			/**************** 3. PC-2 **********************/
			Permutation (&pc2_in,&subbkey,Pc2,pc2);

			/************************************ G Function and XOR  **************************/
			G_Function(&round_in,&subbkey,&final_plain_text);
			final_plain_text.Half[1] = final_plain_text.Half[1] ^ round_in.Half[0];
			final_plain_text.Half[0]  = round_in.Half[1];
			/************************************* Update Variables *****************************/
			key_56.Half[0] = pc2_in.Half[0]; 
			key_56.Half[1] = pc2_in.Half[1];

			pc2_in.Half[0] = 0;
			pc2_in.Half[1] = 0;

			round_in.Half[0] = final_plain_text.Half[0]; 
			round_in.Half[1] = final_plain_text.Half[1]; 

			
			final_plain_text.Half[0] = 0;
			final_plain_text.Half[1] = 0;
		}
		pc2_in.Half[0] = round_in.Half[1];
		pc2_in.Half[1] = round_in.Half[0];
		/**************** 3- Final Permutation  **********************/
		Permutation (&pc2_in,&final_plain_text,Basic_Permutation,fp);
/*************************************** END Decrypt *******************************************/

/*************************************** Sending the plain text*****************************************************/

		SBUF = '\n';
		while (0 == TI);
		TI = 0;
		spi_delay();
		SBUF = 'P';
		while (0 == TI);
		TI = 0;
		SBUF = 'T';
		while (0 == TI);
		TI = 0;
		spi_delay();
		SBUF = ':';
		while (0 == TI);
		TI = 0;
		spi_delay();
		spi_delay();
		for (i=0 ; i<8;i++){
			
			temp2 = final_plain_text.Array[i] ;
			SBUF = temp2;
			while(0==TI);
			TI=0;
		}
		spi_delay();

		}
	return 0;
}



