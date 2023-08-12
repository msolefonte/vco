local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_dwf_gro_1_malekith_grudge;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_gro_1_malekith_grudge;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_naggarond;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 6;

					region wh3_main_combi_region_clar_karond;
					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_hag_graef;
					region wh3_main_combi_region_ghrond;
					region wh3_main_combi_region_har_ganeth;
					region wh3_main_combi_region_karond_kar;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_gro_1_malekith_grudge;
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
			victory_type vco_victory_type_dwf_gro_2_high_elf_decision;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_gro_2_high_elf_decision;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_gro_2_high_elf_decision_2;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_combi_region_lothern;
					region wh3_main_combi_region_gaean_vale;
					region wh3_main_combi_region_the_oak_of_ages;
					region wh3_main_combi_region_the_witchwood;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_gro_2_high_elf_decision_1;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_combi_region_vauls_anvil_ulthuan;
					region wh3_main_combi_region_tor_anroc;
					region wh3_main_combi_region_tor_anlec;
					region wh3_main_combi_region_tor_achare;
					region wh3_main_combi_region_tor_koruali;
					region wh3_main_combi_region_tor_yvresse;
					region wh3_main_combi_region_elessaeli;
					region wh3_main_combi_region_white_tower_of_hoeth;
					region wh3_main_combi_region_tor_elyr;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_gro_2_high_elf_decision;
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
			victory_type vco_victory_type_dwf_gro_3_age_reckoning;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_gro_3_age_reckoning;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type AQUIRE_MISSION_CATEGORY_WEIGHT;
					event_category Grudges;
					value 9.0;
					value_minimum false;
					override_text mission_text_text_wh_main_objective_override_dwarfs_grudges_threshold;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc20_chs_valkia;
					faction wh2_dlc11_cst_the_drowned;
					faction wh2_dlc17_bst_taurox;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_main_dwf_the_ancestral_throng;

                    province wh3_main_combi_province_doom_glades;
					building_level vco_landmark_grombrindal_vauls_anvil;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_gro_3_age_reckoning;
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
