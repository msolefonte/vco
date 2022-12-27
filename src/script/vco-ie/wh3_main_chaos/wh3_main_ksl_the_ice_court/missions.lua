local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ksl_kat_1_there_can_only_be_one_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_kat_1_there_can_only_be_one;
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
						bundle_key vco_victory_payload_ksl_kat_1_there_can_only_be_one_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_kat_1_there_can_only_be_one_2;
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
			victory_type vco_victory_type_ksl_kat_2_kislev_love_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_kat_2_kislev_love;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_dae_daemon_prince;
					faction wh2_main_skv_clan_moulder;
					faction wh3_dlc20_chs_valkia;
					faction wh_main_vmp_vampire_counts;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_kat_2_kislev_love;
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
			victory_type vco_victory_type_ksl_kat_3_defenders_world_roc;
			key wh_main_short_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_kat_3_defenders_world;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 32;
				}

				objective
				{
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_OF_SUBCULTURE;
					total 5;
				
					subculture wh_dlc08_sc_nor_norsca;
				}

				objective
				{
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_OF_SUBCULTURE;
					total 5;
				
					subculture wh_main_sc_chs_chaos;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_kat_3_defenders_world;
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
	]]
};

return missions;
