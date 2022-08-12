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
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource cst_infamy;
					total 20000;
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
            victory_type vco_victory_type_alternative_3_edification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh2_dlc11_cst_pirates_of_sartosa;
					total 2;

					building_level wh2_dlc11_special_dragon_tooth_lighthouse_1;
					building_level wh2_dlc11_special_ship_aranessa_1;
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
