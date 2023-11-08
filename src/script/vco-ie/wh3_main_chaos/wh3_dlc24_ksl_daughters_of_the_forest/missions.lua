local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_ksl_mot_1_malediction_of_ruin;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_mot_1_malediction_of_ruin;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh3_dlc24_ksl_mother_ostankya_hex_malediction_of_ruin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_mot_1_malediction_of_ruin;
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
			victory_type vco_victory_type_ksl_mot_2_toil_and_trouble;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_mot_2_toil_and_trouble_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_tze_oracles_of_tzeentch;
					faction wh3_dlc20_chs_azazel;

					confederation_valid;
				}

				objective
				{
					override_text mission_text_text_vco_ksl_mot_2_toil_and_trouble_roc_kirin_horn;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_chaos_region_nan_gau;
					region wh3_main_chaos_region_po_mei;
					region wh3_main_chaos_region_weng_chang;
					region wh3_main_chaos_region_nan_li;

				}

				objective
				{
					override_text mission_text_text_vco_ksl_mot_2_toil_and_trouble_roc_lion_tooth;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_chaos_region_wei_jin;
					region wh3_main_chaos_region_jade_wind_mountain;
					region wh3_main_chaos_region_xing_po;
					region wh3_main_chaos_region_zhanshi;

				}

				objective
				{
					override_text mission_text_text_vco_ksl_mot_2_toil_and_trouble_roc_crowman_feather;
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh3_main_chaos_region_shang_wu;
					region wh3_main_chaos_region_hanyu_port;
					region wh3_main_chaos_region_shang_yang;
					region wh3_main_chaos_region_shrine_of_the_alchemist;

				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_mot_2_toil_and_trouble_roc;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_talisman_cathayan_concoction;
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
			victory_type vco_victory_type_ksl_mot_3_the_new_frontier_roc;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_ksl_mot_3_the_new_frontier_roc;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc20_chs_valkia;
					faction wh3_main_nur_poxmakers_of_nurgle;
					faction wh3_main_kho_exiles_of_khorne;
					faction wh3_main_sla_seducers_of_slaanesh;

					confederation_valid;
				}

				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 3;

					region wh3_main_chaos_region_erengrad;
					region wh3_main_chaos_region_praag;
					region wh3_main_chaos_region_kislev;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_ksl_mot_3_the_new_frontier_roc;
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
