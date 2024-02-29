local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ogr_skr_1_pilgrim_maw;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_skr_1_pilgrim_maw;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_ogr_the_maw_that_walks_0;
					type SCRIPTED;
					script_key vco_ogr_the_maw_that_walks;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh3_main_qb_ogr_skrag_cauldron_of_the_great_maw_caverns_of_mourn;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_combi_region_the_maw_gate;
					region wh3_main_combi_region_the_galleons_graveyard;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ogr_skr_1_pilgrim_maw;
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
			victory_type vco_victory_type_ogr_skr_2_age_of_ogres;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_skr_2_age_of_ogres;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_teb_border_princes;
					faction wh_main_dwf_karak_izor;
					faction wh_main_teb_tilea;
					faction wh_main_teb_estalia;
					faction wh_main_brt_carcassonne;
					faction wh_main_brt_bretonnia;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_dwf_gro_2_high_elf_decision_2;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_combi_region_sartosa;
					region wh3_main_combi_region_skavenblight;
					region wh3_main_combi_region_the_oak_of_ages;
					region wh3_main_combi_region_massif_orcal;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ogr_skr_2_age_of_ogres;
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
			victory_type vco_victory_type_ogr_skr_3_hunger_power;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ogr_skr_3_hunger_power;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_ogr_skr_3_hunger_power_1;
					type CONTROL_N_REGIONS_FROM;
					total 1;

					region wh3_main_combi_region_karaz_a_karak;
					region wh3_main_combi_region_altdorf;
				}

				objective
				{
					override_text mission_text_text_vco_ogr_skr_3_hunger_power_2;
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_black_crag;
					region wh3_main_combi_region_karak_eight_peaks;
					region wh3_main_combi_region_morgheim;
					region wh3_main_combi_region_galbaraz;
					region wh3_main_combi_region_pfeildorf;
					region wh3_main_combi_region_nuln;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_marienburg;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ogr_skr_3_hunger_power;
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
