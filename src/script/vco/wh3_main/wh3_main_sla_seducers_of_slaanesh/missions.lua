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
                    script_key vco_roc_wh3_main_sla_seducers_of_slaanesh_the_great_game;
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
			victory_type vco_victory_type_alternative_2_toxic_masculinity;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_kho_brazen_throne;
                    faction wh3_main_kho_crimson_skull;
                    faction wh3_main_kho_exiles_of_khorne;
                    faction wh3_main_kho_karneths_sons;

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
			victory_type vco_victory_type_alternative_3_the_greatest_orgy;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
                {
                    type MAINTAIN_N_CLIENT_STATES;
                    total 6;
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