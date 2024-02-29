local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_emp_the_1_champions_of_the_empire;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_the_1_champions_of_the_empire;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource emp_progress;
					total 100;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh2_dlc13_qb_emp_final_battle_wulfhart;
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
			victory_type vco_victory_type_emp_the_2_the_huntsmarshals_expedition;
			key vco_route_victory;
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
					override_text mission_text_text_vco_emp_the_2_the_huntsmarshals_expedition_artifacts_1;
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_combi_region_skeggi;
					region wh3_main_combi_region_hexoatl;
					region wh3_main_combi_region_pahuax;
					region wh3_main_combi_region_floating_pyramid;
					region wh3_main_combi_region_spektazuma;
					region wh3_main_combi_region_the_blood_hall;
				}

				objective
				{
					override_text mission_text_text_vco_emp_the_2_the_huntsmarshals_expedition_artifacts_2;
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_combi_region_tlaxtlan;
					region wh3_main_combi_region_xlanhuapec;
					region wh3_main_combi_region_the_awakening;
					region wh3_main_combi_region_the_star_tower;
					region wh3_main_combi_region_altar_of_the_horned_rat;
					region wh3_main_combi_region_the_southern_sentinels;
				}

				objective
				{
					override_text mission_text_text_vco_emp_the_2_the_huntsmarshals_expedition_artifacts_3;
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_combi_region_hualotal;
					region wh3_main_combi_region_great_turtle_isle;
					region wh3_main_combi_region_the_golden_colossus;
					region wh3_main_combi_region_mine_of_the_bearded_skulls;
					region wh3_main_combi_region_oyxl;
					region wh3_main_combi_region_kaiax;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_cursed_artifact_notidoq;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_cursed_artifact_notidoq;
					}

					faction_pooled_resource_transaction
					{
						resource emp_progress;
						factor vco;
						amount 10;
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
			victory_type vco_victory_type_emp_the_3_it_is_round;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_the_3_it_is_round;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc13_emp_the_huntmarshals_expedition;

                    province wh3_main_combi_province_scorpion_coast;
					building_level vco_landmark_markus_trophy_hall;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_lzd_hexoatl;
					faction wh2_main_lzd_itza;
					faction wh2_dlc12_lzd_cult_of_sotek;
					faction wh2_twa03_def_rakarth;
					faction wh2_main_skv_clan_pestilens;
					faction wh2_dlc11_cst_vampire_coast;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_big_game_hunter;
						turns 1;
					}

					faction_pooled_resource_transaction
					{
						resource emp_progress;
						factor vco;
						amount 10;
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
