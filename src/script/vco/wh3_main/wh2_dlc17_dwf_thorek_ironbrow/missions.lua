local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_miscellany;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
        				{
        					type SCRIPTED;
        					script_key artefacts_crafted_victory_objective_me_1;
        					override_text mission_text_text_mis_activity_craft_artefacts_all;
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
			victory_type vco_victory_type_alternative_2_unification;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
                {
                    type CONTROL_N_REGIONS_INCLUDING;
                    total 15;
                    override_text mission_text_text_wh_main_objective_override_dwarfs_unite;

                    region wh_main_the_silver_road_karaz_a_karak;

                    region wh_main_blood_river_valley_barak_varr;
                    region wh_main_blood_river_valley_varenka_hills;

                    region wh_main_eastern_badlands_dringorackaz;

                    region wh_main_blightwater_kradtommen;
                    region wh_main_blightwater_misty_mountain;

                    region wh_main_desolation_of_nagash_karak_azul;
                    region wh_main_desolation_of_nagash_spitepeak;

                    region wh_main_black_mountains_karak_hirn;
                    region wh_main_black_mountains_mighdal_vongalbarak;

                    region wh_main_the_vaults_karak_izor;

                    region wh_main_peak_pass_karak_kadrin;

                    region wh_main_zhufbar_karag_dromar;
                    region wh_main_zhufbar_oakenhammer;
                    region wh_main_zhufbar_zhufbar;
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
