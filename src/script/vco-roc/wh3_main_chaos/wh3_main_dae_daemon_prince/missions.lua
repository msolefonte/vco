local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_blessed_by_the_gods;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
                objective
			    {
			        type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
			        total 3080;

			        pooled_resource wh3_main_dae_undivided_points;
			    }

			    objective
			    {
			        type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
			        total 3080;

			        pooled_resource wh3_main_dae_khorne_points;
			    }

			    objective
			    {
			        type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
			        total 3080;

			        pooled_resource wh3_main_dae_nurgle_points;
			    }

			    objective
			    {
			        type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
			        total 3080;

			        pooled_resource wh3_main_dae_slaanesh_points;
			    }

			    objective
			    {
			        type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
			        total 3080;

			        pooled_resource wh3_main_dae_tzeentch_points;
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
			victory_type vco_victory_type_alternative_2_succeeding_you;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_ksl_the_ice_court;

                    confederation_valid;
			    }

			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_ksl_brotherhood_of_the_bear;
                    faction wh3_main_ksl_druzhina_enclave;
                    faction wh3_main_ksl_ropsmenn_clan;
                    faction wh3_main_ksl_the_great_orthodoxy;
                    faction wh3_main_ksl_ungol_kindred;
                    faction wh3_main_ksl_ursun_revivalists;

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
			victory_type vco_victory_type_alternative_3_peacekeeping_mission;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_kho_exiles_of_khorne;

                    faction wh3_main_nur_poxmakers_of_nurgle;

                    faction wh3_main_tze_oracles_of_tzeentch;

                    faction wh3_main_sla_seducers_of_slaanesh;

                    confederation_valid;
			    }

			    objective
			    {
			        type HAVE_N_AGENTS_OF_TYPE;
                    total 1;

                    agent_subtype wh3_main_kho_exalted_bloodthirster;
			    }

                objective
			    {
			        type HAVE_N_AGENTS_OF_TYPE;
                    total 1;

                    agent_subtype wh3_main_nur_exalted_great_unclean_one_nurgle;
			    }

			    objective
			    {
			        type HAVE_N_AGENTS_OF_TYPE;
                    total 1;

                    agent_subtype wh3_main_sla_exalted_keeper_of_secrets_slaanesh;
			    }

                objective
			    {
			        type HAVE_N_AGENTS_OF_TYPE;
                    total 1;

                    agent_subtype wh3_main_tze_exalted_lord_of_change_tzeentch;
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