local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_hef_ala_1_hope_springs_eternal;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_ala_1_hope_springs_eternal;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 11;

					province wh3_main_combi_province_caledor;
					province wh3_main_combi_province_tiranoc;
					province wh3_main_combi_province_nagarythe;
					province wh3_main_combi_province_chrace;
					province wh3_main_combi_province_cothique;
					province wh3_main_combi_province_northern_yvresse;
					province wh3_main_combi_province_southern_yvresse;
					province wh3_main_combi_province_eataine;
					province wh3_main_combi_province_ellyrion;
					province wh3_main_combi_province_avelorn;
					province wh3_main_combi_province_saphery;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_hef_avelorn;

                    province wh3_main_combi_province_avelorn;
					building_level wh2_main_special_everqueen_court_hef;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle vco_alarielle_battle_crones_folly;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_ala_1_hope_springs_eternal;
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
			victory_type vco_victory_type_hef_ala_2_mortal_worlds_torment;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_ala_2_mortal_worlds_torment;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_har_ganeth;
					region wh3_main_combi_region_konquata;
					region wh3_main_combi_region_mousillon;
					region wh3_main_combi_region_skeggi;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_har_ganeth;
					faction wh3_main_chs_shadow_legion;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_ala_2_mortal_worlds_torment;
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
			victory_type vco_victory_type_hef_ala_3_oakhearts_plea;
			key wh_main_short_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_ala_3_oakhearts_plea;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_combi_region_the_witchwood;
					region wh3_main_combi_region_the_sacred_pools;
					region wh3_main_combi_region_oreons_camp;
					region wh3_main_combi_region_laurelorn_forest;
					region wh3_main_combi_region_gryphon_wood;
					region wh3_main_combi_region_forest_of_gloom;
					region wh3_main_combi_region_the_haunted_forest;
					region wh3_main_combi_region_jungles_of_chian;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_ala_3_oakhearts_plea;
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
