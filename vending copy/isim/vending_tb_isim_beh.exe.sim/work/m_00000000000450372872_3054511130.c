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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vlabfs.vlab.usc.edu/home$/xiaoxida/Documents/EE209Labs/vending/adder8.v";
static unsigned int ng1[] = {0U, 0U};



static void Cont_29_0(char *t0)
{
    char t3[8];
    char t5[8];
    char t8[8];
    char t11[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    xsi_vlogtype_concat(t3, 9, 9, 2U, t2, 1, t4, 8);
    t6 = (t0 + 1208U);
    t7 = *((char **)t6);
    t6 = ((char*)((ng1)));
    xsi_vlogtype_concat(t5, 9, 9, 2U, t6, 1, t7, 8);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 9, t3, 9, t5, 9);
    t9 = (t0 + 1368U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 9, t8, 9, t10, 1);
    t9 = (t0 + 3312);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memset(t15, 0, 8);
    t16 = 255U;
    t17 = t16;
    t18 = (t11 + 4);
    t19 = *((unsigned int *)t11);
    t16 = (t16 & t19);
    t20 = *((unsigned int *)t18);
    t17 = (t17 & t20);
    t21 = (t15 + 4);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t22 | t16);
    t23 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t23 | t17);
    xsi_driver_vfirst_trans(t9, 0, 7);
    t24 = (t0 + 3248);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memset(t28, 0, 8);
    t29 = 256U;
    t30 = t29;
    t31 = (t11 + 4);
    t32 = *((unsigned int *)t11);
    t29 = (t29 & t32);
    t33 = *((unsigned int *)t31);
    t30 = (t30 & t33);
    t29 = (t29 >> 8);
    t30 = (t30 >> 8);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t35 | t29);
    t36 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t36 | t30);
    xsi_driver_vfirst_trans(t24, 0, 0);
    t37 = (t0 + 3168);
    *((int *)t37) = 1;

LAB1:    return;
}


extern void work_m_00000000000450372872_3054511130_init()
{
	static char *pe[] = {(void *)Cont_29_0};
	xsi_register_didat("work_m_00000000000450372872_3054511130", "isim/vending_tb_isim_beh.exe.sim/work/m_00000000000450372872_3054511130.didat");
	xsi_register_executes(pe);
}
