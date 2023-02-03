local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ogr_skr_1_pilgrim_maw_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_skr_1_pilgrim_maw_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_ogr_the_maw_that_walks_0;
					type SCRIPTED;
					script_key vco_ogr_the_maw_that_walks;
				}

				objective
				{
					type ACHIEVE_CHARACTER_RANK;
					total 1;
					total2 40;
					start_pos_character 1627781468;
					include_generals;
				}

				objective
				{
					type CAPTURE_REGIONS;

					region wh3_main_chaos_region_yhetee_peak;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ogr_skr_1_pilgrim_maw_roc;
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
			victory_type vco_victory_type_ogr_skr_2_age_of_ogres_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_skr_2_age_of_ogres_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_empire;
					faction wh_main_emp_middenland;
					faction wh_main_emp_marienburg;

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
						bundle_key vco_victory_payload_ogr_skr_2_age_of_ogres_roc;
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
			victory_type vco_victory_type_ogr_skr_3_hunger_power_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_skr_3_hunger_power_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_emp_kar_3_karl_uniter_1;
					type CONTROL_N_REGIONS_FROM;
					total 3;

					region wh3_main_chaos_region_castle_drakenhof;
					region wh3_main_chaos_region_karak_kadrin;
					region wh3_main_chaos_region_zhufbar;
					region wh3_main_chaos_region_kislev;
					region wh3_main_chaos_region_praag;
					region wh3_main_chaos_region_erengrad;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_main_ogr_disciples_of_the_maw;

                    province wh3_main_chaos_province_southern_grey_mountains;
					building_level wh3_main_special_gorger_haunt;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ogr_skr_3_hunger_power;
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
