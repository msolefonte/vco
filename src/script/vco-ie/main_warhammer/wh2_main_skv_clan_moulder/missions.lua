local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_skv_mdr_1_PLACEHOLDER;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mdr_1_PLACEHOLDER_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_skv_clan_moulder;
					total 1;

					building_level wh2_main_special_hellpit_pits;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_1_PLACEHOLDER_1;
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
			victory_type vco_victory_type_skv_mdr_2_the_vermintide_comes;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mdr_2_the_vermintide_comes_1;
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
						bundle_key vco_victory_payload_skv_mdr_2_the_vermintide_comes_1;
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
			victory_type vco_victory_type_skv_mdr_3_harvest_chaos_specimens;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mdr_3_harvest_chaos_specimens_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_dlc08_nor_wintertooth;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_3_harvest_chaos_specimens_1;
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
