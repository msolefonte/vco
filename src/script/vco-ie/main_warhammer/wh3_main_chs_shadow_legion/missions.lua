local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_bel_1_shadows_albion;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_bel_1_shadows_albion;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 1;

					province wh3_main_combi_province_albion;
				}

				objective
				{
					override_text mission_text_text_vco_chs_arc_2_slayer_kings_1;
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_couronne;
					region wh3_main_combi_region_karaz_a_karak;
					region wh3_main_combi_region_the_oak_of_ages;
					region wh3_main_combi_region_lothern;
					region wh3_main_combi_region_itza;
					region wh3_main_combi_region_wei_jin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_bel_1_shadows_albion;
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
			victory_type vco_victory_type_chs_bel_2_no_strings_on_me;
			key vco_route_victory;
			issuer KING_KAZADOR;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_bel_2_no_strings_on_me;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_sla_seducers_of_slaanesh;
					faction wh3_main_kho_exiles_of_khorne;
					faction wh3_main_tze_oracles_of_tzeentch;
					faction wh3_main_nur_poxmakers_of_nurgle;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_bel_2_no_strings_on_me;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_the_crown_of_domination;
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
			victory_type vco_victory_type_chs_bel_3_aetherophasic_engine;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_bel_3_aetherophasic_engine;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_chs_bel_3_aetherophasic_engine_1;
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_zharr_naggrund;
					region wh3_main_combi_region_great_hall_of_greasus;
					region wh3_main_combi_region_black_crag;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_khemri;
					region wh3_main_combi_region_skavenblight;
					region wh3_main_combi_region_the_galleons_graveyard;
					region wh3_main_combi_region_naggarond;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource wh3_dlc20_chs_souls;
					total 50000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_bel_3_aetherophasic_engine;
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
