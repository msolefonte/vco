local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chd_dra_1_show_of_strength_roc;
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

					region wh3_main_chaos_region_pigbarter;
					region wh3_main_chaos_region_black_fortress;
					region wh3_dlc23_chaos_region_flayed_rock;
					region wh3_main_chaos_region_the_daemons_stump;
					region wh3_main_chaos_region_zharr_naggrund;
					region wh3_dlc23_chaos_region_gash_kadrak;
					region wh3_main_chaos_region_the_falls_of_doom;
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
			victory_type vco_victory_type_chd_dra_2_trial_by_fire_roc;
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

					region wh3_dlc23_chaos_region_the_haunted_forest;
					region wh3_main_chaos_region_dragon_fang_mount;
					region wh3_main_chaos_region_great_hall_of_greasus;
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

					region wh3_main_chaos_region_hanyu_port;
					region wh3_main_chaos_region_village_of_the_tigermen;
					region wh3_main_chaos_region_shang_wu;
					region wh3_main_chaos_region_shang_yang;
					region wh3_main_chaos_region_zhanshi;
					region wh3_main_chaos_region_nan_gau;
					region wh3_main_chaos_region_po_mei;
					region wh3_main_chaos_region_wei_jin;
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
			victory_type vco_victory_type_chd_dra_3_the_last_days_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_dra_3_the_last_days_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_karak_kadrin;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_dlc23_chd_legion_of_azgorh;

                    province wh3_main_chaos_province_peak_pass;
					building_level wh3_dlc23_special_karak_kadrin_defaced_shrine_chd;
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
						bundle_key vco_victory_payload_chd_dra_3_the_last_days;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_wh_main_anc_weapon_axe_of_dargo;
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
