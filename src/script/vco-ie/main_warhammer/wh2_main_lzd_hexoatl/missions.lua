local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_lzd_hex_1_solar_city;
			key wh_main_short_victory;
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
					override_text mission_text_text_vco_chs_aza_3_sigmars_folly_1;
					type CONTROL_N_REGIONS_FROM;
					total 8;

					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_the_witchwood;
					region wh3_main_combi_region_lothern;
					region wh3_main_combi_region_gaean_vale;
					region wh3_main_combi_region_skavenblight;
					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_couronne;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_khemri;
					region wh3_main_combi_region_black_crag;
					region wh3_main_combi_region_sartosa;
					region wh3_main_combi_region_karaz_a_karak;
					region wh3_main_combi_region_zharr_naggrund;
					region wh3_main_combi_region_fire_mouth;
					region wh3_main_combi_region_wei_jin;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh2_main_lzd_hexoatl;
					total 5;
				
					building_level vco_landmark_mazdamundi_geomantic_nexus;
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
			key wh_main_short_victory;
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
			key wh_main_short_victory;
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

					faction wh2_dlc13_emp_the_huntmarshals_expedition;
					faction wh_main_brt_bordeleaux;
					faction wh2_dlc11_cst_vampire_coast;
					faction wh2_twa03_def_rakarth;

					confederation_valid;
					vassalization_valid;

				}

				objective
				{
					override_text mission_text_text_vco_lzd_hex_3_purging_warmbloods_2;
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_itza;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_lzd_hex_3_purging_warmbloods;
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
