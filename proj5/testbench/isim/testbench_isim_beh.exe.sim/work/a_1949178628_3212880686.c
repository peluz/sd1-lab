/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/pedro/Documents/unb/labCD/proj5/testbench/testbench.vhd";
extern char *IEEE_P_3620187407;
extern char *STD_STANDARD;

char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_1949178628_3212880686_p_0(char *t0)
{
    char t19[16];
    char t21[16];
    char t23[16];
    char t30[16];
    char t32[16];
    char t36[16];
    char t41[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int64 t16;
    unsigned char t17;
    unsigned char t18;
    char *t20;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    char *t29;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;

LAB0:    t1 = (t0 + 2904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 5346);
    xsi_report(t2, 18U, (unsigned char)0);
    xsi_set_current_line(21, ng0);
    t2 = (t0 + 5364);
    t4 = (t0 + 1808U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t2, 4U);
    xsi_set_current_line(22, ng0);
    t2 = (t0 + 5368);
    t4 = (t0 + 1928U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t2, 4U);
    xsi_set_current_line(24, ng0);
    t2 = (t0 + 5372);
    *((int *)t2) = 1;
    t3 = (t0 + 5376);
    *((int *)t3) = 16;
    t6 = 1;
    t7 = 16;

LAB4:    if (t6 <= t7)
        goto LAB5;

LAB7:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 5401);
    xsi_report(t2, 17U, (unsigned char)0);
    xsi_set_current_line(43, ng0);

LAB22:    *((char **)t1) = &&LAB23;

LAB1:    return;
LAB5:    xsi_set_current_line(25, ng0);
    t4 = (t0 + 5380);
    *((int *)t4) = 1;
    t5 = (t0 + 5384);
    *((int *)t5) = 16;
    t8 = 1;
    t9 = 16;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t2 = (t0 + 5304U);
    t4 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t19, t3, t2, 1);
    t5 = (t0 + 1808U);
    t10 = *((char **)t5);
    t5 = (t10 + 0);
    t11 = (t19 + 12U);
    t27 = *((unsigned int *)t11);
    t44 = (1U * t27);
    memcpy(t5, t4, t44);

LAB6:    t2 = (t0 + 5372);
    t6 = *((int *)t2);
    t3 = (t0 + 5376);
    t7 = *((int *)t3);
    if (t6 == t7)
        goto LAB7;

LAB19:    t8 = (t6 + 1);
    t6 = t8;
    t4 = (t0 + 5372);
    *((int *)t4) = t6;
    goto LAB4;

LAB9:    xsi_set_current_line(27, ng0);
    t10 = (t0 + 1808U);
    t11 = *((char **)t10);
    t10 = (t0 + 3288);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 4U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1928U);
    t3 = *((char **)t2);
    t2 = (t0 + 3352);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(29, ng0);
    t16 = (500 * 1000LL);
    t2 = (t0 + 2712);
    xsi_process_wait(t2, t16);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 5380);
    t8 = *((int *)t2);
    t3 = (t0 + 5384);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB11;

LAB18:    t26 = (t8 + 1);
    t8 = t26;
    t4 = (t0 + 5380);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5240U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 5256U);
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t5, t4);
    t18 = (!(t17));
    if (t18 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1928U);
    t3 = *((char **)t2);
    t2 = (t0 + 5304U);
    t4 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t19, t3, t2, 1);
    t5 = (t0 + 1928U);
    t10 = *((char **)t5);
    t5 = (t10 + 0);
    t11 = (t19 + 12U);
    t27 = *((unsigned int *)t11);
    t44 = (1U * t27);
    memcpy(t5, t4, t44);
    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t10 = (t0 + 5388);
    t12 = ((STD_STANDARD) + 384);
    t13 = (t0 + 5372);
    t14 = xsi_int_to_mem(*((int *)t13));
    t15 = xsi_string_variable_get_image(t19, t12, t14);
    t22 = ((STD_STANDARD) + 984);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 1;
    t25 = (t24 + 4U);
    *((int *)t25) = 10;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (10 - 1);
    t27 = (t26 * 1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t20 = xsi_base_array_concat(t20, t21, t22, (char)97, t10, t23, (char)97, t15, t19, (char)101);
    t25 = (t0 + 5398);
    t31 = ((STD_STANDARD) + 984);
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 1;
    t34 = (t33 + 4U);
    *((int *)t34) = 3;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t35 = (3 - 1);
    t27 = (t35 * 1);
    t27 = (t27 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t27;
    t29 = xsi_base_array_concat(t29, t30, t31, (char)97, t20, t21, (char)97, t25, t32, (char)101);
    t34 = ((STD_STANDARD) + 384);
    t37 = (t0 + 5380);
    t38 = xsi_int_to_mem(*((int *)t37));
    t39 = xsi_string_variable_get_image(t36, t34, t38);
    t42 = ((STD_STANDARD) + 984);
    t40 = xsi_base_array_concat(t40, t41, t42, (char)97, t29, t30, (char)97, t39, t36, (char)101);
    t43 = (t19 + 12U);
    t27 = *((unsigned int *)t43);
    t44 = (10U + t27);
    t45 = (t44 + 3U);
    t46 = (t36 + 12U);
    t47 = *((unsigned int *)t46);
    t48 = (t45 + t47);
    xsi_report(t40, t48, (unsigned char)2);
    goto LAB17;

LAB20:    goto LAB2;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

}


extern void work_a_1949178628_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1949178628_3212880686_p_0};
	xsi_register_didat("work_a_1949178628_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_1949178628_3212880686.didat");
	xsi_register_executes(pe);
}
