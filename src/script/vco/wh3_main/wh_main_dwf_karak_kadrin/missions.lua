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
                    type DESTROY_FACTION;

                    faction wh2_dlc16_vmp_lahmian_sisterhood;
					faction wh_main_vmp_schwartzhafen;
					faction wh_main_vmp_vampire_counts;

					faction wh2_dlc15_grn_bonerattlaz;

					faction wh2_dlc16_wef_drycha;

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
			victory_type vco_victory_type_alternative_2;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
                {
                    type DESTROY_FACTION;

                    faction wh_dlc08_nor_wintertooth;
                    faction wh_dlc08_nor_norsca;

                    faction wh_dlc08_nor_goromadny_tribe;
                    faction wh_dlc08_nor_naglfarlings;
                    faction wh_main_nor_skaeling;
                    faction wh_main_nor_varg;

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
