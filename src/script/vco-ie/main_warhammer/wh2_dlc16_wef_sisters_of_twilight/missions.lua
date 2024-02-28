local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_wef_twi_1_dreaming_wood;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_wef_twi_1_dreaming_wood_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type PERFORM_RITUAL;
					ritual_category WORLDROOTS_HEALING;
					total 3;
				}

				objective
				{
					type HAVE_N_AGENTS_OF_TYPE;
					total 1;
					agent_subtype wh2_dlc16_wef_ariel;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle vco_wh2_dlc16_qb_wef_final_battle_sisters;
				}

				objective
				{
					override_text mission_text_text_vco_wef_twi_1_dreaming_wood_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_cult_of_pleasure;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_ghrond;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_wef_twi_1_dreaming_wood_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_wef_twi_1_dreaming_wood_2;
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
			victory_type vco_victory_type_wef_twi_2_vauls_anvils;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_wef_twi_2_vauls_anvils;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_combi_region_vauls_anvil_naggaroth;
					region wh3_main_combi_region_vauls_anvil_ulthuan;
					region wh3_main_combi_region_vauls_anvil_loren;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_wef_twi_2_vauls_anvils;
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
			victory_type vco_victory_type_wef_twi_3_sacred_pools;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_wef_twi_3_sacred_pools_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_combi_region_the_sacred_pools;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc13_emp_the_huntmarshals_expedition;
					faction wh_main_brt_bordeleaux;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_wef_twi_3_sacred_pools_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_combi_region_gaean_vale;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_avelorn;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_wef_twi_3_sacred_pools_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_wef_twi_3_sacred_pools_2;
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
