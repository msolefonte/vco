local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_hef_imr_1_eastern_ambitions;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_imr_1_eastern_ambitions;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RECRUIT_UNIT;

					unit wh2_dlc15_hef_mon_forest_dragon_imrik;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_combi_region_the_haunted_forest;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_nur_poxmakers_of_nurgle;
					faction wh3_main_vmp_caravan_of_blue_roses;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_hef_imr_1_eastern_ambitions_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type MOVE_TO_PROVINCE;

					province wh3_main_combi_province_celestial_riverlands;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 2;

					province wh3_main_combi_province_ivory_road;
					province wh3_main_combi_province_the_maw;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_imr_1_eastern_ambitions;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_hef_imr_1_eastern_ambitions_1;
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
			victory_type vco_victory_type_hef_imr_2_vengeance_dark_lands;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_imr_2_vengeance_dark_lands;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RECRUIT_UNIT;

					unit wh2_dlc15_hef_mon_moon_dragon_imrik;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 4;

					province wh3_main_combi_province_the_howling_wastes;
					province wh3_main_combi_province_the_desolation_of_azgorh;
					province wh3_main_combi_province_the_wolf_lands;
					province wh3_main_combi_province_the_plain_of_zharr;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc15_hef_imrik;

                    province wh3_main_combi_province_the_desolation_of_azgorh;
					building_level wh2_dlc15_special_graves_of_the_dragons_2_hef;
				}

				objective
				{
					override_text mission_text_text_vco_hef_imr_2_vengeance_dark_lands_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RECRUIT_UNIT;

					unit wh2_dlc15_hef_mon_black_dragon_imrik;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_silver_pinnacle;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_vmp_lahmian_sisterhood;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_imr_2_vengeance_dark_lands;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_hef_imr_2_vengeance_dark_lands_1;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_black_dragon_egg;
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
			victory_type vco_victory_type_hef_imr_3_gold_glory;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_imr_3_gold_glory;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RECRUIT_UNIT;

					unit wh2_dlc15_hef_mon_star_dragon_imrik;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_dlc15_hef_imrik;

                    province wh3_main_combi_province_caledor;
					building_level wh2_main_special_hall_of_dragons;
				}

				objective
				{
					override_text mission_text_text_vco_hef_imr_3_gold_glory_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RECRUIT_UNIT;

					unit wh2_dlc15_hef_mon_sun_dragon_imrik;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_skv_clan_mors;
					faction wh3_main_kho_exiles_of_khorne;
					faction wh2_dlc17_bst_malagor;
					faction wh_main_grn_orcs_of_the_bloody_hand;

					confederation_valid;
				}
 
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_imr_3_gold_glory;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_hef_imr_3_gold_glory_1;
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
