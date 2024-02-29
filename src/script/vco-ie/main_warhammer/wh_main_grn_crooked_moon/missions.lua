local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_grn_ska_1_worlds_edge_warlord;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_grn_ska_1_worlds_edge_warlord;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 7;

					province wh3_main_combi_province_northern_worlds_edge_mountains;
					province wh3_main_combi_province_peak_pass;
					province wh3_main_combi_province_rib_peaks;
					province wh3_main_combi_province_black_water;
					province wh3_main_combi_province_deadrock_gap;
					province wh3_main_combi_province_the_silver_road;
					province wh3_main_combi_province_death_pass;
				}
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_grn_ska_1_worlds_edge_warlord;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_cracked_rune_azamar;
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
			victory_type vco_victory_type_grn_ska_2_squig_feast;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_grn_ska_2_squig_feast;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_grn_ska_2_squig_feast_1;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_combi_region_silver_pinnacle;
					region wh3_main_combi_region_zharr_naggrund;
					region wh3_main_combi_region_crookback_mountain;
					region wh3_main_combi_region_the_fortress_of_vorag;
					region wh3_main_combi_region_dread_rock;
					region wh3_main_combi_region_the_haunted_forest;
					region wh3_main_combi_region_great_hall_of_greasus;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_grn_ska_2_squig_feast;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_grn_ska_2_squig_feast_1;
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
			victory_type vco_victory_type_grn_ska_3_karak_eight_peaks;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_grn_ska_3_karak_eight_peaks;
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
					faction wh_main_grn_crooked_moon;

                    province wh3_main_combi_province_eight_peaks;
					building_level wh_dlc06_grn_eight_peaks_3;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle vco_custom_quest_skarsnik_eight_peaks;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_karak_izor;
					faction wh2_main_skv_clan_mors;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_grn_ska_3_karak_eight_peaks;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_the_hammer_of_angrund;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_dwarf_gouger;
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
