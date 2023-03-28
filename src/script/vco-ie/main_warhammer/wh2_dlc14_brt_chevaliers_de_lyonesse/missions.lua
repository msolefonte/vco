local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_brt_rep_1_desert_crusades;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_brt_rep_1_desert_crusades;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 7;

					province wh3_main_combi_province_coast_of_araby;
					province wh3_main_combi_province_land_of_assassins;
					province wh3_main_combi_province_great_desert_of_araby;
					province wh3_main_combi_province_the_cracked_land;
					province wh3_main_combi_province_land_of_the_dervishes;
					province wh3_main_combi_province_shifting_sands;
					province wh3_main_combi_province_land_of_the_dead;

				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_black_pyramid_of_nagash;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc14_brt_chevaliers_de_lyonesse;

                    province wh3_main_combi_province_coast_of_araby;
					building_level wh2_dlc14_special_copher_port_2_bretonnia;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc14_brt_chevaliers_de_lyonesse;

                    province wh3_main_combi_province_coast_of_araby;
					building_level wh2_dlc14_special_fyrus_holy_monastery;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc14_brt_chevaliers_de_lyonesse;

                    province wh3_main_combi_province_great_desert_of_araby;
					building_level wh3_main_special_the_great_desert_other_2;
				}

				payload
				{
					faction_pooled_resource_transaction
					{
						resource brt_chivalry;
						factor vco;
						amount 1000;
						context absolute;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_brt_rep_1_desert_crusades;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_arcane_item_golden_lamp;
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
			victory_type vco_victory_type_brt_rep_2_cleansing_the_land;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_brt_rep_2_cleansing_the_land;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc09_tmb_followers_of_nagash;
					faction wh_main_vmp_vampire_counts;
					faction wh2_dlc09_tmb_khemri;
					faction wh2_dlc09_tmb_lybaras;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_lahmia;
				}

				payload
				{
					faction_pooled_resource_transaction
					{
						resource brt_chivalry;
						factor vco;
						amount 1000;
						context absolute;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_brt_rep_2_cleansing_the_land;
						turns 1;
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
			victory_type vco_victory_type_brt_rep_3_lyonesse_lawbringer;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_brt_rep_3_lyonesse_lawbringer;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					total 10000;
					pooled_resource brt_chivalry;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_combi_region_lyonesse;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_sartosa;
					region wh3_main_combi_region_the_galleons_graveyard;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_brt_rep_3_lyonesse_lawbringer;
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
