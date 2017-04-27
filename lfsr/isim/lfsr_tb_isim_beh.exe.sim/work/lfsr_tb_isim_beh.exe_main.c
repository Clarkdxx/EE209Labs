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
    work_m_00000000002580479937_0352685194_init();
    work_m_00000000000943062914_0049722229_init();
    work_m_00000000002052089506_3689961810_init();
    work_m_00000000002488439502_1277329626_init();
    work_m_00000000003687466508_4257092234_init();
    work_m_00000000000852925226_1514570984_init();
    work_m_00000000000402131926_0147935835_init();
    work_m_00000000003688491174_2807550811_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003688491174_2807550811");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
