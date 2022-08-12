local missions = {
    [[
         mission
        {
            victory_type vco_victory_type_alternative_1_unification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 14;

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
            victory_type vco_victory_type_alternative_2_threat_elimination;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_har_ganeth;
					faction wh2_main_def_scourge_of_khaine;

					faction wh_dlc08_nor_norsca;
					faction wh_dlc08_nor_wintertooth;

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
            victory_type vco_victory_type_alternative_3_edification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh2_main_hef_avelorn;
					total 1;

					building_level wh2_main_special_everqueen_court_hef;
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
