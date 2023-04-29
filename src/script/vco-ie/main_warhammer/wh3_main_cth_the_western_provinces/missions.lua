local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_cth_twp_1_iron_into_gold;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_zha_1_iron_into_gold;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_ogr_gre_1_rich_walk_0;
					type SCRIPTED;
					script_key vco_cth_wes_1_rich_walk;
				}

				objective
				{
					override_text mission_text_text_vco_cth_the_western_provinces_caravans_0;
					type SCRIPTED;
					script_key vco_cth_the_western_provinces_caravans;
				}

				objective
				{
					override_text mission_text_text_vco_cth_the_western_provinces_goods_0;
					type SCRIPTED;
					script_key vco_cth_the_western_provinces_goods;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh3_main_cth_the_western_provinces;

                    province wh3_main_combi_province_warpstone_desert;
					building_level wh3_main_special_the_great_embassy;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_iron_into_gold;
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
			victory_type vco_victory_type_cth_twp_2_warpstone_hoard;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_zha_2_warpstone_hoard;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_skavenblight;
					region wh3_main_combi_region_hell_pit;
					region wh3_main_combi_region_mordheim;
					region wh3_main_combi_region_nagashizzar;
					region wh3_main_combi_region_crookback_mountain;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_zha_2_warpstone_hoard;
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
			victory_type vco_victory_type_cth_twp_3_dont_thread_on_ming;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_ivory_road;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 4;

					province wh3_main_combi_province_gnoblar_country;
					province wh3_main_combi_province_ivory_road;
					province wh3_main_combi_province_mountains_of_mourn;
					province wh3_main_combi_province_bone_road;

				}

				objective
				{
					override_text mission_text_text_vco_cth_zha_3_black_fortress;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_vmp_caravan_of_blue_roses;
					faction wh3_dlc23_chd_legion_of_azgorh;
					faction wh3_main_nur_poxmakers_of_nurgle;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_dont_thread_on_ming;
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
