local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_nur_kug_1_great_game_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nur_kug_1_great_game;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_the_great_game_completed_0;
					type SCRIPTED;
					script_key vco_wh3_main_nur_poxmakers_of_nurgle_the_great_game;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource wh3_main_nur_infections;
					total 2000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_1_great_game;
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
			victory_type vco_victory_type_nur_kug_2_eastern_poxes_roc;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nur_kug_2_eastern_poxes_roc;
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
					region wh3_main_chaos_region_po_mei;
					region wh3_main_chaos_region_zhanshi;
					region wh3_main_chaos_region_shang_wu;
					region wh3_main_chaos_region_hanyu_port;
				}

				objective
				{
					override_text mission_text_text_vco_nur_kug_2_frozen_poxes_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_kislev;
					region wh3_main_chaos_region_erengrad;
					region wh3_main_chaos_region_praag;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_2_eastern_poxes_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_2_frozen_poxes_roc;
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
			victory_type vco_victory_type_nur_kug_3_death_dwarfs_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nur_kug_3_death_dwarfs;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_karak_dum;
					region wh3_main_chaos_region_kraka_drak;
					region wh3_main_chaos_region_karak_azorn;
					region wh3_main_chaos_region_zhufbar;
					region wh3_main_chaos_region_karak_kadrin;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_karak_kadrin;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_nur_kug_3_death_dwarfs_1_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_zharr_naggrund;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_3_death_dwarfs;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_3_death_dwarfs_1;
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
