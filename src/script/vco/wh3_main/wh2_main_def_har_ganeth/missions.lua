local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_conquest;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh2_main_avelorn_gaean_vale;
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

					faction wh2_main_hef_nagarythe;
					faction wh2_main_hef_avelorn;

					faction wh2_main_def_ghrond;
					faction wh2_main_def_cult_of_pleasure;

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
					faction wh2_main_def_har_ganeth;
					total 4;

					building_level wh2_main_special_har_ganeth_hellebron_palace;
					building_level wh2_main_special_har_ganeth_temple_of_khaine_1;
					building_level wh2_main_special_shrine_of_khaine_def_1;
					building_level wh2_main_special_everqueen_court_def;
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
