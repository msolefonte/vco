local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_bst_tau_1_banebeast_naggaroth;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_bst_tau_1_banebeast_naggaroth;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_clar_karond;
					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_hag_graef;
					region wh3_main_combi_region_ghrond;
					region wh3_main_combi_region_har_ganeth;
					region wh3_main_combi_region_karond_kar;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 32;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_bst_tau_1_banebeast_naggaroth;
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
			victory_type vco_victory_type_bst_tau_2_beastpaths_ruin;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_bst_tau_2_beastpaths_ruin;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_the_witchwood;
					region wh3_main_combi_region_ancient_city_of_quintex;
					region wh3_main_combi_region_hexoatl;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_twa03_def_rakarth;
					faction wh2_dlc13_emp_the_huntmarshals_expedition;
					faction wh2_dlc17_lzd_oxyotl;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_bst_tau_2_beastpaths_ruin;
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
			victory_type vco_victory_type_bst_tau_3_heart_dark;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_bst_tau_3_heart_dark;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_bst_tau_3_heart_dark_set_piece;
					type SCRIPTED;
					script_key vco_bst_taurox_heart_of_the_dark;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource bst_ruination;
					total 500;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_bst_tau_3_heart_dark;
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
