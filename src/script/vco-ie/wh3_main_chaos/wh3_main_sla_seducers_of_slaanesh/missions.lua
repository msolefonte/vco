local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_sla_nka_1_the_great_game_roc;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_sla_nka_1_the_great_game_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_the_great_game_completed_0;
					type SCRIPTED;
					script_key vco_wh3_main_sla_seducers_of_slaanesh_the_great_game;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_1_the_great_game_roc;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_1_the_great_game_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_sla_nka_2_paradise_lost_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_sla_nka_2_paradise_lost;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_sla_nka_2_paradise_lost_spread_marks;
					type SCRIPTED;
					script_key vco_wh3_main_sla_seducers_of_slaanesh_gifts_given;
				}

				objective
				{
					override_text mission_text_text_vco_sla_nka_2_paradise_lost_establish_cults;
					type SCRIPTED;
					script_key vco_wh3_main_sla_seducers_of_slaanesh_cults_established;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_2_paradise_lost;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_sla_nka_3_wrath_desire_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_sla_nka_3_wrath_desire_roc_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_kho_exiles_of_khorne;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					override_text mission_text_text_vco_sla_nka_3_wrath_desire_roc_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_sla_nka_3_wrath_desire_roc_3;
					type CONTROL_N_REGIONS_FROM;
					total 6;

					region wh3_main_chaos_region_infernius;
					region wh3_main_chaos_region_the_writhing_fortress;
					region wh3_main_chaos_region_fort_straghov;
					region wh3_main_chaos_region_kislev;
					region wh3_main_chaos_region_laurelorn_forest;
					region wh3_main_chaos_region_altdorf;
					region wh3_main_chaos_region_middenheim;
					region wh3_main_chaos_region_marienburg;
					region wh3_main_chaos_region_nuln;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_3_wrath_desire_roc_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_3_wrath_desire_roc_2;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
						turns 0;
					}

					game_victory;
				}
			}
		}
	]]
};

return missions;
