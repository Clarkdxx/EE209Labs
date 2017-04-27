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
    work_m_00000000000179167364_3215353905_init();
    work_m_00000000004093581053_2355134571_init();
    work_m_00000000001418638989_1802387116_init();
    work_m_00000000002326211942_2731421072_init();
    work_m_00000000003994221140_3131516836_init();
    work_m_00000000001639774071_1477226994_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001639774071_1477226994");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
