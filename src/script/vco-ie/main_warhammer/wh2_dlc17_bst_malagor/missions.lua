local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_bst_mal_1_badlands_bloodground;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_bst_mal_1_badlands_bloodground;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource bst_ruination;
					total 500;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_karaz_a_karak;
					region wh3_main_combi_region_black_crag;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_bst_mal_1_badlands_bloodground;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_red_fang;
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
			victory_type vco_victory_type_bst_mal_2_seed_of_hate;
			key vco_route_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_bst_mal_2_seed_of_hate;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_emp_cult_of_sigmar;
					faction wh2_dlc14_brt_chevaliers_de_lyonesse;
					faction wh2_main_lzd_tlaqua;
					faction wh2_main_lzd_last_defenders;
					faction wh2_dlc17_dwf_thorek_ironbrow;
					faction wh2_main_hef_order_of_loremasters;

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
						bundle_key vco_victory_payload_bst_mal_2_seed_of_hate;
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
			victory_type vco_victory_type_bst_mal_3_bane_of_death;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_bst_mal_3_bane_of_death;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc09_tmb_khemri;
					faction wh2_dlc09_tmb_lybaras;
					faction wh2_dlc09_tmb_followers_of_nagash;
					faction wh_main_vmp_vampire_counts;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_morgheim;
					region wh3_main_combi_region_black_pyramid_of_nagash;
					region wh3_main_combi_region_nagashizzar;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_bst_mal_3_bane_of_death;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_tainted_blade_of_ptra;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_armour_armour_of_templehof;
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
