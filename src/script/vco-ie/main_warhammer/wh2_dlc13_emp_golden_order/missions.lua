local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_alternative_1_in_harmony;
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
						bundle_key vco_victory_payload_in_harmony;
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
			victory_type vco_victory_type_alternative_2_cool_and_aloof;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_cth_unify_great_bastion;
					type CONTROL_N_PROVINCES_INCLUDING;
					total 3;

					province wh3_main_combi_province_central_great_bastion;
					province wh3_main_combi_province_eastern_great_bastion;
					province wh3_main_combi_province_western_great_bastion;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_cth_dissenter_lords_of_jinshen;
					faction wh3_main_cth_rebel_lords_of_nan_yang;
					faction wh_dlc03_bst_jagged_horn;
					faction wh2_main_skv_clan_eshin;
					faction wh3_main_grn_dimned_sun;
					faction wh2_dlc11_def_the_blessed_dread;
					faction wh3_dlc21_cst_dead_flag_fleet;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh3_main_cth_the_northern_provinces;
					total 1;

					building_level wh3_main_special_the_ninth_wall;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_cool_and_aloof;
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
			victory_type vco_victory_type_alternative_3_the_northern_expedition;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{

				objective
				{
					override_text mission_text_text_vco_cth_the_northern_expedition;
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;

					region wh3_main_combi_region_the_writhing_fortress;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc20_chs_vilitch;
					faction wh3_dlc20_nor_yusak;
					faction wh3_main_chs_khazag;
					faction wh3_main_ogr_fleshgreeders;
					faction wh3_dlc20_chs_kholek;
					faction wh3_dlc20_nor_dolgan;
					faction wh3_main_nur_maggoth_kin;
					faction wh3_dlc20_nor_kul;
					faction wh3_main_sla_exquisite_pain;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_the_northern_expedition;
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
