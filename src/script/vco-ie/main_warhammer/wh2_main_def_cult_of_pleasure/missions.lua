local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_def_cop_1_stellar_pyramids_of_khaine;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_cop_1_stellar_pyramids_of_khaine;
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_hexoatl;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_lzd_hexoatl;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_def_cult_of_pleasure;

                    province wh3_main_combi_province_isthmus_of_lustria;
					building_level wh2_main_special_hexoatl_stellar_pyramids_other;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_cop_1_stellar_pyramids_of_khaine;
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
			victory_type vco_victory_type_def_cop_2_hell_hath_no_fury;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_cop_2_hell_hath_no_fury_1;
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
					override_text mission_text_text_vco_def_cop_2_hell_hath_no_fury_2;
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
						bundle_key vco_victory_payload_def_cop_2_hell_hath_no_fury_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_def_cop_2_hell_hath_no_fury_2;
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
			victory_type vco_victory_type_def_cop_3_return_of_the_queen;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_cop_3_return_of_the_queen_1;
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_ghrond;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_def_cult_of_pleasure;

                    province wh3_main_combi_province_spiteful_peaks;
					building_level wh2_main_special_ghrond_convent_of_sorcery_2;
				}

				objective
				{
					override_text mission_text_text_vco_def_cop_3_return_of_the_queen_2;
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_har_ganeth;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_har_ganeth;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_cop_3_return_of_the_queen_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_def_cop_3_return_of_the_queen_2;
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
