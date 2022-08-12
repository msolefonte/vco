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

					faction wh2_main_hef_order_of_loremasters;

					faction wh2_dlc13_emp_the_huntmarshals_expedition;

					faction wh2_main_skv_clan_pestilens;

					faction wh2_dlc11_cst_noctilus;
					faction wh2_dlc11_cst_vampire_coast;

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
					faction wh2_dlc11_def_the_blessed_dread;
					total 3;

					building_level wh2_main_special_har_ganeth_temple_of_khaine_1;
					building_level wh2_main_special_karond_kar_slavers;
					building_level wh2_main_special_naggarond_witch_king_def;
					building_level wh2_main_special_everqueen_court_def;
					building_level wh2_dlc11_special_settlement_galleons_graveyard_5;
					building_level wh2_main_special_quintex_2;
					building_level wh2_main_special_shrine_of_khaine_def_1;
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
            victory_type vco_victory_type_alternative_3_naval_supremacy;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONSTRUCT_N_OF_A_BUILDING;
					faction wh2_dlc11_def_the_blessed_dread;
					total 4;

					building_level wh2_main_horde_def_settlement_5;
				}

				objective
				{
					type OWN_N_UNITS;
					total 40;

					unit wh2_main_def_inf_black_ark_corsairs_0;
					unit wh2_main_def_inf_black_ark_corsairs_1;
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
