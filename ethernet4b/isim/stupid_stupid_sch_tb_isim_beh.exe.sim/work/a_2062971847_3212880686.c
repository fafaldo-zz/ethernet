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
static const char *ng0 = "C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/MAC_source.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2062971847_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(33, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 48U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4376);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2062971847_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(34, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (47 - 47);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4568);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 4392);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2062971847_3212880686_p_2(char *t0)
{
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4408);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(40, ng0);
    t3 = xsi_get_transient_memory(11U);
    memset(t3, 0, 11U);
    t7 = t3;
    memset(t7, (unsigned char)2, 11U);
    t8 = (t0 + 4632);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 11U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 7108U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t4, t1, 1);
    t8 = (t13 + 12U);
    t14 = *((unsigned int *)t8);
    t15 = (1U * t14);
    t6 = (11U != t15);
    if (t6 == 1)
        goto LAB10;

LAB11:    t9 = (t0 + 4632);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t7, 11U);
    xsi_driver_first_trans_fast(t9);
    goto LAB6;

LAB10:    xsi_size_not_matching(11U, t15, 0);
    goto LAB11;

}

static void work_a_2062971847_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 7108U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 1);
    if (t2 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 7108U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 8);
    if (t2 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 7108U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 9);
    if (t2 != 0)
        goto LAB12;

LAB13:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 7108U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 10);
    if (t2 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 7108U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 11);
    if (t2 != 0)
        goto LAB16;

LAB17:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 7108U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 12);
    if (t2 != 0)
        goto LAB18;

LAB19:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t3 = xsi_get_transient_memory(48U);
    memset(t3, 0, 48U);
    t7 = t3;
    memset(t7, (unsigned char)2, 48U);
    t8 = (t0 + 4696);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 48U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    t4 = (t0 + 4696);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB6;

LAB10:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    t4 = (t0 + 4696);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 8U);
    xsi_driver_first_trans_delta(t4, 8U, 8U, 0LL);
    goto LAB6;

LAB12:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    t4 = (t0 + 4696);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 8U);
    xsi_driver_first_trans_delta(t4, 16U, 8U, 0LL);
    goto LAB6;

LAB14:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    t4 = (t0 + 4696);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 8U);
    xsi_driver_first_trans_delta(t4, 24U, 8U, 0LL);
    goto LAB6;

LAB16:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    t4 = (t0 + 4696);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 8U);
    xsi_driver_first_trans_delta(t4, 32U, 8U, 0LL);
    goto LAB6;

LAB18:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    t4 = (t0 + 4696);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 8U);
    xsi_driver_first_trans_delta(t4, 40U, 8U, 0LL);
    goto LAB6;

}


extern void work_a_2062971847_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2062971847_3212880686_p_0,(void *)work_a_2062971847_3212880686_p_1,(void *)work_a_2062971847_3212880686_p_2,(void *)work_a_2062971847_3212880686_p_3};
	xsi_register_didat("work_a_2062971847_3212880686", "isim/stupid_stupid_sch_tb_isim_beh.exe.sim/work/a_2062971847_3212880686.didat");
	xsi_register_executes(pe);
}
