local missions = {
    [[
         mission
        {
            victory_type vco_victory_type_alternative_1_expansion;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 12;
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
					faction wh2_dlc11_cst_vampire_coast;
					faction wh2_dlc11_cst_noctilus;

					faction wh2_dlc11_def_the_blessed_dread;

					faction wh2_main_skv_clan_pestilens;

					faction wh2_dlc09_tmb_followers_of_nagash;
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
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_main_hef_order_of_loremasters;
					total 1;
					building_level wh2_main_special_tower_of_hoeth_2;
				}

				objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_main_hef_order_of_loremasters;
					total 3;
					building_level wh2_main_hef_mages_3;
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
