local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_lzd_nak_1_the_reawakening;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_lzd_nak_1_the_reawakening;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_lzd_nak_1_the_reawakening_1;
					type CONTROL_N_REGIONS_FROM;
					total 7;

					region wh3_main_combi_region_haichai;
					region wh3_main_combi_region_kunlan;
					region wh3_main_combi_region_beichai;
					region wh3_main_combi_region_shi_wu;
					region wh3_main_combi_region_tower_of_ashung;
					region wh3_main_combi_region_jungles_of_chian;
					region wh3_main_combi_region_fu_hung;
					region wh3_main_combi_region_nonchang;
					region wh3_main_combi_region_shi_long;
					region wh3_main_combi_region_zhanshi;
					region wh3_main_combi_region_po_mei;
					region wh3_main_combi_region_hanyu_port;
					region wh3_main_combi_region_shang_yang;
					region wh3_main_combi_region_nan_gau;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_lzd_nak_1_the_reawakening;
						turns 1;
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
			victory_type vco_victory_type_lzd_nak_2_homecoming;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_lzd_nak_2_homecoming;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc13_emp_the_huntmarshals_expedition;
					faction wh_main_brt_bordeleaux;
					faction wh2_dlc11_cst_vampire_coast;
					faction wh2_main_skv_clan_pestilens;

					confederation_valid;
				}

				objective
				{
					type ACHIEVE_CHARACTER_RANK;
					total 1;
					total2 40;
					start_pos_character 530282727;
					include_generals;
				}

				objective
				{
					type FIGHT_SET_PIECE_BATTLE;
					set_piece_battle wh2_dlc13_qb_lzd_final_battle_nakai;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_lzd_nak_2_homecoming;
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
			victory_type vco_victory_type_lzd_nak_3_the_wanderer;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_lzd_nak_3_the_wanderer;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DEFEAT_N_ARMIES_OF_FACTION;
					total 25;
				}

				objective
				{
					override_text mission_text_text_vco_lzd_nak_3_the_wanderer_1;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 621175995;
				}

				objective
				{
					override_text mission_text_text_vco_lzd_nak_3_the_wanderer_2;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1629043394;
				}

				objective
				{
					override_text mission_text_text_vco_lzd_nak_3_the_wanderer_3;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 1649736864;
				}

				objective
				{
					override_text mission_text_text_vco_lzd_nak_3_the_wanderer_4;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
                    type HAVE_CHARACTER_WOUNDED;
                    start_pos_character 720077559;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_lzd_nak_3_the_wanderer;
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
