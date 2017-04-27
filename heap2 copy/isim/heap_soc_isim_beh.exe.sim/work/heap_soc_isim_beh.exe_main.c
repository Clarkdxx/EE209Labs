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

char *IEEE_P_3499444699;
char *UNISIM_P_0947159679;
char *STD_STANDARD;
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;
char *IEEE_P_1367372525;
char *IEEE_P_2717149903;
char *IEEE_P_0774719531;
char *STD_TEXTIO;
char *IEEE_P_3564397177;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000002717766859_3623498594_init();
    unisims_ver_m_00000000002717766859_3747011608_init();
    unisims_ver_m_00000000002717766859_0761863387_init();
    unisims_ver_m_00000000002717766859_0183018686_init();
    unisims_ver_m_00000000002717766859_0443082192_init();
    unisims_ver_m_00000000002717766859_3393040451_init();
    unisims_ver_m_00000000002717766859_3552249611_init();
    unisims_ver_m_00000000002717766859_0562377211_init();
    unisims_ver_m_00000000002717766859_2173416647_init();
    unisims_ver_m_00000000002717766859_3231810052_init();
    unisims_ver_m_00000000002717766859_4254399714_init();
    unisims_ver_m_00000000002717766859_1154020852_init();
    unisims_ver_m_00000000002717766859_2581904497_init();
    unisims_ver_m_00000000002717766859_2143391044_init();
    unisims_ver_m_00000000002717766859_2487241076_init();
    unisims_ver_m_00000000002717766859_1567005017_init();
    unisims_ver_m_00000000002717766859_2824429080_init();
    unisims_ver_m_00000000002717766859_3816579625_init();
    unisims_ver_m_00000000002717766859_3789496908_init();
    unisims_ver_m_00000000002717766859_2657233872_init();
    unisims_ver_m_00000000002717766859_1938920831_init();
    unisims_ver_m_00000000002717766859_1653800395_init();
    unisims_ver_m_00000000002717766859_2089772895_init();
    unisims_ver_m_00000000001508379050_3852734344_init();
    unisims_ver_m_00000000001347610518_4048426504_init();
    unisims_ver_m_00000000001347610518_0044870618_init();
    unisims_ver_m_00000000001347610518_2092302955_init();
    unisims_ver_m_00000000001347610518_1165608451_init();
    unisims_ver_m_00000000001347610518_1347197255_init();
    unisims_ver_m_00000000001347610518_1866330602_init();
    unisims_ver_m_00000000001347610518_0507448166_init();
    unisims_ver_m_00000000001347610518_1644296057_init();
    unisims_ver_m_00000000001347610518_3812322057_init();
    unisims_ver_m_00000000001347610518_2566008126_init();
    unisims_ver_m_00000000001347610518_3795606759_init();
    unisims_ver_m_00000000001347610518_1938022605_init();
    unisims_ver_m_00000000001347610518_0590943574_init();
    unisims_ver_m_00000000000129024098_1730278898_init();
    unisims_ver_m_00000000000909115699_2771340377_init();
    unisims_ver_m_00000000003848737514_1058825862_init();
    unisims_ver_m_00000000002601448656_3367321443_init();
    unisims_ver_m_00000000002825692851_1489144173_init();
    unisims_ver_m_00000000003258974243_0139717632_init();
    work_m_00000000000969779006_1942743681_init();
    work_m_00000000003031956224_2876793275_init();
    work_m_00000000002674785270_0117039150_init();
    work_m_00000000001135915399_3948688857_init();
    work_m_00000000002863441554_2676905666_init();
    work_m_00000000000324490417_4178863748_init();
    work_m_00000000004093581053_0550883175_init();
    work_m_00000000001418638989_0565739796_init();
    work_m_00000000004276856201_4059084587_init();
    work_m_00000000000633474345_4214862385_init();
    work_m_00000000002526336717_0319777450_init();
    work_m_00000000000108685534_3222827454_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    unisim_p_0947159679_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_4290807559_1501512296_init();
    work_a_3243223359_2111220564_init();


    xsi_register_tops("work_m_00000000000108685534_3222827454");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
