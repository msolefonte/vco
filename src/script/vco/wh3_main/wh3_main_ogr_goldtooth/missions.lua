local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_too_rich_to_walk;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
				{
					type HAVE_AT_LEAST_X_MONEY;
					total 500000;
				}

				objective
				{
				    type TRADE_INCOME_AT_LEAST_X;
				    total 2500;
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
			victory_type vco_victory_type_alternative_2_overtyrants_reign;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_chaos_province_ancient_giant_lands;
					province wh3_main_chaos_province_bone_road;
                    province wh3_main_chaos_province_gash_kadrak;
					province wh3_main_chaos_province_ice_pass;
					province wh3_main_chaos_province_ivory_road;
					province wh3_main_chaos_province_mountains_of_mourn;
					province wh3_main_chaos_province_path_to_the_east;
					province wh3_main_chaos_province_the_great_maw;
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
			victory_type vco_victory_type_alternative_3_sweet_and_sour_dragon;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_cth_burning_wind_nomads;
                    faction wh3_main_cth_celestial_loyalists;
                    faction wh3_main_cth_dissenter_lords_of_jinshen;
                    faction wh3_main_cth_imperial_wardens;
                    faction wh3_main_cth_rebel_lords_of_nan_yang;
                    faction wh3_main_cth_the_jade_custodians;
                    faction wh3_main_cth_the_northern_provinces;
                    faction wh3_main_cth_the_western_provinces;

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