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
                    type HAVE_NO_ACTIVE_MISSIONS_OF_CATEGORY;
                    event_category Grudges;
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
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_3;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
                {
                    type DESTROY_FACTION;

					faction wh_main_grn_bloody_spearz;
					faction wh2_dlc15_grn_bonerattlaz;
                    faction wh2_dlc16_grn_creeping_death;
                    faction wh_main_grn_necksnappers;
                    faction wh_main_grn_greenskins;
                    faction wh_main_grn_red_eye;
                    faction wh_main_grn_red_fangs;
					faction wh_main_grn_scabby_eye;
					faction wh_main_grn_teef_snatchaz;
					faction wh_main_grn_orcs_of_the_bloody_hand;
					faction wh_main_grn_top_knotz;

                    faction wh2_dlc15_skv_clan_ferrik;
                    faction wh2_dlc16_skv_clan_gritus;
                    faction wh2_dlc09_skv_clan_rictus;
                    faction wh2_dlc15_skv_clan_volkn;

                    confederation_valid;
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
