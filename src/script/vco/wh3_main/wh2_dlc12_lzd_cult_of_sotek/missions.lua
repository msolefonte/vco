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

					province wh2_main_isthmus_of_lustria;
					province wh2_main_northern_jungle_of_pahualaxa;
					province wh2_main_southern_jungle_of_pahualaxa;
					province wh2_main_jungles_of_green_mists;
					province wh2_main_the_creeping_jungle;
					province wh2_main_northern_great_jungle;
					province wh2_main_huahuan_desert;
					province wh2_main_southern_great_jungle;
					province wh2_main_vampire_coast;
					province wh2_main_volcanic_islands;
					province wh2_main_headhunters_jungle;

					total 80;
					religion wh_main_religion_untainted;
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

					faction wh2_dlc12_skv_clan_fester;
					faction wh2_main_skv_clan_gnaw;
					faction wh2_dlc12_skv_clan_mange;
					faction wh2_main_skv_clan_pestilens;

					faction wh2_dlc11_cst_vampire_coast;
					faction wh2_dlc11_cst_noctilus;

					faction wh2_dlc13_emp_the_huntmarshals_expedition;

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
            victory_type vco_victory_type_alternative_3_miscellany;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CAPTURE_X_BATTLE_CAPTIVES;
					total 8000;
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
