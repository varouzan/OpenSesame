/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_6184(char*, char *);
extern void execute_6185(char*, char *);
extern void execute_6186(char*, char *);
extern void execute_6187(char*, char *);
extern void execute_6188(char*, char *);
extern void execute_6189(char*, char *);
extern void execute_6190(char*, char *);
extern void execute_6191(char*, char *);
extern void execute_6192(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_1451(char*, char *);
extern void execute_2904(char*, char *);
extern void execute_2905(char*, char *);
extern void execute_2906(char*, char *);
extern void execute_4539(char*, char *);
extern void execute_4540(char*, char *);
extern void execute_4541(char*, char *);
extern void execute_4542(char*, char *);
extern void execute_4543(char*, char *);
extern void execute_10(char*, char *);
extern void execute_4443(char*, char *);
extern void execute_4444(char*, char *);
extern void execute_4445(char*, char *);
extern void execute_4446(char*, char *);
extern void execute_4447(char*, char *);
extern void execute_4448(char*, char *);
extern void execute_4449(char*, char *);
extern void execute_4450(char*, char *);
extern void execute_4451(char*, char *);
extern void execute_4452(char*, char *);
extern void execute_4453(char*, char *);
extern void execute_4454(char*, char *);
extern void execute_4455(char*, char *);
extern void execute_4456(char*, char *);
extern void execute_4457(char*, char *);
extern void execute_4458(char*, char *);
extern void execute_4459(char*, char *);
extern void execute_4460(char*, char *);
extern void execute_4461(char*, char *);
extern void execute_4462(char*, char *);
extern void execute_4463(char*, char *);
extern void execute_4464(char*, char *);
extern void execute_4465(char*, char *);
extern void execute_4466(char*, char *);
extern void execute_4467(char*, char *);
extern void execute_4468(char*, char *);
extern void execute_4469(char*, char *);
extern void execute_4470(char*, char *);
extern void execute_4471(char*, char *);
extern void execute_4472(char*, char *);
extern void execute_4473(char*, char *);
extern void execute_4474(char*, char *);
extern void execute_4475(char*, char *);
extern void execute_4476(char*, char *);
extern void execute_4477(char*, char *);
extern void execute_4478(char*, char *);
extern void execute_4479(char*, char *);
extern void execute_4480(char*, char *);
extern void execute_4481(char*, char *);
extern void execute_4482(char*, char *);
extern void execute_4483(char*, char *);
extern void execute_4484(char*, char *);
extern void execute_4485(char*, char *);
extern void execute_4486(char*, char *);
extern void execute_4487(char*, char *);
extern void execute_4488(char*, char *);
extern void execute_4489(char*, char *);
extern void execute_4490(char*, char *);
extern void execute_4491(char*, char *);
extern void execute_4492(char*, char *);
extern void execute_4493(char*, char *);
extern void execute_4494(char*, char *);
extern void execute_4495(char*, char *);
extern void execute_4496(char*, char *);
extern void execute_4497(char*, char *);
extern void execute_4498(char*, char *);
extern void execute_4499(char*, char *);
extern void execute_4500(char*, char *);
extern void execute_4501(char*, char *);
extern void execute_4502(char*, char *);
extern void execute_4503(char*, char *);
extern void execute_4504(char*, char *);
extern void execute_4505(char*, char *);
extern void execute_4506(char*, char *);
extern void execute_4507(char*, char *);
extern void execute_4508(char*, char *);
extern void execute_4509(char*, char *);
extern void execute_4510(char*, char *);
extern void execute_4511(char*, char *);
extern void execute_4512(char*, char *);
extern void execute_4513(char*, char *);
extern void execute_4514(char*, char *);
extern void execute_4515(char*, char *);
extern void execute_4516(char*, char *);
extern void execute_4517(char*, char *);
extern void execute_4518(char*, char *);
extern void execute_4519(char*, char *);
extern void execute_4520(char*, char *);
extern void execute_4521(char*, char *);
extern void execute_4522(char*, char *);
extern void execute_4523(char*, char *);
extern void execute_4524(char*, char *);
extern void execute_4525(char*, char *);
extern void execute_4526(char*, char *);
extern void execute_4527(char*, char *);
extern void execute_4528(char*, char *);
extern void execute_4529(char*, char *);
extern void execute_4530(char*, char *);
extern void execute_4531(char*, char *);
extern void execute_4532(char*, char *);
extern void execute_4533(char*, char *);
extern void execute_4534(char*, char *);
extern void execute_4535(char*, char *);
extern void execute_4536(char*, char *);
extern void execute_4537(char*, char *);
extern void execute_4538(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_2934(char*, char *);
extern void execute_2935(char*, char *);
extern void execute_2936(char*, char *);
extern void execute_2937(char*, char *);
extern void execute_2938(char*, char *);
extern void execute_2939(char*, char *);
extern void execute_2940(char*, char *);
extern void execute_2941(char*, char *);
extern void execute_2942(char*, char *);
extern void execute_2943(char*, char *);
extern void execute_2944(char*, char *);
extern void execute_2945(char*, char *);
extern void execute_2946(char*, char *);
extern void execute_2947(char*, char *);
extern void execute_2948(char*, char *);
extern void execute_2949(char*, char *);
extern void execute_2950(char*, char *);
extern void execute_2951(char*, char *);
extern void execute_2952(char*, char *);
extern void execute_2953(char*, char *);
extern void execute_2954(char*, char *);
extern void execute_13(char*, char *);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_2931(char*, char *);
extern void execute_2932(char*, char *);
extern void execute_2933(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_2907(char*, char *);
extern void execute_2908(char*, char *);
extern void execute_2909(char*, char *);
extern void execute_2910(char*, char *);
extern void execute_2911(char*, char *);
extern void execute_2912(char*, char *);
extern void execute_2913(char*, char *);
extern void execute_2914(char*, char *);
extern void execute_2915(char*, char *);
extern void execute_2916(char*, char *);
extern void execute_2917(char*, char *);
extern void execute_2918(char*, char *);
extern void execute_2919(char*, char *);
extern void execute_2920(char*, char *);
extern void execute_2921(char*, char *);
extern void execute_2922(char*, char *);
extern void execute_2923(char*, char *);
extern void execute_2924(char*, char *);
extern void execute_2925(char*, char *);
extern void execute_2926(char*, char *);
extern void execute_2927(char*, char *);
extern void execute_2928(char*, char *);
extern void execute_2929(char*, char *);
extern void execute_2930(char*, char *);
extern void execute_32(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_2901(char*, char *);
extern void execute_2902(char*, char *);
extern void execute_2903(char*, char *);
extern void execute_6193(char*, char *);
extern void execute_6194(char*, char *);
extern void execute_6195(char*, char *);
extern void execute_6196(char*, char *);
extern void execute_6197(char*, char *);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_7893(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[210] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_6184, (funcp)execute_6185, (funcp)execute_6186, (funcp)execute_6187, (funcp)execute_6188, (funcp)execute_6189, (funcp)execute_6190, (funcp)execute_6191, (funcp)execute_6192, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_1451, (funcp)execute_2904, (funcp)execute_2905, (funcp)execute_2906, (funcp)execute_4539, (funcp)execute_4540, (funcp)execute_4541, (funcp)execute_4542, (funcp)execute_4543, (funcp)execute_10, (funcp)execute_4443, (funcp)execute_4444, (funcp)execute_4445, (funcp)execute_4446, (funcp)execute_4447, (funcp)execute_4448, (funcp)execute_4449, (funcp)execute_4450, (funcp)execute_4451, (funcp)execute_4452, (funcp)execute_4453, (funcp)execute_4454, (funcp)execute_4455, (funcp)execute_4456, (funcp)execute_4457, (funcp)execute_4458, (funcp)execute_4459, (funcp)execute_4460, (funcp)execute_4461, (funcp)execute_4462, (funcp)execute_4463, (funcp)execute_4464, (funcp)execute_4465, (funcp)execute_4466, (funcp)execute_4467, (funcp)execute_4468, (funcp)execute_4469, (funcp)execute_4470, (funcp)execute_4471, (funcp)execute_4472, (funcp)execute_4473, (funcp)execute_4474, (funcp)execute_4475, (funcp)execute_4476, (funcp)execute_4477, (funcp)execute_4478, (funcp)execute_4479, (funcp)execute_4480, (funcp)execute_4481, (funcp)execute_4482, (funcp)execute_4483, (funcp)execute_4484, (funcp)execute_4485, (funcp)execute_4486, (funcp)execute_4487, (funcp)execute_4488, (funcp)execute_4489, (funcp)execute_4490, (funcp)execute_4491, (funcp)execute_4492, (funcp)execute_4493, (funcp)execute_4494, (funcp)execute_4495, (funcp)execute_4496, (funcp)execute_4497, (funcp)execute_4498, (funcp)execute_4499, (funcp)execute_4500, (funcp)execute_4501, (funcp)execute_4502, (funcp)execute_4503, (funcp)execute_4504, (funcp)execute_4505, (funcp)execute_4506, (funcp)execute_4507, (funcp)execute_4508, (funcp)execute_4509, (funcp)execute_4510, (funcp)execute_4511, (funcp)execute_4512, (funcp)execute_4513, (funcp)execute_4514, (funcp)execute_4515, (funcp)execute_4516, (funcp)execute_4517, (funcp)execute_4518, (funcp)execute_4519, (funcp)execute_4520, (funcp)execute_4521, (funcp)execute_4522, (funcp)execute_4523, (funcp)execute_4524, (funcp)execute_4525, (funcp)execute_4526, (funcp)execute_4527, (funcp)execute_4528, (funcp)execute_4529, (funcp)execute_4530, (funcp)execute_4531, (funcp)execute_4532, (funcp)execute_4533, (funcp)execute_4534, (funcp)execute_4535, (funcp)execute_4536, (funcp)execute_4537, (funcp)execute_4538, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_2934, (funcp)execute_2935, (funcp)execute_2936, (funcp)execute_2937, (funcp)execute_2938, (funcp)execute_2939, (funcp)execute_2940, (funcp)execute_2941, (funcp)execute_2942, (funcp)execute_2943, (funcp)execute_2944, (funcp)execute_2945, (funcp)execute_2946, (funcp)execute_2947, (funcp)execute_2948, (funcp)execute_2949, (funcp)execute_2950, (funcp)execute_2951, (funcp)execute_2952, (funcp)execute_2953, (funcp)execute_2954, (funcp)execute_13, (funcp)execute_14, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_23, (funcp)execute_24, (funcp)execute_26, (funcp)execute_27, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_2931, (funcp)execute_2932, (funcp)execute_2933, (funcp)execute_42, (funcp)execute_43, (funcp)execute_2907, (funcp)execute_2908, (funcp)execute_2909, (funcp)execute_2910, (funcp)execute_2911, (funcp)execute_2912, (funcp)execute_2913, (funcp)execute_2914, (funcp)execute_2915, (funcp)execute_2916, (funcp)execute_2917, (funcp)execute_2918, (funcp)execute_2919, (funcp)execute_2920, (funcp)execute_2921, (funcp)execute_2922, (funcp)execute_2923, (funcp)execute_2924, (funcp)execute_2925, (funcp)execute_2926, (funcp)execute_2927, (funcp)execute_2928, (funcp)execute_2929, (funcp)execute_2930, (funcp)execute_32, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_2901, (funcp)execute_2902, (funcp)execute_2903, (funcp)execute_6193, (funcp)execute_6194, (funcp)execute_6195, (funcp)execute_6196, (funcp)execute_6197, (funcp)transaction_10, (funcp)transaction_11, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_49, (funcp)transaction_7893};
const int NumRelocateId= 210;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testcop_behav/xsim.reloc",  (void **)funcTab, 210);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testcop_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/testcop_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/testcop_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testcop_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testcop_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
