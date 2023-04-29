local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_val_1_blood_snow_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_val_1_blood_snow_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_ksl_the_ice_court;
					faction wh3_main_ksl_the_great_orthodoxy;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_praag;
					region wh3_main_chaos_region_kislev;
					region wh3_main_chaos_region_erengrad;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_val_1_blood_snow_roc;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_talisman_superior_collar_of_khorne;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_all_campaign_victory_dummy;
						turns 0;
					}

					faction_pooled_resource_transaction
					{
						resource wh3_dlc20_chs_teleport_network_rift_resource;
						factor vco;
						amount 1;
						context absolute;
					}

					game_victory;
				}
			}
		}
	]],
	[[
 		mission
		{
			victory_type vco_victory_type_chs_val_2_bringer_glory_roc;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_val_2_bringer_glory_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_chaos_region_uzkulak;
					region wh3_main_chaos_region_zharr_naggrund;
					region wh3_main_chaos_region_the_silver_pinnacle;
					region wh3_main_chaos_region_black_fortress;
					region wh3_main_chaos_region_crookback_mountain;
					region wh3_main_chaos_region_the_tower_of_gorgoth;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc23_chd_astragoth;
					faction wh3_dlc23_chd_legion_of_azgorh;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_val_2_bringer_glory_roc;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_all_campaign_victory_dummy;
						turns 0;
					}

					faction_pooled_resource_transaction
					{
						resource wh3_dlc20_chs_teleport_network_rift_resource;
						factor vco;
						amount 1;
						context absolute;
					}

					game_victory;
				}
			}
		}
	]],
	[[
 		mission
		{
			victory_type vco_victory_type_chs_val_3_shup_up_daemon_roc;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_val_3_shup_up_daemon_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_chs_aza_1_dark_fortresses_roc;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_chaos_region_frozen_landing;
					region wh3_main_chaos_region_kraka_drak;
					region wh3_main_chaos_region_the_sunken_sewers;
					region wh3_main_chaos_region_the_writhing_fortress;
					region wh3_main_chaos_region_blood_haven;
					region wh3_main_chaos_region_black_rock;
					region wh3_main_chaos_region_the_crystal_spires;
					region wh3_main_chaos_region_infernius;
					region wh3_main_chaos_region_the_shifting_monolith;
					region wh3_main_chaos_region_the_silvered_tower_of_sorcerers;
					region wh3_main_chaos_region_the_palace_of_ruin;
				}
 
				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_sla_seducers_of_slaanesh;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_val_3_shup_up_daemon;
						turns 1;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_witstealer_sword;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_all_campaign_victory_dummy;
						turns 0;
					}

					faction_pooled_resource_transaction
					{
						resource wh3_dlc20_chs_teleport_network_rift_resource;
						factor vco;
						amount 1;
						context absolute;
					}

					game_victory;
				}
			}
		}
	]]
};

return missions;
