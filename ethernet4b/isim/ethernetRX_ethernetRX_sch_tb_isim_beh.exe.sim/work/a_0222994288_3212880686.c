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
static const char *ng0 = "C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/rx_test_part1.vhd";



static void work_a_0222994288_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(63, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3280);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 4600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(65, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3280);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0222994288_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3528);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3528);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0222994288_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int64 t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int64 t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t6 = (50 * 1000LL);
    t7 = (t0 + 4728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t7, 0U, 1, t6);
    t12 = (650 * 1000LL);
    t13 = (t0 + 4728);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t13, 0U, 1, t12);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0222994288_3212880686_p_3(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int64 t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int64 t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int64 t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    int64 t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    int64 t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    int64 t56;
    char *t57;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    int64 t64;
    char *t65;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    int64 t72;
    char *t73;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    int64 t80;
    char *t81;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    int64 t88;
    char *t89;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    int64 t96;
    char *t97;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    int64 t104;
    char *t105;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    int64 t112;
    char *t113;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    int64 t120;
    char *t121;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    int64 t128;
    char *t129;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    int64 t136;
    char *t137;
    char *t139;
    char *t140;
    char *t141;
    char *t142;
    char *t143;
    int64 t144;
    char *t145;
    char *t147;
    char *t148;
    char *t149;
    char *t150;
    char *t151;
    int64 t152;
    char *t153;
    char *t155;
    char *t156;
    char *t157;
    char *t158;
    char *t159;
    int64 t160;
    char *t161;
    char *t163;
    char *t164;
    char *t165;
    char *t166;
    char *t167;
    int64 t168;
    char *t169;
    char *t171;
    char *t172;
    char *t173;
    char *t174;
    char *t175;
    int64 t176;
    char *t177;
    char *t179;
    char *t180;
    char *t181;
    char *t182;
    char *t183;
    int64 t184;
    char *t185;
    char *t187;
    char *t188;
    char *t189;
    char *t190;
    char *t191;
    int64 t192;
    char *t193;
    char *t195;
    char *t196;
    char *t197;
    char *t198;
    char *t199;
    int64 t200;
    char *t201;
    char *t203;
    char *t204;
    char *t205;
    char *t206;
    char *t207;
    int64 t208;
    char *t209;
    char *t211;
    char *t212;
    char *t213;
    char *t214;
    char *t215;
    int64 t216;
    char *t217;
    char *t219;
    char *t220;
    char *t221;
    char *t222;
    char *t223;
    int64 t224;
    char *t225;
    char *t227;
    char *t228;
    char *t229;
    char *t230;
    char *t231;
    int64 t232;
    char *t233;
    char *t235;
    char *t236;
    char *t237;
    char *t238;
    char *t239;
    int64 t240;
    char *t241;
    char *t243;
    char *t244;
    char *t245;
    char *t246;
    char *t247;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 7479);
    t3 = (t0 + 4792);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_delta(t3, 0U, 4U, 0LL);
    t8 = (50 * 1000LL);
    t9 = (t0 + 7483);
    t11 = (t0 + 4792);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 4U);
    xsi_driver_subsequent_trans_delta(t11, 0U, 4U, t8);
    t16 = (70 * 1000LL);
    t17 = (t0 + 7487);
    t19 = (t0 + 4792);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 4U);
    xsi_driver_subsequent_trans_delta(t19, 0U, 4U, t16);
    t24 = (90 * 1000LL);
    t25 = (t0 + 7491);
    t27 = (t0 + 4792);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 4U);
    xsi_driver_subsequent_trans_delta(t27, 0U, 4U, t24);
    t32 = (110 * 1000LL);
    t33 = (t0 + 7495);
    t35 = (t0 + 4792);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t33, 4U);
    xsi_driver_subsequent_trans_delta(t35, 0U, 4U, t32);
    t40 = (130 * 1000LL);
    t41 = (t0 + 7499);
    t43 = (t0 + 4792);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memcpy(t47, t41, 4U);
    xsi_driver_subsequent_trans_delta(t43, 0U, 4U, t40);
    t48 = (150 * 1000LL);
    t49 = (t0 + 7503);
    t51 = (t0 + 4792);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    memcpy(t55, t49, 4U);
    xsi_driver_subsequent_trans_delta(t51, 0U, 4U, t48);
    t56 = (170 * 1000LL);
    t57 = (t0 + 7507);
    t59 = (t0 + 4792);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    memcpy(t63, t57, 4U);
    xsi_driver_subsequent_trans_delta(t59, 0U, 4U, t56);
    t64 = (190 * 1000LL);
    t65 = (t0 + 7511);
    t67 = (t0 + 4792);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    memcpy(t71, t65, 4U);
    xsi_driver_subsequent_trans_delta(t67, 0U, 4U, t64);
    t72 = (210 * 1000LL);
    t73 = (t0 + 7515);
    t75 = (t0 + 4792);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memcpy(t79, t73, 4U);
    xsi_driver_subsequent_trans_delta(t75, 0U, 4U, t72);
    t80 = (230 * 1000LL);
    t81 = (t0 + 7519);
    t83 = (t0 + 4792);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    t86 = (t85 + 56U);
    t87 = *((char **)t86);
    memcpy(t87, t81, 4U);
    xsi_driver_subsequent_trans_delta(t83, 0U, 4U, t80);
    t88 = (250 * 1000LL);
    t89 = (t0 + 7523);
    t91 = (t0 + 4792);
    t92 = (t91 + 56U);
    t93 = *((char **)t92);
    t94 = (t93 + 56U);
    t95 = *((char **)t94);
    memcpy(t95, t89, 4U);
    xsi_driver_subsequent_trans_delta(t91, 0U, 4U, t88);
    t96 = (270 * 1000LL);
    t97 = (t0 + 7527);
    t99 = (t0 + 4792);
    t100 = (t99 + 56U);
    t101 = *((char **)t100);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    memcpy(t103, t97, 4U);
    xsi_driver_subsequent_trans_delta(t99, 0U, 4U, t96);
    t104 = (290 * 1000LL);
    t105 = (t0 + 7531);
    t107 = (t0 + 4792);
    t108 = (t107 + 56U);
    t109 = *((char **)t108);
    t110 = (t109 + 56U);
    t111 = *((char **)t110);
    memcpy(t111, t105, 4U);
    xsi_driver_subsequent_trans_delta(t107, 0U, 4U, t104);
    t112 = (310 * 1000LL);
    t113 = (t0 + 7535);
    t115 = (t0 + 4792);
    t116 = (t115 + 56U);
    t117 = *((char **)t116);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    memcpy(t119, t113, 4U);
    xsi_driver_subsequent_trans_delta(t115, 0U, 4U, t112);
    t120 = (330 * 1000LL);
    t121 = (t0 + 7539);
    t123 = (t0 + 4792);
    t124 = (t123 + 56U);
    t125 = *((char **)t124);
    t126 = (t125 + 56U);
    t127 = *((char **)t126);
    memcpy(t127, t121, 4U);
    xsi_driver_subsequent_trans_delta(t123, 0U, 4U, t120);
    t128 = (350 * 1000LL);
    t129 = (t0 + 7543);
    t131 = (t0 + 4792);
    t132 = (t131 + 56U);
    t133 = *((char **)t132);
    t134 = (t133 + 56U);
    t135 = *((char **)t134);
    memcpy(t135, t129, 4U);
    xsi_driver_subsequent_trans_delta(t131, 0U, 4U, t128);
    t136 = (370 * 1000LL);
    t137 = (t0 + 7547);
    t139 = (t0 + 4792);
    t140 = (t139 + 56U);
    t141 = *((char **)t140);
    t142 = (t141 + 56U);
    t143 = *((char **)t142);
    memcpy(t143, t137, 4U);
    xsi_driver_subsequent_trans_delta(t139, 0U, 4U, t136);
    t144 = (390 * 1000LL);
    t145 = (t0 + 7551);
    t147 = (t0 + 4792);
    t148 = (t147 + 56U);
    t149 = *((char **)t148);
    t150 = (t149 + 56U);
    t151 = *((char **)t150);
    memcpy(t151, t145, 4U);
    xsi_driver_subsequent_trans_delta(t147, 0U, 4U, t144);
    t152 = (410 * 1000LL);
    t153 = (t0 + 7555);
    t155 = (t0 + 4792);
    t156 = (t155 + 56U);
    t157 = *((char **)t156);
    t158 = (t157 + 56U);
    t159 = *((char **)t158);
    memcpy(t159, t153, 4U);
    xsi_driver_subsequent_trans_delta(t155, 0U, 4U, t152);
    t160 = (430 * 1000LL);
    t161 = (t0 + 7559);
    t163 = (t0 + 4792);
    t164 = (t163 + 56U);
    t165 = *((char **)t164);
    t166 = (t165 + 56U);
    t167 = *((char **)t166);
    memcpy(t167, t161, 4U);
    xsi_driver_subsequent_trans_delta(t163, 0U, 4U, t160);
    t168 = (450 * 1000LL);
    t169 = (t0 + 7563);
    t171 = (t0 + 4792);
    t172 = (t171 + 56U);
    t173 = *((char **)t172);
    t174 = (t173 + 56U);
    t175 = *((char **)t174);
    memcpy(t175, t169, 4U);
    xsi_driver_subsequent_trans_delta(t171, 0U, 4U, t168);
    t176 = (470 * 1000LL);
    t177 = (t0 + 7567);
    t179 = (t0 + 4792);
    t180 = (t179 + 56U);
    t181 = *((char **)t180);
    t182 = (t181 + 56U);
    t183 = *((char **)t182);
    memcpy(t183, t177, 4U);
    xsi_driver_subsequent_trans_delta(t179, 0U, 4U, t176);
    t184 = (490 * 1000LL);
    t185 = (t0 + 7571);
    t187 = (t0 + 4792);
    t188 = (t187 + 56U);
    t189 = *((char **)t188);
    t190 = (t189 + 56U);
    t191 = *((char **)t190);
    memcpy(t191, t185, 4U);
    xsi_driver_subsequent_trans_delta(t187, 0U, 4U, t184);
    t192 = (510 * 1000LL);
    t193 = (t0 + 7575);
    t195 = (t0 + 4792);
    t196 = (t195 + 56U);
    t197 = *((char **)t196);
    t198 = (t197 + 56U);
    t199 = *((char **)t198);
    memcpy(t199, t193, 4U);
    xsi_driver_subsequent_trans_delta(t195, 0U, 4U, t192);
    t200 = (530 * 1000LL);
    t201 = (t0 + 7579);
    t203 = (t0 + 4792);
    t204 = (t203 + 56U);
    t205 = *((char **)t204);
    t206 = (t205 + 56U);
    t207 = *((char **)t206);
    memcpy(t207, t201, 4U);
    xsi_driver_subsequent_trans_delta(t203, 0U, 4U, t200);
    t208 = (550 * 1000LL);
    t209 = (t0 + 7583);
    t211 = (t0 + 4792);
    t212 = (t211 + 56U);
    t213 = *((char **)t212);
    t214 = (t213 + 56U);
    t215 = *((char **)t214);
    memcpy(t215, t209, 4U);
    xsi_driver_subsequent_trans_delta(t211, 0U, 4U, t208);
    t216 = (570 * 1000LL);
    t217 = (t0 + 7587);
    t219 = (t0 + 4792);
    t220 = (t219 + 56U);
    t221 = *((char **)t220);
    t222 = (t221 + 56U);
    t223 = *((char **)t222);
    memcpy(t223, t217, 4U);
    xsi_driver_subsequent_trans_delta(t219, 0U, 4U, t216);
    t224 = (590 * 1000LL);
    t225 = (t0 + 7591);
    t227 = (t0 + 4792);
    t228 = (t227 + 56U);
    t229 = *((char **)t228);
    t230 = (t229 + 56U);
    t231 = *((char **)t230);
    memcpy(t231, t225, 4U);
    xsi_driver_subsequent_trans_delta(t227, 0U, 4U, t224);
    t232 = (610 * 1000LL);
    t233 = (t0 + 7595);
    t235 = (t0 + 4792);
    t236 = (t235 + 56U);
    t237 = *((char **)t236);
    t238 = (t237 + 56U);
    t239 = *((char **)t238);
    memcpy(t239, t233, 4U);
    xsi_driver_subsequent_trans_delta(t235, 0U, 4U, t232);
    t240 = (630 * 1000LL);
    t241 = (t0 + 7599);
    t243 = (t0 + 4792);
    t244 = (t243 + 56U);
    t245 = *((char **)t244);
    t246 = (t245 + 56U);
    t247 = *((char **)t246);
    memcpy(t247, t241, 4U);
    xsi_driver_subsequent_trans_delta(t243, 0U, 4U, t240);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0222994288_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0222994288_3212880686_p_0,(void *)work_a_0222994288_3212880686_p_1,(void *)work_a_0222994288_3212880686_p_2,(void *)work_a_0222994288_3212880686_p_3};
	xsi_register_didat("work_a_0222994288_3212880686", "isim/ethernetRX_ethernetRX_sch_tb_isim_beh.exe.sim/work/a_0222994288_3212880686.didat");
	xsi_register_executes(pe);
}
