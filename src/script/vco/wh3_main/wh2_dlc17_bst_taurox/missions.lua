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
					pooled_resource bst_ruination;
					total 500;
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
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 80;
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
					set_piece_battle wh_dlc03_qb_bst_the_final_battle;
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
