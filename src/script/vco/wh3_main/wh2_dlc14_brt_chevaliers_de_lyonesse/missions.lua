local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_destruction;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{

                objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc09_tmb_dune_kingdoms;
					faction wh2_dlc09_tmb_followers_of_nagash;
					faction wh2_dlc09_tmb_khemri;
					faction wh2_dlc09_tmb_numas;
					faction wh2_dlc09_tmb_rakaph_dynasty;
					faction wh2_dlc09_tmb_the_sentinels;

					faction wh2_main_vmp_necrarch_brotherhood;

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
			victory_type vco_victory_type_alternative_2_conquest;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{

				objective
                {
                    type CONTROL_N_PROVINCES_INCLUDING;
                    total 3;

                    province wh2_main_coast_of_araby;
                    province wh2_main_great_desert_of_araby;
                    province wh2_main_western_jungles;
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
			victory_type vco_victory_type_alternative_3_final_battle;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_mis_activity_win_errantry_war;
                    type SCRIPTED;
                    script_key win_errantry_war;
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
