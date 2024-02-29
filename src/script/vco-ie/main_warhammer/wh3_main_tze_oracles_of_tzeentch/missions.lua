local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_tze_kai_1_great_game;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tze_kai_1_great_game;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_the_great_game_completed_0;
					type SCRIPTED;
					script_key vco_wh3_main_tze_oracles_of_tzeentch_the_great_game;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource wh3_main_tze_grimoires;
					total 2000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tze_kai_1_great_game;
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
			victory_type vco_victory_type_tze_kai_2_visions_past;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tze_kai_2_visions_past;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc17_lzd_oxyotl;
					faction wh2_dlc12_lzd_cult_of_sotek;
					faction wh2_main_lzd_itza;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_itza;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tze_kai_2_visions_past;
						turns 0;
					}


					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_arcane_item_cube_of_darkness;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_the_blade_of_realities;
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
			victory_type vco_victory_type_tze_kai_3_visions_future;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tze_kai_3_visions_future;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_order_of_loremasters;
					faction wh2_main_lzd_last_defenders;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_karak_zorn;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tze_kai_3_visions_future;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_hand_of_gods;
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
