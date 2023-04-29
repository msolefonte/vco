local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chd_zha_1_storms_end;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_zha_1_storms_end;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_cth_the_northern_provinces;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_wei_jin;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_dlc23_chd_zhatan;

                    province wh3_main_combi_province_gunpowder_road;
					building_level wh3_dlc23_special_nan_gau_repurposed_forges_chd;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_gro_2_high_elf_decision_1;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_combi_region_po_mei;
					region wh3_main_combi_region_kunlan;
					region wh3_main_combi_region_shang_yang;
					region wh3_main_combi_region_haichai;
					region wh3_main_combi_region_beichai;
					region wh3_main_combi_region_zhanshi;
					region wh3_main_combi_region_nonchang;
					region wh3_main_combi_region_shi_long;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_zha_1_storms_end;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_talisman_storm_dragons_heart;
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
			victory_type vco_victory_type_chd_zha_2_the_harrowing;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_zha_2_the_harrowing;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_chd_zha_2_the_harrowing_obfuscate;
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_red_fortress;
					region wh3_main_combi_region_bloodwind_keep;
					region wh3_main_combi_region_fortress_of_eyes;
					region wh3_main_combi_region_zanbaijin;
					region wh3_main_combi_region_the_writhing_fortress;
					region wh3_main_combi_region_the_howling_citadel;
					region wh3_main_combi_region_the_crystal_spires;
					region wh3_main_combi_region_karak_dum;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_zha_2_the_harrowing;
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
			victory_type vco_victory_type_chd_zha_3_hashuts_ascent;
			key wh_main_short_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_zha_3_hashuts_ascent;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CAPTURE_REGIONS;

					region wh3_main_combi_region_fire_mouth;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 7;

					province wh3_main_combi_province_gash_kadrak;
					province wh3_main_combi_province_path_to_the_east;
					province wh3_main_combi_province_ancient_giant_lands;
					province wh3_main_combi_province_bone_road;
					province wh3_main_combi_province_mountains_of_mourn;
					province wh3_main_combi_province_ivory_road;
					province wh3_main_combi_province_gnoblar_country;
				}

				objective
				{
					override_text mission_text_text_vco_chd_zha_3_hashuts_ascent_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_grn_greenskins;

					confederation_valid;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_combi_province_black_blood_pass;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_combi_region_zharr_naggrund;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_zha_3_hashuts_ascent;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_chd_zha_3_hashuts_ascent_1;
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
