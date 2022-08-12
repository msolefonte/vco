local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_corruption;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type AT_LEAST_X_RELIGION_IN_PROVINCES;

					province wh2_main_eataine;
					province wh2_main_iron_mountains;
					province wh2_main_isthmus_of_lustria;
					province wh2_main_the_clawed_coast;
					province wh2_main_the_wolf_lands;

					total 39;
					religion wh2_main_religion_skaven;
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

					faction wh2_main_lzd_hexoatl;

					faction wh2_main_hef_nagarythe;

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
                    type CONSTRUCT_N_BUILDINGS_INCLUDING;
                    faction wh2_dlc09_skv_clan_rictus;
                    total 1;

                    building_level wh2_dlc14_special_skv_crookback;
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
