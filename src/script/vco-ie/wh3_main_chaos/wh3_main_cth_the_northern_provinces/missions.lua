local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_cth_tnp_1_in_harmony_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_grand_cathay;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_chaos_province_gunpowder_road;
					province wh3_main_chaos_province_lands_of_stone_and_steel;
					province wh3_main_chaos_province_imperial_road;
					province wh3_main_chaos_province_forests_of_the_moon;
					province wh3_main_chaos_province_celestial_riverlands;
					province wh3_main_chaos_province_broken_lands_of_tian_li;
					province wh3_main_chaos_province_wastelands_of_jinshen;
					province wh3_main_chaos_province_warpstone_desert;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_in_harmony;
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
			victory_type vco_victory_type_cth_tnp_2_cool_and_aloof_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_great_bastion;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 3;
				
					region wh3_main_chaos_region_snake_gate;
					region wh3_main_chaos_region_dragon_gate;
					region wh3_main_chaos_region_turtle_gate;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_main_cth_the_northern_provinces;

                    province wh3_main_chaos_province_gunpowder_road;
					building_level wh3_main_special_the_ninth_wall;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc20_chs_azazel;
					faction wh3_main_tze_oracles_of_tzeentch;
					faction wh2_main_skv_clan_eshin;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_cool_and_aloof;
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
			victory_type vco_victory_type_cth_tnp_3_the_northern_expedition_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_the_northern_expedition_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_cth_the_northern_expedition_obfuscate_roc;
					type CONTROL_N_REGIONS_FROM;
					total 7;

					region wh3_main_chaos_region_red_fortress;
					region wh3_main_chaos_region_the_volary;
					region wh3_main_chaos_region_zerulous;
					region wh3_main_chaos_region_city_of_splinters;
					region wh3_main_chaos_region_the_gallows_tree;
					region wh3_main_chaos_region_the_writhing_fortress;
					region wh3_main_chaos_region_the_sunken_sewers;
					region wh3_main_chaos_region_blood_haven;
					region wh3_main_chaos_region_the_crystal_spires;
					region wh3_main_chaos_region_black_rock;
					region wh3_main_chaos_region_infernius;
					region wh3_main_chaos_region_the_silvered_tower_of_sorcerers;
					region wh3_main_chaos_region_the_shifting_monolith;
					region wh3_main_chaos_region_the_palace_of_ruin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_the_northern_expedition;
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
