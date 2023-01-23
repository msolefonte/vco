local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ksl_bor_1_doomslayer;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{

				objective
				{
					override_text mission_text_text_vco_ksl_bor_1_doomslayer;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_dae_daemon_prince;
					faction wh2_main_def_hag_graef;
					faction wh3_dlc20_chs_sigvald;
					faction wh3_main_chs_shadow_legion;

					confederation_valid;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 25;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_bor_1_doomslayer_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_bor_1_doomslayer_2;
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
			victory_type vco_victory_type_ksl_bor_2_ice_fire;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_bor_2_ice_fire;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_chs_chaos;
					faction wh3_dlc20_chs_kholek;
					faction wh_main_grn_greenskins;
					faction wh3_main_grn_dark_land_orcs;

					confederation_valid;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 25;
				}

				payload
				{

					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_bor_2_ice_fire_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_bor_2_ice_fire_2;
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
			victory_type vco_victory_type_ksl_bor_3_blood_snow;
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

					region wh3_main_combi_region_erengrad;
					region wh3_main_combi_region_praag;
					region wh3_main_combi_region_kislev;
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
