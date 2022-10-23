local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_vmp_man_1_restless_dunes;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_man_1_restless_dunes;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{

					type DESTROY_FACTION;

					faction wh2_dlc09_tmb_khemri;
					faction wh3_main_emp_cult_of_sigmar;
					faction wh2_dlc14_brt_chevaliers_de_lyonesse;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 7;

					province wh3_main_combi_province_shifting_sands;
					province wh3_main_combi_province_land_of_the_dervishes;
					province wh3_main_combi_province_the_cracked_land;
					province wh3_main_combi_province_land_of_the_dead;
					province wh3_main_combi_province_coast_of_araby;
					province wh3_main_combi_province_land_of_assassins;
					province wh3_main_combi_province_great_desert_of_araby;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_man_1_restless_dunes;
						turns 0;
					}


					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_man_1_restless_dunes_portal;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_vmp_man_2_reclaim_throne;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_man_2_reclaim_throne;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_vmp_schwartzhafen;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 2;

					province wh3_main_combi_province_northern_sylvania;
					province wh3_main_combi_province_southern_sylvania;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh_main_vmp_vampire_counts;
					total 1;

					building_level wh3_main_special_drakenhof_malevolent_museum;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_man_2_reclaim_throne;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_vmp_man_3_death_comes_for_all;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_man_3_death_comes_for_all;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 3;

					region wh3_main_combi_region_black_pyramid_of_nagash;
					region wh3_main_combi_region_nagashizzar;
					region wh3_main_combi_region_altdorf;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_empire;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_common_nagash_books_collected_0;
					type SCRIPTED;
					script_key vco_vmp_man_nagash_books;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_man_3_death_comes_for_all_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_man_3_death_comes_for_all_2;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
						turns 0;
					}

					game_victory;
				}
			}
		}
	]]
};

return missions;
