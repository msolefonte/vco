local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_tze_cha_1_shadows_of_change;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tze_cha_1_shadows_of_change;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh3_dlc24_tze_changeling_theatre_scheme_ultimate_roc;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tze_cha_1_shadows_of_change;
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
			victory_type vco_victory_type_tze_cha_2_puppet_state;
			key vco_route_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tze_cha_2_puppet_state;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_chaos_region_altdorf;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_chaos_region_kislev;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_chaos_region_hell_pit;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_chaos_region_castle_drakenhof;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_chaos_region_karak_kadrin;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_chaos_region_zharr_naggrund;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_chaos_region_great_hall_of_greasus;
				}

				objective
				{
					type MOVE_TO_REGION;

					region wh3_main_chaos_region_wei_jin;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tze_cha_2_puppet_state;
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
			victory_type vco_victory_type_tze_cha_3_faceless_war;
			key vco_route_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_tze_cha_3_faceless_war;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1633407333;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 125729850;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1311887776;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_tze_cha_3_faceless_war;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_arcane_item_yueyins_diamond;
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
