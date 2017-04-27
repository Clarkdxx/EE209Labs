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
static const char *ng0 = "//vlabfs.vlab.usc.edu/home$/xiaoxida/Documents/EE209Labs/hw4/fa.v";



static void Cont_29_0(char *t0)
{
    char t5[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 ^ t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t19);
    t23 = (t21 ^ t22);
    *((unsigned int *)t20) = t23;
    t18 = (t5 + 4);
    t24 = (t19 + 4);
    t25 = (t20 + 4);
    t26 = *((unsigned int *)t18);
    t27 = *((unsigned int *)t24);
    t28 = (t26 | t27);
    *((unsigned int *)t25) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 != 0);
    if (t30 == 1)
        goto LAB7;

LAB8:
LAB9:    t33 = (t0 + 3512);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memset(t37, 0, 8);
    t38 = 1U;
    t39 = t38;
    t40 = (t20 + 4);
    t41 = *((unsigned int *)t20);
    t38 = (t38 & t41);
    t42 = *((unsigned int *)t40);
    t39 = (t39 & t42);
    t43 = (t37 + 4);
    t44 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t44 | t38);
    t45 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t45 | t39);
    xsi_driver_vfirst_trans(t33, 0, 0);
    t46 = (t0 + 3416);
    *((int *)t46) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    goto LAB6;

LAB7:    t31 = *((unsigned int *)t20);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t20) = (t31 | t32);
    goto LAB9;

}

static void Cont_30_1(char *t0)
{
    char t4[8];
    char t17[8];
    char t24[8];
    char t56[8];
    char t71[8];
    char t84[8];
    char t91[8];
    char t123[8];
    char t131[8];
    char t159[8];
    char t174[8];
    char t187[8];
    char t194[8];
    char t226[8];
    char t234[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    int t115;
    int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    char *t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    char *t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t173;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    char *t180;
    char *t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    char *t185;
    char *t186;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    char *t193;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    char *t198;
    char *t199;
    char *t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    char *t208;
    char *t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    int t218;
    int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    char *t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    char *t233;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    char *t238;
    char *t239;
    char *t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    unsigned int t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    char *t248;
    char *t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    int t253;
    unsigned int t254;
    unsigned int t255;
    unsigned int t256;
    int t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    char *t262;
    char *t263;
    char *t264;
    char *t265;
    char *t266;
    unsigned int t267;
    unsigned int t268;
    char *t269;
    unsigned int t270;
    unsigned int t271;
    char *t272;
    unsigned int t273;
    unsigned int t274;
    char *t275;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t11 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t11);
    t14 = (t12 || t13);
    if (t14 > 0)
        goto LAB8;

LAB9:    memcpy(t24, t4, 8);

LAB10:    memset(t56, 0, 8);
    t57 = (t24 + 4);
    t58 = *((unsigned int *)t57);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (t60 & t59);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t57) != 0)
        goto LAB20;

LAB21:    t64 = (t56 + 4);
    t65 = *((unsigned int *)t56);
    t66 = (!(t65));
    t67 = *((unsigned int *)t64);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB22;

LAB23:    memcpy(t131, t56, 8);

LAB24:    memset(t159, 0, 8);
    t160 = (t131 + 4);
    t161 = *((unsigned int *)t160);
    t162 = (~(t161));
    t163 = *((unsigned int *)t131);
    t164 = (t163 & t162);
    t165 = (t164 & 1U);
    if (t165 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t160) != 0)
        goto LAB48;

LAB49:    t167 = (t159 + 4);
    t168 = *((unsigned int *)t159);
    t169 = (!(t168));
    t170 = *((unsigned int *)t167);
    t171 = (t169 || t170);
    if (t171 > 0)
        goto LAB50;

LAB51:    memcpy(t234, t159, 8);

LAB52:    t262 = (t0 + 3576);
    t263 = (t262 + 56U);
    t264 = *((char **)t263);
    t265 = (t264 + 56U);
    t266 = *((char **)t265);
    memset(t266, 0, 8);
    t267 = 1U;
    t268 = t267;
    t269 = (t234 + 4);
    t270 = *((unsigned int *)t234);
    t267 = (t267 & t270);
    t271 = *((unsigned int *)t269);
    t268 = (t268 & t271);
    t272 = (t266 + 4);
    t273 = *((unsigned int *)t266);
    *((unsigned int *)t266) = (t273 | t267);
    t274 = *((unsigned int *)t272);
    *((unsigned int *)t272) = (t274 | t268);
    xsi_driver_vfirst_trans(t262, 0, 0);
    t275 = (t0 + 3432);
    *((int *)t275) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t10 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB7;

LAB8:    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t15 = (t16 + 4);
    t18 = *((unsigned int *)t15);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t15) != 0)
        goto LAB13;

LAB14:    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t17);
    t27 = (t25 & t26);
    *((unsigned int *)t24) = t27;
    t28 = (t4 + 4);
    t29 = (t17 + 4);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t28);
    t32 = *((unsigned int *)t29);
    t33 = (t31 | t32);
    *((unsigned int *)t30) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB10;

LAB11:    *((unsigned int *)t17) = 1;
    goto LAB14;

LAB13:    t23 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB14;

LAB15:    t36 = *((unsigned int *)t24);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t24) = (t36 | t37);
    t38 = (t4 + 4);
    t39 = (t17 + 4);
    t40 = *((unsigned int *)t4);
    t41 = (~(t40));
    t42 = *((unsigned int *)t38);
    t43 = (~(t42));
    t44 = *((unsigned int *)t17);
    t45 = (~(t44));
    t46 = *((unsigned int *)t39);
    t47 = (~(t46));
    t48 = (t41 & t43);
    t49 = (t45 & t47);
    t50 = (~(t48));
    t51 = (~(t49));
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t50);
    t53 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t53 & t51);
    t54 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t54 & t50);
    t55 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t55 & t51);
    goto LAB17;

LAB18:    *((unsigned int *)t56) = 1;
    goto LAB21;

LAB20:    t63 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t63) = 1;
    goto LAB21;

LAB22:    t69 = (t0 + 1208U);
    t70 = *((char **)t69);
    memset(t71, 0, 8);
    t69 = (t70 + 4);
    t72 = *((unsigned int *)t69);
    t73 = (~(t72));
    t74 = *((unsigned int *)t70);
    t75 = (t74 & t73);
    t76 = (t75 & 1U);
    if (t76 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t69) != 0)
        goto LAB27;

LAB28:    t78 = (t71 + 4);
    t79 = *((unsigned int *)t71);
    t80 = *((unsigned int *)t78);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB29;

LAB30:    memcpy(t91, t71, 8);

LAB31:    memset(t123, 0, 8);
    t124 = (t91 + 4);
    t125 = *((unsigned int *)t124);
    t126 = (~(t125));
    t127 = *((unsigned int *)t91);
    t128 = (t127 & t126);
    t129 = (t128 & 1U);
    if (t129 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t124) != 0)
        goto LAB41;

LAB42:    t132 = *((unsigned int *)t56);
    t133 = *((unsigned int *)t123);
    t134 = (t132 | t133);
    *((unsigned int *)t131) = t134;
    t135 = (t56 + 4);
    t136 = (t123 + 4);
    t137 = (t131 + 4);
    t138 = *((unsigned int *)t135);
    t139 = *((unsigned int *)t136);
    t140 = (t138 | t139);
    *((unsigned int *)t137) = t140;
    t141 = *((unsigned int *)t137);
    t142 = (t141 != 0);
    if (t142 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB24;

LAB25:    *((unsigned int *)t71) = 1;
    goto LAB28;

LAB27:    t77 = (t71 + 4);
    *((unsigned int *)t71) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB28;

LAB29:    t82 = (t0 + 1368U);
    t83 = *((char **)t82);
    memset(t84, 0, 8);
    t82 = (t83 + 4);
    t85 = *((unsigned int *)t82);
    t86 = (~(t85));
    t87 = *((unsigned int *)t83);
    t88 = (t87 & t86);
    t89 = (t88 & 1U);
    if (t89 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t82) != 0)
        goto LAB34;

LAB35:    t92 = *((unsigned int *)t71);
    t93 = *((unsigned int *)t84);
    t94 = (t92 & t93);
    *((unsigned int *)t91) = t94;
    t95 = (t71 + 4);
    t96 = (t84 + 4);
    t97 = (t91 + 4);
    t98 = *((unsigned int *)t95);
    t99 = *((unsigned int *)t96);
    t100 = (t98 | t99);
    *((unsigned int *)t97) = t100;
    t101 = *((unsigned int *)t97);
    t102 = (t101 != 0);
    if (t102 == 1)
        goto LAB36;

LAB37:
LAB38:    goto LAB31;

LAB32:    *((unsigned int *)t84) = 1;
    goto LAB35;

LAB34:    t90 = (t84 + 4);
    *((unsigned int *)t84) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB35;

LAB36:    t103 = *((unsigned int *)t91);
    t104 = *((unsigned int *)t97);
    *((unsigned int *)t91) = (t103 | t104);
    t105 = (t71 + 4);
    t106 = (t84 + 4);
    t107 = *((unsigned int *)t71);
    t108 = (~(t107));
    t109 = *((unsigned int *)t105);
    t110 = (~(t109));
    t111 = *((unsigned int *)t84);
    t112 = (~(t111));
    t113 = *((unsigned int *)t106);
    t114 = (~(t113));
    t115 = (t108 & t110);
    t116 = (t112 & t114);
    t117 = (~(t115));
    t118 = (~(t116));
    t119 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t119 & t117);
    t120 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t120 & t118);
    t121 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t121 & t117);
    t122 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t122 & t118);
    goto LAB38;

LAB39:    *((unsigned int *)t123) = 1;
    goto LAB42;

LAB41:    t130 = (t123 + 4);
    *((unsigned int *)t123) = 1;
    *((unsigned int *)t130) = 1;
    goto LAB42;

LAB43:    t143 = *((unsigned int *)t131);
    t144 = *((unsigned int *)t137);
    *((unsigned int *)t131) = (t143 | t144);
    t145 = (t56 + 4);
    t146 = (t123 + 4);
    t147 = *((unsigned int *)t145);
    t148 = (~(t147));
    t149 = *((unsigned int *)t56);
    t150 = (t149 & t148);
    t151 = *((unsigned int *)t146);
    t152 = (~(t151));
    t153 = *((unsigned int *)t123);
    t154 = (t153 & t152);
    t155 = (~(t150));
    t156 = (~(t154));
    t157 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t157 & t155);
    t158 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t158 & t156);
    goto LAB45;

LAB46:    *((unsigned int *)t159) = 1;
    goto LAB49;

LAB48:    t166 = (t159 + 4);
    *((unsigned int *)t159) = 1;
    *((unsigned int *)t166) = 1;
    goto LAB49;

LAB50:    t172 = (t0 + 1048U);
    t173 = *((char **)t172);
    memset(t174, 0, 8);
    t172 = (t173 + 4);
    t175 = *((unsigned int *)t172);
    t176 = (~(t175));
    t177 = *((unsigned int *)t173);
    t178 = (t177 & t176);
    t179 = (t178 & 1U);
    if (t179 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t172) != 0)
        goto LAB55;

LAB56:    t181 = (t174 + 4);
    t182 = *((unsigned int *)t174);
    t183 = *((unsigned int *)t181);
    t184 = (t182 || t183);
    if (t184 > 0)
        goto LAB57;

LAB58:    memcpy(t194, t174, 8);

LAB59:    memset(t226, 0, 8);
    t227 = (t194 + 4);
    t228 = *((unsigned int *)t227);
    t229 = (~(t228));
    t230 = *((unsigned int *)t194);
    t231 = (t230 & t229);
    t232 = (t231 & 1U);
    if (t232 != 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t227) != 0)
        goto LAB69;

LAB70:    t235 = *((unsigned int *)t159);
    t236 = *((unsigned int *)t226);
    t237 = (t235 | t236);
    *((unsigned int *)t234) = t237;
    t238 = (t159 + 4);
    t239 = (t226 + 4);
    t240 = (t234 + 4);
    t241 = *((unsigned int *)t238);
    t242 = *((unsigned int *)t239);
    t243 = (t241 | t242);
    *((unsigned int *)t240) = t243;
    t244 = *((unsigned int *)t240);
    t245 = (t244 != 0);
    if (t245 == 1)
        goto LAB71;

LAB72:
LAB73:    goto LAB52;

LAB53:    *((unsigned int *)t174) = 1;
    goto LAB56;

LAB55:    t180 = (t174 + 4);
    *((unsigned int *)t174) = 1;
    *((unsigned int *)t180) = 1;
    goto LAB56;

LAB57:    t185 = (t0 + 1368U);
    t186 = *((char **)t185);
    memset(t187, 0, 8);
    t185 = (t186 + 4);
    t188 = *((unsigned int *)t185);
    t189 = (~(t188));
    t190 = *((unsigned int *)t186);
    t191 = (t190 & t189);
    t192 = (t191 & 1U);
    if (t192 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t185) != 0)
        goto LAB62;

LAB63:    t195 = *((unsigned int *)t174);
    t196 = *((unsigned int *)t187);
    t197 = (t195 & t196);
    *((unsigned int *)t194) = t197;
    t198 = (t174 + 4);
    t199 = (t187 + 4);
    t200 = (t194 + 4);
    t201 = *((unsigned int *)t198);
    t202 = *((unsigned int *)t199);
    t203 = (t201 | t202);
    *((unsigned int *)t200) = t203;
    t204 = *((unsigned int *)t200);
    t205 = (t204 != 0);
    if (t205 == 1)
        goto LAB64;

LAB65:
LAB66:    goto LAB59;

LAB60:    *((unsigned int *)t187) = 1;
    goto LAB63;

LAB62:    t193 = (t187 + 4);
    *((unsigned int *)t187) = 1;
    *((unsigned int *)t193) = 1;
    goto LAB63;

LAB64:    t206 = *((unsigned int *)t194);
    t207 = *((unsigned int *)t200);
    *((unsigned int *)t194) = (t206 | t207);
    t208 = (t174 + 4);
    t209 = (t187 + 4);
    t210 = *((unsigned int *)t174);
    t211 = (~(t210));
    t212 = *((unsigned int *)t208);
    t213 = (~(t212));
    t214 = *((unsigned int *)t187);
    t215 = (~(t214));
    t216 = *((unsigned int *)t209);
    t217 = (~(t216));
    t218 = (t211 & t213);
    t219 = (t215 & t217);
    t220 = (~(t218));
    t221 = (~(t219));
    t222 = *((unsigned int *)t200);
    *((unsigned int *)t200) = (t222 & t220);
    t223 = *((unsigned int *)t200);
    *((unsigned int *)t200) = (t223 & t221);
    t224 = *((unsigned int *)t194);
    *((unsigned int *)t194) = (t224 & t220);
    t225 = *((unsigned int *)t194);
    *((unsigned int *)t194) = (t225 & t221);
    goto LAB66;

LAB67:    *((unsigned int *)t226) = 1;
    goto LAB70;

LAB69:    t233 = (t226 + 4);
    *((unsigned int *)t226) = 1;
    *((unsigned int *)t233) = 1;
    goto LAB70;

LAB71:    t246 = *((unsigned int *)t234);
    t247 = *((unsigned int *)t240);
    *((unsigned int *)t234) = (t246 | t247);
    t248 = (t159 + 4);
    t249 = (t226 + 4);
    t250 = *((unsigned int *)t248);
    t251 = (~(t250));
    t252 = *((unsigned int *)t159);
    t253 = (t252 & t251);
    t254 = *((unsigned int *)t249);
    t255 = (~(t254));
    t256 = *((unsigned int *)t226);
    t257 = (t256 & t255);
    t258 = (~(t253));
    t259 = (~(t257));
    t260 = *((unsigned int *)t240);
    *((unsigned int *)t240) = (t260 & t258);
    t261 = *((unsigned int *)t240);
    *((unsigned int *)t240) = (t261 & t259);
    goto LAB73;

}


extern void work_m_00000000003883018569_0992280429_init()
{
	static char *pe[] = {(void *)Cont_29_0,(void *)Cont_30_1};
	xsi_register_didat("work_m_00000000003883018569_0992280429", "isim/hw4q4_tb_isim_beh.exe.sim/work/m_00000000003883018569_0992280429.didat");
	xsi_register_executes(pe);
}
