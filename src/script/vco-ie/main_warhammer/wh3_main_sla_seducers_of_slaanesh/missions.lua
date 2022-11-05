local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_sla_nka_1_the_great_game;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_sla_nka_1_the_great_game;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_the_great_game_completed_0;
					type SCRIPTED;
					script_key vco_wh3_main_sla_seducers_of_slaanesh_the_great_game;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 11;

					province wh3_main_combi_province_caledor;
					province wh3_main_combi_province_tiranoc;
					province wh3_main_combi_province_nagarythe;
					province wh3_main_combi_province_chrace;
					province wh3_main_combi_province_cothique;
					province wh3_main_combi_province_northern_yvresse;
					province wh3_main_combi_province_southern_yvresse;
					province wh3_main_combi_province_eataine;
					province wh3_main_combi_province_ellyrion;
					province wh3_main_combi_province_avelorn;
					province wh3_main_combi_province_saphery;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_1_the_great_game;
						turns 0;
					}

					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_1_the_great_game_1;
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
			victory_type vco_victory_type_sla_nka_2_paradise_lost;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_sla_nka_2_paradise_lost;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_sla_nka_2_paradise_lost_spread_marks;
					type SCRIPTED;
					script_key vco_wh3_main_sla_seducers_of_slaanesh_gifts_given;
				}

				objective
				{
					override_text mission_text_text_vco_sla_nka_2_paradise_lost_establish_cults;
					type SCRIPTED;
					script_key vco_wh3_main_sla_seducers_of_slaanesh_cults_established;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_2_paradise_lost;
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
			victory_type vco_victory_type_sla_nka_3_bloodline_aenarion;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_sla_nka_3_bloodline_aenarion;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_main_hef_eataine;
					faction wh2_main_hef_order_of_loremasters;
					faction wh2_main_def_naggarond;

					confederation_valid;
					vassalization_valid;
				}
 
				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_sla_nka_3_bloodline_aenarion;
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
