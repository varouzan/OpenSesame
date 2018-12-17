#include "qmaxi.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xil_printf.h"
#include <string.h>
#include "xbasic_types.h"

#define QM_INS_RESET (0x02e5e710)
#define QM_INS_AESEN (0x0ae5e7c0)
#define QM_INS_AESDE (0x0ae5dec0)
#define QM_INS_FLAGS (0x80000000)

unsigned char key[16]  = "3sj7s7xj2jasdx93";
unsigned char raw[512] = "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the l";
unsigned char out[512];
u32 raw_32[128];
u32 out_32[128];
u32 ukey[4];

int toggle = 0;

void sendIns(u32 in) {
	toggle = !toggle;
	u32 instr = toggle*QM_INS_FLAGS + in;
	QMAXI_mWriteReg(XPAR_QMAXI_0_S00_AXI_BASEADDR, QMAXI_S00_AXI_SLV_REG0_OFFSET, instr);
}

void writeData() {
	memcpy(raw_32,raw,512);
	int i = 0;
	for(int addr=QMAXI_S00_AXI_SLV_REG1_OFFSET; addr<=QMAXI_S00_AXI_SLV_REG128_OFFSET;addr=addr+4){
		QMAXI_mWriteReg(XPAR_QMAXI_0_S00_AXI_BASEADDR, addr, raw_32[i++]);
	}
}

void writeKey() {
	memcpy(ukey,key,16);
	int i = 0;
	for(int addr=QMAXI_S00_AXI_SLV_REG257_OFFSET; addr<=QMAXI_S00_AXI_SLV_REG260_OFFSET;addr=addr+4){
		QMAXI_mWriteReg(XPAR_QMAXI_0_S00_AXI_BASEADDR, addr, ukey[i++]);
	}
}

void readData() {
	int i = 0;
	for(int addr=QMAXI_S00_AXI_SLV_REG129_OFFSET; addr<=QMAXI_S00_AXI_SLV_REG256_OFFSET;addr=addr+4){
		out_32[i++]=QMAXI_mReadReg(XPAR_QMAXI_0_S00_AXI_BASEADDR, addr);
	}
	memcpy(out,out_32,512);
}

u32 isDirty() {
	u32 dirty;
	dirty = QMAXI_mReadReg(XPAR_QMAXI_0_S00_AXI_BASEADDR, QMAXI_S00_AXI_SLV_REG263_OFFSET);
	xil_printf("DIRTY: %d\n",dirty);
	return dirty;
}

int main(){
	sendIns(QM_INS_RESET);
	sleep(1);
	xil_printf("RAW: %s\n",raw);
	writeData();
	writeKey();
	sendIns(QM_INS_AESEN);
	sleep(1);
	readData();
	xil_printf("ENC:%s\n",out);
	memcpy(raw_32,out_32,512);
	writeData();
	writeKey();
	sendIns(QM_INS_AESDE);
	sleep(1);
	readData();
	xil_printf("DEC:%s\n",out);
}
