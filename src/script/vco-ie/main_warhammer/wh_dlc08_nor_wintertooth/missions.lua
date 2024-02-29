local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_nor_thr_1_ice_age_cometh;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nor_thr_1_ice_age_cometh;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_mis_activity_attain_chaos_god_favour;
					type SCRIPTED;
					script_key vco_nor_throgg_chaos_allegiance;
				}

				objective
				{
					override_text mission_text_text_mis_activity_defeat_chaos_gods_challengers;
					type SCRIPTED;
					script_key vco_defeat_chaos_gods_challengers_wint;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_dlc08_nor_wintertooth;

                    province wh3_main_combi_province_gianthome_mountains;
					building_level wh_main_nor_erengrad_unique;
				}

				payload
				{

					effect_bundle
					{
						bundle_key vco_victory_payload_nor_thr_1_ice_age_cometh;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_haurg_frostmaw;
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
			victory_type vco_victory_type_nor_thr_2_age_of_the_beast;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nor_thr_2_age_of_the_beast;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_great_orthodoxy;
					faction wh3_main_ksl_the_ice_court;
					faction wh_main_dwf_karak_kadrin;
					faction wh2_dlc13_emp_golden_order;
					faction wh_main_emp_empire;
					faction wh_main_emp_middenland;

					confederation_valid;
				}

				objective
				{
					type EARN_X_AMOUNT_FROM_RAIDING;
					total 7500;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_dlc08_nor_wintertooth;

                    province wh3_main_combi_province_the_cursed_city;
					building_level vco_landmark_throgg_ducal_throne;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_thr_2_age_of_the_beast;
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
			victory_type vco_victory_type_nor_thr_3_troll_king;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{

				objective
				{
					override_text mission_text_text_vco_nor_thr_3_troll_king;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_dlc08_nor_wintertooth;

                    province wh3_main_combi_province_albion;
					building_level vco_landmark_throgg_chaos_troll_colony;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_dlc08_nor_wintertooth;

                    province wh3_main_combi_province_marches_of_couronne;
					building_level vco_landmark_throgg_caves_of_couronne;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_dlc08_nor_wintertooth;

                    province wh3_main_combi_province_reikland;
					building_level vco_landmark_throgg_river_reik_trolls;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_dlc08_nor_wintertooth;

                    province wh3_main_combi_province_the_silver_road;
					building_level vco_landmark_throgg_halls_winter_king;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_thr_3_troll_king;
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
