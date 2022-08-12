local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_conquest;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type OWN_N_REGIONS_INCLUDING;
					total 1;
					override_text mission_text_text_wh_dlc06_objective_override_greenskins_skarsnik;

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
            victory_type vco_victory_type_alternative_2_threat_elimination;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
				objective
                {
                    type DESTROY_FACTION;

                    faction wh_main_dwf_karak_izor;

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
    ]],
    [[
        mission
        {
            victory_type vco_victory_type_alternative_3_edification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh2_main_skv_clan_mors;
					total 2;

					building_level wh2_main_special_settlement_eight_peaks_skv_5;
					building_level wh2_main_special_eight_peaks_skv_3;
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
