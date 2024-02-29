local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_skv_esh_1_shadow_and_blade;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_esh_1_shadow_and_blade;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type PERFORM_RITUAL;

					ritual_category ESHIN_VORTEX_RITUAL;
					total 4;
				}	

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh2_dlc14_qb_skv_final_battle_snikch;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_1_shadow_and_blade;
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
			victory_type vco_victory_type_skv_esh_2_knives_in_the_dark;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_esh_2_knives_in_the_dark;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type ASSASSINATE_X_CHARACTERS;

					total 13;
				}

				objective
				{
					override_text mission_text_text_vco_skv_esh_2_knives_in_the_dark_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_skv_clan_eshin;

                    province wh3_main_combi_province_gunpowder_road;
					building_level vco_landmark_snikch_repurposed_forges;
				}

				objective
				{
					override_text mission_text_text_vco_skv_esh_2_knives_in_the_dark_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc20_chs_vilitch;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_skv_esh_2_knives_in_the_dark_3;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_skv_clan_eshin;

                    province wh3_main_combi_province_warpstone_desert;
					building_level vco_landmark_snikch_warpstone_hoard;
				}

				objective
				{
					override_text mission_text_text_vco_skv_esh_2_knives_in_the_dark_4;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc13_lzd_spirits_of_the_jungle;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_skv_esh_2_knives_in_the_dark_5;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_skv_clan_eshin;

                    province wh3_main_combi_province_imperial_road;
					building_level wh3_dlc24_special_celestial_palace_other;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 184504971;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1114847419;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 913082313;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_2_knives_in_the_dark;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_warpstone_stars;
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
			victory_type vco_victory_type_skv_esh_3_year_of_the_rat;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_skv_esh_3_year_of_the_rat;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 15;

					province wh3_main_combi_province_gunpowder_road;
					province wh3_main_combi_province_lands_of_stone_and_steel;
					province wh3_main_combi_province_imperial_road;
					province wh3_main_combi_province_plains_of_xen;
					province wh3_main_combi_province_forests_of_the_moon;
					province wh3_main_combi_province_warpstone_desert;
					province wh3_main_combi_province_wastelands_of_jinshen;
					province wh3_main_combi_province_celestial_riverlands;
					province wh3_main_combi_province_celestial_lake;
					province wh3_main_combi_province_jade_river_delta;
					province wh3_main_combi_province_nongchang_basin;
					province wh3_main_combi_province_mount_li;
					province wh3_main_combi_province_broken_lands_of_tian_li;
					province wh3_main_combi_province_the_great_canal;
					province wh3_main_combi_province_serpent_estuary;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_3_year_of_the_rat;
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
