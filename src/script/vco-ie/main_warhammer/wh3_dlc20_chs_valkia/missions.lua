local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chs_val_1_blood_snow;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_val_1_blood_snow;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_har_ganeth;
					region wh3_main_combi_region_ghrond;
					region wh3_main_combi_region_naggarond;
					region wh3_main_combi_region_hag_graef;
					region wh3_main_combi_region_clar_karond;
					region wh3_main_combi_region_karond_kar;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_naggarond;

					confederation_valid;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_har_ganeth;

					confederation_valid;
					vassalization_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_val_1_blood_snow;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_chs_val_1_blood_snow_1;
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
			victory_type vco_victory_type_chs_val_2_bringer_glory;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_val_2_bringer_glory;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_dwf_the_ancestral_throng;
					faction wh2_main_hef_nagarythe;
					faction wh2_dlc11_cst_the_drowned;
					faction wh2_dlc16_wef_sisters_of_twilight;
					faction wh2_dlc09_tmb_exiles_of_nehek;
					faction wh2_main_def_cult_of_pleasure;

					confederation_valid;
					vassalization_valid;
				}

				objective
				{
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 35;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chs_val_2_bringer_glory;
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
			victory_type vco_victory_type_chs_val_3_shup_up_daemon;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chs_val_3_shup_up_daemon;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_chs_aza_1_dark_fortresses_roc;
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh3_main_combi_region_dagraks_end;
					region wh3_main_combi_region_the_palace_of_ruin;
					region wh3_main_combi_region_the_frozen_city;
					region wh3_main_combi_region_fortress_of_the_damned;
					region wh3_main_combi_region_the_silvered_tower_of_sorcerers;
					region wh3_main_combi_region_the_twisted_towers;
					region wh3_main_combi_region_black_rock;
				}
 
				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc20_chs_sigvald;
					faction wh2_main_def_hag_graef;
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
						ancillary_key vco_anc_weapon_sliverslash;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_weapon_warpsword_of_khaine;
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

					game_victory;
				}
			}
		}
	]]
};

return missions;
