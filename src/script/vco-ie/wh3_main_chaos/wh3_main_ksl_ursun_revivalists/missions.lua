local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ksl_bor_1_doomslayer_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_bor_1_doomslayer_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc20_chs_valkia;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_gro_2_high_elf_decision_2;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_chaos_region_palace_of_princes;
					region wh3_main_chaos_region_infernius;
					region wh3_main_chaos_region_the_sunken_sewers;
					region wh3_main_chaos_region_the_volary;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_bor_1_doomslayer_1_roc;
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
			victory_type vco_victory_type_ksl_bor_2_old_frontier_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_bor_2_old_frontier_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 3;

					province wh3_main_chaos_province_zorn_uzkul;
					province wh3_main_chaos_province_the_high_pass;
					province wh3_main_chaos_province_road_of_skulls;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_zharr_naggrund;
					region wh3_main_chaos_region_the_silver_pinnacle;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_bor_2_old_frontier_roc;
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
			victory_type vco_victory_type_ksl_bor_3_blood_snow_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_bor_3_blood_snow;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 3;

					region wh3_main_chaos_region_erengrad;
					region wh3_main_chaos_region_praag;
					region wh3_main_chaos_region_kislev;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					total 600;
					
					pooled_resource wh3_main_ksl_followers;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_bor_3_blood_snow;
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
