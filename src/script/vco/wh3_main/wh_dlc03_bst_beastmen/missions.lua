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
			victory_type vco_victory_type_alternative_2;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
                {
                    type DESTROY_FACTION;

                    faction wh_main_emp_averland;
                    faction wh_main_emp_hochland;
                    faction wh_main_emp_middenland;
                    faction wh_main_emp_nordland;
                    faction wh_main_emp_ostermark;
                    faction wh_main_emp_ostland;
                    faction wh_main_emp_empire;
                    faction wh_main_emp_stirland;
                    faction wh_main_emp_talabecland;
                    faction wh2_dlc13_emp_golden_order;
                    faction wh_main_emp_wissenland;

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
			victory_type vco_victory_type_alternative_3;
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
