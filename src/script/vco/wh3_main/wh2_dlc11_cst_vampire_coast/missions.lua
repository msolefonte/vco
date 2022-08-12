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
					override_text mission_text_text_mis_activity_restore_harkons_mind;
                    type SCRIPTED;
                    script_key restore_harkon_mind;
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
					type CONTROL_N_REGIONS_FROM;
					total 8;

					region wh2_main_vampire_coast_the_awakening;
					region wh2_main_vampire_coast_pox_marsh;
					region wh2_main_vampire_coast_the_blood_swamps;
					region wh2_main_volcanic_islands_the_star_tower;
					region wh2_main_volcanic_islands_fuming_serpent;
					region wh2_main_northern_great_jungle_temple_of_tlencan;
					region wh2_main_headhunters_jungle_chupayotl;
					region wh2_main_headhunters_jungle_mangrove_coast;
					region wh2_main_the_creeping_jungle_temple_of_kara;
					region wh2_main_southern_jungle_of_pahualaxa_the_high_sentinel;
					region wh2_main_southern_jungle_of_pahualaxa_monument_of_the_moon;
					region wh2_main_northern_jungle_of_pahualaxa_swamp_town;
					region wh2_main_northern_jungle_of_pahualaxa_port_reaver;
					region wh2_main_isthmus_of_lustria_skeggi;
					region wh2_main_isthmus_of_lustria_ziggurat_of_dawn;
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
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource cst_infamy;
					total 15000;
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
