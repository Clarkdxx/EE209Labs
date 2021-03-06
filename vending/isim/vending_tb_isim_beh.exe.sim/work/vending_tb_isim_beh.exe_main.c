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
    work_m_00000000004208138191_0765425472_init();
    work_m_00000000000450372872_3054511130_init();
    work_m_00000000001135915399_3948688857_init();
    work_m_00000000000042580417_3698837276_init();
    work_m_00000000004093581053_0550883175_init();
    work_m_00000000002648264267_0839253155_init();
    work_m_00000000003097389363_0565739796_init();
    work_m_00000000003586773300_4023299699_init();
    work_m_00000000003107878436_1612641933_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003107878436_1612641933");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
