local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_skv_ric_1_nightmare_drakenmoor;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_ric_1_nightmare_drakenmoor;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc09_skv_clan_rictus;

                    province wh3_main_combi_province_the_plain_of_zharr;
					building_level wh3_dlc23_special_great_temple_of_hashut_other;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc09_skv_clan_rictus;

                    province wh3_main_combi_province_the_wolf_lands;
					building_level vco_landmark_tretch_tower_gorgoth;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc09_skv_clan_rictus;

                    province wh3_main_combi_province_the_plain_of_bones;
					building_level wh2_dlc15_special_fortress_of_vorag_tower_of_the_bloodytooth;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle vco_tretch_battle_warpstone_meteor;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_ric_1_nightmare_drakenmoor;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_skv_ric_1_nightmare_drakenmoor_1;
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
			victory_type vco_victory_type_skv_ric_2_ascension;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_ric_2_ascension;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 6;

					province wh3_main_combi_province_the_silver_road;
					province wh3_main_combi_province_deadrock_gap;
					province wh3_main_combi_province_rib_peaks;
					province wh3_main_combi_province_black_water;
					province wh3_main_combi_province_peak_pass;
					province wh3_main_combi_province_northern_worlds_edge_mountains;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_dwarfs;
					faction wh_main_dwf_karak_kadrin;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_ric_2_ascension;
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
			victory_type vco_victory_type_skv_ric_3_fozzriks_flying_fastness;
			key vco_route_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{

				objective
				{
					override_text mission_text_text_vco_skv_ric_3_fozzriks_flying_fastness;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc09_skv_clan_rictus;

                    province wh3_main_combi_province_marshes_of_madness;
					building_level vco_landmark_fozzriks_flying_fastness;
				}

				objective
				{
					override_text mission_text_text_vco_skv_ric_3_fozzriks_flying_fastness_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_skv_clan_mors;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{

					effect_bundle
					{
						bundle_key vco_victory_payload_skv_ric_3_clan_mors_defeated;
						turns 0;
					}

                    effect_bundle
					{
						bundle_key vco_victory_payload_skv_ric_3_fozzriks_flying_fastness;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_fozzrik_summoner;
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
