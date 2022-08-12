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
					type DESTROY_FACTION;

					faction wh2_dlc11_def_the_blessed_dread;

					faction wh_main_brt_bordeleaux;

					faction wh2_dlc11_cst_pirates_of_sartosa;
					faction wh2_dlc11_cst_vampire_coast;
					faction wh2_dlc11_cst_the_drowned;

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
            victory_type vco_victory_type_alternative_2_edification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh2_dlc11_cst_noctilus;
					total 2;

					building_level wh2_dlc11_special_galleons_graveyard_wreck_1;
					building_level wh2_dlc11_special_ship_noctilus_1;
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
            victory_type vco_victory_type_alternative_3_miscellany;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource cst_infamy;
					total 15000;
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
