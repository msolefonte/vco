local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_def_cul_1_stellar_pyramids_of_khaine;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_cul_1_stellar_pyramids_of_khaine;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_lzd_hexoatl;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_hexoatl;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_def_cult_of_pleasure;
					total 1;

					building_level wh2_main_special_hexoatl_stellar_pyramids_other;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_cul_1_stellar_pyramids_of_khaine;
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
			victory_type vco_victory_type_def_cul_2_hell_hath_no_fury;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_cul_2_hell_hath_no_fury_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc16_wef_sisters_of_twilight;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_def_cul_2_hell_hath_no_fury_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_nagarythe;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_cul_2_hell_hath_no_fury_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_def_cul_2_hell_hath_no_fury_2;
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
			victory_type vco_victory_type_def_cul_3_return_of_the_queen;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_cul_3_return_of_the_queen_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_ghrond;
				}
            
				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_def_cult_of_pleasure;
					total 1;

					building_level wh2_main_special_ghrond_convent_of_sorcery_2;
				}
      
				objective
				{
					override_text mission_text_text_vco_def_cul_3_return_of_the_queen_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_har_ganeth;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_har_ganeth;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_cul_3_return_of_the_queen_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_def_cul_3_return_of_the_queen_2;
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
