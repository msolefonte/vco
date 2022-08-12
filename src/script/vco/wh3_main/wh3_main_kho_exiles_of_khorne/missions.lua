local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_blood_for_the_blood_god;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
                {
                    override_text mission_text_text_vco_roc_the_great_game_completed_0;
                    type SCRIPTED;
                    script_key vco_roc_wh3_main_kho_exiles_of_khorne_the_great_game;
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
			victory_type vco_victory_type_alternative_2_skulls_for_the_skull_throne;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
			        total 88888;

			        pooled_resource wh3_main_kho_skulls;
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
			victory_type vco_victory_type_alternative_3_smash;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_sla_exquisite_pain;
                    faction wh3_main_sla_rapturous_excess;
                    faction wh3_main_sla_seducers_of_slaanesh;
                    faction wh3_main_sla_subtle_torture;

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