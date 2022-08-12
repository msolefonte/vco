local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_united_and_indivisible;
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
			victory_type vco_victory_type_alternative_2_from_kislev_with_love;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_dae_daemon_prince;

                    confederation_valid;
			    }

			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh_main_nor_aesling;
                    faction wh_main_nor_baersonling;
                    faction wh_main_nor_bjornling;
                    faction wh_main_nor_graeling;
                    faction wh_main_nor_sarl;
                    faction wh_main_nor_skaeling;
                    faction wh_dlc08_nor_vanaheimlings;

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
			victory_type vco_victory_type_alternative_3_the_red_room;
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
    ]]
};

return missions;