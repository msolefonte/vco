local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_cth_yua_1_the_jade_compass;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_yua_1_the_jade_compass;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh3_dlc24_cth_the_celestial_court;
					total 4;
				
					building_level wh3_dlc24_cth_special_jade_dragon_astromantic_relay;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh3_dlc24_cth_yuan_bo_compass;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_yua_1_the_jade_compass;
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
			victory_type vco_victory_type_cth_yua_2_harmony_through_unity;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_yua_2_harmony_through_unity;
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
						bundle_key vco_victory_payload_cth_yua_2_harmony_through_unity;
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
			victory_type vco_victory_type_cth_yua_3_the_spymaster;
			key wh_main_short_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_yua_3_the_spymaster;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_combi_region_itza;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_combi_region_naggarond;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_combi_region_lothern;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_combi_region_sartosa;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_combi_region_khemri;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_combi_region_couronne;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_yua_3_the_spymaster;
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
