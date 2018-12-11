/*
 * main.c
 *
 *  Created on: Dec 10, 2018
 *      Author: varou
 */
#include "quickmaffs.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xil_printf.h"
//#include <stdio.h>
#include <string.h>
#include "xbasic_types.h"

unsigned char raw[512]="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the l";
unsigned char out [512];
u32 raw_32[128],out_32[128];
u32 recv;
u32 send=346;


int main(){
	int addr;
	while(1){
		memcpy(raw_32,raw,512);
		xil_printf("%s \n",raw);
		print("stuff \n");
		//memcpy(out,raw_32,512);
		for(addr=QUICKMAFFS_S00_AXI_SLV_REG1_OFFSET; addr<=QUICKMAFFS_S00_AXI_SLV_REG128_OFFSET;addr=addr+4){
			QUICKMAFFS_mWriteReg(XPAR_QUICKMAFFS_0_S00_AXI_BASEADDR, addr, raw_32[addr/4-1]);
		}
		sleep(1);
//		for(addr=QUICKMAFFS_S00_AXI_SLV_REG1_OFFSET; addr<=QUICKMAFFS_S00_AXI_SLV_REG128_OFFSET;addr=addr+4){
//			out_32[addr/4-1]=QUICKMAFFS_mReadReg(XPAR_QUICKMAFFS_0_S00_AXI_BASEADDR, addr);
//		}
		for(addr=QUICKMAFFS_S00_AXI_SLV_REG129_OFFSET; addr<=QUICKMAFFS_S00_AXI_SLV_REG256_OFFSET;addr=addr+4){
			out_32[addr/516-1]=QUICKMAFFS_mReadReg(XPAR_QUICKMAFFS_0_S00_AXI_BASEADDR, addr);
		}
		memcpy(out,out_32,512);


//		QUICKMAFFS_mWriteReg(XPAR_QUICKMAFFS_0_S00_AXI_BASEADDR, QUICKMAFFS_S00_AXI_SLV_REG102_OFFSET,send);
//		sleep(1);
//		send++;
//		recv=QUICKMAFFS_mReadReg(XPAR_QUICKMAFFS_0_S00_AXI_BASEADDR, QUICKMAFFS_S00_AXI_SLV_REG230_OFFSET);
//		sleep(1);
//		//xil_printf("malaka \n\r");
//		print("extra wire\n");

	}
}
