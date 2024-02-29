local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_cst_sar_1_captain_of_the_swordfysh;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cst_sar_1_captain_of_the_swordfysh;
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
					type EARN_X_AMOUNT_FROM_RAIDING;
					total 7500;
				}
			
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cst_sar_1_pirate_queen;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_cst_sar_3_dead_man_s_vengeance_1;
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
			victory_type vco_victory_type_cst_sar_2_daughter_of_manann;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cst_sar_2_daughter_of_manann;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc11_cst_pirates_of_sartosa;

                    province wh3_main_combi_province_pirates_current;
					building_level wh2_dlc11_special_dragon_tooth_lighthouse_1;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_nor_skeggi;
					faction wh3_dlc21_nor_wyrmkins;
					faction wh_main_nor_skaeling;
					faction wh_dlc08_nor_vanaheimlings;
					faction wh_main_nor_bjornling;
					faction wh_main_nor_varg;
					faction wh_dlc08_nor_goromadny_tribe;
					faction wh_dlc08_nor_wintertooth;
					faction wh_dlc08_nor_norsca;

					confederation_valid;
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
						bundle_key vco_victory_payload_cst_sar_2_daughter_of_manann_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_cst_sar_2_daughter_of_manann_2;
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
			victory_type vco_victory_type_cst_sar_3_dead_man_s_vengeance;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_cst_sar_3_dead_man_s_vengeance;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc11_cst_noctilus;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_the_galleons_graveyard;
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
						bundle_key vco_victory_payload_cst_sar_1_captain_of_the_swordfysh;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_cst_sar_3_dead_man_s_vengeance_2;
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
