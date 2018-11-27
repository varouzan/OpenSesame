/*
 * mult.c
 *
 *  Created on: Nov 26, 2018
 *      Author: danman
 */

#include "multint.h"
#include "xparameters.h"
#include "xil_io.h"
#include <stdio.h>

#define QM_BASE XPAR_MULTINT_0_S00_AXI_BASEADDR
#define FAC1_ADDR MULTINT_S00_AXI_SLV_REG0_OFFSET
#define FAC2_ADDR MULTINT_S00_AXI_SLV_REG1_OFFSET
#define APROD_ADDR MULTINT_S00_AXI_SLV_REG2_OFFSET
#define CPROD_ADDR MULTINT_S00_AXI_SLV_REG3_OFFSET

int main(void){
  u32 fac1 = 2;
  u32 fac2 = 3;
  u32 aprod = fac1*fac2;
  u32 cprod = 0;

  MULTINT_mWriteReg(QM_BASE, FAC1_ADDR, fac1);
  MULTINT_mWriteReg(QM_BASE, FAC2_ADDR, fac2);
  MULTINT_mWriteReg(QM_BASE, APROD_ADDR, aprod);
  cprod = MULTINT_mReadReg(QM_BASE, CPROD_ADDR);
  printf("%lu * %lu = %lu\n",fac1,fac2,aprod);
  printf("Coprocessor says: %lu\n",cprod);
  return 0;
}
