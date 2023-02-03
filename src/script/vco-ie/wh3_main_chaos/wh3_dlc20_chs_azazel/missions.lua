local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_aza_1_sycophants_gather_roc;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_aza_1_sycophants_gather_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_tze_oracles_of_tzeentch;
					faction wh3_main_nur_poxmakers_of_nurgle;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					override_text mission_text_text_vco_chs_aza_1_dark_fortresses_roc;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_chaos_region_red_fortress;
					region wh3_main_chaos_region_the_volary;
					region wh3_main_chaos_region_zerulous;
					region wh3_main_chaos_region_city_of_splinters;
					region wh3_main_chaos_region_the_gallows_tree;
					region wh3_main_chaos_region_the_sunken_sewers;
					region wh3_main_chaos_region_the_writhing_fortress;
				}


				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_aza_1_sycophants_gather;
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
			victory_type vco_victory_type_chs_aza_2_cathay_roc;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_aza_2_cathay_roc;
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

					region wh3_main_chaos_region_wei_jin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_aza_2_cathay_roc;
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
			victory_type vco_victory_type_chs_aza_3_legions_march_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_aza_2_legions_march_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_sla_nka_2_paradise_lost_spread_marks;
					type SCRIPTED;
					script_key vco_wh3_dlc20_chs_azazel_gifts_given;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_ice_court;
					faction wh2_main_bst_stone_horn;
					faction wh_dlc03_bst_jagged_horn;
					faction wh3_main_wef_laurelorn;
					faction wh3_dlc20_brt_march_of_couronne;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					override_text mission_text_text_vco_chs_aza_3_sigmars_folly;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_empire;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_aza_2_legions_march;
						turns 1;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_chs_aza_3_sigmars_folly;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_ghal_maraz;
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
