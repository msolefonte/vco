local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_emp_the_1_champions_of_the_empire;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource emp_progress;
					total 100;
				}

				objective
				{
					override_text mission_text_text_vco_emp_the_1_champions_of_the_empire;
					type CONTROL_N_REGIONS_FROM;
					total 6;

					region wh3_main_combi_region_the_high_sentinel;
					region wh3_main_combi_region_temple_of_kara;
					region wh3_main_combi_region_temple_of_tlencan;
					region wh3_main_combi_region_pox_marsh;
					region wh3_main_combi_region_the_awakening;
					region wh3_main_combi_region_the_blood_swamps;
					region wh3_main_combi_region_fuming_serpent;
					region wh3_main_combi_region_the_star_tower;
					region wh3_main_combi_region_altar_of_the_horned_rat;
					region wh3_main_combi_region_chupayotl;
					region wh3_main_combi_region_mangrove_coast;
					region wh3_main_combi_region_citadel_of_dusk;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_champions_of_the_empire;
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
			victory_type vco_victory_type_emp_the_2_the_huntsmarshals_expedition;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_the_2_the_huntsmarshals_expedition;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_lzd_itza;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_emp_the_2_the_huntsmarshals_expedition_artifacts;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_combi_region_chamber_of_visions;
					region wh3_main_combi_region_itza;
					region wh3_main_combi_region_oyxl;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_cursed_artifact_notidoq;
						turns 0;
					}

					faction_pooled_resource_transaction
					{
						resource emp_progress;
						factor vco;
						amount 20;
						context absolute;
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
			victory_type vco_victory_type_emp_the_3_it_is_round;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_the_3_it_is_round;
					type CONTROL_N_REGIONS_INCLUDING;
					total 4;

					region wh3_main_combi_region_haichai;
					region wh3_main_combi_region_beichai;
					region wh3_main_combi_region_chimai;
					region wh3_main_combi_region_fu_chow;
					region wh3_main_combi_region_li_zhu;
					region wh3_main_combi_region_dai_cheng;
				}

				objective
				{
					override_text mission_text_text_vco_emp_the_3_it_is_round_nakai;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc13_lzd_spirits_of_the_jungle;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_big_game_hunter;
						turns 0;
					}

					faction_pooled_resource_transaction
					{
						resource emp_progress;
						factor vco;
						amount 20;
						context absolute;
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
