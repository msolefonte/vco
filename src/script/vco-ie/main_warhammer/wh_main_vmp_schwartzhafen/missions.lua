local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_vmp_vla_1_fourth_vampire_war;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_vla_1_fourth_vampire_war;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 22;

					province wh3_main_combi_province_reikland;
					province wh3_main_combi_province_axe_bite_pass;
					province wh3_main_combi_province_the_wasteland;
					province wh3_main_combi_province_gisoreux_gap;
					province wh3_main_combi_province_middenland;
					province wh3_main_combi_province_the_witchs_wood;
					province wh3_main_combi_province_the_misty_hills;
					province wh3_main_combi_province_nordland;
					province wh3_main_combi_province_ostland;
					province wh3_main_combi_province_hochland;
					province wh3_dlc20_combi_province_middle_mountains;
					province wh3_main_combi_province_wissenland;
					province wh3_main_combi_province_solland;
					province wh3_main_combi_province_winters_teeth_pass;
					province wh3_main_combi_province_averland;
					province wh3_main_combi_province_mootland;
					province wh3_main_combi_province_southern_sylvania;
					province wh3_main_combi_province_northern_sylvania;
					province wh3_main_combi_province_stirland;
					province wh3_main_combi_province_talabecland;
					province wh3_main_combi_province_ostermark;
					province wh3_main_combi_province_gryphon_wood;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_empire;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh_main_vmp_schwartzhafen;

                    province wh3_main_combi_province_reikland;
					building_level wh2_main_special_altdorf_imperial_palace_vmp;
				}


				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_vla_1_fourth_vampire_war;
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
	]],
	[[
 		mission
		{
			victory_type vco_victory_type_vmp_vla_2_slaughter_slopes;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_vla_2_slaughter_slopes;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_dwarfs;
					faction wh_main_dwf_karak_kadrin;
					faction wh_main_dwf_karak_izor;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_karaz_a_karak;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_vla_2_slaughter_slopes;
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
			victory_type vco_victory_type_vmp_vla_3_hearts_of_ice;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_vmp_vla_3_hearts_of_ice;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 6;

					province wh3_main_combi_province_river_lynsk;
					province wh3_main_combi_province_troll_country;
					province wh3_main_combi_province_southern_oblast;
					province wh3_main_combi_province_river_urskoy;
					province wh3_main_combi_province_the_cursed_city;
					province wh3_main_combi_province_eastern_oblast;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_ice_court;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_vmp_vla_3_hearts_of_ice;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_follower_ice_vampire;
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
