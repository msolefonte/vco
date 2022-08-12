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

					province wh2_main_crater_of_the_walking_dead;
					province wh2_main_dragon_isles;
					province wh2_main_heart_of_the_jungle;
					province wh2_main_kingdom_of_beasts;
					province wh2_main_southlands_jungle;
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

					faction wh2_main_skv_clan_eshin;
					faction wh2_main_skv_clan_mors;

					faction wh2_main_def_hag_graef;

					faction wh2_dlc09_tmb_lybaras;

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
					faction wh2_main_lzd_last_defenders;
					total 3;

					building_level wh2_main_lzd_energy_4;
					building_level wh2_main_lzd_energy_5;
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
