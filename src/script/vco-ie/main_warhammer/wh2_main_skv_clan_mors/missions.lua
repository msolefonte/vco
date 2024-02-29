local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_skv_mor_1_the_chorus_grows;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mor_1_the_chorus_grows;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_kho_exiles_of_khorne;
					faction wh2_dlc17_bst_malagor;
					faction wh2_dlc09_tmb_khemri;
					faction wh3_main_emp_cult_of_sigmar;
					faction wh2_dlc14_brt_chevaliers_de_lyonesse;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mor_1_the_chorus_grows;
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
			victory_type vco_victory_type_skv_mor_2_withering_idol;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mor_2_withering_idol;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_skv_mor_2_withering_idol_1;
					type CONTROL_N_REGIONS_FROM;
					total 7;

					region wh3_main_combi_region_lahmia;
					region wh3_main_combi_region_temple_of_skulls;
					region wh3_main_combi_region_karak_zorn;
					region wh3_main_combi_region_oreons_camp;
					region wh3_main_combi_region_teotiqua;
					region wh3_main_combi_region_temple_avenue_of_gold;
					region wh3_main_combi_region_fortress_of_dawn;
					region wh3_main_combi_region_zlatlan;
					region wh3_main_combi_region_cuexotl;
					region wh3_main_combi_region_tlaqua;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mor_2_withering_idol;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mor_2_withering_idol_1;
						turns 1;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_withering_orb;
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
			victory_type vco_victory_type_skv_mor_3_karak_eight_peaks;
			key vco_route_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mor_3_karak_eight_peaks;
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
					faction wh2_main_skv_clan_mors;

                    province wh3_main_combi_province_eight_peaks;
					building_level wh2_main_special_eight_peaks_skv_3;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle vco_custom_quest_queek_eight_peaks;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_karak_izor;
					faction wh_main_grn_crooked_moon;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mor_3_karak_eight_peaks;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_belegars_head;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_skarsniks_head;
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
