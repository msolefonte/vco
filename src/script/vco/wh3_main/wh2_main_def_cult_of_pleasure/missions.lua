local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_threat_elimination;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_nagarythe;

					faction wh2_dlc09_tmb_exiles_of_nehek;

					faction wh2_dlc09_skv_clan_rictus;

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
            victory_type vco_victory_type_alternative_2_conquest;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 14;
					override_text mission_text_text_wh2_main_objective_override_morathi_control;
					province wh2_main_eataine;
					province wh2_main_yvresse;
					province wh2_main_saphery;
					province wh2_main_cothique;
					province wh2_main_avelorn;
					province wh2_main_chrace;
					province wh2_main_nagarythe;
					province wh2_main_ellyrion;
					province wh2_main_tiranoc;
					province wh2_main_caledor;
					province wh2_main_eagle_gate;
					province wh2_main_griffon_gate;
					province wh2_main_unicorn_gate;
					province wh2_main_phoenix_gate;
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
            victory_type vco_victory_type_alternative_3_edification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_def_cult_of_pleasure;
					total 2;

					building_level wh2_main_special_quintex_2;
					building_level wh2_main_special_ghrond_convent_of_sorcery_2;
				}

				objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_main_def_cult_of_pleasure;
					total 7;

					building_level wh2_main_def_pleasure_cult_5;
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
