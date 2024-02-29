local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_def_hag_1_shadow_blade;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_hag_1_shadow_blade;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_main_def_hag_graef;
					total 5;
				
					building_level vco_landmark_darkblade_soul_engine_2;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle vco_wh2_dlc14_qb_def_final_battle_malus;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_hag_1_shadow_blade;
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
			victory_type vco_victory_type_def_hag_2_norscan_nightmare;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_hag_2_norscan_nightmare;
					type SCRIPTED;
					script_key vco_dummy;
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

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_ice_court;
					faction wh_main_emp_empire;
					faction wh_main_brt_bretonnia;

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
						bundle_key vco_victory_payload_def_hag_2_norscan_nightmare;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_def_hag_2_norscan_nightmare_1;
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
			victory_type vco_victory_type_def_hag_3_tyrant_hag_graef;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_def_hag_3_tyrant_hag_graef;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type OWN_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_hag_graef;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc23_chd_astragoth;
					faction wh3_main_vmp_lahmian_sisterhood;
					faction wh_main_dwf_dwarfs;
					faction wh2_dlc15_hef_imrik;
					faction wh3_main_ogr_goldtooth;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_hag_3_tyrant_hag_graef;
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
