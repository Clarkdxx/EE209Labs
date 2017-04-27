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
static const char *ng0 = "//vlabfs.vlab.usc.edu/home$/xiaoxida/Documents/EE209Labs/heap1/heap_tb.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {6U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {1U, 0U};



static int sp_do_push(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);

LAB6:    t5 = (t1 + 2792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB8;

LAB7:    t14 = (t2 + 88U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    xsi_wp_set_status(t16, 1);
    t17 = (t2 + 48U);
    *((char **)t17) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB8:    t18 = (t2 + 88U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    xsi_wp_set_status(t20, 0);
    xsi_set_current_line(44, ng0);
    t21 = (t2 + 56U);
    t22 = *((char **)t21);
    xsi_process_wait(t22, 1000LL);
    *((char **)t3) = &&LAB9;
    t0 = 1;
    goto LAB1;

LAB9:    xsi_set_current_line(45, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 3112);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t4 = (t1 + 3592);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3432);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 8);
    xsi_set_current_line(47, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 10000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(48, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3112);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(49, ng0);

LAB11:    t4 = (t1 + 2232U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB13;

LAB12:    t6 = (t2 + 88U);
    t7 = *((char **)t6);
    t8 = (t7 + 16U);
    xsi_wp_set_status(t8, 1);
    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB11;
    goto LAB1;

LAB13:    t15 = (t2 + 88U);
    t16 = *((char **)t15);
    t17 = (t16 + 16U);
    xsi_wp_set_status(t17, 0);
    xsi_set_current_line(50, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 32000LL);
    *((char **)t3) = &&LAB14;
    t0 = 1;
    goto LAB1;

LAB14:    goto LAB4;

}

static int sp_do_pop(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1280);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);

LAB6:    t5 = (t1 + 2792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB8;

LAB7:    t14 = (t2 + 88U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    xsi_wp_set_status(t16, 1);
    t17 = (t2 + 48U);
    *((char **)t17) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB8:    t18 = (t2 + 88U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    xsi_wp_set_status(t20, 0);
    xsi_set_current_line(57, ng0);
    t21 = (t2 + 56U);
    t22 = *((char **)t21);
    xsi_process_wait(t22, 1000LL);
    *((char **)t3) = &&LAB9;
    t0 = 1;
    goto LAB1;

LAB9:    xsi_set_current_line(58, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 3272);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 10000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(60, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3272);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(61, ng0);

LAB11:    t4 = (t1 + 2232U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB13;

LAB12:    t6 = (t2 + 88U);
    t7 = *((char **)t6);
    t8 = (t7 + 16U);
    xsi_wp_set_status(t8, 1);
    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB11;
    goto LAB1;

LAB13:    t15 = (t2 + 88U);
    t16 = *((char **)t15);
    t17 = (t16 + 16U);
    xsi_wp_set_status(t17, 0);
    xsi_set_current_line(62, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 32000LL);
    *((char **)t3) = &&LAB14;
    t0 = 1;
    goto LAB1;

LAB14:    goto LAB4;

}

static void Always_79_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 4512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4320);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 2792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2792);
    xsi_vlogvar_wait_assign_value(t24, t3, 0, 0, 1, 0LL);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_81_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 4760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);

LAB4:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3272);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3432);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4568);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4568);
    xsi_process_wait(t2, 12000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4568);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4568);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 3592);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB10:    t7 = (t0 + 4664);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB12:    if (t15 != 0)
        goto LAB13;

LAB8:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB9:    t16 = (t0 + 4664);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 4568);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4568);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 3592);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB16:    t7 = (t0 + 4664);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB18:    if (t15 != 0)
        goto LAB19;

LAB14:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB15:    t16 = (t0 + 4664);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 4568);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4568);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 3592);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB22:    t7 = (t0 + 4664);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB24:    if (t15 != 0)
        goto LAB25;

LAB20:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB21:    t16 = (t0 + 4664);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 4568);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 4568);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 3592);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB28:    t7 = (t0 + 4664);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB30:    if (t15 != 0)
        goto LAB31;

LAB26:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB27:    t16 = (t0 + 4664);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 4568);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4568);
    t3 = (t0 + 1280);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB34:    t5 = (t0 + 4664);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t15 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB36:    if (t15 != 0)
        goto LAB37;

LAB32:    t6 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t6);

LAB33:    t13 = (t0 + 4664);
    t14 = *((char **)t13);
    t13 = (t0 + 1280);
    t16 = (t0 + 4568);
    t17 = 0;
    xsi_delete_subprogram_invocation(t13, t14, t0, t16, t17);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4568);
    t3 = (t0 + 1280);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB40:    t5 = (t0 + 4664);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t15 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB42:    if (t15 != 0)
        goto LAB43;

LAB38:    t6 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t6);

LAB39:    t13 = (t0 + 4664);
    t14 = *((char **)t13);
    t13 = (t0 + 1280);
    t16 = (t0 + 4568);
    t17 = 0;
    xsi_delete_subprogram_invocation(t13, t14, t0, t16, t17);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4568);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 3592);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB46:    t7 = (t0 + 4664);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB48:    if (t15 != 0)
        goto LAB49;

LAB44:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB45:    t16 = (t0 + 4664);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 4568);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4568);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB11:;
LAB13:    t7 = (t0 + 4760U);
    *((char **)t7) = &&LAB10;
    goto LAB1;

LAB17:;
LAB19:    t7 = (t0 + 4760U);
    *((char **)t7) = &&LAB16;
    goto LAB1;

LAB23:;
LAB25:    t7 = (t0 + 4760U);
    *((char **)t7) = &&LAB22;
    goto LAB1;

LAB29:;
LAB31:    t7 = (t0 + 4760U);
    *((char **)t7) = &&LAB28;
    goto LAB1;

LAB35:;
LAB37:    t5 = (t0 + 4760U);
    *((char **)t5) = &&LAB34;
    goto LAB1;

LAB41:;
LAB43:    t5 = (t0 + 4760U);
    *((char **)t5) = &&LAB40;
    goto LAB1;

LAB47:;
LAB49:    t7 = (t0 + 4760U);
    *((char **)t7) = &&LAB46;
    goto LAB1;

LAB50:    goto LAB1;

}


extern void work_m_00000000001387377006_1705347471_init()
{
	static char *pe[] = {(void *)Always_79_0,(void *)Initial_81_1};
	static char *se[] = {(void *)sp_do_push,(void *)sp_do_pop};
	xsi_register_didat("work_m_00000000001387377006_1705347471", "isim/heap_tb_isim_beh.exe.sim/work/m_00000000001387377006_1705347471.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
