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
					type VASSALS_OWN_BUILDINGS;
                    faction wh2_dlc13_lzd_spirits_of_the_jungle;

					building_level wh2_dlc13_lzd_nakai_itzl;
                    building_level wh2_dlc13_lzd_nakai_quetzl;
                    building_level wh2_dlc13_lzd_nakai_xholankha;
                    building_level wh2_dlc13_lzd_port_nakai_itzl;
                    building_level wh2_dlc13_lzd_port_nakai_quetzl;
                    building_level wh2_dlc13_lzd_port_nakai_xholankha;

					total 40;
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
            victory_type vco_victory_type_alternative_2_destruction;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc15_grn_bonerattlaz;

					faction wh2_main_skv_clan_moulder;
					faction wh2_main_skv_clan_skyre;

					faction wh_dlc08_nor_norsca;
					faction wh_dlc08_nor_wintertooth;

					faction wh2_dlc13_emp_the_huntmarshals_expedition;

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
            victory_type vco_victory_type_alternative_3_miscellany;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource lzd_old_ones_favour;
					total 3000;
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
