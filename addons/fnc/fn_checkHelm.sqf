params ["_unit"];

_whitelist = [
"rhs_6b26_green",
"rhs_6b26_bala_green",
"rhs_6b26_ess_green",
"rhs_6b26_ess_bala_green",
"rhs_6b26",
"rhs_6b26_bala",
"rhs_6b26_ess",
"rhs_6b26_ess_bala",
"rhs_6b27m_green",
"rhs_6b27m_green_bala",
"rhs_6b27m_green_ess",
"rhs_6b27m_green_ess_bala",
"rhs_6b27m_digi",
"rhs_6b27m_digi_bala",
"rhs_6b27m_digi_ess",
"rhs_6b27m_digi_ess_bala",
"rhs_6b27m",
"rhs_6b27m_bala",
"rhs_6b27m_ess",
"rhs_6b27m_ess_bala",
"rhs_6b27m_ml",
"rhs_6b27m_ml_bala",
"rhs_6b27m_ml_ess",
"rhs_6b27m_ML_ess_bala",
"rhs_6b28_green",
"rhs_6b28_green_bala",
"rhs_6b28_green_ess",
"rhs_6b28_green_ess_bala",
"rhs_6b28",
"rhs_6b28_bala",
"rhs_6b28_ess",
"rhs_6b28_ess_bala",
"rhs_6b28_flora",
"rhs_6b28_flora_bala",
"rhs_6b28_flora_ess",
"rhs_6b28_flora_ess_bala",
"rhs_6b47",
"rhs_6b47_bala",
"rhs_6b47_ess",
"rhs_6b47_ess_bala",
"rhs_6b7_1m",
"rhs_6b7_1m_bala2",
"rhs_6b7_1m_bala1",
"rhs_6b7_1m_emr",
"rhs_6b7_1m_bala2_emr",
"rhs_6b7_1m_bala1_emr",
"rhs_6b7_1m_emr_ess",
"rhs_6b7_1m_ess",
"rhs_6b7_1m_ess_bala",
"rhs_6b7_1m_flora",
"rhs_6b7_1m_bala2_flora",
"rhs_6b7_1m_flora_ns3",
"rhs_6b7_1m_olive",
"rhs_6b7_1m_bala1_olive",
"rhs_6b7_1m_bala2_olive",
"rhsusf_ach_bare",
"rhsusf_ach_bare_des",
"rhsusf_ach_bare_des_ess",
"rhsusf_ach_bare_des_headset",
"rhsusf_ach_bare_ess",
"rhsusf_ach_bare_headset",
"rhsusf_ach_bare_headset_ess",
"rhsusf_ach_bare_semi",
"rhsusf_ach_bare_semi_ess",
"rhsusf_ach_bare_semi_headset",
"rhsusf_ach_bare_semi_headset_ess",
"rhsusf_ach_bare_tan",
"rhsusf_ach_bare_tan_ess",
"rhsusf_ach_bare_tan_headset",
"rhsusf_ach_bare_tan_headset_ess",
"rhsusf_ach_bare_wood",
"rhsusf_ach_bare_wood_ess",
"rhsusf_ach_bare_wood_headset",
"rhsusf_ach_bare_wood_headset_ess",
"rhsusf_ach_helmet_DCU",
"rhsusf_ach_helmet_DCU_early",
"rhsusf_ach_helmet_DCU_early_rhino",
"rhsusf_ach_helmet_ocp",
"rhsusf_ach_helmet_ocp_alt",
"rhsusf_ach_helmet_ESS_ocp",
"rhsusf_ach_helmet_ESS_ocp_alt",
"rhsusf_ach_helmet_headset_ocp_alt",
"rhsusf_ach_helmet_headset_ess_ocp",
"rhsusf_ach_helmet_headset_ess_ocp_alt",
"rhsusf_ach_helmet_camo_ocp",
"rhsusf_ach_helmet_ucp",
"rhsusf_ach_helmet_ucp_alt",
"rhsusf_ach_helmet_ESS_ucp",
"rhsusf_ach_helmet_ESS_ucp_alt",
"rhsusf_ach_helmet_headset_ucp_alt",
"rhsusf_ach_helmet_headset_ess_ucp",
"rhsusf_ach_helmet_headset_ess_ucp_alt",
"rhsusf_cvc_green_helmet",
"rhsusf_ach_helmet_ucp_norotos",
"rhsusf_ach_helmet_headset_ucp",
"rhsusf_ach_helmet_ocp_norotos",
"rhsusf_ach_helmet_headset_ocp",
"rhsusf_ach_helmet_M81",
"rhsusf_ach_bare_des_headset_ess",
"rhs_6b7_1m_bala1_flora",
"rhs_6b7_1m_emr_ess_bala",
"rhsusf_cvc_green_alt_helmet",
"rhsusf_cvc_green_ess",
"rhsusf_cvc_helmet",
"rhsusf_cvc_alt_helmet",
"rhsusf_cvc_ess",
"H_HelmetHBK_headset_F",
"H_HelmetHBK_chops_F",
"H_HelmetHBK_ear_F",
"H_HelmetHBK_F",
"rhs_altyn_novisor",
"rhs_altyn_novisor_bala",
"rhs_altyn_novisor_ess",
"rhs_altyn_novisor_ess_bala",
"rhs_altyn_visordown",
"rhs_altyn",
"rhs_altyn_bala",
"H_HelmetSpecO_blk",
"H_HelmetSpecO_ghex_F",
"H_HelmetSpecO_ocamo",
"H_HelmetAggressor_F",
"H_HelmetAggressor_cover_F",
"H_HelmetAggressor_cover_taiga_F",
"H_PASGT_basic_black_F",
"H_PASGT_basic_blue_F",
"H_PASGT_basic_olive_F",
"H_PASGT_basic_white_F",
"H_HelmetB",
"H_HelmetB_black",
"H_HelmetB_camo",
"H_HelmetB_desert",
"H_HelmetB_grass",
"H_HelmetB_sand",
"H_HelmetB_snakeskin",
"H_HelmetB_tna_F",
"H_HelmetB_plain_wdl",
"H_HelmetCrew_O_ghex_F",
"H_Tank_black_F",
"H_Tank_eaf_F",
"H_HelmetCrew_I",
"H_HelmetCrew_O",
"H_HelmetCrew_I_E",
"H_HelmetCrew_B",
"H_HelmetLeaderO_ghex_F",
"H_HelmetLeaderO_ocamo",
"H_HelmetLeaderO_oucamo",
"H_HelmetSpecB",
"H_HelmetSpecB_blk",
"H_HelmetSpecB_paint2",
"H_HelmetSpecB_paint1",
"H_HelmetSpecB_sand",
"H_HelmetSpecB_snakeskin",
"H_HelmetB_Enh_tna_F",
"H_HelmetSpecB_wdl",
"rhsusf_opscore_aor1",
"rhsusf_opscore_aor1_pelt",
"rhsusf_opscore_aor1_pelt_nsw",
"rhsusf_opscore_aor2",
"rhsusf_opscore_aor2_pelt",
"rhsusf_opscore_aor2_pelt_nsw",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
"rhsusf_opscore_coy_cover",
"rhsusf_opscore_coy_cover_pelt",
"rhsusf_opscore_fg",
"rhsusf_opscore_fg_pelt",
"rhsusf_opscore_fg_pelt_cam",
"rhsusf_opscore_fg_pelt_nsw",
"rhsusf_opscore_mc_cover",
"rhsusf_opscore_mc_cover_pelt",
"rhsusf_opscore_mc_cover_pelt_nsw",
"rhsusf_opscore_mc_cover_pelt_cam",
"rhsusf_opscore_mc",
"rhsusf_opscore_mc_pelt",
"rhsusf_opscore_mc_pelt_nsw",
"rhsusf_opscore_paint",
"rhsusf_opscore_paint_pelt",
"rhsusf_opscore_paint_pelt_nsw",
"rhsusf_opscore_paint_pelt_nsw_cam",
"rhsusf_opscore_rg_cover",
"rhsusf_opscore_rg_cover_pelt",
"rhsusf_opscore_ut",
"rhsusf_opscore_ut_pelt",
"rhsusf_opscore_ut_pelt_cam",
"rhsusf_opscore_ut_pelt_nsw",
"rhsusf_opscore_ut_pelt_nsw_cam",
"rhsusf_opscore_mar_fg",
"rhsusf_opscore_mar_fg_pelt",
"rhsusf_opscore_mar_ut",
"rhsusf_opscore_mar_ut_pelt",
"H_Construction_basic_black_F",
"H_Construction_headset_black_F",
"H_Construction_basic_orange_F",
"H_Construction_earprot_black_F",
"H_Construction_earprot_orange_F",
"H_Construction_basic_red_F",
"H_Construction_headset_orange_F",
"H_Construction_earprot_red_F",
"H_Construction_headset_red_F",
"H_Construction_basic_vrana_F",
"H_Construction_earprot_vrana_F",
"H_Construction_headset_vrana_F",
"H_Construction_basic_white_F",
"H_Construction_earprot_white_F",
"H_Construction_headset_white_F",
"H_Construction_basic_yellow_F",
"H_Construction_earprot_yellow_F",
"H_Construction_headset_yellow_F",
"H_CrewHelmetHeli_I",
"H_CrewHelmetHeli_I_E",
"H_CrewHelmetHeli_O",
"H_CrewHelmetHeli_B",
"H_PilotHelmetHeli_I",
"H_PilotHelmetHeli_O",
"H_PilotHelmetHeli_I_E",
"H_PilotHelmetHeli_B",
"rhsusf_hgu56p_black",
"rhsusf_hgu56p_mask_black",
"rhsusf_hgu56p_mask_black_skull",
"rhsusf_hgu56p_visor_black",
"rhsusf_hgu56p_visor_mask_black",
"rhsusf_hgu56p_visor_mask_Empire_black",
"rhsusf_hgu56p_visor_mask_black_skull",
"rhsusf_hgu56p_green",
"rhsusf_hgu56p_mask_green",
"rhsusf_hgu56p_mask_green_mo",
"rhsusf_hgu56p_visor_green",
"rhsusf_hgu56p_visor_mask_green",
"rhsusf_hgu56p_visor_mask_green_mo",
"rhsusf_hgu56p",
"rhsusf_hgu56p_mask",
"rhsusf_hgu56p_mask_mo",
"rhsusf_hgu56p_mask_skull",
"rhsusf_hgu56p_visor",
"rhsusf_hgu56p_visor_mask",
"rhsusf_hgu56p_visor_mask_mo",
"rhsusf_hgu56p_visor_mask_skull",
"rhsusf_hgu56p_pink",
"rhsusf_hgu56p_mask_pink",
"rhsusf_hgu56p_visor_pink",
"rhsusf_hgu56p_visor_mask_pink",
"rhsusf_hgu56p_saf",
"rhsusf_hgu56p_mask_saf",
"rhsusf_hgu56p_visor_saf",
"rhsusf_hgu56p_visor_mask_saf",
"rhsusf_hgu56p_mask_smiley",
"rhsusf_hgu56p_visor_mask_smiley",
"rhsusf_hgu56p_tan",
"rhsusf_hgu56p_mask_tan",
"rhsusf_hgu56p_visor_tan",
"rhsusf_hgu56p_visor_mask_tan",
"rhsusf_hgu56p_usa",
"rhsusf_hgu56p_visor_usa",
"rhsusf_hgu56p_white",
"rhsusf_hgu56p_visor_white",
"rhsusf_ihadss",
"RHS_jetpilot_usaf",
"rhsgref_6b27m_ttsko_digi",
"rhsgref_6b27m_ttsko_forest",
"rhsgref_6b27m_ttsko_mountain",
"rhsgref_6b27m_ttsko_urban",
"H_HelmetB_light",
"H_HelmetB_light_black",
"H_HelmetB_light_desert",
"H_HelmetB_light_grass",
"H_HelmetB_light_sand",
"H_HelmetB_light_snakeskin",
"H_HelmetB_Light_tna_F",
"H_HelmetB_light_wdl",
"rhsusf_lwh_helmet_M1942",
"rhsusf_lwh_helmet_marpatd",
"rhsusf_lwh_helmet_marpatd_ess",
"rhsusf_lwh_helmet_marpatd_headset",
"rhsusf_lwh_helmet_marpatwd",
"rhsusf_lwh_helmet_marpatwd_blk_ess",
"rhsusf_lwh_helmet_marpatwd_headset_blk2",
"rhsusf_lwh_helmet_marpatwd_headset_blk",
"rhsusf_lwh_helmet_marpatwd_headset",
"rhsusf_lwh_helmet_marpatwd_ess",
"rhsgref_helmet_M1_liner",
"rhsgref_helmet_M1_bare",
"rhsgref_helmet_M1_bare_alt01",
"rhsgref_helmet_M1_painted",
"rhsgref_helmet_M1_painted_alt01",
"rhsgref_helmet_m1940",
"rhsgref_helmet_m1940_camo01",
"rhsgref_helmet_m1940_alt1",
"rhsgref_helmet_m1940_camo01_alt1",
"rhsgref_helmet_m1940_winter_alt1",
"rhsgref_helmet_m1940_winter",
"rhsgref_helmet_m1942",
"rhsgref_helmet_m1942_camo01",
"rhsgref_helmet_m1942_alt1",
"rhsgref_helmet_m1942_camo01_alt1",
"rhsgref_helmet_m1942_winter_alt1",
"rhsgref_helmet_m1942_winter",
"rhsgref_helmet_m1942_heergreycover",
"rhsgref_helmet_m1942_heersplintercover",
"rhsgref_helmet_m1942_heermarshcover",
"rhsgref_helmet_m1942_heerwintercover",
"rhsgref_M56",
"rhsusf_mich_bare",
"rhsusf_mich_bare_headset",
"rhsusf_mich_bare_alt",
"rhsusf_mich_bare_norotos_alt",
"rhsusf_mich_bare_norotos",
"rhsusf_mich_bare_norotos_alt_headset",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc_alt_headset",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_headset",
"rhsusf_mich_bare_semi",
"rhsusf_mich_bare_alt_semi",
"rhsusf_mich_bare_semi_headset",
"rhsusf_mich_bare_norotos_semi",
"rhsusf_mich_bare_norotos_alt_semi",
"rhsusf_mich_bare_norotos_alt_semi_headset",
"rhsusf_mich_bare_norotos_arc_semi",
"rhsusf_mich_bare_norotos_arc_alt_semi",
"rhsusf_mich_bare_norotos_arc_alt_semi_headset",
"rhsusf_mich_bare_norotos_arc_semi_headset",
"rhsusf_mich_bare_norotos_semi_headset",
"rhsusf_mich_bare_tan",
"rhsusf_mich_bare_alt_tan",
"rhsusf_mich_bare_tan_headset",
"rhsusf_mich_bare_norotos_tan",
"rhsusf_mich_bare_norotos_alt_tan",
"rhsusf_mich_bare_norotos_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_tan_headset",
"rhsusf_mich_helmet_marpatd",
"rhsusf_mich_helmet_marpatd_alt",
"rhsusf_mich_helmet_marpatd_alt_headset",
"rhsusf_mich_helmet_marpatd_headset",
"rhsusf_mich_helmet_marpatd_norotos",
"rhsusf_mich_helmet_marpatd_norotos_arc",
"rhsusf_mich_helmet_marpatd_norotos_arc_headset",
"rhsusf_mich_helmet_marpatd_norotos_headset",
"rhsusf_mich_helmet_marpatwd",
"rhsusf_mich_helmet_marpatwd_alt",
"rhsusf_mich_helmet_marpatwd_alt_headset",
"rhsusf_mich_helmet_marpatwd_headset",
"rhsusf_mich_helmet_marpatwd_norotos",
"rhsusf_mich_helmet_marpatwd_norotos_arc",
"rhsusf_mich_helmet_marpatwd_norotos_arc_headset",
"rhsusf_mich_helmet_marpatwd_norotos_headset",
"H_HelmetIA",
"rhsgref_helmet_pasgt_3color_desert",
"rhsgref_helmet_pasgt_3color_desert_rhino",
"rhsgref_helmet_pasgt_altis_lizard",
"rhsgref_helmet_pasgt_erdl",
"rhsgref_helmet_pasgt_erdl_rhino",
"rhsgref_helmet_pasgt_flecktarn",
"rhsgref_helmet_pasgt_olive",
"rhsgref_helmet_pasgt_press",
"rhsgref_helmet_pasgt_un",
"rhsgref_helmet_pasgt_woodland",
"rhsgref_helmet_pasgt_woodland_rhino",
"rhsgref_hat_M1951",
"H_PilotHelmetFighter_I",
"H_PilotHelmetFighter_I_E",
"H_PilotHelmetFighter_O",
"H_PilotHelmetFighter_B",
"H_PASGT_basic_blue_press_F",
"H_PASGT_neckprot_blue_press_F",
"rhsusf_protech_helmet",
"rhsusf_protech_helmet_ess",
"rhsusf_protech_helmet_rhino",
"rhsusf_protech_helmet_rhino_ess",
"H_HelmetO_ghex_F",
"H_HelmetO_ocamo",
"H_HelmetO_oucamo",
"H_RacingHelmet_1_black_F",
"H_RacingHelmet_1_blue_F",
"H_RacingHelmet_2_F",
"H_RacingHelmet_1_F",
"H_RacingHelmet_1_green_F",
"H_RacingHelmet_1_orange_F",
"H_RacingHelmet_1_red_F",
"H_RacingHelmet_3_F",
"H_RacingHelmet_4_F",
"H_RacingHelmet_1_white_F",
"H_RacingHelmet_1_yellow_F",
"H_Helmet_Skate",
"H_HelmetO_ViperSP_ghex_F",
"rhs_ssh68",
"H_HelmetO_ViperSP_hex_F",
"rhsgref_ssh68_emr",
"rhsgref_ssh68_ttsko_digi",
"rhsgref_ssh68_ttsko_forest",
"rhsgref_ssh68_ttsko_mountain",
"rhsgref_ssh68_ttsko_dark",
"rhsgref_ssh68_un",
"rhsgref_ssh68_vsr",
"H_HelmetB_TI_tna_F",
"rhs_tsh4",
"rhs_tsh4_ess",
"rhs_tsh4_ess_bala",
"rhs_tsh4_bala",
"rhs_zsh7a_mike",
"rhs_zsh7a_mike_green_alt",
"rhs_zsh7a_mike_alt",
"rhs_zsh7a_mike_green",
"rhs_zsh7a",
"rhs_zsh7a_alt"
];

(((hmd _unit isEqualTo "") && (headgear _unit in _whitelist) && (_unit getVariable ["Salmon_HEAC_Helmet", ""] isEqualTo "") && (vehicle _unit == _unit)) || ((headgear _unit isEqualTo "") && !(_unit getVariable ["Salmon_HEAC_Helmet", ""] isEqualTo "") && (vehicle _unit == _unit)))