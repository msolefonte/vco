local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_vmp_hel_1_necrotic_harvest;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_hel_1_necrotic_harvest;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_nur_poxmakers_of_nurgle;
					faction wh2_dlc15_hef_imrik;

					confederation_valid;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1117066715;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_main_vmp_caravan_of_blue_roses;

                    province wh3_main_combi_province_broken_teeth;
					building_level wh2_dlc14_special_nagashizzar_vmp;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_hel_1_necrotic_harvest;
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
			victory_type vco_victory_type_vmp_hel_2_killing_fields_cathay;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_hel_2_killing_fields_cathay;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_cth_the_western_provinces;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_gro_2_high_elf_decision_1;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_combi_region_hanyu_port;
					region wh3_main_combi_region_shi_long;
					region wh3_main_combi_region_nonchang;
					region wh3_main_combi_region_shi_wu;
					region wh3_main_combi_region_fu_hung;
					region wh3_main_combi_region_jungles_of_chian;
					region wh3_main_combi_region_tower_of_ashung;
				}

				objective
				{
					type CAPTURE_X_BATTLE_CAPTIVES;

					total 5000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_hel_2_killing_fields_cathay;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_dragonfire_staff;
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
			victory_type vco_victory_type_vmp_hel_3_the_summoning;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_hel_3_the_summoning;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_vmp_hel_2_the_summoning_1;
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_combi_region_great_hall_of_greasus;
					region wh3_main_combi_region_the_maw_gate;
					region wh3_main_combi_region_karak_azorn;
					region wh3_main_combi_region_fire_mouth;
				}

				objective
				{
					override_text mission_text_text_vco_vmp_hel_2_the_summoning_2;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_combi_region_black_fortress;
					region wh3_main_combi_region_crookback_mountain;
					region wh3_main_combi_region_tower_of_gorgoth;
					region wh3_main_combi_region_zharr_naggrund;
				}

				objective
				{
					type ASSASSINATE_X_CHARACTERS;

					total 25;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_hel_3_the_summoning;
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
