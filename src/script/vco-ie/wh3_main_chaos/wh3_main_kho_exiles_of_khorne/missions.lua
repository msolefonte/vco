local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_kho_ska_1_great_game_roc;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_kho_ska_1_great_game;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_the_great_game_completed_0;
					type SCRIPTED;
					script_key vco_wh3_main_kho_exiles_of_khorne_the_great_game;
				}

				objective
				{
					type ACHIEVE_CHARACTER_RANK;
					total 1;
					total2 40;
					start_pos_character 1590690065;
					include_generals;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_kho_ska_1_great_game;
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
			victory_type vco_victory_type_kho_ska_2_blood_god_roc;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_kho_ska_2_blood_god_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 32;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_castle_drakenhof;
					region wh3_main_chaos_region_the_silver_pinnacle;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_vmp_vampire_counts;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_kho_ska_2_blood_god;
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
			victory_type vco_victory_type_kho_ska_3_skull_throne_roc;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_kho_ska_3_skull_throne_roc;
					type SCRIPTED;
					script_key vco_kho_exiles_of_khorne_skulls_earned;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource wh3_main_kho_skulls;
					total 16000;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_sla_seducers_of_slaanesh;
					faction wh3_dlc20_chs_azazel;

					confederation_valid;
				}

				objective
				{
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 35;
				}


				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_kho_ska_3_skull_throne;
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
