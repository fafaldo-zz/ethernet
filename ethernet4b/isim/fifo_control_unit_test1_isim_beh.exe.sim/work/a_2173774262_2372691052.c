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
static const char *ng0 = "C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/fifo_control_unit_test1.vhd";



static void work_a_2173774262_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 6528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4048U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4960);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 6528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4048U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4960);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2173774262_2372691052_p_1(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(126, ng0);

LAB3:    t1 = (t0 + 10824);
    t3 = (t0 + 6592);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2173774262_2372691052_p_2(char *t0)
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
    int64 t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int64 t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    int64 t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    int64 t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    int64 t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    int64 t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    int64 t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    int64 t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    int64 t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    int64 t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;

LAB0:    xsi_set_current_line(127, ng0);

LAB3:    t1 = (t0 + 6656);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t6 = (20 * 1000LL);
    t7 = (t0 + 6656);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t7, 0U, 1, t6);
    t12 = (40 * 1000LL);
    t13 = (t0 + 6656);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t13, 0U, 1, t12);
    t18 = (750 * 1000LL);
    t19 = (t0 + 6656);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t19, 0U, 1, t18);
    t24 = (770 * 1000LL);
    t25 = (t0 + 6656);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t25, 0U, 1, t24);
    t30 = (790 * 1000LL);
    t31 = (t0 + 6656);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    *((unsigned char *)t35) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t31, 0U, 1, t30);
    t36 = (810 * 1000LL);
    t37 = (t0 + 6656);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    *((unsigned char *)t41) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t37, 0U, 1, t36);
    t42 = (830 * 1000LL);
    t43 = (t0 + 6656);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    *((unsigned char *)t47) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t43, 0U, 1, t42);
    t48 = (850 * 1000LL);
    t49 = (t0 + 6656);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    *((unsigned char *)t53) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t49, 0U, 1, t48);
    t54 = (870 * 1000LL);
    t55 = (t0 + 6656);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    *((unsigned char *)t59) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t55, 0U, 1, t54);
    t60 = (890 * 1000LL);
    t61 = (t0 + 6656);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    *((unsigned char *)t65) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t61, 0U, 1, t60);
    t66 = (910 * 1000LL);
    t67 = (t0 + 6656);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    *((unsigned char *)t71) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t67, 0U, 1, t66);
    t72 = (930 * 1000LL);
    t73 = (t0 + 6656);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    *((unsigned char *)t77) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t73, 0U, 1, t72);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2173774262_2372691052_p_3(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(128, ng0);

LAB3:    t1 = (t0 + 10832);
    t3 = (t0 + 6720);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2173774262_2372691052_p_4(char *t0)
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
    int64 t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int64 t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    int64 t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    int64 t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(129, ng0);

LAB3:    t1 = (t0 + 6784);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t6 = (200 * 1000LL);
    t7 = (t0 + 6784);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t7, 0U, 1, t6);
    t12 = (300 * 1000LL);
    t13 = (t0 + 6784);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t13, 0U, 1, t12);
    t18 = (400 * 1000LL);
    t19 = (t0 + 6784);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t19, 0U, 1, t18);
    t24 = (500 * 1000LL);
    t25 = (t0 + 6784);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t25, 0U, 1, t24);
    t30 = (600 * 1000LL);
    t31 = (t0 + 6784);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    *((unsigned char *)t35) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t31, 0U, 1, t30);
    t36 = (700 * 1000LL);
    t37 = (t0 + 6784);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    *((unsigned char *)t41) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t37, 0U, 1, t36);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2173774262_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2173774262_2372691052_p_0,(void *)work_a_2173774262_2372691052_p_1,(void *)work_a_2173774262_2372691052_p_2,(void *)work_a_2173774262_2372691052_p_3,(void *)work_a_2173774262_2372691052_p_4};
	xsi_register_didat("work_a_2173774262_2372691052", "isim/fifo_control_unit_test1_isim_beh.exe.sim/work/a_2173774262_2372691052.didat");
	xsi_register_executes(pe);
}
