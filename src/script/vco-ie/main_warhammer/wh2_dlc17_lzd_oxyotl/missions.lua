local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_lzd_hex_1_solar_city;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_lzd_hex_1_solar_city;
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
					override_text mission_text_text_vco_cth_the_northern_expedition_obfuscate;
					type CONTROL_N_REGIONS_FROM;
					total 7;

					region wh3_main_combi_region_red_fortress;
					region wh3_main_combi_region_bloodwind_keep;
					region wh3_main_combi_region_fortress_of_eyes;
					region wh3_main_combi_region_zanbaijin;
					region wh3_main_combi_region_the_writhing_fortress;
					region wh3_main_combi_region_the_howling_citadel;
					region wh3_main_combi_region_the_crystal_spires;
					region wh3_main_combi_region_black_rock;
					region wh3_main_combi_region_the_twisted_towers;
					region wh3_main_combi_region_fortress_of_the_damned;
					region wh3_main_combi_region_the_frozen_city;
					region wh3_main_combi_region_the_palace_of_ruin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_lzd_hex_1_solar_city;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_lzd_hex_1_unity_of_spirit;
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
			victory_type vco_victory_type_lzd_hex_2_begone_thot;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_lzd_hex_1_begone_thot;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_cult_of_pleasure;
					faction wh2_dlc09_tmb_exiles_of_nehek;
					faction wh2_dlc17_bst_taurox;
					faction wh2_dlc11_cst_the_drowned;
					faction wh3_dlc20_chs_valkia;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_lzd_hex_2_begone_thot;
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
			victory_type vco_victory_type_lzd_hex_3_purging_warmbloods;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_lzd_hex_3_purging_warmbloods;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc17_bst_taurox;

					confederation_valid;
				}

				objective
				{
					type COMPLETE_N_MISSIONS_OF_CATEGORY;
					event_category Chaos_Map_Hard;
					total 10;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh2_dlc17_qb_bst_final_battle_taurox;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_lzd_hex_3_purging_warmbloods;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_lobotomised_warmbloods;
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
