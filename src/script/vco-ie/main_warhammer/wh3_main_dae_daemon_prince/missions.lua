local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_dae_god_1_ascension;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dae_god_1_ascension;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 35;
				}

				objective
				{
					override_text mission_text_text_wh3_main_narrative_mission_description_ascend;
					type SCRIPTED;
					script_key daemon_prince_ascend_ritual;
				}

				payload
				{
				
					effect_bundle
					{
						bundle_key vco_victory_payload_dae_god_1_ascension;
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
			victory_type vco_victory_type_dae_god_2_succeeding_you;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dae_god_2_succeeding_you_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_chs_chaos;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_dae_god_2_succeeding_you_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_ursun_revivalists;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_dae_god_2_succeeding_you_3;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_chs_shadow_legion;

					confederation_valid;
					vassalization_valid;
				}


				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dae_god_2_succeeding_you;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_the_slayer_of_kings;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_shard_blade;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_blade_of_shadow;
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
			victory_type vco_victory_type_dae_god_3_frozen_heart;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dae_god_3_frozen_heart;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_ice_court;
					faction wh3_main_ksl_the_great_orthodoxy;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_praag;
					region wh3_main_combi_region_erengrad;
					region wh3_main_combi_region_kislev;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dae_god_3_frozen_heart_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_dae_god_3_frozen_heart_2;
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
