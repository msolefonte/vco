local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
                {
                    type CONTROL_N_PROVINCES_INCLUDING;
                    total 3;
                    province wh_main_eastern_badlands;
                    province wh_main_southern_badlands;
                    province wh_main_western_badlands;
                }

				objective
				{
					type AT_LEAST_X_RELIGION_IN_PROVINCES;
                    province wh_main_eastern_badlands;
                    province wh_main_southern_badlands;
                    province wh_main_western_badlands;
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
			victory_type vco_victory_type_alternative_2;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type LOOT_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 10;
					region wh_main_eastern_border_princes_akendorf;
					region wh2_main_coast_of_araby_al_haikk;
					region wh2_main_coast_of_araby_copher;
					region wh2_main_coast_of_araby_fyrus;
					region wh_main_tilea_luccini;
					region wh_main_eastern_border_princes_matorca;
					region wh_main_tilea_miragliano;
					region wh_main_western_border_princes_myrmidens;
					region wh2_main_sartosa_sartosa;
					region wh2_main_land_of_the_dead_zandri;
					region wh_main_western_border_princes_zvorak;
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
			victory_type vco_victory_type_alternative_3;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 3;
					region wh2_main_great_mortis_delta_black_pyramid_of_nagash;
					region wh2_main_great_desert_of_araby_black_tower_of_arkhan;
					region wh2_main_skavenblight_skavenblight;
					region wh2_main_the_broken_teeth_nagashizar;
					region wh_main_yn_edri_eternos_the_oak_of_ages;
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
