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
					type CONTROL_N_PROVINCES_INCLUDING;
					total 2;

					province wh2_main_solland;
					province wh2_main_fort_soll;
				}

                objective
                {
                    type CONSTRUCT_N_BUILDINGS_INCLUDING;
                    faction wh2_dlc13_emp_golden_order;
                    total 1;

                    building_level wh_main_special_nuln_gunnery_school;
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
					type CONTROL_N_PROVINCES_INCLUDING;
					total 2;
					override_text mission_text_text_wh_main_objective_override_empire_sylvania;

					province wh_main_eastern_sylvania;
					province wh_main_western_sylvania;
				}

				objective
                {
                    type DESTROY_FACTION;

                    faction wh_main_vmp_vampire_counts;
                    faction wh_main_vmp_schwartzhafen;

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
			victory_type vco_victory_type_alternative_3_threat_elimination;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
                {
                    type DESTROY_FACTION;

					faction wh_main_grn_black_venom;
					faction wh_main_grn_crooked_moon;

                    faction wh2_main_skv_clan_skyre;
                    faction wh2_main_skv_clan_spittel;

                    faction wh2_dlc11_cst_pirates_of_sartosa;

                    confederation_valid;
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
