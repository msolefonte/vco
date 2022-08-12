local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_the_maw_that_walks;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
                objective
                {
                    override_text mission_text_text_vco_roc_ogr_the_maw_that_walks_0;
                    type SCRIPTED;
                    script_key vco_roc_ogr_the_maw_that_walks;
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
			victory_type vco_victory_type_alternative_2_the_age_of_the_ogres;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			     objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 13;

					province wh3_main_chaos_province_hochland;
					province wh3_main_chaos_province_middenland;
                    province wh3_main_chaos_province_nordland;
					province wh3_main_chaos_province_northern_grey_mountains;
					province wh3_main_chaos_province_ostermark;
					province wh3_main_chaos_province_ostland;
					province wh3_main_chaos_province_reikland;
					province wh3_main_chaos_province_southern_grey_mountains;
					province wh3_main_chaos_province_sylvania;
					province wh3_main_chaos_province_talabecland;
					province wh3_main_chaos_province_the_wasteland;
					province wh3_main_chaos_province_the_witchs_wood;
					province wh3_main_chaos_province_wissenland;
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
			victory_type vco_victory_type_alternative_3_hunger_for_power;
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

				objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_ogr_goldtooth;

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