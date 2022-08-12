local missions = {
    [[
         mission
        {
            victory_type vco_victory_type_alternative_1_expansion;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 5;

					province wh2_main_nagarythe;
					province wh2_main_iron_mountains;
					province wh2_main_titan_peaks;
					province wh2_main_the_road_of_skulls;
					province wh2_main_doom_glades;
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

					faction wh2_main_def_bleak_holds;
					faction wh2_main_def_cult_of_pleasure;
					faction wh2_main_def_clar_karond;
					faction wh2_main_def_har_ganeth;
					faction wh2_main_def_naggarond;

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
					faction wh2_main_hef_nagarythe;
					total 1;
					building_level wh2_main_special_anlec_citadel_hef;
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
