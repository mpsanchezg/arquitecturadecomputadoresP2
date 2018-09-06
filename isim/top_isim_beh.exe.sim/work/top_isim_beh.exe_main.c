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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004175041597_3383896982_init();
    work_m_00000000003897147762_0610666722_init();
    work_m_00000000001575451314_1351276808_init();
    work_m_00000000001040419224_3935646505_init();
    work_m_00000000001040419224_1939628691_init();
    work_m_00000000001650045112_1763076763_init();
    work_m_00000000004246278105_4028578593_init();
    work_m_00000000000012606940_2725559894_init();
    work_m_00000000001497139532_3686629048_init();
    work_m_00000000000102511830_3786971772_init();
    work_m_00000000004201548943_0341795706_init();
    work_m_00000000000926934852_3823007873_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000926934852_3823007873");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
