local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_skv_mdr_1_yes_yes_prepare_the_lab;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mdr_1_yes_yes_prepare_the_lab_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_skv_mdr_1_yes_yes_prepare_the_lab;
					type SCRIPTED;
					script_key vco_skv_mld_augments;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_combi_province_helspire_mountains;
					province wh3_main_combi_province_vanaheim_mountains;
					province wh3_main_combi_province_ice_tooth_mountains;
					province wh3_main_combi_province_mountains_of_naglfari;
					province wh3_main_combi_province_trollheim_mountains;
					province wh3_main_combi_province_mountains_of_hel;
					province wh3_main_combi_province_gianthome_mountains;
					province wh3_main_combi_province_goromadny_mountains;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_1_yes_yes_prepare_the_lab;
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
			victory_type vco_victory_type_skv_mdr_2_the_vermintide_comes;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mdr_2_the_vermintide_comes;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_great_orthodoxy;
					faction wh3_main_ksl_the_ice_court;
					faction wh_main_dwf_karak_kadrin;
					faction wh2_dlc13_emp_golden_order;
					faction wh_main_emp_empire;
					faction wh_main_emp_middenland;

					confederation_valid;
				}

				objective
				{
					type CAPTURE_X_BATTLE_CAPTIVES;

					total 10000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_2_the_vermintide_comes;
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
			victory_type vco_victory_type_skv_mdr_3_the_frozen_dead;
			key vco_route_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{

				objective
				{
					override_text mission_text_text_vco_skv_mdr_3_ultimate_harvest;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_skv_clan_moulder;

                    province wh3_main_combi_province_eastern_oblast;
					building_level vco_moulder_dukhyls_forest_brood_warren;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_skv_clan_moulder;

                    province wh3_main_combi_province_gryphon_wood;
					building_level vco_moulder_warpstone_pillar;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_skv_clan_moulder;

                    province wh3_main_combi_province_the_witchs_wood;
					building_level vco_moulder_laurelorn_broken_heart;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_skv_clan_moulder;

                    province wh3_main_combi_province_forest_of_gloom;
					building_level vco_moulder_forest_flesh_pits;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh2_dlc16_qb_skv_final_battle_throt;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_3_ultimate_harvest;
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
	]]
};

return missions;
