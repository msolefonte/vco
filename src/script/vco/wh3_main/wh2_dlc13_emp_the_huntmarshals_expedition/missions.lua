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
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource emp_progress;
					total 100;
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
					total 6;

					province wh2_main_southern_great_jungle;
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

					faction wh2_main_lzd_itza;
					faction wh2_dlc13_lzd_spirits_of_the_jungle;

					faction wh2_main_skv_clan_pestilens;

					faction wh2_dlc11_cst_vampire_coast;
					faction wh2_dlc11_cst_noctilus;

					faction wh2_dlc11_def_the_blessed_dread;

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
