local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_nur_kug_1_great_game;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nur_kug_1_great_game;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_the_great_game_completed_0;
					type SCRIPTED;
					script_key vco_wh3_main_nur_poxmakers_of_nurgle_the_great_game;
				}

				objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;

					pooled_resource wh3_main_nur_infections;
					total 2000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_1_great_game;
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
			victory_type vco_victory_type_nur_kug_2_eastern_poxes;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nur_kug_2_eastern_poxes;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_vmp_caravan_of_blue_roses;
					faction wh3_main_cth_the_western_provinces;
					faction wh2_dlc13_lzd_spirits_of_the_jungle;

					confederation_valid;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_the_haunted_forest;                
					region wh3_main_combi_region_jungles_of_chian;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_2_eastern_poxes;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_2_eastern_poxes_1;
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
			victory_type vco_victory_type_nur_kug_3_death_dwarfs;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_nur_kug_3_death_dwarfs;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type RAZE_OR_OWN_SETTLEMENTS;

					region wh3_main_combi_region_karaz_a_karak;
				}

				objective
				{
					override_text mission_text_text_vco_ogr_skr_3_hunger_power_2;
					type CONTROL_N_REGIONS_FROM;
					total 4;
				
					region wh3_main_combi_region_karak_azorn;
					region wh3_main_combi_region_karak_azul;
					region wh3_main_combi_region_karak_izor;
					region wh3_main_combi_region_karak_hirn;
					region wh3_main_combi_region_karak_zorn;
					region wh3_main_combi_region_zhufbar;
					region wh3_main_combi_region_karak_norn;
					region wh3_main_combi_region_karak_kadrin;
					region wh3_main_combi_region_kraka_drak;
				}

				objective
				{
					override_text mission_text_text_vco_nur_kug_3_death_dwarfs_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 4;
				
					region wh3_main_combi_region_ruins_end;
					region wh3_main_combi_region_pigbarter;
					region wh3_main_combi_region_the_daemons_stump;
					region wh3_main_combi_region_zharr_naggrund;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_3_death_dwarfs;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_nur_kug_3_death_dwarfs_1;
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
