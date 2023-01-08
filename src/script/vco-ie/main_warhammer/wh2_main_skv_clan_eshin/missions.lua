local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_skv_esh_1_service_of_the_grand_nightlord;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_esh_1_service_of_the_grand_nightlord_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type PERFORM_RITUAL;

					ritual wh2_dlc14_eshin_actions_decapitation;
				}
			
				objective
				{
					type ASSASSINATE_X_CHARACTERS;

					total 13;
				}
			
				objective
				{
					override_text mission_text_text_vco_skv_esh_1_service_of_the_grand_nightlord_2_0;
					type SCRIPTED;
					script_key vco_skv_esh_eshin_actions;
				}
			
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_1_eshin_trials;
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
			victory_type vco_victory_type_skv_esh_2_assassin;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_skv_esh_2_assassin_1;
					type SCRIPTED;
					script_key vco_skv_esh_wh3_main_nur_poxmakers_of_nurgle_leader_defeated;
				}
			
				objective
				{
					override_text mission_text_text_vco_skv_esh_2_assassin_2;
					type SCRIPTED;
					script_key vco_skv_esh_wh_main_dwf_karak_izor_leader_defeated;
				}

				objective
				{
					override_text mission_text_text_vco_skv_esh_2_assassin_3;
					type SCRIPTED;
					script_key vco_skv_esh_wh2_main_def_hag_graef_leader_defeated;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_2_magnus_sicarius_1;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_2_magnus_sicarius_2;
						turns 0;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_2_magnus_sicarius_3;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key wh_main_anc_enchanted_item_healing_potion;
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
			victory_type vco_victory_type_skv_esh_3_keep_your_enemies_close;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			 
				objective
				{
					override_text mission_text_text_vco_skv_esh_3_keep_your_enemies_close_1;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh3_main_grn_dimned_sun;
					faction wh3_main_cth_the_western_provinces;
					faction wh3_main_cth_the_northern_provinces;
					faction wh3_main_cth_celestial_loyalists;
				}
			
				objective
				{
					override_text mission_text_text_vco_skv_esh_3_keep_your_enemies_close_2;
					type SCRIPTED;
					script_key vco_dummy;
				}
			
				objective
				{
					type DESTROY_FACTION;

					faction wh3_dlc21_vmp_jiangshi_rebels;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_3_the_night_is_quiet_once_again_1;
						turns 0;
					}
				
					faction_pooled_resource_transaction
					{
						resource skv_clan_mors;
						factor vco;
						amount 20;
						context absolute;
					}
				
					faction_pooled_resource_transaction
					{
						resource skv_clan_moulder;
						factor vco;
						amount 20;
						context absolute;
					}
				
					faction_pooled_resource_transaction
					{
						resource skv_clan_pestilens;
						factor vco;
						amount 20;
						context absolute;
					}
				
					faction_pooled_resource_transaction
					{
						resource skv_clan_skryre;
						factor vco;
						amount 20;
						context absolute;
					}
				
					effect_bundle
					{
						bundle_key vco_victory_payload_skv_esh_3_the_night_is_quiet_once_again_2;
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
