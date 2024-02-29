local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_dwf_bel_1_the_reckoning;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_bel_1_the_reckoning;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 25;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_skv_clan_skryre;
					faction wh_dlc05_bst_morghur_herd;
					faction wh2_dlc11_cst_pirates_of_sartosa;
					faction wh3_main_ogr_disciples_of_the_maw;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_bel_1_the_reckoning;
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
			victory_type vco_victory_type_dwf_bel_2_friend_or_foe;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_bel_2_friend_or_foe;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 3;

					province wh3_main_combi_province_the_vaults;
					province wh3_main_combi_province_southern_grey_mountains;
					province wh3_main_combi_province_northern_grey_mountains;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_bel_2_friend_or_foe_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc11_vmp_the_barrow_legion;
					faction wh2_dlc15_grn_broken_axe;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_combi_region_couronne;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_bel_2_friend_or_foe_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_combi_region_the_oak_of_ages;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_bel_2_friend_or_foe;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_bel_2_friend_or_foe_1;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_grey_dwarf;
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
			victory_type vco_victory_type_dwf_bel_3_karak_eight_peaks;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_bel_3_karak_eight_peaks;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type OWN_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_karak_eight_peaks;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_main_dwf_karak_izor;

                    province wh3_main_combi_province_eight_peaks;
					building_level wh_dlc06_dwf_eight_peaks_3;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle vco_custom_quest_belegar_eight_peaks;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_grn_crooked_moon;
					faction wh2_main_skv_clan_mors;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_bel_3_karak_eight_peaks;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_magic_standard_belegar_banner;
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
