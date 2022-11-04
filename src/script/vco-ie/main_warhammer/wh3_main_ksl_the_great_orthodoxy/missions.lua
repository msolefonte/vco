local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ksl_tgo_1_there_can_only_be_one;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{

				objective
				{
					override_text mission_text_text_vco_ksl_tgo_1_there_can_only_be_one;
					type CONTROL_N_REGIONS_INCLUDING;
					total 3;

					region wh3_main_combi_region_erengrad;
					region wh3_main_combi_region_praag;
					region wh3_main_combi_region_kislev;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					total 600;
					
					pooled_resource wh3_main_ksl_followers;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_tgo_1_there_can_only_be_one;
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
			victory_type vco_victory_type_ksl_tgo_2_the_last_bastion;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_tgo_2_the_last_bastion;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_skv_clan_moulder;
					faction wh3_dlc20_chs_azazel;
					faction wh_dlc08_nor_wintertooth;
					faction wh_dlc08_nor_norsca;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_tgo_2_the_last_bastion;
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
			victory_type vco_victory_type_ksl_tgo_3_wololo;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_tgo_3_wololo;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 4;

					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_marienburg;
					region wh3_main_combi_region_middenheim;
					region wh3_main_combi_region_castle_drakenhof;
				}
			
				objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh3_main_ksl_the_great_orthodoxy;
					total 6;
				
					building_level wh3_main_ksl_gold_3;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_empire;
					faction wh_main_emp_marienburg;
					faction wh_main_emp_middenland;
					faction wh_main_vmp_schwartzhafen;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_tgo_3_wololo_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_tgo_3_wololo_2;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_tgo_3_wololo_3;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_tgo_3_wololo_4;
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
