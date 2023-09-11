local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_cth_tnp_1_in_harmony;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_grand_cathay;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_cth_mia_1_north_wind_at_least_6;
					type CONTROL_N_REGIONS_FROM;
					total 6;

					region wh3_main_combi_region_zharr_naggrund;
					region wh3_main_combi_region_great_hall_of_greasus;
					region wh3_main_combi_region_nagashizzar;
					region wh3_main_combi_region_black_crag;
					region wh3_main_combi_region_khemri;
					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_konquata;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_skavenblight;
					region wh3_main_combi_region_hell_pit;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_in_harmony;
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
			victory_type vco_victory_type_cth_tnp_2_cool_and_aloof;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_great_bastion;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 3;
				
					region wh3_main_combi_region_snake_gate;
					region wh3_main_combi_region_turtle_gate;
					region wh3_main_combi_region_dragon_gate;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_main_cth_the_northern_provinces;

                    province wh3_main_combi_province_gunpowder_road;
					building_level wh3_main_special_the_ninth_wall;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc20_chs_vilitch;
					faction wh2_dlc11_def_the_blessed_dread;
					faction wh2_main_skv_clan_eshin;
					faction wh3_dlc23_chd_zhatan;
					faction wh3_dlc20_chs_kholek;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_cool_and_aloof;
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
			victory_type vco_victory_type_cth_tnp_3_the_northern_expedition;
			key wh_main_short_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_the_northern_expedition;
					type SCRIPTED;
					script_key vco_dummy;
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
						bundle_key vco_victory_payload_cth_kat_3_sister_rescued;
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
