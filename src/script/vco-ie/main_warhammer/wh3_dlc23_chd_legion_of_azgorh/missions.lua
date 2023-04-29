local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chd_dra_1_show_of_strength;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_dra_1_show_of_strength;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 7;

					region wh3_main_combi_region_ruins_end;
					region wh3_main_combi_region_pigbarter;
					region wh3_main_combi_region_black_fortress;
					region wh3_main_combi_region_the_sentinels;
					region wh3_main_combi_region_the_daemons_stump;
					region wh3_dlc23_combi_region_gash_kadrak;
					region wh3_main_combi_region_zharr_naggrund;
					region wh3_main_combi_region_the_falls_of_doom;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_dra_1_show_of_strength;
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
			victory_type vco_victory_type_chd_dra_2_trial_by_fire;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_dra_2_trial_by_fire;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_combi_region_the_haunted_forest;
					region wh3_main_combi_region_dragon_fang_mount;
					region wh3_main_combi_region_great_hall_of_greasus;
				}

				objective
				{
					override_text mission_text_text_vco_chd_dra_2_trial_by_fire_1;
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
					region wh3_main_combi_region_bamboo_crossing;
					region wh3_main_combi_region_jungles_of_chian;
					region wh3_main_combi_region_tower_of_ashung;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_dra_2_trial_by_fire;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_armour_dragonscale_cloak;
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
			victory_type vco_victory_type_chd_dra_3_the_last_days;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_dra_3_the_last_days;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_dwarfs;

					confederation_valid;
				}

				objective
				{
					type CAPTURE_REGIONS;

					region wh3_main_combi_region_karaz_a_karak;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_dra_3_the_last_days;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_cracked_rune_azamar;
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
