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
    work_m_00000000000324490417_4178863748_init();
    work_m_00000000001075341660_1590746232_init();
    work_m_00000000002512893247_3991661527_init();
    work_m_00000000001016279616_0597605266_init();
    work_m_00000000004093581053_0550883175_init();
    work_m_00000000000784992558_2347988406_init();
    work_m_00000000001620082341_0164127658_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001620082341_0164127658");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
