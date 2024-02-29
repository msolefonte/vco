local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_aza_1_sycophants_gather;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_aza_1_sycophants_gather;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_dlc08_nor_norsca;
					faction wh_dlc08_nor_wintertooth;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_combi_province_goromadny_mountains;
					province wh3_main_combi_province_gianthome_mountains;
					province wh3_main_combi_province_trollheim_mountains;
					province wh3_main_combi_province_mountains_of_hel;
					province wh3_main_combi_province_mountains_of_naglfari;
					province wh3_main_combi_province_ice_tooth_mountains;
					province wh3_main_combi_province_vanaheim_mountains;
					province wh3_main_combi_province_helspire_mountains;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_aza_1_sycophants_gather;
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
			victory_type vco_victory_type_chs_aza_2_legions_march;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_aza_2_legions_march;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_sla_nka_2_paradise_lost_spread_marks;
					type SCRIPTED;
					script_key vco_wh3_dlc20_chs_azazel_gifts_given;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_great_orthodoxy;
					faction wh3_main_ksl_the_ice_court;
					faction wh_dlc03_bst_beastmen;
					faction wh3_main_wef_laurelorn;
					faction wh2_dlc16_wef_drycha;
					faction wh_main_brt_bretonnia;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_aza_2_legions_march;
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
			victory_type vco_victory_type_chs_aza_3_sigmars_folly;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_aza_3_sigmars_folly;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_empire;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					override_text mission_text_text_vco_chs_aza_3_sigmars_folly_1;
					type CONTROL_N_REGIONS_FROM;
					total 8;

					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_marienburg;
					region wh3_main_combi_region_middenheim;
					region wh3_main_combi_region_the_black_pit;
					region wh3_main_combi_region_salzenmund;
					region wh3_main_combi_region_wolfenburg;
					region wh3_main_combi_region_hergig;
					region wh3_main_combi_region_talabheim;
					region wh3_main_combi_region_bechafen;
					region wh3_main_combi_region_wurtbad;
					region wh3_main_combi_region_averheim;
					region wh3_main_combi_region_nuln;
					region wh3_main_combi_region_pfeildorf;
				}
 
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_aza_3_sigmars_folly;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_ghal_maraz;
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
