local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_def_gan_1_sacrifice_slaughter;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_gan_1_sacrifice_slaughter;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_nagarythe;
				}
			
				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_shrine_of_khaine;
				}
			
				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_def_har_ganeth;
					total 1;

					building_level wh2_main_special_shrine_of_khaine_def_1;
				}
			
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_1_sacrifice_slaughter_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_1_sacrifice_slaughter_2;
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
			victory_type vco_victory_type_def_gan_2_suffer_not_another_queen;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_gan_2_suffer_not_another_queen;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_avelorn;
				}
			
				objective
				{
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_OF_SUBCULTURE;
					total 16;
				
					subculture wh2_main_sc_hef_high_elves;
				}
			
				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_def_har_ganeth;
					total 1;

					building_level wh2_main_special_har_ganeth_hellebron_palace;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_2_suffer_not_another_queen_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_2_suffer_not_another_queen_2;
						turns 0;
					}
				
					faction_pooled_resource_transaction
					{
						resource def_slaves;
						factor vco;
						amount 2500;
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
			victory_type vco_victory_type_def_gan_3_eternity_awaits;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_def_gan_3_eternity_awaits;
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
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_ancient_city_of_quintex;
				}
			
				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_def_har_ganeth;
					total 1;

					building_level wh2_main_special_quintex_2;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_3_eternity_awaits_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_3_eternity_awaits_2;
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
