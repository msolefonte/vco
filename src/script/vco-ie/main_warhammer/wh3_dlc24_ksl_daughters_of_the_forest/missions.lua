local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ksl_mot_1_malediction_of_ruin;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_mot_1_malediction_of_ruin;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh3_dlc24_ksl_mother_ostankya_hex_malediction_of_ruin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_mot_1_malediction_of_ruin;
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
			victory_type vco_victory_type_ksl_mot_2_toil_and_trouble;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_mot_2_toil_and_trouble;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_ksl_mot_2_toil_and_trouble_itxi_grubs;
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
					override_text mission_text_text_vco_ksl_mot_2_toil_and_trouble_jade_lotus;
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_combi_region_tlaxtlan;
					region wh3_main_combi_region_xlanhuapec;
					region wh3_main_combi_region_the_sacred_pools;
					region wh3_main_combi_region_the_awakening;
					region wh3_main_combi_region_the_star_tower;
					region wh3_main_combi_region_altar_of_the_horned_rat;
				}

				objective
				{
					override_text mission_text_text_vco_ksl_mot_2_toil_and_trouble_coatl_feathers;
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
						bundle_key vco_victory_payload_ksl_mot_2_toil_and_trouble;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_talisman_lustrian_concoction;
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
			victory_type vco_victory_type_ksl_mot_3_the_new_frontier;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_mot_3_the_new_frontier;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 32;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_cult_of_pleasure;
					faction wh2_dlc09_tmb_exiles_of_nehek;
					faction wh2_dlc17_bst_taurox;
					faction wh2_dlc11_cst_the_drowned;
					faction wh2_main_def_naggarond;
					faction wh3_dlc20_chs_valkia;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_mot_3_the_new_frontier;
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
