local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_wololo;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
			        total 600;

			        pooled_resource wh3_main_ksl_followers;
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
			victory_type vco_victory_type_alternative_2_there_can_only_be_one;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type CONTROL_N_PROVINCES_INCLUDING;
			        total 8;

                    province wh3_main_chaos_province_black_blood_pass;
                    province wh3_main_chaos_province_dukhlys_forest;
                    province wh3_main_chaos_province_eastern_oblast;
                    province wh3_main_chaos_province_northern_oblast;
                    province wh3_main_chaos_province_river_lynsk;
                    province wh3_main_chaos_province_river_urskoy;
                    province wh3_main_chaos_province_the_cursed_city;
                    province wh3_main_chaos_province_troll_country;
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
			victory_type vco_victory_type_alternative_3_son_of_kislev;
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