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
					type DESTROY_FACTION;

                    faction wh2_main_skv_clan_spittel;
                    faction wh2_main_skv_clan_skyre;

					faction wh_main_grn_crooked_moon;
                    faction wh_main_grn_skullsmasherz;

					faction wh_main_vmp_mousillon;
					faction wh2_dlc11_vmp_the_barrow_legion;

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
			victory_type vco_victory_type_alternative_2;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
                    type DESTROY_FACTION;

                    faction wh_dlc05_wef_argwylon;
                    faction wh_dlc05_wef_wood_elves;
                    faction wh_dlc05_wef_torgovann;
                    faction wh_dlc05_wef_wydrioth;

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
