local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_emp_kar_1_protector_empire;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_kar_1_protector_empire;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 11;

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
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_emp_marienburg;
					faction wh_dlc03_bst_beastmen;
					faction wh3_dlc20_chs_festus;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_kar_1_protector_empire;
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
			victory_type vco_victory_type_emp_kar_2_defier_dark;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_kar_2_defier_dark;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 11;

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

					faction wh_main_vmp_schwartzhafen;
					faction wh2_dlc16_wef_drycha;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_kar_2_defier_dark;
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
			victory_type vco_victory_type_emp_kar_3_karl_uniter;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_emp_kar_3_karl_uniter;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_emp_kar_3_karl_uniter_1;
					type CONTROL_N_REGIONS_FROM;
					total 3;
				
					region wh3_main_combi_region_couronne;
					region wh3_main_combi_region_the_oak_of_ages;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_karaz_a_karak;
					region wh3_main_combi_region_lothern;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh_main_emp_empire;
					total 2;

					building_level wh2_main_special_altdorf_imperial_palace;
					building_level wh_main_special_college_of_magic;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_emp_kar_3_karl_uniter;
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
