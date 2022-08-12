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
					type COMPLETE_N_MISSIONS_OF_CATEGORY;
					total 5;
					event_category Objective;
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
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 10;
					region wh_main_eastern_border_princes_akendorf;
					region wh2_main_avelorn_gaean_vale;
                    region wh_main_peak_pass_karak_kadrin;
					region wh2_main_eataine_lothern;
					region wh_main_wissenland_nuln;
					region wh_main_the_wasteland_marienburg;
					region wh_main_middenland_middenheim;
					region wh_main_talabecland_talabheim;
					region wh2_main_yvresse_tor_yvresse;
					region wh2_main_saphery_tower_of_hoeth;
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
					type EARN_X_AMOUNT_FROM_RAIDING;
					total 30000;
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
