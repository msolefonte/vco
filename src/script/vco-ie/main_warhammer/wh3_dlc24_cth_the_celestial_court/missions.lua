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
					override_text mission_text_text_wh3_dlc24_victory_complete_astromantic_relays_north_ie;
					type SCRIPTED;
					script_key empower_compass_north;
				}

				objective
				{
					override_text mission_text_text_wh3_dlc24_victory_complete_astromantic_relays_east_ie;
					type SCRIPTED;
					script_key empower_compass_east;
				}

				objective
				{
					override_text mission_text_text_wh3_dlc24_victory_complete_astromantic_relays_south_ie;
					type SCRIPTED;
					script_key empower_compass_south;
				}

				objective
				{
					override_text mission_text_text_wh3_dlc24_victory_complete_astromantic_relays_west_ie;
					type SCRIPTED;
					script_key empower_compass_west;
				}

				objective
				{
					override_text mission_text_text_wh3_dlc24_victory_yuan_bo_final_battle;
					type SCRIPTED;
					script_key final_battle;
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
					type MOVE_TO_PROVINCE;

					province wh3_main_combi_province_river_qurveza;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_combi_province_iron_foothills;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_combi_province_eataine;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_combi_province_pirates_current;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_combi_province_land_of_the_dead;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_combi_province_marches_of_couronne;
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
