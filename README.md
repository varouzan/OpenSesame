# OpenSesame
Do QuickMaffs faster than you can say "Gaussian!"

Encyption coprossesor implemnted on an FPGA that carries out AES increption/decryption on 512 byte blocks, using 32 parallel OpenCores 128 bit AES modules.

Developed for a Zynq 7000 SoC, FPGA interfaces with a ARM microcontoller through through AXI4 buss. 
ARM Core signals FPGA for incoming instruction and reads the result once the operation is complete.