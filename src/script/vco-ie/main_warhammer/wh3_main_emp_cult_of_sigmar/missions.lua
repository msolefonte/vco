local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_emp_vol_1_restless_dunes;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_vol_1_restless_dunes;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 7;

					province wh3_main_combi_province_coast_of_araby;
					province wh3_main_combi_province_land_of_assassins;
					province wh3_main_combi_province_great_desert_of_araby;
					province wh3_main_combi_province_the_cracked_land;
					province wh3_main_combi_province_land_of_the_dervishes;
					province wh3_main_combi_province_shifting_sands;
					province wh3_main_combi_province_land_of_the_dead;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_black_pyramid_of_nagash;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_vol_1_restless_dunes;
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
			victory_type vco_victory_type_emp_vol_2_face_your_daemons;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_vol_2_face_your_daemons;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1629043394;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1649736864;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 621175995;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 720077559;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_chs_shadow_legion;

					confederation_valid;
				}

				objective
				{
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 35;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_vol_2_face_your_daemons;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_shadow_ruby;
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
			victory_type vco_victory_type_emp_vol_3_bibliophobe;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_vol_3_bibliophobe;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_common_nagash_books_collected_0;
					type SCRIPTED;
					script_key vco_wh3_main_emp_cult_of_sigmar_nagash_books;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_vol_3_bibliophobe;
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
