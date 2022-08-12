local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_the_great_game;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
                {
                    override_text mission_text_text_vco_roc_the_great_game_completed_0;
                    type SCRIPTED;
                    script_key vco_roc_wh3_main_nur_poxmakers_of_nurgle_the_great_game;
                }

				payload
				{
                    money 15000;
                    game_victory;
				}
			}
		}
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_2_inevitable;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
                {
                    type DESTROY_FACTION;

                    faction wh3_main_tze_all_seeing_eye;
                    faction wh3_main_tze_broken_wheel;
                    faction wh3_main_tze_flaming_scribes;
                    faction wh3_main_tze_oracles_of_tzeentch;
                    faction wh3_main_tze_sarthoraels_watchers;

                    confederation_valid;
                }

				payload
				{
                    money 15000;
                    game_victory;
				}
			}
		}
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_3_black_death;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
				{
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 1;

					region wh3_main_chaos_region_altdorf;
				}

			    objective
                {
                    type DESTROY_FACTION;

                    faction wh_main_emp_hochland;
                    faction wh_main_emp_marienburg;
                    faction wh_main_emp_middenland;
                    faction wh_main_emp_nordland;
                    faction wh_main_emp_ostermark;
                    faction wh_main_emp_ostland;
                    faction wh_main_emp_stirland;
                    faction wh_main_emp_empire;
                    faction wh_main_emp_talabecland;
                    faction wh_main_emp_wissenland;

                    confederation_valid;
                }

				payload
				{
                    money 15000;
                    game_victory;
				}
			}
		}
    ]]
};

return missions;