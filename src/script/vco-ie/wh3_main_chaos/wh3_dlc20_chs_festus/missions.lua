local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_fes_1_infector_counts_roc;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_fes_1_infector_counts;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_hochland;
					faction wh_main_emp_middenland;
					faction wh_main_emp_nordland;
					faction wh_main_emp_marienburg;
					faction wh_main_emp_empire;
					faction wh_main_emp_wissenland;
					faction wh_main_emp_stirland;
					faction wh_main_emp_talabecland;
					faction wh_main_emp_ostermark;
					faction wh_main_emp_ostland;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_fes_1_infector_counts;
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
			victory_type vco_victory_type_chs_fes_2_strange_bedfellows_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_fes_2_strange_bedfellows;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_laurelorn_forest;
					region wh3_dlc20_chaos_region_black_pit;
					region wh3_main_chaos_region_kislev;
					region wh3_main_chaos_region_castle_drakenhof;
					region wh3_main_chaos_region_karak_kadrin;
				}

				objective
				{
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 30;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_fes_2_strange_bedfellows;
						turns 1;
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
			victory_type vco_victory_type_chs_fes_3_down_sickness_roc;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_fes_3_down_sickness_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_emp_kar_3_karl_uniter_1;
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_chaos_region_wei_jin;
					region wh3_main_chaos_region_nan_gau;
					region wh3_main_chaos_region_hanyu_port;
					region wh3_main_chaos_region_zharr_naggrund;
					region wh3_main_chaos_region_black_fortress;
					region wh3_main_chaos_region_the_tower_of_gorgoth;
					region wh3_main_chaos_region_fire_mouth;
					region wh3_main_chaos_region_great_hall_of_greasus;
					region wh3_main_chaos_region_karak_azorn;
				}
 
				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource wh3_main_nur_infections;
					total 5000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_fes_3_down_sickness;
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
	]]
};

return missions;
