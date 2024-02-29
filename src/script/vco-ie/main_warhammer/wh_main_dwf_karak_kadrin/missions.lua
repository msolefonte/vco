local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_dwf_ung_1_last_slayer_king;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_ung_1_last_slayer_king;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 5;

					province wh3_main_combi_province_northern_worlds_edge_mountains;
					province wh3_main_combi_province_peak_pass;
					province wh3_main_combi_province_rib_peaks;
					province wh3_main_combi_province_black_water;
					province wh3_main_combi_province_deadrock_gap;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_main_dwf_karak_kadrin;

                    province wh3_main_combi_province_peak_pass;
					building_level wh_main_special_great_slayer_shrine;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_main_dwf_karak_kadrin;

                    province wh3_main_combi_province_deadrock_gap;
					building_level wh_main_special_brightstone_mine;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_main_dwf_karak_kadrin;

                    province wh3_main_combi_province_black_water;
					building_level wh2_main_special_brewery;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc15_grn_bonerattlaz;
					faction wh_main_grn_crooked_moon;
					faction wh_main_vmp_schwartzhafen;
					faction wh3_main_vmp_lahmian_sisterhood;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_ung_1_last_slayer_king;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_war_mourner;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_axes_of_kadrin;
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
			victory_type vco_victory_type_dwf_ung_2_wayward_sons;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_ung_2_wayward_sons;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 7;

					province wh3_main_combi_province_zorn_uzkul;
					province wh3_main_combi_province_the_plain_of_zharr;
					province wh3_main_combi_province_the_blasted_wastes;
					province wh3_main_combi_province_the_wolf_lands;
					province wh3_main_combi_province_the_howling_wastes;
					province wh3_main_combi_province_the_desolation_of_azgorh;
					province wh3_main_combi_province_the_plain_of_bones;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc23_chd_astragoth;
					faction wh3_dlc23_chd_legion_of_azgorh;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_ung_2_wayward_sons;
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
			victory_type vco_victory_type_dwf_ung_3_reunification;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_dwf_ung_3_reunification;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_main_dwf_karak_kadrin;

                    province wh3_main_combi_province_gianthome_mountains;
					building_level wh2_main_special_silver_hall;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc16_wef_drycha;
					faction wh2_main_skv_clan_moulder;
					faction wh_dlc08_nor_wintertooth;
					faction wh3_dlc20_chs_azazel;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_dwf_ung_3_reunification;
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
	]]
};

return missions;
