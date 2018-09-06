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
static const char *ng0 = "D:/Universidad/Universidad/Anos/Cuarto_Ano/Octavo_Semestre/Arquitectura de Computadores/Proyecto 2/Meta2.1/top.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {16, 0};
static unsigned int ng4[] = {14U, 0U};
static int ng5[] = {4, 0};
static unsigned int ng6[] = {13U, 0U};
static int ng7[] = {8, 0};
static unsigned int ng8[] = {11U, 0U};
static int ng9[] = {12, 0};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {64U, 0U};
static unsigned int ng12[] = {15U, 0U};



static void Cont_105_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 3560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1704U);
    t3 = *((char **)t2);
    t2 = (t0 + 4096);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 255U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 7);
    t16 = (t0 + 4044);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Initial_107_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(107, ng0);

LAB2:    xsi_set_current_line(108, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3036);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_113_2(char *t0)
{
    char t8[8];
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4052);
    *((int *)t2) = 1;
    t3 = (t0 + 3876);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(113, ng0);

LAB5:    xsi_set_current_line(114, ng0);
    t4 = (t0 + 3036);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t9, t8, 0, 0, 32, 0LL);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3036);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_mod(t8, 32, t4, 32, t5, 32);
    t6 = ((char*)((ng1)));
    memset(t10, 0, 8);
    xsi_vlog_signed_equal(t10, 32, t8, 32, t6, 32);
    t7 = (t10 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3036);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_mod(t8, 32, t4, 32, t5, 32);
    t6 = ((char*)((ng5)));
    memset(t10, 0, 8);
    xsi_vlog_signed_equal(t10, 32, t8, 32, t6, 32);
    t7 = (t10 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3036);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_mod(t8, 32, t4, 32, t5, 32);
    t6 = ((char*)((ng7)));
    memset(t10, 0, 8);
    xsi_vlog_signed_equal(t10, 32, t8, 32, t6, 32);
    t7 = (t10 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3036);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_mod(t8, 32, t4, 32, t5, 32);
    t6 = ((char*)((ng9)));
    memset(t10, 0, 8);
    xsi_vlog_signed_equal(t10, 32, t8, 32, t6, 32);
    t7 = (t10 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(131, ng0);

LAB22:    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB20:
LAB16:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(115, ng0);

LAB9:    xsi_set_current_line(116, ng0);
    t9 = ((char*)((ng4)));
    t16 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t16, t9, 0, 0, 4, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1980U);
    t3 = *((char **)t2);
    t2 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 7, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(119, ng0);

LAB13:    xsi_set_current_line(120, ng0);
    t9 = ((char*)((ng6)));
    t16 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t16, t9, 0, 0, 4, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 2072U);
    t3 = *((char **)t2);
    t2 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 7, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(123, ng0);

LAB17:    xsi_set_current_line(124, ng0);
    t9 = ((char*)((ng8)));
    t16 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t16, t9, 0, 0, 4, 0LL);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2164U);
    t3 = *((char **)t2);
    t2 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 7, 0LL);
    goto LAB16;

LAB18:    xsi_set_current_line(127, ng0);

LAB21:    xsi_set_current_line(128, ng0);
    t9 = ((char*)((ng10)));
    t16 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t16, t9, 0, 0, 4, 0LL);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 7, 0LL);
    goto LAB20;

}


extern void work_m_00000000004201548943_0341795706_init()
{
	static char *pe[] = {(void *)Cont_105_0,(void *)Initial_107_1,(void *)Always_113_2};
	xsi_register_didat("work_m_00000000004201548943_0341795706", "isim/top_isim_beh.exe.sim/work/m_00000000004201548943_0341795706.didat");
	xsi_register_executes(pe);
}
