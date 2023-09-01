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
					override_text mission_text_text_wh3_dlc24_victory_complete_astromantic_relays_north_roc;
					type SCRIPTED;
					script_key empower_compass_north;
				}

				objective
				{
					override_text mission_text_text_wh3_dlc24_victory_complete_astromantic_relays_east_roc;
					type SCRIPTED;
					script_key empower_compass_east;
				}

				objective
				{
					override_text mission_text_text_wh3_dlc24_victory_complete_astromantic_relays_south_roc;
					type SCRIPTED;
					script_key empower_compass_south;
				}

				objective
				{
					override_text mission_text_text_wh3_dlc24_victory_complete_astromantic_relays_west_roc;
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
					total 8;

					province wh3_main_chaos_province_gunpowder_road;
					province wh3_main_chaos_province_lands_of_stone_and_steel;
					province wh3_main_chaos_province_imperial_road;
					province wh3_main_chaos_province_forests_of_the_moon;
					province wh3_main_chaos_province_celestial_riverlands;
					province wh3_main_chaos_province_broken_lands_of_tian_li;
					province wh3_main_chaos_province_wastelands_of_jinshen;
					province wh3_main_chaos_province_warpstone_desert;
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

					province wh3_main_chaos_province_reikland;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_chaos_province_river_urskoy;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_chaos_province_sylvania;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_chaos_province_the_plain_of_zharr;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_chaos_province_mountains_of_mourn;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_chaos_province_peak_pass;
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
