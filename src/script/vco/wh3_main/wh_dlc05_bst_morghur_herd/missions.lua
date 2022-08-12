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
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 25;
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
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 6;

					region wh2_main_laurelorn_forest_laurelorn_forest;

					region wh_main_athel_loren_crag_halls;
					region wh_main_athel_loren_vauls_anvil;
					region wh_main_athel_loren_waterfall_palace;
					region wh_main_athel_loren_yn_edryl_korian;
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
