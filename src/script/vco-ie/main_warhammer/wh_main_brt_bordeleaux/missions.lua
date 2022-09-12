local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_brt_bdx_1_alberic_grail_quest;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_brt_sacred_pools;
					type CONTROL_N_PROVINCES_INCLUDING;
					total 1;

					province wh3_main_combi_province_the_sacred_pools;
				}

				objective
				{
					override_text mission_text_text_vco_brt_alberic_vow;
					type SCRIPTED;
					script_key vco_brt_alberic_vow;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc16_lzd_wardens_of_the_living_pools;
					faction wh2_main_lzd_itza;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_brt_blessed_by_the_lady;
						turns 0;
					}

					faction_pooled_resource_transaction
					{
						resource brt_chivalry;
						factor vco;
						amount 2000;
						context absolute;
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
			victory_type vco_victory_type_brt_bdx_2_no_ocean_for_dead_men;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc11_cst_vampire_coast;
					faction wh2_dlc11_cst_noctilus;
					faction wh2_dlc11_cst_pirates_of_sartosa;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_brt_the_sea_gods_wrath;
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
			victory_type vco_victory_type_brt_bdx_3_home_sweet_home;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_brt_home_sweet_home;
					type CONTROL_N_PROVINCES_INCLUDING;
					total 1;

					province wh3_main_combi_province_river_brienne;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_vmp_mousillon;

					faction wh2_dlc15_grn_broken_axe;

					confederation_valid;
				}

				objective
				{
					type CONSTRUCT_N_BUILDINGS_INCLUDING;
					faction wh_main_brt_bordeleaux;
					total 1;

					building_level wh2_dlc12_special_bordeleaux_manann_shrine_1;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_brt_bordeleaux_reclaimed;
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
