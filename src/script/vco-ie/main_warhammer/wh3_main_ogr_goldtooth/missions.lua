local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ogr_gre_1_rich_walk;
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
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_ogr_gre_2_overtyrants_reign;
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
					override_text mission_text_text_vco_ogr_gre_2_at_least_6_provinces;
					type CONTROL_N_PROVINCES_INCLUDING;
					total 6;

					province wh3_main_combi_province_path_to_the_east;
					province wh3_main_combi_province_gash_kadrak;
					province wh3_main_combi_province_ancient_giant_lands;
					province wh3_main_combi_province_bone_road;
					province wh3_main_combi_province_mountains_of_mourn;
					province wh3_main_combi_province_ivory_road;
					province wh3_main_combi_province_the_maw;
					province wh3_main_combi_province_gnoblar_country;
				}

				objective
				{
					override_text mission_text_text_vco_ogr_gre_2_overtyrants_reign_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_grn_greenskins;

					confederation_valid;
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
						bundle_key vco_victory_payload_ogr_gre_2_overtyrants_reign_2;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_ogr_gre_3_drakecrush;
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
                    override_text mission_text_text_vco_ogr_gre_3_at_least_5_settlements;
					type CONTROL_N_REGIONS_INCLUDING;
					total 5;

					region wh3_main_combi_region_shang_yang;
					region wh3_main_combi_region_hanyu_port;
					region wh3_main_combi_region_kunlan;
					region wh3_main_combi_region_wei_jin;
					region wh3_main_combi_region_nan_gau;
					region wh3_main_combi_region_fu_hung;
					region wh3_main_combi_region_shi_long;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh3_main_ogr_goldtooth;
					total 1;

					building_level wh3_main_special_goldtooths_toll_gate;
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
						bundle_key vco_campaign_victory_dummy;
						turns 0;
					}

					game_victory;
				}
			}
		}
	]]
};

return missions;
