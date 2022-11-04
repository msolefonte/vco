local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_lzd_hex_1_solar_city;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
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
					total 3;

					province wh3_main_combi_province_isthmus_of_lustria;
					province wh3_main_combi_province_the_isthmus_coast;
					province wh3_main_combi_province_jungles_of_pahualaxa;
				}

				objective
				{

					type DESTROY_FACTION;

					faction wh3_dlc20_sla_keepers_of_bliss;
					faction wh2_main_nor_skeggi;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_lzd_hexoatl;
					total 2;

					building_level wh2_main_special_hexoatl_incubator;
					building_level wh2_main_special_hexoatl_stellar_pyramids;
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

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_ancient_city_of_quintex;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh2_main_lzd_hexoatl;
					total 1;

					building_level wh2_main_special_quintex_2;
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

					confederation_valid;
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
