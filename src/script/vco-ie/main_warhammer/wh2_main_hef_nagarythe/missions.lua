local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_hef_nag_1_shadows_over_naggaroth;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_nag_1_shadows_over_naggaroth;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{

					type DESTROY_FACTION;

					faction wh2_main_def_naggarond;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 6;

					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_hag_graef;
					region wh3_main_combi_region_clar_karond;
					region wh3_main_combi_region_ghrond;
					region wh3_main_combi_region_har_ganeth;
					region wh3_main_combi_region_karond_kar;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_nag_1_shadows_over_naggaroth;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_alith_destroyer;
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
			victory_type vco_victory_type_hef_nag_2_amulet_of_sunfire;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_nag_2_amulet_of_sunfire;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_hef_nag_2_amulet_of_sunfire_1;
					type CONTROL_N_REGIONS_FROM;
					total 7;

					region wh3_main_combi_region_the_twisted_glade;
					region wh3_main_combi_region_hag_hall;
					region wh3_main_combi_region_the_witchwood;
					region wh3_main_combi_region_clarak_spire;
					region wh3_main_combi_region_plain_of_dogs;
					region wh3_main_combi_region_arnheim;
					region wh3_main_combi_region_ancient_city_of_quintex;
					region wh3_main_combi_region_tyrant_peak;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_nag_2_amulet_of_sunfire;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_talisman_amulet_of_sunfire;
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
			victory_type vco_victory_type_hef_nag_3_the_eternal_war;
			key wh_main_short_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_nag_3_the_eternal_war;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_hef_nagarythe;

                    province wh3_main_combi_province_nagarythe;
					building_level wh2_main_special_anlec_citadel_hef;
				}

				objective
				{
					type ASSASSINATE_X_CHARACTERS;

					total 25;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 350221326;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 816217704;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1775671531;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 449743554;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 2017958139;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 517024909;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_nag_3_the_eternal_war;
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
