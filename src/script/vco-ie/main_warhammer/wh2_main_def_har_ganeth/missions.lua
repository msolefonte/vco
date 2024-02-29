local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_def_gan_1_sacrifice_slaughter;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_gan_1_sacrifice_slaughter;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_combi_province_the_road_of_skulls;
					province wh3_dlc20_combi_province_frigid_wasteland;
					province wh3_main_combi_province_deadwood;
					province wh3_main_combi_province_the_shard_lands;
					province wh3_main_combi_province_northern_wastes;
					province wh3_main_combi_province_the_cold_mires;
					province wh3_main_combi_province_the_eternal_lagoon;
					province wh3_main_combi_province_the_noisome_tumour;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_1_sacrifice_slaughter_1;
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
			victory_type vco_victory_type_def_gan_2_suffer_not_another_queen;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_def_gan_2_suffer_not_another_queen;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_nagarythe;
					faction wh2_dlc11_cst_the_drowned;
					faction wh2_dlc16_wef_sisters_of_twilight;
					faction wh3_dlc24_ksl_daughters_of_the_forest;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_def_gan_2_suffer_not_another_queen_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_cult_of_pleasure;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_2_suffer_not_another_queen_1;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_dark_convent_defector;
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
			victory_type vco_victory_type_def_gan_3_eternity_awaits;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_def_gan_3_eternity_awaits;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_avelorn;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_ogr_gre_3_at_least_5_settlements;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_combi_region_tor_anlec;
					region wh3_main_combi_region_tor_anroc;
					region wh3_main_combi_region_vauls_anvil_ulthuan;
					region wh3_main_combi_region_lothern;
					region wh3_main_combi_region_tor_elyr;
					region wh3_main_combi_region_gaean_vale;
					region wh3_main_combi_region_white_tower_of_hoeth;
					region wh3_main_combi_region_elessaeli;
					region wh3_main_combi_region_tor_yvresse;
					region wh3_main_combi_region_tor_koruali;
					region wh3_main_combi_region_tor_achare;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_def_har_ganeth;

                    province wh3_main_combi_province_nagarythe;
					building_level wh2_main_special_shrine_of_khaine_def_1;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle vco_custom_quest_hellebron_alarielle;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_def_gan_3_eternity_awaits_1;
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
