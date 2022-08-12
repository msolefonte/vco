local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_miscellany;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
                {
                    override_text mission_text_text_vco2_main_clan_skyre_workshop_lvl_4_1;
                    type SCRIPTED;
                    script_key get_forbidden_workshop_level_4;
                }

                payload
                {
                    game_victory;
                }
            }
        }
    ]],
    [[
        mission
        {
            victory_type vco_victory_type_alternative_2_destruction;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

                    faction wh_dlc05_wef_argwylon;
					faction wh_dlc05_wef_wood_elves;

					faction wh_main_brt_bordeleaux;
					faction wh_main_brt_bretonnia;
					faction wh_main_brt_carcassonne;

                    faction wh_main_teb_estalia;
                    faction wh_main_teb_tilea;

					faction wh_main_dwf_karak_izor;

					faction wh2_dlc11_cst_pirates_of_sartosa;

					confederation_valid;
				}

                payload
                {
                    game_victory;
                }
            }
        }
    ]],
    [[
        mission
        {
            victory_type vco_victory_type_alternative_3_corruption;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type AT_LEAST_X_RELIGION_IN_PROVINCES;

					province wh_main_argwylon;
					province wh_main_blood_river_valley;
					province wh_main_bordeleaux_et_aquitaine;
					province wh_main_carcassone_et_brionne;
					province wh_main_couronne_et_languille;
					province wh_main_estalia;
					province wh_main_talsyn;
					province wh_main_tilea;
					province wh_main_the_silver_road;
					province wh_main_the_vaults;
					province wh_main_torgovann;
					province wh_main_wydrioth;
					province wh_main_yn_edri_eternos;

					total 39;
					religion wh2_main_religion_skaven;
				}

                payload
                {
                    game_victory;
                }
            }
        }
    ]]
};

return missions;
