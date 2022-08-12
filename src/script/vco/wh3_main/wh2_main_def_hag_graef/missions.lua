local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_threat_elimination;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

					faction wh2_main_skv_clan_eshin;

					faction wh_main_dwf_karak_azul;

                    faction wh2_dlc15_hef_imrik;

					faction wh2_main_lzd_last_defenders;

					faction wh2_dlc09_tmb_lybaras;

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
            victory_type vco_victory_type_alternative_2_miscellany;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type COMPLETE_N_MISSIONS_OF_CATEGORY;
					total 5;
					event_category Objective;
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
