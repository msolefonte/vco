local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_alternative_1_iron_into_gold;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type HAVE_AT_LEAST_X_MONEY;
					total 500048;
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

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cth_iron_into_gold;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_alternative_2_in_harmony;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_grand_cathay;
					type CONTROL_N_PROVINCES_INCLUDING;
					total 15;

					province wh3_main_combi_province_gunpowder_road;
					province wh3_main_combi_province_lands_of_stone_and_steel;
					province wh3_main_combi_province_imperial_road;
					province wh3_main_combi_province_plains_of_xen;
					province wh3_main_combi_province_forests_of_the_moon;
					province wh3_main_combi_province_warpstone_desert;
					province wh3_main_combi_province_wastelands_of_jinshen;
					province wh3_main_combi_province_celestial_riverlands;
					province wh3_main_combi_province_celestial_lake;
					province wh3_main_combi_province_jade_river_delta;
					province wh3_main_combi_province_nongchang_basin;
					province wh3_main_combi_province_mount_li;
					province wh3_main_combi_province_broken_lands_of_tian_li;
					province wh3_main_combi_province_the_great_canal;
					province wh3_main_combi_province_serpent_estuary;
				}

				objective
				{
					override_text mission_text_text_vco_cth_unify_great_bastion;
					type CONTROL_N_PROVINCES_INCLUDING;
					total 3;

					province wh3_main_combi_province_central_great_bastion;
					province wh3_main_combi_province_eastern_great_bastion;
					province wh3_main_combi_province_western_great_bastion;
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
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_alternative_3_dont_thread_on_ming;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_ivory_road;
					type CONTROL_N_PROVINCES_INCLUDING;
					total 1;

					province wh3_main_combi_province_ivory_road;
					province wh3_main_combi_province_the_maw;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ogr_goldtooth;
					faction wh3_main_ogr_sons_of_the_mountain;
					faction wh3_main_ogr_crossed_clubs;
					faction wh3_main_ogr_lazarghs;

					faction wh3_main_vmp_caravan_of_blue_roses;

					faction wh3_main_skv_clan_treecherik;

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
						bundle_key vco_campaign_victory_dummy;
						turns 0;
					}

					game_victory;
				}
			}
		}
	]]
};

return missions;
