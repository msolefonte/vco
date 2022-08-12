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

					faction wh2_main_vmp_necrarch_brotherhood;
					faction wh2_main_vmp_strygos_empire;
					faction wh2_main_vmp_the_silver_host;

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
            victory_type vco_victory_type_alternative_2_expansion;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 3;

					province wh2_main_the_broken_teeth;
					province wh2_main_crater_of_the_walking_dead;
					province wh2_main_devils_backbone;
				}
				objective
				{
					type AT_LEAST_X_RELIGION_IN_PROVINCES;

					province wh2_main_the_broken_teeth;
					province wh2_main_crater_of_the_walking_dead;
					province wh2_main_devils_backbone;
					province wh2_main_southlands_jungle;
					province wh2_main_kingdom_of_beasts;

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
            victory_type vco_victory_type_alternative_3_conquest;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type OWN_N_REGIONS_INCLUDING;
					total 1;
					region wh2_main_great_mortis_delta_black_pyramid_of_nagash;
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
