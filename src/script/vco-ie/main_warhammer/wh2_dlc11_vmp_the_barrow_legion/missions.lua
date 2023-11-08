local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_vmp_kem_1_cold_mountains_quiet_fields;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_kem_1_cold_mountains_quiet_fields;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_combi_province_marches_of_couronne;
					province wh3_main_combi_province_coast_of_lyonesse;
					province wh3_main_combi_province_forest_of_arden;
					province wh3_main_combi_province_bastonne;
					province wh3_main_combi_province_river_brienne;
					province wh3_main_combi_province_forest_of_chalons;
					province wh3_main_combi_province_barrows_of_cuileux;
					province wh3_main_combi_province_carcassonne;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_brt_bretonnia;
					faction wh_main_brt_carcassonne;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc11_vmp_the_barrow_legion;

                    province wh3_main_combi_province_marches_of_couronne;
					building_level vco_landmark_kemmler_couronne_corpse_king;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_kem_1_sea_of_bones;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_kemmler_black_grail_knight;
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
			victory_type vco_victory_type_vmp_kem_2_old_world_calls_me;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_kem_2_old_world_calls_me;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					override_text mission_text_text_vco_vmp_kem_2_old_world_calls_me_1;
					type CONTROL_N_REGIONS_FROM;
					total 10;

					region wh3_main_combi_region_marienburg;
					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_nuln;
					region wh3_main_combi_region_pfeildorf;
					region wh3_main_combi_region_averheim;
					region wh3_main_combi_region_the_moot;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_castle_templehof;
					region wh3_main_combi_region_wurtbad;
					region wh3_main_combi_region_talabheim;
					region wh3_main_combi_region_hergig;
					region wh3_main_combi_region_brass_keep;
					region wh3_main_combi_region_middenheim;
					region wh3_main_combi_region_laurelorn_forest;
					region wh3_main_combi_region_the_black_pit;
					region wh3_main_combi_region_salzenmund;
					region wh3_main_combi_region_wolfenburg;
					region wh3_main_combi_region_bechafen;
					region wh3_main_combi_region_gryphon_wood;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_kem_2_age_of_the_living_is_ending;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_talisman_kemmler_black_arc;
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
			victory_type vco_victory_type_vmp_kem_3_lichemaster;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_kem_3_lichemaster;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_karak_kadrin;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 724031729;
				}

				objective
				{
					override_text mission_text_text_vco_vmp_kem_3_lichemaster_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_empire;

					confederation_valid;
				}

				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 20;
				}

				objective
				{
					override_text mission_text_text_vco_vmp_kem_3_lichemaster_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_dlc05_wef_argwylon;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc11_vmp_the_barrow_legion;

                    province wh3_main_combi_province_argwylon;
					building_level vco_landmark_kemmler_treeman_graveyard;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_the_oak_of_ages;
					region wh3_main_combi_region_waterfall_palace;
					region wh3_main_combi_region_crag_halls_of_findol;
					region wh3_main_combi_region_vauls_anvil_loren;
					region wh3_main_combi_region_kings_glade;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_kem_3_immortal_lich;
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
