local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_fes_1_infector_counts;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_fes_1_infector_counts;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_hochland;
					faction wh_main_emp_middenland;
					faction wh_main_emp_nordland;
					faction wh_main_emp_marienburg;
					faction wh_main_emp_empire;
					faction wh_main_emp_wissenland;
					faction wh2_dlc13_emp_golden_order;
					faction wh_main_emp_averland;
					faction wh_main_emp_stirland;
					faction wh_main_emp_talabecland;
					faction wh_main_emp_ostermark;
					faction wh_main_emp_ostland;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_fes_1_infector_counts;
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
			victory_type vco_victory_type_chs_fes_2_strange_bedfellows;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_fes_2_strange_bedfellows;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_laurelorn_forest;
					region wh3_main_combi_region_the_black_pit;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_karak_kadrin;
				}

				objective
				{
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 30;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_fes_2_strange_bedfellows;
						turns 1;
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
			victory_type vco_victory_type_chs_fes_3_down_sickness;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_fes_3_down_sickness;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_gro_2_high_elf_decision_2;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_combi_region_couronne;
					region wh3_main_combi_region_the_oak_of_ages;
					region wh3_main_combi_region_skavenblight;
					region wh3_main_combi_region_sartosa;
					region wh3_main_combi_region_karaz_a_karak;
					region wh3_main_combi_region_black_crag;
				}
 
				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource wh3_main_nur_infections;
					total 5000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_fes_3_down_sickness;
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
