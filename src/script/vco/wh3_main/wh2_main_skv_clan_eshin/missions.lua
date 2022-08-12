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
					override_text mission_text_text_vco2_attain_clan_reputation_2_0;
                    type SCRIPTED;
                    script_key attain_clan_reputation_2;
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
					type PERFORM_RITUAL;
					ritual_category ESHIN_RITUAL_DELAYED;
					total 1;
				}

				objective
				{
					type PERFORM_RITUAL;
					ritual_category ESHIN_VORTEX_RITUAL;
					total 3;
				}

				objective
				{
					type PERFORM_RITUAL;
					ritual_category ESHIN_RITUAL;
					total 13;
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
            victory_type vco_victory_type_alternative_3_destruction;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_dwarfs;

					faction wh2_main_def_hag_graef;

                    faction wh2_dlc15_hef_imrik;

					faction wh2_main_lzd_last_defenders;

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
