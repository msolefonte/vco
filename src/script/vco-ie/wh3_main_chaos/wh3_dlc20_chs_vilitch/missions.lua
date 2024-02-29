local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_vil_1_the_reckoning_roc;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_vil_1_the_reckoning_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_chaos_region_altar_of_the_crimson_harvest;
					region wh3_main_chaos_region_doomkeep;
					region wh3_main_chaos_region_foul_fortress;
					region wh3_main_chaos_region_troll_fjord;
					region wh3_main_chaos_region_the_forbidden_citadel;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_dae_daemon_prince;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_vil_1_the_reckoning_roc;
						turns 1;
					}

					faction_pooled_resource_transaction
					{
						resource wh3_dlc20_chs_teleport_network_rift_resource;
						factor vco;
						amount 1;
						context absolute;
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
			victory_type vco_victory_type_chs_vil_2_master_puppets_roc;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_vil_2_master_puppets_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_great_orthodoxy;
					faction wh3_main_ksl_the_ice_court;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_erengrad;
					region wh3_main_chaos_region_praag;
					region wh3_main_chaos_region_kislev;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource wh3_dlc20_chs_souls;
					total 10000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_vil_2_master_puppets_roc;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_all_campaign_victory_dummy;
						turns 0;
					}

					faction_pooled_resource_transaction
					{
						resource wh3_dlc20_chs_teleport_network_rift_resource;
						factor vco;
						amount 1;
						context absolute;
					}

					game_victory;
				}
			}
		}
	]],
	[[
 		mission
		{
			victory_type vco_victory_type_chs_vil_3_doubters_folly_roc;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_vil_3_doubters_folly_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_chs_vil_3_doubters_folly_obfuscate_roc;
					type CONTROL_N_REGIONS_FROM;
					total 7;

					region wh3_main_chaos_region_brass_keep;
					region wh3_main_chaos_region_middenheim;
					region wh3_main_chaos_region_laurelorn_forest;
					region wh3_main_chaos_region_marienburg;
					region wh3_main_chaos_region_castle_drachenfels;
					region wh3_main_chaos_region_gristle_valley;
					region wh3_main_chaos_region_altdorf;
					region wh3_main_chaos_region_nuln;
					region wh3_main_chaos_region_castle_drakenhof;
					region wh3_main_chaos_region_karak_kadrin;
					region wh3_main_chaos_region_zhufbar;
				}
 
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_vil_3_doubters_folly_roc;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_the_rock_of_inevitability;
					}
                
					effect_bundle
					{
						bundle_key vco_victory_payload_all_campaign_victory_dummy;
						turns 0;
					}

					faction_pooled_resource_transaction
					{
						resource wh3_dlc20_chs_teleport_network_rift_resource;
						factor vco;
						amount 1;
						context absolute;
					}

					game_victory;
				}
			}
		}
	]]
};

return missions;
