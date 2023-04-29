local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_chd_ast_1_steel_sky;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_ast_1_steel_sky;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 7;

					province wh3_main_combi_province_zorn_uzkul;
					province wh3_main_combi_province_the_plain_of_zharr;
					province wh3_main_combi_province_the_blasted_wastes;
					province wh3_main_combi_province_the_wolf_lands;
					province wh3_main_combi_province_the_howling_wastes;
					province wh3_main_combi_province_the_desolation_of_azgorh;
					province wh3_main_combi_province_the_plain_of_bones;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_ast_1_steel_sky;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_arcane_item_blood_rune_bracers;
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
			victory_type vco_victory_type_chd_ast_2_the_culling;
			key wh_main_short_victory;
			issuer MUFFIN_MAN;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_ast_2_the_culling;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_grn_greenskins;
					faction wh2_dlc15_grn_bonerattlaz;
					faction wh_main_grn_crooked_moon;

					confederation_valid;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_ast_2_the_culling;
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
			victory_type vco_victory_type_chd_ast_3_hashut_wakes;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_vco_chd_ast_3_hashut_wakes;
					type SCRIPTED;
					script_key vco_dummy;
				}

				objective
				{
					override_text mission_text_text_vco_tmb_ark_2_born_to_serve_region_overwrite;
					type CONTROL_N_REGIONS_FROM;
					total 4;

					region wh3_main_combi_region_karak_kadrin;
					region wh3_main_combi_region_kislev;
					region wh3_main_combi_region_hell_pit;
					region wh3_main_combi_region_castle_drakenhof;
					region wh3_main_combi_region_altdorf;
					region wh3_main_combi_region_pfeildorf;
					region wh3_main_combi_region_gryphon_wood;
					region wh3_main_combi_region_brass_keep;
				}

				objective
				{
					type CAPTURE_X_BATTLE_CAPTIVES;

					total 5000;
				}

				payload
				{
					effect_bundle
					{
						bundle_key vco_victory_payload_chd_ast_3_hashut_wakes;
						turns 0;
					}

					add_ancillary_to_faction_pool
					{
						ancillary_key vco_anc_enchanted_item_writ_of_iron;
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
