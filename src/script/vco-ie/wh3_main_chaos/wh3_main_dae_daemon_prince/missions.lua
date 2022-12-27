local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_dae_god_1_ascension_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dae_god_1_ascension;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 35;
				}

				objective
				{
					override_text mission_text_text_wh3_main_narrative_mission_description_ascend;
					type SCRIPTED;
					script_key vco_dae_daemon_prince_ascend_ritual;
				}

				payload
				{
				
					effect_bundle
					{
						bundle_key vco_victory_payload_dae_god_1_ascension;
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
			victory_type vco_victory_type_dae_god_2_succeeding_you_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dae_god_2_succeeding_you_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_altdorf;
					region wh3_main_chaos_region_middenheim;
					region wh3_main_chaos_region_karak_kadrin;
					region wh3_main_chaos_region_wei_jin;
					region wh3_main_chaos_region_nan_gau;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dae_god_2_succeeding_you;
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
			victory_type vco_victory_type_dae_god_3_frozen_heart_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dae_god_3_frozen_heart;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_ice_court;
					faction wh3_main_ksl_the_great_orthodoxy;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_praag;
					region wh3_main_chaos_region_erengrad;
					region wh3_main_chaos_region_kislev;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dae_god_3_frozen_heart_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_dae_god_3_frozen_heart_2;
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
