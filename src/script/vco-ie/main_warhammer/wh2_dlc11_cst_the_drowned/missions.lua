local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_cst_cyl_1_ghost_seashell;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cst_cyl_1_ghost_seashell;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 6;

					region wh3_main_combi_region_karond_kar;
					region wh3_main_combi_region_clar_karond;
					region wh3_main_combi_region_hag_graef;
					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_ghrond;
					region wh3_main_combi_region_har_ganeth;
				}
			
				payload
				{
					faction_pooled_resource_transaction
					{
						resource cst_infamy;
						factor vco;
						amount 2500;
						context absolute;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_cst_cyl_1_ghost_seashell;
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
			victory_type vco_victory_type_cst_cyl_2_what_lurks_below;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cst_cyl_2_what_lurks_below;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					override_text mission_text_text_vco_cst_cyl_2_what_lurks_below_1;
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_the_witchwood;
					region wh3_main_combi_region_drackla_spire;
					region wh3_main_combi_region_clarak_spire;
					region wh3_main_combi_region_ancient_city_of_quintex;
					region wh3_main_combi_region_hexoatl;
				}

				payload
				{
					faction_pooled_resource_transaction
					{
						resource cst_infamy;
						factor vco;
						amount 2500;
						context absolute;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_cst_cyl_2_what_lurks_below;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_cst_cyl_2_what_lurks_below_1;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_arcane_item_eye_of_the_deep;
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
			victory_type vco_victory_type_cst_cyl_3_rising_tide;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_cst_cyl_3_rising_tide;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					total 24000;
					pooled_resource cst_infamy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc11_cst_the_drowned;

                    province wh3_main_combi_province_eataine;
					building_level wh2_dlc11_special_cylostra_opera_house_1;
				}

				objective
				{
					override_text mission_text_text_vco_cst_cyl_2_rising_tide_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_couronne;
				}

				objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_dlc11_cst_the_drowned;
					total 1;
					building_level wh2_dlc11_special_ship_cylostra_1;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cst_cyl_3_rising_tide_1;
						turns 1;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_cst_cyl_3_rising_tide_2;
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
