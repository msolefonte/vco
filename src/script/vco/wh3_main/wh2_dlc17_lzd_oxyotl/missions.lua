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
					type COMPLETE_N_MISSIONS_OF_CATEGORY;
					event_category Chaos_Map_Medium;
					event_category Chaos_Map_Hard;
					total 25;
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
					faction wh2_dlc17_bst_taurox;
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
