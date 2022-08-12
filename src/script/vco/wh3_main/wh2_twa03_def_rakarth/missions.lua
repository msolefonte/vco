local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_short;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 20;
				}
				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 4;
					region wh_main_ice_tooth_mountains_icedrake_fjord;
					region wh_main_troll_country_erengrad;
					region wh_main_the_wasteland_marienburg;
					region wh_main_couronne_et_languille_couronne;
					region wh_main_yn_edri_eternos_the_oak_of_ages;
					region wh2_main_sartosa_sartosa;
					region wh2_main_skavenblight_skavenblight;
					region wh_main_blood_river_valley_barak_varr;
					region wh2_main_nagarythe_shrine_of_khaine;
					region wh2_main_eataine_lothern;
					region wh2_main_yvresse_tor_yvresse;
					region wh2_main_iron_mountains_naggarond;
					region wh2_main_the_broken_land_karond_kar;
					region wh2_main_the_black_coast_arnheim;
					region wh2_main_the_galleons_graveyard;
				}
				objective
				{
					type DESTROY_FACTION;
					faction wh_main_brt_bretonnia;
					faction wh_main_emp_marienburg;
					confederation_valid;
				}
				objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_twa03_def_rakarth;
					total 1;
					building_level wh_twa03_special_albion_port_def_2;
				}
				objective
				{
					type OWN_N_UNITS;
					total 8;
					unit wh2_main_def_mon_black_dragon;
					unit wh2_main_lzd_mon_stegadon_0;
					unit wh2_dlc14_def_mon_bloodwrack_medusa_0;
					unit wh2_main_lzd_mon_carnosaur_0;
					unit wh2_dlc10_def_mon_kharibdyss_0;
					unit wh2_main_def_mon_war_hydra;
					unit wh2_twa03_def_mon_war_mammoth_0;
				}
				objective
				{
					type CAPTURE_X_BATTLE_CAPTIVES;
					total 8000;
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
			victory_type vco_victory_type_long;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS;
					total 40;
				}
				objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 8;
					region wh_main_ice_tooth_mountains_icedrake_fjord;
					region wh_main_troll_country_erengrad;
					region wh_main_the_wasteland_marienburg;
					region wh_main_couronne_et_languille_couronne;
					region wh_main_yn_edri_eternos_the_oak_of_ages;
					region wh2_main_sartosa_sartosa;
					region wh2_main_skavenblight_skavenblight;
					region wh_main_blood_river_valley_barak_varr;
					region wh2_main_nagarythe_shrine_of_khaine;
					region wh2_main_eataine_lothern;
					region wh2_main_yvresse_tor_yvresse;
					region wh2_main_iron_mountains_naggarond;
					region wh2_main_the_broken_land_karond_kar;
					region wh2_main_the_black_coast_arnheim;
					region wh2_main_the_galleons_graveyard;
				}
				objective
				{
					type DESTROY_FACTION;
					faction wh_main_emp_empire;
					faction wh_main_brt_bretonnia;
					confederation_valid;
				}
				objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_twa03_def_rakarth;
					total 1;
					building_level wh_twa03_special_albion_port_def_2;
				}
				objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_twa03_def_rakarth;
					total 1;
					building_level wh2_twa03_special_ogham_stones_3;
				}
				objective
				{
					type OWN_N_UNITS;
					total 15;
					unit wh2_main_def_mon_black_dragon;
					unit wh2_main_lzd_mon_stegadon_0;
					unit wh2_dlc14_def_mon_bloodwrack_medusa_0;
					unit wh2_main_lzd_mon_carnosaur_0;
					unit wh2_dlc10_def_mon_kharibdyss_0;
					unit wh2_main_def_mon_war_hydra;
					unit wh2_twa03_def_mon_war_mammoth_0;
				}
				objective
				{
					type CAPTURE_X_BATTLE_CAPTIVES;
					total 12000;
				}
				objective
                {
					override_text mission_text_text_mis_activity_archaon_spawned;
                    type SCRIPTED;
                    script_key archaon_spawned;
                }
				objective
                {
					override_text mission_text_text_mis_activity_archaon_defeated;
                    type SCRIPTED;
                    script_key archaon_defeated;
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
