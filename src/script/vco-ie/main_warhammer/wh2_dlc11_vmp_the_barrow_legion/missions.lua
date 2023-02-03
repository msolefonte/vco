local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_vmp_kem_1_cold_mountains_quiet_fields;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_kem_1_cold_mountains_quiet_fields;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_brt_bastonne;
					faction wh_main_brt_artois;
					faction wh3_main_brt_aquitaine;
				}
			
				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 2;

					province wh3_main_combi_province_northern_grey_mountains;
					province wh3_main_combi_province_bastonne;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_kem_1_sea_of_bones;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_kem_1_locus_of_power;
						turns 0;
					}
				
					faction_pooled_resource_transaction
					{
						resource vmp_blood_kiss;
						factor vco;
						amount 3;
						context absolute;
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
			victory_type vco_victory_type_vmp_kem_2_old_world_calls_me;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_kem_2_old_world_calls_me;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_empire;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_nuln;
					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_averheim;
					region wh3_main_combi_region_wurtbad;
					region wh3_main_combi_region_middenheim;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh_dlc05_wef_argwylon;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_kem_2_age_of_the_living_is_ending;
						turns 0;
					}
				
					faction_pooled_resource_transaction
					{
						resource vmp_blood_kiss;
						factor vco;
						amount 3;
						context absolute;
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
			victory_type vco_victory_type_vmp_kem_3_lichemaster;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_kem_3_lichemaster;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type ACHIEVE_CHARACTER_RANK;
					total 1;
					total2 40;
					start_pos_character 1487310411;
				}
			
				objective
				{
					type HAVE_N_AGENTS_OF_TYPE;
					total 8;
					agent_subtype wh_main_vmp_necromancer;
				}
			
				objective
				{
					override_text mission_text_text_vco_vmp_kem_3_bloodline_awoken;
					type SCRIPTED;
					script_key vco_wh2_dlc11_vmp_the_barrow_legion_bloodline_completed;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_kem_3_immortal_lich;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_kem_3_unhallowed_necromancers;
						turns 0;
					}
				
					faction_pooled_resource_transaction
					{
						resource vmp_blood_kiss;
						factor vco;
						amount 3;
						context absolute;
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
