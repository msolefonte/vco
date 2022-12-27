local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_cth_twp_1_iron_into_gold_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_zha_1_iron_into_gold;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_cth_the_western_provinces_caravans_0;
					type SCRIPTED;
					script_key vco_cth_the_western_provinces_caravans;
				}

				objective
				{
					override_text mission_text_text_vco_cth_the_western_provinces_goods_0;
					type SCRIPTED;
					script_key vco_cth_the_western_provinces_goods;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;
				
					region wh3_main_chaos_region_shang_yang;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh3_main_cth_the_western_provinces;
					total 1;

					building_level wh3_main_special_the_great_embassy;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_iron_into_gold;
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
			victory_type vco_victory_type_cth_twp_2_warpstone_hoard_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_zha_2_warpstone_hoard;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_seep_gore;
					region wh3_main_chaos_region_hell_pit;
					region wh3_main_chaos_region_castle_drakenhof;
					region wh3_main_chaos_region_castle_drachenfels;
					region wh3_main_chaos_region_crookback_mountain;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_zha_2_warpstone_hoard;
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
			victory_type vco_victory_type_cth_twp_3_dont_thread_on_ming_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_ivory_road;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 3;

					province wh3_main_chaos_province_ivory_road;
					province wh3_main_chaos_province_the_great_maw;
					province wh3_main_chaos_province_ice_pass;
				}

				objective
				{
					override_text mission_text_text_vco_cth_zha_3_black_fortress_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_black_fortress;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_dont_thread_on_ming;
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
