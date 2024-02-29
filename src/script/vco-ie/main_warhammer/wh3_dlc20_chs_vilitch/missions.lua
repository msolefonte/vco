local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_vil_1_the_reckoning;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_vil_1_the_reckoning;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 6;

					region wh3_main_combi_region_red_fortress;
					region wh3_main_combi_region_bloodwind_keep;
					region wh3_main_combi_region_fortress_of_eyes;
					region wh3_main_combi_region_the_challenge_stone;
					region wh3_main_combi_region_zanbaijin;
					region wh3_main_combi_region_the_writhing_fortress;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_chs_chaos;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_vil_1_the_reckoning;
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
			victory_type vco_victory_type_chs_vil_2_puppet_state;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_vil_2_puppet_state;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_cth_the_northern_provinces;
					faction wh3_main_cth_the_western_provinces;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_wei_jin;
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
						bundle_key vco_victory_payload_chs_vil_2_puppet_state;
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
			victory_type vco_victory_type_chs_vil_3_yueyins_diamond;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_vil_3_yueyins_diamond;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_chs_vil_3_yueyins_diamond_obfuscate;
					type CONTROL_N_REGIONS_FROM;
					total 7;

					region wh3_main_combi_region_haichai;
					region wh3_main_combi_region_kunlan;
					region wh3_main_combi_region_beichai;
					region wh3_main_combi_region_shi_wu;
					region wh3_main_combi_region_tower_of_ashung;
					region wh3_main_combi_region_jungles_of_chian;
					region wh3_main_combi_region_fu_hung;
					region wh3_main_combi_region_nonchang;
					region wh3_main_combi_region_shi_long;
					region wh3_main_combi_region_zhanshi;
					region wh3_main_combi_region_po_mei;
					region wh3_main_combi_region_hanyu_port;
					region wh3_main_combi_region_shang_yang;
					region wh3_main_combi_region_nan_gau;
				}
 
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_vil_3_yueyins_diamond;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_arcane_item_yueyins_diamond;
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
