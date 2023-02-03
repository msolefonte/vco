local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ogr_gre_1_rich_walk_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_gre_1_rich_walk_0;
					type SCRIPTED;
					script_key vco_ogr_gre_1_rich_walk;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh3_main_ogr_goldtooth;
					total 2;

					building_level wh3_main_ogr_resource_gold_3;
					building_level wh3_main_ogr_resource_gems_3;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ogr_gre_1_rich_walk;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_all_campaign_victory_dummy;
						turns 0;
					}

					game_victory;
				}
			}
		}
	]],
	[[
 		mission
		{
			victory_type vco_victory_type_ogr_gre_2_overtyrants_reign_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_gre_2_overtyrants_reign_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_chaos_province_ivory_road;
					province wh3_main_chaos_province_mountains_of_mourn;
					province wh3_main_chaos_province_the_great_maw;
					province wh3_main_chaos_province_ice_pass;
					province wh3_main_chaos_province_ancient_giant_lands;
					province wh3_main_chaos_province_bone_road;
					province wh3_main_chaos_province_gash_kadrak;
					province wh3_main_chaos_province_path_to_the_east;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_main_ogr_goldtooth;

                    province wh3_main_chaos_province_road_to_damnation;
					building_level wh3_main_special_challenge_stone_srawl;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ogr_gre_2_overtyrants_reign_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_all_campaign_victory_dummy;
						turns 0;
					}

					game_victory;
				}
			}
		}
	]],
	[[
 		mission
		{
			victory_type vco_victory_type_ogr_gre_3_drakecrush_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_gre_3_drakecrush;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_main_ogr_goldtooth;

                    province wh3_main_chaos_province_ivory_road;
					building_level wh3_main_special_goldtooths_toll_gate;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_chaos_region_wei_jin;
					region wh3_main_chaos_region_nan_gau;
					region wh3_main_chaos_region_shang_yang;
					region wh3_main_chaos_region_hanyu_port;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ogr_gre_3_drakecrush;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_all_campaign_victory_dummy;
						turns 0;
					}

					game_victory;
				}
			}
		}
	]]
};

return missions;
