local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_mis_activity_attain_chaos_god_favour;
                    type SCRIPTED;
                    script_key attain_chaos_god_favour;
				}

				objective
				{
					override_text mission_text_text_mis_activity_defeat_chaos_gods_challengers;
                    type SCRIPTED;
                    script_key defeat_chaos_gods_challengers;
				}

				payload
				{
					game_victory;
				}
			}
		}
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_2;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 5;
					region wh_main_couronne_et_languille_couronne;
					region wh_main_reikland_altdorf;
					region wh_main_eastern_sylvania_castle_drakenhof;
					region wh_main_yn_edri_eternos_the_oak_of_ages;
					region wh_main_tilea_miragliano;
					region wh2_main_skavenblight_skavenblight;
					region wh_main_southern_oblast_kislev;
					region wh2_main_hell_pit_hell_pit;
					region wh_main_the_silver_road_karaz_a_karak;
					region wh_main_eastern_badlands_karak_eight_peaks;
					region wh_main_death_pass_karak_drazh;
					region wh2_main_devils_backbone_lahmia;
					region wh2_main_land_of_the_dead_khemri;
					region wh2_main_southern_great_jungle_itza;
					region wh2_main_isthmus_of_lustria_hexoatl;
					region wh2_main_iron_mountains_naggarond;
					region wh2_main_eataine_lothern;
					region wh2_main_avelorn_gaean_vale;
					region wh2_main_vampire_coast_the_awakening;
					region wh2_main_the_galleons_graveyard;
					region wh2_main_sartosa_sartosa;
				}

				payload
				{
					game_victory;
				}
			}
		}
    ]]
};

return missions;
