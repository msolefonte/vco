local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_nor_wul_1_ragnarok;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_nor_wul_1_ragnarok;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_mis_activity_attain_chaos_god_favour;
					type SCRIPTED;
					script_key vco_nor_wul_chaos_allegiance;
				}

				objective
				{
					override_text mission_text_text_mis_activity_defeat_chaos_gods_challengers;
					type SCRIPTED;
					script_key defeat_chaos_gods_challengers;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_1_ragnarok_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_1_ragnarok_2;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_nor_wul_2_the_world_walker;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nor_wul_2_the_world_walker;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_nor_wul_2_the_world_walker_override;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_combi_region_couronne;
					region wh3_main_combi_region_miragliano;
					region wh3_main_combi_region_karaz_a_karak;
					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_black_crag;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_lothern;
					region wh3_main_combi_region_hexoatl;
					region wh3_main_combi_region_skavenblight;
					region wh3_main_combi_region_khemri;
					region wh3_main_combi_region_the_awakening;
					region wh3_main_combi_region_wei_jin;
					region wh3_main_combi_region_zharr_naggrund;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_2_the_world_walker;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
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
			victory_type vco_victory_type_nor_wul_3_wheres_my_palico;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nor_wul_3_wheres_my_palico;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_kraka_drak;
					faction wh_dlc08_nor_goromadny_tribe;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_3_wheres_my_palico_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_nor_wul_3_wheres_my_palico_2;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_campaign_victory_dummy;
						turns 0;
					}

					game_victory;
				}
			}
		}
	]]
};

return missions;
