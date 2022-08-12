local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_edification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_dlc09_tmb_khemri;
					total 1;
					building_level wh2_dlc09_special_pyramid_settra;
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
					faction wh2_dlc09_tmb_followers_of_nagash;
					confederation_valid;
				}

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
    ]],
    [[
        mission
        {
            victory_type vco_victory_type_alternative_3_expansion;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 10;

					region wh2_main_land_of_the_dead_khemri;
					region wh2_main_land_of_assassins_palace_of_the_wizard_caliph;
					region wh2_main_great_desert_of_araby_black_tower_of_arkhan;
					region wh2_main_coast_of_araby_al_haikk;
					region wh2_main_ash_river_numas;
					region wh2_main_shifting_sands_ka-sabar;
					region wh_main_southern_badlands_galbaraz;
					region wh2_main_charnel_valley_karag_orrud;
					region wh2_main_devils_backbone_lahmia;
					region wh2_main_crater_of_the_walking_dead_rasetra;
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
