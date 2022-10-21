local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_tmb_ark_1_thy_kingdom_come;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tmb_ark_1_thy_kingdom_come;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{

					type DESTROY_FACTION;

					faction wh2_dlc09_tmb_khemri;

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
						bundle_key vco_victory_payload_tmb_ark_1_thy_kingdom_come;
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
			victory_type vco_victory_type_tmb_ark_2_born_to_serve;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tmb_ark_2_born_to_serve;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_tmb_ark_2_born_to_serve_region_overwrite;
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_the_galleons_graveyard;
					region wh3_main_combi_region_the_awakening;
					region wh3_main_combi_region_lahmia;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_silver_pinnacle;
					region wh3_main_combi_region_blackstone_post;
					region wh3_main_combi_region_the_haunted_forest;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tmb_ark_2_born_to_serve;
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
			victory_type vco_victory_type_tmb_ark_3_faithful_servant;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tmb_ark_3_faithful_servant;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 3;

					region wh3_main_combi_region_black_tower_of_arkhan;
					region wh3_main_combi_region_black_pyramid_of_nagash;
					region wh3_main_combi_region_nagashizzar;
				}

				objective
				{
					override_text mission_text_text_vco_common_nagash_books_collected_1;
					type SCRIPTED;
					script_key vco_tmb_ark_nagash_books;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tmb_ark_3_faithful_servant;
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
