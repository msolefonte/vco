local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_ursun_chaos_dwarfs;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 6;

					province wh3_main_chaos_province_the_blasted_wastes;
					province wh3_main_chaos_province_the_haunted_forest;
					province wh3_main_chaos_province_the_howling_wastes;
					province wh3_main_chaos_province_the_plain_of_zharr;
					province wh3_main_chaos_province_the_wolf_lands;
					province wh3_main_chaos_province_zorn_uzkul;
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
			victory_type vco_victory_type_alternative_2_ursun_sacred_land;
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
			victory_type vco_victory_type_alternative_3_unbearable_in_law;
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
			        type MAKE_ALLIANCE;

			        faction wh3_main_ksl_the_ice_court;
			    }

			    objective
			    {
			        type MAKE_TRADE_AGREEMENT;

			        faction wh3_main_ksl_the_ice_court;
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