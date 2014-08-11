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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *STD_STANDARD;
static const char *ng1 = "C:/Users/fafik/Desktop/New folder (3)/ethernet-master/ethernet-master/ethernet4b/MII_RX_v2.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


int work_a_1246313723_3212880686_sub_1924517852_3057020925(char *t1, int t2)
{
    char t3[72];
    char t4[8];
    char t8[8];
    int t0;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    int t14;
    unsigned char t15;
    char *t16;
    char *t17;

LAB0:    t5 = (t3 + 4U);
    t6 = ((STD_STANDARD) + 552);
    t7 = (t5 + 52U);
    *((char **)t7) = t6;
    t9 = (t5 + 36U);
    *((char **)t9) = t8;
    xsi_type_set_default_value(t6, t8, 0);
    t10 = (t5 + 48U);
    *((unsigned int *)t10) = 4U;
    t11 = (t4 + 4U);
    *((int *)t11) = t2;
    t12 = 0;
    t13 = 31;

LAB2:    if (t12 <= t13)
        goto LAB3;

LAB5:    t6 = (t5 + 36U);
    t7 = *((char **)t6);
    t12 = *((int *)t7);
    t0 = t12;

LAB1:    return t0;
LAB3:    t14 = xsi_vhdl_pow(2, t12);
    t15 = (t2 <= t14);
    if (t15 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    if (t12 == t13)
        goto LAB5;

LAB10:    t14 = (t12 + 1);
    t12 = t14;
    goto LAB2;

LAB6:    t16 = (t5 + 36U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    *((int *)t16) = t12;
    goto LAB5;

LAB9:    goto LAB7;

LAB11:;
}

static void work_a_1246313723_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(68, ng1);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3624);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng1);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(77, ng1);
    t1 = (t0 + 1788U);
    t3 = *((char **)t1);
    t1 = (t0 + 3764);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng1);
    t3 = (t0 + 960U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(74, ng1);
    t1 = (t0 + 1696U);
    t3 = *((char **)t1);
    t1 = (t0 + 1144U);
    t4 = *((char **)t1);
    t1 = (t0 + 7696U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    xsi_vhdl_check_range_of_index(0, 4095, 1, t12);
    t15 = (4U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 3728);
    t11 = (t10 + 32U);
    t17 = *((char **)t11);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 4U);
    xsi_driver_first_trans_fast(t10);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(71, ng1);
    t3 = (t0 + 1328U);
    t10 = *((char **)t3);
    t3 = (t0 + 1144U);
    t11 = *((char **)t3);
    t3 = (t0 + 7696U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t11, t3);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (4U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 3692);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 4U);
    xsi_driver_first_trans_delta(t17, t16, 4U, 0LL);
    xsi_set_current_line(72, ng1);
    t1 = (t0 + 1328U);
    t3 = *((char **)t1);
    t1 = (t0 + 3728);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

}

static void work_a_1246313723_3212880686_p_1(char *t0)
{
    char t16[16];
    char t22[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    int t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    int t20;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    int t32;
    int t33;
    int t34;
    int t35;
    char *t36;
    int t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned char t42;
    char *t43;
    int t44;
    int t45;
    int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    int t57;
    int t58;
    int t59;
    int t60;
    char *t61;
    int t62;
    int t63;
    int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    int t68;
    int t69;
    int t70;
    int t71;
    char *t72;
    int t73;
    int t74;
    int t75;
    unsigned int t76;
    unsigned int t77;

LAB0:    xsi_set_current_line(83, ng1);
    t1 = (t0 + 660U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(84, ng1);
    t3 = (t0 + 868U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(95, ng1);
    t1 = (t0 + 1880U);
    t3 = *((char **)t1);
    t1 = (t0 + 3836);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t13 = *((char **)t10);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(85, ng1);
    t3 = (t0 + 2440U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t9 = (t8 - 1);
    t3 = (t0 + 24364);
    *((int *)t3) = 0;
    t10 = (t0 + 24368);
    *((int *)t10) = t9;
    t11 = 0;
    t12 = t9;

LAB8:    if (t11 <= t12)
        goto LAB9;

LAB11:    goto LAB6;

LAB9:    xsi_set_current_line(92, ng1);
    t13 = (t0 + 1696U);
    t14 = *((char **)t13);
    t13 = (t0 + 1236U);
    t15 = *((char **)t13);
    t13 = (t0 + 24364);
    t17 = (t0 + 2440U);
    t18 = *((char **)t17);
    t19 = *((int *)t18);
    t20 = work_a_1246313723_3212880686_sub_1924517852_3057020925(t0, t19);
    t17 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t16, *((int *)t13), t20);
    t23 = ((IEEE_P_2592010699) + 2332);
    t24 = (t0 + 7712U);
    t21 = xsi_base_array_concat(t21, t22, t23, (char)97, t15, t24, (char)97, t17, t16, (char)101);
    t25 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t21, t22);
    t26 = (t25 - 0);
    t27 = (t26 * 1);
    xsi_vhdl_check_range_of_index(0, 4095, 1, t25);
    t28 = (4U * t27);
    t29 = (0 + t28);
    t30 = (t14 + t29);
    t31 = (t0 + 24364);
    t32 = *((int *)t31);
    t33 = (t32 + 1);
    t34 = (t33 * 4);
    t35 = (t34 - 1);
    t36 = (t0 + 24364);
    t37 = *((int *)t36);
    t38 = (t37 * 4);
    t39 = (t38 - t35);
    t40 = (t39 * -1);
    t40 = (t40 + 1);
    t41 = (1U * t40);
    t42 = (t41 != 4U);
    if (t42 == 1)
        goto LAB12;

LAB13:    t43 = (t0 + 24364);
    t44 = *((int *)t43);
    t45 = (t44 + 1);
    t46 = (t45 * 4);
    t47 = (t46 - 1);
    t48 = (7 - t47);
    t49 = (1U * t48);
    t50 = (0U + t49);
    t51 = (t0 + 3800);
    t52 = (t51 + 32U);
    t53 = *((char **)t52);
    t54 = (t53 + 40U);
    t55 = *((char **)t54);
    t56 = (t0 + 24364);
    t57 = *((int *)t56);
    t58 = (t57 + 1);
    t59 = (t58 * 4);
    t60 = (t59 - 1);
    t61 = (t0 + 24364);
    t62 = *((int *)t61);
    t63 = (t62 * 4);
    t64 = (t63 - t60);
    t65 = (t64 * -1);
    t65 = (t65 + 1);
    t66 = (1U * t65);
    memcpy(t55, t30, t66);
    t67 = (t0 + 24364);
    t68 = *((int *)t67);
    t69 = (t68 + 1);
    t70 = (t69 * 4);
    t71 = (t70 - 1);
    t72 = (t0 + 24364);
    t73 = *((int *)t72);
    t74 = (t73 * 4);
    t75 = (t74 - t71);
    t76 = (t75 * -1);
    t76 = (t76 + 1);
    t77 = (1U * t76);
    xsi_driver_first_trans_delta(t51, t50, t77, 0LL);

LAB10:    t1 = (t0 + 24364);
    t11 = *((int *)t1);
    t3 = (t0 + 24368);
    t12 = *((int *)t3);
    if (t11 == t12)
        goto LAB11;

LAB14:    t8 = (t11 + 1);
    t11 = t8;
    t4 = (t0 + 24364);
    *((int *)t4) = t11;
    goto LAB8;

LAB12:    xsi_size_not_matching(t41, 4U, 0);
    goto LAB13;

}

static void work_a_1246313723_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(99, ng1);

LAB3:    t1 = (t0 + 1972U);
    t2 = *((char **)t1);
    t1 = (t0 + 3872);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3640);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1246313723_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(100, ng1);

LAB3:    t1 = (t0 + 2064U);
    t2 = *((char **)t1);
    t1 = (t0 + 3908);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3648);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1246313723_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1246313723_3212880686_p_0,(void *)work_a_1246313723_3212880686_p_1,(void *)work_a_1246313723_3212880686_p_2,(void *)work_a_1246313723_3212880686_p_3};
	static char *se[] = {(void *)work_a_1246313723_3212880686_sub_1924517852_3057020925};
	xsi_register_didat("work_a_1246313723_3212880686", "isim/MII_RX_v2_test1_isim_beh.exe.sim/work/a_1246313723_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
