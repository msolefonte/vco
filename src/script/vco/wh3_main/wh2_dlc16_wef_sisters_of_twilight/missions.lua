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
					pooled_resource wef_worldroots_athel_loren;
					total 500;
					additive;
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
			victory_type vco_victory_type_alternative_2_miscellany;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
                objective
				{
					override_text mission_text_text_mis_activity_ritual_rebirth_me;
					type PERFORM_RITUAL;
					ritual_category WORLDROOTS_HEALING;
					total 5;
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
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh_dlc05_qb_wef_grand_defense_of_the_oak;
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
