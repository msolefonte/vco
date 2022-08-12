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
                    type CONTROL_N_REGIONS_INCLUDING;
                    total 1;
                    override_text mission_text_text_wh_dlc06_objective_override_dwarfs_belegar;

                    region wh_main_eastern_badlands_karak_eight_peaks;
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
                    type DESTROY_FACTION;
                    faction wh2_main_skv_clan_mors;

                    faction wh_main_grn_necksnappers;
					faction wh_main_grn_crooked_moon;
                    confederation_valid;
                }

                payload
                {
                    game_victory;
                }
            }
        }
    ]]
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
                    type CONTROL_N_REGIONS_INCLUDING;
                    total 7;
                    override_text mission_text_text_wh_main_objective_override_dwarfs_reclaim;

                    region wh_main_northern_worlds_edge_mountains_karak_ungor;
                    region wh_main_rib_peaks_mount_gunbad;
                    region wh_main_death_pass_karak_drazh;
                    region wh_main_western_badlands_ekrund;
                    region wh_main_blightwater_karak_azgal;
                    region wh_main_southern_badlands_galbaraz;
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
