local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_kho_ska_1_great_game;
			key wh_main_short_victory;
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
					override_text mission_text_text_mis_activity_complete_slaughter_carnage;
					type SCRIPTED;
					script_key slaughter_carnage_obtained;
				}

				objective
				{
					type ACHIEVE_CHARACTER_RANK;
					total 1;
					total2 40;
					start_pos_character 1629043394;
					include_generals;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_kho_ska_1_great_game;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key wh3_main_anc_weapon_chainsword;
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
			victory_type vco_victory_type_kho_ska_2_blood_god;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_kho_ska_2_blood_god;
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

					region wh3_main_combi_region_lahmia;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_lzd_last_defenders;
					faction wh2_dlc17_dwf_thorek_ironbrow;

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
			victory_type vco_victory_type_kho_ska_3_skull_throne;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_kho_ska_3_skull_throne;
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

					faction wh2_dlc09_tmb_khemri;
					faction wh2_dlc09_tmb_followers_of_nagash;
					faction wh2_dlc14_brt_chevaliers_de_lyonesse;
					faction wh3_main_emp_cult_of_sigmar;

					confederation_valid;
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
