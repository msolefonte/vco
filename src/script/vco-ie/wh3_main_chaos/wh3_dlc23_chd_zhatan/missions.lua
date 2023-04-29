local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chd_zha_1_storms_end_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_zha_1_storms_end_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type MAINTAIN_N_ALLIANCES;

					total 5;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_chaos_region_palace_of_princes;
					region wh3_main_chaos_region_infernius;
					region wh3_main_chaos_region_the_sunken_sewers;
					region wh3_main_chaos_region_the_volary;
					region wh3_main_chaos_region_doomkeep;
					region wh3_main_chaos_region_frozen_landing;
					region wh3_dlc20_chaos_region_losteriksons_landing;
					region wh3_main_chaos_region_altar_of_the_crimson_harvest;
					region wh3_main_chaos_region_red_fortress;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_zha_1_storms_end_roc;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_talisman_eight_pointed_star;
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
			victory_type vco_victory_type_chd_zha_2_the_harrowing_roc;
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
					override_text mission_text_text_vco_chd_zha_2_the_harrowing_obfuscate_roc;
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_chaos_region_the_fortress_of_vorag;
					region wh3_main_chaos_region_crookback_mountain;
					region wh3_main_chaos_region_the_silver_pinnacle;
					region wh3_main_chaos_region_zhufbar;
					region wh3_main_chaos_region_castle_drakenhof;
					region wh3_main_chaos_region_nuln;
					region wh3_main_chaos_region_altdorf;
					region wh3_main_chaos_region_karak_ziflin;
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
			victory_type vco_victory_type_chd_zha_3_hashuts_ascent_roc;
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

					region wh3_main_chaos_region_fire_mouth;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 6;

					province wh3_main_chaos_province_path_to_the_east;
					province wh3_main_chaos_province_bone_road;
					province wh3_main_chaos_province_ancient_giant_lands;
					province wh3_main_chaos_province_mountains_of_mourn;
					province wh3_main_chaos_province_the_great_maw;
					province wh3_main_chaos_province_ivory_road;
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

					province wh3_main_chaos_province_black_blood_pass;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_chaos_region_zharr_naggrund;
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
