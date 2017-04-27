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
static const char *ng0 = "//vlabfs.vlab.usc.edu/home$/xiaoxida/Documents/EE209Labs/heap3/heap_soc_tb.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {80, 0};
static int ng4[] = {2, 0};
static int ng5[] = {32, 0};
static int ng6[] = {3, 0};
static unsigned int ng7[] = {0U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {4U, 0U};



static int sp_do_pblaze_push(char *t1, char *t2)
{
    char t7[8];
    char t20[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(22, ng0);

LAB5:    xsi_set_current_line(23, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t1 + 3336);
    t8 = (t1 + 3336);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t7, t10, 2, t11, 32, 1);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    if (t14 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(24, ng0);
    t4 = (t1 + 4136);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t1 + 3496);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 8);
    xsi_set_current_line(25, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 260000LL);
    *((char **)t3) = &&LAB8;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t7), 1);
    goto LAB7;

LAB8:    xsi_set_current_line(26, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3336);
    t6 = (t1 + 3336);
    t8 = (t6 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t7, t9, 2, t10, 32, 1);
    t11 = (t7 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (!(t13));
    if (t14 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(27, ng0);
    xsi_set_current_line(27, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB11:    t4 = (t1 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng3)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t6, 32, t8, 32);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t9);
    t15 = (~(t13));
    t16 = *((unsigned int *)t7);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(31, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 5000LL);
    *((char **)t3) = &&LAB29;
    t0 = 1;
    goto LAB1;

LAB9:    xsi_vlogvar_assign_value(t5, t4, 0, *((unsigned int *)t7), 1);
    goto LAB10;

LAB12:    xsi_set_current_line(27, ng0);

LAB14:    xsi_set_current_line(28, ng0);

LAB15:    t10 = (t1 + 3656);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t19 = ((char*)((ng2)));
    memset(t20, 0, 8);
    t21 = (t12 + 4);
    t22 = (t19 + 4);
    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t21);
    t31 = *((unsigned int *)t22);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB19;

LAB16:    if (t32 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t20) = 1;

LAB19:    t36 = (t20 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB21;

LAB20:    t42 = (t2 + 88U);
    t43 = *((char **)t42);
    t44 = (t43 + 0U);
    xsi_wp_set_status(t44, 1);
    t45 = (t2 + 48U);
    *((char **)t45) = &&LAB15;
    goto LAB1;

LAB18:    t35 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB19;

LAB21:    t46 = (t2 + 88U);
    t47 = *((char **)t46);
    t48 = (t47 + 0U);
    xsi_wp_set_status(t48, 0);
    xsi_set_current_line(29, ng0);

LAB22:    t4 = (t1 + 3656);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng1)));
    memset(t7, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t13 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t13 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t23 = (t17 ^ t18);
    t24 = (t16 | t23);
    t25 = *((unsigned int *)t9);
    t26 = *((unsigned int *)t10);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB26;

LAB23:    if (t27 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t7) = 1;

LAB26:    t12 = (t7 + 4);
    t30 = *((unsigned int *)t12);
    t31 = (~(t30));
    t32 = *((unsigned int *)t7);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB28;

LAB27:    t19 = (t2 + 88U);
    t21 = *((char **)t19);
    t22 = (t21 + 16U);
    xsi_wp_set_status(t22, 1);
    t35 = (t2 + 48U);
    *((char **)t35) = &&LAB22;
    goto LAB1;

LAB25:    t11 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB26;

LAB28:    t36 = (t2 + 88U);
    t42 = *((char **)t36);
    t43 = (t42 + 16U);
    xsi_wp_set_status(t43, 0);
    xsi_set_current_line(27, ng0);
    t4 = (t1 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t6, 32, t8, 32);
    t9 = (t1 + 3976);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB11;

LAB29:    goto LAB4;

}

static int sp_do_pblaze_pop(char *t1, char *t2)
{
    char t7[8];
    char t20[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1280);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t1 + 3336);
    t8 = (t1 + 3336);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t7, t10, 2, t11, 32, 1);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    if (t14 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(38, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 260000LL);
    *((char **)t3) = &&LAB8;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t7), 1);
    goto LAB7;

LAB8:    xsi_set_current_line(39, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3336);
    t6 = (t1 + 3336);
    t8 = (t6 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t7, t9, 2, t10, 32, 1);
    t11 = (t7 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (!(t13));
    if (t14 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(40, ng0);
    xsi_set_current_line(40, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB11:    t4 = (t1 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng3)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t6, 32, t8, 32);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t9);
    t15 = (~(t13));
    t16 = *((unsigned int *)t7);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(44, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 5000LL);
    *((char **)t3) = &&LAB29;
    t0 = 1;
    goto LAB1;

LAB9:    xsi_vlogvar_assign_value(t5, t4, 0, *((unsigned int *)t7), 1);
    goto LAB10;

LAB12:    xsi_set_current_line(40, ng0);

LAB14:    xsi_set_current_line(41, ng0);

LAB15:    t10 = (t1 + 3656);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t19 = ((char*)((ng2)));
    memset(t20, 0, 8);
    t21 = (t12 + 4);
    t22 = (t19 + 4);
    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t21);
    t31 = *((unsigned int *)t22);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB19;

LAB16:    if (t32 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t20) = 1;

LAB19:    t36 = (t20 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB21;

LAB20:    t42 = (t2 + 88U);
    t43 = *((char **)t42);
    t44 = (t43 + 0U);
    xsi_wp_set_status(t44, 1);
    t45 = (t2 + 48U);
    *((char **)t45) = &&LAB15;
    goto LAB1;

LAB18:    t35 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB19;

LAB21:    t46 = (t2 + 88U);
    t47 = *((char **)t46);
    t48 = (t47 + 0U);
    xsi_wp_set_status(t48, 0);
    xsi_set_current_line(42, ng0);

LAB22:    t4 = (t1 + 3656);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng1)));
    memset(t7, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t13 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t13 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t23 = (t17 ^ t18);
    t24 = (t16 | t23);
    t25 = *((unsigned int *)t9);
    t26 = *((unsigned int *)t10);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB26;

LAB23:    if (t27 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t7) = 1;

LAB26:    t12 = (t7 + 4);
    t30 = *((unsigned int *)t12);
    t31 = (~(t30));
    t32 = *((unsigned int *)t7);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB28;

LAB27:    t19 = (t2 + 88U);
    t21 = *((char **)t19);
    t22 = (t21 + 16U);
    xsi_wp_set_status(t22, 1);
    t35 = (t2 + 48U);
    *((char **)t35) = &&LAB22;
    goto LAB1;

LAB25:    t11 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB26;

LAB28:    t36 = (t2 + 88U);
    t42 = *((char **)t36);
    t43 = (t42 + 16U);
    xsi_wp_set_status(t43, 0);
    xsi_set_current_line(40, ng0);
    t4 = (t1 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t6, 32, t8, 32);
    t9 = (t1 + 3976);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB11;

LAB29:    goto LAB4;

}

static int sp_do_pblaze_top(char *t1, char *t2)
{
    char t7[8];
    char t20[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1712);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t1 + 3336);
    t8 = (t1 + 3336);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t7, t10, 2, t11, 32, 1);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    if (t14 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(51, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 260000LL);
    *((char **)t3) = &&LAB8;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t7), 1);
    goto LAB7;

LAB8:    xsi_set_current_line(52, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3336);
    t6 = (t1 + 3336);
    t8 = (t6 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t7, t9, 2, t10, 32, 1);
    t11 = (t7 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (!(t13));
    if (t14 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(53, ng0);
    xsi_set_current_line(53, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB11:    t4 = (t1 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t6, 32, t8, 32);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t9);
    t15 = (~(t13));
    t16 = *((unsigned int *)t7);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(57, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 5000LL);
    *((char **)t3) = &&LAB29;
    t0 = 1;
    goto LAB1;

LAB9:    xsi_vlogvar_assign_value(t5, t4, 0, *((unsigned int *)t7), 1);
    goto LAB10;

LAB12:    xsi_set_current_line(53, ng0);

LAB14:    xsi_set_current_line(54, ng0);

LAB15:    t10 = (t1 + 3656);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t19 = ((char*)((ng2)));
    memset(t20, 0, 8);
    t21 = (t12 + 4);
    t22 = (t19 + 4);
    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t21);
    t31 = *((unsigned int *)t22);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB19;

LAB16:    if (t32 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t20) = 1;

LAB19:    t36 = (t20 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB21;

LAB20:    t42 = (t2 + 88U);
    t43 = *((char **)t42);
    t44 = (t43 + 0U);
    xsi_wp_set_status(t44, 1);
    t45 = (t2 + 48U);
    *((char **)t45) = &&LAB15;
    goto LAB1;

LAB18:    t35 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB19;

LAB21:    t46 = (t2 + 88U);
    t47 = *((char **)t46);
    t48 = (t47 + 0U);
    xsi_wp_set_status(t48, 0);
    xsi_set_current_line(55, ng0);

LAB22:    t4 = (t1 + 3656);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng1)));
    memset(t7, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t13 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t13 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t23 = (t17 ^ t18);
    t24 = (t16 | t23);
    t25 = *((unsigned int *)t9);
    t26 = *((unsigned int *)t10);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB26;

LAB23:    if (t27 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t7) = 1;

LAB26:    t12 = (t7 + 4);
    t30 = *((unsigned int *)t12);
    t31 = (~(t30));
    t32 = *((unsigned int *)t7);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB28;

LAB27:    t19 = (t2 + 88U);
    t21 = *((char **)t19);
    t22 = (t21 + 16U);
    xsi_wp_set_status(t22, 1);
    t35 = (t2 + 48U);
    *((char **)t35) = &&LAB22;
    goto LAB1;

LAB25:    t11 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB26;

LAB28:    t36 = (t2 + 88U);
    t42 = *((char **)t36);
    t43 = (t42 + 16U);
    xsi_wp_set_status(t43, 0);
    xsi_set_current_line(53, ng0);
    t4 = (t1 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t6, 32, t8, 32);
    t9 = (t1 + 3976);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB11;

LAB29:    goto LAB4;

}

static int sp_do_pblaze_size(char *t1, char *t2)
{
    char t7[8];
    char t20[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 2144);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(62, ng0);

LAB5:    xsi_set_current_line(63, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t1 + 3336);
    t8 = (t1 + 3336);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t7, t10, 2, t11, 32, 1);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    if (t14 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(64, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 260000LL);
    *((char **)t3) = &&LAB8;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t7), 1);
    goto LAB7;

LAB8:    xsi_set_current_line(65, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3336);
    t6 = (t1 + 3336);
    t8 = (t6 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t7, t9, 2, t10, 32, 1);
    t11 = (t7 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (!(t13));
    if (t14 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(66, ng0);
    xsi_set_current_line(66, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB11:    t4 = (t1 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t6, 32, t8, 32);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t9);
    t15 = (~(t13));
    t16 = *((unsigned int *)t7);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(70, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 5000LL);
    *((char **)t3) = &&LAB29;
    t0 = 1;
    goto LAB1;

LAB9:    xsi_vlogvar_assign_value(t5, t4, 0, *((unsigned int *)t7), 1);
    goto LAB10;

LAB12:    xsi_set_current_line(66, ng0);

LAB14:    xsi_set_current_line(67, ng0);

LAB15:    t10 = (t1 + 3656);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t19 = ((char*)((ng2)));
    memset(t20, 0, 8);
    t21 = (t12 + 4);
    t22 = (t19 + 4);
    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t21);
    t31 = *((unsigned int *)t22);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB19;

LAB16:    if (t32 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t20) = 1;

LAB19:    t36 = (t20 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB21;

LAB20:    t42 = (t2 + 88U);
    t43 = *((char **)t42);
    t44 = (t43 + 0U);
    xsi_wp_set_status(t44, 1);
    t45 = (t2 + 48U);
    *((char **)t45) = &&LAB15;
    goto LAB1;

LAB18:    t35 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB19;

LAB21:    t46 = (t2 + 88U);
    t47 = *((char **)t46);
    t48 = (t47 + 0U);
    xsi_wp_set_status(t48, 0);
    xsi_set_current_line(68, ng0);

LAB22:    t4 = (t1 + 3656);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng1)));
    memset(t7, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t13 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t13 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t23 = (t17 ^ t18);
    t24 = (t16 | t23);
    t25 = *((unsigned int *)t9);
    t26 = *((unsigned int *)t10);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB26;

LAB23:    if (t27 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t7) = 1;

LAB26:    t12 = (t7 + 4);
    t30 = *((unsigned int *)t12);
    t31 = (~(t30));
    t32 = *((unsigned int *)t7);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB28;

LAB27:    t19 = (t2 + 88U);
    t21 = *((char **)t19);
    t22 = (t21 + 16U);
    xsi_wp_set_status(t22, 1);
    t35 = (t2 + 48U);
    *((char **)t35) = &&LAB22;
    goto LAB1;

LAB25:    t11 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB26;

LAB28:    t36 = (t2 + 88U);
    t42 = *((char **)t36);
    t43 = (t42 + 16U);
    xsi_wp_set_status(t43, 0);
    xsi_set_current_line(66, ng0);
    t4 = (t1 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t6, 32, t8, 32);
    t9 = (t1 + 3976);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB11;

LAB29:    goto LAB4;

}

static void Always_85_0(char *t0)
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

LAB0:    t1 = (t0 + 5056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4864);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(85, ng0);
    t4 = (t0 + 3656);
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
    t24 = (t0 + 3656);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
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

static void Initial_87_1(char *t0)
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
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 5304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);

LAB4:    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3656);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5112);
    xsi_process_wait(t2, 105000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 5112);
    t3 = (t0 + 2144);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB8:    t5 = (t0 + 5208);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB10:    if (t13 != 0)
        goto LAB11;

LAB6:    t6 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t6);

LAB7:    t14 = (t0 + 5208);
    t15 = *((char **)t14);
    t14 = (t0 + 2144);
    t16 = (t0 + 5112);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5112);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 4136);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB14:    t7 = (t0 + 5208);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t14 = (t12 + 0U);
    t15 = *((char **)t14);
    t13 = ((int  (*)(char *, char *))t15)(t0, t8);

LAB16:    if (t13 != 0)
        goto LAB17;

LAB12:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB13:    t16 = (t0 + 5208);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 5112);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 5112);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 4136);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB20:    t7 = (t0 + 5208);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t14 = (t12 + 0U);
    t15 = *((char **)t14);
    t13 = ((int  (*)(char *, char *))t15)(t0, t8);

LAB22:    if (t13 != 0)
        goto LAB23;

LAB18:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB19:    t16 = (t0 + 5208);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 5112);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 5112);
    t3 = (t0 + 2144);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB26:    t5 = (t0 + 5208);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB28:    if (t13 != 0)
        goto LAB29;

LAB24:    t6 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t6);

LAB25:    t14 = (t0 + 5208);
    t15 = *((char **)t14);
    t14 = (t0 + 2144);
    t16 = (t0 + 5112);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5112);
    t3 = (t0 + 1712);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB32:    t5 = (t0 + 5208);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB34:    if (t13 != 0)
        goto LAB35;

LAB30:    t6 = (t0 + 1712);
    xsi_vlog_subprogram_popinvocation(t6);

LAB31:    t14 = (t0 + 5208);
    t15 = *((char **)t14);
    t14 = (t0 + 1712);
    t16 = (t0 + 5112);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5112);
    t3 = (t0 + 1280);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB38:    t5 = (t0 + 5208);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB40:    if (t13 != 0)
        goto LAB41;

LAB36:    t6 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t6);

LAB37:    t14 = (t0 + 5208);
    t15 = *((char **)t14);
    t14 = (t0 + 1280);
    t16 = (t0 + 5112);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5112);
    t3 = (t0 + 2144);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB44:    t5 = (t0 + 5208);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB46:    if (t13 != 0)
        goto LAB47;

LAB42:    t6 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t6);

LAB43:    t14 = (t0 + 5208);
    t15 = *((char **)t14);
    t14 = (t0 + 2144);
    t16 = (t0 + 5112);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5112);
    t3 = (t0 + 1712);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB50:    t5 = (t0 + 5208);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB52:    if (t13 != 0)
        goto LAB53;

LAB48:    t6 = (t0 + 1712);
    xsi_vlog_subprogram_popinvocation(t6);

LAB49:    t14 = (t0 + 5208);
    t15 = *((char **)t14);
    t14 = (t0 + 1712);
    t16 = (t0 + 5112);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5112);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB9:;
LAB11:    t5 = (t0 + 5304U);
    *((char **)t5) = &&LAB8;
    goto LAB1;

LAB15:;
LAB17:    t7 = (t0 + 5304U);
    *((char **)t7) = &&LAB14;
    goto LAB1;

LAB21:;
LAB23:    t7 = (t0 + 5304U);
    *((char **)t7) = &&LAB20;
    goto LAB1;

LAB27:;
LAB29:    t5 = (t0 + 5304U);
    *((char **)t5) = &&LAB26;
    goto LAB1;

LAB33:;
LAB35:    t5 = (t0 + 5304U);
    *((char **)t5) = &&LAB32;
    goto LAB1;

LAB39:;
LAB41:    t5 = (t0 + 5304U);
    *((char **)t5) = &&LAB38;
    goto LAB1;

LAB45:;
LAB47:    t5 = (t0 + 5304U);
    *((char **)t5) = &&LAB44;
    goto LAB1;

LAB51:;
LAB53:    t5 = (t0 + 5304U);
    *((char **)t5) = &&LAB50;
    goto LAB1;

LAB54:    goto LAB1;

}


extern void work_m_00000000002429225778_4234522673_init()
{
	static char *pe[] = {(void *)Always_85_0,(void *)Initial_87_1};
	static char *se[] = {(void *)sp_do_pblaze_push,(void *)sp_do_pblaze_pop,(void *)sp_do_pblaze_top,(void *)sp_do_pblaze_size};
	xsi_register_didat("work_m_00000000002429225778_4234522673", "isim/heap_soc_tb_isim_beh.exe.sim/work/m_00000000002429225778_4234522673.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
