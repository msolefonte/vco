local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_tze_kai_1_great_game_roc;
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
					override_text mission_text_text_vcogg_the_great_game_completed_0;
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
			victory_type vco_victory_type_tze_kai_2_visions_past_roc;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tze_kai_2_visions_past_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_nur_poxmakers_of_nurgle;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_tze_kai_2_tancred_castle_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_dlc20_chaos_region_tancred_castle;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tze_kai_2_fateweavers_vengeance_roc;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_tze_kai_2_twelve_artefacts_roc;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_the_heartwood_lance;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_magic_standard_shroud_of_gilles;
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
			victory_type vco_victory_type_tze_kai_3_visions_future_roc;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tze_kai_3_visions_future_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_cth_the_northern_provinces;
					faction wh3_main_cth_the_western_provinces;

					confederation_valid;
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
						bundle_key vco_victory_payload_tze_kai_3_wu_xing_compass_roc;
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
