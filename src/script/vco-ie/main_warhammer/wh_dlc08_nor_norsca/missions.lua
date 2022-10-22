local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_nor_wul_1_ragnarok;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_nor_wul_1_ragnarok;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_mis_activity_attain_chaos_god_favour;
					type SCRIPTED;
					script_key vco_nor_wul_chaos_allegiance;
				}

				objective
				{
					override_text mission_text_text_mis_activity_defeat_chaos_gods_challengers;
					type SCRIPTED;
					script_key defeat_chaos_gods_challengers;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_1_ragnarok_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_1_ragnarok_2;
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
			victory_type vco_victory_type_nor_wul_2_the_world_walker;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nor_wul_2_the_world_walker;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_ice_court;
					faction wh3_main_ksl_the_great_orthodoxy;
				}
			
				objective
				{
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 4;
				
					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_middenheim;
					region wh3_main_combi_region_brass_keep;
					region wh3_main_combi_region_gryphon_wood;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_karak_kadrin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_2_the_world_walker;
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
			victory_type vco_victory_type_nor_wul_3_wheres_my_palico;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nor_wul_3_wheres_my_palico;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_kraka_drak;
					faction wh_dlc08_nor_goromadny_tribe;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_3_wheres_my_palico_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_3_wheres_my_palico_2;
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