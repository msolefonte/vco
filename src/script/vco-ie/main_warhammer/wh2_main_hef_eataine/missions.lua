local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_hef_tyr_1_defender_ulthuan;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_tyr_1_defender_ulthuan;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{

					type DESTROY_FACTION;

					faction wh3_main_sla_seducers_of_slaanesh;
					faction wh2_dlc11_cst_noctilus;
					faction wh2_dlc15_grn_broken_axe;
					faction wh2_dlc11_cst_the_drowned;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_griffon_gate;
					region wh3_main_combi_region_unicorn_gate;
					region wh3_main_combi_region_phoenix_gate;
					region wh3_main_combi_region_eagle_gate;
				}

				objective
				{
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 25;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_tyr_1_defender_ulthuan;
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
			victory_type vco_victory_type_hef_tyr_2_love_and_war;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_tyr_2_love_and_war;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_naggarond;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_hag_graef;
					region wh3_main_combi_region_clar_karond;
					region wh3_main_combi_region_ghrond;
					region wh3_main_combi_region_har_ganeth;
					region wh3_main_combi_region_karond_kar;
				}

				objective
				{
					override_text mission_text_text_vco_hef_tyr_2_love_and_war_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 2;

					region wh3_main_combi_region_lothern;
					region wh3_main_combi_region_gaean_vale;
				}

				objective
				{
					type CONSTRUCT_BUILDING_IN_PROVINCES;
					faction wh2_main_hef_eataine;

                    province wh3_main_combi_province_eataine;
					building_level wh2_main_special_phoenix_king_court;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_tyr_2_love_and_war_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_hef_tyr_2_love_and_war_2;
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
			victory_type vco_victory_type_hef_tyr_3_fate_of_the_soul;
			key vco_route_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_hef_tyr_3_fate_of_the_soul;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_hef_tyr_3_fate_of_the_soul_3;
					type CONTROL_N_REGIONS_INCLUDING;
					total 3;

					region wh3_main_combi_region_shrine_of_khaine;
					region wh3_main_combi_region_the_oak_of_ages;
					region wh3_main_combi_region_karaz_a_karak;
				}

				objective
				{
					override_text mission_text_text_vco_hef_tyr_3_fate_of_the_soul_1;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_combi_region_forest_of_gloom;
					region wh3_main_combi_region_gryphon_wood;
					region wh3_main_combi_region_laurelorn_forest;
					region wh3_main_combi_region_oreons_camp;
				}

				objective
				{
					override_text mission_text_text_vco_hef_tyr_3_fate_of_the_soul_2;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_combi_region_karak_kadrin;
					region wh3_main_combi_region_black_crag;
					region wh3_main_combi_region_karak_eight_peaks;
					region wh3_main_combi_region_karak_zorn;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_hef_tyr_3_fate_of_the_soul_1;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_hef_tyr_3_fate_of_the_soul_2;
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
