local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_unification;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 5;

					province wh_main_argwylon;
					province wh_main_talsyn;
					province wh_main_torgovann;
					province wh_main_wydrioth;
					province wh_main_yn_edri_eternos;
				}

				objective
                {
					override_text mission_text_text_mis_activity_athel_healed;
                    type SCRIPTED;
                    script_key athel_healed;
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
                    type DESTROY_FACTION;

                    faction wh_dlc05_wef_wood_elves;
                    faction wh_dlc05_wef_argwylon;
                    faction wh_dlc05_wef_torgovann;
                    faction wh_dlc05_wef_wydrioth;
                    faction wh2_dlc13_wef_laurelorn_forest;
                    faction wh2_dlc16_wef_sisters_of_twilight;
                    faction wh2_main_wef_bowmen_of_oreon;

                    faction wh2_main_hef_avelorn;

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
