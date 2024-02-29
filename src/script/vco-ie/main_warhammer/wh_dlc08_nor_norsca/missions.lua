local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_nor_wul_1_ragnarok;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nor_wul_1_ragnarok;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_mis_activity_attain_chaos_god_favour;
					type SCRIPTED;
					script_key vco_nor_wul_chaos_allegiance;
				}

				objective
				{
					override_text mission_text_text_mis_activity_defeat_chaos_gods_challengers;
					type SCRIPTED;
					script_key vco_defeat_chaos_gods_challengers_worl;
				}

				objective
				{
					override_text mission_text_text_vco_nor_wul_3_monster_hunt_0;
					type SCRIPTED;
					script_key vco_nor_wul_monster_hunts;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_1_ragnarok_2;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_3_monster_hunt;
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
			victory_type vco_victory_type_nor_wul_2_the_world_walker;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nor_wul_2_the_world_walker;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_nor_wul_2_the_world_walker_override;
					type CONTROL_N_REGIONS_FROM;
					total 10;

					region wh3_main_combi_region_the_oak_of_ages;
					region wh3_main_combi_region_couronne;
					region wh3_main_combi_region_miragliano;
					region wh3_main_combi_region_karaz_a_karak;
					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_black_crag;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_lothern;
					region wh3_main_combi_region_hexoatl;
					region wh3_main_combi_region_skavenblight;
					region wh3_main_combi_region_khemri;
					region wh3_main_combi_region_the_awakening;
					region wh3_main_combi_region_zharr_naggrund;
					region wh3_main_combi_region_wei_jin;
					region wh3_main_combi_region_great_hall_of_greasus;
				}

				objective
				{
					override_text mission_text_text_vco_nor_wul_3_wheres_my_palico;
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_skeggi;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_2_the_world_walker;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_3_wheres_my_palico;
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
			victory_type vco_victory_type_nor_wul_3_wheres_my_palico;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{

				objective
				{
					override_text mission_text_text_vco_nor_wul_3_wheres_my_palico_1;
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

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_1_ragnarok_1;
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
