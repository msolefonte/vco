local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_skv_mdr_1_yes_yes_prepare_the_lab;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mdr_1_yes_yes_prepare_the_lab;
					type SCRIPTED;
					script_key vco_skv_mld_augments;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_skv_clan_moulder;

                    province wh3_main_combi_province_black_blood_pass;
					building_level wh2_main_special_hellpit_pits_moulder_2;
				}

				objective
				{
					override_text mission_text_text_vco_skv_mdr_3_the_frozen_dead;
					type CONTROL_N_PROVINCES_INCLUDING;
					total 3;

					province wh3_main_combi_province_gianthome_mountains;
					province wh3_main_combi_province_goromadny_mountains;
					province wh3_main_combi_province_mountains_of_hel;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_kraka_drak;
					faction wh_dlc08_nor_goromadny_tribe;
					faction wh_dlc08_nor_wintertooth;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_1_yes_yes_prepare_the_lab;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_3_the_frozen_dead;
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
			victory_type vco_victory_type_skv_mdr_2_the_vermintide_comes;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_mdr_2_the_vermintide_comes;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_ice_court;
					faction wh3_main_ksl_the_great_orthodoxy;
				}
			
				objective
				{
					override_text mission_text_text_vco_skv_mdr_2_the_vermintide_comes_override;
					type CONTROL_N_REGIONS_FROM;
					total 4;
				
					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_middenheim;
					region wh3_main_combi_region_brass_keep;
					region wh3_main_combi_region_gryphon_wood;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_karak_kadrin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_2_the_vermintide_comes;
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
			victory_type vco_victory_type_skv_mdr_3_the_frozen_dead;
			key wh_main_short_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{

				objective
				{
					override_text mission_text_text_vco_skv_mdr_3_ultimate_harvest;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_the_great_arena;
					region wh3_main_combi_region_clar_karond;
					region wh3_main_combi_region_clarak_spire;
					region wh3_main_combi_region_temple_of_khaine;
					region wh3_main_combi_region_vauls_anvil_naggaroth;
					region wh3_main_combi_region_the_moon_shard;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc16_wef_sisters_of_twilight;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_mdr_3_ultimate_harvest;
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
